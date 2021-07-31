type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ec2") @new external createClient: unit => awsServiceClient = "EC2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type totalGpuMemory = int
type totalFpgaMemory = int
type scope = [@as("Region") #Region | @as("Availability Zone") #Availability_Zone]
type vpnStaticRouteSource = [@as("Static") #Static]
type vpnState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type vpnProtocol = [@as("openvpn") #Openvpn]
type vpnGatewayId = string
type vpnEcmpSupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type vpnConnectionId = string
type vpcTenancy = [@as("default") #Default]
type vpcState = [@as("available") #Available | @as("pending") #Pending]
type vpcPeeringConnectionStateReasonCode = [
  | @as("deleting") #Deleting
  | @as("provisioning") #Provisioning
  | @as("expired") #Expired
  | @as("failed") #Failed
  | @as("rejected") #Rejected
  | @as("deleted") #Deleted
  | @as("active") #Active
  | @as("pending-acceptance") #Pending_Acceptance
  | @as("initiating-request") #Initiating_Request
]
type vpcPeeringConnectionId = string
type vpcId = string
type vpcFlowLogId = string
type vpcEndpointType = [
  | @as("GatewayLoadBalancer") #GatewayLoadBalancer
  | @as("Gateway") #Gateway
  | @as("Interface") #Interface
]
type vpcEndpointServiceId = string
type vpcEndpointId = string
type vpcCidrBlockStateCode = [
  | @as("failed") #Failed
  | @as("failing") #Failing
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type vpcCidrAssociationId = string
type vpcAttributeName = [
  | @as("enableDnsHostnames") #EnableDnsHostnames
  | @as("enableDnsSupport") #EnableDnsSupport
]
type volumeType = [
  | @as("gp3") #Gp3
  | @as("st1") #St1
  | @as("sc1") #Sc1
  | @as("gp2") #Gp2
  | @as("io2") #Io2
  | @as("io1") #Io1
  | @as("standard") #Standard
]
type volumeStatusName = [@as("io-performance") #Io_Performance | @as("io-enabled") #Io_Enabled]
type volumeStatusInfoStatus = [
  | @as("insufficient-data") #Insufficient_Data
  | @as("impaired") #Impaired
  | @as("ok") #Ok
]
type volumeState = [
  | @as("error") #Error
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("in-use") #In_Use
  | @as("available") #Available
  | @as("creating") #Creating
]
type volumeModificationState = [
  | @as("failed") #Failed
  | @as("completed") #Completed
  | @as("optimizing") #Optimizing
  | @as("modifying") #Modifying
]
type volumeId = string
type volumeAttributeName = [@as("productCodes") #ProductCodes | @as("autoEnableIO") #AutoEnableIO]
type volumeAttachmentState = [
  | @as("busy") #Busy
  | @as("detached") #Detached
  | @as("detaching") #Detaching
  | @as("attached") #Attached
  | @as("attaching") #Attaching
]
type virtualizationType = [@as("paravirtual") #Paravirtual | @as("hvm") #Hvm]
type versionDescription = string
type vcpuCount = int
type usageClassType = [@as("on-demand") #On_Demand | @as("spot") #Spot]
type unsuccessfulInstanceCreditSpecificationErrorCode = [
  | @as("InstanceCreditSpecification.NotSupported") #InstanceCreditSpecification_NotSupported
  | @as("IncorrectInstanceState") #IncorrectInstanceState
  | @as("InvalidInstanceID.NotFound") #InvalidInstanceID_NotFound
  | @as("InvalidInstanceID.Malformed") #InvalidInstanceID_Malformed
]
type unlimitedSupportedInstanceFamily = [
  | @as("t4g") #T4g
  | @as("t3a") #T3a
  | @as("t3") #T3
  | @as("t2") #T2
]
type tunnelInsideIpVersion = [@as("ipv6") #Ipv6 | @as("ipv4") #Ipv4]
type transportProtocol = [@as("udp") #Udp | @as("tcp") #Tcp]
type transitGatewayState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("modifying") #Modifying
  | @as("available") #Available
  | @as("pending") #Pending
]
type transitGatewayRouteType = [@as("propagated") #Propagated | @as("static") #Static]
type transitGatewayRouteTableState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type transitGatewayRouteTableId = string
type transitGatewayRouteState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("blackhole") #Blackhole
  | @as("active") #Active
  | @as("pending") #Pending
]
type transitGatewayPropagationState = [
  | @as("disabled") #Disabled
  | @as("disabling") #Disabling
  | @as("enabled") #Enabled
  | @as("enabling") #Enabling
]
type transitGatewayPrefixListReferenceState = [
  | @as("deleting") #Deleting
  | @as("modifying") #Modifying
  | @as("available") #Available
  | @as("pending") #Pending
]
type transitGatewayMulticastDomainState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type transitGatewayMulticastDomainId = string
type transitGatewayMulitcastDomainAssociationState = [
  | @as("failed") #Failed
  | @as("rejected") #Rejected
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
  | @as("pendingAcceptance") #PendingAcceptance
]
type transitGatewayMaxResults = int
type transitGatewayId = string
type transitGatewayConnectPeerState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type transitGatewayConnectPeerId = string
type transitGatewayAttachmentState = [
  | @as("failing") #Failing
  | @as("rejecting") #Rejecting
  | @as("rejected") #Rejected
  | @as("failed") #Failed
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("modifying") #Modifying
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("rollingBack") #RollingBack
  | @as("pendingAcceptance") #PendingAcceptance
  | @as("initiatingRequest") #InitiatingRequest
  | @as("initiating") #Initiating
]
type transitGatewayAttachmentResourceType = [
  | @as("tgw-peering") #Tgw_Peering
  | @as("peering") #Peering
  | @as("connect") #Connect
  | @as("direct-connect-gateway") #Direct_Connect_Gateway
  | @as("vpn") #Vpn
  | @as("vpc") #Vpc
]
type transitGatewayAttachmentId = string
type transitGatewayAssociationState = [
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type transitAssociationGatewayId = string
type trafficType = [@as("ALL") #ALL | @as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
type trafficMirroringMaxResults = int
type trafficMirrorTargetType = [
  | @as("network-load-balancer") #Network_Load_Balancer
  | @as("network-interface") #Network_Interface
]
type trafficMirrorTargetId = string
type trafficMirrorSessionId = string
type trafficMirrorSessionField = [
  | @as("virtual-network-id") #Virtual_Network_Id
  | @as("description") #Description
  | @as("packet-length") #Packet_Length
]
type trafficMirrorRuleAction = [@as("reject") #Reject | @as("accept") #Accept]
type trafficMirrorNetworkService = [@as("amazon-dns") #Amazon_Dns]
type trafficMirrorFilterRuleId = string
type trafficMirrorFilterRuleField = [
  | @as("description") #Description
  | @as("protocol") #Protocol
  | @as("source-port-range") #Source_Port_Range
  | @as("destination-port-range") #Destination_Port_Range
]
type trafficMirrorFilterId = string
type trafficDirection = [@as("egress") #Egress | @as("ingress") #Ingress]
type threadsPerCore = int
type tenancy = [@as("host") #Host | @as("dedicated") #Dedicated | @as("default") #Default]
type telemetryStatus = [@as("DOWN") #DOWN | @as("UP") #UP]
type taggableResourceId = string
type summaryStatus = [
  | @as("initializing") #Initializing
  | @as("not-applicable") #Not_Applicable
  | @as("insufficient-data") #Insufficient_Data
  | @as("impaired") #Impaired
  | @as("ok") #Ok
]
type subnetState = [@as("available") #Available | @as("pending") #Pending]
type subnetId = string
type subnetCidrBlockStateCode = [
  | @as("failed") #Failed
  | @as("failing") #Failing
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type subnetCidrAssociationId = string
type string_ = string
type statusType = [
  | @as("initializing") #Initializing
  | @as("insufficient-data") #Insufficient_Data
  | @as("failed") #Failed
  | @as("passed") #Passed
]
type statusName = [@as("reachability") #Reachability]
type status = [
  | @as("InClassic") #InClassic
  | @as("InVpc") #InVpc
  | @as("MoveInProgress") #MoveInProgress
]
type staticSourcesSupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type state = [
  | @as("Expired") #Expired
  | @as("Failed") #Failed
  | @as("Rejected") #Rejected
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("Available") #Available
  | @as("Pending") #Pending
  | @as("PendingAcceptance") #PendingAcceptance
]
type spotInstanceType = [@as("persistent") #Persistent | @as("one-time") #One_Time]
type spotInstanceState = [
  | @as("failed") #Failed
  | @as("cancelled") #Cancelled
  | @as("closed") #Closed
  | @as("active") #Active
  | @as("open") #Open
]
type spotInstanceRequestId = string
type spotInstanceInterruptionBehavior = [
  | @as("terminate") #Terminate
  | @as("stop") #Stop
  | @as("hibernate") #Hibernate
]
type spotFleetRequestId = string
type spotAllocationStrategy = [
  | @as("capacity-optimized-prioritized") #Capacity_Optimized_Prioritized
  | @as("capacity-optimized") #Capacity_Optimized
  | @as("diversified") #Diversified
  | @as("lowest-price") #Lowest_Price
]
type snapshotState = [@as("error") #Error | @as("completed") #Completed | @as("pending") #Pending]
type snapshotId = string
type snapshotAttributeName = [
  | @as("createVolumePermission") #CreateVolumePermission
  | @as("productCodes") #ProductCodes
]
type shutdownBehavior = [@as("terminate") #Terminate | @as("stop") #Stop]
type serviceType = [
  | @as("GatewayLoadBalancer") #GatewayLoadBalancer
  | @as("Gateway") #Gateway
  | @as("Interface") #Interface
]
type serviceState = [
  | @as("Failed") #Failed
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("Available") #Available
  | @as("Pending") #Pending
]
type sensitiveUserData = string
type selfServicePortal = [@as("disabled") #Disabled | @as("enabled") #Enabled]
type securityGroupName = string
type securityGroupId = string
type scheduledInstanceId = string
type ruleAction = [@as("deny") #Deny | @as("allow") #Allow]
type routeTableId = string
type routeTableAssociationStateCode = [
  | @as("failed") #Failed
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type routeTableAssociationId = string
type routeState = [@as("blackhole") #Blackhole | @as("active") #Active]
type routeOrigin = [
  | @as("EnableVgwRoutePropagation") #EnableVgwRoutePropagation
  | @as("CreateRoute") #CreateRoute
  | @as("CreateRouteTable") #CreateRouteTable
]
type routeGatewayId = string
type rootDeviceType = [@as("instance-store") #Instance_Store | @as("ebs") #Ebs]
type resourceType = [
  | @as("vpc-flow-log") #Vpc_Flow_Log
  | @as("vpn-gateway") #Vpn_Gateway
  | @as("vpn-connection") #Vpn_Connection
  | @as("vpc-peering-connection") #Vpc_Peering_Connection
  | @as("vpc") #Vpc
  | @as("volume") #Volume
  | @as("transit-gateway-route-table") #Transit_Gateway_Route_Table
  | @as("transit-gateway-multicast-domain") #Transit_Gateway_Multicast_Domain
  | @as("transit-gateway-connect-peer") #Transit_Gateway_Connect_Peer
  | @as("transit-gateway-attachment") #Transit_Gateway_Attachment
  | @as("transit-gateway") #Transit_Gateway
  | @as("traffic-mirror-target") #Traffic_Mirror_Target
  | @as("traffic-mirror-session") #Traffic_Mirror_Session
  | @as("traffic-mirror-filter") #Traffic_Mirror_Filter
  | @as("subnet") #Subnet
  | @as("spot-instances-request") #Spot_Instances_Request
  | @as("spot-fleet-request") #Spot_Fleet_Request
  | @as("snapshot") #Snapshot
  | @as("security-group") #Security_Group
  | @as("route-table") #Route_Table
  | @as("reserved-instances") #Reserved_Instances
  | @as("placement-group") #Placement_Group
  | @as("network-insights-path") #Network_Insights_Path
  | @as("network-insights-analysis") #Network_Insights_Analysis
  | @as("network-interface") #Network_Interface
  | @as("network-acl") #Network_Acl
  | @as("natgateway") #Natgateway
  | @as("local-gateway-route-table-vpc-association") #Local_Gateway_Route_Table_Vpc_Association
  | @as("launch-template") #Launch_Template
  | @as("key-pair") #Key_Pair
  | @as("internet-gateway") #Internet_Gateway
  | @as("instance") #Instance
  | @as("import-snapshot-task") #Import_Snapshot_Task
  | @as("import-image-task") #Import_Image_Task
  | @as("image") #Image
  | @as("host-reservation") #Host_Reservation
  | @as("fpga-image") #Fpga_Image
  | @as("fleet") #Fleet
  | @as("export-instance-task") #Export_Instance_Task
  | @as("export-image-task") #Export_Image_Task
  | @as("elastic-gpu") #Elastic_Gpu
  | @as("elastic-ip") #Elastic_Ip
  | @as("egress-only-internet-gateway") #Egress_Only_Internet_Gateway
  | @as("dhcp-options") #Dhcp_Options
  | @as("dedicated-host") #Dedicated_Host
  | @as("customer-gateway") #Customer_Gateway
  | @as("client-vpn-endpoint") #Client_Vpn_Endpoint
]
type resourceArn = string
type resetImageAttributeName = [@as("launchPermission") #LaunchPermission]
type resetFpgaImageAttributeName = [@as("loadPermission") #LoadPermission]
type reservedInstancesOfferingId = string
type reservedInstancesModificationId = string
type reservedInstancesListingId = string
type reservedInstanceState = [
  | @as("queued-deleted") #Queued_Deleted
  | @as("queued") #Queued
  | @as("retired") #Retired
  | @as("payment-failed") #Payment_Failed
  | @as("active") #Active
  | @as("payment-pending") #Payment_Pending
]
type reservationState = [
  | @as("retired") #Retired
  | @as("active") #Active
  | @as("payment-failed") #Payment_Failed
  | @as("payment-pending") #Payment_Pending
]
type reservationId = string
type reportStatusType = [@as("impaired") #Impaired | @as("ok") #Ok]
type reportInstanceReasonCodes = [
  | @as("other") #Other
  | @as("performance-other") #Performance_Other
  | @as("performance-ebs-volume") #Performance_Ebs_Volume
  | @as("performance-instance-store") #Performance_Instance_Store
  | @as("performance-network") #Performance_Network
  | @as("password-not-available") #Password_Not_Available
  | @as("not-accepting-credentials") #Not_Accepting_Credentials
  | @as("unresponsive") #Unresponsive
  | @as("instance-stuck-in-state") #Instance_Stuck_In_State
]
type replacementStrategy = [@as("launch") #Launch]
type replaceRootVolumeTaskState = [
  | @as("failed-detached") #Failed_Detached
  | @as("failed") #Failed
  | @as("succeeded") #Succeeded
  | @as("failing") #Failing
  | @as("in-progress") #In_Progress
  | @as("pending") #Pending
]
type replaceRootVolumeTaskId = string
type recurringChargeFrequency = [@as("Hourly") #Hourly]
type ramdiskId = string
type riproductDescription = [
  | @as("Windows (Amazon VPC)") #Windows_Amazon_VPC
  | @as("Windows") #Windows
  | @as("Linux/UNIX (Amazon VPC)") #Linux_UNIX_Amazon_VPC
  | @as("Linux/UNIX") #Linux_UNIX
]
type publicIpAddress = string
type protocolValue = [@as("gre") #Gre]
type protocol = [@as("udp") #Udp | @as("tcp") #Tcp]
type productCodeValues = [@as("marketplace") #Marketplace | @as("devpay") #Devpay]
type processorSustainedClockSpeed = float
type principalType = [
  | @as("Role") #Role
  | @as("User") #User
  | @as("Account") #Account
  | @as("OrganizationUnit") #OrganizationUnit
  | @as("Service") #Service
  | @as("All") #All
]
type prefixListState = [
  | @as("delete-failed") #Delete_Failed
  | @as("delete-complete") #Delete_Complete
  | @as("delete-in-progress") #Delete_In_Progress
  | @as("restore-failed") #Restore_Failed
  | @as("restore-complete") #Restore_Complete
  | @as("restore-in-progress") #Restore_In_Progress
  | @as("modify-failed") #Modify_Failed
  | @as("modify-complete") #Modify_Complete
  | @as("modify-in-progress") #Modify_In_Progress
  | @as("create-failed") #Create_Failed
  | @as("create-complete") #Create_Complete
  | @as("create-in-progress") #Create_In_Progress
]
type prefixListResourceId = string
type prefixListMaxResults = int
type port = int
type poolMaxResults = int
type platformValues = [@as("Windows") #Windows]
type placementStrategy = [
  | @as("partition") #Partition
  | @as("spread") #Spread
  | @as("cluster") #Cluster
]
type placementGroupStrategy = [
  | @as("spread") #Spread
  | @as("partition") #Partition
  | @as("cluster") #Cluster
]
type placementGroupState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type placementGroupName = string
type placementGroupId = string
type permissionGroup = [@as("all") #All]
type paymentOption = [
  | @as("NoUpfront") #NoUpfront
  | @as("PartialUpfront") #PartialUpfront
  | @as("AllUpfront") #AllUpfront
]
type partitionLoadFrequency = [
  | @as("monthly") #Monthly
  | @as("weekly") #Weekly
  | @as("daily") #Daily
  | @as("none") #None
]
type outpostArn = string
type operationType = [@as("remove") #Remove | @as("add") #Add]
type onDemandAllocationStrategy = [
  | @as("prioritized") #Prioritized
  | @as("lowestPrice") #LowestPrice
]
type offeringTypeValues = [
  | @as("All Upfront") #All_Upfront
  | @as("Partial Upfront") #Partial_Upfront
  | @as("No Upfront") #No_Upfront
  | @as("Light Utilization") #Light_Utilization
  | @as("Medium Utilization") #Medium_Utilization
  | @as("Heavy Utilization") #Heavy_Utilization
]
type offeringId = string
type offeringClassType = [@as("convertible") #Convertible | @as("standard") #Standard]
type nextToken = string
type networkPerformance = string
type networkInterfaceType = [
  | @as("efa") #Efa
  | @as("natGateway") #NatGateway
  | @as("interface") #Interface
]
type networkInterfaceStatus = [
  | @as("detaching") #Detaching
  | @as("in-use") #In_Use
  | @as("attaching") #Attaching
  | @as("associated") #Associated
  | @as("available") #Available
]
type networkInterfacePermissionStateCode = [
  | @as("revoked") #Revoked
  | @as("revoking") #Revoking
  | @as("granted") #Granted
  | @as("pending") #Pending
]
type networkInterfacePermissionId = string
type networkInterfaceId = string
type networkInterfaceCreationType = [@as("efa") #Efa]
type networkInterfaceAttribute = [
  | @as("attachment") #Attachment
  | @as("sourceDestCheck") #SourceDestCheck
  | @as("groupSet") #GroupSet
  | @as("description") #Description
]
type networkInterfaceAttachmentId = string
type networkInsightsPathId = string
type networkInsightsMaxResults = int
type networkInsightsAnalysisId = string
type networkCardIndex = int
type networkAclId = string
type networkAclAssociationId = string
type natGatewayState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("failed") #Failed
  | @as("pending") #Pending
]
type natGatewayId = string
type multicastSupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type moveStatus = [@as("restoringToClassic") #RestoringToClassic | @as("movingToVpc") #MovingToVpc]
type monitoringState = [
  | @as("pending") #Pending
  | @as("enabled") #Enabled
  | @as("disabling") #Disabling
  | @as("disabled") #Disabled
]
type modifyAvailabilityZoneOptInStatus = [
  | @as("not-opted-in") #Not_Opted_In
  | @as("opted-in") #Opted_In
]
type millisecondDateTime = Js.Date.t
type memorySize = float
type membershipType = [@as("igmp") #Igmp | @as("static") #Static]
type maximumThroughputInMBps = float
type maximumNetworkCards = int
type maximumIops = int
type maximumEfaInterfaces = int
type maximumBandwidthInMbps = int
type maxResults = int
type maxNetworkInterfaces = int
type maxIpv6AddrPerInterface = int
type maxIpv4AddrPerInterface = int
type marketType = [@as("spot") #Spot]
type long = float
type logDestinationType = [@as("s3") #S3 | @as("cloud-watch-logs") #Cloud_Watch_Logs]
type locationType = [
  | @as("availability-zone-id") #Availability_Zone_Id
  | @as("availability-zone") #Availability_Zone
  | @as("region") #Region
]
type location = string
type localGatewayVirtualInterfaceId = string
type localGatewayVirtualInterfaceGroupId = string
type localGatewayRoutetableId = string
type localGatewayRouteType = [@as("propagated") #Propagated | @as("static") #Static]
type localGatewayRouteTableVpcAssociationId = string
type localGatewayRouteTableVirtualInterfaceGroupAssociationId = string
type localGatewayRouteState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("blackhole") #Blackhole
  | @as("active") #Active
  | @as("pending") #Pending
]
type localGatewayMaxResults = int
type localGatewayId = string
type listingStatus = [
  | @as("closed") #Closed
  | @as("cancelled") #Cancelled
  | @as("pending") #Pending
  | @as("active") #Active
]
type listingState = [
  | @as("pending") #Pending
  | @as("cancelled") #Cancelled
  | @as("sold") #Sold
  | @as("available") #Available
]
type launchTemplateName = string
type launchTemplateInstanceMetadataOptionsState = [
  | @as("applied") #Applied
  | @as("pending") #Pending
]
type launchTemplateInstanceMetadataEndpointState = [
  | @as("enabled") #Enabled
  | @as("disabled") #Disabled
]
type launchTemplateId = string
type launchTemplateHttpTokensState = [@as("required") #Required | @as("optional") #Optional]
type launchTemplateErrorCode = [
  | @as("unexpectedError") #UnexpectedError
  | @as("launchTemplateVersionDoesNotExist") #LaunchTemplateVersionDoesNotExist
  | @as("launchTemplateNameMalformed") #LaunchTemplateNameMalformed
  | @as("launchTemplateNameDoesNotExist") #LaunchTemplateNameDoesNotExist
  | @as("launchTemplateIdMalformed") #LaunchTemplateIdMalformed
  | @as("launchTemplateIdDoesNotExist") #LaunchTemplateIdDoesNotExist
]
type launchTemplateElasticInferenceAcceleratorCount = int
type kmsKeyId = string
type keyPairName = string
type keyPairId = string
type kernelId = string
type ipv6SupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type ipv6PoolMaxResults = int
type ipv6PoolEc2Id = string
type ipv6Flag = bool
type ipv6Address = string
type ipv4PoolEc2Id = string
type ipAddress = string
type internetGatewayId = string
type interfacePermissionType = [
  | @as("EIP-ASSOCIATE") #EIP_ASSOCIATE
  | @as("INSTANCE-ATTACH") #INSTANCE_ATTACH
]
type integer_ = int
type instanceTypeHypervisor = [@as("xen") #Xen | @as("nitro") #Nitro]
type instanceType = [
  | @as("x2gd.metal") #X2gd_Metal
  | @as("x2gd.16xlarge") #X2gd_16xlarge
  | @as("x2gd.12xlarge") #X2gd_12xlarge
  | @as("x2gd.8xlarge") #X2gd_8xlarge
  | @as("x2gd.4xlarge") #X2gd_4xlarge
  | @as("x2gd.2xlarge") #X2gd_2xlarge
  | @as("x2gd.xlarge") #X2gd_Xlarge
  | @as("x2gd.large") #X2gd_Large
  | @as("x2gd.medium") #X2gd_Medium
  | @as("mac1.metal") #Mac1_Metal
  | @as("m6gd.16xlarge") #M6gd_16xlarge
  | @as("m6gd.12xlarge") #M6gd_12xlarge
  | @as("m6gd.8xlarge") #M6gd_8xlarge
  | @as("m6gd.4xlarge") #M6gd_4xlarge
  | @as("m6gd.2xlarge") #M6gd_2xlarge
  | @as("m6gd.xlarge") #M6gd_Xlarge
  | @as("m6gd.large") #M6gd_Large
  | @as("m6gd.medium") #M6gd_Medium
  | @as("m6gd.metal") #M6gd_Metal
  | @as("m6g.16xlarge") #M6g_16xlarge
  | @as("m6g.12xlarge") #M6g_12xlarge
  | @as("m6g.8xlarge") #M6g_8xlarge
  | @as("m6g.4xlarge") #M6g_4xlarge
  | @as("m6g.2xlarge") #M6g_2xlarge
  | @as("m6g.xlarge") #M6g_Xlarge
  | @as("m6g.large") #M6g_Large
  | @as("m6g.medium") #M6g_Medium
  | @as("m6g.metal") #M6g_Metal
  | @as("inf1.24xlarge") #Inf1_24xlarge
  | @as("inf1.6xlarge") #Inf1_6xlarge
  | @as("inf1.2xlarge") #Inf1_2xlarge
  | @as("inf1.xlarge") #Inf1_Xlarge
  | @as("r5n.24xlarge") #R5n_24xlarge
  | @as("r5n.16xlarge") #R5n_16xlarge
  | @as("r5n.12xlarge") #R5n_12xlarge
  | @as("r5n.8xlarge") #R5n_8xlarge
  | @as("r5n.4xlarge") #R5n_4xlarge
  | @as("r5n.2xlarge") #R5n_2xlarge
  | @as("r5n.xlarge") #R5n_Xlarge
  | @as("r5n.large") #R5n_Large
  | @as("r5dn.24xlarge") #R5dn_24xlarge
  | @as("r5dn.16xlarge") #R5dn_16xlarge
  | @as("r5dn.12xlarge") #R5dn_12xlarge
  | @as("r5dn.8xlarge") #R5dn_8xlarge
  | @as("r5dn.4xlarge") #R5dn_4xlarge
  | @as("r5dn.2xlarge") #R5dn_2xlarge
  | @as("r5dn.xlarge") #R5dn_Xlarge
  | @as("r5dn.large") #R5dn_Large
  | @as("m5n.24xlarge") #M5n_24xlarge
  | @as("m5n.16xlarge") #M5n_16xlarge
  | @as("m5n.12xlarge") #M5n_12xlarge
  | @as("m5n.8xlarge") #M5n_8xlarge
  | @as("m5n.4xlarge") #M5n_4xlarge
  | @as("m5n.2xlarge") #M5n_2xlarge
  | @as("m5n.xlarge") #M5n_Xlarge
  | @as("m5n.large") #M5n_Large
  | @as("m5dn.24xlarge") #M5dn_24xlarge
  | @as("m5dn.16xlarge") #M5dn_16xlarge
  | @as("m5dn.12xlarge") #M5dn_12xlarge
  | @as("m5dn.8xlarge") #M5dn_8xlarge
  | @as("m5dn.4xlarge") #M5dn_4xlarge
  | @as("m5dn.2xlarge") #M5dn_2xlarge
  | @as("m5dn.xlarge") #M5dn_Xlarge
  | @as("m5dn.large") #M5dn_Large
  | @as("a1.metal") #A1_Metal
  | @as("a1.4xlarge") #A1_4xlarge
  | @as("a1.2xlarge") #A1_2xlarge
  | @as("a1.xlarge") #A1_Xlarge
  | @as("a1.large") #A1_Large
  | @as("a1.medium") #A1_Medium
  | @as("u-24tb1.metal") #U_24tb1_Metal
  | @as("u-18tb1.metal") #U_18tb1_Metal
  | @as("u-12tb1.metal") #U_12tb1_Metal
  | @as("u-9tb1.metal") #U_9tb1_Metal
  | @as("u-6tb1.metal") #U_6tb1_Metal
  | @as("u-12tb1.112xlarge") #U_12tb1_112xlarge
  | @as("u-9tb1.112xlarge") #U_9tb1_112xlarge
  | @as("u-6tb1.112xlarge") #U_6tb1_112xlarge
  | @as("u-6tb1.56xlarge") #U_6tb1_56xlarge
  | @as("z1d.metal") #Z1d_Metal
  | @as("z1d.12xlarge") #Z1d_12xlarge
  | @as("z1d.6xlarge") #Z1d_6xlarge
  | @as("z1d.3xlarge") #Z1d_3xlarge
  | @as("z1d.2xlarge") #Z1d_2xlarge
  | @as("z1d.xlarge") #Z1d_Xlarge
  | @as("z1d.large") #Z1d_Large
  | @as("h1.16xlarge") #H1_16xlarge
  | @as("h1.8xlarge") #H1_8xlarge
  | @as("h1.4xlarge") #H1_4xlarge
  | @as("h1.2xlarge") #H1_2xlarge
  | @as("m5zn.metal") #M5zn_Metal
  | @as("m5zn.12xlarge") #M5zn_12xlarge
  | @as("m5zn.6xlarge") #M5zn_6xlarge
  | @as("m5zn.3xlarge") #M5zn_3xlarge
  | @as("m5zn.2xlarge") #M5zn_2xlarge
  | @as("m5zn.xlarge") #M5zn_Xlarge
  | @as("m5zn.large") #M5zn_Large
  | @as("m5ad.24xlarge") #M5ad_24xlarge
  | @as("m5ad.16xlarge") #M5ad_16xlarge
  | @as("m5ad.12xlarge") #M5ad_12xlarge
  | @as("m5ad.8xlarge") #M5ad_8xlarge
  | @as("m5ad.4xlarge") #M5ad_4xlarge
  | @as("m5ad.2xlarge") #M5ad_2xlarge
  | @as("m5ad.xlarge") #M5ad_Xlarge
  | @as("m5ad.large") #M5ad_Large
  | @as("m5d.metal") #M5d_Metal
  | @as("m5d.24xlarge") #M5d_24xlarge
  | @as("m5d.16xlarge") #M5d_16xlarge
  | @as("m5d.12xlarge") #M5d_12xlarge
  | @as("m5d.8xlarge") #M5d_8xlarge
  | @as("m5d.4xlarge") #M5d_4xlarge
  | @as("m5d.2xlarge") #M5d_2xlarge
  | @as("m5d.xlarge") #M5d_Xlarge
  | @as("m5d.large") #M5d_Large
  | @as("m5a.24xlarge") #M5a_24xlarge
  | @as("m5a.16xlarge") #M5a_16xlarge
  | @as("m5a.12xlarge") #M5a_12xlarge
  | @as("m5a.8xlarge") #M5a_8xlarge
  | @as("m5a.4xlarge") #M5a_4xlarge
  | @as("m5a.2xlarge") #M5a_2xlarge
  | @as("m5a.xlarge") #M5a_Xlarge
  | @as("m5a.large") #M5a_Large
  | @as("m5.metal") #M5_Metal
  | @as("m5.24xlarge") #M5_24xlarge
  | @as("m5.16xlarge") #M5_16xlarge
  | @as("m5.12xlarge") #M5_12xlarge
  | @as("m5.8xlarge") #M5_8xlarge
  | @as("m5.4xlarge") #M5_4xlarge
  | @as("m5.2xlarge") #M5_2xlarge
  | @as("m5.xlarge") #M5_Xlarge
  | @as("m5.large") #M5_Large
  | @as("f1.16xlarge") #F1_16xlarge
  | @as("f1.4xlarge") #F1_4xlarge
  | @as("f1.2xlarge") #F1_2xlarge
  | @as("d3en.12xlarge") #D3en_12xlarge
  | @as("d3en.8xlarge") #D3en_8xlarge
  | @as("d3en.6xlarge") #D3en_6xlarge
  | @as("d3en.4xlarge") #D3en_4xlarge
  | @as("d3en.2xlarge") #D3en_2xlarge
  | @as("d3en.xlarge") #D3en_Xlarge
  | @as("d3.8xlarge") #D3_8xlarge
  | @as("d3.4xlarge") #D3_4xlarge
  | @as("d3.2xlarge") #D3_2xlarge
  | @as("d3.xlarge") #D3_Xlarge
  | @as("d2.8xlarge") #D2_8xlarge
  | @as("d2.4xlarge") #D2_4xlarge
  | @as("d2.2xlarge") #D2_2xlarge
  | @as("d2.xlarge") #D2_Xlarge
  | @as("p4d.24xlarge") #P4d_24xlarge
  | @as("p3dn.24xlarge") #P3dn_24xlarge
  | @as("p3.16xlarge") #P3_16xlarge
  | @as("p3.8xlarge") #P3_8xlarge
  | @as("p3.2xlarge") #P3_2xlarge
  | @as("p2.16xlarge") #P2_16xlarge
  | @as("p2.8xlarge") #P2_8xlarge
  | @as("p2.xlarge") #P2_Xlarge
  | @as("cg1.4xlarge") #Cg1_4xlarge
  | @as("g4dn.metal") #G4dn_Metal
  | @as("g4dn.16xlarge") #G4dn_16xlarge
  | @as("g4dn.12xlarge") #G4dn_12xlarge
  | @as("g4dn.8xlarge") #G4dn_8xlarge
  | @as("g4dn.4xlarge") #G4dn_4xlarge
  | @as("g4dn.2xlarge") #G4dn_2xlarge
  | @as("g4dn.xlarge") #G4dn_Xlarge
  | @as("g4ad.16xlarge") #G4ad_16xlarge
  | @as("g4ad.8xlarge") #G4ad_8xlarge
  | @as("g4ad.4xlarge") #G4ad_4xlarge
  | @as("g3s.xlarge") #G3s_Xlarge
  | @as("g3.16xlarge") #G3_16xlarge
  | @as("g3.8xlarge") #G3_8xlarge
  | @as("g3.4xlarge") #G3_4xlarge
  | @as("g2.8xlarge") #G2_8xlarge
  | @as("g2.2xlarge") #G2_2xlarge
  | @as("cc2.8xlarge") #Cc2_8xlarge
  | @as("cc1.4xlarge") #Cc1_4xlarge
  | @as("c6gn.16xlarge") #C6gn_16xlarge
  | @as("c6gn.12xlarge") #C6gn_12xlarge
  | @as("c6gn.8xlarge") #C6gn_8xlarge
  | @as("c6gn.4xlarge") #C6gn_4xlarge
  | @as("c6gn.2xlarge") #C6gn_2xlarge
  | @as("c6gn.xlarge") #C6gn_Xlarge
  | @as("c6gn.large") #C6gn_Large
  | @as("c6gn.medium") #C6gn_Medium
  | @as("c6gd.16xlarge") #C6gd_16xlarge
  | @as("c6gd.12xlarge") #C6gd_12xlarge
  | @as("c6gd.8xlarge") #C6gd_8xlarge
  | @as("c6gd.4xlarge") #C6gd_4xlarge
  | @as("c6gd.2xlarge") #C6gd_2xlarge
  | @as("c6gd.xlarge") #C6gd_Xlarge
  | @as("c6gd.large") #C6gd_Large
  | @as("c6gd.medium") #C6gd_Medium
  | @as("c6gd.metal") #C6gd_Metal
  | @as("c6g.16xlarge") #C6g_16xlarge
  | @as("c6g.12xlarge") #C6g_12xlarge
  | @as("c6g.8xlarge") #C6g_8xlarge
  | @as("c6g.4xlarge") #C6g_4xlarge
  | @as("c6g.2xlarge") #C6g_2xlarge
  | @as("c6g.xlarge") #C6g_Xlarge
  | @as("c6g.large") #C6g_Large
  | @as("c6g.medium") #C6g_Medium
  | @as("c6g.metal") #C6g_Metal
  | @as("c5n.metal") #C5n_Metal
  | @as("c5n.18xlarge") #C5n_18xlarge
  | @as("c5n.9xlarge") #C5n_9xlarge
  | @as("c5n.4xlarge") #C5n_4xlarge
  | @as("c5n.2xlarge") #C5n_2xlarge
  | @as("c5n.xlarge") #C5n_Xlarge
  | @as("c5n.large") #C5n_Large
  | @as("c5d.metal") #C5d_Metal
  | @as("c5d.24xlarge") #C5d_24xlarge
  | @as("c5d.18xlarge") #C5d_18xlarge
  | @as("c5d.12xlarge") #C5d_12xlarge
  | @as("c5d.9xlarge") #C5d_9xlarge
  | @as("c5d.4xlarge") #C5d_4xlarge
  | @as("c5d.2xlarge") #C5d_2xlarge
  | @as("c5d.xlarge") #C5d_Xlarge
  | @as("c5d.large") #C5d_Large
  | @as("c5ad.24xlarge") #C5ad_24xlarge
  | @as("c5ad.16xlarge") #C5ad_16xlarge
  | @as("c5ad.12xlarge") #C5ad_12xlarge
  | @as("c5ad.8xlarge") #C5ad_8xlarge
  | @as("c5ad.4xlarge") #C5ad_4xlarge
  | @as("c5ad.2xlarge") #C5ad_2xlarge
  | @as("c5ad.xlarge") #C5ad_Xlarge
  | @as("c5ad.large") #C5ad_Large
  | @as("c5a.24xlarge") #C5a_24xlarge
  | @as("c5a.16xlarge") #C5a_16xlarge
  | @as("c5a.12xlarge") #C5a_12xlarge
  | @as("c5a.8xlarge") #C5a_8xlarge
  | @as("c5a.4xlarge") #C5a_4xlarge
  | @as("c5a.2xlarge") #C5a_2xlarge
  | @as("c5a.xlarge") #C5a_Xlarge
  | @as("c5a.large") #C5a_Large
  | @as("c5.metal") #C5_Metal
  | @as("c5.24xlarge") #C5_24xlarge
  | @as("c5.18xlarge") #C5_18xlarge
  | @as("c5.12xlarge") #C5_12xlarge
  | @as("c5.9xlarge") #C5_9xlarge
  | @as("c5.4xlarge") #C5_4xlarge
  | @as("c5.2xlarge") #C5_2xlarge
  | @as("c5.xlarge") #C5_Xlarge
  | @as("c5.large") #C5_Large
  | @as("c4.8xlarge") #C4_8xlarge
  | @as("c4.4xlarge") #C4_4xlarge
  | @as("c4.2xlarge") #C4_2xlarge
  | @as("c4.xlarge") #C4_Xlarge
  | @as("c4.large") #C4_Large
  | @as("c3.8xlarge") #C3_8xlarge
  | @as("c3.4xlarge") #C3_4xlarge
  | @as("c3.2xlarge") #C3_2xlarge
  | @as("c3.xlarge") #C3_Xlarge
  | @as("c3.large") #C3_Large
  | @as("c1.xlarge") #C1_Xlarge
  | @as("c1.medium") #C1_Medium
  | @as("hs1.8xlarge") #Hs1_8xlarge
  | @as("hi1.4xlarge") #Hi1_4xlarge
  | @as("i3en.metal") #I3en_Metal
  | @as("i3en.24xlarge") #I3en_24xlarge
  | @as("i3en.12xlarge") #I3en_12xlarge
  | @as("i3en.6xlarge") #I3en_6xlarge
  | @as("i3en.3xlarge") #I3en_3xlarge
  | @as("i3en.2xlarge") #I3en_2xlarge
  | @as("i3en.xlarge") #I3en_Xlarge
  | @as("i3en.large") #I3en_Large
  | @as("i3.metal") #I3_Metal
  | @as("i3.16xlarge") #I3_16xlarge
  | @as("i3.8xlarge") #I3_8xlarge
  | @as("i3.4xlarge") #I3_4xlarge
  | @as("i3.2xlarge") #I3_2xlarge
  | @as("i3.xlarge") #I3_Xlarge
  | @as("i3.large") #I3_Large
  | @as("i2.8xlarge") #I2_8xlarge
  | @as("i2.4xlarge") #I2_4xlarge
  | @as("i2.2xlarge") #I2_2xlarge
  | @as("i2.xlarge") #I2_Xlarge
  | @as("x1e.32xlarge") #X1e_32xlarge
  | @as("x1e.16xlarge") #X1e_16xlarge
  | @as("x1e.8xlarge") #X1e_8xlarge
  | @as("x1e.4xlarge") #X1e_4xlarge
  | @as("x1e.2xlarge") #X1e_2xlarge
  | @as("x1e.xlarge") #X1e_Xlarge
  | @as("x1.32xlarge") #X1_32xlarge
  | @as("x1.16xlarge") #X1_16xlarge
  | @as("r6gd.16xlarge") #R6gd_16xlarge
  | @as("r6gd.12xlarge") #R6gd_12xlarge
  | @as("r6gd.8xlarge") #R6gd_8xlarge
  | @as("r6gd.4xlarge") #R6gd_4xlarge
  | @as("r6gd.2xlarge") #R6gd_2xlarge
  | @as("r6gd.xlarge") #R6gd_Xlarge
  | @as("r6gd.large") #R6gd_Large
  | @as("r6gd.medium") #R6gd_Medium
  | @as("r6gd.metal") #R6gd_Metal
  | @as("r6g.16xlarge") #R6g_16xlarge
  | @as("r6g.12xlarge") #R6g_12xlarge
  | @as("r6g.8xlarge") #R6g_8xlarge
  | @as("r6g.4xlarge") #R6g_4xlarge
  | @as("r6g.2xlarge") #R6g_2xlarge
  | @as("r6g.xlarge") #R6g_Xlarge
  | @as("r6g.large") #R6g_Large
  | @as("r6g.medium") #R6g_Medium
  | @as("r6g.metal") #R6g_Metal
  | @as("r5ad.24xlarge") #R5ad_24xlarge
  | @as("r5ad.16xlarge") #R5ad_16xlarge
  | @as("r5ad.12xlarge") #R5ad_12xlarge
  | @as("r5ad.8xlarge") #R5ad_8xlarge
  | @as("r5ad.4xlarge") #R5ad_4xlarge
  | @as("r5ad.2xlarge") #R5ad_2xlarge
  | @as("r5ad.xlarge") #R5ad_Xlarge
  | @as("r5ad.large") #R5ad_Large
  | @as("r5d.metal") #R5d_Metal
  | @as("r5d.24xlarge") #R5d_24xlarge
  | @as("r5d.16xlarge") #R5d_16xlarge
  | @as("r5d.12xlarge") #R5d_12xlarge
  | @as("r5d.8xlarge") #R5d_8xlarge
  | @as("r5d.4xlarge") #R5d_4xlarge
  | @as("r5d.2xlarge") #R5d_2xlarge
  | @as("r5d.xlarge") #R5d_Xlarge
  | @as("r5d.large") #R5d_Large
  | @as("r5b.metal") #R5b_Metal
  | @as("r5b.24xlarge") #R5b_24xlarge
  | @as("r5b.16xlarge") #R5b_16xlarge
  | @as("r5b.12xlarge") #R5b_12xlarge
  | @as("r5b.8xlarge") #R5b_8xlarge
  | @as("r5b.4xlarge") #R5b_4xlarge
  | @as("r5b.2xlarge") #R5b_2xlarge
  | @as("r5b.xlarge") #R5b_Xlarge
  | @as("r5b.large") #R5b_Large
  | @as("r5a.24xlarge") #R5a_24xlarge
  | @as("r5a.16xlarge") #R5a_16xlarge
  | @as("r5a.12xlarge") #R5a_12xlarge
  | @as("r5a.8xlarge") #R5a_8xlarge
  | @as("r5a.4xlarge") #R5a_4xlarge
  | @as("r5a.2xlarge") #R5a_2xlarge
  | @as("r5a.xlarge") #R5a_Xlarge
  | @as("r5a.large") #R5a_Large
  | @as("r5.metal") #R5_Metal
  | @as("r5.24xlarge") #R5_24xlarge
  | @as("r5.16xlarge") #R5_16xlarge
  | @as("r5.12xlarge") #R5_12xlarge
  | @as("r5.8xlarge") #R5_8xlarge
  | @as("r5.4xlarge") #R5_4xlarge
  | @as("r5.2xlarge") #R5_2xlarge
  | @as("r5.xlarge") #R5_Xlarge
  | @as("r5.large") #R5_Large
  | @as("r4.16xlarge") #R4_16xlarge
  | @as("r4.8xlarge") #R4_8xlarge
  | @as("r4.4xlarge") #R4_4xlarge
  | @as("r4.2xlarge") #R4_2xlarge
  | @as("r4.xlarge") #R4_Xlarge
  | @as("r4.large") #R4_Large
  | @as("r3.8xlarge") #R3_8xlarge
  | @as("r3.4xlarge") #R3_4xlarge
  | @as("r3.2xlarge") #R3_2xlarge
  | @as("r3.xlarge") #R3_Xlarge
  | @as("r3.large") #R3_Large
  | @as("cr1.8xlarge") #Cr1_8xlarge
  | @as("m2.4xlarge") #M2_4xlarge
  | @as("m2.2xlarge") #M2_2xlarge
  | @as("m2.xlarge") #M2_Xlarge
  | @as("m4.16xlarge") #M4_16xlarge
  | @as("m4.10xlarge") #M4_10xlarge
  | @as("m4.4xlarge") #M4_4xlarge
  | @as("m4.2xlarge") #M4_2xlarge
  | @as("m4.xlarge") #M4_Xlarge
  | @as("m4.large") #M4_Large
  | @as("m3.2xlarge") #M3_2xlarge
  | @as("m3.xlarge") #M3_Xlarge
  | @as("m3.large") #M3_Large
  | @as("m3.medium") #M3_Medium
  | @as("m1.xlarge") #M1_Xlarge
  | @as("m1.large") #M1_Large
  | @as("m1.medium") #M1_Medium
  | @as("m1.small") #M1_Small
  | @as("t4g.2xlarge") #T4g_2xlarge
  | @as("t4g.xlarge") #T4g_Xlarge
  | @as("t4g.large") #T4g_Large
  | @as("t4g.medium") #T4g_Medium
  | @as("t4g.small") #T4g_Small
  | @as("t4g.micro") #T4g_Micro
  | @as("t4g.nano") #T4g_Nano
  | @as("t3a.2xlarge") #T3a_2xlarge
  | @as("t3a.xlarge") #T3a_Xlarge
  | @as("t3a.large") #T3a_Large
  | @as("t3a.medium") #T3a_Medium
  | @as("t3a.small") #T3a_Small
  | @as("t3a.micro") #T3a_Micro
  | @as("t3a.nano") #T3a_Nano
  | @as("t3.2xlarge") #T3_2xlarge
  | @as("t3.xlarge") #T3_Xlarge
  | @as("t3.large") #T3_Large
  | @as("t3.medium") #T3_Medium
  | @as("t3.small") #T3_Small
  | @as("t3.micro") #T3_Micro
  | @as("t3.nano") #T3_Nano
  | @as("t2.2xlarge") #T2_2xlarge
  | @as("t2.xlarge") #T2_Xlarge
  | @as("t2.large") #T2_Large
  | @as("t2.medium") #T2_Medium
  | @as("t2.small") #T2_Small
  | @as("t2.micro") #T2_Micro
  | @as("t2.nano") #T2_Nano
  | @as("t1.micro") #T1_Micro
]
type instanceStorageFlag = bool
type instanceStateName = [
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("terminated") #Terminated
  | @as("shutting-down") #Shutting_Down
  | @as("running") #Running
  | @as("pending") #Pending
]
type instanceMetadataOptionsState = [@as("applied") #Applied | @as("pending") #Pending]
type instanceMetadataEndpointState = [@as("enabled") #Enabled | @as("disabled") #Disabled]
type instanceMatchCriteria = [@as("targeted") #Targeted | @as("open") #Open]
type instanceLifecycleType = [@as("scheduled") #Scheduled | @as("spot") #Spot]
type instanceLifecycle = [@as("on-demand") #On_Demand | @as("spot") #Spot]
type instanceInterruptionBehavior = [
  | @as("terminate") #Terminate
  | @as("stop") #Stop
  | @as("hibernate") #Hibernate
]
type instanceId = string
type instanceHealthStatus = [@as("unhealthy") #Unhealthy | @as("healthy") #Healthy]
type instanceEventId = string
type instanceAttributeName = [
  | @as("enclaveOptions") #EnclaveOptions
  | @as("enaSupport") #EnaSupport
  | @as("sriovNetSupport") #SriovNetSupport
  | @as("ebsOptimized") #EbsOptimized
  | @as("groupSet") #GroupSet
  | @as("sourceDestCheck") #SourceDestCheck
  | @as("productCodes") #ProductCodes
  | @as("blockDeviceMapping") #BlockDeviceMapping
  | @as("rootDeviceName") #RootDeviceName
  | @as("instanceInitiatedShutdownBehavior") #InstanceInitiatedShutdownBehavior
  | @as("disableApiTermination") #DisableApiTermination
  | @as("userData") #UserData
  | @as("ramdisk") #Ramdisk
  | @as("kernel") #Kernel
  | @as("instanceType") #InstanceType
]
type inferenceDeviceName = string
type inferenceDeviceManufacturerName = string
type inferenceDeviceCount = int
type importTaskId = string
type importSnapshotTaskId = string
type importImageTaskId = string
type imageTypeValues = [@as("ramdisk") #Ramdisk | @as("kernel") #Kernel | @as("machine") #Machine]
type imageState = [
  | @as("error") #Error
  | @as("failed") #Failed
  | @as("transient") #Transient
  | @as("deregistered") #Deregistered
  | @as("invalid") #Invalid
  | @as("available") #Available
  | @as("pending") #Pending
]
type imageId = string
type imageAttributeName = [
  | @as("bootMode") #BootMode
  | @as("sriovNetSupport") #SriovNetSupport
  | @as("blockDeviceMapping") #BlockDeviceMapping
  | @as("productCodes") #ProductCodes
  | @as("launchPermission") #LaunchPermission
  | @as("ramdisk") #Ramdisk
  | @as("kernel") #Kernel
  | @as("description") #Description
]
type igmpv2SupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type iamInstanceProfileAssociationState = [
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type iamInstanceProfileAssociationId = string
type hypervisorType = [@as("xen") #Xen | @as("ovm") #Ovm]
type httpTokensState = [@as("required") #Required | @as("optional") #Optional]
type hostTenancy = [@as("host") #Host | @as("dedicated") #Dedicated]
type hostReservationId = string
type hostRecovery = [@as("off") #Off | @as("on") #On]
type hibernationFlag = bool
type gpuDeviceName = string
type gpuDeviceMemorySize = int
type gpuDeviceManufacturerName = string
type gpuDeviceCount = int
type getManagedPrefixListAssociationsMaxResults = int
type getGroupsForCapacityReservationRequestMaxResults = int
type getCapacityReservationUsageRequestMaxResults = int
type gatewayType = [@as("ipsec.1") #Ipsec_1]
type freeTierEligibleFlag = bool
type fpgaImageStateCode = [
  | @as("unavailable") #Unavailable
  | @as("available") #Available
  | @as("failed") #Failed
  | @as("pending") #Pending
]
type fpgaImageId = string
type fpgaImageAttributeName = [
  | @as("productCodes") #ProductCodes
  | @as("loadPermission") #LoadPermission
  | @as("name") #Name
  | @as("description") #Description
]
type fpgaDeviceName = string
type fpgaDeviceMemorySize = int
type fpgaDeviceManufacturerName = string
type fpgaDeviceCount = int
type flowLogsResourceType = [
  | @as("NetworkInterface") #NetworkInterface
  | @as("Subnet") #Subnet
  | @as("VPC") #VPC
]
type flowLogResourceId = string
type float_ = float
type fleetType = [@as("instant") #Instant | @as("maintain") #Maintain | @as("request") #Request]
type fleetStateCode = [
  | @as("modifying") #Modifying
  | @as("deleted_terminating") #Deleted_Terminating
  | @as("deleted_running") #Deleted_Running
  | @as("failed") #Failed
  | @as("deleted") #Deleted
  | @as("active") #Active
  | @as("submitted") #Submitted
]
type fleetReplacementStrategy = [@as("launch") #Launch]
type fleetOnDemandAllocationStrategy = [
  | @as("prioritized") #Prioritized
  | @as("lowest-price") #Lowest_Price
]
type fleetId = string
type fleetExcessCapacityTerminationPolicy = [
  | @as("termination") #Termination
  | @as("no-termination") #No_Termination
]
type fleetEventType = [
  | @as("service-error") #Service_Error
  | @as("fleet-change") #Fleet_Change
  | @as("instance-change") #Instance_Change
]
type fleetCapacityReservationUsageStrategy = [
  | @as("use-capacity-reservations-first") #Use_Capacity_Reservations_First
]
type fleetActivityStatus = [
  | @as("fulfilled") #Fulfilled
  | @as("pending_termination") #Pending_Termination
  | @as("pending_fulfillment") #Pending_Fulfillment
  | @as("error") #Error
]
type fastSnapshotRestoreStateCode = [
  | @as("disabled") #Disabled
  | @as("disabling") #Disabling
  | @as("enabled") #Enabled
  | @as("optimizing") #Optimizing
  | @as("enabling") #Enabling
]
type exportVmTaskId = string
type exportTaskState = [
  | @as("completed") #Completed
  | @as("cancelled") #Cancelled
  | @as("cancelling") #Cancelling
  | @as("active") #Active
]
type exportTaskId = string
type exportImageTaskId = string
type exportEnvironment = [
  | @as("microsoft") #Microsoft
  | @as("vmware") #Vmware
  | @as("citrix") #Citrix
]
type excessCapacityTerminationPolicy = [
  | @as("default") #Default
  | @as("noTermination") #NoTermination
]
type eventType = [
  | @as("information") #Information
  | @as("error") #Error
  | @as("fleetRequestChange") #FleetRequestChange
  | @as("instanceChange") #InstanceChange
]
type eventCode = [
  | @as("instance-stop") #Instance_Stop
  | @as("instance-retirement") #Instance_Retirement
  | @as("system-maintenance") #System_Maintenance
  | @as("system-reboot") #System_Reboot
  | @as("instance-reboot") #Instance_Reboot
]
type ephemeralNvmeSupport = [
  | @as("required") #Required
  | @as("supported") #Supported
  | @as("unsupported") #Unsupported
]
type endDateType = [@as("limited") #Limited | @as("unlimited") #Unlimited]
type enaSupport = [
  | @as("required") #Required
  | @as("supported") #Supported
  | @as("unsupported") #Unsupported
]
type elasticIpAssociationId = string
type elasticInferenceAcceleratorCount = int
type elasticGpuStatus = [@as("IMPAIRED") #IMPAIRED | @as("OK") #OK]
type elasticGpuState = [@as("ATTACHED") #ATTACHED]
type elasticGpuId = string
type egressOnlyInternetGatewayId = string
type efaSupportedFlag = bool
type ebsOptimizedSupport = [
  | @as("default") #Default
  | @as("supported") #Supported
  | @as("unsupported") #Unsupported
]
type ebsNvmeSupport = [
  | @as("required") #Required
  | @as("supported") #Supported
  | @as("unsupported") #Unsupported
]
type ebsEncryptionSupport = [@as("supported") #Supported | @as("unsupported") #Unsupported]
type double = float
type domainType = [@as("standard") #Standard | @as("vpc") #Vpc]
type dnsSupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type dnsNameState = [
  | @as("failed") #Failed
  | @as("verified") #Verified
  | @as("pendingVerification") #PendingVerification
]
type diskType = [@as("ssd") #Ssd | @as("hdd") #Hdd]
type diskSize = float
type diskImageFormat = [@as("VHD") #VHD | @as("RAW") #RAW | @as("VMDK") #VMDK]
type diskCount = int
type dhcpOptionsId = string
type deviceType = [@as("instance-store") #Instance_Store | @as("ebs") #Ebs]
type describeVpcsMaxResults = int
type describeVpcPeeringConnectionsMaxResults = int
type describeVpcClassicLinkDnsSupportNextToken = string
type describeVpcClassicLinkDnsSupportMaxResults = int
type describeSubnetsMaxResults = int
type describeStoreImageTasksRequestMaxResults = int
type describeStaleSecurityGroupsNextToken = string
type describeStaleSecurityGroupsMaxResults = int
type describeSpotFleetRequestHistoryMaxResults = int
type describeSpotFleetInstancesMaxResults = int
type describeSecurityGroupsMaxResults = int
type describeScheduledInstanceAvailabilityMaxResults = int
type describeRouteTablesMaxResults = int
type describeReplaceRootVolumeTasksMaxResults = int
type describePrincipalIdFormatMaxResults = int
type describeNetworkInterfacesMaxResults = int
type describeNetworkInterfacePermissionsMaxResults = int
type describeNetworkAclsMaxResults = int
type describeNatGatewaysMaxResults = int
type describeMovingAddressesMaxResults = int
type describeLaunchTemplatesMaxResults = int
type describeInternetGatewaysMaxResults = int
type describeInstanceCreditSpecificationsMaxResults = int
type describeIamInstanceProfileAssociationsMaxResults = int
type describeHostReservationsMaxResults = int
type describeFpgaImagesMaxResults = int
type describeFastSnapshotRestoresMaxResults = int
type describeExportImageTasksMaxResults = int
type describeElasticGpusMaxResults = int
type describeEgressOnlyInternetGatewaysMaxResults = int
type describeDhcpOptionsMaxResults = int
type describeClientVpnTargetNetworksMaxResults = int
type describeClientVpnRoutesMaxResults = int
type describeClientVpnEndpointMaxResults = int
type describeClientVpnConnectionsMaxResults = int
type describeClientVpnAuthorizationRulesMaxResults = int
type describeClassicLinkInstancesMaxResults = int
type describeCapacityReservationsMaxResults = int
type describeByoipCidrsMaxResults = int
type deleteQueuedReservedInstancesErrorCode = [
  | @as("unexpected-error") #Unexpected_Error
  | @as("reserved-instances-not-in-queued-state") #Reserved_Instances_Not_In_Queued_State
  | @as("reserved-instances-id-invalid") #Reserved_Instances_Id_Invalid
]
type deleteFleetErrorCode = [
  | @as("unexpectedError") #UnexpectedError
  | @as("fleetNotInDeletableState") #FleetNotInDeletableState
  | @as("fleetIdMalformed") #FleetIdMalformed
  | @as("fleetIdDoesNotExist") #FleetIdDoesNotExist
]
type defaultingDhcpOptionsId = string
type defaultTargetCapacityType = [@as("on-demand") #On_Demand | @as("spot") #Spot]
type defaultRouteTablePropagationValue = [@as("disable") #Disable | @as("enable") #Enable]
type defaultRouteTableAssociationValue = [@as("disable") #Disable | @as("enable") #Enable]
type defaultNetworkCardIndex = int
type dedicatedHostId = string
type dedicatedHostFlag = bool
type dateTime = Js.Date.t
type datafeedSubscriptionState = [@as("Inactive") #Inactive | @as("Active") #Active]
type ditomaxResults = int
type ditmaxResults = int
type customerGatewayId = string
type currentGenerationFlag = bool
type currencyCodeValues = [@as("USD") #USD]
type coreCount = int
type copyTagsFromSource = [@as("volume") #Volume]
type conversionTaskState = [
  | @as("completed") #Completed
  | @as("cancelled") #Cancelled
  | @as("cancelling") #Cancelling
  | @as("active") #Active
]
type conversionTaskId = string
type containerFormat = [@as("ova") #Ova]
type connectionNotificationType = [@as("Topic") #Topic]
type connectionNotificationState = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type connectionNotificationId = string
type coipPoolMaxResults = int
type coipPoolId = string
type clientVpnRouteStatusCode = [
  | @as("deleting") #Deleting
  | @as("failed") #Failed
  | @as("active") #Active
  | @as("creating") #Creating
]
type clientVpnEndpointStatusCode = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending-associate") #Pending_Associate
]
type clientVpnEndpointId = string
type clientVpnEndpointAttributeStatusCode = [@as("applied") #Applied | @as("applying") #Applying]
type clientVpnConnectionStatusCode = [
  | @as("terminated") #Terminated
  | @as("terminating") #Terminating
  | @as("failed-to-terminate") #Failed_To_Terminate
  | @as("active") #Active
]
type clientVpnAuthorizationRuleStatusCode = [
  | @as("revoking") #Revoking
  | @as("failed") #Failed
  | @as("active") #Active
  | @as("authorizing") #Authorizing
]
type clientVpnAuthenticationType = [
  | @as("federated-authentication") #Federated_Authentication
  | @as("directory-service-authentication") #Directory_Service_Authentication
  | @as("certificate-authentication") #Certificate_Authentication
]
type clientVpnAssociationId = string
type clientCertificateRevocationListStatusCode = [@as("active") #Active | @as("pending") #Pending]
type carrierGatewayState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type carrierGatewayMaxResults = int
type carrierGatewayId = string
type capacityReservationTenancy = [@as("dedicated") #Dedicated | @as("default") #Default]
type capacityReservationState = [
  | @as("failed") #Failed
  | @as("pending") #Pending
  | @as("cancelled") #Cancelled
  | @as("expired") #Expired
  | @as("active") #Active
]
type capacityReservationPreference = [@as("none") #None | @as("open") #Open]
type capacityReservationInstancePlatform = [
  | @as("Linux with SQL Server Enterprise") #Linux_With_SQL_Server_Enterprise
  | @as("Linux with SQL Server Web") #Linux_With_SQL_Server_Web
  | @as("Linux with SQL Server Standard") #Linux_With_SQL_Server_Standard
  | @as("Windows with SQL Server Web") #Windows_With_SQL_Server_Web
  | @as("Windows with SQL Server Standard") #Windows_With_SQL_Server_Standard
  | @as("Windows with SQL Server Enterprise") #Windows_With_SQL_Server_Enterprise
  | @as("Windows with SQL Server") #Windows_With_SQL_Server
  | @as("Windows") #Windows
  | @as("SUSE Linux") #SUSE_Linux
  | @as("Red Hat Enterprise Linux") #Red_Hat_Enterprise_Linux
  | @as("Linux/UNIX") #Linux_UNIX
]
type capacityReservationId = string
type cancelSpotInstanceRequestState = [
  | @as("completed") #Completed
  | @as("cancelled") #Cancelled
  | @as("closed") #Closed
  | @as("open") #Open
  | @as("active") #Active
]
type cancelBatchErrorCode = [
  | @as("unexpectedError") #UnexpectedError
  | @as("fleetRequestNotInCancellableState") #FleetRequestNotInCancellableState
  | @as("fleetRequestIdMalformed") #FleetRequestIdMalformed
  | @as("fleetRequestIdDoesNotExist") #FleetRequestIdDoesNotExist
]
type byoipCidrState = [
  | @as("provisioned-not-publicly-advertisable") #Provisioned_Not_Publicly_Advertisable
  | @as("provisioned") #Provisioned
  | @as("pending-provision") #Pending_Provision
  | @as("pending-deprovision") #Pending_Deprovision
  | @as("failed-provision") #Failed_Provision
  | @as("failed-deprovision") #Failed_Deprovision
  | @as("deprovisioned") #Deprovisioned
  | @as("advertised") #Advertised
]
type burstablePerformanceFlag = bool
type bundleTaskState = [
  | @as("failed") #Failed
  | @as("complete") #Complete
  | @as("cancelling") #Cancelling
  | @as("storing") #Storing
  | @as("bundling") #Bundling
  | @as("waiting-for-shutdown") #Waiting_For_Shutdown
  | @as("pending") #Pending
]
type bundleId = string
type bootModeValues = [@as("uefi") #Uefi | @as("legacy-bios") #Legacy_Bios]
type bootModeType = [@as("uefi") #Uefi | @as("legacy-bios") #Legacy_Bios]
type boolean_ = bool
type blob = NodeJs.Buffer.t
type bgpStatus = [@as("down") #Down | @as("up") #Up]
type batchState = [
  | @as("modifying") #Modifying
  | @as("cancelled_terminating") #Cancelled_Terminating
  | @as("cancelled_running") #Cancelled_Running
  | @as("failed") #Failed
  | @as("cancelled") #Cancelled
  | @as("active") #Active
  | @as("submitted") #Submitted
]
type baselineThroughputInMBps = float
type baselineIops = int
type baselineBandwidthInMbps = int
type bareMetalFlag = bool
type availabilityZoneState = [
  | @as("unavailable") #Unavailable
  | @as("impaired") #Impaired
  | @as("information") #Information
  | @as("available") #Available
]
type availabilityZoneOptInStatus = [
  | @as("not-opted-in") #Not_Opted_In
  | @as("opted-in") #Opted_In
  | @as("opt-in-not-required") #Opt_In_Not_Required
]
type autoRecoveryFlag = bool
type autoPlacement = [@as("off") #Off | @as("on") #On]
type autoAcceptSharedAttachmentsValue = [@as("disable") #Disable | @as("enable") #Enable]
type autoAcceptSharedAssociationsValue = [@as("disable") #Disable | @as("enable") #Enable]
type attachmentStatus = [
  | @as("detached") #Detached
  | @as("detaching") #Detaching
  | @as("attached") #Attached
  | @as("attaching") #Attaching
]
type associationStatusCode = [
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("association-failed") #Association_Failed
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type associatedNetworkType = [@as("vpc") #Vpc]
type architectureValues = [@as("arm64") #Arm64 | @as("x86_64") #X86_64 | @as("i386") #I386]
type architectureType = [@as("arm64") #Arm64 | @as("x86_64") #X86_64 | @as("i386") #I386]
type applianceModeSupportValue = [@as("disable") #Disable | @as("enable") #Enable]
type analysisStatus = [
  | @as("failed") #Failed
  | @as("succeeded") #Succeeded
  | @as("running") #Running
]
type allowsMultipleInstanceTypes = [@as("off") #Off | @as("on") #On]
type allocationStrategy = [
  | @as("capacityOptimizedPrioritized") #CapacityOptimizedPrioritized
  | @as("capacityOptimized") #CapacityOptimized
  | @as("diversified") #Diversified
  | @as("lowestPrice") #LowestPrice
]
type allocationState = [
  | @as("pending") #Pending
  | @as("released-permanent-failure") #Released_Permanent_Failure
  | @as("released") #Released
  | @as("permanent-failure") #Permanent_Failure
  | @as("under-assessment") #Under_Assessment
  | @as("available") #Available
]
type allocationId = string
type affinity = [@as("host") #Host | @as("default") #Default]
type addressMaxResults = int
type addressAttributeName = [@as("domain-name") #Domain_Name]
type activityStatus = [
  | @as("fulfilled") #Fulfilled
  | @as("pending_termination") #Pending_Termination
  | @as("pending_fulfillment") #Pending_Fulfillment
  | @as("error") #Error
]
type accountAttributeName = [
  | @as("default-vpc") #Default_Vpc
  | @as("supported-platforms") #Supported_Platforms
]
type zoneNameStringList = array<string_>
type zoneIdStringList = array<string_>
type vpnStaticRoute = {
  @as("State") state: option<vpnState>,
  @as("Source") source: option<vpnStaticRouteSource>,
  @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
}
type vpnGatewayIdStringList = array<vpnGatewayId>
type vpnConnectionIdStringList = array<vpnConnectionId>
type vpcPeeringConnectionStateReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<vpcPeeringConnectionStateReasonCode>,
}
type vpcPeeringConnectionOptionsDescription = {
  @as("AllowEgressFromLocalVpcToRemoteClassicLink")
  allowEgressFromLocalVpcToRemoteClassicLink: option<boolean_>,
  @as("AllowEgressFromLocalClassicLinkToRemoteVpc")
  allowEgressFromLocalClassicLinkToRemoteVpc: option<boolean_>,
  @as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: option<boolean_>,
}
type vpcPeeringConnectionIdList = array<vpcPeeringConnectionId>
type vpcIdStringList = array<vpcId>
type vpcEndpointSubnetIdList = array<subnetId>
type vpcEndpointServiceIdList = array<vpcEndpointServiceId>
type vpcEndpointSecurityGroupIdList = array<securityGroupId>
type vpcEndpointRouteTableIdList = array<routeTableId>
type vpcEndpointIdList = array<vpcEndpointId>
type vpcClassicLinkIdList = array<vpcId>
type vpcCidrBlockState = {
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<vpcCidrBlockStateCode>,
}
type vpcAttachment = {
  @as("VpcId") vpcId: option<string_>,
  @as("State") state: option<attachmentStatus>,
}
type volumeStatusEvent = {
  @as("InstanceId") instanceId: option<string_>,
  @as("NotBefore") notBefore: option<millisecondDateTime>,
  @as("NotAfter") notAfter: option<millisecondDateTime>,
  @as("EventType") eventType: option<string_>,
  @as("EventId") eventId: option<string_>,
  @as("Description") description: option<string_>,
}
type volumeStatusDetails = {
  @as("Status") status: option<string_>,
  @as("Name") name: option<volumeStatusName>,
}
type volumeStatusAttachmentStatus = {
  @as("InstanceId") instanceId: option<string_>,
  @as("IoPerformance") ioPerformance: option<string_>,
}
type volumeStatusAction = {
  @as("EventType") eventType: option<string_>,
  @as("EventId") eventId: option<string_>,
  @as("Description") description: option<string_>,
  @as("Code") code: option<string_>,
}
type volumeModification = {
  @as("EndTime") endTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("Progress") progress: option<long>,
  @as("OriginalMultiAttachEnabled") originalMultiAttachEnabled: option<boolean_>,
  @as("OriginalThroughput") originalThroughput: option<integer_>,
  @as("OriginalVolumeType") originalVolumeType: option<volumeType>,
  @as("OriginalIops") originalIops: option<integer_>,
  @as("OriginalSize") originalSize: option<integer_>,
  @as("TargetMultiAttachEnabled") targetMultiAttachEnabled: option<boolean_>,
  @as("TargetThroughput") targetThroughput: option<integer_>,
  @as("TargetVolumeType") targetVolumeType: option<volumeType>,
  @as("TargetIops") targetIops: option<integer_>,
  @as("TargetSize") targetSize: option<integer_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("ModificationState") modificationState: option<volumeModificationState>,
  @as("VolumeId") volumeId: option<string_>,
}
type volumeIdStringList = array<volumeId>
type volumeDetail = {@as("Size") size: long}
type volumeAttachment = {
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("VolumeId") volumeId: option<string_>,
  @as("State") state: option<volumeAttachmentState>,
  @as("InstanceId") instanceId: option<string_>,
  @as("Device") device: option<string_>,
  @as("AttachTime") attachTime: option<dateTime>,
}
type virtualizationTypeList = array<virtualizationType>
type vgwTelemetry = {
  @as("CertificateArn") certificateArn: option<string_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<telemetryStatus>,
  @as("OutsideIpAddress") outsideIpAddress: option<string_>,
  @as("LastStatusChange") lastStatusChange: option<dateTime>,
  @as("AcceptedRouteCount") acceptedRouteCount: option<integer_>,
}
type versionStringList = array<string_>
type valueStringList = array<string_>
type validationError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type userIdStringList = array<string_>
type userIdGroupPair = {
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("UserId") userId: option<string_>,
  @as("PeeringStatus") peeringStatus: option<string_>,
  @as("GroupName") groupName: option<string_>,
  @as("GroupId") groupId: option<string_>,
  @as("Description") description: option<string_>,
}
type userGroupStringList = array<string_>
type userData = {@as("Data") data: option<string_>}
type userBucketDetails = {
  @as("S3Key") s3Key: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
}
type userBucket = {
  @as("S3Key") s3Key: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
}
type usageClassTypeList = array<usageClassType>
type unsuccessfulItemError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type unsuccessfulInstanceCreditSpecificationItemError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<unsuccessfulInstanceCreditSpecificationErrorCode>,
}
type transitGatewayVpcAttachmentOptions = {
  @as("ApplianceModeSupport") applianceModeSupport: option<applianceModeSupportValue>,
  @as("Ipv6Support") ipv6Support: option<ipv6SupportValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
}
type transitGatewaySubnetIdList = array<subnetId>
type transitGatewayRouteTablePropagation = {
  @as("State") state: option<transitGatewayPropagationState>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGatewayRouteTableIdStringList = array<transitGatewayRouteTableId>
type transitGatewayRouteTableAssociation = {
  @as("State") state: option<transitGatewayAssociationState>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGatewayRouteAttachment = {
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
  @as("ResourceId") resourceId: option<string_>,
}
type transitGatewayPropagation = {
  @as("State") state: option<transitGatewayPropagationState>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
}
type transitGatewayPrefixListAttachment = {
  @as("ResourceId") resourceId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
}
type transitGatewayNetworkInterfaceIdList = array<networkInterfaceId>
type transitGatewayMulticastGroup = {
  @as("SourceType") sourceType: option<membershipType>,
  @as("MemberType") memberType: option<membershipType>,
  @as("GroupSource") groupSource: option<boolean_>,
  @as("GroupMember") groupMember: option<boolean_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("ResourceOwnerId") resourceOwnerId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
  @as("GroupIpAddress") groupIpAddress: option<string_>,
}
type transitGatewayMulticastDomainOptions = {
  @as("AutoAcceptSharedAssociations")
  autoAcceptSharedAssociations: option<autoAcceptSharedAssociationsValue>,
  @as("StaticSourcesSupport") staticSourcesSupport: option<staticSourcesSupportValue>,
  @as("Igmpv2Support") igmpv2Support: option<igmpv2SupportValue>,
}
type transitGatewayMulticastDomainIdStringList = array<transitGatewayMulticastDomainId>
type transitGatewayIdStringList = array<transitGatewayId>
type transitGatewayConnectRequestBgpOptions = {@as("PeerAsn") peerAsn: option<long>}
type transitGatewayConnectPeerIdStringList = array<transitGatewayConnectPeerId>
type transitGatewayConnectOptions = {@as("Protocol") protocol: option<protocolValue>}
type transitGatewayCidrBlockStringList = array<string_>
type transitGatewayAttachmentPropagation = {
  @as("State") state: option<transitGatewayPropagationState>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<string_>,
}
type transitGatewayAttachmentIdStringList = array<transitGatewayAttachmentId>
type transitGatewayAttachmentBgpConfiguration = {
  @as("BgpStatus") bgpStatus: option<bgpStatus>,
  @as("PeerAddress") peerAddress: option<string_>,
  @as("TransitGatewayAddress") transitGatewayAddress: option<string_>,
  @as("PeerAsn") peerAsn: option<long>,
  @as("TransitGatewayAsn") transitGatewayAsn: option<long>,
}
type transitGatewayAttachmentAssociation = {
  @as("State") state: option<transitGatewayAssociationState>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<string_>,
}
type transitGatewayAssociation = {
  @as("State") state: option<transitGatewayAssociationState>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>,
}
type trafficMirrorTargetIdList = array<trafficMirrorTargetId>
type trafficMirrorSessionIdList = array<trafficMirrorSessionId>
type trafficMirrorSessionFieldList = array<trafficMirrorSessionField>
type trafficMirrorPortRangeRequest = {
  @as("ToPort") toPort: option<integer_>,
  @as("FromPort") fromPort: option<integer_>,
}
type trafficMirrorPortRange = {
  @as("ToPort") toPort: option<integer_>,
  @as("FromPort") fromPort: option<integer_>,
}
type trafficMirrorNetworkServiceList = array<trafficMirrorNetworkService>
type trafficMirrorFilterRuleFieldList = array<trafficMirrorFilterRuleField>
type trafficMirrorFilterIdList = array<trafficMirrorFilterId>
type threadsPerCoreList = array<threadsPerCore>
type targetGroup = {@as("Arn") arn: option<string_>}
type targetConfigurationRequest = {
  @as("OfferingId") offeringId: reservedInstancesOfferingId,
  @as("InstanceCount") instanceCount: option<integer_>,
}
type targetConfiguration = {
  @as("OfferingId") offeringId: option<string_>,
  @as("InstanceCount") instanceCount: option<integer_>,
}
type targetCapacitySpecificationRequest = {
  @as("DefaultTargetCapacityType") defaultTargetCapacityType: option<defaultTargetCapacityType>,
  @as("SpotTargetCapacity") spotTargetCapacity: option<integer_>,
  @as("OnDemandTargetCapacity") onDemandTargetCapacity: option<integer_>,
  @as("TotalTargetCapacity") totalTargetCapacity: integer_,
}
type targetCapacitySpecification = {
  @as("DefaultTargetCapacityType") defaultTargetCapacityType: option<defaultTargetCapacityType>,
  @as("SpotTargetCapacity") spotTargetCapacity: option<integer_>,
  @as("OnDemandTargetCapacity") onDemandTargetCapacity: option<integer_>,
  @as("TotalTargetCapacity") totalTargetCapacity: option<integer_>,
}
type tagDescription = {
  @as("Value") value: option<string_>,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("Key") key: option<string_>,
}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type successfulQueuedPurchaseDeletion = {
  @as("ReservedInstancesId") reservedInstancesId: option<string_>,
}
type successfulInstanceCreditSpecificationItem = {@as("InstanceId") instanceId: option<string_>}
type subnetIdStringList = array<subnetId>
type subnetCidrBlockState = {
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<subnetCidrBlockStateCode>,
}
type subnetAssociation = {
  @as("State") state: option<transitGatewayMulitcastDomainAssociationState>,
  @as("SubnetId") subnetId: option<string_>,
}
type stringList = array<string_>
type storeImageTaskResult = {
  @as("StoreTaskFailureReason") storeTaskFailureReason: option<string_>,
  @as("StoreTaskState") storeTaskState: option<string_>,
  @as("ProgressPercentage") progressPercentage: option<integer_>,
  @as("S3objectKey") s3objectKey: option<string_>,
  @as("Bucket") bucket: option<string_>,
  @as("TaskStartTime") taskStartTime: option<millisecondDateTime>,
  @as("AmiId") amiId: option<string_>,
}
type storageLocation = {
  @as("Key") key: option<string_>,
  @as("Bucket") bucket: option<string_>,
}
type stateReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type spotPrice = {
  @as("Timestamp") timestamp_: option<dateTime>,
  @as("SpotPrice") spotPrice: option<string_>,
  @as("ProductDescription") productDescription: option<riproductDescription>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type spotPlacement = {
  @as("Tenancy") tenancy: option<tenancy>,
  @as("GroupName") groupName: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type spotMarketOptions = {
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("BlockDurationMinutes") blockDurationMinutes: option<integer_>,
  @as("SpotInstanceType") spotInstanceType: option<spotInstanceType>,
  @as("MaxPrice") maxPrice: option<string_>,
}
type spotInstanceStatus = {
  @as("UpdateTime") updateTime: option<dateTime>,
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type spotInstanceStateFault = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type spotInstanceRequestIdList = array<spotInstanceRequestId>
type spotFleetRequestIdList = array<spotFleetRequestId>
type spotFleetMonitoring = {@as("Enabled") enabled: option<boolean_>}
type spotCapacityRebalance = {
  @as("ReplacementStrategy") replacementStrategy: option<replacementStrategy>,
}
type snapshotIdStringList = array<snapshotId>
type slotStartTimeRangeRequest = {
  @as("LatestTime") latestTime: option<dateTime>,
  @as("EarliestTime") earliestTime: option<dateTime>,
}
type slotDateTimeRangeRequest = {
  @as("LatestTime") latestTime: dateTime,
  @as("EarliestTime") earliestTime: dateTime,
}
type serviceTypeDetail = {@as("ServiceType") serviceType: option<serviceType>}
type securityGroupStringList = array<securityGroupName>
type securityGroupReference = {
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<string_>,
  @as("ReferencingVpcId") referencingVpcId: option<string_>,
  @as("GroupId") groupId: option<string_>,
}
type securityGroupIdentifier = {
  @as("GroupName") groupName: option<string_>,
  @as("GroupId") groupId: option<string_>,
}
type securityGroupIdStringList = array<securityGroupId>
type scheduledInstancesSecurityGroupIdSet = array<securityGroupId>
type scheduledInstancesPrivateIpAddressConfig = {
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("Primary") primary: option<boolean_>,
}
type scheduledInstancesPlacement = {
  @as("GroupName") groupName: option<placementGroupName>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type scheduledInstancesMonitoring = {@as("Enabled") enabled: option<boolean_>}
type scheduledInstancesIpv6Address = {@as("Ipv6Address") ipv6Address: option<ipv6Address>}
type scheduledInstancesIamInstanceProfile = {
  @as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>,
}
type scheduledInstancesEbs = {
  @as("VolumeType") volumeType: option<string_>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("Iops") iops: option<integer_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
}
type scheduledInstanceIdRequestSet = array<scheduledInstanceId>
type s3Storage = {
  @as("UploadPolicySignature") uploadPolicySignature: option<string_>,
  @as("UploadPolicy") uploadPolicy: option<blob>,
  @as("Prefix") prefix: option<string_>,
  @as("Bucket") bucket: option<string_>,
  @as("AWSAccessKeyId") awsaccessKeyId: option<string_>,
}
type s3ObjectTag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type runInstancesMonitoringEnabled = {@as("Enabled") enabled: boolean_}
type routeTableIdStringList = array<routeTableId>
type routeTableAssociationState = {
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<routeTableAssociationStateCode>,
}
type route = {
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<string_>,
  @as("State") state: option<routeState>,
  @as("Origin") origin: option<routeOrigin>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("CarrierGatewayId") carrierGatewayId: option<carrierGatewayId>,
  @as("LocalGatewayId") localGatewayId: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("NatGatewayId") natGatewayId: option<string_>,
  @as("InstanceOwnerId") instanceOwnerId: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("GatewayId") gatewayId: option<string_>,
  @as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: option<string_>,
  @as("DestinationPrefixListId") destinationPrefixListId: option<string_>,
  @as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: option<string_>,
  @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
}
type rootDeviceTypeList = array<rootDeviceType>
type restorableByStringList = array<string_>
type responseHostIdSet = array<string_>
type responseHostIdList = array<string_>
type responseError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<launchTemplateErrorCode>,
}
type resourceList = array<string_>
type resourceIdList = array<taggableResourceId>
type reservedInstancesOfferingIdStringList = array<reservedInstancesOfferingId>
type reservedInstancesModificationIdStringList = array<reservedInstancesModificationId>
type reservedInstancesIdStringList = array<reservationId>
type reservedInstancesId = {@as("ReservedInstancesId") reservedInstancesId: option<string_>}
type reservedInstancesConfiguration = {
  @as("Scope") scope: option<scope>,
  @as("Platform") platform: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceCount") instanceCount: option<integer_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type reservedInstanceLimitPrice = {
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  @as("Amount") amount: option<double>,
}
type reservedInstanceIdSet = array<reservationId>
type reservationValue = {
  @as("RemainingUpfrontValue") remainingUpfrontValue: option<string_>,
  @as("RemainingTotalValue") remainingTotalValue: option<string_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
}
type requestSpotLaunchSpecificationSecurityGroupList = array<string_>
type requestSpotLaunchSpecificationSecurityGroupIdList = array<securityGroupId>
type requestInstanceTypeList = array<instanceType>
type requestHostIdSet = array<dedicatedHostId>
type requestHostIdList = array<dedicatedHostId>
type replaceRootVolumeTaskIds = array<replaceRootVolumeTaskId>
type removePrefixListEntry = {@as("Cidr") cidr: string_}
type regionNameStringList = array<string_>
type region = {
  @as("OptInStatus") optInStatus: option<string_>,
  @as("RegionName") regionName: option<string_>,
  @as("Endpoint") endpoint: option<string_>,
}
type recurringCharge = {
  @as("Frequency") frequency: option<recurringChargeFrequency>,
  @as("Amount") amount: option<double>,
}
type reasonCodesList = array<reportInstanceReasonCodes>
type purchaseRequest = {
  @as("PurchaseToken") purchaseToken: string_,
  @as("InstanceCount") instanceCount: integer_,
}
type publicIpv4PoolRange = {
  @as("AvailableAddressCount") availableAddressCount: option<integer_>,
  @as("AddressCount") addressCount: option<integer_>,
  @as("LastAddress") lastAddress: option<string_>,
  @as("FirstAddress") firstAddress: option<string_>,
}
type publicIpv4PoolIdStringList = array<ipv4PoolEc2Id>
type publicIpStringList = array<string_>
type ptrUpdateStatus = {
  @as("Reason") reason: option<string_>,
  @as("Status") status: option<string_>,
  @as("Value") value: option<string_>,
}
type provisionedBandwidth = {
  @as("Status") status: option<string_>,
  @as("Requested") requested: option<string_>,
  @as("RequestTime") requestTime: option<dateTime>,
  @as("Provisioned") provisioned: option<string_>,
  @as("ProvisionTime") provisionTime: option<dateTime>,
}
type propagatingVgw = {@as("GatewayId") gatewayId: option<string_>}
type productDescriptionList = array<string_>
type productCodeStringList = array<string_>
type productCode = {
  @as("ProductCodeType") productCodeType: option<productCodeValues>,
  @as("ProductCodeId") productCodeId: option<string_>,
}
type privateIpAddressStringList = array<string_>
type privateIpAddressSpecification = {
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("Primary") primary: option<boolean_>,
}
type privateDnsNameConfiguration = {
  @as("Name") name: option<string_>,
  @as("Value") value: option<string_>,
  @as("Type") type_: option<string_>,
  @as("State") state: option<dnsNameState>,
}
type privateDnsDetails = {@as("PrivateDnsName") privateDnsName: option<string_>}
type pricingDetail = {
  @as("Price") price: option<double>,
  @as("Count") count: option<integer_>,
}
type priceScheduleSpecification = {
  @as("Term") term: option<long>,
  @as("Price") price: option<double>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
}
type priceSchedule = {
  @as("Term") term: option<long>,
  @as("Price") price: option<double>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  @as("Active") active: option<boolean_>,
}
type prefixListResourceIdStringList = array<prefixListResourceId>
type prefixListIdSet = array<string_>
type prefixListId = {
  @as("PrefixListId") prefixListId: option<string_>,
  @as("Description") description: option<string_>,
}
type prefixListEntry = {
  @as("Description") description: option<string_>,
  @as("Cidr") cidr: option<string_>,
}
type prefixListAssociation = {
  @as("ResourceOwner") resourceOwner: option<string_>,
  @as("ResourceId") resourceId: option<string_>,
}
type portRange = {
  @as("To") to: option<integer_>,
  @as("From") from: option<integer_>,
}
type poolCidrBlock = {@as("Cidr") cidr: option<string_>}
type placementResponse = {@as("GroupName") groupName: option<string_>}
type placementGroupStringList = array<placementGroupName>
type placementGroupStrategyList = array<placementGroupStrategy>
type placementGroupIdStringList = array<placementGroupId>
type placement = {
  @as("HostResourceGroupArn") hostResourceGroupArn: option<string_>,
  @as("SpreadDomain") spreadDomain: option<string_>,
  @as("Tenancy") tenancy: option<tenancy>,
  @as("HostId") hostId: option<string_>,
  @as("PartitionNumber") partitionNumber: option<integer_>,
  @as("GroupName") groupName: option<string_>,
  @as("Affinity") affinity: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type phase2IntegrityAlgorithmsRequestListValue = {@as("Value") value: option<string_>}
type phase2IntegrityAlgorithmsListValue = {@as("Value") value: option<string_>}
type phase2EncryptionAlgorithmsRequestListValue = {@as("Value") value: option<string_>}
type phase2EncryptionAlgorithmsListValue = {@as("Value") value: option<string_>}
type phase2DHGroupNumbersRequestListValue = {@as("Value") value: option<integer_>}
type phase2DHGroupNumbersListValue = {@as("Value") value: option<integer_>}
type phase1IntegrityAlgorithmsRequestListValue = {@as("Value") value: option<string_>}
type phase1IntegrityAlgorithmsListValue = {@as("Value") value: option<string_>}
type phase1EncryptionAlgorithmsRequestListValue = {@as("Value") value: option<string_>}
type phase1EncryptionAlgorithmsListValue = {@as("Value") value: option<string_>}
type phase1DHGroupNumbersRequestListValue = {@as("Value") value: option<integer_>}
type phase1DHGroupNumbersListValue = {@as("Value") value: option<integer_>}
type peeringTgwInfo = {
  @as("Region") region: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
}
type peeringConnectionOptionsRequest = {
  @as("AllowEgressFromLocalVpcToRemoteClassicLink")
  allowEgressFromLocalVpcToRemoteClassicLink: option<boolean_>,
  @as("AllowEgressFromLocalClassicLinkToRemoteVpc")
  allowEgressFromLocalClassicLinkToRemoteVpc: option<boolean_>,
  @as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: option<boolean_>,
}
type peeringConnectionOptions = {
  @as("AllowEgressFromLocalVpcToRemoteClassicLink")
  allowEgressFromLocalVpcToRemoteClassicLink: option<boolean_>,
  @as("AllowEgressFromLocalClassicLinkToRemoteVpc")
  allowEgressFromLocalClassicLinkToRemoteVpc: option<boolean_>,
  @as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: option<boolean_>,
}
type peeringAttachmentStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type pciId = {
  @as("SubsystemVendorId") subsystemVendorId: option<string_>,
  @as("SubsystemId") subsystemId: option<string_>,
  @as("VendorId") vendorId: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
}
type ownerStringList = array<string_>
type occurrenceDaySet = array<integer_>
type occurrenceDayRequestSet = array<integer_>
type networkInterfacePermissionState = {
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<networkInterfacePermissionStateCode>,
}
type networkInterfacePermissionIdList = array<networkInterfacePermissionId>
type networkInterfaceIpv6Address = {@as("Ipv6Address") ipv6Address: option<string_>}
type networkInterfaceIdList = array<networkInterfaceId>
type networkInterfaceAttachmentChanges = {
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachmentId") attachmentId: option<networkInterfaceAttachmentId>,
}
type networkInterfaceAttachment = {
  @as("Status") status: option<attachmentStatus>,
  @as("InstanceOwnerId") instanceOwnerId: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("NetworkCardIndex") networkCardIndex: option<integer_>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachmentId") attachmentId: option<string_>,
  @as("AttachTime") attachTime: option<dateTime>,
}
type networkInterfaceAssociation = {
  @as("CarrierIp") carrierIp: option<string_>,
  @as("CustomerOwnedIp") customerOwnedIp: option<string_>,
  @as("PublicIp") publicIp: option<string_>,
  @as("PublicDnsName") publicDnsName: option<string_>,
  @as("IpOwnerId") ipOwnerId: option<string_>,
  @as("AssociationId") associationId: option<string_>,
  @as("AllocationId") allocationId: option<string_>,
}
type networkInsightsPathIdList = array<networkInsightsPathId>
type networkInsightsAnalysisIdList = array<networkInsightsAnalysisId>
type networkCardInfo = {
  @as("MaximumNetworkInterfaces") maximumNetworkInterfaces: option<maxNetworkInterfaces>,
  @as("NetworkPerformance") networkPerformance: option<networkPerformance>,
  @as("NetworkCardIndex") networkCardIndex: option<networkCardIndex>,
}
type networkAclIdStringList = array<networkAclId>
type networkAclAssociation = {
  @as("SubnetId") subnetId: option<string_>,
  @as("NetworkAclId") networkAclId: option<string_>,
  @as("NetworkAclAssociationId") networkAclAssociationId: option<string_>,
}
type natGatewayIdStringList = array<natGatewayId>
type natGatewayAddress = {
  @as("PublicIp") publicIp: option<string_>,
  @as("PrivateIp") privateIp: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("AllocationId") allocationId: option<string_>,
}
type movingAddressStatus = {
  @as("PublicIp") publicIp: option<string_>,
  @as("MoveStatus") moveStatus: option<moveStatus>,
}
type monitoring = {@as("State") state: option<monitoringState>}
type modifyTransitGatewayVpcAttachmentRequestOptions = {
  @as("ApplianceModeSupport") applianceModeSupport: option<applianceModeSupportValue>,
  @as("Ipv6Support") ipv6Support: option<ipv6SupportValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
}
type memoryInfo = {@as("SizeInMiB") sizeInMiB: option<memorySize>}
type localGatewayVirtualInterfaceIdSet = array<localGatewayVirtualInterfaceId>
type localGatewayVirtualInterfaceGroupIdSet = array<localGatewayVirtualInterfaceGroupId>
type localGatewayRouteTableVpcAssociationIdSet = array<localGatewayRouteTableVpcAssociationId>
type localGatewayRouteTableVirtualInterfaceGroupAssociationIdSet = array<
  localGatewayRouteTableVirtualInterfaceGroupAssociationId,
>
type localGatewayRouteTableIdSet = array<localGatewayRoutetableId>
type localGatewayRoute = {
  @as("OwnerId") ownerId: option<string_>,
  @as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: option<resourceArn>,
  @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>,
  @as("State") state: option<localGatewayRouteState>,
  @as("Type") type_: option<localGatewayRouteType>,
  @as("LocalGatewayVirtualInterfaceGroupId")
  localGatewayVirtualInterfaceGroupId: option<localGatewayVirtualInterfaceGroupId>,
  @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
}
type localGatewayIdSet = array<localGatewayId>
type loadPermissionRequest = {
  @as("UserId") userId: option<string_>,
  @as("Group") group: option<permissionGroup>,
}
type loadPermission = {
  @as("Group") group: option<permissionGroup>,
  @as("UserId") userId: option<string_>,
}
type licenseConfigurationRequest = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type licenseConfiguration = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type launchTemplatesMonitoringRequest = {@as("Enabled") enabled: option<boolean_>}
type launchTemplatesMonitoring = {@as("Enabled") enabled: option<boolean_>}
type launchTemplateSpotMarketOptionsRequest = {
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("BlockDurationMinutes") blockDurationMinutes: option<integer_>,
  @as("SpotInstanceType") spotInstanceType: option<spotInstanceType>,
  @as("MaxPrice") maxPrice: option<string_>,
}
type launchTemplateSpotMarketOptions = {
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("BlockDurationMinutes") blockDurationMinutes: option<integer_>,
  @as("SpotInstanceType") spotInstanceType: option<spotInstanceType>,
  @as("MaxPrice") maxPrice: option<string_>,
}
type launchTemplateSpecification = {
  @as("Version") version: option<string_>,
  @as("LaunchTemplateName") launchTemplateName: option<string_>,
  @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
}
type launchTemplatePlacementRequest = {
  @as("PartitionNumber") partitionNumber: option<integer_>,
  @as("HostResourceGroupArn") hostResourceGroupArn: option<string_>,
  @as("SpreadDomain") spreadDomain: option<string_>,
  @as("Tenancy") tenancy: option<tenancy>,
  @as("HostId") hostId: option<dedicatedHostId>,
  @as("GroupName") groupName: option<placementGroupName>,
  @as("Affinity") affinity: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type launchTemplatePlacement = {
  @as("PartitionNumber") partitionNumber: option<integer_>,
  @as("HostResourceGroupArn") hostResourceGroupArn: option<string_>,
  @as("SpreadDomain") spreadDomain: option<string_>,
  @as("Tenancy") tenancy: option<tenancy>,
  @as("HostId") hostId: option<string_>,
  @as("GroupName") groupName: option<string_>,
  @as("Affinity") affinity: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type launchTemplateOverrides = {
  @as("Priority") priority: option<double>,
  @as("WeightedCapacity") weightedCapacity: option<double>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("SpotPrice") spotPrice: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type launchTemplateNameStringList = array<launchTemplateName>
type launchTemplateLicenseConfigurationRequest = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type launchTemplateLicenseConfiguration = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type launchTemplateInstanceMetadataOptionsRequest = {
  @as("HttpEndpoint") httpEndpoint: option<launchTemplateInstanceMetadataEndpointState>,
  @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<integer_>,
  @as("HttpTokens") httpTokens: option<launchTemplateHttpTokensState>,
}
type launchTemplateInstanceMetadataOptions = {
  @as("HttpEndpoint") httpEndpoint: option<launchTemplateInstanceMetadataEndpointState>,
  @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<integer_>,
  @as("HttpTokens") httpTokens: option<launchTemplateHttpTokensState>,
  @as("State") state: option<launchTemplateInstanceMetadataOptionsState>,
}
type launchTemplateIdStringList = array<launchTemplateId>
type launchTemplateIamInstanceProfileSpecificationRequest = {
  @as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>,
}
type launchTemplateIamInstanceProfileSpecification = {
  @as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>,
}
type launchTemplateHibernationOptionsRequest = {@as("Configured") configured: option<boolean_>}
type launchTemplateHibernationOptions = {@as("Configured") configured: option<boolean_>}
type launchTemplateEnclaveOptionsRequest = {@as("Enabled") enabled: option<boolean_>}
type launchTemplateEnclaveOptions = {@as("Enabled") enabled: option<boolean_>}
type launchTemplateElasticInferenceAcceleratorResponse = {
  @as("Count") count: option<integer_>,
  @as("Type") type_: option<string_>,
}
type launchTemplateElasticInferenceAccelerator = {
  @as("Count") count: option<launchTemplateElasticInferenceAcceleratorCount>,
  @as("Type") type_: string_,
}
type launchTemplateEbsBlockDeviceRequest = {
  @as("Throughput") throughput: option<integer_>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("Iops") iops: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("Encrypted") encrypted: option<boolean_>,
}
type launchTemplateEbsBlockDevice = {
  @as("Throughput") throughput: option<integer_>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("Iops") iops: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("Encrypted") encrypted: option<boolean_>,
}
type launchTemplateCpuOptionsRequest = {
  @as("ThreadsPerCore") threadsPerCore: option<integer_>,
  @as("CoreCount") coreCount: option<integer_>,
}
type launchTemplateCpuOptions = {
  @as("ThreadsPerCore") threadsPerCore: option<integer_>,
  @as("CoreCount") coreCount: option<integer_>,
}
type launchPermission = {
  @as("UserId") userId: option<string_>,
  @as("Group") group: option<permissionGroup>,
}
type lastError = {
  @as("Code") code: option<string_>,
  @as("Message") message: option<string_>,
}
type keyPairIdStringList = array<keyPairId>
type keyNameStringList = array<keyPairName>
type ipv6Range = {
  @as("Description") description: option<string_>,
  @as("CidrIpv6") cidrIpv6: option<string_>,
}
type ipv6PoolIdList = array<ipv6PoolEc2Id>
type ipv6CidrBlock = {@as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>}
type ipv6CidrAssociation = {
  @as("AssociatedResource") associatedResource: option<string_>,
  @as("Ipv6Cidr") ipv6Cidr: option<string_>,
}
type ipv6AddressList = array<string_>
type ipRanges = array<string_>
type ipRange = {
  @as("Description") description: option<string_>,
  @as("CidrIp") cidrIp: option<string_>,
}
type ipAddressList = array<ipAddress>
type internetGatewayIdList = array<internetGatewayId>
type internetGatewayAttachment = {
  @as("VpcId") vpcId: option<string_>,
  @as("State") state: option<attachmentStatus>,
}
type instanceUsage = {
  @as("UsedInstanceCount") usedInstanceCount: option<integer_>,
  @as("AccountId") accountId: option<string_>,
}
type instanceTypeOffering = {
  @as("Location") location: option<location>,
  @as("LocationType") locationType: option<locationType>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type instanceTypeList = array<instanceType>
type instanceTagKeySet = array<string_>
type instanceStatusEvent = {
  @as("NotBeforeDeadline") notBeforeDeadline: option<dateTime>,
  @as("NotBefore") notBefore: option<dateTime>,
  @as("NotAfter") notAfter: option<dateTime>,
  @as("Description") description: option<string_>,
  @as("Code") code: option<eventCode>,
  @as("InstanceEventId") instanceEventId: option<instanceEventId>,
}
type instanceStatusDetails = {
  @as("Status") status: option<statusType>,
  @as("Name") name: option<statusName>,
  @as("ImpairedSince") impairedSince: option<dateTime>,
}
type instanceState = {
  @as("Name") name: option<instanceStateName>,
  @as("Code") code: option<integer_>,
}
type instanceSpecification = {
  @as("ExcludeBootVolume") excludeBootVolume: option<boolean_>,
  @as("InstanceId") instanceId: option<instanceId>,
}
type instanceNetworkInterfaceAttachment = {
  @as("NetworkCardIndex") networkCardIndex: option<integer_>,
  @as("Status") status: option<attachmentStatus>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachmentId") attachmentId: option<string_>,
  @as("AttachTime") attachTime: option<dateTime>,
}
type instanceNetworkInterfaceAssociation = {
  @as("PublicIp") publicIp: option<string_>,
  @as("PublicDnsName") publicDnsName: option<string_>,
  @as("IpOwnerId") ipOwnerId: option<string_>,
  @as("CarrierIp") carrierIp: option<string_>,
}
type instanceMetadataOptionsResponse = {
  @as("HttpEndpoint") httpEndpoint: option<instanceMetadataEndpointState>,
  @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<integer_>,
  @as("HttpTokens") httpTokens: option<httpTokensState>,
  @as("State") state: option<instanceMetadataOptionsState>,
}
type instanceMetadataOptionsRequest = {
  @as("HttpEndpoint") httpEndpoint: option<instanceMetadataEndpointState>,
  @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<integer_>,
  @as("HttpTokens") httpTokens: option<httpTokensState>,
}
type instanceIpv6AddressRequest = {@as("Ipv6Address") ipv6Address: option<string_>}
type instanceIpv6Address = {@as("Ipv6Address") ipv6Address: option<string_>}
type instanceIdsSet = array<instanceId>
type instanceIdStringList = array<instanceId>
type instanceIdSet = array<instanceId>
type instanceFamilyCreditSpecification = {
  @as("CpuCredits") cpuCredits: option<string_>,
  @as("InstanceFamily") instanceFamily: option<unlimitedSupportedInstanceFamily>,
}
type instanceExportDetails = {
  @as("TargetEnvironment") targetEnvironment: option<exportEnvironment>,
  @as("InstanceId") instanceId: option<string_>,
}
type instanceCreditSpecificationRequest = {
  @as("CpuCredits") cpuCredits: option<string_>,
  @as("InstanceId") instanceId: option<instanceId>,
}
type instanceCreditSpecification = {
  @as("CpuCredits") cpuCredits: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
}
type instanceCount = {
  @as("State") state: option<listingState>,
  @as("InstanceCount") instanceCount: option<integer_>,
}
type instanceCapacity = {
  @as("TotalCapacity") totalCapacity: option<integer_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("AvailableCapacity") availableCapacity: option<integer_>,
}
type insideCidrBlocksStringList = array<string_>
type inferenceDeviceInfo = {
  @as("Manufacturer") manufacturer: option<inferenceDeviceManufacturerName>,
  @as("Name") name: option<inferenceDeviceName>,
  @as("Count") count: option<inferenceDeviceCount>,
}
type importTaskIdList = array<importImageTaskId>
type importSnapshotTaskIdList = array<importSnapshotTaskId>
type importImageLicenseConfigurationResponse = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type importImageLicenseConfigurationRequest = {
  @as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
}
type imageIdStringList = array<imageId>
type imageIdList = array<imageId>
type idFormat = {
  @as("UseLongIds") useLongIds: option<boolean_>,
  @as("Resource") resource: option<string_>,
  @as("Deadline") deadline: option<dateTime>,
}
type icmpTypeCode = {
  @as("Type") type_: option<integer_>,
  @as("Code") code: option<integer_>,
}
type iamInstanceProfileSpecification = {
  @as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>,
}
type iamInstanceProfile = {
  @as("Id") id: option<string_>,
  @as("Arn") arn: option<string_>,
}
type ikeversionsRequestListValue = {@as("Value") value: option<string_>}
type ikeversionsListValue = {@as("Value") value: option<string_>}
type hostReservationIdSet = array<hostReservationId>
type hostProperties = {
  @as("TotalVCpus") totalVCpus: option<integer_>,
  @as("Sockets") sockets: option<integer_>,
  @as("InstanceFamily") instanceFamily: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("Cores") cores: option<integer_>,
}
type hostOffering = {
  @as("UpfrontPrice") upfrontPrice: option<string_>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("OfferingId") offeringId: option<string_>,
  @as("InstanceFamily") instanceFamily: option<string_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
  @as("Duration") duration: option<integer_>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
}
type hostInstance = {
  @as("OwnerId") ownerId: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
}
type hibernationOptionsRequest = {@as("Configured") configured: option<boolean_>}
type hibernationOptions = {@as("Configured") configured: option<boolean_>}
type groupNameStringList = array<securityGroupName>
type groupIds = array<securityGroupId>
type groupIdentifier = {
  @as("GroupId") groupId: option<string_>,
  @as("GroupName") groupName: option<string_>,
}
type groupIdStringList = array<string_>
type gpuDeviceMemoryInfo = {@as("SizeInMiB") sizeInMiB: option<gpuDeviceMemorySize>}
type fpgaImageState = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<fpgaImageStateCode>,
}
type fpgaImageIdList = array<fpgaImageId>
type fpgaDeviceMemoryInfo = {@as("SizeInMiB") sizeInMiB: option<fpgaDeviceMemorySize>}
type flowLogResourceIds = array<flowLogResourceId>
type flowLogIdList = array<vpcFlowLogId>
type fleetSpotCapacityRebalanceRequest = {
  @as("ReplacementStrategy") replacementStrategy: option<fleetReplacementStrategy>,
}
type fleetSpotCapacityRebalance = {
  @as("ReplacementStrategy") replacementStrategy: option<fleetReplacementStrategy>,
}
type fleetLaunchTemplateSpecificationRequest = {
  @as("Version") version: option<string_>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
}
type fleetLaunchTemplateSpecification = {
  @as("Version") version: option<string_>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<string_>,
}
type fleetIdSet = array<fleetId>
type federatedAuthenticationRequest = {
  @as("SelfServiceSAMLProviderArn") selfServiceSAMLProviderArn: option<string_>,
  @as("SAMLProviderArn") samlproviderArn: option<string_>,
}
type federatedAuthentication = {
  @as("SelfServiceSamlProviderArn") selfServiceSamlProviderArn: option<string_>,
  @as("SamlProviderArn") samlProviderArn: option<string_>,
}
type exportToS3TaskSpecification = {
  @as("S3Prefix") s3Prefix: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
  @as("DiskImageFormat") diskImageFormat: option<diskImageFormat>,
  @as("ContainerFormat") containerFormat: option<containerFormat>,
}
type exportToS3Task = {
  @as("S3Key") s3Key: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
  @as("DiskImageFormat") diskImageFormat: option<diskImageFormat>,
  @as("ContainerFormat") containerFormat: option<containerFormat>,
}
type exportTaskS3LocationRequest = {
  @as("S3Prefix") s3Prefix: option<string_>,
  @as("S3Bucket") s3Bucket: string_,
}
type exportTaskS3Location = {
  @as("S3Prefix") s3Prefix: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
}
type exportTaskIdStringList = array<exportTaskId>
type exportImageTaskIdList = array<exportImageTaskId>
type executableByStringList = array<string_>
type eventInformation = {
  @as("InstanceId") instanceId: option<string_>,
  @as("EventSubType") eventSubType: option<string_>,
  @as("EventDescription") eventDescription: option<string_>,
}
type enclaveOptionsRequest = {@as("Enabled") enabled: option<boolean_>}
type enclaveOptions = {@as("Enabled") enabled: option<boolean_>}
type enableFastSnapshotRestoreSuccessItem = {
  @as("DisabledTime") disabledTime: option<millisecondDateTime>,
  @as("DisablingTime") disablingTime: option<millisecondDateTime>,
  @as("EnabledTime") enabledTime: option<millisecondDateTime>,
  @as("OptimizingTime") optimizingTime: option<millisecondDateTime>,
  @as("EnablingTime") enablingTime: option<millisecondDateTime>,
  @as("OwnerAlias") ownerAlias: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("StateTransitionReason") stateTransitionReason: option<string_>,
  @as("State") state: option<fastSnapshotRestoreStateCode>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type enableFastSnapshotRestoreStateError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type elasticInferenceAcceleratorAssociation = {
  @as("ElasticInferenceAcceleratorAssociationTime")
  elasticInferenceAcceleratorAssociationTime: option<dateTime>,
  @as("ElasticInferenceAcceleratorAssociationState")
  elasticInferenceAcceleratorAssociationState: option<string_>,
  @as("ElasticInferenceAcceleratorAssociationId")
  elasticInferenceAcceleratorAssociationId: option<string_>,
  @as("ElasticInferenceAcceleratorArn") elasticInferenceAcceleratorArn: option<string_>,
}
type elasticInferenceAccelerator = {
  @as("Count") count: option<elasticInferenceAcceleratorCount>,
  @as("Type") type_: string_,
}
type elasticGpuSpecificationResponse = {@as("Type") type_: option<string_>}
type elasticGpuSpecification = {@as("Type") type_: string_}
type elasticGpuIdSet = array<elasticGpuId>
type elasticGpuHealth = {@as("Status") status: option<elasticGpuStatus>}
type elasticGpuAssociation = {
  @as("ElasticGpuAssociationTime") elasticGpuAssociationTime: option<string_>,
  @as("ElasticGpuAssociationState") elasticGpuAssociationState: option<string_>,
  @as("ElasticGpuAssociationId") elasticGpuAssociationId: option<string_>,
  @as("ElasticGpuId") elasticGpuId: option<string_>,
}
type egressOnlyInternetGatewayIdList = array<egressOnlyInternetGatewayId>
type efaInfo = {@as("MaximumEfaInterfaces") maximumEfaInterfaces: option<maximumEfaInterfaces>}
type ebsOptimizedInfo = {
  @as("MaximumIops") maximumIops: option<maximumIops>,
  @as("MaximumThroughputInMBps") maximumThroughputInMBps: option<maximumThroughputInMBps>,
  @as("MaximumBandwidthInMbps") maximumBandwidthInMbps: option<maximumBandwidthInMbps>,
  @as("BaselineIops") baselineIops: option<baselineIops>,
  @as("BaselineThroughputInMBps") baselineThroughputInMBps: option<baselineThroughputInMBps>,
  @as("BaselineBandwidthInMbps") baselineBandwidthInMbps: option<baselineBandwidthInMbps>,
}
type ebsInstanceBlockDeviceSpecification = {
  @as("VolumeId") volumeId: option<volumeId>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
}
type ebsInstanceBlockDevice = {
  @as("VolumeId") volumeId: option<string_>,
  @as("Status") status: option<attachmentStatus>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachTime") attachTime: option<dateTime>,
}
type ebsBlockDevice = {
  @as("Encrypted") encrypted: option<boolean_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("Throughput") throughput: option<integer_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("Iops") iops: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
}
type dnsEntry = {
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("DnsName") dnsName: option<string_>,
}
type diskInfo = {
  @as("Type") type_: option<diskType>,
  @as("Count") count: option<diskCount>,
  @as("SizeInGB") sizeInGB: option<diskSize>,
}
type diskImageVolumeDescription = {
  @as("Size") size: option<long>,
  @as("Id") id: option<string_>,
}
type diskImageDetail = {
  @as("ImportManifestUrl") importManifestUrl: string_,
  @as("Format") format: diskImageFormat,
  @as("Bytes") bytes: long,
}
type diskImageDescription = {
  @as("Size") size: option<long>,
  @as("ImportManifestUrl") importManifestUrl: option<string_>,
  @as("Format") format: option<diskImageFormat>,
  @as("Checksum") checksum: option<string_>,
}
type disableFastSnapshotRestoreSuccessItem = {
  @as("DisabledTime") disabledTime: option<millisecondDateTime>,
  @as("DisablingTime") disablingTime: option<millisecondDateTime>,
  @as("EnabledTime") enabledTime: option<millisecondDateTime>,
  @as("OptimizingTime") optimizingTime: option<millisecondDateTime>,
  @as("EnablingTime") enablingTime: option<millisecondDateTime>,
  @as("OwnerAlias") ownerAlias: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("StateTransitionReason") stateTransitionReason: option<string_>,
  @as("State") state: option<fastSnapshotRestoreStateCode>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type disableFastSnapshotRestoreStateError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type directoryServiceAuthenticationRequest = {@as("DirectoryId") directoryId: option<string_>}
type directoryServiceAuthentication = {@as("DirectoryId") directoryId: option<string_>}
type dhcpOptionsIdStringList = array<dhcpOptionsId>
type describeFastSnapshotRestoreSuccessItem = {
  @as("DisabledTime") disabledTime: option<millisecondDateTime>,
  @as("DisablingTime") disablingTime: option<millisecondDateTime>,
  @as("EnabledTime") enabledTime: option<millisecondDateTime>,
  @as("OptimizingTime") optimizingTime: option<millisecondDateTime>,
  @as("EnablingTime") enablingTime: option<millisecondDateTime>,
  @as("OwnerAlias") ownerAlias: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("StateTransitionReason") stateTransitionReason: option<string_>,
  @as("State") state: option<fastSnapshotRestoreStateCode>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type deleteQueuedReservedInstancesIdList = array<reservationId>
type deleteQueuedReservedInstancesError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<deleteQueuedReservedInstancesErrorCode>,
}
type deleteLaunchTemplateVersionsResponseSuccessItem = {
  @as("VersionNumber") versionNumber: option<long>,
  @as("LaunchTemplateName") launchTemplateName: option<string_>,
  @as("LaunchTemplateId") launchTemplateId: option<string_>,
}
type deleteFleetSuccessItem = {
  @as("FleetId") fleetId: option<fleetId>,
  @as("PreviousFleetState") previousFleetState: option<fleetStateCode>,
  @as("CurrentFleetState") currentFleetState: option<fleetStateCode>,
}
type deleteFleetError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<deleteFleetErrorCode>,
}
type customerGatewayIdStringList = array<customerGatewayId>
type creditSpecificationRequest = {@as("CpuCredits") cpuCredits: string_}
type creditSpecification = {@as("CpuCredits") cpuCredits: option<string_>}
type createVolumePermission = {
  @as("UserId") userId: option<string_>,
  @as("Group") group: option<permissionGroup>,
}
type createTransitGatewayVpcAttachmentRequestOptions = {
  @as("ApplianceModeSupport") applianceModeSupport: option<applianceModeSupportValue>,
  @as("Ipv6Support") ipv6Support: option<ipv6SupportValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
}
type createTransitGatewayMulticastDomainRequestOptions = {
  @as("AutoAcceptSharedAssociations")
  autoAcceptSharedAssociations: option<autoAcceptSharedAssociationsValue>,
  @as("StaticSourcesSupport") staticSourcesSupport: option<staticSourcesSupportValue>,
  @as("Igmpv2Support") igmpv2Support: option<igmpv2SupportValue>,
}
type createTransitGatewayConnectRequestOptions = {@as("Protocol") protocol: protocolValue}
type cpuOptionsRequest = {
  @as("ThreadsPerCore") threadsPerCore: option<integer_>,
  @as("CoreCount") coreCount: option<integer_>,
}
type cpuOptions = {
  @as("ThreadsPerCore") threadsPerCore: option<integer_>,
  @as("CoreCount") coreCount: option<integer_>,
}
type coreCountList = array<coreCount>
type conversionIdStringList = array<conversionTaskId>
type connectionNotificationIdsList = array<connectionNotificationId>
type connectionLogResponseOptions = {
  @as("CloudwatchLogStream") cloudwatchLogStream: option<string_>,
  @as("CloudwatchLogGroup") cloudwatchLogGroup: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
}
type connectionLogOptions = {
  @as("CloudwatchLogStream") cloudwatchLogStream: option<string_>,
  @as("CloudwatchLogGroup") cloudwatchLogGroup: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
}
type coipPoolIdSet = array<coipPoolId>
type coipAddressUsage = {
  @as("CoIp") coIp: option<string_>,
  @as("AwsService") awsService: option<string_>,
  @as("AwsAccountId") awsAccountId: option<string_>,
  @as("AllocationId") allocationId: option<string_>,
}
type clientVpnSecurityGroupIdSet = array<securityGroupId>
type clientVpnRouteStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientVpnRouteStatusCode>,
}
type clientVpnEndpointStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientVpnEndpointStatusCode>,
}
type clientVpnEndpointIdList = array<clientVpnEndpointId>
type clientVpnEndpointAttributeStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientVpnEndpointAttributeStatusCode>,
}
type clientVpnConnectionStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientVpnConnectionStatusCode>,
}
type clientVpnAuthorizationRuleStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientVpnAuthorizationRuleStatusCode>,
}
type clientData = {
  @as("UploadStart") uploadStart: option<dateTime>,
  @as("UploadSize") uploadSize: option<double>,
  @as("UploadEnd") uploadEnd: option<dateTime>,
  @as("Comment") comment: option<string_>,
}
type clientConnectOptions = {
  @as("LambdaFunctionArn") lambdaFunctionArn: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
}
type clientCertificateRevocationListStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<clientCertificateRevocationListStatusCode>,
}
type classicLoadBalancer = {@as("Name") name: option<string_>}
type classicLinkDnsSupport = {
  @as("VpcId") vpcId: option<string_>,
  @as("ClassicLinkDnsSupported") classicLinkDnsSupported: option<boolean_>,
}
type cidrBlock = {@as("CidrBlock") cidrBlock: option<string_>}
type cidrAuthorizationContext = {
  @as("Signature") signature: string_,
  @as("Message") message: string_,
}
type certificateAuthenticationRequest = {
  @as("ClientRootCertificateChainArn") clientRootCertificateChainArn: option<string_>,
}
type certificateAuthentication = {
  @as("ClientRootCertificateChain") clientRootCertificateChain: option<string_>,
}
type carrierGatewayIdSet = array<carrierGatewayId>
type capacityReservationTargetResponse = {
  @as("CapacityReservationResourceGroupArn") capacityReservationResourceGroupArn: option<string_>,
  @as("CapacityReservationId") capacityReservationId: option<string_>,
}
type capacityReservationTarget = {
  @as("CapacityReservationResourceGroupArn") capacityReservationResourceGroupArn: option<string_>,
  @as("CapacityReservationId") capacityReservationId: option<capacityReservationId>,
}
type capacityReservationOptionsRequest = {
  @as("UsageStrategy") usageStrategy: option<fleetCapacityReservationUsageStrategy>,
}
type capacityReservationOptions = {
  @as("UsageStrategy") usageStrategy: option<fleetCapacityReservationUsageStrategy>,
}
type capacityReservationIdSet = array<capacityReservationId>
type capacityReservationGroup = {
  @as("OwnerId") ownerId: option<string_>,
  @as("GroupArn") groupArn: option<string_>,
}
type cancelledSpotInstanceRequest = {
  @as("State") state: option<cancelSpotInstanceRequestState>,
  @as("SpotInstanceRequestId") spotInstanceRequestId: option<string_>,
}
type cancelSpotFleetRequestsSuccessItem = {
  @as("SpotFleetRequestId") spotFleetRequestId: option<string_>,
  @as("PreviousSpotFleetRequestState") previousSpotFleetRequestState: option<batchState>,
  @as("CurrentSpotFleetRequestState") currentSpotFleetRequestState: option<batchState>,
}
type cancelSpotFleetRequestsError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<cancelBatchErrorCode>,
}
type byoipCidr = {
  @as("State") state: option<byoipCidrState>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Description") description: option<string_>,
  @as("Cidr") cidr: option<string_>,
}
type bundleTaskError = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<string_>,
}
type bundleIdStringList = array<bundleId>
type bootModeTypeList = array<bootModeType>
type blobAttributeValue = {@as("Value") value: option<blob>}
type billingProductList = array<string_>
type availabilityZoneStringList = array<string_>
type availabilityZoneMessage = {@as("Message") message: option<string_>}
type attributeValue = {@as("Value") value: option<string_>}
type attributeBooleanValue = {@as("Value") value: option<boolean_>}
type athenaIntegration = {
  @as("PartitionEndDate") partitionEndDate: option<millisecondDateTime>,
  @as("PartitionStartDate") partitionStartDate: option<millisecondDateTime>,
  @as("PartitionLoadFrequency") partitionLoadFrequency: partitionLoadFrequency,
  @as("IntegrationResultS3DestinationArn") integrationResultS3DestinationArn: string_,
}
type associationStatus = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<associationStatusCode>,
}
type associationIdList = array<iamInstanceProfileAssociationId>
type associatedTargetNetwork = {
  @as("NetworkType") networkType: option<associatedNetworkType>,
  @as("NetworkId") networkId: option<string_>,
}
type associatedRole = {
  @as("EncryptionKmsKeyId") encryptionKmsKeyId: option<string_>,
  @as("CertificateS3ObjectKey") certificateS3ObjectKey: option<string_>,
  @as("CertificateS3BucketName") certificateS3BucketName: option<string_>,
  @as("AssociatedRoleArn") associatedRoleArn: option<resourceArn>,
}
type assignedPrivateIpAddress = {@as("PrivateIpAddress") privateIpAddress: option<string_>}
type arnList = array<resourceArn>
type architectureTypeList = array<architectureType>
type analysisRouteTableRoute = {
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("Origin") origin: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("NatGatewayId") natGatewayId: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("GatewayId") gatewayId: option<string_>,
  @as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: option<string_>,
  @as("DestinationPrefixListId") destinationPrefixListId: option<string_>,
  @as("DestinationCidr") destinationCidr: option<string_>,
}
type analysisLoadBalancerListener = {
  @as("InstancePort") instancePort: option<port>,
  @as("LoadBalancerPort") loadBalancerPort: option<port>,
}
type analysisComponent = {
  @as("Arn") arn: option<string_>,
  @as("Id") id: option<string_>,
}
type alternatePathHint = {
  @as("ComponentArn") componentArn: option<string_>,
  @as("ComponentId") componentId: option<string_>,
}
type allowedPrincipal = {
  @as("Principal") principal: option<string_>,
  @as("PrincipalType") principalType: option<principalType>,
}
type allocationIds = array<allocationId>
type allocationIdList = array<allocationId>
type addPrefixListEntry = {
  @as("Description") description: option<string_>,
  @as("Cidr") cidr: string_,
}
type activeInstance = {
  @as("InstanceHealth") instanceHealth: option<instanceHealthStatus>,
  @as("SpotInstanceRequestId") spotInstanceRequestId: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
}
type accountAttributeValue = {@as("AttributeValue") attributeValue: option<string_>}
type accountAttributeNameStringList = array<accountAttributeName>
type vpnStaticRouteList = array<vpnStaticRoute>
type vpcIpv6CidrBlockAssociation = {
  @as("Ipv6Pool") ipv6Pool: option<string_>,
  @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
  @as("Ipv6CidrBlockState") ipv6CidrBlockState: option<vpcCidrBlockState>,
  @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
  @as("AssociationId") associationId: option<string_>,
}
type vpcCidrBlockAssociation = {
  @as("CidrBlockState") cidrBlockState: option<vpcCidrBlockState>,
  @as("CidrBlock") cidrBlock: option<string_>,
  @as("AssociationId") associationId: option<string_>,
}
type vpcAttachmentList = array<vpcAttachment>
type volumeStatusEventsList = array<volumeStatusEvent>
type volumeStatusDetailsList = array<volumeStatusDetails>
type volumeStatusAttachmentStatusList = array<volumeStatusAttachmentStatus>
type volumeStatusActionsList = array<volumeStatusAction>
type volumeModificationList = array<volumeModification>
type volumeAttachmentList = array<volumeAttachment>
type vgwTelemetryList = array<vgwTelemetry>
type vcpuInfo = {
  @as("ValidThreadsPerCore") validThreadsPerCore: option<threadsPerCoreList>,
  @as("ValidCores") validCores: option<coreCountList>,
  @as("DefaultThreadsPerCore") defaultThreadsPerCore: option<threadsPerCore>,
  @as("DefaultCores") defaultCores: option<coreCount>,
  @as("DefaultVCpus") defaultVCpus: option<vcpuCount>,
}
type userIdGroupPairSet = array<userIdGroupPair>
type userIdGroupPairList = array<userIdGroupPair>
type unsuccessfulItem = {
  @as("ResourceId") resourceId: option<string_>,
  @as("Error") error: option<unsuccessfulItemError>,
}
type unsuccessfulInstanceCreditSpecificationItem = {
  @as("Error") error: option<unsuccessfulInstanceCreditSpecificationItemError>,
  @as("InstanceId") instanceId: option<string_>,
}
type transitGatewayRouteTablePropagationList = array<transitGatewayRouteTablePropagation>
type transitGatewayRouteTableAssociationList = array<transitGatewayRouteTableAssociation>
type transitGatewayRouteAttachmentList = array<transitGatewayRouteAttachment>
type transitGatewayRequestOptions = {
  @as("TransitGatewayCidrBlocks")
  transitGatewayCidrBlocks: option<transitGatewayCidrBlockStringList>,
  @as("MulticastSupport") multicastSupport: option<multicastSupportValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
  @as("VpnEcmpSupport") vpnEcmpSupport: option<vpnEcmpSupportValue>,
  @as("DefaultRouteTablePropagation")
  defaultRouteTablePropagation: option<defaultRouteTablePropagationValue>,
  @as("DefaultRouteTableAssociation")
  defaultRouteTableAssociation: option<defaultRouteTableAssociationValue>,
  @as("AutoAcceptSharedAttachments")
  autoAcceptSharedAttachments: option<autoAcceptSharedAttachmentsValue>,
  @as("AmazonSideAsn") amazonSideAsn: option<long>,
}
type transitGatewayPrefixListReference = {
  @as("TransitGatewayAttachment")
  transitGatewayAttachment: option<transitGatewayPrefixListAttachment>,
  @as("Blackhole") blackhole: option<boolean_>,
  @as("State") state: option<transitGatewayPrefixListReferenceState>,
  @as("PrefixListOwnerId") prefixListOwnerId: option<string_>,
  @as("PrefixListId") prefixListId: option<prefixListResourceId>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>,
}
type transitGatewayOptions = {
  @as("MulticastSupport") multicastSupport: option<multicastSupportValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
  @as("VpnEcmpSupport") vpnEcmpSupport: option<vpnEcmpSupportValue>,
  @as("PropagationDefaultRouteTableId") propagationDefaultRouteTableId: option<string_>,
  @as("DefaultRouteTablePropagation")
  defaultRouteTablePropagation: option<defaultRouteTablePropagationValue>,
  @as("AssociationDefaultRouteTableId") associationDefaultRouteTableId: option<string_>,
  @as("DefaultRouteTableAssociation")
  defaultRouteTableAssociation: option<defaultRouteTableAssociationValue>,
  @as("AutoAcceptSharedAttachments")
  autoAcceptSharedAttachments: option<autoAcceptSharedAttachmentsValue>,
  @as("TransitGatewayCidrBlocks") transitGatewayCidrBlocks: option<valueStringList>,
  @as("AmazonSideAsn") amazonSideAsn: option<long>,
}
type transitGatewayMulticastRegisteredGroupSources = {
  @as("GroupIpAddress") groupIpAddress: option<string_>,
  @as("RegisteredNetworkInterfaceIds") registeredNetworkInterfaceIds: option<valueStringList>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayMulticastRegisteredGroupMembers = {
  @as("GroupIpAddress") groupIpAddress: option<string_>,
  @as("RegisteredNetworkInterfaceIds") registeredNetworkInterfaceIds: option<valueStringList>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayMulticastGroupList = array<transitGatewayMulticastGroup>
type transitGatewayMulticastDomainAssociation = {
  @as("Subnet") subnet: option<subnetAssociation>,
  @as("ResourceOwnerId") resourceOwnerId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGatewayMulticastDeregisteredGroupSources = {
  @as("GroupIpAddress") groupIpAddress: option<string_>,
  @as("DeregisteredNetworkInterfaceIds") deregisteredNetworkInterfaceIds: option<valueStringList>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayMulticastDeregisteredGroupMembers = {
  @as("GroupIpAddress") groupIpAddress: option<string_>,
  @as("DeregisteredNetworkInterfaceIds") deregisteredNetworkInterfaceIds: option<valueStringList>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayAttachmentPropagationList = array<transitGatewayAttachmentPropagation>
type transitGatewayAttachmentBgpConfigurationList = array<transitGatewayAttachmentBgpConfiguration>
type trafficMirrorFilterRule = {
  @as("Description") description: option<string_>,
  @as("SourceCidrBlock") sourceCidrBlock: option<string_>,
  @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
  @as("SourcePortRange") sourcePortRange: option<trafficMirrorPortRange>,
  @as("DestinationPortRange") destinationPortRange: option<trafficMirrorPortRange>,
  @as("Protocol") protocol: option<integer_>,
  @as("RuleAction") ruleAction: option<trafficMirrorRuleAction>,
  @as("RuleNumber") ruleNumber: option<integer_>,
  @as("TrafficDirection") trafficDirection: option<trafficDirection>,
  @as("TrafficMirrorFilterId") trafficMirrorFilterId: option<string_>,
  @as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: option<string_>,
}
type terminateConnectionStatus = {
  @as("CurrentStatus") currentStatus: option<clientVpnConnectionStatus>,
  @as("PreviousStatus") previousStatus: option<clientVpnConnectionStatus>,
  @as("ConnectionId") connectionId: option<string_>,
}
type targetReservationValue = {
  @as("TargetConfiguration") targetConfiguration: option<targetConfiguration>,
  @as("ReservationValue") reservationValue: option<reservationValue>,
}
type targetNetwork = {
  @as("SecurityGroups") securityGroups: option<valueStringList>,
  @as("Status") status: option<associationStatus>,
  @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
  @as("TargetNetworkId") targetNetworkId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("AssociationId") associationId: option<string_>,
}
type targetGroups = array<targetGroup>
type targetConfigurationRequestSet = array<targetConfigurationRequest>
type tagList_ = array<tag>
type tagDescriptionList = array<tagDescription>
type successfulQueuedPurchaseDeletionSet = array<successfulQueuedPurchaseDeletion>
type successfulInstanceCreditSpecificationSet = array<successfulInstanceCreditSpecificationItem>
type subnetIpv6CidrBlockAssociation = {
  @as("Ipv6CidrBlockState") ipv6CidrBlockState: option<subnetCidrBlockState>,
  @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
  @as("AssociationId") associationId: option<subnetCidrAssociationId>,
}
type subnetAssociationList = array<subnetAssociation>
type storeImageTaskResultSet = array<storeImageTaskResult>
type storage = {@as("S3") s3: option<s3Storage>}
type spotPriceHistoryList = array<spotPrice>
type spotMaintenanceStrategies = {
  @as("CapacityRebalance") capacityRebalance: option<spotCapacityRebalance>,
}
type spotDatafeedSubscription = {
  @as("State") state: option<datafeedSubscriptionState>,
  @as("Prefix") prefix: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("Fault") fault: option<spotInstanceStateFault>,
  @as("Bucket") bucket: option<string_>,
}
type snapshotTaskDetail = {
  @as("UserBucket") userBucket: option<userBucketDetails>,
  @as("Url") url: option<string_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("Progress") progress: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Format") format: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("DiskImageSize") diskImageSize: option<double>,
  @as("Description") description: option<string_>,
}
type snapshotDiskContainer = {
  @as("UserBucket") userBucket: option<userBucket>,
  @as("Url") url: option<string_>,
  @as("Format") format: option<string_>,
  @as("Description") description: option<string_>,
}
type snapshotDetail = {
  @as("UserBucket") userBucket: option<userBucketDetails>,
  @as("Url") url: option<string_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("Progress") progress: option<string_>,
  @as("Format") format: option<string_>,
  @as("DiskImageSize") diskImageSize: option<double>,
  @as("DeviceName") deviceName: option<string_>,
  @as("Description") description: option<string_>,
}
type serviceTypeDetailSet = array<serviceTypeDetail>
type securityGroupReferences = array<securityGroupReference>
type scheduledInstancesIpv6AddressList = array<scheduledInstancesIpv6Address>
type scheduledInstancesBlockDeviceMapping = {
  @as("VirtualName") virtualName: option<string_>,
  @as("NoDevice") noDevice: option<string_>,
  @as("Ebs") ebs: option<scheduledInstancesEbs>,
  @as("DeviceName") deviceName: option<string_>,
}
type scheduledInstanceRecurrenceRequest = {
  @as("OccurrenceUnit") occurrenceUnit: option<string_>,
  @as("OccurrenceRelativeToEnd") occurrenceRelativeToEnd: option<boolean_>,
  @as("OccurrenceDays") occurrenceDays: option<occurrenceDayRequestSet>,
  @as("Interval") interval: option<integer_>,
  @as("Frequency") frequency: option<string_>,
}
type scheduledInstanceRecurrence = {
  @as("OccurrenceUnit") occurrenceUnit: option<string_>,
  @as("OccurrenceRelativeToEnd") occurrenceRelativeToEnd: option<boolean_>,
  @as("OccurrenceDaySet") occurrenceDaySet: option<occurrenceDaySet>,
  @as("Interval") interval: option<integer_>,
  @as("Frequency") frequency: option<string_>,
}
type s3ObjectTagList = array<s3ObjectTag>
type routeTableAssociation = {
  @as("AssociationState") associationState: option<routeTableAssociationState>,
  @as("GatewayId") gatewayId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("RouteTableId") routeTableId: option<string_>,
  @as("RouteTableAssociationId") routeTableAssociationId: option<string_>,
  @as("Main") main: option<boolean_>,
}
type routeList = array<route>
type reservedIntancesIds = array<reservedInstancesId>
type reservedInstancesModificationResult = {
  @as("TargetConfiguration") targetConfiguration: option<reservedInstancesConfiguration>,
  @as("ReservedInstancesId") reservedInstancesId: option<string_>,
}
type reservedInstancesConfigurationList = array<reservedInstancesConfiguration>
type reservedInstanceReservationValue = {
  @as("ReservedInstanceId") reservedInstanceId: option<string_>,
  @as("ReservationValue") reservationValue: option<reservationValue>,
}
type removePrefixListEntries = array<removePrefixListEntry>
type registerInstanceTagAttributeRequest = {
  @as("InstanceTagKeys") instanceTagKeys: option<instanceTagKeySet>,
  @as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: option<boolean_>,
}
type regionList = array<region>
type recurringChargesList = array<recurringCharge>
type purchaseRequestSet = array<purchaseRequest>
type purchase = {
  @as("UpfrontPrice") upfrontPrice: option<string_>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("InstanceFamily") instanceFamily: option<string_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
  @as("HostReservationId") hostReservationId: option<string_>,
  @as("HostIdSet") hostIdSet: option<responseHostIdSet>,
  @as("Duration") duration: option<integer_>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
}
type publicIpv4PoolRangeSet = array<publicIpv4PoolRange>
type propagatingVgwList = array<propagatingVgw>
type productCodeList = array<productCode>
type processorInfo = {
  @as("SustainedClockSpeedInGhz") sustainedClockSpeedInGhz: option<processorSustainedClockSpeed>,
  @as("SupportedArchitectures") supportedArchitectures: option<architectureTypeList>,
}
type privateIpAddressSpecificationList = array<privateIpAddressSpecification>
type privateIpAddressConfigSet = array<scheduledInstancesPrivateIpAddressConfig>
type privateDnsDetailsSet = array<privateDnsDetails>
type pricingDetailsList = array<pricingDetail>
type priceScheduleSpecificationList = array<priceScheduleSpecification>
type priceScheduleList = array<priceSchedule>
type prefixListIdList = array<prefixListId>
type prefixListEntrySet = array<prefixListEntry>
type prefixListAssociationSet = array<prefixListAssociation>
type prefixList = {
  @as("PrefixListName") prefixListName: option<string_>,
  @as("PrefixListId") prefixListId: option<string_>,
  @as("Cidrs") cidrs: option<valueStringList>,
}
type portRangeList = array<portRange>
type poolCidrBlocksSet = array<poolCidrBlock>
type placementGroupInfo = {
  @as("SupportedStrategies") supportedStrategies: option<placementGroupStrategyList>,
}
type phase2IntegrityAlgorithmsRequestList = array<phase2IntegrityAlgorithmsRequestListValue>
type phase2IntegrityAlgorithmsList = array<phase2IntegrityAlgorithmsListValue>
type phase2EncryptionAlgorithmsRequestList = array<phase2EncryptionAlgorithmsRequestListValue>
type phase2EncryptionAlgorithmsList = array<phase2EncryptionAlgorithmsListValue>
type phase2DHGroupNumbersRequestList = array<phase2DHGroupNumbersRequestListValue>
type phase2DHGroupNumbersList = array<phase2DHGroupNumbersListValue>
type phase1IntegrityAlgorithmsRequestList = array<phase1IntegrityAlgorithmsRequestListValue>
type phase1IntegrityAlgorithmsList = array<phase1IntegrityAlgorithmsListValue>
type phase1EncryptionAlgorithmsRequestList = array<phase1EncryptionAlgorithmsRequestListValue>
type phase1EncryptionAlgorithmsList = array<phase1EncryptionAlgorithmsListValue>
type phase1DHGroupNumbersRequestList = array<phase1DHGroupNumbersRequestListValue>
type phase1DHGroupNumbersList = array<phase1DHGroupNumbersListValue>
type onDemandOptionsRequest = {
  @as("MaxTotalPrice") maxTotalPrice: option<string_>,
  @as("MinTargetCapacity") minTargetCapacity: option<integer_>,
  @as("SingleAvailabilityZone") singleAvailabilityZone: option<boolean_>,
  @as("SingleInstanceType") singleInstanceType: option<boolean_>,
  @as("CapacityReservationOptions")
  capacityReservationOptions: option<capacityReservationOptionsRequest>,
  @as("AllocationStrategy") allocationStrategy: option<fleetOnDemandAllocationStrategy>,
}
type onDemandOptions = {
  @as("MaxTotalPrice") maxTotalPrice: option<string_>,
  @as("MinTargetCapacity") minTargetCapacity: option<integer_>,
  @as("SingleAvailabilityZone") singleAvailabilityZone: option<boolean_>,
  @as("SingleInstanceType") singleInstanceType: option<boolean_>,
  @as("CapacityReservationOptions") capacityReservationOptions: option<capacityReservationOptions>,
  @as("AllocationStrategy") allocationStrategy: option<fleetOnDemandAllocationStrategy>,
}
type newDhcpConfiguration = {
  @as("Values") values: option<valueStringList>,
  @as("Key") key: option<string_>,
}
type networkInterfacePrivateIpAddress = {
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("Primary") primary: option<boolean_>,
  @as("Association") association: option<networkInterfaceAssociation>,
}
type networkInterfacePermission = {
  @as("PermissionState") permissionState: option<networkInterfacePermissionState>,
  @as("Permission") permission: option<interfacePermissionType>,
  @as("AwsService") awsService: option<string_>,
  @as("AwsAccountId") awsAccountId: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("NetworkInterfacePermissionId") networkInterfacePermissionId: option<string_>,
}
type networkInterfaceIpv6AddressesList = array<networkInterfaceIpv6Address>
type networkCardInfoList = array<networkCardInfo>
type networkAclEntry = {
  @as("RuleNumber") ruleNumber: option<integer_>,
  @as("RuleAction") ruleAction: option<ruleAction>,
  @as("Protocol") protocol: option<string_>,
  @as("PortRange") portRange: option<portRange>,
  @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
  @as("IcmpTypeCode") icmpTypeCode: option<icmpTypeCode>,
  @as("Egress") egress: option<boolean_>,
  @as("CidrBlock") cidrBlock: option<string_>,
}
type networkAclAssociationList = array<networkAclAssociation>
type natGatewayAddressList = array<natGatewayAddress>
type movingAddressStatusSet = array<movingAddressStatus>
type modifyTransitGatewayOptions = {
  @as("PropagationDefaultRouteTableId")
  propagationDefaultRouteTableId: option<transitGatewayRouteTableId>,
  @as("DefaultRouteTablePropagation")
  defaultRouteTablePropagation: option<defaultRouteTablePropagationValue>,
  @as("AssociationDefaultRouteTableId")
  associationDefaultRouteTableId: option<transitGatewayRouteTableId>,
  @as("DefaultRouteTableAssociation")
  defaultRouteTableAssociation: option<defaultRouteTableAssociationValue>,
  @as("AutoAcceptSharedAttachments")
  autoAcceptSharedAttachments: option<autoAcceptSharedAttachmentsValue>,
  @as("DnsSupport") dnsSupport: option<dnsSupportValue>,
  @as("VpnEcmpSupport") vpnEcmpSupport: option<vpnEcmpSupportValue>,
  @as("RemoveTransitGatewayCidrBlocks")
  removeTransitGatewayCidrBlocks: option<transitGatewayCidrBlockStringList>,
  @as("AddTransitGatewayCidrBlocks")
  addTransitGatewayCidrBlocks: option<transitGatewayCidrBlockStringList>,
}
type localGatewayRouteList = array<localGatewayRoute>
type loadPermissionListRequest = array<loadPermissionRequest>
type loadPermissionList = array<loadPermission>
type licenseSpecificationListRequest = array<licenseConfigurationRequest>
type licenseList = array<licenseConfiguration>
type launchTemplateOverridesList = array<launchTemplateOverrides>
type launchTemplateLicenseSpecificationListRequest = array<
  launchTemplateLicenseConfigurationRequest,
>
type launchTemplateLicenseList = array<launchTemplateLicenseConfiguration>
type launchTemplateInstanceMarketOptionsRequest = {
  @as("SpotOptions") spotOptions: option<launchTemplateSpotMarketOptionsRequest>,
  @as("MarketType") marketType: option<marketType>,
}
type launchTemplateInstanceMarketOptions = {
  @as("SpotOptions") spotOptions: option<launchTemplateSpotMarketOptions>,
  @as("MarketType") marketType: option<marketType>,
}
type launchTemplateElasticInferenceAcceleratorResponseList = array<
  launchTemplateElasticInferenceAcceleratorResponse,
>
type launchTemplateElasticInferenceAcceleratorList = array<
  launchTemplateElasticInferenceAccelerator,
>
type launchTemplateCapacityReservationSpecificationResponse = {
  @as("CapacityReservationTarget")
  capacityReservationTarget: option<capacityReservationTargetResponse>,
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<capacityReservationPreference>,
}
type launchTemplateCapacityReservationSpecificationRequest = {
  @as("CapacityReservationTarget") capacityReservationTarget: option<capacityReservationTarget>,
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<capacityReservationPreference>,
}
type launchTemplateBlockDeviceMappingRequest = {
  @as("NoDevice") noDevice: option<string_>,
  @as("Ebs") ebs: option<launchTemplateEbsBlockDeviceRequest>,
  @as("VirtualName") virtualName: option<string_>,
  @as("DeviceName") deviceName: option<string_>,
}
type launchTemplateBlockDeviceMapping = {
  @as("NoDevice") noDevice: option<string_>,
  @as("Ebs") ebs: option<launchTemplateEbsBlockDevice>,
  @as("VirtualName") virtualName: option<string_>,
  @as("DeviceName") deviceName: option<string_>,
}
type launchPermissionList = array<launchPermission>
type ipv6RangeList = array<ipv6Range>
type ipv6CidrBlockSet = array<ipv6CidrBlock>
type ipv6CidrAssociationSet = array<ipv6CidrAssociation>
type ipRangeList = array<ipRange>
type internetGatewayAttachmentList = array<internetGatewayAttachment>
type instanceUsageSet = array<instanceUsage>
type instanceTypeOfferingsList = array<instanceTypeOffering>
type instanceTagNotificationAttribute = {
  @as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: option<boolean_>,
  @as("InstanceTagKeys") instanceTagKeys: option<instanceTagKeySet>,
}
type instanceStatusEventList = array<instanceStatusEvent>
type instanceStatusDetailsList = array<instanceStatusDetails>
type instanceStateChange = {
  @as("PreviousState") previousState: option<instanceState>,
  @as("InstanceId") instanceId: option<string_>,
  @as("CurrentState") currentState: option<instanceState>,
}
type instancePrivateIpAddress = {
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("Primary") primary: option<boolean_>,
  @as("Association") association: option<instanceNetworkInterfaceAssociation>,
}
type instanceMonitoring = {
  @as("Monitoring") monitoring: option<monitoring>,
  @as("InstanceId") instanceId: option<string_>,
}
type instanceMarketOptionsRequest = {
  @as("SpotOptions") spotOptions: option<spotMarketOptions>,
  @as("MarketType") marketType: option<marketType>,
}
type instanceIpv6AddressListRequest = array<instanceIpv6AddressRequest>
type instanceIpv6AddressList = array<instanceIpv6Address>
type instanceCreditSpecificationListRequest = array<instanceCreditSpecificationRequest>
type instanceCreditSpecificationList = array<instanceCreditSpecification>
type instanceCountList = array<instanceCount>
type instanceBlockDeviceMappingSpecification = {
  @as("VirtualName") virtualName: option<string_>,
  @as("NoDevice") noDevice: option<string_>,
  @as("Ebs") ebs: option<ebsInstanceBlockDeviceSpecification>,
  @as("DeviceName") deviceName: option<string_>,
}
type instanceBlockDeviceMapping = {
  @as("Ebs") ebs: option<ebsInstanceBlockDevice>,
  @as("DeviceName") deviceName: option<string_>,
}
type inferenceDeviceInfoList = array<inferenceDeviceInfo>
type importVolumeTaskDetails = {
  @as("Volume") volume: option<diskImageVolumeDescription>,
  @as("Image") image: option<diskImageDescription>,
  @as("Description") description: option<string_>,
  @as("BytesConverted") bytesConverted: option<long>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type importInstanceVolumeDetailItem = {
  @as("Volume") volume: option<diskImageVolumeDescription>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("Image") image: option<diskImageDescription>,
  @as("Description") description: option<string_>,
  @as("BytesConverted") bytesConverted: option<long>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type importInstanceLaunchSpecification = {
  @as("UserData") userData: option<userData>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("Placement") placement: option<placement>,
  @as("Monitoring") monitoring: option<boolean_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceInitiatedShutdownBehavior")
  instanceInitiatedShutdownBehavior: option<shutdownBehavior>,
  @as("GroupNames") groupNames: option<securityGroupStringList>,
  @as("GroupIds") groupIds: option<securityGroupIdStringList>,
  @as("Architecture") architecture: option<architectureValues>,
  @as("AdditionalInfo") additionalInfo: option<string_>,
}
type importImageLicenseSpecificationListResponse = array<importImageLicenseConfigurationResponse>
type importImageLicenseSpecificationListRequest = array<importImageLicenseConfigurationRequest>
type imageDiskContainer = {
  @as("UserBucket") userBucket: option<userBucket>,
  @as("Url") url: option<string_>,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("Format") format: option<string_>,
  @as("DeviceName") deviceName: option<string_>,
  @as("Description") description: option<string_>,
}
type idFormatList = array<idFormat>
type iamInstanceProfileAssociation = {
  @as("Timestamp") timestamp_: option<dateTime>,
  @as("State") state: option<iamInstanceProfileAssociationState>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfile>,
  @as("InstanceId") instanceId: option<string_>,
  @as("AssociationId") associationId: option<string_>,
}
type ikeversionsRequestList = array<ikeversionsRequestListValue>
type ikeversionsList = array<ikeversionsListValue>
type hostOfferingSet = array<hostOffering>
type hostInstanceList = array<hostInstance>
type historyRecordEntry = {
  @as("Timestamp") timestamp_: option<dateTime>,
  @as("EventType") eventType: option<fleetEventType>,
  @as("EventInformation") eventInformation: option<eventInformation>,
}
type historyRecord = {
  @as("Timestamp") timestamp_: option<dateTime>,
  @as("EventType") eventType: option<eventType>,
  @as("EventInformation") eventInformation: option<eventInformation>,
}
type groupIdentifierSet = array<securityGroupIdentifier>
type groupIdentifierList = array<groupIdentifier>
type gpuDeviceInfo = {
  @as("MemoryInfo") memoryInfo: option<gpuDeviceMemoryInfo>,
  @as("Count") count: option<gpuDeviceCount>,
  @as("Manufacturer") manufacturer: option<gpuDeviceManufacturerName>,
  @as("Name") name: option<gpuDeviceName>,
}
type fpgaDeviceInfo = {
  @as("MemoryInfo") memoryInfo: option<fpgaDeviceMemoryInfo>,
  @as("Count") count: option<fpgaDeviceCount>,
  @as("Manufacturer") manufacturer: option<fpgaDeviceManufacturerName>,
  @as("Name") name: option<fpgaDeviceName>,
}
type fleetSpotMaintenanceStrategiesRequest = {
  @as("CapacityRebalance") capacityRebalance: option<fleetSpotCapacityRebalanceRequest>,
}
type fleetSpotMaintenanceStrategies = {
  @as("CapacityRebalance") capacityRebalance: option<fleetSpotCapacityRebalance>,
}
type fleetLaunchTemplateOverridesRequest = {
  @as("Placement") placement: option<placement>,
  @as("Priority") priority: option<double>,
  @as("WeightedCapacity") weightedCapacity: option<double>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("MaxPrice") maxPrice: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type fleetLaunchTemplateOverrides = {
  @as("Placement") placement: option<placementResponse>,
  @as("Priority") priority: option<double>,
  @as("WeightedCapacity") weightedCapacity: option<double>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("MaxPrice") maxPrice: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type filter = {
  @as("Values") values: option<valueStringList>,
  @as("Name") name: option<string_>,
}
type failedQueuedPurchaseDeletion = {
  @as("ReservedInstancesId") reservedInstancesId: option<string_>,
  @as("Error") error: option<deleteQueuedReservedInstancesError>,
}
type errorSet = array<validationError>
type enableFastSnapshotRestoreSuccessSet = array<enableFastSnapshotRestoreSuccessItem>
type enableFastSnapshotRestoreStateErrorItem = {
  @as("Error") error: option<enableFastSnapshotRestoreStateError>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type elasticInferenceAccelerators = array<elasticInferenceAccelerator>
type elasticInferenceAcceleratorAssociationList = array<elasticInferenceAcceleratorAssociation>
type elasticGpuSpecifications = array<elasticGpuSpecification>
type elasticGpuSpecificationResponseList = array<elasticGpuSpecificationResponse>
type elasticGpuSpecificationList = array<elasticGpuSpecification>
type elasticGpuAssociationList = array<elasticGpuAssociation>
type ebsInfo = {
  @as("NvmeSupport") nvmeSupport: option<ebsNvmeSupport>,
  @as("EbsOptimizedInfo") ebsOptimizedInfo: option<ebsOptimizedInfo>,
  @as("EncryptionSupport") encryptionSupport: option<ebsEncryptionSupport>,
  @as("EbsOptimizedSupport") ebsOptimizedSupport: option<ebsOptimizedSupport>,
}
type dnsServersOptionsModifyStructure = {
  @as("Enabled") enabled: option<boolean_>,
  @as("CustomDnsServers") customDnsServers: option<valueStringList>,
}
type dnsEntrySet = array<dnsEntry>
type diskInfoList = array<diskInfo>
type diskImage = {
  @as("Volume") volume: option<volumeDetail>,
  @as("Image") image: option<diskImageDetail>,
  @as("Description") description: option<string_>,
}
type disableFastSnapshotRestoreSuccessSet = array<disableFastSnapshotRestoreSuccessItem>
type disableFastSnapshotRestoreStateErrorItem = {
  @as("Error") error: option<disableFastSnapshotRestoreStateError>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type dhcpConfigurationValueList = array<attributeValue>
type describeFastSnapshotRestoreSuccessSet = array<describeFastSnapshotRestoreSuccessItem>
type deregisterInstanceTagAttributeRequest = {
  @as("InstanceTagKeys") instanceTagKeys: option<instanceTagKeySet>,
  @as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: option<boolean_>,
}
type deleteLaunchTemplateVersionsResponseSuccessSet = array<
  deleteLaunchTemplateVersionsResponseSuccessItem,
>
type deleteLaunchTemplateVersionsResponseErrorItem = {
  @as("ResponseError") responseError: option<responseError>,
  @as("VersionNumber") versionNumber: option<long>,
  @as("LaunchTemplateName") launchTemplateName: option<string_>,
  @as("LaunchTemplateId") launchTemplateId: option<string_>,
}
type deleteFleetSuccessSet = array<deleteFleetSuccessItem>
type deleteFleetErrorItem = {
  @as("FleetId") fleetId: option<fleetId>,
  @as("Error") error: option<deleteFleetError>,
}
type createVolumePermissionList = array<createVolumePermission>
type connectionNotification = {
  @as("ConnectionNotificationState")
  connectionNotificationState: option<connectionNotificationState>,
  @as("ConnectionEvents") connectionEvents: option<valueStringList>,
  @as("ConnectionNotificationArn") connectionNotificationArn: option<string_>,
  @as("ConnectionNotificationType") connectionNotificationType: option<connectionNotificationType>,
  @as("VpcEndpointId") vpcEndpointId: option<string_>,
  @as("ServiceId") serviceId: option<string_>,
  @as("ConnectionNotificationId") connectionNotificationId: option<string_>,
}
type coipAddressUsageSet = array<coipAddressUsage>
type clientVpnRoute = {
  @as("Description") description: option<string_>,
  @as("Status") status: option<clientVpnRouteStatus>,
  @as("Origin") origin: option<string_>,
  @as("Type") type_: option<string_>,
  @as("TargetSubnet") targetSubnet: option<string_>,
  @as("DestinationCidr") destinationCidr: option<string_>,
  @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
}
type clientVpnConnection = {
  @as("PostureComplianceStatuses") postureComplianceStatuses: option<valueStringList>,
  @as("ConnectionEndTime") connectionEndTime: option<string_>,
  @as("Status") status: option<clientVpnConnectionStatus>,
  @as("CommonName") commonName: option<string_>,
  @as("ClientIp") clientIp: option<string_>,
  @as("EgressPackets") egressPackets: option<string_>,
  @as("IngressPackets") ingressPackets: option<string_>,
  @as("EgressBytes") egressBytes: option<string_>,
  @as("IngressBytes") ingressBytes: option<string_>,
  @as("ConnectionEstablishedTime") connectionEstablishedTime: option<string_>,
  @as("Username") username: option<string_>,
  @as("ConnectionId") connectionId: option<string_>,
  @as("Timestamp") timestamp_: option<string_>,
  @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
}
type clientVpnAuthenticationRequest = {
  @as("FederatedAuthentication") federatedAuthentication: option<federatedAuthenticationRequest>,
  @as("MutualAuthentication") mutualAuthentication: option<certificateAuthenticationRequest>,
  @as("ActiveDirectory") activeDirectory: option<directoryServiceAuthenticationRequest>,
  @as("Type") type_: option<clientVpnAuthenticationType>,
}
type clientVpnAuthentication = {
  @as("FederatedAuthentication") federatedAuthentication: option<federatedAuthentication>,
  @as("MutualAuthentication") mutualAuthentication: option<certificateAuthentication>,
  @as("ActiveDirectory") activeDirectory: option<directoryServiceAuthentication>,
  @as("Type") type_: option<clientVpnAuthenticationType>,
}
type clientConnectResponseOptions = {
  @as("Status") status: option<clientVpnEndpointAttributeStatus>,
  @as("LambdaFunctionArn") lambdaFunctionArn: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
}
type classicLoadBalancers = array<classicLoadBalancer>
type classicLinkDnsSupportList = array<classicLinkDnsSupport>
type cidrBlockSet = array<cidrBlock>
type capacityReservationSpecificationResponse = {
  @as("CapacityReservationTarget")
  capacityReservationTarget: option<capacityReservationTargetResponse>,
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<capacityReservationPreference>,
}
type capacityReservationSpecification = {
  @as("CapacityReservationTarget") capacityReservationTarget: option<capacityReservationTarget>,
  @as("CapacityReservationPreference")
  capacityReservationPreference: option<capacityReservationPreference>,
}
type capacityReservationGroupSet = array<capacityReservationGroup>
type cancelledSpotInstanceRequestList = array<cancelledSpotInstanceRequest>
type cancelSpotFleetRequestsSuccessSet = array<cancelSpotFleetRequestsSuccessItem>
type cancelSpotFleetRequestsErrorItem = {
  @as("SpotFleetRequestId") spotFleetRequestId: option<string_>,
  @as("Error") error: option<cancelSpotFleetRequestsError>,
}
type byoipCidrSet = array<byoipCidr>
type blockDeviceMapping = {
  @as("NoDevice") noDevice: option<string_>,
  @as("Ebs") ebs: option<ebsBlockDevice>,
  @as("VirtualName") virtualName: option<string_>,
  @as("DeviceName") deviceName: option<string_>,
}
type availableInstanceCapacityList = array<instanceCapacity>
type availabilityZoneMessageList = array<availabilityZoneMessage>
type authorizationRule = {
  @as("Status") status: option<clientVpnAuthorizationRuleStatus>,
  @as("DestinationCidr") destinationCidr: option<string_>,
  @as("AccessAll") accessAll: option<boolean_>,
  @as("GroupId") groupId: option<string_>,
  @as("Description") description: option<string_>,
  @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
}
type athenaIntegrationsSet = array<athenaIntegration>
type associatedTargetNetworkSet = array<associatedTargetNetwork>
type associatedRolesList = array<associatedRole>
type assignedPrivateIpAddressList = array<assignedPrivateIpAddress>
type analysisSecurityGroupRule = {
  @as("Protocol") protocol: option<string_>,
  @as("PrefixListId") prefixListId: option<string_>,
  @as("PortRange") portRange: option<portRange>,
  @as("SecurityGroupId") securityGroupId: option<string_>,
  @as("Direction") direction: option<string_>,
  @as("Cidr") cidr: option<string_>,
}
type analysisLoadBalancerTarget = {
  @as("Port") port: option<port>,
  @as("Instance") instance: option<analysisComponent>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Address") address: option<ipAddress>,
}
type analysisComponentList = array<analysisComponent>
type analysisAclRule = {
  @as("RuleNumber") ruleNumber: option<integer_>,
  @as("RuleAction") ruleAction: option<string_>,
  @as("Protocol") protocol: option<string_>,
  @as("PortRange") portRange: option<portRange>,
  @as("Egress") egress: option<boolean_>,
  @as("Cidr") cidr: option<string_>,
}
type alternatePathHintList = array<alternatePathHint>
type allowedPrincipalSet = array<allowedPrincipal>
type addressAttribute = {
  @as("PtrRecordUpdate") ptrRecordUpdate: option<ptrUpdateStatus>,
  @as("PtrRecord") ptrRecord: option<string_>,
  @as("AllocationId") allocationId: option<allocationId>,
  @as("PublicIp") publicIp: option<publicIpAddress>,
}
type addPrefixListEntries = array<addPrefixListEntry>
type activeInstanceSet = array<activeInstance>
type accountAttributeValueList = array<accountAttributeValue>
type vpnTunnelOptionsSpecification = {
  @as("StartupAction") startupAction: option<string_>,
  @as("IKEVersions") ikeversions: option<ikeversionsRequestList>,
  @as("Phase2DHGroupNumbers") phase2DHGroupNumbers: option<phase2DHGroupNumbersRequestList>,
  @as("Phase1DHGroupNumbers") phase1DHGroupNumbers: option<phase1DHGroupNumbersRequestList>,
  @as("Phase2IntegrityAlgorithms")
  phase2IntegrityAlgorithms: option<phase2IntegrityAlgorithmsRequestList>,
  @as("Phase1IntegrityAlgorithms")
  phase1IntegrityAlgorithms: option<phase1IntegrityAlgorithmsRequestList>,
  @as("Phase2EncryptionAlgorithms")
  phase2EncryptionAlgorithms: option<phase2EncryptionAlgorithmsRequestList>,
  @as("Phase1EncryptionAlgorithms")
  phase1EncryptionAlgorithms: option<phase1EncryptionAlgorithmsRequestList>,
  @as("DPDTimeoutAction") dpdtimeoutAction: option<string_>,
  @as("DPDTimeoutSeconds") dpdtimeoutSeconds: option<integer_>,
  @as("ReplayWindowSize") replayWindowSize: option<integer_>,
  @as("RekeyFuzzPercentage") rekeyFuzzPercentage: option<integer_>,
  @as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: option<integer_>,
  @as("Phase2LifetimeSeconds") phase2LifetimeSeconds: option<integer_>,
  @as("Phase1LifetimeSeconds") phase1LifetimeSeconds: option<integer_>,
  @as("PreSharedKey") preSharedKey: option<string_>,
  @as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: option<string_>,
  @as("TunnelInsideCidr") tunnelInsideCidr: option<string_>,
}
type vpnGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("AmazonSideAsn") amazonSideAsn: option<long>,
  @as("VpnGatewayId") vpnGatewayId: option<string_>,
  @as("VpcAttachments") vpcAttachments: option<vpcAttachmentList>,
  @as("Type") type_: option<gatewayType>,
  @as("State") state: option<vpnState>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type vpcPeeringConnectionVpcInfo = {
  @as("Region") region: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("PeeringOptions") peeringOptions: option<vpcPeeringConnectionOptionsDescription>,
  @as("OwnerId") ownerId: option<string_>,
  @as("CidrBlockSet") cidrBlockSet: option<cidrBlockSet>,
  @as("Ipv6CidrBlockSet") ipv6CidrBlockSet: option<ipv6CidrBlockSet>,
  @as("CidrBlock") cidrBlock: option<string_>,
}
type vpcIpv6CidrBlockAssociationSet = array<vpcIpv6CidrBlockAssociation>
type vpcEndpointConnection = {
  @as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: option<valueStringList>,
  @as("NetworkLoadBalancerArns") networkLoadBalancerArns: option<valueStringList>,
  @as("DnsEntries") dnsEntries: option<dnsEntrySet>,
  @as("CreationTimestamp") creationTimestamp: option<millisecondDateTime>,
  @as("VpcEndpointState") vpcEndpointState: option<state>,
  @as("VpcEndpointOwner") vpcEndpointOwner: option<string_>,
  @as("VpcEndpointId") vpcEndpointId: option<string_>,
  @as("ServiceId") serviceId: option<string_>,
}
type vpcEndpoint = {
  @as("LastError") lastError: option<lastError>,
  @as("OwnerId") ownerId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("CreationTimestamp") creationTimestamp: option<millisecondDateTime>,
  @as("DnsEntries") dnsEntries: option<dnsEntrySet>,
  @as("NetworkInterfaceIds") networkInterfaceIds: option<valueStringList>,
  @as("RequesterManaged") requesterManaged: option<boolean_>,
  @as("PrivateDnsEnabled") privateDnsEnabled: option<boolean_>,
  @as("Groups") groups: option<groupIdentifierSet>,
  @as("SubnetIds") subnetIds: option<valueStringList>,
  @as("RouteTableIds") routeTableIds: option<valueStringList>,
  @as("PolicyDocument") policyDocument: option<string_>,
  @as("State") state: option<state>,
  @as("ServiceName") serviceName: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("VpcEndpointType") vpcEndpointType: option<vpcEndpointType>,
  @as("VpcEndpointId") vpcEndpointId: option<string_>,
}
type vpcClassicLink = {
  @as("VpcId") vpcId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("ClassicLinkEnabled") classicLinkEnabled: option<boolean_>,
}
type vpcCidrBlockAssociationSet = array<vpcCidrBlockAssociation>
type volumeStatusInfo = {
  @as("Status") status: option<volumeStatusInfoStatus>,
  @as("Details") details: option<volumeStatusDetailsList>,
}
type volume = {
  @as("Throughput") throughput: option<integer_>,
  @as("MultiAttachEnabled") multiAttachEnabled: option<boolean_>,
  @as("FastRestored") fastRestored: option<boolean_>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("Tags") tags: option<tagList_>,
  @as("Iops") iops: option<integer_>,
  @as("VolumeId") volumeId: option<string_>,
  @as("State") state: option<volumeState>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("Size") size: option<integer_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Attachments") attachments: option<volumeAttachmentList>,
}
type validationWarning = {@as("Errors") errors: option<errorSet>}
type unsuccessfulItemSet = array<unsuccessfulItem>
type unsuccessfulItemList = array<unsuccessfulItem>
type unsuccessfulInstanceCreditSpecificationSet = array<unsuccessfulInstanceCreditSpecificationItem>
type tunnelOption = {
  @as("StartupAction") startupAction: option<string_>,
  @as("IkeVersions") ikeVersions: option<ikeversionsList>,
  @as("Phase2DHGroupNumbers") phase2DHGroupNumbers: option<phase2DHGroupNumbersList>,
  @as("Phase1DHGroupNumbers") phase1DHGroupNumbers: option<phase1DHGroupNumbersList>,
  @as("Phase2IntegrityAlgorithms") phase2IntegrityAlgorithms: option<phase2IntegrityAlgorithmsList>,
  @as("Phase1IntegrityAlgorithms") phase1IntegrityAlgorithms: option<phase1IntegrityAlgorithmsList>,
  @as("Phase2EncryptionAlgorithms")
  phase2EncryptionAlgorithms: option<phase2EncryptionAlgorithmsList>,
  @as("Phase1EncryptionAlgorithms")
  phase1EncryptionAlgorithms: option<phase1EncryptionAlgorithmsList>,
  @as("DpdTimeoutAction") dpdTimeoutAction: option<string_>,
  @as("DpdTimeoutSeconds") dpdTimeoutSeconds: option<integer_>,
  @as("ReplayWindowSize") replayWindowSize: option<integer_>,
  @as("RekeyFuzzPercentage") rekeyFuzzPercentage: option<integer_>,
  @as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: option<integer_>,
  @as("Phase2LifetimeSeconds") phase2LifetimeSeconds: option<integer_>,
  @as("Phase1LifetimeSeconds") phase1LifetimeSeconds: option<integer_>,
  @as("PreSharedKey") preSharedKey: option<string_>,
  @as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: option<string_>,
  @as("TunnelInsideCidr") tunnelInsideCidr: option<string_>,
  @as("OutsideIpAddress") outsideIpAddress: option<string_>,
}
type transitGatewayVpcAttachment = {
  @as("Tags") tags: option<tagList_>,
  @as("Options") options: option<transitGatewayVpcAttachmentOptions>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("SubnetIds") subnetIds: option<valueStringList>,
  @as("State") state: option<transitGatewayAttachmentState>,
  @as("VpcOwnerId") vpcOwnerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGatewayRouteTable = {
  @as("Tags") tags: option<tagList_>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("DefaultPropagationRouteTable") defaultPropagationRouteTable: option<boolean_>,
  @as("DefaultAssociationRouteTable") defaultAssociationRouteTable: option<boolean_>,
  @as("State") state: option<transitGatewayRouteTableState>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<string_>,
}
type transitGatewayRoute = {
  @as("State") state: option<transitGatewayRouteState>,
  @as("Type") type_: option<transitGatewayRouteType>,
  @as("TransitGatewayAttachments")
  transitGatewayAttachments: option<transitGatewayRouteAttachmentList>,
  @as("PrefixListId") prefixListId: option<prefixListResourceId>,
  @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
}
type transitGatewayPrefixListReferenceSet = array<transitGatewayPrefixListReference>
type transitGatewayPeeringAttachment = {
  @as("Tags") tags: option<tagList_>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("State") state: option<transitGatewayAttachmentState>,
  @as("Status") status: option<peeringAttachmentStatus>,
  @as("AccepterTgwInfo") accepterTgwInfo: option<peeringTgwInfo>,
  @as("RequesterTgwInfo") requesterTgwInfo: option<peeringTgwInfo>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGatewayMulticastDomainAssociations = {
  @as("Subnets") subnets: option<subnetAssociationList>,
  @as("ResourceOwnerId") resourceOwnerId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayMulticastDomainAssociationList = array<transitGatewayMulticastDomainAssociation>
type transitGatewayMulticastDomain = {
  @as("Tags") tags: option<tagList_>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("State") state: option<transitGatewayMulticastDomainState>,
  @as("Options") options: option<transitGatewayMulticastDomainOptions>,
  @as("OwnerId") ownerId: option<string_>,
  @as("TransitGatewayMulticastDomainArn") transitGatewayMulticastDomainArn: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<string_>,
}
type transitGatewayConnectPeerConfiguration = {
  @as("BgpConfigurations") bgpConfigurations: option<transitGatewayAttachmentBgpConfigurationList>,
  @as("Protocol") protocol: option<protocolValue>,
  @as("InsideCidrBlocks") insideCidrBlocks: option<insideCidrBlocksStringList>,
  @as("PeerAddress") peerAddress: option<string_>,
  @as("TransitGatewayAddress") transitGatewayAddress: option<string_>,
}
type transitGatewayConnect = {
  @as("Tags") tags: option<tagList_>,
  @as("Options") options: option<transitGatewayConnectOptions>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("State") state: option<transitGatewayAttachmentState>,
  @as("TransitGatewayId") transitGatewayId: option<transitGatewayId>,
  @as("TransportTransitGatewayAttachmentId")
  transportTransitGatewayAttachmentId: option<transitGatewayAttachmentId>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
}
type transitGatewayAttachment = {
  @as("Tags") tags: option<tagList_>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("Association") association: option<transitGatewayAttachmentAssociation>,
  @as("State") state: option<transitGatewayAttachmentState>,
  @as("ResourceId") resourceId: option<string_>,
  @as("ResourceType") resourceType: option<transitGatewayAttachmentResourceType>,
  @as("ResourceOwnerId") resourceOwnerId: option<string_>,
  @as("TransitGatewayOwnerId") transitGatewayOwnerId: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<string_>,
}
type transitGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("Options") options: option<transitGatewayOptions>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("Description") description: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("State") state: option<transitGatewayState>,
  @as("TransitGatewayArn") transitGatewayArn: option<string_>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
}
type trafficMirrorTarget = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("Description") description: option<string_>,
  @as("Type") type_: option<trafficMirrorTargetType>,
  @as("NetworkLoadBalancerArn") networkLoadBalancerArn: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("TrafficMirrorTargetId") trafficMirrorTargetId: option<string_>,
}
type trafficMirrorSession = {
  @as("Tags") tags: option<tagList_>,
  @as("Description") description: option<string_>,
  @as("VirtualNetworkId") virtualNetworkId: option<integer_>,
  @as("SessionNumber") sessionNumber: option<integer_>,
  @as("PacketLength") packetLength: option<integer_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("TrafficMirrorFilterId") trafficMirrorFilterId: option<string_>,
  @as("TrafficMirrorTargetId") trafficMirrorTargetId: option<string_>,
  @as("TrafficMirrorSessionId") trafficMirrorSessionId: option<string_>,
}
type trafficMirrorFilterRuleList = array<trafficMirrorFilterRule>
type terminateConnectionStatusSet = array<terminateConnectionStatus>
type targetReservationValueSet = array<targetReservationValue>
type targetNetworkSet = array<targetNetwork>
type targetGroupsConfig = {@as("TargetGroups") targetGroups: option<targetGroups>}
type tagSpecification = {
  @as("Tags") tags: option<tagList_>,
  @as("ResourceType") resourceType: option<resourceType>,
}
type subnetIpv6CidrBlockAssociationSet = array<subnetIpv6CidrBlockAssociation>
type staleIpPermission = {
  @as("UserIdGroupPairs") userIdGroupPairs: option<userIdGroupPairSet>,
  @as("ToPort") toPort: option<integer_>,
  @as("PrefixListIds") prefixListIds: option<prefixListIdSet>,
  @as("IpRanges") ipRanges: option<ipRanges>,
  @as("IpProtocol") ipProtocol: option<string_>,
  @as("FromPort") fromPort: option<integer_>,
}
type spotOptionsRequest = {
  @as("MaxTotalPrice") maxTotalPrice: option<string_>,
  @as("MinTargetCapacity") minTargetCapacity: option<integer_>,
  @as("SingleAvailabilityZone") singleAvailabilityZone: option<boolean_>,
  @as("SingleInstanceType") singleInstanceType: option<boolean_>,
  @as("InstancePoolsToUseCount") instancePoolsToUseCount: option<integer_>,
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<spotInstanceInterruptionBehavior>,
  @as("MaintenanceStrategies") maintenanceStrategies: option<fleetSpotMaintenanceStrategiesRequest>,
  @as("AllocationStrategy") allocationStrategy: option<spotAllocationStrategy>,
}
type spotOptions = {
  @as("MaxTotalPrice") maxTotalPrice: option<string_>,
  @as("MinTargetCapacity") minTargetCapacity: option<integer_>,
  @as("SingleAvailabilityZone") singleAvailabilityZone: option<boolean_>,
  @as("SingleInstanceType") singleInstanceType: option<boolean_>,
  @as("InstancePoolsToUseCount") instancePoolsToUseCount: option<integer_>,
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<spotInstanceInterruptionBehavior>,
  @as("MaintenanceStrategies") maintenanceStrategies: option<fleetSpotMaintenanceStrategies>,
  @as("AllocationStrategy") allocationStrategy: option<spotAllocationStrategy>,
}
type spotFleetTagSpecification = {
  @as("Tags") tags: option<tagList_>,
  @as("ResourceType") resourceType: option<resourceType>,
}
type snapshotInfo = {
  @as("OutpostArn") outpostArn: option<string_>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("Progress") progress: option<string_>,
  @as("StartTime") startTime: option<millisecondDateTime>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("State") state: option<snapshotState>,
  @as("VolumeId") volumeId: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("Tags") tags: option<tagList_>,
  @as("Description") description: option<string_>,
}
type snapshotDetailList = array<snapshotDetail>
type snapshot = {
  @as("Tags") tags: option<tagList_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("OwnerAlias") ownerAlias: option<string_>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("VolumeId") volumeId: option<string_>,
  @as("StateMessage") stateMessage: option<string_>,
  @as("State") state: option<snapshotState>,
  @as("StartTime") startTime: option<dateTime>,
  @as("SnapshotId") snapshotId: option<string_>,
  @as("Progress") progress: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("DataEncryptionKeyId") dataEncryptionKeyId: option<string_>,
}
type serviceDetail = {
  @as("PrivateDnsNameVerificationState") privateDnsNameVerificationState: option<dnsNameState>,
  @as("Tags") tags: option<tagList_>,
  @as("ManagesVpcEndpoints") managesVpcEndpoints: option<boolean_>,
  @as("AcceptanceRequired") acceptanceRequired: option<boolean_>,
  @as("VpcEndpointPolicySupported") vpcEndpointPolicySupported: option<boolean_>,
  @as("PrivateDnsNames") privateDnsNames: option<privateDnsDetailsSet>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("BaseEndpointDnsNames") baseEndpointDnsNames: option<valueStringList>,
  @as("Owner") owner: option<string_>,
  @as("AvailabilityZones") availabilityZones: option<valueStringList>,
  @as("ServiceType") serviceType: option<serviceTypeDetailSet>,
  @as("ServiceId") serviceId: option<string_>,
  @as("ServiceName") serviceName: option<string_>,
}
type serviceConfiguration = {
  @as("Tags") tags: option<tagList_>,
  @as("PrivateDnsNameConfiguration")
  privateDnsNameConfiguration: option<privateDnsNameConfiguration>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("BaseEndpointDnsNames") baseEndpointDnsNames: option<valueStringList>,
  @as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: option<valueStringList>,
  @as("NetworkLoadBalancerArns") networkLoadBalancerArns: option<valueStringList>,
  @as("ManagesVpcEndpoints") managesVpcEndpoints: option<boolean_>,
  @as("AcceptanceRequired") acceptanceRequired: option<boolean_>,
  @as("AvailabilityZones") availabilityZones: option<valueStringList>,
  @as("ServiceState") serviceState: option<serviceState>,
  @as("ServiceName") serviceName: option<string_>,
  @as("ServiceId") serviceId: option<string_>,
  @as("ServiceType") serviceType: option<serviceTypeDetailSet>,
}
type scheduledInstancesNetworkInterface = {
  @as("SubnetId") subnetId: option<subnetId>,
  @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
  @as("PrivateIpAddressConfigs") privateIpAddressConfigs: option<privateIpAddressConfigSet>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("Ipv6Addresses") ipv6Addresses: option<scheduledInstancesIpv6AddressList>,
  @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
  @as("Groups") groups: option<scheduledInstancesSecurityGroupIdSet>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("Description") description: option<string_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>,
}
type scheduledInstancesBlockDeviceMappingSet = array<scheduledInstancesBlockDeviceMapping>
type scheduledInstanceAvailability = {
  @as("TotalScheduledInstanceHours") totalScheduledInstanceHours: option<integer_>,
  @as("SlotDurationInHours") slotDurationInHours: option<integer_>,
  @as("Recurrence") recurrence: option<scheduledInstanceRecurrence>,
  @as("PurchaseToken") purchaseToken: option<string_>,
  @as("Platform") platform: option<string_>,
  @as("NetworkPlatform") networkPlatform: option<string_>,
  @as("MinTermDurationInDays") minTermDurationInDays: option<integer_>,
  @as("MaxTermDurationInDays") maxTermDurationInDays: option<integer_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
  @as("FirstSlotStartTime") firstSlotStartTime: option<dateTime>,
  @as("AvailableInstanceCount") availableInstanceCount: option<integer_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type scheduledInstance = {
  @as("TotalScheduledInstanceHours") totalScheduledInstanceHours: option<integer_>,
  @as("TermStartDate") termStartDate: option<dateTime>,
  @as("TermEndDate") termEndDate: option<dateTime>,
  @as("SlotDurationInHours") slotDurationInHours: option<integer_>,
  @as("ScheduledInstanceId") scheduledInstanceId: option<string_>,
  @as("Recurrence") recurrence: option<scheduledInstanceRecurrence>,
  @as("PreviousSlotEndTime") previousSlotEndTime: option<dateTime>,
  @as("Platform") platform: option<string_>,
  @as("NextSlotStartTime") nextSlotStartTime: option<dateTime>,
  @as("NetworkPlatform") networkPlatform: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("InstanceCount") instanceCount: option<integer_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
  @as("CreateDate") createDate: option<dateTime>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type routeTableAssociationList = array<routeTableAssociation>
type reservedInstancesOffering = {
  @as("Scope") scope: option<scope>,
  @as("RecurringCharges") recurringCharges: option<recurringChargesList>,
  @as("PricingDetails") pricingDetails: option<pricingDetailsList>,
  @as("OfferingType") offeringType: option<offeringTypeValues>,
  @as("OfferingClass") offeringClass: option<offeringClassType>,
  @as("Marketplace") marketplace: option<boolean_>,
  @as("InstanceTenancy") instanceTenancy: option<tenancy>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  @as("UsagePrice") usagePrice: option<float_>,
  @as("ReservedInstancesOfferingId") reservedInstancesOfferingId: option<string_>,
  @as("ProductDescription") productDescription: option<riproductDescription>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("FixedPrice") fixedPrice: option<float_>,
  @as("Duration") duration: option<long>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type reservedInstancesModificationResultList = array<reservedInstancesModificationResult>
type reservedInstancesListing = {
  @as("UpdateDate") updateDate: option<dateTime>,
  @as("Tags") tags: option<tagList_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<listingStatus>,
  @as("ReservedInstancesListingId") reservedInstancesListingId: option<string_>,
  @as("ReservedInstancesId") reservedInstancesId: option<string_>,
  @as("PriceSchedules") priceSchedules: option<priceScheduleList>,
  @as("InstanceCounts") instanceCounts: option<instanceCountList>,
  @as("CreateDate") createDate: option<dateTime>,
  @as("ClientToken") clientToken: option<string_>,
}
type reservedInstances = {
  @as("Tags") tags: option<tagList_>,
  @as("Scope") scope: option<scope>,
  @as("RecurringCharges") recurringCharges: option<recurringChargesList>,
  @as("OfferingType") offeringType: option<offeringTypeValues>,
  @as("OfferingClass") offeringClass: option<offeringClassType>,
  @as("InstanceTenancy") instanceTenancy: option<tenancy>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  @as("UsagePrice") usagePrice: option<float_>,
  @as("State") state: option<reservedInstanceState>,
  @as("Start") start: option<dateTime>,
  @as("ReservedInstancesId") reservedInstancesId: option<string_>,
  @as("ProductDescription") productDescription: option<riproductDescription>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceCount") instanceCount: option<integer_>,
  @as("FixedPrice") fixedPrice: option<float_>,
  @as("End") end: option<dateTime>,
  @as("Duration") duration: option<long>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type reservedInstanceReservationValueSet = array<reservedInstanceReservationValue>
type replaceRootVolumeTask = {
  @as("Tags") tags: option<tagList_>,
  @as("CompleteTime") completeTime: option<string_>,
  @as("StartTime") startTime: option<string_>,
  @as("TaskState") taskState: option<replaceRootVolumeTaskState>,
  @as("InstanceId") instanceId: option<string_>,
  @as("ReplaceRootVolumeTaskId") replaceRootVolumeTaskId: option<replaceRootVolumeTaskId>,
}
type purchaseSet = array<purchase>
type publicIpv4Pool = {
  @as("Tags") tags: option<tagList_>,
  @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
  @as("TotalAvailableAddressCount") totalAvailableAddressCount: option<integer_>,
  @as("TotalAddressCount") totalAddressCount: option<integer_>,
  @as("PoolAddressRanges") poolAddressRanges: option<publicIpv4PoolRangeSet>,
  @as("Description") description: option<string_>,
  @as("PoolId") poolId: option<string_>,
}
type principalIdFormat = {
  @as("Statuses") statuses: option<idFormatList>,
  @as("Arn") arn: option<string_>,
}
type prefixListSet = array<prefixList>
type placementGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("GroupId") groupId: option<string_>,
  @as("PartitionCount") partitionCount: option<integer_>,
  @as("Strategy") strategy: option<placementStrategy>,
  @as("State") state: option<placementGroupState>,
  @as("GroupName") groupName: option<string_>,
}
type newDhcpConfigurationList = array<newDhcpConfiguration>
type networkInterfacePrivateIpAddressList = array<networkInterfacePrivateIpAddress>
type networkInterfacePermissionList = array<networkInterfacePermission>
type networkInsightsPath = {
  @as("Tags") tags: option<tagList_>,
  @as("DestinationPort") destinationPort: option<integer_>,
  @as("Protocol") protocol: option<protocol>,
  @as("DestinationIp") destinationIp: option<ipAddress>,
  @as("SourceIp") sourceIp: option<ipAddress>,
  @as("Destination") destination: option<string_>,
  @as("Source") source: option<string_>,
  @as("CreatedDate") createdDate: option<millisecondDateTime>,
  @as("NetworkInsightsPathArn") networkInsightsPathArn: option<resourceArn>,
  @as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>,
}
type networkInfo = {
  @as("EfaInfo") efaInfo: option<efaInfo>,
  @as("EfaSupported") efaSupported: option<efaSupportedFlag>,
  @as("EnaSupport") enaSupport: option<enaSupport>,
  @as("Ipv6Supported") ipv6Supported: option<ipv6Flag>,
  @as("Ipv6AddressesPerInterface") ipv6AddressesPerInterface: option<maxIpv6AddrPerInterface>,
  @as("Ipv4AddressesPerInterface") ipv4AddressesPerInterface: option<maxIpv4AddrPerInterface>,
  @as("NetworkCards") networkCards: option<networkCardInfoList>,
  @as("DefaultNetworkCardIndex") defaultNetworkCardIndex: option<defaultNetworkCardIndex>,
  @as("MaximumNetworkCards") maximumNetworkCards: option<maximumNetworkCards>,
  @as("MaximumNetworkInterfaces") maximumNetworkInterfaces: option<maxNetworkInterfaces>,
  @as("NetworkPerformance") networkPerformance: option<networkPerformance>,
}
type networkAclEntryList = array<networkAclEntry>
type natGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("VpcId") vpcId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("State") state: option<natGatewayState>,
  @as("ProvisionedBandwidth") provisionedBandwidth: option<provisionedBandwidth>,
  @as("NatGatewayId") natGatewayId: option<string_>,
  @as("NatGatewayAddresses") natGatewayAddresses: option<natGatewayAddressList>,
  @as("FailureMessage") failureMessage: option<string_>,
  @as("FailureCode") failureCode: option<string_>,
  @as("DeleteTime") deleteTime: option<dateTime>,
  @as("CreateTime") createTime: option<dateTime>,
}
type modifyVpnTunnelOptionsSpecification = {
  @as("StartupAction") startupAction: option<string_>,
  @as("IKEVersions") ikeversions: option<ikeversionsRequestList>,
  @as("Phase2DHGroupNumbers") phase2DHGroupNumbers: option<phase2DHGroupNumbersRequestList>,
  @as("Phase1DHGroupNumbers") phase1DHGroupNumbers: option<phase1DHGroupNumbersRequestList>,
  @as("Phase2IntegrityAlgorithms")
  phase2IntegrityAlgorithms: option<phase2IntegrityAlgorithmsRequestList>,
  @as("Phase1IntegrityAlgorithms")
  phase1IntegrityAlgorithms: option<phase1IntegrityAlgorithmsRequestList>,
  @as("Phase2EncryptionAlgorithms")
  phase2EncryptionAlgorithms: option<phase2EncryptionAlgorithmsRequestList>,
  @as("Phase1EncryptionAlgorithms")
  phase1EncryptionAlgorithms: option<phase1EncryptionAlgorithmsRequestList>,
  @as("DPDTimeoutAction") dpdtimeoutAction: option<string_>,
  @as("DPDTimeoutSeconds") dpdtimeoutSeconds: option<integer_>,
  @as("ReplayWindowSize") replayWindowSize: option<integer_>,
  @as("RekeyFuzzPercentage") rekeyFuzzPercentage: option<integer_>,
  @as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: option<integer_>,
  @as("Phase2LifetimeSeconds") phase2LifetimeSeconds: option<integer_>,
  @as("Phase1LifetimeSeconds") phase1LifetimeSeconds: option<integer_>,
  @as("PreSharedKey") preSharedKey: option<string_>,
  @as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: option<string_>,
  @as("TunnelInsideCidr") tunnelInsideCidr: option<string_>,
}
type managedPrefixList = {
  @as("OwnerId") ownerId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("Version") version: option<long>,
  @as("MaxEntries") maxEntries: option<integer_>,
  @as("PrefixListName") prefixListName: option<string_>,
  @as("PrefixListArn") prefixListArn: option<resourceArn>,
  @as("StateMessage") stateMessage: option<string_>,
  @as("State") state: option<prefixListState>,
  @as("AddressFamily") addressFamily: option<string_>,
  @as("PrefixListId") prefixListId: option<prefixListResourceId>,
}
type localGatewayVirtualInterfaceGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("LocalGatewayId") localGatewayId: option<string_>,
  @as("LocalGatewayVirtualInterfaceIds")
  localGatewayVirtualInterfaceIds: option<localGatewayVirtualInterfaceIdSet>,
  @as("LocalGatewayVirtualInterfaceGroupId")
  localGatewayVirtualInterfaceGroupId: option<localGatewayVirtualInterfaceGroupId>,
}
type localGatewayVirtualInterface = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("PeerBgpAsn") peerBgpAsn: option<integer_>,
  @as("LocalBgpAsn") localBgpAsn: option<integer_>,
  @as("PeerAddress") peerAddress: option<string_>,
  @as("LocalAddress") localAddress: option<string_>,
  @as("Vlan") vlan: option<integer_>,
  @as("LocalGatewayId") localGatewayId: option<string_>,
  @as("LocalGatewayVirtualInterfaceId")
  localGatewayVirtualInterfaceId: option<localGatewayVirtualInterfaceId>,
}
type localGatewayRouteTableVpcAssociation = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("LocalGatewayId") localGatewayId: option<string_>,
  @as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: option<resourceArn>,
  @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<string_>,
  @as("LocalGatewayRouteTableVpcAssociationId")
  localGatewayRouteTableVpcAssociationId: option<localGatewayRouteTableVpcAssociationId>,
}
type localGatewayRouteTableVirtualInterfaceGroupAssociation = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: option<resourceArn>,
  @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayId>,
  @as("LocalGatewayId") localGatewayId: option<string_>,
  @as("LocalGatewayVirtualInterfaceGroupId")
  localGatewayVirtualInterfaceGroupId: option<localGatewayVirtualInterfaceGroupId>,
  @as("LocalGatewayRouteTableVirtualInterfaceGroupAssociationId")
  localGatewayRouteTableVirtualInterfaceGroupAssociationId: option<
    localGatewayRouteTableVirtualInterfaceGroupAssociationId,
  >,
}
type localGatewayRouteTable = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("LocalGatewayId") localGatewayId: option<localGatewayId>,
  @as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: option<resourceArn>,
  @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<string_>,
}
type localGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("LocalGatewayId") localGatewayId: option<localGatewayId>,
}
type loadPermissionModifications = {
  @as("Remove") remove: option<loadPermissionListRequest>,
  @as("Add") add: option<loadPermissionListRequest>,
}
type launchTemplateTagSpecificationRequest = {
  @as("Tags") tags: option<tagList_>,
  @as("ResourceType") resourceType: option<resourceType>,
}
type launchTemplateTagSpecification = {
  @as("Tags") tags: option<tagList_>,
  @as("ResourceType") resourceType: option<resourceType>,
}
type launchTemplateInstanceNetworkInterfaceSpecificationRequest = {
  @as("NetworkCardIndex") networkCardIndex: option<integer_>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressSpecificationList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressListRequest>,
  @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
  @as("InterfaceType") interfaceType: option<string_>,
  @as("Groups") groups: option<securityGroupIdStringList>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("Description") description: option<string_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>,
  @as("AssociateCarrierIpAddress") associateCarrierIpAddress: option<boolean_>,
}
type launchTemplateInstanceNetworkInterfaceSpecification = {
  @as("NetworkCardIndex") networkCardIndex: option<integer_>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressSpecificationList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressList>,
  @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
  @as("InterfaceType") interfaceType: option<string_>,
  @as("Groups") groups: option<groupIdStringList>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("Description") description: option<string_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>,
  @as("AssociateCarrierIpAddress") associateCarrierIpAddress: option<boolean_>,
}
type launchTemplateConfig = {
  @as("Overrides") overrides: option<launchTemplateOverridesList>,
  @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<fleetLaunchTemplateSpecification>,
}
type launchTemplateBlockDeviceMappingRequestList = array<launchTemplateBlockDeviceMappingRequest>
type launchTemplateBlockDeviceMappingList = array<launchTemplateBlockDeviceMapping>
type launchTemplateAndOverridesResponse = {
  @as("Overrides") overrides: option<fleetLaunchTemplateOverrides>,
  @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<fleetLaunchTemplateSpecification>,
}
type launchTemplate = {
  @as("Tags") tags: option<tagList_>,
  @as("LatestVersionNumber") latestVersionNumber: option<long>,
  @as("DefaultVersionNumber") defaultVersionNumber: option<long>,
  @as("CreatedBy") createdBy: option<string_>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<string_>,
}
type launchPermissionModifications = {
  @as("Remove") remove: option<launchPermissionList>,
  @as("Add") add: option<launchPermissionList>,
}
type keyPairInfo = {
  @as("Tags") tags: option<tagList_>,
  @as("KeyName") keyName: option<string_>,
  @as("KeyFingerprint") keyFingerprint: option<string_>,
  @as("KeyPairId") keyPairId: option<string_>,
}
type ipv6Pool = {
  @as("Tags") tags: option<tagList_>,
  @as("PoolCidrBlocks") poolCidrBlocks: option<poolCidrBlocksSet>,
  @as("Description") description: option<string_>,
  @as("PoolId") poolId: option<string_>,
}
type ipPermission = {
  @as("UserIdGroupPairs") userIdGroupPairs: option<userIdGroupPairList>,
  @as("ToPort") toPort: option<integer_>,
  @as("PrefixListIds") prefixListIds: option<prefixListIdList>,
  @as("Ipv6Ranges") ipv6Ranges: option<ipv6RangeList>,
  @as("IpRanges") ipRanges: option<ipRangeList>,
  @as("IpProtocol") ipProtocol: option<string_>,
  @as("FromPort") fromPort: option<integer_>,
}
type internetGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("InternetGatewayId") internetGatewayId: option<string_>,
  @as("Attachments") attachments: option<internetGatewayAttachmentList>,
}
type integrateServices = {
  @as("AthenaIntegrations") athenaIntegrations: option<athenaIntegrationsSet>,
}
type instanceStorageInfo = {
  @as("NvmeSupport") nvmeSupport: option<ephemeralNvmeSupport>,
  @as("Disks") disks: option<diskInfoList>,
  @as("TotalSizeInGB") totalSizeInGB: option<diskSize>,
}
type instanceStatusSummary = {
  @as("Status") status: option<summaryStatus>,
  @as("Details") details: option<instanceStatusDetailsList>,
}
type instanceStateChangeList = array<instanceStateChange>
type instancePrivateIpAddressList = array<instancePrivateIpAddress>
type instanceNetworkInterfaceSpecification = {
  @as("NetworkCardIndex") networkCardIndex: option<integer_>,
  @as("InterfaceType") interfaceType: option<string_>,
  @as("AssociateCarrierIpAddress") associateCarrierIpAddress: option<boolean_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressSpecificationList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressList>,
  @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
  @as("Groups") groups: option<securityGroupIdStringList>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("Description") description: option<string_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>,
}
type instanceMonitoringList = array<instanceMonitoring>
type instanceBlockDeviceMappingSpecificationList = array<instanceBlockDeviceMappingSpecification>
type instanceBlockDeviceMappingList = array<instanceBlockDeviceMapping>
type inferenceAcceleratorInfo = {@as("Accelerators") accelerators: option<inferenceDeviceInfoList>}
type importSnapshotTask = {
  @as("Tags") tags: option<tagList_>,
  @as("SnapshotTaskDetail") snapshotTaskDetail: option<snapshotTaskDetail>,
  @as("ImportTaskId") importTaskId: option<string_>,
  @as("Description") description: option<string_>,
}
type importInstanceVolumeDetailSet = array<importInstanceVolumeDetailItem>
type imageDiskContainerList = array<imageDiskContainer>
type iamInstanceProfileAssociationSet = array<iamInstanceProfileAssociation>
type hostReservation = {
  @as("Tags") tags: option<tagList_>,
  @as("UpfrontPrice") upfrontPrice: option<string_>,
  @as("State") state: option<reservationState>,
  @as("Start") start: option<dateTime>,
  @as("PaymentOption") paymentOption: option<paymentOption>,
  @as("OfferingId") offeringId: option<string_>,
  @as("InstanceFamily") instanceFamily: option<string_>,
  @as("HourlyPrice") hourlyPrice: option<string_>,
  @as("HostReservationId") hostReservationId: option<string_>,
  @as("HostIdSet") hostIdSet: option<responseHostIdSet>,
  @as("End") end: option<dateTime>,
  @as("Duration") duration: option<integer_>,
  @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  @as("Count") count: option<integer_>,
}
type historyRecords = array<historyRecord>
type historyRecordSet = array<historyRecordEntry>
type gpuDeviceInfoList = array<gpuDeviceInfo>
type fpgaImageAttribute = {
  @as("ProductCodes") productCodes: option<productCodeList>,
  @as("LoadPermissions") loadPermissions: option<loadPermissionList>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<string_>,
  @as("FpgaImageId") fpgaImageId: option<string_>,
}
type fpgaImage = {
  @as("DataRetentionSupport") dataRetentionSupport: option<boolean_>,
  @as("Public") public_: option<boolean_>,
  @as("Tags") tags: option<tagList_>,
  @as("ProductCodes") productCodes: option<productCodeList>,
  @as("OwnerAlias") ownerAlias: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("UpdateTime") updateTime: option<dateTime>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("State") state: option<fpgaImageState>,
  @as("PciId") pciId: option<pciId>,
  @as("ShellVersion") shellVersion: option<string_>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<string_>,
  @as("FpgaImageGlobalId") fpgaImageGlobalId: option<string_>,
  @as("FpgaImageId") fpgaImageId: option<string_>,
}
type fpgaDeviceInfoList = array<fpgaDeviceInfo>
type flowLog = {
  @as("MaxAggregationInterval") maxAggregationInterval: option<integer_>,
  @as("Tags") tags: option<tagList_>,
  @as("LogFormat") logFormat: option<string_>,
  @as("LogDestination") logDestination: option<string_>,
  @as("LogDestinationType") logDestinationType: option<logDestinationType>,
  @as("TrafficType") trafficType: option<trafficType>,
  @as("ResourceId") resourceId: option<string_>,
  @as("LogGroupName") logGroupName: option<string_>,
  @as("FlowLogStatus") flowLogStatus: option<string_>,
  @as("FlowLogId") flowLogId: option<string_>,
  @as("DeliverLogsStatus") deliverLogsStatus: option<string_>,
  @as("DeliverLogsPermissionArn") deliverLogsPermissionArn: option<string_>,
  @as("DeliverLogsErrorMessage") deliverLogsErrorMessage: option<string_>,
  @as("CreationTime") creationTime: option<millisecondDateTime>,
}
type fleetLaunchTemplateOverridesListRequest = array<fleetLaunchTemplateOverridesRequest>
type fleetLaunchTemplateOverridesList = array<fleetLaunchTemplateOverrides>
type filterList = array<filter>
type failedQueuedPurchaseDeletionSet = array<failedQueuedPurchaseDeletion>
type exportTask = {
  @as("Tags") tags: option<tagList_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<exportTaskState>,
  @as("InstanceExportDetails") instanceExportDetails: option<instanceExportDetails>,
  @as("ExportToS3Task") exportToS3Task: option<exportToS3Task>,
  @as("ExportTaskId") exportTaskId: option<string_>,
  @as("Description") description: option<string_>,
}
type exportImageTask = {
  @as("Tags") tags: option<tagList_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("S3ExportLocation") s3ExportLocation: option<exportTaskS3Location>,
  @as("Progress") progress: option<string_>,
  @as("ImageId") imageId: option<string_>,
  @as("ExportImageTaskId") exportImageTaskId: option<string_>,
  @as("Description") description: option<string_>,
}
type explanation = {
  @as("VpnGateway") vpnGateway: option<analysisComponent>,
  @as("VpnConnection") vpnConnection: option<analysisComponent>,
  @as("VpcEndpoint") vpcEndpoint: option<analysisComponent>,
  @as("Vpc") vpc: option<analysisComponent>,
  @as("SubnetRouteTable") subnetRouteTable: option<analysisComponent>,
  @as("Subnet") subnet: option<analysisComponent>,
  @as("State") state: option<string_>,
  @as("SourceVpc") sourceVpc: option<analysisComponent>,
  @as("SecurityGroups") securityGroups: option<analysisComponentList>,
  @as("SecurityGroupRule") securityGroupRule: option<analysisSecurityGroupRule>,
  @as("SecurityGroup") securityGroup: option<analysisComponent>,
  @as("RouteTable") routeTable: option<analysisComponent>,
  @as("RouteTableRoute") routeTableRoute: option<analysisRouteTableRoute>,
  @as("Protocols") protocols: option<stringList>,
  @as("PrefixList") prefixList: option<analysisComponent>,
  @as("PortRanges") portRanges: option<portRangeList>,
  @as("Port") port: option<port>,
  @as("VpcPeeringConnection") vpcPeeringConnection: option<analysisComponent>,
  @as("PacketField") packetField: option<string_>,
  @as("NetworkInterface") networkInterface: option<analysisComponent>,
  @as("NatGateway") natGateway: option<analysisComponent>,
  @as("MissingComponent") missingComponent: option<string_>,
  @as("ElasticLoadBalancerListener") elasticLoadBalancerListener: option<analysisComponent>,
  @as("LoadBalancerTargetPort") loadBalancerTargetPort: option<port>,
  @as("LoadBalancerTargetGroups") loadBalancerTargetGroups: option<analysisComponentList>,
  @as("LoadBalancerTargetGroup") loadBalancerTargetGroup: option<analysisComponent>,
  @as("LoadBalancerTarget") loadBalancerTarget: option<analysisLoadBalancerTarget>,
  @as("LoadBalancerListenerPort") loadBalancerListenerPort: option<port>,
  @as("ClassicLoadBalancerListener")
  classicLoadBalancerListener: option<analysisLoadBalancerListener>,
  @as("LoadBalancerArn") loadBalancerArn: option<resourceArn>,
  @as("InternetGateway") internetGateway: option<analysisComponent>,
  @as("IngressRouteTable") ingressRouteTable: option<analysisComponent>,
  @as("ExplanationCode") explanationCode: option<string_>,
  @as("Direction") direction: option<string_>,
  @as("DestinationVpc") destinationVpc: option<analysisComponent>,
  @as("Destination") destination: option<analysisComponent>,
  @as("CustomerGateway") customerGateway: option<analysisComponent>,
  @as("Component") component: option<analysisComponent>,
  @as("Cidrs") cidrs: option<valueStringList>,
  @as("AvailabilityZones") availabilityZones: option<valueStringList>,
  @as("AttachedTo") attachedTo: option<analysisComponent>,
  @as("Addresses") addresses: option<ipAddressList>,
  @as("Address") address: option<ipAddress>,
  @as("AclRule") aclRule: option<analysisAclRule>,
  @as("Acl") acl: option<analysisComponent>,
}
type enableFastSnapshotRestoreStateErrorSet = array<enableFastSnapshotRestoreStateErrorItem>
type elasticGpus = {
  @as("Tags") tags: option<tagList_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("ElasticGpuState") elasticGpuState: option<elasticGpuState>,
  @as("ElasticGpuHealth") elasticGpuHealth: option<elasticGpuHealth>,
  @as("ElasticGpuType") elasticGpuType: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("ElasticGpuId") elasticGpuId: option<string_>,
}
type egressOnlyInternetGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("EgressOnlyInternetGatewayId")
  egressOnlyInternetGatewayId: option<egressOnlyInternetGatewayId>,
  @as("Attachments") attachments: option<internetGatewayAttachmentList>,
}
type diskImageList = array<diskImage>
type disableFastSnapshotRestoreStateErrorSet = array<disableFastSnapshotRestoreStateErrorItem>
type dhcpConfiguration = {
  @as("Values") values: option<dhcpConfigurationValueList>,
  @as("Key") key: option<string_>,
}
type deleteLaunchTemplateVersionsResponseErrorSet = array<
  deleteLaunchTemplateVersionsResponseErrorItem,
>
type deleteFleetErrorSet = array<deleteFleetErrorItem>
type customerGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("DeviceName") deviceName: option<string_>,
  @as("Type") type_: option<string_>,
  @as("State") state: option<string_>,
  @as("CertificateArn") certificateArn: option<string_>,
  @as("IpAddress") ipAddress: option<string_>,
  @as("CustomerGatewayId") customerGatewayId: option<string_>,
  @as("BgpAsn") bgpAsn: option<string_>,
}
type createVolumePermissionModifications = {
  @as("Remove") remove: option<createVolumePermissionList>,
  @as("Add") add: option<createVolumePermissionList>,
}
type connectionNotificationSet = array<connectionNotification>
type coipPool = {
  @as("PoolArn") poolArn: option<resourceArn>,
  @as("Tags") tags: option<tagList_>,
  @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>,
  @as("PoolCidrs") poolCidrs: option<valueStringList>,
  @as("PoolId") poolId: option<coipPoolId>,
}
type clientVpnRouteSet = array<clientVpnRoute>
type clientVpnConnectionSet = array<clientVpnConnection>
type clientVpnAuthenticationRequestList = array<clientVpnAuthenticationRequest>
type clientVpnAuthenticationList = array<clientVpnAuthentication>
type classicLoadBalancersConfig = {
  @as("ClassicLoadBalancers") classicLoadBalancers: option<classicLoadBalancers>,
}
type classicLinkInstance = {
  @as("VpcId") vpcId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("Groups") groups: option<groupIdentifierList>,
}
type carrierGateway = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("State") state: option<carrierGatewayState>,
  @as("VpcId") vpcId: option<vpcId>,
  @as("CarrierGatewayId") carrierGatewayId: option<carrierGatewayId>,
}
type capacityReservation = {
  @as("OutpostArn") outpostArn: option<outpostArn>,
  @as("Tags") tags: option<tagList_>,
  @as("CreateDate") createDate: option<dateTime>,
  @as("InstanceMatchCriteria") instanceMatchCriteria: option<instanceMatchCriteria>,
  @as("EndDateType") endDateType: option<endDateType>,
  @as("EndDate") endDate: option<dateTime>,
  @as("StartDate") startDate: option<millisecondDateTime>,
  @as("State") state: option<capacityReservationState>,
  @as("EphemeralStorage") ephemeralStorage: option<boolean_>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("AvailableInstanceCount") availableInstanceCount: option<integer_>,
  @as("TotalInstanceCount") totalInstanceCount: option<integer_>,
  @as("Tenancy") tenancy: option<capacityReservationTenancy>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("InstancePlatform") instancePlatform: option<capacityReservationInstancePlatform>,
  @as("InstanceType") instanceType: option<string_>,
  @as("AvailabilityZoneId") availabilityZoneId: option<string_>,
  @as("CapacityReservationArn") capacityReservationArn: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("CapacityReservationId") capacityReservationId: option<string_>,
}
type cancelSpotFleetRequestsErrorSet = array<cancelSpotFleetRequestsErrorItem>
type bundleTask = {
  @as("UpdateTime") updateTime: option<dateTime>,
  @as("Storage") storage: option<storage>,
  @as("State") state: option<bundleTaskState>,
  @as("StartTime") startTime: option<dateTime>,
  @as("Progress") progress: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("BundleTaskError") bundleTaskError: option<bundleTaskError>,
  @as("BundleId") bundleId: option<string_>,
}
type blockDeviceMappingRequestList = array<blockDeviceMapping>
type blockDeviceMappingList = array<blockDeviceMapping>
type availableCapacity = {
  @as("AvailableVCpus") availableVCpus: option<integer_>,
  @as("AvailableInstanceCapacity") availableInstanceCapacity: option<availableInstanceCapacityList>,
}
type availabilityZone = {
  @as("ParentZoneId") parentZoneId: option<string_>,
  @as("ParentZoneName") parentZoneName: option<string_>,
  @as("ZoneType") zoneType: option<string_>,
  @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
  @as("GroupName") groupName: option<string_>,
  @as("ZoneId") zoneId: option<string_>,
  @as("ZoneName") zoneName: option<string_>,
  @as("RegionName") regionName: option<string_>,
  @as("Messages") messages: option<availabilityZoneMessageList>,
  @as("OptInStatus") optInStatus: option<availabilityZoneOptInStatus>,
  @as("State") state: option<availabilityZoneState>,
}
type authorizationRuleSet = array<authorizationRule>
type analysisPacketHeader = {
  @as("SourcePortRanges") sourcePortRanges: option<portRangeList>,
  @as("SourceAddresses") sourceAddresses: option<ipAddressList>,
  @as("Protocol") protocol: option<string_>,
  @as("DestinationPortRanges") destinationPortRanges: option<portRangeList>,
  @as("DestinationAddresses") destinationAddresses: option<ipAddressList>,
}
type addressSet = array<addressAttribute>
type address = {
  @as("CarrierIp") carrierIp: option<string_>,
  @as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<string_>,
  @as("CustomerOwnedIp") customerOwnedIp: option<string_>,
  @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
  @as("PublicIpv4Pool") publicIpv4Pool: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("NetworkInterfaceOwnerId") networkInterfaceOwnerId: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("Domain") domain: option<domainType>,
  @as("AssociationId") associationId: option<string_>,
  @as("AllocationId") allocationId: option<string_>,
  @as("PublicIp") publicIp: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
}
type accountAttribute = {
  @as("AttributeValues") attributeValues: option<accountAttributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type vpnTunnelOptionsSpecificationsList = array<vpnTunnelOptionsSpecification>
type vpnGatewayList = array<vpnGateway>
type vpcPeeringConnection = {
  @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("Status") status: option<vpcPeeringConnectionStateReason>,
  @as("RequesterVpcInfo") requesterVpcInfo: option<vpcPeeringConnectionVpcInfo>,
  @as("ExpirationTime") expirationTime: option<dateTime>,
  @as("AccepterVpcInfo") accepterVpcInfo: option<vpcPeeringConnectionVpcInfo>,
}
type vpcEndpointSet = array<vpcEndpoint>
type vpcEndpointConnectionSet = array<vpcEndpointConnection>
type vpcClassicLinkList = array<vpcClassicLink>
type vpc = {
  @as("Tags") tags: option<tagList_>,
  @as("IsDefault") isDefault: option<boolean_>,
  @as("CidrBlockAssociationSet") cidrBlockAssociationSet: option<vpcCidrBlockAssociationSet>,
  @as("Ipv6CidrBlockAssociationSet")
  ipv6CidrBlockAssociationSet: option<vpcIpv6CidrBlockAssociationSet>,
  @as("InstanceTenancy") instanceTenancy: option<tenancy>,
  @as("OwnerId") ownerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("State") state: option<vpcState>,
  @as("DhcpOptionsId") dhcpOptionsId: option<string_>,
  @as("CidrBlock") cidrBlock: option<string_>,
}
type volumeStatusItem = {
  @as("AttachmentStatuses") attachmentStatuses: option<volumeStatusAttachmentStatusList>,
  @as("VolumeStatus") volumeStatus: option<volumeStatusInfo>,
  @as("VolumeId") volumeId: option<string_>,
  @as("Events") events: option<volumeStatusEventsList>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Actions") actions: option<volumeStatusActionsList>,
}
type volumeList = array<volume>
type tunnelOptionsList = array<tunnelOption>
type transitGatewayVpcAttachmentList = array<transitGatewayVpcAttachment>
type transitGatewayRouteTableList = array<transitGatewayRouteTable>
type transitGatewayRouteList = array<transitGatewayRoute>
type transitGatewayPeeringAttachmentList = array<transitGatewayPeeringAttachment>
type transitGatewayMulticastDomainList = array<transitGatewayMulticastDomain>
type transitGatewayList = array<transitGateway>
type transitGatewayConnectPeer = {
  @as("Tags") tags: option<tagList_>,
  @as("ConnectPeerConfiguration")
  connectPeerConfiguration: option<transitGatewayConnectPeerConfiguration>,
  @as("CreationTime") creationTime: option<dateTime>,
  @as("State") state: option<transitGatewayConnectPeerState>,
  @as("TransitGatewayConnectPeerId")
  transitGatewayConnectPeerId: option<transitGatewayConnectPeerId>,
  @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
}
type transitGatewayConnectList = array<transitGatewayConnect>
type transitGatewayAttachmentList = array<transitGatewayAttachment>
type trafficMirrorTargetSet = array<trafficMirrorTarget>
type trafficMirrorSessionSet = array<trafficMirrorSession>
type trafficMirrorFilter = {
  @as("Tags") tags: option<tagList_>,
  @as("Description") description: option<string_>,
  @as("NetworkServices") networkServices: option<trafficMirrorNetworkServiceList>,
  @as("EgressFilterRules") egressFilterRules: option<trafficMirrorFilterRuleList>,
  @as("IngressFilterRules") ingressFilterRules: option<trafficMirrorFilterRuleList>,
  @as("TrafficMirrorFilterId") trafficMirrorFilterId: option<string_>,
}
type tagSpecificationList = array<tagSpecification>
type subnet = {
  @as("OutpostArn") outpostArn: option<string_>,
  @as("SubnetArn") subnetArn: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("Ipv6CidrBlockAssociationSet")
  ipv6CidrBlockAssociationSet: option<subnetIpv6CidrBlockAssociationSet>,
  @as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: option<boolean_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("State") state: option<subnetState>,
  @as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<coipPoolId>,
  @as("MapCustomerOwnedIpOnLaunch") mapCustomerOwnedIpOnLaunch: option<boolean_>,
  @as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: option<boolean_>,
  @as("DefaultForAz") defaultForAz: option<boolean_>,
  @as("CidrBlock") cidrBlock: option<string_>,
  @as("AvailableIpAddressCount") availableIpAddressCount: option<integer_>,
  @as("AvailabilityZoneId") availabilityZoneId: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type staleIpPermissionSet = array<staleIpPermission>
type spotFleetTagSpecificationList = array<spotFleetTagSpecification>
type snapshotSet = array<snapshotInfo>
type snapshotList = array<snapshot>
type serviceDetailSet = array<serviceDetail>
type serviceConfigurationSet = array<serviceConfiguration>
type scheduledInstancesNetworkInterfaceSet = array<scheduledInstancesNetworkInterface>
type scheduledInstanceSet = array<scheduledInstance>
type scheduledInstanceAvailabilitySet = array<scheduledInstanceAvailability>
type routeTable = {
  @as("OwnerId") ownerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("Routes") routes: option<routeList>,
  @as("RouteTableId") routeTableId: option<string_>,
  @as("PropagatingVgws") propagatingVgws: option<propagatingVgwList>,
  @as("Associations") associations: option<routeTableAssociationList>,
}
type reservedInstancesOfferingList = array<reservedInstancesOffering>
type reservedInstancesModification = {
  @as("UpdateDate") updateDate: option<dateTime>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("ReservedInstancesModificationId") reservedInstancesModificationId: option<string_>,
  @as("ReservedInstancesIds") reservedInstancesIds: option<reservedIntancesIds>,
  @as("ModificationResults") modificationResults: option<reservedInstancesModificationResultList>,
  @as("EffectiveDate") effectiveDate: option<dateTime>,
  @as("CreateDate") createDate: option<dateTime>,
  @as("ClientToken") clientToken: option<string_>,
}
type reservedInstancesListingList = array<reservedInstancesListing>
type reservedInstancesList = array<reservedInstances>
type replaceRootVolumeTasks = array<replaceRootVolumeTask>
type purchasedScheduledInstanceSet = array<scheduledInstance>
type publicIpv4PoolSet = array<publicIpv4Pool>
type principalIdFormatList = array<principalIdFormat>
type placementGroupList = array<placementGroup>
type pathComponent = {
  @as("Vpc") vpc: option<analysisComponent>,
  @as("Subnet") subnet: option<analysisComponent>,
  @as("SourceVpc") sourceVpc: option<analysisComponent>,
  @as("SecurityGroupRule") securityGroupRule: option<analysisSecurityGroupRule>,
  @as("RouteTableRoute") routeTableRoute: option<analysisRouteTableRoute>,
  @as("InboundHeader") inboundHeader: option<analysisPacketHeader>,
  @as("OutboundHeader") outboundHeader: option<analysisPacketHeader>,
  @as("DestinationVpc") destinationVpc: option<analysisComponent>,
  @as("Component") component: option<analysisComponent>,
  @as("AclRule") aclRule: option<analysisAclRule>,
  @as("SequenceNumber") sequenceNumber: option<integer_>,
}
type networkInterface = {
  @as("VpcId") vpcId: option<string_>,
  @as("TagSet") tagSet: option<tagList_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("Status") status: option<networkInterfaceStatus>,
  @as("SourceDestCheck") sourceDestCheck: option<boolean_>,
  @as("RequesterManaged") requesterManaged: option<boolean_>,
  @as("RequesterId") requesterId: option<string_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<networkInterfacePrivateIpAddressList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("MacAddress") macAddress: option<string_>,
  @as("Ipv6Addresses") ipv6Addresses: option<networkInterfaceIpv6AddressesList>,
  @as("InterfaceType") interfaceType: option<networkInterfaceType>,
  @as("Groups") groups: option<groupIdentifierList>,
  @as("Description") description: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Attachment") attachment: option<networkInterfaceAttachment>,
  @as("Association") association: option<networkInterfaceAssociation>,
}
type networkInsightsPathList = array<networkInsightsPath>
type networkAcl = {
  @as("OwnerId") ownerId: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("NetworkAclId") networkAclId: option<string_>,
  @as("IsDefault") isDefault: option<boolean_>,
  @as("Entries") entries: option<networkAclEntryList>,
  @as("Associations") associations: option<networkAclAssociationList>,
}
type natGatewayList = array<natGateway>
type managedPrefixListSet = array<managedPrefixList>
type localGatewayVirtualInterfaceSet = array<localGatewayVirtualInterface>
type localGatewayVirtualInterfaceGroupSet = array<localGatewayVirtualInterfaceGroup>
type localGatewaySet = array<localGateway>
type localGatewayRouteTableVpcAssociationSet = array<localGatewayRouteTableVpcAssociation>
type localGatewayRouteTableVirtualInterfaceGroupAssociationSet = array<
  localGatewayRouteTableVirtualInterfaceGroupAssociation,
>
type localGatewayRouteTableSet = array<localGatewayRouteTable>
type loadBalancersConfig = {
  @as("TargetGroupsConfig") targetGroupsConfig: option<targetGroupsConfig>,
  @as("ClassicLoadBalancersConfig") classicLoadBalancersConfig: option<classicLoadBalancersConfig>,
}
type launchTemplateTagSpecificationRequestList = array<launchTemplateTagSpecificationRequest>
type launchTemplateTagSpecificationList = array<launchTemplateTagSpecification>
type launchTemplateSet = array<launchTemplate>
type launchTemplateInstanceNetworkInterfaceSpecificationRequestList = array<
  launchTemplateInstanceNetworkInterfaceSpecificationRequest,
>
type launchTemplateInstanceNetworkInterfaceSpecificationList = array<
  launchTemplateInstanceNetworkInterfaceSpecification,
>
type launchTemplateConfigList = array<launchTemplateConfig>
type keyPairList = array<keyPairInfo>
type ipv6PoolSet = array<ipv6Pool>
type ipPermissionList = array<ipPermission>
type internetGatewayList = array<internetGateway>
type instanceStatus = {
  @as("SystemStatus") systemStatus: option<instanceStatusSummary>,
  @as("InstanceStatus") instanceStatus: option<instanceStatusSummary>,
  @as("InstanceState") instanceState: option<instanceState>,
  @as("InstanceId") instanceId: option<string_>,
  @as("Events") events: option<instanceStatusEventList>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type instanceNetworkInterfaceSpecificationList = array<instanceNetworkInterfaceSpecification>
type instanceNetworkInterface = {
  @as("InterfaceType") interfaceType: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("Status") status: option<networkInterfaceStatus>,
  @as("SourceDestCheck") sourceDestCheck: option<boolean_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<instancePrivateIpAddressList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("MacAddress") macAddress: option<string_>,
  @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressList>,
  @as("Groups") groups: option<groupIdentifierList>,
  @as("Description") description: option<string_>,
  @as("Attachment") attachment: option<instanceNetworkInterfaceAttachment>,
  @as("Association") association: option<instanceNetworkInterfaceAssociation>,
}
type importSnapshotTaskList = array<importSnapshotTask>
type importInstanceTaskDetails = {
  @as("Volumes") volumes: option<importInstanceVolumeDetailSet>,
  @as("Platform") platform: option<platformValues>,
  @as("InstanceId") instanceId: option<string_>,
  @as("Description") description: option<string_>,
}
type importImageTask = {
  @as("LicenseSpecifications")
  licenseSpecifications: option<importImageLicenseSpecificationListResponse>,
  @as("Tags") tags: option<tagList_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<string_>,
  @as("SnapshotDetails") snapshotDetails: option<snapshotDetailList>,
  @as("Progress") progress: option<string_>,
  @as("Platform") platform: option<string_>,
  @as("LicenseType") licenseType: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("ImportTaskId") importTaskId: option<string_>,
  @as("ImageId") imageId: option<string_>,
  @as("Hypervisor") hypervisor: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("Architecture") architecture: option<string_>,
}
type image = {
  @as("BootMode") bootMode: option<bootModeValues>,
  @as("VirtualizationType") virtualizationType: option<virtualizationType>,
  @as("Tags") tags: option<tagList_>,
  @as("StateReason") stateReason: option<stateReason>,
  @as("SriovNetSupport") sriovNetSupport: option<string_>,
  @as("RootDeviceType") rootDeviceType: option<deviceType>,
  @as("RootDeviceName") rootDeviceName: option<string_>,
  @as("Name") name: option<string_>,
  @as("ImageOwnerAlias") imageOwnerAlias: option<string_>,
  @as("Hypervisor") hypervisor: option<hypervisorType>,
  @as("EnaSupport") enaSupport: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingList>,
  @as("State") state: option<imageState>,
  @as("RamdiskId") ramdiskId: option<string_>,
  @as("ProductCodes") productCodes: option<productCodeList>,
  @as("UsageOperation") usageOperation: option<string_>,
  @as("PlatformDetails") platformDetails: option<string_>,
  @as("Platform") platform: option<platformValues>,
  @as("OwnerId") ownerId: option<string_>,
  @as("KernelId") kernelId: option<string_>,
  @as("Public") public_: option<boolean_>,
  @as("ImageType") imageType: option<imageTypeValues>,
  @as("ImageLocation") imageLocation: option<string_>,
  @as("ImageId") imageId: option<string_>,
  @as("CreationDate") creationDate: option<string_>,
  @as("Architecture") architecture: option<architectureValues>,
}
type hostReservationSet = array<hostReservation>
type host = {
  @as("MemberOfServiceLinkedResourceGroup") memberOfServiceLinkedResourceGroup: option<boolean_>,
  @as("AvailabilityZoneId") availabilityZoneId: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("AllowsMultipleInstanceTypes")
  allowsMultipleInstanceTypes: option<allowsMultipleInstanceTypes>,
  @as("HostRecovery") hostRecovery: option<hostRecovery>,
  @as("Tags") tags: option<tagList_>,
  @as("ReleaseTime") releaseTime: option<dateTime>,
  @as("AllocationTime") allocationTime: option<dateTime>,
  @as("State") state: option<allocationState>,
  @as("Instances") instances: option<hostInstanceList>,
  @as("HostReservationId") hostReservationId: option<string_>,
  @as("HostProperties") hostProperties: option<hostProperties>,
  @as("HostId") hostId: option<string_>,
  @as("ClientToken") clientToken: option<string_>,
  @as("AvailableCapacity") availableCapacity: option<availableCapacity>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("AutoPlacement") autoPlacement: option<autoPlacement>,
}
type gpuInfo = {
  @as("TotalGpuMemoryInMiB") totalGpuMemoryInMiB: option<totalGpuMemory>,
  @as("Gpus") gpus: option<gpuDeviceInfoList>,
}
type fpgaInfo = {
  @as("TotalFpgaMemoryInMiB") totalFpgaMemoryInMiB: option<totalFpgaMemory>,
  @as("Fpgas") fpgas: option<fpgaDeviceInfoList>,
}
type fpgaImageList = array<fpgaImage>
type flowLogSet = array<flowLog>
type fleetLaunchTemplateConfigRequest = {
  @as("Overrides") overrides: option<fleetLaunchTemplateOverridesListRequest>,
  @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<fleetLaunchTemplateSpecificationRequest>,
}
type fleetLaunchTemplateConfig = {
  @as("Overrides") overrides: option<fleetLaunchTemplateOverridesList>,
  @as("LaunchTemplateSpecification")
  launchTemplateSpecification: option<fleetLaunchTemplateSpecification>,
}
type exportTaskList = array<exportTask>
type exportImageTaskList = array<exportImageTask>
type explanationList = array<explanation>
type enableFastSnapshotRestoreErrorItem = {
  @as("FastSnapshotRestoreStateErrors")
  fastSnapshotRestoreStateErrors: option<enableFastSnapshotRestoreStateErrorSet>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type elasticGpuSet = array<elasticGpus>
type egressOnlyInternetGatewayList = array<egressOnlyInternetGateway>
type disableFastSnapshotRestoreErrorItem = {
  @as("FastSnapshotRestoreStateErrors")
  fastSnapshotRestoreStateErrors: option<disableFastSnapshotRestoreStateErrorSet>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type dhcpConfigurationList = array<dhcpConfiguration>
type describeFleetsInstances = {
  @as("Platform") platform: option<platformValues>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceIds") instanceIds: option<instanceIdsSet>,
  @as("Lifecycle") lifecycle: option<instanceLifecycle>,
  @as("LaunchTemplateAndOverrides")
  launchTemplateAndOverrides: option<launchTemplateAndOverridesResponse>,
}
type describeFleetError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<string_>,
  @as("Lifecycle") lifecycle: option<instanceLifecycle>,
  @as("LaunchTemplateAndOverrides")
  launchTemplateAndOverrides: option<launchTemplateAndOverridesResponse>,
}
type customerGatewayList = array<customerGateway>
type createFleetInstance = {
  @as("Platform") platform: option<platformValues>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceIds") instanceIds: option<instanceIdsSet>,
  @as("Lifecycle") lifecycle: option<instanceLifecycle>,
  @as("LaunchTemplateAndOverrides")
  launchTemplateAndOverrides: option<launchTemplateAndOverridesResponse>,
}
type createFleetError = {
  @as("ErrorMessage") errorMessage: option<string_>,
  @as("ErrorCode") errorCode: option<string_>,
  @as("Lifecycle") lifecycle: option<instanceLifecycle>,
  @as("LaunchTemplateAndOverrides")
  launchTemplateAndOverrides: option<launchTemplateAndOverridesResponse>,
}
type coipPoolSet = array<coipPool>
type clientVpnEndpoint = {
  @as("ClientConnectOptions") clientConnectOptions: option<clientConnectResponseOptions>,
  @as("SelfServicePortalUrl") selfServicePortalUrl: option<string_>,
  @as("VpcId") vpcId: option<vpcId>,
  @as("SecurityGroupIds") securityGroupIds: option<clientVpnSecurityGroupIdSet>,
  @as("Tags") tags: option<tagList_>,
  @as("ConnectionLogOptions") connectionLogOptions: option<connectionLogResponseOptions>,
  @as("AuthenticationOptions") authenticationOptions: option<clientVpnAuthenticationList>,
  @as("ServerCertificateArn") serverCertificateArn: option<string_>,
  @as("AssociatedTargetNetworks") associatedTargetNetworks: option<associatedTargetNetworkSet>,
  @as("VpnPort") vpnPort: option<integer_>,
  @as("TransportProtocol") transportProtocol: option<transportProtocol>,
  @as("VpnProtocol") vpnProtocol: option<vpnProtocol>,
  @as("SplitTunnel") splitTunnel: option<boolean_>,
  @as("DnsServers") dnsServers: option<valueStringList>,
  @as("ClientCidrBlock") clientCidrBlock: option<string_>,
  @as("DnsName") dnsName: option<string_>,
  @as("DeletionTime") deletionTime: option<string_>,
  @as("CreationTime") creationTime: option<string_>,
  @as("Status") status: option<clientVpnEndpointStatus>,
  @as("Description") description: option<string_>,
  @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
}
type classicLinkInstanceList = array<classicLinkInstance>
type carrierGatewaySet = array<carrierGateway>
type capacityReservationSet = array<capacityReservation>
type bundleTaskList = array<bundleTask>
type availabilityZoneList = array<availabilityZone>
type addressList = array<address>
type accountAttributeList = array<accountAttribute>
type vpnConnectionOptionsSpecification = {
  @as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: option<string_>,
  @as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: option<string_>,
  @as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: option<string_>,
  @as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: option<string_>,
  @as("TunnelOptions") tunnelOptions: option<vpnTunnelOptionsSpecificationsList>,
  @as("TunnelInsideIpVersion") tunnelInsideIpVersion: option<tunnelInsideIpVersion>,
  @as("StaticRoutesOnly") staticRoutesOnly: option<boolean_>,
  @as("EnableAcceleration") enableAcceleration: option<boolean_>,
}
type vpnConnectionOptions = {
  @as("TunnelOptions") tunnelOptions: option<tunnelOptionsList>,
  @as("TunnelInsideIpVersion") tunnelInsideIpVersion: option<tunnelInsideIpVersion>,
  @as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: option<string_>,
  @as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: option<string_>,
  @as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: option<string_>,
  @as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: option<string_>,
  @as("StaticRoutesOnly") staticRoutesOnly: option<boolean_>,
  @as("EnableAcceleration") enableAcceleration: option<boolean_>,
}
type vpcPeeringConnectionList = array<vpcPeeringConnection>
type vpcList = array<vpc>
type volumeStatusList = array<volumeStatusItem>
type transitGatewayConnectPeerList = array<transitGatewayConnectPeer>
type trafficMirrorFilterSet = array<trafficMirrorFilter>
type subnetList = array<subnet>
type staleSecurityGroup = {
  @as("VpcId") vpcId: option<string_>,
  @as("StaleIpPermissionsEgress") staleIpPermissionsEgress: option<staleIpPermissionSet>,
  @as("StaleIpPermissions") staleIpPermissions: option<staleIpPermissionSet>,
  @as("GroupName") groupName: option<string_>,
  @as("GroupId") groupId: option<string_>,
  @as("Description") description: option<string_>,
}
type spotFleetLaunchSpecification = {
  @as("TagSpecifications") tagSpecifications: option<spotFleetTagSpecificationList>,
  @as("WeightedCapacity") weightedCapacity: option<double>,
  @as("UserData") userData: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("SpotPrice") spotPrice: option<string_>,
  @as("RamdiskId") ramdiskId: option<string_>,
  @as("Placement") placement: option<spotPlacement>,
  @as("NetworkInterfaces") networkInterfaces: option<instanceNetworkInterfaceSpecificationList>,
  @as("Monitoring") monitoring: option<spotFleetMonitoring>,
  @as("KeyName") keyName: option<string_>,
  @as("KernelId") kernelId: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("ImageId") imageId: option<string_>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingList>,
  @as("AddressingType") addressingType: option<string_>,
  @as("SecurityGroups") securityGroups: option<groupIdentifierList>,
}
type securityGroup = {
  @as("VpcId") vpcId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("IpPermissionsEgress") ipPermissionsEgress: option<ipPermissionList>,
  @as("GroupId") groupId: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("IpPermissions") ipPermissions: option<ipPermissionList>,
  @as("GroupName") groupName: option<string_>,
  @as("Description") description: option<string_>,
}
type scheduledInstancesLaunchSpecification = {
  @as("UserData") userData: option<string_>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("SecurityGroupIds") securityGroupIds: option<scheduledInstancesSecurityGroupIdSet>,
  @as("RamdiskId") ramdiskId: option<ramdiskId>,
  @as("Placement") placement: option<scheduledInstancesPlacement>,
  @as("NetworkInterfaces") networkInterfaces: option<scheduledInstancesNetworkInterfaceSet>,
  @as("Monitoring") monitoring: option<scheduledInstancesMonitoring>,
  @as("KeyName") keyName: option<keyPairName>,
  @as("KernelId") kernelId: option<kernelId>,
  @as("InstanceType") instanceType: option<string_>,
  @as("ImageId") imageId: imageId,
  @as("IamInstanceProfile") iamInstanceProfile: option<scheduledInstancesIamInstanceProfile>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<scheduledInstancesBlockDeviceMappingSet>,
}
type routeTableList = array<routeTable>
type responseLaunchTemplateData = {
  @as("EnclaveOptions") enclaveOptions: option<launchTemplateEnclaveOptions>,
  @as("MetadataOptions") metadataOptions: option<launchTemplateInstanceMetadataOptions>,
  @as("HibernationOptions") hibernationOptions: option<launchTemplateHibernationOptions>,
  @as("LicenseSpecifications") licenseSpecifications: option<launchTemplateLicenseList>,
  @as("CapacityReservationSpecification")
  capacityReservationSpecification: option<launchTemplateCapacityReservationSpecificationResponse>,
  @as("CpuOptions") cpuOptions: option<launchTemplateCpuOptions>,
  @as("CreditSpecification") creditSpecification: option<creditSpecification>,
  @as("InstanceMarketOptions") instanceMarketOptions: option<launchTemplateInstanceMarketOptions>,
  @as("SecurityGroups") securityGroups: option<valueStringList>,
  @as("SecurityGroupIds") securityGroupIds: option<valueStringList>,
  @as("ElasticInferenceAccelerators")
  elasticInferenceAccelerators: option<launchTemplateElasticInferenceAcceleratorResponseList>,
  @as("ElasticGpuSpecifications")
  elasticGpuSpecifications: option<elasticGpuSpecificationResponseList>,
  @as("TagSpecifications") tagSpecifications: option<launchTemplateTagSpecificationList>,
  @as("UserData") userData: option<string_>,
  @as("InstanceInitiatedShutdownBehavior")
  instanceInitiatedShutdownBehavior: option<shutdownBehavior>,
  @as("DisableApiTermination") disableApiTermination: option<boolean_>,
  @as("RamDiskId") ramDiskId: option<string_>,
  @as("Placement") placement: option<launchTemplatePlacement>,
  @as("Monitoring") monitoring: option<launchTemplatesMonitoring>,
  @as("KeyName") keyName: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("ImageId") imageId: option<string_>,
  @as("NetworkInterfaces")
  networkInterfaces: option<launchTemplateInstanceNetworkInterfaceSpecificationList>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<launchTemplateBlockDeviceMappingList>,
  @as("IamInstanceProfile")
  iamInstanceProfile: option<launchTemplateIamInstanceProfileSpecification>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("KernelId") kernelId: option<string_>,
}
type reservedInstancesModificationList = array<reservedInstancesModification>
type requestSpotLaunchSpecification = {
  @as("UserData") userData: option<string_>,
  @as("SubnetId") subnetId: option<subnetId>,
  @as("RamdiskId") ramdiskId: option<ramdiskId>,
  @as("Placement") placement: option<spotPlacement>,
  @as("NetworkInterfaces") networkInterfaces: option<instanceNetworkInterfaceSpecificationList>,
  @as("Monitoring") monitoring: option<runInstancesMonitoringEnabled>,
  @as("KeyName") keyName: option<keyPairName>,
  @as("KernelId") kernelId: option<kernelId>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("ImageId") imageId: option<imageId>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingList>,
  @as("AddressingType") addressingType: option<string_>,
  @as("SecurityGroups") securityGroups: option<requestSpotLaunchSpecificationSecurityGroupList>,
  @as("SecurityGroupIds")
  securityGroupIds: option<requestSpotLaunchSpecificationSecurityGroupIdList>,
}
type requestLaunchTemplateData = {
  @as("EnclaveOptions") enclaveOptions: option<launchTemplateEnclaveOptionsRequest>,
  @as("MetadataOptions") metadataOptions: option<launchTemplateInstanceMetadataOptionsRequest>,
  @as("HibernationOptions") hibernationOptions: option<launchTemplateHibernationOptionsRequest>,
  @as("LicenseSpecifications")
  licenseSpecifications: option<launchTemplateLicenseSpecificationListRequest>,
  @as("CapacityReservationSpecification")
  capacityReservationSpecification: option<launchTemplateCapacityReservationSpecificationRequest>,
  @as("CpuOptions") cpuOptions: option<launchTemplateCpuOptionsRequest>,
  @as("CreditSpecification") creditSpecification: option<creditSpecificationRequest>,
  @as("InstanceMarketOptions")
  instanceMarketOptions: option<launchTemplateInstanceMarketOptionsRequest>,
  @as("SecurityGroups") securityGroups: option<securityGroupStringList>,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdStringList>,
  @as("ElasticInferenceAccelerators")
  elasticInferenceAccelerators: option<launchTemplateElasticInferenceAcceleratorList>,
  @as("ElasticGpuSpecifications") elasticGpuSpecifications: option<elasticGpuSpecificationList>,
  @as("TagSpecifications") tagSpecifications: option<launchTemplateTagSpecificationRequestList>,
  @as("UserData") userData: option<string_>,
  @as("InstanceInitiatedShutdownBehavior")
  instanceInitiatedShutdownBehavior: option<shutdownBehavior>,
  @as("DisableApiTermination") disableApiTermination: option<boolean_>,
  @as("RamDiskId") ramDiskId: option<ramdiskId>,
  @as("Placement") placement: option<launchTemplatePlacementRequest>,
  @as("Monitoring") monitoring: option<launchTemplatesMonitoringRequest>,
  @as("KeyName") keyName: option<keyPairName>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("ImageId") imageId: option<imageId>,
  @as("NetworkInterfaces")
  networkInterfaces: option<launchTemplateInstanceNetworkInterfaceSpecificationRequestList>,
  @as("BlockDeviceMappings")
  blockDeviceMappings: option<launchTemplateBlockDeviceMappingRequestList>,
  @as("IamInstanceProfile")
  iamInstanceProfile: option<launchTemplateIamInstanceProfileSpecificationRequest>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("KernelId") kernelId: option<kernelId>,
}
type pathComponentList = array<pathComponent>
type networkInterfaceList = array<networkInterface>
type networkAclList = array<networkAcl>
type launchSpecification = {
  @as("Monitoring") monitoring: option<runInstancesMonitoringEnabled>,
  @as("SubnetId") subnetId: option<string_>,
  @as("RamdiskId") ramdiskId: option<string_>,
  @as("Placement") placement: option<spotPlacement>,
  @as("NetworkInterfaces") networkInterfaces: option<instanceNetworkInterfaceSpecificationList>,
  @as("KeyName") keyName: option<string_>,
  @as("KernelId") kernelId: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("ImageId") imageId: option<string_>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingList>,
  @as("AddressingType") addressingType: option<string_>,
  @as("SecurityGroups") securityGroups: option<groupIdentifierList>,
  @as("UserData") userData: option<string_>,
}
type instanceTypeInfo = {
  @as("SupportedBootModes") supportedBootModes: option<bootModeTypeList>,
  @as("AutoRecoverySupported") autoRecoverySupported: option<autoRecoveryFlag>,
  @as("DedicatedHostsSupported") dedicatedHostsSupported: option<dedicatedHostFlag>,
  @as("BurstablePerformanceSupported")
  burstablePerformanceSupported: option<burstablePerformanceFlag>,
  @as("HibernationSupported") hibernationSupported: option<hibernationFlag>,
  @as("InferenceAcceleratorInfo") inferenceAcceleratorInfo: option<inferenceAcceleratorInfo>,
  @as("PlacementGroupInfo") placementGroupInfo: option<placementGroupInfo>,
  @as("FpgaInfo") fpgaInfo: option<fpgaInfo>,
  @as("GpuInfo") gpuInfo: option<gpuInfo>,
  @as("NetworkInfo") networkInfo: option<networkInfo>,
  @as("EbsInfo") ebsInfo: option<ebsInfo>,
  @as("InstanceStorageInfo") instanceStorageInfo: option<instanceStorageInfo>,
  @as("InstanceStorageSupported") instanceStorageSupported: option<instanceStorageFlag>,
  @as("MemoryInfo") memoryInfo: option<memoryInfo>,
  @as("VCpuInfo") vcpuInfo: option<vcpuInfo>,
  @as("ProcessorInfo") processorInfo: option<processorInfo>,
  @as("Hypervisor") hypervisor: option<instanceTypeHypervisor>,
  @as("BareMetal") bareMetal: option<bareMetalFlag>,
  @as("SupportedVirtualizationTypes") supportedVirtualizationTypes: option<virtualizationTypeList>,
  @as("SupportedRootDeviceTypes") supportedRootDeviceTypes: option<rootDeviceTypeList>,
  @as("SupportedUsageClasses") supportedUsageClasses: option<usageClassTypeList>,
  @as("FreeTierEligible") freeTierEligible: option<freeTierEligibleFlag>,
  @as("CurrentGeneration") currentGeneration: option<currentGenerationFlag>,
  @as("InstanceType") instanceType: option<instanceType>,
}
type instanceStatusList = array<instanceStatus>
type instanceNetworkInterfaceList = array<instanceNetworkInterface>
type importImageTaskList = array<importImageTask>
type imageList = array<image>
type hostList = array<host>
type fleetLaunchTemplateConfigListRequest = array<fleetLaunchTemplateConfigRequest>
type fleetLaunchTemplateConfigList = array<fleetLaunchTemplateConfig>
type endpointSet = array<clientVpnEndpoint>
type enableFastSnapshotRestoreErrorSet = array<enableFastSnapshotRestoreErrorItem>
type disableFastSnapshotRestoreErrorSet = array<disableFastSnapshotRestoreErrorItem>
type dhcpOptions = {
  @as("Tags") tags: option<tagList_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("DhcpOptionsId") dhcpOptionsId: option<string_>,
  @as("DhcpConfigurations") dhcpConfigurations: option<dhcpConfigurationList>,
}
type describeFleetsInstancesSet = array<describeFleetsInstances>
type describeFleetsErrorSet = array<describeFleetError>
type createFleetInstancesSet = array<createFleetInstance>
type createFleetErrorsSet = array<createFleetError>
type conversionTask = {
  @as("Tags") tags: option<tagList_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("State") state: option<conversionTaskState>,
  @as("ImportVolume") importVolume: option<importVolumeTaskDetails>,
  @as("ImportInstance") importInstance: option<importInstanceTaskDetails>,
  @as("ExpirationTime") expirationTime: option<string_>,
  @as("ConversionTaskId") conversionTaskId: option<string_>,
}
type vpnConnection = {
  @as("VgwTelemetry") vgwTelemetry: option<vgwTelemetryList>,
  @as("Tags") tags: option<tagList_>,
  @as("Routes") routes: option<vpnStaticRouteList>,
  @as("Options") options: option<vpnConnectionOptions>,
  @as("TransitGatewayId") transitGatewayId: option<string_>,
  @as("VpnGatewayId") vpnGatewayId: option<string_>,
  @as("VpnConnectionId") vpnConnectionId: option<string_>,
  @as("Type") type_: option<gatewayType>,
  @as("State") state: option<vpnState>,
  @as("Category") category: option<string_>,
  @as("CustomerGatewayId") customerGatewayId: option<string_>,
  @as("CustomerGatewayConfiguration") customerGatewayConfiguration: option<string_>,
}
type staleSecurityGroupSet = array<staleSecurityGroup>
type spotInstanceRequest = {
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("ValidFrom") validFrom: option<dateTime>,
  @as("Type") type_: option<spotInstanceType>,
  @as("Tags") tags: option<tagList_>,
  @as("Status") status: option<spotInstanceStatus>,
  @as("State") state: option<spotInstanceState>,
  @as("SpotPrice") spotPrice: option<string_>,
  @as("SpotInstanceRequestId") spotInstanceRequestId: option<string_>,
  @as("ProductDescription") productDescription: option<riproductDescription>,
  @as("LaunchedAvailabilityZone") launchedAvailabilityZone: option<string_>,
  @as("LaunchSpecification") launchSpecification: option<launchSpecification>,
  @as("LaunchGroup") launchGroup: option<string_>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("Fault") fault: option<spotInstanceStateFault>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("BlockDurationMinutes") blockDurationMinutes: option<integer_>,
  @as("AvailabilityZoneGroup") availabilityZoneGroup: option<string_>,
  @as("ActualBlockHourlyPrice") actualBlockHourlyPrice: option<string_>,
}
type securityGroupList = array<securityGroup>
type networkInsightsAnalysis = {
  @as("Tags") tags: option<tagList_>,
  @as("AlternatePathHints") alternatePathHints: option<alternatePathHintList>,
  @as("Explanations") explanations: option<explanationList>,
  @as("ReturnPathComponents") returnPathComponents: option<pathComponentList>,
  @as("ForwardPathComponents") forwardPathComponents: option<pathComponentList>,
  @as("NetworkPathFound") networkPathFound: option<boolean_>,
  @as("StatusMessage") statusMessage: option<string_>,
  @as("Status") status: option<analysisStatus>,
  @as("StartDate") startDate: option<millisecondDateTime>,
  @as("FilterInArns") filterInArns: option<arnList>,
  @as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>,
  @as("NetworkInsightsAnalysisArn") networkInsightsAnalysisArn: option<resourceArn>,
  @as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: option<networkInsightsAnalysisId>,
}
type launchTemplateVersion = {
  @as("LaunchTemplateData") launchTemplateData: option<responseLaunchTemplateData>,
  @as("DefaultVersion") defaultVersion: option<boolean_>,
  @as("CreatedBy") createdBy: option<string_>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("VersionDescription") versionDescription: option<versionDescription>,
  @as("VersionNumber") versionNumber: option<long>,
  @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
  @as("LaunchTemplateId") launchTemplateId: option<string_>,
}
type launchSpecsList = array<spotFleetLaunchSpecification>
type instanceTypeInfoList = array<instanceTypeInfo>
type instance = {
  @as("BootMode") bootMode: option<bootModeValues>,
  @as("EnclaveOptions") enclaveOptions: option<enclaveOptions>,
  @as("MetadataOptions") metadataOptions: option<instanceMetadataOptionsResponse>,
  @as("Licenses") licenses: option<licenseList>,
  @as("HibernationOptions") hibernationOptions: option<hibernationOptions>,
  @as("CapacityReservationSpecification")
  capacityReservationSpecification: option<capacityReservationSpecificationResponse>,
  @as("CapacityReservationId") capacityReservationId: option<string_>,
  @as("CpuOptions") cpuOptions: option<cpuOptions>,
  @as("VirtualizationType") virtualizationType: option<virtualizationType>,
  @as("Tags") tags: option<tagList_>,
  @as("StateReason") stateReason: option<stateReason>,
  @as("SriovNetSupport") sriovNetSupport: option<string_>,
  @as("SpotInstanceRequestId") spotInstanceRequestId: option<string_>,
  @as("SourceDestCheck") sourceDestCheck: option<boolean_>,
  @as("SecurityGroups") securityGroups: option<groupIdentifierList>,
  @as("RootDeviceType") rootDeviceType: option<deviceType>,
  @as("RootDeviceName") rootDeviceName: option<string_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("NetworkInterfaces") networkInterfaces: option<instanceNetworkInterfaceList>,
  @as("ElasticInferenceAcceleratorAssociations")
  elasticInferenceAcceleratorAssociations: option<elasticInferenceAcceleratorAssociationList>,
  @as("ElasticGpuAssociations") elasticGpuAssociations: option<elasticGpuAssociationList>,
  @as("InstanceLifecycle") instanceLifecycle: option<instanceLifecycleType>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfile>,
  @as("Hypervisor") hypervisor: option<hypervisorType>,
  @as("EnaSupport") enaSupport: option<boolean_>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("ClientToken") clientToken: option<string_>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<instanceBlockDeviceMappingList>,
  @as("Architecture") architecture: option<architectureValues>,
  @as("VpcId") vpcId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("StateTransitionReason") stateTransitionReason: option<string_>,
  @as("State") state: option<instanceState>,
  @as("RamdiskId") ramdiskId: option<string_>,
  @as("PublicIpAddress") publicIpAddress: option<string_>,
  @as("PublicDnsName") publicDnsName: option<string_>,
  @as("ProductCodes") productCodes: option<productCodeList>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("Platform") platform: option<platformValues>,
  @as("Placement") placement: option<placement>,
  @as("Monitoring") monitoring: option<monitoring>,
  @as("LaunchTime") launchTime: option<dateTime>,
  @as("KeyName") keyName: option<string_>,
  @as("KernelId") kernelId: option<string_>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("InstanceId") instanceId: option<string_>,
  @as("ImageId") imageId: option<string_>,
  @as("AmiLaunchIndex") amiLaunchIndex: option<integer_>,
}
type fleetData = {
  @as("Instances") instances: option<describeFleetsInstancesSet>,
  @as("Errors") errors: option<describeFleetsErrorSet>,
  @as("Tags") tags: option<tagList_>,
  @as("OnDemandOptions") onDemandOptions: option<onDemandOptions>,
  @as("SpotOptions") spotOptions: option<spotOptions>,
  @as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: option<boolean_>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("ValidFrom") validFrom: option<dateTime>,
  @as("Type") type_: option<fleetType>,
  @as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: option<boolean_>,
  @as("TargetCapacitySpecification")
  targetCapacitySpecification: option<targetCapacitySpecification>,
  @as("LaunchTemplateConfigs") launchTemplateConfigs: option<fleetLaunchTemplateConfigList>,
  @as("FulfilledOnDemandCapacity") fulfilledOnDemandCapacity: option<double>,
  @as("FulfilledCapacity") fulfilledCapacity: option<double>,
  @as("ExcessCapacityTerminationPolicy")
  excessCapacityTerminationPolicy: option<fleetExcessCapacityTerminationPolicy>,
  @as("ClientToken") clientToken: option<string_>,
  @as("FleetState") fleetState: option<fleetStateCode>,
  @as("FleetId") fleetId: option<fleetId>,
  @as("CreateTime") createTime: option<dateTime>,
  @as("ActivityStatus") activityStatus: option<fleetActivityStatus>,
}
type dhcpOptionsList = array<dhcpOptions>
type describeConversionTaskList = array<conversionTask>
type vpnConnectionList = array<vpnConnection>
type spotInstanceRequestList = array<spotInstanceRequest>
type spotFleetRequestConfigData = {
  @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
  @as("InstancePoolsToUseCount") instancePoolsToUseCount: option<integer_>,
  @as("LoadBalancersConfig") loadBalancersConfig: option<loadBalancersConfig>,
  @as("InstanceInterruptionBehavior")
  instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
  @as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: option<boolean_>,
  @as("ValidUntil") validUntil: option<dateTime>,
  @as("ValidFrom") validFrom: option<dateTime>,
  @as("Type") type_: option<fleetType>,
  @as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: option<boolean_>,
  @as("SpotMaxTotalPrice") spotMaxTotalPrice: option<string_>,
  @as("OnDemandMaxTotalPrice") onDemandMaxTotalPrice: option<string_>,
  @as("OnDemandTargetCapacity") onDemandTargetCapacity: option<integer_>,
  @as("TargetCapacity") targetCapacity: integer_,
  @as("SpotPrice") spotPrice: option<string_>,
  @as("LaunchTemplateConfigs") launchTemplateConfigs: option<launchTemplateConfigList>,
  @as("LaunchSpecifications") launchSpecifications: option<launchSpecsList>,
  @as("IamFleetRole") iamFleetRole: string_,
  @as("OnDemandFulfilledCapacity") onDemandFulfilledCapacity: option<double>,
  @as("FulfilledCapacity") fulfilledCapacity: option<double>,
  @as("ExcessCapacityTerminationPolicy")
  excessCapacityTerminationPolicy: option<excessCapacityTerminationPolicy>,
  @as("ClientToken") clientToken: option<string_>,
  @as("SpotMaintenanceStrategies") spotMaintenanceStrategies: option<spotMaintenanceStrategies>,
  @as("OnDemandAllocationStrategy") onDemandAllocationStrategy: option<onDemandAllocationStrategy>,
  @as("AllocationStrategy") allocationStrategy: option<allocationStrategy>,
}
type networkInsightsAnalysisList = array<networkInsightsAnalysis>
type launchTemplateVersionSet = array<launchTemplateVersion>
type instanceList = array<instance>
type fleetSet = array<fleetData>
type spotFleetRequestConfig = {
  @as("Tags") tags: option<tagList_>,
  @as("SpotFleetRequestState") spotFleetRequestState: option<batchState>,
  @as("SpotFleetRequestId") spotFleetRequestId: option<string_>,
  @as("SpotFleetRequestConfig") spotFleetRequestConfig: option<spotFleetRequestConfigData>,
  @as("CreateTime") createTime: option<millisecondDateTime>,
  @as("ActivityStatus") activityStatus: option<activityStatus>,
}
type reservation = {
  @as("ReservationId") reservationId: option<string_>,
  @as("RequesterId") requesterId: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
  @as("Instances") instances: option<instanceList>,
  @as("Groups") groups: option<groupIdentifierList>,
}
type spotFleetRequestConfigSet = array<spotFleetRequestConfig>
type reservationList = array<reservation>

module StartVpcEndpointServicePrivateDnsVerification = {
  type t
  type request = {
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("ReturnValue") returnValue: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "StartVpcEndpointServicePrivateDnsVerificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendDiagnosticInterrupt = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceId") instanceId: instanceId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "SendDiagnosticInterruptCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestoreAddressToClassic = {
  type t
  type request = {
    @as("PublicIp") publicIp: string_,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Status") status: option<status>,
    @as("PublicIp") publicIp: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RestoreAddressToClassicCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetSnapshotAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SnapshotId") snapshotId: snapshotId,
    @as("Attribute") attribute: snapshotAttributeName,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetSnapshotAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetNetworkInterfaceAttribute = {
  type t
  type request = {
    @as("SourceDestCheck") sourceDestCheck: option<string_>,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ResetNetworkInterfaceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetInstanceAttribute = {
  type t
  type request = {
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Attribute") attribute: instanceAttributeName,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetInstanceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetImageAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ImageId") imageId: imageId,
    @as("Attribute") attribute: resetImageAttributeName,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetFpgaImageAttribute = {
  type t
  type request = {
    @as("Attribute") attribute: option<resetFpgaImageAttributeName>,
    @as("FpgaImageId") fpgaImageId: fpgaImageId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetFpgaImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetEbsDefaultKmsKeyId = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("KmsKeyId") kmsKeyId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetEbsDefaultKmsKeyIdCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceRoute = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
    @as("RouteTableId") routeTableId: routeTableId,
    @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
    @as("CarrierGatewayId") carrierGatewayId: option<carrierGatewayId>,
    @as("LocalGatewayId") localGatewayId: option<localGatewayId>,
    @as("TransitGatewayId") transitGatewayId: option<transitGatewayId>,
    @as("NatGatewayId") natGatewayId: option<natGatewayId>,
    @as("LocalTarget") localTarget: option<boolean_>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("GatewayId") gatewayId: option<routeGatewayId>,
    @as("EgressOnlyInternetGatewayId")
    egressOnlyInternetGatewayId: option<egressOnlyInternetGatewayId>,
    @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationPrefixListId") destinationPrefixListId: option<prefixListResourceId>,
    @as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: option<string_>,
    @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ReplaceRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ReplaceNetworkAclAssociation = {
  type t
  type request = {
    @as("NetworkAclId") networkAclId: networkAclId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AssociationId") associationId: networkAclAssociationId,
  }
  type response = {@as("NewAssociationId") newAssociationId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ReplaceNetworkAclAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReleaseAddress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
    @as("PublicIp") publicIp: option<string_>,
    @as("AllocationId") allocationId: option<allocationId>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ReleaseAddressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectVpcPeeringConnection = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RejectVpcPeeringConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MoveAddressToVpc = {
  type t
  type request = {
    @as("PublicIp") publicIp: string_,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Status") status: option<status>,
    @as("AllocationId") allocationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "MoveAddressToVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcTenancy = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceTenancy") instanceTenancy: vpcTenancy,
    @as("VpcId") vpcId: vpcId,
  }
  type response = {@as("ReturnValue") returnValue: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVpcTenancyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstancePlacement = {
  type t
  type request = {
    @as("HostResourceGroupArn") hostResourceGroupArn: option<string_>,
    @as("PartitionNumber") partitionNumber: option<integer_>,
    @as("Tenancy") tenancy: option<hostTenancy>,
    @as("InstanceId") instanceId: instanceId,
    @as("HostId") hostId: option<dedicatedHostId>,
    @as("GroupName") groupName: option<placementGroupName>,
    @as("Affinity") affinity: option<affinity>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyInstancePlacementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyIdentityIdFormat = {
  type t
  type request = {
    @as("UseLongIds") useLongIds: boolean_,
    @as("Resource") resource: string_,
    @as("PrincipalArn") principalArn: string_,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyIdentityIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyIdFormat = {
  type t
  type request = {
    @as("UseLongIds") useLongIds: boolean_,
    @as("Resource") resource: string_,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyEbsDefaultKmsKeyId = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("KmsKeyId") kmsKeyId: kmsKeyId,
  }
  type response = {@as("KmsKeyId") kmsKeyId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyEbsDefaultKmsKeyIdCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCapacityReservation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Accept") accept: option<boolean_>,
    @as("EndDateType") endDateType: option<endDateType>,
    @as("EndDate") endDate: option<dateTime>,
    @as("InstanceCount") instanceCount: option<integer_>,
    @as("CapacityReservationId") capacityReservationId: capacityReservationId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyCapacityReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyAvailabilityZoneGroup = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("OptInStatus") optInStatus: modifyAvailabilityZoneOptInStatus,
    @as("GroupName") groupName: string_,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyAvailabilityZoneGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportClientVpnClientCertificateRevocationList = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CertificateRevocationList") certificateRevocationList: string_,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ImportClientVpnClientCertificateRevocationListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSerialConsoleAccessStatus = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetSerialConsoleAccessStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPasswordData = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("Timestamp") timestamp_: option<dateTime>,
    @as("PasswordData") passwordData: option<string_>,
    @as("InstanceId") instanceId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetPasswordDataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEbsEncryptionByDefault = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("EbsEncryptionByDefault") ebsEncryptionByDefault: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetEbsEncryptionByDefaultCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEbsDefaultKmsKeyId = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("KmsKeyId") kmsKeyId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetEbsDefaultKmsKeyIdCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConsoleScreenshot = {
  type t
  type request = {
    @as("WakeUp") wakeUp: option<boolean_>,
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("InstanceId") instanceId: option<string_>,
    @as("ImageData") imageData: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetConsoleScreenshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConsoleOutput = {
  type t
  type request = {
    @as("Latest") latest: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("Timestamp") timestamp_: option<dateTime>,
    @as("Output") output: option<string_>,
    @as("InstanceId") instanceId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetConsoleOutputCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportClientVpnClientConfiguration = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("ClientConfiguration") clientConfiguration: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ExportClientVpnClientConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableVpcClassicLinkDnsSupport = {
  type t
  type request = {@as("VpcId") vpcId: option<vpcId>}
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableVpcClassicLinkDnsSupportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableVpcClassicLink = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "EnableVpcClassicLinkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableVolumeIO = {
  type t
  type request = {
    @as("VolumeId") volumeId: volumeId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "EnableVolumeIOCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableVgwRoutePropagation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RouteTableId") routeTableId: routeTableId,
    @as("GatewayId") gatewayId: vpnGatewayId,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableVgwRoutePropagationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableSerialConsoleAccess = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableSerialConsoleAccessCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableEbsEncryptionByDefault = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("EbsEncryptionByDefault") ebsEncryptionByDefault: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableEbsEncryptionByDefaultCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateRouteTable = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AssociationId") associationId: routeTableAssociationId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DisassociateRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateEnclaveCertificateIamRole = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RoleArn") roleArn: option<resourceArn>,
    @as("CertificateArn") certificateArn: option<resourceArn>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateEnclaveCertificateIamRoleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateAddress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("PublicIp") publicIp: option<string_>,
    @as("AssociationId") associationId: option<elasticIpAssociationId>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DisassociateAddressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableVpcClassicLinkDnsSupport = {
  type t
  type request = {@as("VpcId") vpcId: option<vpcId>}
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableVpcClassicLinkDnsSupportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableVpcClassicLink = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DisableVpcClassicLinkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableVgwRoutePropagation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RouteTableId") routeTableId: routeTableId,
    @as("GatewayId") gatewayId: vpnGatewayId,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableVgwRoutePropagationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableSerialConsoleAccess = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableSerialConsoleAccessCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableEbsEncryptionByDefault = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("EbsEncryptionByDefault") ebsEncryptionByDefault: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableEbsEncryptionByDefaultCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachVpnGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnGatewayId") vpnGatewayId: vpnGatewayId,
    @as("VpcId") vpcId: vpcId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DetachVpnGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachVolume = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeId") volumeId: volumeId,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("Force") force: option<boolean_>,
    @as("Device") device: option<string_>,
  }
  type response = volumeAttachment
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DetachVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachNetworkInterface = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AttachmentId") attachmentId: networkInterfaceAttachmentId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DetachNetworkInterfaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachInternetGateway = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("InternetGatewayId") internetGatewayId: internetGatewayId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DetachInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachClassicLinkVpc = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DetachClassicLinkVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterImage = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ImageId") imageId: imageId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeregisterImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpnGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnGatewayId") vpnGatewayId: vpnGatewayId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteVpnGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpnConnectionRoute = {
  type t
  type request = {
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteVpnConnectionRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpnConnection = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteVpnConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVpcPeeringConnection = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteVpcPeeringConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpc = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpcId") vpcId: vpcId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteVolume = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeId") volumeId: volumeId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTrafficMirrorTarget = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorTargetId") trafficMirrorTargetId: trafficMirrorTargetId,
  }
  type response = {@as("TrafficMirrorTargetId") trafficMirrorTargetId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTrafficMirrorTargetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrafficMirrorSession = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorSessionId") trafficMirrorSessionId: trafficMirrorSessionId,
  }
  type response = {@as("TrafficMirrorSessionId") trafficMirrorSessionId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTrafficMirrorSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrafficMirrorFilterRule = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
  }
  type response = {@as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTrafficMirrorFilterRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrafficMirrorFilter = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorFilterId") trafficMirrorFilterId: trafficMirrorFilterId,
  }
  type response = {@as("TrafficMirrorFilterId") trafficMirrorFilterId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTrafficMirrorFilterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSubnet = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetId") subnetId: subnetId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteSubnetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSpotDatafeedSubscription = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteSpotDatafeedSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSnapshot = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SnapshotId") snapshotId: snapshotId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSecurityGroup = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("GroupName") groupName: option<securityGroupName>,
    @as("GroupId") groupId: option<securityGroupId>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRouteTable = {
  type t
  type request = {
    @as("RouteTableId") routeTableId: routeTableId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoute = {
  type t
  type request = {
    @as("RouteTableId") routeTableId: routeTableId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationPrefixListId") destinationPrefixListId: option<prefixListResourceId>,
    @as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: option<string_>,
    @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePlacementGroup = {
  type t
  type request = {
    @as("GroupName") groupName: placementGroupName,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeletePlacementGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNetworkInterfacePermission = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Force") force: option<boolean_>,
    @as("NetworkInterfacePermissionId") networkInterfacePermissionId: networkInterfacePermissionId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteNetworkInterfacePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNetworkInterface = {
  type t
  type request = {
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteNetworkInterfaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNetworkInsightsPath = {
  type t
  type request = {
    @as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteNetworkInsightsPathCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNetworkInsightsAnalysis = {
  type t
  type request = {
    @as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: networkInsightsAnalysisId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: option<networkInsightsAnalysisId>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteNetworkInsightsAnalysisCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNetworkAclEntry = {
  type t
  type request = {
    @as("RuleNumber") ruleNumber: integer_,
    @as("NetworkAclId") networkAclId: networkAclId,
    @as("Egress") egress: boolean_,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteNetworkAclEntryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNetworkAcl = {
  type t
  type request = {
    @as("NetworkAclId") networkAclId: networkAclId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteNetworkAclCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNatGateway = {
  type t
  type request = {
    @as("NatGatewayId") natGatewayId: natGatewayId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("NatGatewayId") natGatewayId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteNatGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteKeyPair = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("KeyPairId") keyPairId: option<keyPairId>,
    @as("KeyName") keyName: option<keyPairName>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInternetGateway = {
  type t
  type request = {
    @as("InternetGatewayId") internetGatewayId: internetGatewayId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFpgaImage = {
  type t
  type request = {
    @as("FpgaImageId") fpgaImageId: fpgaImageId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteFpgaImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEgressOnlyInternetGateway = {
  type t
  type request = {
    @as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("ReturnCode") returnCode: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteEgressOnlyInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDhcpOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DhcpOptionsId") dhcpOptionsId: dhcpOptionsId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteDhcpOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomerGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CustomerGatewayId") customerGatewayId: customerGatewayId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteCustomerGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateVpnConnectionRoute = {
  type t
  type request = {
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateVpnConnectionRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateRoute = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
    @as("RouteTableId") routeTableId: routeTableId,
    @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
    @as("CarrierGatewayId") carrierGatewayId: option<carrierGatewayId>,
    @as("LocalGatewayId") localGatewayId: option<localGatewayId>,
    @as("TransitGatewayId") transitGatewayId: option<transitGatewayId>,
    @as("NatGatewayId") natGatewayId: option<natGatewayId>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("GatewayId") gatewayId: option<routeGatewayId>,
    @as("EgressOnlyInternetGatewayId")
    egressOnlyInternetGatewayId: option<egressOnlyInternetGatewayId>,
    @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationPrefixListId") destinationPrefixListId: option<prefixListResourceId>,
    @as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: option<string_>,
    @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyImage = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationOutpostArn") destinationOutpostArn: option<string_>,
    @as("SourceRegion") sourceRegion: string_,
    @as("SourceImageId") sourceImageId: string_,
    @as("Name") name: string_,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {@as("ImageId") imageId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CopyImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyFpgaImage = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("SourceRegion") sourceRegion: string_,
    @as("Name") name: option<string_>,
    @as("Description") description: option<string_>,
    @as("SourceFpgaImageId") sourceFpgaImageId: string_,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("FpgaImageId") fpgaImageId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CopyFpgaImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConfirmProductInstance = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ProductCode") productCode: string_,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("Return") return: option<boolean_>,
    @as("OwnerId") ownerId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ConfirmProductInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelImportTask = {
  type t
  type request = {
    @as("ImportTaskId") importTaskId: option<importTaskId>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("CancelReason") cancelReason: option<string_>,
  }
  type response = {
    @as("State") state: option<string_>,
    @as("PreviousState") previousState: option<string_>,
    @as("ImportTaskId") importTaskId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CancelImportTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelExportTask = {
  type t
  type request = {@as("ExportTaskId") exportTaskId: exportVmTaskId}

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CancelExportTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelConversionTask = {
  type t
  type request = {
    @as("ReasonMessage") reasonMessage: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ConversionTaskId") conversionTaskId: conversionTaskId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CancelConversionTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelCapacityReservation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CapacityReservationId") capacityReservationId: capacityReservationId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CancelCapacityReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachVolume = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeId") volumeId: volumeId,
    @as("InstanceId") instanceId: instanceId,
    @as("Device") device: string_,
  }
  type response = volumeAttachment
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AttachVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachNetworkInterface = {
  type t
  type request = {
    @as("NetworkCardIndex") networkCardIndex: option<integer_>,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DeviceIndex") deviceIndex: integer_,
  }
  type response = {
    @as("NetworkCardIndex") networkCardIndex: option<integer_>,
    @as("AttachmentId") attachmentId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AttachNetworkInterfaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachInternetGateway = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("InternetGatewayId") internetGatewayId: internetGatewayId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AttachInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateEnclaveCertificateIamRole = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RoleArn") roleArn: option<resourceArn>,
    @as("CertificateArn") certificateArn: option<resourceArn>,
  }
  type response = {
    @as("EncryptionKmsKeyId") encryptionKmsKeyId: option<string_>,
    @as("CertificateS3ObjectKey") certificateS3ObjectKey: option<string_>,
    @as("CertificateS3BucketName") certificateS3BucketName: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateEnclaveCertificateIamRoleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateDhcpOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpcId") vpcId: vpcId,
    @as("DhcpOptionsId") dhcpOptionsId: defaultingDhcpOptionsId,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AssociateDhcpOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateAddress = {
  type t
  type request = {
    @as("PrivateIpAddress") privateIpAddress: option<string_>,
    @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AllowReassociation") allowReassociation: option<boolean_>,
    @as("PublicIp") publicIp: option<string_>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("AllocationId") allocationId: option<allocationId>,
  }
  type response = {@as("AssociationId") associationId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AssociateAddressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WithdrawByoipCidr = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Cidr") cidr: string_,
  }
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "WithdrawByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnassignPrivateIpAddresses = {
  type t
  type request = {
    @as("PrivateIpAddresses") privateIpAddresses: privateIpAddressStringList,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "UnassignPrivateIpAddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnassignIpv6Addresses = {
  type t
  type request = {
    @as("Ipv6Addresses") ipv6Addresses: ipv6AddressList,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  }
  type response = {
    @as("UnassignedIpv6Addresses") unassignedIpv6Addresses: option<ipv6AddressList>,
    @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "UnassignIpv6AddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeClientVpnIngress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RevokeAllGroups") revokeAllGroups: option<boolean_>,
    @as("AccessGroupId") accessGroupId: option<string_>,
    @as("TargetNetworkCidr") targetNetworkCidr: string_,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Status") status: option<clientVpnAuthorizationRuleStatus>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RevokeClientVpnIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReportInstanceStatus = {
  type t
  type request = {
    @as("Status") status: reportStatusType,
    @as("StartTime") startTime: option<dateTime>,
    @as("ReasonCodes") reasonCodes: reasonCodesList,
    @as("Instances") instances: instanceIdStringList,
    @as("EndTime") endTime: option<dateTime>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ReportInstanceStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ReplaceRouteTableAssociation = {
  type t
  type request = {
    @as("RouteTableId") routeTableId: routeTableId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AssociationId") associationId: routeTableAssociationId,
  }
  type response = {
    @as("AssociationState") associationState: option<routeTableAssociationState>,
    @as("NewAssociationId") newAssociationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ReplaceRouteTableAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceNetworkAclEntry = {
  type t
  type request = {
    @as("RuleNumber") ruleNumber: integer_,
    @as("RuleAction") ruleAction: ruleAction,
    @as("Protocol") protocol: string_,
    @as("PortRange") portRange: option<portRange>,
    @as("NetworkAclId") networkAclId: networkAclId,
    @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
    @as("IcmpTypeCode") icmpTypeCode: option<icmpTypeCode>,
    @as("Egress") egress: boolean_,
    @as("DryRun") dryRun: option<boolean_>,
    @as("CidrBlock") cidrBlock: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ReplaceNetworkAclEntryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RebootInstances = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RebootInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PurchaseReservedInstancesOffering = {
  type t
  type request = {
    @as("PurchaseTime") purchaseTime: option<dateTime>,
    @as("LimitPrice") limitPrice: option<reservedInstanceLimitPrice>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ReservedInstancesOfferingId") reservedInstancesOfferingId: reservedInstancesOfferingId,
    @as("InstanceCount") instanceCount: integer_,
  }
  type response = {@as("ReservedInstancesId") reservedInstancesId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "PurchaseReservedInstancesOfferingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcPeeringConnectionOptions = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
    @as("RequesterPeeringConnectionOptions")
    requesterPeeringConnectionOptions: option<peeringConnectionOptionsRequest>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AccepterPeeringConnectionOptions")
    accepterPeeringConnectionOptions: option<peeringConnectionOptionsRequest>,
  }
  type response = {
    @as("RequesterPeeringConnectionOptions")
    requesterPeeringConnectionOptions: option<peeringConnectionOptions>,
    @as("AccepterPeeringConnectionOptions")
    accepterPeeringConnectionOptions: option<peeringConnectionOptions>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpcPeeringConnectionOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcEndpointServicePermissions = {
  type t
  type request = {
    @as("RemoveAllowedPrincipals") removeAllowedPrincipals: option<valueStringList>,
    @as("AddAllowedPrincipals") addAllowedPrincipals: option<valueStringList>,
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("ReturnValue") returnValue: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpcEndpointServicePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcEndpointServiceConfiguration = {
  type t
  type request = {
    @as("RemoveGatewayLoadBalancerArns") removeGatewayLoadBalancerArns: option<valueStringList>,
    @as("AddGatewayLoadBalancerArns") addGatewayLoadBalancerArns: option<valueStringList>,
    @as("RemoveNetworkLoadBalancerArns") removeNetworkLoadBalancerArns: option<valueStringList>,
    @as("AddNetworkLoadBalancerArns") addNetworkLoadBalancerArns: option<valueStringList>,
    @as("AcceptanceRequired") acceptanceRequired: option<boolean_>,
    @as("RemovePrivateDnsName") removePrivateDnsName: option<boolean_>,
    @as("PrivateDnsName") privateDnsName: option<string_>,
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpcEndpointServiceConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcEndpointConnectionNotification = {
  type t
  type request = {
    @as("ConnectionEvents") connectionEvents: option<valueStringList>,
    @as("ConnectionNotificationArn") connectionNotificationArn: option<string_>,
    @as("ConnectionNotificationId") connectionNotificationId: connectionNotificationId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("ReturnValue") returnValue: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpcEndpointConnectionNotificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcEndpoint = {
  type t
  type request = {
    @as("PrivateDnsEnabled") privateDnsEnabled: option<boolean_>,
    @as("RemoveSecurityGroupIds") removeSecurityGroupIds: option<vpcEndpointSecurityGroupIdList>,
    @as("AddSecurityGroupIds") addSecurityGroupIds: option<vpcEndpointSecurityGroupIdList>,
    @as("RemoveSubnetIds") removeSubnetIds: option<vpcEndpointSubnetIdList>,
    @as("AddSubnetIds") addSubnetIds: option<vpcEndpointSubnetIdList>,
    @as("RemoveRouteTableIds") removeRouteTableIds: option<vpcEndpointRouteTableIdList>,
    @as("AddRouteTableIds") addRouteTableIds: option<vpcEndpointRouteTableIdList>,
    @as("PolicyDocument") policyDocument: option<string_>,
    @as("ResetPolicy") resetPolicy: option<boolean_>,
    @as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVpcEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpcAttribute = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("EnableDnsSupport") enableDnsSupport: option<attributeBooleanValue>,
    @as("EnableDnsHostnames") enableDnsHostnames: option<attributeBooleanValue>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVpcAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyVolumeAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeId") volumeId: volumeId,
    @as("AutoEnableIO") autoEnableIO: option<attributeBooleanValue>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVolumeAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyVolume = {
  type t
  type request = {
    @as("MultiAttachEnabled") multiAttachEnabled: option<boolean_>,
    @as("Throughput") throughput: option<integer_>,
    @as("Iops") iops: option<integer_>,
    @as("VolumeType") volumeType: option<volumeType>,
    @as("Size") size: option<integer_>,
    @as("VolumeId") volumeId: volumeId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("VolumeModification") volumeModification: option<volumeModification>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySubnetAttribute = {
  type t
  type request = {
    @as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<coipPoolId>,
    @as("MapCustomerOwnedIpOnLaunch") mapCustomerOwnedIpOnLaunch: option<attributeBooleanValue>,
    @as("SubnetId") subnetId: subnetId,
    @as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: option<attributeBooleanValue>,
    @as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: option<attributeBooleanValue>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifySubnetAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyNetworkInterfaceAttribute = {
  type t
  type request = {
    @as("SourceDestCheck") sourceDestCheck: option<attributeBooleanValue>,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("Groups") groups: option<securityGroupIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<attributeValue>,
    @as("Attachment") attachment: option<networkInterfaceAttachmentChanges>,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyNetworkInterfaceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyInstanceMetadataOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("HttpEndpoint") httpEndpoint: option<instanceMetadataEndpointState>,
    @as("HttpPutResponseHopLimit") httpPutResponseHopLimit: option<integer_>,
    @as("HttpTokens") httpTokens: option<httpTokensState>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("InstanceMetadataOptions") instanceMetadataOptions: option<instanceMetadataOptionsResponse>,
    @as("InstanceId") instanceId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyInstanceMetadataOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceEventStartTime = {
  type t
  type request = {
    @as("NotBefore") notBefore: dateTime,
    @as("InstanceEventId") instanceEventId: string_,
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Event") event: option<instanceStatusEvent>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyInstanceEventStartTimeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDefaultCreditSpecification = {
  type t
  type request = {
    @as("CpuCredits") cpuCredits: string_,
    @as("InstanceFamily") instanceFamily: unlimitedSupportedInstanceFamily,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("InstanceFamilyCreditSpecification")
    instanceFamilyCreditSpecification: option<instanceFamilyCreditSpecification>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyDefaultCreditSpecificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDefaultCreditSpecification = {
  type t
  type request = {
    @as("InstanceFamily") instanceFamily: unlimitedSupportedInstanceFamily,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("InstanceFamilyCreditSpecification")
    instanceFamilyCreditSpecification: option<instanceFamilyCreditSpecification>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetDefaultCreditSpecificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportClientVpnClientCertificateRevocationList = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("Status") status: option<clientCertificateRevocationListStatus>,
    @as("CertificateRevocationList") certificateRevocationList: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ExportClientVpnClientCertificateRevocationListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableTransitGatewayRouteTablePropagation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("Propagation") propagation: option<transitGatewayPropagation>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableTransitGatewayRouteTablePropagationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTransitGatewayRouteTable = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("Association") association: option<transitGatewayAssociation>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateTransitGatewayRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateClientVpnTargetNetwork = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AssociationId") associationId: clientVpnAssociationId,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("Status") status: option<associationStatus>,
    @as("AssociationId") associationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateClientVpnTargetNetworkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableTransitGatewayRouteTablePropagation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("Propagation") propagation: option<transitGatewayPropagation>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableTransitGatewayRouteTablePropagationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpcId") vpcId: vpcId,
    @as("Attribute") attribute: vpcAttributeName,
  }
  type response = {
    @as("EnableDnsSupport") enableDnsSupport: option<attributeBooleanValue>,
    @as("EnableDnsHostnames") enableDnsHostnames: option<attributeBooleanValue>,
    @as("VpcId") vpcId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpcAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprovisionByoipCidr = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Cidr") cidr: string_,
  }
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeprovisionByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLocalGatewayRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }
  type response = {@as("Route") route: option<localGatewayRoute>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteLocalGatewayRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteClientVpnRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
    @as("TargetVpcSubnetId") targetVpcSubnetId: option<subnetId>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Status") status: option<clientVpnRouteStatus>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteClientVpnRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteClientVpnEndpoint = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Status") status: option<clientVpnEndpointStatus>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteClientVpnEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkAclEntry = {
  type t
  type request = {
    @as("RuleNumber") ruleNumber: integer_,
    @as("RuleAction") ruleAction: ruleAction,
    @as("Protocol") protocol: string_,
    @as("PortRange") portRange: option<portRange>,
    @as("NetworkAclId") networkAclId: networkAclId,
    @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
    @as("IcmpTypeCode") icmpTypeCode: option<icmpTypeCode>,
    @as("Egress") egress: boolean_,
    @as("DryRun") dryRun: option<boolean_>,
    @as("CidrBlock") cidrBlock: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateNetworkAclEntryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateLocalGatewayRoute = {
  type t
  type request = {
    @as("LocalGatewayVirtualInterfaceGroupId")
    localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }
  type response = {@as("Route") route: option<localGatewayRoute>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateLocalGatewayRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClientVpnRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("Description") description: option<string_>,
    @as("TargetVpcSubnetId") targetVpcSubnetId: subnetId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Status") status: option<clientVpnRouteStatus>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateClientVpnRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeClientVpnIngress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("Description") description: option<string_>,
    @as("AuthorizeAllGroups") authorizeAllGroups: option<boolean_>,
    @as("AccessGroupId") accessGroupId: option<string_>,
    @as("TargetNetworkCidr") targetNetworkCidr: string_,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Status") status: option<clientVpnAuthorizationRuleStatus>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AuthorizeClientVpnIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachVpnGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnGatewayId") vpnGatewayId: vpnGatewayId,
    @as("VpcId") vpcId: vpcId,
  }
  type response = {@as("VpcAttachment") vpcAttachment: option<vpcAttachment>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AttachVpnGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachClassicLinkVpc = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("InstanceId") instanceId: instanceId,
    @as("Groups") groups: groupIdStringList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AttachClassicLinkVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTransitGatewayRouteTable = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("Association") association: option<transitGatewayAssociation>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateTransitGatewayRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateRouteTable = {
  type t
  type request = {
    @as("GatewayId") gatewayId: option<routeGatewayId>,
    @as("SubnetId") subnetId: option<subnetId>,
    @as("RouteTableId") routeTableId: routeTableId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("AssociationState") associationState: option<routeTableAssociationState>,
    @as("AssociationId") associationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AssociateRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateClientVpnTargetNetwork = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("SubnetId") subnetId: subnetId,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("Status") status: option<associationStatus>,
    @as("AssociationId") associationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateClientVpnTargetNetworkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssignIpv6Addresses = {
  type t
  type request = {
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("Ipv6Addresses") ipv6Addresses: option<ipv6AddressList>,
    @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
  }
  type response = {
    @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
    @as("AssignedIpv6Addresses") assignedIpv6Addresses: option<ipv6AddressList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AssignIpv6AddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplySecurityGroupsToClientVpnTargetNetwork = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SecurityGroupIds") securityGroupIds: clientVpnSecurityGroupIdSet,
    @as("VpcId") vpcId: vpcId,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("SecurityGroupIds") securityGroupIds: option<clientVpnSecurityGroupIdSet>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ApplySecurityGroupsToClientVpnTargetNetworkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AdvertiseByoipCidr = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Cidr") cidr: string_,
  }
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AdvertiseByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetAddressAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Attribute") attribute: addressAttributeName,
    @as("AllocationId") allocationId: allocationId,
  }
  type response = {@as("Address") address: option<addressAttribute>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ResetAddressAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceIamInstanceProfileAssociation = {
  type t
  type request = {
    @as("AssociationId") associationId: iamInstanceProfileAssociationId,
    @as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
  }
  type response = {
    @as("IamInstanceProfileAssociation")
    iamInstanceProfileAssociation: option<iamInstanceProfileAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ReplaceIamInstanceProfileAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTransitGatewayMulticastGroupSources = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NetworkInterfaceIds") networkInterfaceIds: option<transitGatewayNetworkInterfaceIdList>,
    @as("GroupIpAddress") groupIpAddress: option<string_>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("RegisteredMulticastGroupSources")
    registeredMulticastGroupSources: option<transitGatewayMulticastRegisteredGroupSources>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RegisterTransitGatewayMulticastGroupSourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTransitGatewayMulticastGroupMembers = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NetworkInterfaceIds") networkInterfaceIds: option<transitGatewayNetworkInterfaceIdList>,
    @as("GroupIpAddress") groupIpAddress: option<string_>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("RegisteredMulticastGroupMembers")
    registeredMulticastGroupMembers: option<transitGatewayMulticastRegisteredGroupMembers>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RegisterTransitGatewayMulticastGroupMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterInstanceEventNotificationAttributes = {
  type t
  type request = {
    @as("InstanceTagAttribute") instanceTagAttribute: option<registerInstanceTagAttributeRequest>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("InstanceTagAttribute") instanceTagAttribute: option<instanceTagNotificationAttribute>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RegisterInstanceEventNotificationAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTransitGatewayPrefixListReference = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Blackhole") blackhole: option<boolean_>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("TransitGatewayPrefixListReference")
    transitGatewayPrefixListReference: option<transitGatewayPrefixListReference>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyTransitGatewayPrefixListReferenceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTrafficMirrorFilterRule = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RemoveFields") removeFields: option<trafficMirrorFilterRuleFieldList>,
    @as("Description") description: option<string_>,
    @as("SourceCidrBlock") sourceCidrBlock: option<string_>,
    @as("DestinationCidrBlock") destinationCidrBlock: option<string_>,
    @as("Protocol") protocol: option<integer_>,
    @as("SourcePortRange") sourcePortRange: option<trafficMirrorPortRangeRequest>,
    @as("DestinationPortRange") destinationPortRange: option<trafficMirrorPortRangeRequest>,
    @as("RuleAction") ruleAction: option<trafficMirrorRuleAction>,
    @as("RuleNumber") ruleNumber: option<integer_>,
    @as("TrafficDirection") trafficDirection: option<trafficDirection>,
    @as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
  }
  type response = {
    @as("TrafficMirrorFilterRule") trafficMirrorFilterRule: option<trafficMirrorFilterRule>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyTrafficMirrorFilterRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReservedInstances = {
  type t
  type request = {
    @as("TargetConfigurations") targetConfigurations: reservedInstancesConfigurationList,
    @as("ClientToken") clientToken: option<string_>,
    @as("ReservedInstancesIds") reservedInstancesIds: reservedInstancesIdStringList,
  }
  type response = {
    @as("ReservedInstancesModificationId") reservedInstancesModificationId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyReservedInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceCapacityReservationAttributes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CapacityReservationSpecification")
    capacityReservationSpecification: capacityReservationSpecification,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyInstanceCapacityReservationAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClientVpnEndpoint = {
  type t
  type request = {
    @as("ClientConnectOptions") clientConnectOptions: option<clientConnectOptions>,
    @as("SelfServicePortal") selfServicePortal: option<selfServicePortal>,
    @as("VpcId") vpcId: option<vpcId>,
    @as("SecurityGroupIds") securityGroupIds: option<clientVpnSecurityGroupIdSet>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("SplitTunnel") splitTunnel: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("VpnPort") vpnPort: option<integer_>,
    @as("DnsServers") dnsServers: option<dnsServersOptionsModifyStructure>,
    @as("ConnectionLogOptions") connectionLogOptions: option<connectionLogOptions>,
    @as("ServerCertificateArn") serverCertificateArn: option<string_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyClientVpnEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyAddressAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DomainName") domainName: option<string_>,
    @as("AllocationId") allocationId: allocationId,
  }
  type response = {@as("Address") address: option<addressAttribute>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyAddressAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetManagedPrefixListEntries = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<prefixListMaxResults>,
    @as("TargetVersion") targetVersion: option<long>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Entries") entries: option<prefixListEntrySet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetManagedPrefixListEntriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetManagedPrefixListAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<getManagedPrefixListAssociationsMaxResults>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("PrefixListAssociations") prefixListAssociations: option<prefixListAssociationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetManagedPrefixListAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGroupsForCapacityReservation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<getGroupsForCapacityReservationRequestMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("CapacityReservationId") capacityReservationId: capacityReservationId,
  }
  type response = {
    @as("CapacityReservationGroups") capacityReservationGroups: option<capacityReservationGroupSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetGroupsForCapacityReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCapacityReservationUsage = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<getCapacityReservationUsageRequestMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("CapacityReservationId") capacityReservationId: capacityReservationId,
  }
  type response = {
    @as("InstanceUsages") instanceUsages: option<instanceUsageSet>,
    @as("State") state: option<capacityReservationState>,
    @as("AvailableInstanceCount") availableInstanceCount: option<integer_>,
    @as("TotalInstanceCount") totalInstanceCount: option<integer_>,
    @as("InstanceType") instanceType: option<string_>,
    @as("CapacityReservationId") capacityReservationId: option<string_>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetCapacityReservationUsageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssociatedIpv6PoolCidrs = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<ipv6PoolMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PoolId") poolId: ipv6PoolEc2Id,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Ipv6CidrAssociations") ipv6CidrAssociations: option<ipv6CidrAssociationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetAssociatedIpv6PoolCidrsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssociatedEnclaveCertificateIamRoles = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CertificateArn") certificateArn: option<resourceArn>,
  }
  type response = {@as("AssociatedRoles") associatedRoles: option<associatedRolesList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetAssociatedEnclaveCertificateIamRolesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateVpcCidrBlock = {
  type t
  type request = {@as("AssociationId") associationId: vpcCidrAssociationId}
  type response = {
    @as("VpcId") vpcId: option<string_>,
    @as("CidrBlockAssociation") cidrBlockAssociation: option<vpcCidrBlockAssociation>,
    @as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: option<vpcIpv6CidrBlockAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateVpcCidrBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateSubnetCidrBlock = {
  type t
  type request = {@as("AssociationId") associationId: subnetCidrAssociationId}
  type response = {
    @as("SubnetId") subnetId: option<string_>,
    @as("Ipv6CidrBlockAssociation")
    ipv6CidrBlockAssociation: option<subnetIpv6CidrBlockAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateSubnetCidrBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateIamInstanceProfile = {
  type t
  type request = {@as("AssociationId") associationId: iamInstanceProfileAssociationId}
  type response = {
    @as("IamInstanceProfileAssociation")
    iamInstanceProfileAssociation: option<iamInstanceProfileAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateIamInstanceProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcClassicLinkDnsSupport = {
  type t
  type request = {
    @as("VpcIds") vpcIds: option<vpcClassicLinkIdList>,
    @as("NextToken") nextToken: option<describeVpcClassicLinkDnsSupportNextToken>,
    @as("MaxResults") maxResults: option<describeVpcClassicLinkDnsSupportMaxResults>,
  }
  type response = {
    @as("Vpcs") vpcs: option<classicLinkDnsSupportList>,
    @as("NextToken") nextToken: option<describeVpcClassicLinkDnsSupportNextToken>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcClassicLinkDnsSupportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVolumeAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeId") volumeId: volumeId,
    @as("Attribute") attribute: volumeAttributeName,
  }
  type response = {
    @as("VolumeId") volumeId: option<string_>,
    @as("ProductCodes") productCodes: option<productCodeList>,
    @as("AutoEnableIO") autoEnableIO: option<attributeBooleanValue>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVolumeAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotFleetInstances = {
  type t
  type request = {
    @as("SpotFleetRequestId") spotFleetRequestId: spotFleetRequestId,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeSpotFleetInstancesMaxResults>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("SpotFleetRequestId") spotFleetRequestId: option<string_>,
    @as("NextToken") nextToken: option<string_>,
    @as("ActiveInstances") activeInstances: option<activeInstanceSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotFleetInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotDatafeedSubscription = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {
    @as("SpotDatafeedSubscription") spotDatafeedSubscription: option<spotDatafeedSubscription>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotDatafeedSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SnapshotId") snapshotId: snapshotId,
    @as("Attribute") attribute: snapshotAttributeName,
  }
  type response = {
    @as("SnapshotId") snapshotId: option<string_>,
    @as("ProductCodes") productCodes: option<productCodeList>,
    @as("CreateVolumePermissions") createVolumePermissions: option<createVolumePermissionList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSnapshotAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityGroupReferences = {
  type t
  type request = {
    @as("GroupId") groupId: groupIds,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("SecurityGroupReferenceSet") securityGroupReferenceSet: option<securityGroupReferences>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSecurityGroupReferencesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkInterfaceAttribute = {
  type t
  type request = {
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Attribute") attribute: option<networkInterfaceAttribute>,
  }
  type response = {
    @as("SourceDestCheck") sourceDestCheck: option<attributeBooleanValue>,
    @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
    @as("Groups") groups: option<groupIdentifierList>,
    @as("Description") description: option<attributeValue>,
    @as("Attachment") attachment: option<networkInterfaceAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeNetworkInterfaceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceEventNotificationAttributes = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {
    @as("InstanceTagAttribute") instanceTagAttribute: option<instanceTagNotificationAttribute>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeInstanceEventNotificationAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityIdFormat = {
  type t
  type request = {
    @as("Resource") resource: option<string_>,
    @as("PrincipalArn") principalArn: string_,
  }
  type response = {@as("Statuses") statuses: option<idFormatList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeIdentityIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdFormat = {
  type t
  type request = {@as("Resource") resource: option<string_>}
  type response = {@as("Statuses") statuses: option<idFormatList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeByoipCidrs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: describeByoipCidrsMaxResults,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ByoipCidrs") byoipCidrs: option<byoipCidrSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeByoipCidrsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAggregateIdFormat = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {
    @as("Statuses") statuses: option<idFormatList>,
    @as("UseLongIdsAggregated") useLongIdsAggregated: option<boolean_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeAggregateIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTransitGatewayMulticastGroupSources = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NetworkInterfaceIds") networkInterfaceIds: option<transitGatewayNetworkInterfaceIdList>,
    @as("GroupIpAddress") groupIpAddress: option<string_>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("DeregisteredMulticastGroupSources")
    deregisteredMulticastGroupSources: option<transitGatewayMulticastDeregisteredGroupSources>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeregisterTransitGatewayMulticastGroupSourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTransitGatewayMulticastGroupMembers = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NetworkInterfaceIds") networkInterfaceIds: option<transitGatewayNetworkInterfaceIdList>,
    @as("GroupIpAddress") groupIpAddress: option<string_>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("DeregisteredMulticastGroupMembers")
    deregisteredMulticastGroupMembers: option<transitGatewayMulticastDeregisteredGroupMembers>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeregisterTransitGatewayMulticastGroupMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterInstanceEventNotificationAttributes = {
  type t
  type request = {
    @as("InstanceTagAttribute") instanceTagAttribute: option<deregisterInstanceTagAttributeRequest>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("InstanceTagAttribute") instanceTagAttribute: option<instanceTagNotificationAttribute>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeregisterInstanceEventNotificationAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayPrefixListReference = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("TransitGatewayPrefixListReference")
    transitGatewayPrefixListReference: option<transitGatewayPrefixListReference>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayPrefixListReferenceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Resources") resources: resourceIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateVpcEndpointConnectionNotification = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("ConnectionEvents") connectionEvents: valueStringList,
    @as("ConnectionNotificationArn") connectionNotificationArn: string_,
    @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
    @as("ServiceId") serviceId: option<vpcEndpointServiceId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("ConnectionNotification") connectionNotification: option<connectionNotification>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateVpcEndpointConnectionNotificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayPrefixListReference = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Blackhole") blackhole: option<boolean_>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("TransitGatewayPrefixListReference")
    transitGatewayPrefixListReference: option<transitGatewayPrefixListReference>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayPrefixListReferenceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrafficMirrorFilterRule = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("SourceCidrBlock") sourceCidrBlock: string_,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
    @as("Protocol") protocol: option<integer_>,
    @as("SourcePortRange") sourcePortRange: option<trafficMirrorPortRangeRequest>,
    @as("DestinationPortRange") destinationPortRange: option<trafficMirrorPortRangeRequest>,
    @as("RuleAction") ruleAction: trafficMirrorRuleAction,
    @as("RuleNumber") ruleNumber: integer_,
    @as("TrafficDirection") trafficDirection: trafficDirection,
    @as("TrafficMirrorFilterId") trafficMirrorFilterId: trafficMirrorFilterId,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("TrafficMirrorFilterRule") trafficMirrorFilterRule: option<trafficMirrorFilterRule>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTrafficMirrorFilterRuleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("Resources") resources: resourceIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateStoreImageTask = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("S3ObjectTags") s3ObjectTags: option<s3ObjectTagList>,
    @as("Bucket") bucket: string_,
    @as("ImageId") imageId: imageId,
  }
  type response = {@as("ObjectKey") objectKey: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateStoreImageTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSpotDatafeedSubscription = {
  type t
  type request = {
    @as("Prefix") prefix: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Bucket") bucket: string_,
  }
  type response = {
    @as("SpotDatafeedSubscription") spotDatafeedSubscription: option<spotDatafeedSubscription>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateSpotDatafeedSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkInterfacePermission = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Permission") permission: interfacePermissionType,
    @as("AwsService") awsService: option<string_>,
    @as("AwsAccountId") awsAccountId: option<string_>,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  }
  type response = {
    @as("InterfacePermission") interfacePermission: option<networkInterfacePermission>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateNetworkInterfacePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSpotInstanceRequests = {
  type t
  type request = {
    @as("SpotInstanceRequestIds") spotInstanceRequestIds: spotInstanceRequestIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("CancelledSpotInstanceRequests")
    cancelledSpotInstanceRequests: option<cancelledSpotInstanceRequestList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CancelSpotInstanceRequestsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateVpcCidrBlock = {
  type t
  type request = {
    @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
    @as("Ipv6Pool") ipv6Pool: option<ipv6PoolEc2Id>,
    @as("Ipv6CidrBlockNetworkBorderGroup") ipv6CidrBlockNetworkBorderGroup: option<string_>,
    @as("VpcId") vpcId: vpcId,
    @as("CidrBlock") cidrBlock: option<string_>,
    @as("AmazonProvidedIpv6CidrBlock") amazonProvidedIpv6CidrBlock: option<boolean_>,
  }
  type response = {
    @as("VpcId") vpcId: option<string_>,
    @as("CidrBlockAssociation") cidrBlockAssociation: option<vpcCidrBlockAssociation>,
    @as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: option<vpcIpv6CidrBlockAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AssociateVpcCidrBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateSubnetCidrBlock = {
  type t
  type request = {
    @as("SubnetId") subnetId: subnetId,
    @as("Ipv6CidrBlock") ipv6CidrBlock: string_,
  }
  type response = {
    @as("SubnetId") subnetId: option<string_>,
    @as("Ipv6CidrBlockAssociation")
    ipv6CidrBlockAssociation: option<subnetIpv6CidrBlockAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateSubnetCidrBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateIamInstanceProfile = {
  type t
  type request = {
    @as("InstanceId") instanceId: instanceId,
    @as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
  }
  type response = {
    @as("IamInstanceProfileAssociation")
    iamInstanceProfileAssociation: option<iamInstanceProfileAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateIamInstanceProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssignPrivateIpAddresses = {
  type t
  type request = {
    @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
    @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressStringList>,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
    @as("AllowReassignment") allowReassignment: option<boolean_>,
  }
  type response = {
    @as("AssignedPrivateIpAddresses")
    assignedPrivateIpAddresses: option<assignedPrivateIpAddressList>,
    @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssignPrivateIpAddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptReservedInstancesExchangeQuote = {
  type t
  type request = {
    @as("TargetConfigurations") targetConfigurations: option<targetConfigurationRequestSet>,
    @as("ReservedInstanceIds") reservedInstanceIds: reservedInstanceIdSet,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("ExchangeId") exchangeId: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptReservedInstancesExchangeQuoteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnmonitorInstances = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }
  type response = {@as("InstanceMonitorings") instanceMonitorings: option<instanceMonitoringList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "UnmonitorInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateInstances = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }
  type response = {
    @as("TerminatingInstances") terminatingInstances: option<instanceStateChangeList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "TerminateInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateClientVpnConnections = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Username") username: option<string_>,
    @as("ConnectionId") connectionId: option<vpnConnectionId>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("ConnectionStatuses") connectionStatuses: option<terminateConnectionStatusSet>,
    @as("Username") username: option<string_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "TerminateClientVpnConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopInstances = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Hibernate") hibernate: option<boolean_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }
  type response = {@as("StoppingInstances") stoppingInstances: option<instanceStateChangeList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "StopInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartInstances = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AdditionalInfo") additionalInfo: option<string_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }
  type response = {@as("StartingInstances") startingInstances: option<instanceStateChangeList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "StartInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchTransitGatewayMulticastGroups = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("MulticastGroups") multicastGroups: option<transitGatewayMulticastGroupList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "SearchTransitGatewayMulticastGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchLocalGatewayRoutes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: filterList,
    @as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Routes") routes: option<localGatewayRouteList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "SearchLocalGatewayRoutesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreManagedPrefixListVersion = {
  type t
  type request = {
    @as("CurrentVersion") currentVersion: long,
    @as("PreviousVersion") previousVersion: long,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("PrefixList") prefixList: option<managedPrefixList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RestoreManagedPrefixListVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceTransitGatewayRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Blackhole") blackhole: option<boolean_>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }
  type response = {@as("Route") route: option<transitGatewayRoute>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ReplaceTransitGatewayRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReleaseHosts = {
  type t
  type request = {@as("HostIds") hostIds: requestHostIdList}
  type response = {
    @as("Unsuccessful") unsuccessful: option<unsuccessfulItemList>,
    @as("Successful") successful: option<responseHostIdList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ReleaseHostsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectVpcEndpointConnections = {
  type t
  type request = {
    @as("VpcEndpointIds") vpcEndpointIds: vpcEndpointIdList,
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RejectVpcEndpointConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectTransitGatewayVpcAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayVpcAttachment")
    transitGatewayVpcAttachment: option<transitGatewayVpcAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RejectTransitGatewayVpcAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectTransitGatewayPeeringAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayPeeringAttachment")
    transitGatewayPeeringAttachment: option<transitGatewayPeeringAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RejectTransitGatewayPeeringAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectTransitGatewayMulticastDomainAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetIds") subnetIds: option<valueStringList>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("Associations") associations: option<transitGatewayMulticastDomainAssociations>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RejectTransitGatewayMulticastDomainAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterImage = {
  type t
  type request = {
    @as("BootMode") bootMode: option<bootModeValues>,
    @as("VirtualizationType") virtualizationType: option<string_>,
    @as("SriovNetSupport") sriovNetSupport: option<string_>,
    @as("RootDeviceName") rootDeviceName: option<string_>,
    @as("RamdiskId") ramdiskId: option<ramdiskId>,
    @as("BillingProducts") billingProducts: option<billingProductList>,
    @as("Name") name: string_,
    @as("KernelId") kernelId: option<kernelId>,
    @as("EnaSupport") enaSupport: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingRequestList>,
    @as("Architecture") architecture: option<architectureValues>,
    @as("ImageLocation") imageLocation: option<string_>,
  }
  type response = {@as("ImageId") imageId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RegisterImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MonitorInstances = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceIds") instanceIds: instanceIdStringList,
  }
  type response = {@as("InstanceMonitorings") instanceMonitorings: option<instanceMonitoringList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "MonitorInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTransitGatewayVpcAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Options") options: option<modifyTransitGatewayVpcAttachmentRequestOptions>,
    @as("RemoveSubnetIds") removeSubnetIds: option<transitGatewaySubnetIdList>,
    @as("AddSubnetIds") addSubnetIds: option<transitGatewaySubnetIdList>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayVpcAttachment")
    transitGatewayVpcAttachment: option<transitGatewayVpcAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyTransitGatewayVpcAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTransitGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Options") options: option<modifyTransitGatewayOptions>,
    @as("Description") description: option<string_>,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {@as("TransitGateway") transitGateway: option<transitGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyTransitGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTrafficMirrorSession = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RemoveFields") removeFields: option<trafficMirrorSessionFieldList>,
    @as("Description") description: option<string_>,
    @as("VirtualNetworkId") virtualNetworkId: option<integer_>,
    @as("SessionNumber") sessionNumber: option<integer_>,
    @as("PacketLength") packetLength: option<integer_>,
    @as("TrafficMirrorFilterId") trafficMirrorFilterId: option<trafficMirrorFilterId>,
    @as("TrafficMirrorTargetId") trafficMirrorTargetId: option<trafficMirrorTargetId>,
    @as("TrafficMirrorSessionId") trafficMirrorSessionId: trafficMirrorSessionId,
  }
  type response = {@as("TrafficMirrorSession") trafficMirrorSession: option<trafficMirrorSession>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyTrafficMirrorSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySnapshotAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("UserIds") userIds: option<userIdStringList>,
    @as("SnapshotId") snapshotId: snapshotId,
    @as("OperationType") operationType: option<operationType>,
    @as("GroupNames") groupNames: option<groupNameStringList>,
    @as("CreateVolumePermission")
    createVolumePermission: option<createVolumePermissionModifications>,
    @as("Attribute") attribute: option<snapshotAttributeName>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifySnapshotAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyManagedPrefixList = {
  type t
  type request = {
    @as("RemoveEntries") removeEntries: option<removePrefixListEntries>,
    @as("AddEntries") addEntries: option<addPrefixListEntries>,
    @as("PrefixListName") prefixListName: option<string_>,
    @as("CurrentVersion") currentVersion: option<long>,
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("PrefixList") prefixList: option<managedPrefixList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyManagedPrefixListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyLaunchTemplate = {
  type t
  type request = {
    @as("DefaultVersion") defaultVersion: option<string_>,
    @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
    @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("LaunchTemplate") launchTemplate: option<launchTemplate>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyLaunchTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceCreditSpecification = {
  type t
  type request = {
    @as("InstanceCreditSpecifications")
    instanceCreditSpecifications: instanceCreditSpecificationListRequest,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("UnsuccessfulInstanceCreditSpecifications")
    unsuccessfulInstanceCreditSpecifications: option<unsuccessfulInstanceCreditSpecificationSet>,
    @as("SuccessfulInstanceCreditSpecifications")
    successfulInstanceCreditSpecifications: option<successfulInstanceCreditSpecificationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyInstanceCreditSpecificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyInstanceAttribute = {
  type t
  type request = {
    @as("Value") value: option<string_>,
    @as("UserData") userData: option<blobAttributeValue>,
    @as("SriovNetSupport") sriovNetSupport: option<attributeValue>,
    @as("Ramdisk") ramdisk: option<attributeValue>,
    @as("Kernel") kernel: option<attributeValue>,
    @as("InstanceType") instanceType: option<attributeValue>,
    @as("InstanceInitiatedShutdownBehavior")
    instanceInitiatedShutdownBehavior: option<attributeValue>,
    @as("InstanceId") instanceId: instanceId,
    @as("Groups") groups: option<groupIdStringList>,
    @as("EnaSupport") enaSupport: option<attributeBooleanValue>,
    @as("EbsOptimized") ebsOptimized: option<attributeBooleanValue>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DisableApiTermination") disableApiTermination: option<attributeBooleanValue>,
    @as("BlockDeviceMappings")
    blockDeviceMappings: option<instanceBlockDeviceMappingSpecificationList>,
    @as("Attribute") attribute: option<instanceAttributeName>,
    @as("SourceDestCheck") sourceDestCheck: option<attributeBooleanValue>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyInstanceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyImageAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Value") value: option<string_>,
    @as("UserIds") userIds: option<userIdStringList>,
    @as("UserGroups") userGroups: option<userGroupStringList>,
    @as("ProductCodes") productCodes: option<productCodeStringList>,
    @as("OperationType") operationType: option<operationType>,
    @as("LaunchPermission") launchPermission: option<launchPermissionModifications>,
    @as("ImageId") imageId: imageId,
    @as("Description") description: option<attributeValue>,
    @as("Attribute") attribute: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyHosts = {
  type t
  type request = {
    @as("InstanceFamily") instanceFamily: option<string_>,
    @as("InstanceType") instanceType: option<string_>,
    @as("HostRecovery") hostRecovery: option<hostRecovery>,
    @as("HostIds") hostIds: requestHostIdList,
    @as("AutoPlacement") autoPlacement: option<autoPlacement>,
  }
  type response = {
    @as("Unsuccessful") unsuccessful: option<unsuccessfulItemList>,
    @as("Successful") successful: option<responseHostIdList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyHostsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyFpgaImageAttribute = {
  type t
  type request = {
    @as("Name") name: option<string_>,
    @as("Description") description: option<string_>,
    @as("LoadPermission") loadPermission: option<loadPermissionModifications>,
    @as("ProductCodes") productCodes: option<productCodeStringList>,
    @as("UserGroups") userGroups: option<userGroupStringList>,
    @as("UserIds") userIds: option<userIdStringList>,
    @as("OperationType") operationType: option<operationType>,
    @as("Attribute") attribute: option<fpgaImageAttributeName>,
    @as("FpgaImageId") fpgaImageId: fpgaImageId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("FpgaImageAttribute") fpgaImageAttribute: option<fpgaImageAttribute>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyFpgaImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayRouteTablePropagations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayRouteTablePropagations")
    transitGatewayRouteTablePropagations: option<transitGatewayRouteTablePropagationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetTransitGatewayRouteTablePropagationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayRouteTableAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Associations") associations: option<transitGatewayRouteTableAssociationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetTransitGatewayRouteTableAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayPrefixListReferences = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayPrefixListReferences")
    transitGatewayPrefixListReferences: option<transitGatewayPrefixListReferenceSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetTransitGatewayPrefixListReferencesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayMulticastDomainAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("MulticastDomainAssociations")
    multicastDomainAssociations: option<transitGatewayMulticastDomainAssociationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetTransitGatewayMulticastDomainAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayAttachmentPropagations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayAttachmentPropagations")
    transitGatewayAttachmentPropagations: option<transitGatewayAttachmentPropagationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetTransitGatewayAttachmentPropagationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservedInstancesExchangeQuote = {
  type t
  type request = {
    @as("TargetConfigurations") targetConfigurations: option<targetConfigurationRequestSet>,
    @as("ReservedInstanceIds") reservedInstanceIds: reservedInstanceIdSet,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ValidationFailureReason") validationFailureReason: option<string_>,
    @as("TargetConfigurationValueSet")
    targetConfigurationValueSet: option<targetReservationValueSet>,
    @as("TargetConfigurationValueRollup") targetConfigurationValueRollup: option<reservationValue>,
    @as("ReservedInstanceValueSet")
    reservedInstanceValueSet: option<reservedInstanceReservationValueSet>,
    @as("ReservedInstanceValueRollup") reservedInstanceValueRollup: option<reservationValue>,
    @as("PaymentDue") paymentDue: option<string_>,
    @as("OutputReservedInstancesWillExpireAt")
    outputReservedInstancesWillExpireAt: option<dateTime>,
    @as("IsValidExchange") isValidExchange: option<boolean_>,
    @as("CurrencyCode") currencyCode: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetReservedInstancesExchangeQuoteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHostReservationPurchasePreview = {
  type t
  type request = {
    @as("OfferingId") offeringId: offeringId,
    @as("HostIdSet") hostIdSet: requestHostIdSet,
  }
  type response = {
    @as("TotalUpfrontPrice") totalUpfrontPrice: option<string_>,
    @as("TotalHourlyPrice") totalHourlyPrice: option<string_>,
    @as("Purchase") purchase: option<purchaseSet>,
    @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetHostReservationPurchasePreviewCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFlowLogsIntegrationTemplate = {
  type t
  type request = {
    @as("IntegrateServices") integrateServices: integrateServices,
    @as("ConfigDeliveryS3DestinationArn") configDeliveryS3DestinationArn: string_,
    @as("FlowLogId") flowLogId: vpcFlowLogId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Result") result: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "GetFlowLogsIntegrationTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCoipPoolUsage = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<coipPoolMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("PoolId") poolId: coipPoolId,
  }
  type response = {
    @as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<string_>,
    @as("CoipAddressUsages") coipAddressUsages: option<coipAddressUsageSet>,
    @as("CoipPoolId") coipPoolId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetCoipPoolUsageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportTransitGatewayRoutes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("S3Bucket") s3Bucket: string_,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("S3Location") s3Location: option<string_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ExportTransitGatewayRoutesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTransitGatewayMulticastDomain = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetIds") subnetIds: option<transitGatewaySubnetIdList>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("Associations") associations: option<transitGatewayMulticastDomainAssociations>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisassociateTransitGatewayMulticastDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpointServicePermissions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("AllowedPrincipals") allowedPrincipals: option<allowedPrincipalSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcEndpointServicePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpointConnectionNotifications = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("ConnectionNotificationId") connectionNotificationId: option<connectionNotificationId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ConnectionNotificationSet") connectionNotificationSet: option<connectionNotificationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcEndpointConnectionNotificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVolumesModifications = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("VolumeIds") volumeIds: option<volumeIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VolumesModifications") volumesModifications: option<volumeModificationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVolumesModificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Tags") tags: option<tagDescriptionList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStoreImageTasks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeStoreImageTasksRequestMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ImageIds") imageIds: option<imageIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("StoreImageTaskResults") storeImageTaskResults: option<storeImageTaskResultSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeStoreImageTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotPriceHistory = {
  type t
  type request = {
    @as("StartTime") startTime: option<dateTime>,
    @as("ProductDescriptions") productDescriptions: option<productDescriptionList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("InstanceTypes") instanceTypes: option<instanceTypeList>,
    @as("EndTime") endTime: option<dateTime>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("SpotPriceHistory") spotPriceHistory: option<spotPriceHistoryList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotPriceHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotFleetRequestHistory = {
  type t
  type request = {
    @as("StartTime") startTime: dateTime,
    @as("SpotFleetRequestId") spotFleetRequestId: spotFleetRequestId,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeSpotFleetRequestHistoryMaxResults>,
    @as("EventType") eventType: option<eventType>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("StartTime") startTime: option<dateTime>,
    @as("SpotFleetRequestId") spotFleetRequestId: option<string_>,
    @as("NextToken") nextToken: option<string_>,
    @as("LastEvaluatedTime") lastEvaluatedTime: option<dateTime>,
    @as("HistoryRecords") historyRecords: option<historyRecords>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotFleetRequestHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRegions = {
  type t
  type request = {
    @as("AllRegions") allRegions: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("RegionNames") regionNames: option<regionNameStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("Regions") regions: option<regionList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeRegionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePrefixLists = {
  type t
  type request = {
    @as("PrefixListIds") prefixListIds: option<prefixListResourceIdStringList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("PrefixLists") prefixLists: option<prefixListSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribePrefixListsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkInterfacePermissions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeNetworkInterfacePermissionsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("NetworkInterfacePermissionIds")
    networkInterfacePermissionIds: option<networkInterfacePermissionIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkInterfacePermissions")
    networkInterfacePermissions: option<networkInterfacePermissionList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeNetworkInterfacePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMovingAddresses = {
  type t
  type request = {
    @as("PublicIps") publicIps: option<valueStringList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeMovingAddressesMaxResults>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("MovingAddressStatuses") movingAddressStatuses: option<movingAddressStatusSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeMovingAddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceTypeOfferings = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<ditomaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocationType") locationType: option<locationType>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceTypeOfferings") instanceTypeOfferings: option<instanceTypeOfferingsList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeInstanceTypeOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceCreditSpecifications = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeInstanceCreditSpecificationsMaxResults>,
    @as("InstanceIds") instanceIds: option<instanceIdStringList>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("InstanceCreditSpecifications")
    instanceCreditSpecifications: option<instanceCreditSpecificationList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeInstanceCreditSpecificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceAttribute = {
  type t
  type request = {
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Attribute") attribute: instanceAttributeName,
  }
  type response = {
    @as("UserData") userData: option<attributeValue>,
    @as("SriovNetSupport") sriovNetSupport: option<attributeValue>,
    @as("SourceDestCheck") sourceDestCheck: option<attributeBooleanValue>,
    @as("RootDeviceName") rootDeviceName: option<attributeValue>,
    @as("RamdiskId") ramdiskId: option<attributeValue>,
    @as("ProductCodes") productCodes: option<productCodeList>,
    @as("KernelId") kernelId: option<attributeValue>,
    @as("InstanceType") instanceType: option<attributeValue>,
    @as("InstanceInitiatedShutdownBehavior")
    instanceInitiatedShutdownBehavior: option<attributeValue>,
    @as("InstanceId") instanceId: option<string_>,
    @as("EbsOptimized") ebsOptimized: option<attributeBooleanValue>,
    @as("EnclaveOptions") enclaveOptions: option<enclaveOptions>,
    @as("EnaSupport") enaSupport: option<attributeBooleanValue>,
    @as("DisableApiTermination") disableApiTermination: option<attributeBooleanValue>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<instanceBlockDeviceMappingList>,
    @as("Groups") groups: option<groupIdentifierList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeInstanceAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImageAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ImageId") imageId: imageId,
    @as("Attribute") attribute: imageAttributeName,
  }
  type response = {
    @as("BootMode") bootMode: option<attributeValue>,
    @as("SriovNetSupport") sriovNetSupport: option<attributeValue>,
    @as("RamdiskId") ramdiskId: option<attributeValue>,
    @as("KernelId") kernelId: option<attributeValue>,
    @as("Description") description: option<attributeValue>,
    @as("ProductCodes") productCodes: option<productCodeList>,
    @as("LaunchPermissions") launchPermissions: option<launchPermissionList>,
    @as("ImageId") imageId: option<string_>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIamInstanceProfileAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeIamInstanceProfileAssociationsMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("AssociationIds") associationIds: option<associationIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("IamInstanceProfileAssociations")
    iamInstanceProfileAssociations: option<iamInstanceProfileAssociationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeIamInstanceProfileAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHostReservationOfferings = {
  type t
  type request = {
    @as("OfferingId") offeringId: option<offeringId>,
    @as("NextToken") nextToken: option<string_>,
    @as("MinDuration") minDuration: option<integer_>,
    @as("MaxResults") maxResults: option<describeHostReservationsMaxResults>,
    @as("MaxDuration") maxDuration: option<integer_>,
    @as("Filter") filter: option<filterList>,
  }
  type response = {
    @as("OfferingSet") offeringSet: option<hostOfferingSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeHostReservationOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFpgaImageAttribute = {
  type t
  type request = {
    @as("Attribute") attribute: fpgaImageAttributeName,
    @as("FpgaImageId") fpgaImageId: fpgaImageId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("FpgaImageAttribute") fpgaImageAttribute: option<fpgaImageAttribute>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeFpgaImageAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetInstances = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("FleetId") fleetId: fleetId,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("FleetId") fleetId: option<fleetId>,
    @as("NextToken") nextToken: option<string_>,
    @as("ActiveInstances") activeInstances: option<activeInstanceSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeFleetInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleetHistory = {
  type t
  type request = {
    @as("StartTime") startTime: dateTime,
    @as("FleetId") fleetId: fleetId,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("EventType") eventType: option<fleetEventType>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("StartTime") startTime: option<dateTime>,
    @as("FleetId") fleetId: option<fleetId>,
    @as("NextToken") nextToken: option<string_>,
    @as("LastEvaluatedTime") lastEvaluatedTime: option<dateTime>,
    @as("HistoryRecords") historyRecords: option<historyRecordSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeFleetHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFastSnapshotRestores = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeFastSnapshotRestoresMaxResults>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("FastSnapshotRestores") fastSnapshotRestores: option<describeFastSnapshotRestoreSuccessSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeFastSnapshotRestoresCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientVpnTargetNetworks = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeClientVpnTargetNetworksMaxResults>,
    @as("AssociationIds") associationIds: option<valueStringList>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ClientVpnTargetNetworks") clientVpnTargetNetworks: option<targetNetworkSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeClientVpnTargetNetworksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientVpnRoutes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeClientVpnRoutesMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Routes") routes: option<clientVpnRouteSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeClientVpnRoutesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientVpnConnections = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<describeClientVpnConnectionsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<filterList>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Connections") connections: option<clientVpnConnectionSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeClientVpnConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientVpnAuthorizationRules = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeClientVpnAuthorizationRulesMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: clientVpnEndpointId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AuthorizationRules") authorizationRules: option<authorizationRuleSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeClientVpnAuthorizationRulesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAddressesAttribute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<addressMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Attribute") attribute: option<addressAttributeName>,
    @as("AllocationIds") allocationIds: option<allocationIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Addresses") addresses: option<addressSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeAddressesAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpcEndpoints = {
  type t
  type request = {
    @as("VpcEndpointIds") vpcEndpointIds: vpcEndpointIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteVpcEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpcEndpointServiceConfigurations = {
  type t
  type request = {
    @as("ServiceIds") serviceIds: vpcEndpointServiceIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteVpcEndpointServiceConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVpcEndpointConnectionNotifications = {
  type t
  type request = {
    @as("ConnectionNotificationIds") connectionNotificationIds: connectionNotificationIdsList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteVpcEndpointConnectionNotificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayVpcAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayVpcAttachment")
    transitGatewayVpcAttachment: option<transitGatewayVpcAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayVpcAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayRouteTable = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("TransitGatewayRouteTable") transitGatewayRouteTable: option<transitGatewayRouteTable>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {@as("Route") route: option<transitGatewayRoute>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayPeeringAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayPeeringAttachment")
    transitGatewayPeeringAttachment: option<transitGatewayPeeringAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayPeeringAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayMulticastDomain = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
  }
  type response = {
    @as("TransitGatewayMulticastDomain")
    transitGatewayMulticastDomain: option<transitGatewayMulticastDomain>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayMulticastDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayConnect = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayConnect") transitGatewayConnect: option<transitGatewayConnect>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayConnectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {@as("TransitGateway") transitGateway: option<transitGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteTransitGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteQueuedReservedInstances = {
  type t
  type request = {
    @as("ReservedInstancesIds") reservedInstancesIds: deleteQueuedReservedInstancesIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("FailedQueuedPurchaseDeletions")
    failedQueuedPurchaseDeletions: option<failedQueuedPurchaseDeletionSet>,
    @as("SuccessfulQueuedPurchaseDeletions")
    successfulQueuedPurchaseDeletions: option<successfulQueuedPurchaseDeletionSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteQueuedReservedInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteManagedPrefixList = {
  type t
  type request = {
    @as("PrefixListId") prefixListId: prefixListResourceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("PrefixList") prefixList: option<managedPrefixList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteManagedPrefixListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLocalGatewayRouteTableVpcAssociation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("LocalGatewayRouteTableVpcAssociationId")
    localGatewayRouteTableVpcAssociationId: localGatewayRouteTableVpcAssociationId,
  }
  type response = {
    @as("LocalGatewayRouteTableVpcAssociation")
    localGatewayRouteTableVpcAssociation: option<localGatewayRouteTableVpcAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteLocalGatewayRouteTableVpcAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLaunchTemplateVersions = {
  type t
  type request = {
    @as("Versions") versions: versionStringList,
    @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
    @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("UnsuccessfullyDeletedLaunchTemplateVersions")
    unsuccessfullyDeletedLaunchTemplateVersions: option<
      deleteLaunchTemplateVersionsResponseErrorSet,
    >,
    @as("SuccessfullyDeletedLaunchTemplateVersions")
    successfullyDeletedLaunchTemplateVersions: option<
      deleteLaunchTemplateVersionsResponseSuccessSet,
    >,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteLaunchTemplateVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLaunchTemplate = {
  type t
  type request = {
    @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
    @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("LaunchTemplate") launchTemplate: option<launchTemplate>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteLaunchTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFlowLogs = {
  type t
  type request = {
    @as("FlowLogIds") flowLogIds: flowLogIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteFlowLogsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFleets = {
  type t
  type request = {
    @as("TerminateInstances") terminateInstances: boolean_,
    @as("FleetIds") fleetIds: fleetIdSet,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("UnsuccessfulFleetDeletions") unsuccessfulFleetDeletions: option<deleteFleetErrorSet>,
    @as("SuccessfulFleetDeletions") successfulFleetDeletions: option<deleteFleetSuccessSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteFleetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCarrierGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("CarrierGatewayId") carrierGatewayId: carrierGatewayId,
  }
  type response = {@as("CarrierGateway") carrierGateway: option<carrierGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DeleteCarrierGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayRoute = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Blackhole") blackhole: option<boolean_>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
    @as("DestinationCidrBlock") destinationCidrBlock: string_,
  }
  type response = {@as("Route") route: option<transitGatewayRoute>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayRouteCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSpotFleetRequests = {
  type t
  type request = {
    @as("TerminateInstances") terminateInstances: boolean_,
    @as("SpotFleetRequestIds") spotFleetRequestIds: spotFleetRequestIdList,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("UnsuccessfulFleetRequests")
    unsuccessfulFleetRequests: option<cancelSpotFleetRequestsErrorSet>,
    @as("SuccessfulFleetRequests")
    successfulFleetRequests: option<cancelSpotFleetRequestsSuccessSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CancelSpotFleetRequestsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelBundleTask = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("BundleId") bundleId: bundleId,
  }
  type response = {@as("BundleTask") bundleTask: option<bundleTask>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CancelBundleTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BundleInstance = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Storage") storage: storage,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {@as("BundleTask") bundleTask: option<bundleTask>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "BundleInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTransitGatewayMulticastDomain = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetIds") subnetIds: option<transitGatewaySubnetIdList>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("Associations") associations: option<transitGatewayMulticastDomainAssociations>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AssociateTransitGatewayMulticastDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptVpcEndpointConnections = {
  type t
  type request = {
    @as("VpcEndpointIds") vpcEndpointIds: vpcEndpointIdList,
    @as("ServiceId") serviceId: vpcEndpointServiceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptVpcEndpointConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptTransitGatewayVpcAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayVpcAttachment")
    transitGatewayVpcAttachment: option<transitGatewayVpcAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptTransitGatewayVpcAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptTransitGatewayPeeringAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayPeeringAttachment")
    transitGatewayPeeringAttachment: option<transitGatewayPeeringAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptTransitGatewayPeeringAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptTransitGatewayMulticastDomainAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetIds") subnetIds: option<valueStringList>,
    @as("TransitGatewayAttachmentId")
    transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
    @as("TransitGatewayMulticastDomainId")
    transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>,
  }
  type response = {
    @as("Associations") associations: option<transitGatewayMulticastDomainAssociations>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptTransitGatewayMulticastDomainAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecurityGroupRuleDescriptionsIngress = {
  type t
  type request = {
    @as("IpPermissions") ipPermissions: ipPermissionList,
    @as("GroupName") groupName: option<securityGroupName>,
    @as("GroupId") groupId: option<securityGroupId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "UpdateSecurityGroupRuleDescriptionsIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecurityGroupRuleDescriptionsEgress = {
  type t
  type request = {
    @as("IpPermissions") ipPermissions: ipPermissionList,
    @as("GroupName") groupName: option<securityGroupName>,
    @as("GroupId") groupId: option<securityGroupId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "UpdateSecurityGroupRuleDescriptionsEgressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchTransitGatewayRoutes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: filterList,
    @as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId,
  }
  type response = {
    @as("AdditionalRoutesAvailable") additionalRoutesAvailable: option<boolean_>,
    @as("Routes") routes: option<transitGatewayRouteList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "SearchTransitGatewayRoutesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeSecurityGroupIngress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ToPort") toPort: option<integer_>,
    @as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: option<string_>,
    @as("SourceSecurityGroupName") sourceSecurityGroupName: option<string_>,
    @as("IpProtocol") ipProtocol: option<string_>,
    @as("IpPermissions") ipPermissions: option<ipPermissionList>,
    @as("GroupName") groupName: option<securityGroupName>,
    @as("GroupId") groupId: option<securityGroupId>,
    @as("FromPort") fromPort: option<integer_>,
    @as("CidrIp") cidrIp: option<string_>,
  }
  type response = {
    @as("UnknownIpPermissions") unknownIpPermissions: option<ipPermissionList>,
    @as("Return") return: option<boolean_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RevokeSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeSecurityGroupEgress = {
  type t
  type request = {
    @as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: option<string_>,
    @as("SourceSecurityGroupName") sourceSecurityGroupName: option<string_>,
    @as("ToPort") toPort: option<integer_>,
    @as("IpProtocol") ipProtocol: option<string_>,
    @as("FromPort") fromPort: option<integer_>,
    @as("CidrIp") cidrIp: option<string_>,
    @as("IpPermissions") ipPermissions: option<ipPermissionList>,
    @as("GroupId") groupId: securityGroupId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("UnknownIpPermissions") unknownIpPermissions: option<ipPermissionList>,
    @as("Return") return: option<boolean_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "RevokeSecurityGroupEgressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseScheduledInstances = {
  type t
  type request = {
    @as("PurchaseRequests") purchaseRequests: purchaseRequestSet,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {
    @as("ScheduledInstanceSet") scheduledInstanceSet: option<purchasedScheduledInstanceSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "PurchaseScheduledInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseHostReservation = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("OfferingId") offeringId: offeringId,
    @as("LimitPrice") limitPrice: option<string_>,
    @as("HostIdSet") hostIdSet: requestHostIdSet,
    @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {
    @as("TotalUpfrontPrice") totalUpfrontPrice: option<string_>,
    @as("TotalHourlyPrice") totalHourlyPrice: option<string_>,
    @as("Purchase") purchase: option<purchaseSet>,
    @as("CurrencyCode") currencyCode: option<currencyCodeValues>,
    @as("ClientToken") clientToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "PurchaseHostReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvisionByoipCidr = {
  type t
  type request = {
    @as("PoolTagSpecifications") poolTagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("PubliclyAdvertisable") publiclyAdvertisable: option<boolean_>,
    @as("CidrAuthorizationContext") cidrAuthorizationContext: option<cidrAuthorizationContext>,
    @as("Cidr") cidr: string_,
  }
  type response = {@as("ByoipCidr") byoipCidr: option<byoipCidr>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ProvisionByoipCidrCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyTrafficMirrorFilterNetworkServices = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RemoveNetworkServices") removeNetworkServices: option<trafficMirrorNetworkServiceList>,
    @as("AddNetworkServices") addNetworkServices: option<trafficMirrorNetworkServiceList>,
    @as("TrafficMirrorFilterId") trafficMirrorFilterId: trafficMirrorFilterId,
  }
  type response = {@as("TrafficMirrorFilter") trafficMirrorFilter: option<trafficMirrorFilter>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyTrafficMirrorFilterNetworkServicesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySpotFleetRequest = {
  type t
  type request = {
    @as("OnDemandTargetCapacity") onDemandTargetCapacity: option<integer_>,
    @as("TargetCapacity") targetCapacity: option<integer_>,
    @as("SpotFleetRequestId") spotFleetRequestId: spotFleetRequestId,
    @as("LaunchTemplateConfigs") launchTemplateConfigs: option<launchTemplateConfigList>,
    @as("ExcessCapacityTerminationPolicy")
    excessCapacityTerminationPolicy: option<excessCapacityTerminationPolicy>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifySpotFleetRequestCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportSnapshot = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("RoleName") roleName: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DiskContainer") diskContainer: option<snapshotDiskContainer>,
    @as("Description") description: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("ClientData") clientData: option<clientData>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("SnapshotTaskDetail") snapshotTaskDetail: option<snapshotTaskDetail>,
    @as("ImportTaskId") importTaskId: option<string_>,
    @as("Description") description: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ImportSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportKeyPair = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("PublicKeyMaterial") publicKeyMaterial: blob,
    @as("KeyName") keyName: string_,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("KeyPairId") keyPairId: option<string_>,
    @as("KeyName") keyName: option<string_>,
    @as("KeyFingerprint") keyFingerprint: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ImportKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportImage = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("LicenseSpecifications")
    licenseSpecifications: option<importImageLicenseSpecificationListRequest>,
    @as("RoleName") roleName: option<string_>,
    @as("Platform") platform: option<string_>,
    @as("LicenseType") licenseType: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Hypervisor") hypervisor: option<string_>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DiskContainers") diskContainers: option<imageDiskContainerList>,
    @as("Description") description: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("ClientData") clientData: option<clientData>,
    @as("Architecture") architecture: option<string_>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("LicenseSpecifications")
    licenseSpecifications: option<importImageLicenseSpecificationListResponse>,
    @as("StatusMessage") statusMessage: option<string_>,
    @as("Status") status: option<string_>,
    @as("SnapshotDetails") snapshotDetails: option<snapshotDetailList>,
    @as("Progress") progress: option<string_>,
    @as("Platform") platform: option<string_>,
    @as("LicenseType") licenseType: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("ImportTaskId") importTaskId: option<importImageTaskId>,
    @as("ImageId") imageId: option<string_>,
    @as("Hypervisor") hypervisor: option<string_>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("Architecture") architecture: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ImportImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportImage = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("RoleName") roleName: option<string_>,
    @as("S3ExportLocation") s3ExportLocation: exportTaskS3LocationRequest,
    @as("ImageId") imageId: imageId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DiskImageFormat") diskImageFormat: diskImageFormat,
    @as("Description") description: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("StatusMessage") statusMessage: option<string_>,
    @as("Status") status: option<string_>,
    @as("S3ExportLocation") s3ExportLocation: option<exportTaskS3Location>,
    @as("Progress") progress: option<string_>,
    @as("RoleName") roleName: option<string_>,
    @as("ImageId") imageId: option<string_>,
    @as("ExportImageTaskId") exportImageTaskId: option<string_>,
    @as("DiskImageFormat") diskImageFormat: option<diskImageFormat>,
    @as("Description") description: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ExportImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpnGateways = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnGatewayIds") vpnGatewayIds: option<vpnGatewayIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("VpnGateways") vpnGateways: option<vpnGatewayList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpnGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpoints = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("VpcEndpointIds") vpcEndpointIds: option<vpcEndpointIdList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VpcEndpoints") vpcEndpoints: option<vpcEndpointSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpcEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpointServices = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("ServiceNames") serviceNames: option<valueStringList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ServiceDetails") serviceDetails: option<serviceDetailSet>,
    @as("ServiceNames") serviceNames: option<valueStringList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcEndpointServicesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpointServiceConfigurations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("ServiceIds") serviceIds: option<vpcEndpointServiceIdList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ServiceConfigurations") serviceConfigurations: option<serviceConfigurationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcEndpointServiceConfigurationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcEndpointConnections = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VpcEndpointConnections") vpcEndpointConnections: option<vpcEndpointConnectionSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcEndpointConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcClassicLink = {
  type t
  type request = {
    @as("VpcIds") vpcIds: option<vpcClassicLinkIdList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("Vpcs") vpcs: option<vpcClassicLinkList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpcClassicLinkCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVolumes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeIds") volumeIds: option<volumeIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Volumes") volumes: option<volumeList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVolumesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGateways = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayIds") transitGatewayIds: option<transitGatewayIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGateways") transitGateways: option<transitGatewayList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeTransitGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayVpcAttachments = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayAttachmentIds")
    transitGatewayAttachmentIds: option<transitGatewayAttachmentIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayVpcAttachments")
    transitGatewayVpcAttachments: option<transitGatewayVpcAttachmentList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayVpcAttachmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayRouteTables = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayRouteTableIds")
    transitGatewayRouteTableIds: option<transitGatewayRouteTableIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayRouteTables")
    transitGatewayRouteTables: option<transitGatewayRouteTableList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayRouteTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayPeeringAttachments = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayAttachmentIds")
    transitGatewayAttachmentIds: option<transitGatewayAttachmentIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayPeeringAttachments")
    transitGatewayPeeringAttachments: option<transitGatewayPeeringAttachmentList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayPeeringAttachmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayMulticastDomains = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayMulticastDomainIds")
    transitGatewayMulticastDomainIds: option<transitGatewayMulticastDomainIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayMulticastDomains")
    transitGatewayMulticastDomains: option<transitGatewayMulticastDomainList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayMulticastDomainsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayConnects = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayAttachmentIds")
    transitGatewayAttachmentIds: option<transitGatewayAttachmentIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayConnects") transitGatewayConnects: option<transitGatewayConnectList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayConnectsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayAttachments = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayAttachmentIds")
    transitGatewayAttachmentIds: option<transitGatewayAttachmentIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayAttachments")
    transitGatewayAttachments: option<transitGatewayAttachmentList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayAttachmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrafficMirrorTargets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<trafficMirroringMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorTargetIds") trafficMirrorTargetIds: option<trafficMirrorTargetIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TrafficMirrorTargets") trafficMirrorTargets: option<trafficMirrorTargetSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTrafficMirrorTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrafficMirrorSessions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<trafficMirroringMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorSessionIds") trafficMirrorSessionIds: option<trafficMirrorSessionIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TrafficMirrorSessions") trafficMirrorSessions: option<trafficMirrorSessionSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTrafficMirrorSessionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshots = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SnapshotIds") snapshotIds: option<snapshotIdStringList>,
    @as("RestorableByUserIds") restorableByUserIds: option<restorableByStringList>,
    @as("OwnerIds") ownerIds: option<ownerStringList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Snapshots") snapshots: option<snapshotList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeSnapshotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledInstances = {
  type t
  type request = {
    @as("SlotStartTimeRange") slotStartTimeRange: option<slotStartTimeRangeRequest>,
    @as("ScheduledInstanceIds") scheduledInstanceIds: option<scheduledInstanceIdRequestSet>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ScheduledInstanceSet") scheduledInstanceSet: option<scheduledInstanceSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeScheduledInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledInstanceAvailability = {
  type t
  type request = {
    @as("Recurrence") recurrence: scheduledInstanceRecurrenceRequest,
    @as("NextToken") nextToken: option<string_>,
    @as("MinSlotDurationInHours") minSlotDurationInHours: option<integer_>,
    @as("MaxSlotDurationInHours") maxSlotDurationInHours: option<integer_>,
    @as("MaxResults") maxResults: option<describeScheduledInstanceAvailabilityMaxResults>,
    @as("FirstSlotStartTimeRange") firstSlotStartTimeRange: slotDateTimeRangeRequest,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ScheduledInstanceAvailabilitySet")
    scheduledInstanceAvailabilitySet: option<scheduledInstanceAvailabilitySet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeScheduledInstanceAvailabilityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstancesOfferings = {
  type t
  type request = {
    @as("OfferingType") offeringType: option<offeringTypeValues>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("InstanceTenancy") instanceTenancy: option<tenancy>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ReservedInstancesOfferingIds")
    reservedInstancesOfferingIds: option<reservedInstancesOfferingIdStringList>,
    @as("ProductDescription") productDescription: option<riproductDescription>,
    @as("OfferingClass") offeringClass: option<offeringClassType>,
    @as("MinDuration") minDuration: option<long>,
    @as("MaxInstanceCount") maxInstanceCount: option<integer_>,
    @as("MaxDuration") maxDuration: option<long>,
    @as("InstanceType") instanceType: option<instanceType>,
    @as("IncludeMarketplace") includeMarketplace: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ReservedInstancesOfferings")
    reservedInstancesOfferings: option<reservedInstancesOfferingList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeReservedInstancesOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstancesListings = {
  type t
  type request = {
    @as("ReservedInstancesListingId")
    reservedInstancesListingId: option<reservedInstancesListingId>,
    @as("ReservedInstancesId") reservedInstancesId: option<reservationId>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("ReservedInstancesListings")
    reservedInstancesListings: option<reservedInstancesListingList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeReservedInstancesListingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstances = {
  type t
  type request = {
    @as("OfferingType") offeringType: option<offeringTypeValues>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ReservedInstancesIds") reservedInstancesIds: option<reservedInstancesIdStringList>,
    @as("OfferingClass") offeringClass: option<offeringClassType>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("ReservedInstances") reservedInstances: option<reservedInstancesList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeReservedInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplaceRootVolumeTasks = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeReplaceRootVolumeTasksMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("ReplaceRootVolumeTaskIds") replaceRootVolumeTaskIds: option<replaceRootVolumeTaskIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ReplaceRootVolumeTasks") replaceRootVolumeTasks: option<replaceRootVolumeTasks>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeReplaceRootVolumeTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePublicIpv4Pools = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<poolMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PoolIds") poolIds: option<publicIpv4PoolIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("PublicIpv4Pools") publicIpv4Pools: option<publicIpv4PoolSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribePublicIpv4PoolsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePrincipalIdFormat = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describePrincipalIdFormatMaxResults>,
    @as("Resources") resources: option<resourceList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Principals") principals: option<principalIdFormatList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribePrincipalIdFormatCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlacementGroups = {
  type t
  type request = {
    @as("GroupIds") groupIds: option<placementGroupIdStringList>,
    @as("GroupNames") groupNames: option<placementGroupStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("PlacementGroups") placementGroups: option<placementGroupList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribePlacementGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkInsightsPaths = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<networkInsightsMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("NetworkInsightsPathIds") networkInsightsPathIds: option<networkInsightsPathIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkInsightsPaths") networkInsightsPaths: option<networkInsightsPathList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeNetworkInsightsPathsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNatGateways = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("NatGatewayIds") natGatewayIds: option<natGatewayIdStringList>,
    @as("MaxResults") maxResults: option<describeNatGatewaysMaxResults>,
    @as("Filter") filter: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NatGateways") natGateways: option<natGatewayList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeNatGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeManagedPrefixLists = {
  type t
  type request = {
    @as("PrefixListIds") prefixListIds: option<valueStringList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<prefixListMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("PrefixLists") prefixLists: option<managedPrefixListSet>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeManagedPrefixListsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGateways = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayIds") localGatewayIds: option<localGatewayIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGateways") localGateways: option<localGatewaySet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeLocalGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGatewayVirtualInterfaces = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayVirtualInterfaceIds")
    localGatewayVirtualInterfaceIds: option<localGatewayVirtualInterfaceIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGatewayVirtualInterfaces")
    localGatewayVirtualInterfaces: option<localGatewayVirtualInterfaceSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeLocalGatewayVirtualInterfacesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGatewayVirtualInterfaceGroups = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayVirtualInterfaceGroupIds")
    localGatewayVirtualInterfaceGroupIds: option<localGatewayVirtualInterfaceGroupIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGatewayVirtualInterfaceGroups")
    localGatewayVirtualInterfaceGroups: option<localGatewayVirtualInterfaceGroupSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeLocalGatewayVirtualInterfaceGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGatewayRouteTables = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayRouteTableIds") localGatewayRouteTableIds: option<localGatewayRouteTableIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGatewayRouteTables") localGatewayRouteTables: option<localGatewayRouteTableSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeLocalGatewayRouteTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGatewayRouteTableVpcAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayRouteTableVpcAssociationIds")
    localGatewayRouteTableVpcAssociationIds: option<localGatewayRouteTableVpcAssociationIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGatewayRouteTableVpcAssociations")
    localGatewayRouteTableVpcAssociations: option<localGatewayRouteTableVpcAssociationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeLocalGatewayRouteTableVpcAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<localGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds")
    localGatewayRouteTableVirtualInterfaceGroupAssociationIds: option<
      localGatewayRouteTableVirtualInterfaceGroupAssociationIdSet,
    >,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LocalGatewayRouteTableVirtualInterfaceGroupAssociations")
    localGatewayRouteTableVirtualInterfaceGroupAssociations: option<
      localGatewayRouteTableVirtualInterfaceGroupAssociationSet,
    >,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t =
    "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLaunchTemplates = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeLaunchTemplatesMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("LaunchTemplateNames") launchTemplateNames: option<launchTemplateNameStringList>,
    @as("LaunchTemplateIds") launchTemplateIds: option<launchTemplateIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LaunchTemplates") launchTemplates: option<launchTemplateSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeLaunchTemplatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKeyPairs = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("KeyPairIds") keyPairIds: option<keyPairIdStringList>,
    @as("KeyNames") keyNames: option<keyNameStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("KeyPairs") keyPairs: option<keyPairList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeKeyPairsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIpv6Pools = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<ipv6PoolMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PoolIds") poolIds: option<ipv6PoolIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Ipv6Pools") ipv6Pools: option<ipv6PoolSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeIpv6PoolsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInternetGateways = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeInternetGatewaysMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("InternetGatewayIds") internetGatewayIds: option<internetGatewayIdList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("InternetGateways") internetGateways: option<internetGatewayList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeInternetGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImportSnapshotTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("ImportTaskIds") importTaskIds: option<importSnapshotTaskIdList>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ImportSnapshotTasks") importSnapshotTasks: option<importSnapshotTaskList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeImportSnapshotTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHostReservations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("HostReservationIdSet") hostReservationIdSet: option<hostReservationIdSet>,
    @as("Filter") filter: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("HostReservationSet") hostReservationSet: option<hostReservationSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeHostReservationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFpgaImages = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeFpgaImagesMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<filterList>,
    @as("Owners") owners: option<ownerStringList>,
    @as("FpgaImageIds") fpgaImageIds: option<fpgaImageIdList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("FpgaImages") fpgaImages: option<fpgaImageList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeFpgaImagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFlowLogs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("FlowLogIds") flowLogIds: option<flowLogIdList>,
    @as("Filter") filter: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("FlowLogs") flowLogs: option<flowLogSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeFlowLogsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportTasks = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("ExportTaskIds") exportTaskIds: option<exportTaskIdStringList>,
  }
  type response = {@as("ExportTasks") exportTasks: option<exportTaskList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeExportTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportImageTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeExportImageTasksMaxResults>,
    @as("ExportImageTaskIds") exportImageTaskIds: option<exportImageTaskIdList>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ExportImageTasks") exportImageTasks: option<exportImageTaskList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeExportImageTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeElasticGpus = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeElasticGpusMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ElasticGpuIds") elasticGpuIds: option<elasticGpuIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("ElasticGpuSet") elasticGpuSet: option<elasticGpuSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeElasticGpusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEgressOnlyInternetGateways = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeEgressOnlyInternetGatewaysMaxResults>,
    @as("EgressOnlyInternetGatewayIds")
    egressOnlyInternetGatewayIds: option<egressOnlyInternetGatewayIdList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("EgressOnlyInternetGateways")
    egressOnlyInternetGateways: option<egressOnlyInternetGatewayList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeEgressOnlyInternetGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomerGateways = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("CustomerGatewayIds") customerGatewayIds: option<customerGatewayIdStringList>,
  }
  type response = {@as("CustomerGateways") customerGateways: option<customerGatewayList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeCustomerGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCoipPools = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<coipPoolMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("PoolIds") poolIds: option<coipPoolIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("CoipPools") coipPools: option<coipPoolSet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeCoipPoolsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClassicLinkInstances = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<describeClassicLinkInstancesMaxResults>,
    @as("InstanceIds") instanceIds: option<instanceIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Instances") instances: option<classicLinkInstanceList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeClassicLinkInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCarrierGateways = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<carrierGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("CarrierGatewayIds") carrierGatewayIds: option<carrierGatewayIdSet>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("CarrierGateways") carrierGateways: option<carrierGatewaySet>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeCarrierGatewaysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCapacityReservations = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<describeCapacityReservationsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("CapacityReservationIds") capacityReservationIds: option<capacityReservationIdSet>,
  }
  type response = {
    @as("CapacityReservations") capacityReservations: option<capacityReservationSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeCapacityReservationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBundleTasks = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("BundleIds") bundleIds: option<bundleIdStringList>,
  }
  type response = {@as("BundleTasks") bundleTasks: option<bundleTaskList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeBundleTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAvailabilityZones = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AllAvailabilityZones") allAvailabilityZones: option<boolean_>,
    @as("ZoneIds") zoneIds: option<zoneIdStringList>,
    @as("ZoneNames") zoneNames: option<zoneNameStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("AvailabilityZones") availabilityZones: option<availabilityZoneList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeAvailabilityZonesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAddresses = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AllocationIds") allocationIds: option<allocationIdList>,
    @as("PublicIps") publicIps: option<publicIpStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("Addresses") addresses: option<addressList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeAddressesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AttributeNames") attributeNames: option<accountAttributeNameStringList>,
  }
  type response = {@as("AccountAttributes") accountAttributes: option<accountAttributeList>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeAccountAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTransitGatewayConnectPeer = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayConnectPeerId") transitGatewayConnectPeerId: transitGatewayConnectPeerId,
  }
  type response = {
    @as("TransitGatewayConnectPeer") transitGatewayConnectPeer: option<transitGatewayConnectPeer>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DeleteTransitGatewayConnectPeerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpnGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AmazonSideAsn") amazonSideAsn: option<long>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Type") type_: gatewayType,
    @as("AvailabilityZone") availabilityZone: option<string_>,
  }
  type response = {@as("VpnGateway") vpnGateway: option<vpnGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateVpnGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcPeeringConnection = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("PeerRegion") peerRegion: option<string_>,
    @as("VpcId") vpcId: option<vpcId>,
    @as("PeerVpcId") peerVpcId: option<string_>,
    @as("PeerOwnerId") peerOwnerId: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("VpcPeeringConnection") vpcPeeringConnection: option<vpcPeeringConnection>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateVpcPeeringConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcEndpointServiceConfiguration = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ClientToken") clientToken: option<string_>,
    @as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: option<valueStringList>,
    @as("NetworkLoadBalancerArns") networkLoadBalancerArns: option<valueStringList>,
    @as("PrivateDnsName") privateDnsName: option<string_>,
    @as("AcceptanceRequired") acceptanceRequired: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("ServiceConfiguration") serviceConfiguration: option<serviceConfiguration>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateVpcEndpointServiceConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpcEndpoint = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("PrivateDnsEnabled") privateDnsEnabled: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("SecurityGroupIds") securityGroupIds: option<vpcEndpointSecurityGroupIdList>,
    @as("SubnetIds") subnetIds: option<vpcEndpointSubnetIdList>,
    @as("RouteTableIds") routeTableIds: option<vpcEndpointRouteTableIdList>,
    @as("PolicyDocument") policyDocument: option<string_>,
    @as("ServiceName") serviceName: string_,
    @as("VpcId") vpcId: vpcId,
    @as("VpcEndpointType") vpcEndpointType: option<vpcEndpointType>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("VpcEndpoint") vpcEndpoint: option<vpcEndpoint>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateVpcEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpc = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Ipv6CidrBlockNetworkBorderGroup") ipv6CidrBlockNetworkBorderGroup: option<string_>,
    @as("InstanceTenancy") instanceTenancy: option<tenancy>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
    @as("Ipv6Pool") ipv6Pool: option<ipv6PoolEc2Id>,
    @as("AmazonProvidedIpv6CidrBlock") amazonProvidedIpv6CidrBlock: option<boolean_>,
    @as("CidrBlock") cidrBlock: string_,
  }
  type response = {@as("Vpc") vpc: option<vpc>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVolume = {
  type t
  type request = {
    @as("Throughput") throughput: option<integer_>,
    @as("MultiAttachEnabled") multiAttachEnabled: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeType") volumeType: option<volumeType>,
    @as("SnapshotId") snapshotId: option<snapshotId>,
    @as("Size") size: option<integer_>,
    @as("OutpostArn") outpostArn: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Iops") iops: option<integer_>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("AvailabilityZone") availabilityZone: string_,
  }
  type response = volume
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayVpcAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Options") options: option<createTransitGatewayVpcAttachmentRequestOptions>,
    @as("SubnetIds") subnetIds: transitGatewaySubnetIdList,
    @as("VpcId") vpcId: vpcId,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {
    @as("TransitGatewayVpcAttachment")
    transitGatewayVpcAttachment: option<transitGatewayVpcAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayVpcAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayRouteTable = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {
    @as("TransitGatewayRouteTable") transitGatewayRouteTable: option<transitGatewayRouteTable>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayPeeringAttachment = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("PeerRegion") peerRegion: string_,
    @as("PeerAccountId") peerAccountId: string_,
    @as("PeerTransitGatewayId") peerTransitGatewayId: transitAssociationGatewayId,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {
    @as("TransitGatewayPeeringAttachment")
    transitGatewayPeeringAttachment: option<transitGatewayPeeringAttachment>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayPeeringAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayMulticastDomain = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Options") options: option<createTransitGatewayMulticastDomainRequestOptions>,
    @as("TransitGatewayId") transitGatewayId: transitGatewayId,
  }
  type response = {
    @as("TransitGatewayMulticastDomain")
    transitGatewayMulticastDomain: option<transitGatewayMulticastDomain>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayMulticastDomainCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayConnectPeer = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("InsideCidrBlocks") insideCidrBlocks: insideCidrBlocksStringList,
    @as("BgpOptions") bgpOptions: option<transitGatewayConnectRequestBgpOptions>,
    @as("PeerAddress") peerAddress: string_,
    @as("TransitGatewayAddress") transitGatewayAddress: option<string_>,
    @as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayConnectPeer") transitGatewayConnectPeer: option<transitGatewayConnectPeer>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayConnectPeerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGatewayConnect = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Options") options: createTransitGatewayConnectRequestOptions,
    @as("TransportTransitGatewayAttachmentId")
    transportTransitGatewayAttachmentId: transitGatewayAttachmentId,
  }
  type response = {
    @as("TransitGatewayConnect") transitGatewayConnect: option<transitGatewayConnect>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTransitGatewayConnectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransitGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Options") options: option<transitGatewayRequestOptions>,
    @as("Description") description: option<string_>,
  }
  type response = {@as("TransitGateway") transitGateway: option<transitGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateTransitGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrafficMirrorTarget = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Description") description: option<string_>,
    @as("NetworkLoadBalancerArn") networkLoadBalancerArn: option<string_>,
    @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("TrafficMirrorTarget") trafficMirrorTarget: option<trafficMirrorTarget>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTrafficMirrorTargetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrafficMirrorSession = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Description") description: option<string_>,
    @as("VirtualNetworkId") virtualNetworkId: option<integer_>,
    @as("SessionNumber") sessionNumber: integer_,
    @as("PacketLength") packetLength: option<integer_>,
    @as("TrafficMirrorFilterId") trafficMirrorFilterId: trafficMirrorFilterId,
    @as("TrafficMirrorTargetId") trafficMirrorTargetId: trafficMirrorTargetId,
    @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("TrafficMirrorSession") trafficMirrorSession: option<trafficMirrorSession>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTrafficMirrorSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrafficMirrorFilter = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Description") description: option<string_>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("TrafficMirrorFilter") trafficMirrorFilter: option<trafficMirrorFilter>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateTrafficMirrorFilterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSubnet = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpcId") vpcId: vpcId,
    @as("OutpostArn") outpostArn: option<string_>,
    @as("Ipv6CidrBlock") ipv6CidrBlock: option<string_>,
    @as("CidrBlock") cidrBlock: string_,
    @as("AvailabilityZoneId") availabilityZoneId: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
  }
  type response = {@as("Subnet") subnet: option<subnet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateSubnetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshots = {
  type t
  type request = {
    @as("CopyTagsFromSource") copyTagsFromSource: option<copyTagsFromSource>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("OutpostArn") outpostArn: option<string_>,
    @as("InstanceSpecification") instanceSpecification: instanceSpecification,
    @as("Description") description: option<string_>,
  }
  type response = {@as("Snapshots") snapshots: option<snapshotSet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateSnapshotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshot = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VolumeId") volumeId: volumeId,
    @as("OutpostArn") outpostArn: option<string_>,
    @as("Description") description: option<string_>,
  }
  type response = snapshot
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecurityGroup = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: option<vpcId>,
    @as("GroupName") groupName: string_,
    @as("Description") description: string_,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("GroupId") groupId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRouteTable = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: vpcId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("RouteTable") routeTable: option<routeTable>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateRouteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRestoreImageTask = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Name") name: option<string_>,
    @as("ObjectKey") objectKey: string_,
    @as("Bucket") bucket: string_,
  }
  type response = {@as("ImageId") imageId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateRestoreImageTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReservedInstancesListing = {
  type t
  type request = {
    @as("ReservedInstancesId") reservedInstancesId: reservationId,
    @as("PriceSchedules") priceSchedules: priceScheduleSpecificationList,
    @as("InstanceCount") instanceCount: integer_,
    @as("ClientToken") clientToken: string_,
  }
  type response = {
    @as("ReservedInstancesListings")
    reservedInstancesListings: option<reservedInstancesListingList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateReservedInstancesListingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReplaceRootVolumeTask = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("SnapshotId") snapshotId: option<snapshotId>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("ReplaceRootVolumeTask") replaceRootVolumeTask: option<replaceRootVolumeTask>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateReplaceRootVolumeTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlacementGroup = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("PartitionCount") partitionCount: option<integer_>,
    @as("Strategy") strategy: option<placementStrategy>,
    @as("GroupName") groupName: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("PlacementGroup") placementGroup: option<placementGroup>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreatePlacementGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkInterface = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("SubnetId") subnetId: subnetId,
    @as("InterfaceType") interfaceType: option<networkInterfaceCreationType>,
    @as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: option<integer_>,
    @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressSpecificationList>,
    @as("PrivateIpAddress") privateIpAddress: option<string_>,
    @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressList>,
    @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
    @as("Groups") groups: option<securityGroupIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
  }
  type response = {
    @as("ClientToken") clientToken: option<string_>,
    @as("NetworkInterface") networkInterface: option<networkInterface>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateNetworkInterfaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkInsightsPath = {
  type t
  type request = {
    @as("ClientToken") clientToken: string_,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DestinationPort") destinationPort: option<port>,
    @as("Protocol") protocol: protocol,
    @as("Destination") destination: string_,
    @as("Source") source: string_,
    @as("DestinationIp") destinationIp: option<ipAddress>,
    @as("SourceIp") sourceIp: option<ipAddress>,
  }
  type response = {@as("NetworkInsightsPath") networkInsightsPath: option<networkInsightsPath>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateNetworkInsightsPathCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkAcl = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: vpcId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("NetworkAcl") networkAcl: option<networkAcl>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateNetworkAclCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNatGateway = {
  type t
  type request = {
    @as("AllocationId") allocationId: allocationId,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("SubnetId") subnetId: subnetId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {
    @as("NatGateway") natGateway: option<natGateway>,
    @as("ClientToken") clientToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateNatGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateManagedPrefixList = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("AddressFamily") addressFamily: string_,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("MaxEntries") maxEntries: integer_,
    @as("Entries") entries: option<addPrefixListEntries>,
    @as("PrefixListName") prefixListName: string_,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("PrefixList") prefixList: option<managedPrefixList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateManagedPrefixListCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocalGatewayRouteTableVpcAssociation = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: vpcId,
    @as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
  }
  type response = {
    @as("LocalGatewayRouteTableVpcAssociation")
    localGatewayRouteTableVpcAssociation: option<localGatewayRouteTableVpcAssociation>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateLocalGatewayRouteTableVpcAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeyPair = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("KeyName") keyName: string_,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("KeyPairId") keyPairId: option<string_>,
    @as("KeyName") keyName: option<string_>,
    @as("KeyMaterial") keyMaterial: option<sensitiveUserData>,
    @as("KeyFingerprint") keyFingerprint: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInternetGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
  }
  type response = {@as("InternetGateway") internetGateway: option<internetGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstanceExportTask = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("TargetEnvironment") targetEnvironment: exportEnvironment,
    @as("InstanceId") instanceId: instanceId,
    @as("ExportToS3Task") exportToS3Task: exportToS3TaskSpecification,
    @as("Description") description: option<string_>,
  }
  type response = {@as("ExportTask") exportTask: option<exportTask>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateInstanceExportTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImage = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("NoReboot") noReboot: option<boolean_>,
    @as("Name") name: string_,
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingRequestList>,
  }
  type response = {@as("ImageId") imageId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFpgaImage = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ClientToken") clientToken: option<string_>,
    @as("Name") name: option<string_>,
    @as("Description") description: option<string_>,
    @as("LogsStorageLocation") logsStorageLocation: option<storageLocation>,
    @as("InputStorageLocation") inputStorageLocation: storageLocation,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("FpgaImageGlobalId") fpgaImageGlobalId: option<string_>,
    @as("FpgaImageId") fpgaImageId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateFpgaImageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFlowLogs = {
  type t
  type request = {
    @as("MaxAggregationInterval") maxAggregationInterval: option<integer_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("LogFormat") logFormat: option<string_>,
    @as("LogDestination") logDestination: option<string_>,
    @as("LogDestinationType") logDestinationType: option<logDestinationType>,
    @as("TrafficType") trafficType: trafficType,
    @as("ResourceType") resourceType: flowLogsResourceType,
    @as("ResourceIds") resourceIds: flowLogResourceIds,
    @as("LogGroupName") logGroupName: option<string_>,
    @as("DeliverLogsPermissionArn") deliverLogsPermissionArn: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Unsuccessful") unsuccessful: option<unsuccessfulItemSet>,
    @as("FlowLogIds") flowLogIds: option<valueStringList>,
    @as("ClientToken") clientToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateFlowLogsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEgressOnlyInternetGateway = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: vpcId,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {
    @as("EgressOnlyInternetGateway") egressOnlyInternetGateway: option<egressOnlyInternetGateway>,
    @as("ClientToken") clientToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateEgressOnlyInternetGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDefaultVpc = {
  type t
  type request = {@as("DryRun") dryRun: option<boolean_>}
  type response = {@as("Vpc") vpc: option<vpc>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateDefaultVpcCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDefaultSubnet = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("AvailabilityZone") availabilityZone: string_,
  }
  type response = {@as("Subnet") subnet: option<subnet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateDefaultSubnetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomerGateway = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("DeviceName") deviceName: option<string_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Type") type_: gatewayType,
    @as("CertificateArn") certificateArn: option<string_>,
    @as("PublicIp") publicIp: option<string_>,
    @as("BgpAsn") bgpAsn: integer_,
  }
  type response = {@as("CustomerGateway") customerGateway: option<customerGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateCustomerGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClientVpnEndpoint = {
  type t
  type request = {
    @as("ClientConnectOptions") clientConnectOptions: option<clientConnectOptions>,
    @as("SelfServicePortal") selfServicePortal: option<selfServicePortal>,
    @as("VpcId") vpcId: option<vpcId>,
    @as("SecurityGroupIds") securityGroupIds: option<clientVpnSecurityGroupIdSet>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("SplitTunnel") splitTunnel: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("VpnPort") vpnPort: option<integer_>,
    @as("TransportProtocol") transportProtocol: option<transportProtocol>,
    @as("DnsServers") dnsServers: option<valueStringList>,
    @as("ConnectionLogOptions") connectionLogOptions: connectionLogOptions,
    @as("AuthenticationOptions") authenticationOptions: clientVpnAuthenticationRequestList,
    @as("ServerCertificateArn") serverCertificateArn: string_,
    @as("ClientCidrBlock") clientCidrBlock: string_,
  }
  type response = {
    @as("DnsName") dnsName: option<string_>,
    @as("Status") status: option<clientVpnEndpointStatus>,
    @as("ClientVpnEndpointId") clientVpnEndpointId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateClientVpnEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCarrierGateway = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("VpcId") vpcId: vpcId,
  }
  type response = {@as("CarrierGateway") carrierGateway: option<carrierGateway>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateCarrierGatewayCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCapacityReservation = {
  type t
  type request = {
    @as("OutpostArn") outpostArn: option<outpostArn>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("InstanceMatchCriteria") instanceMatchCriteria: option<instanceMatchCriteria>,
    @as("EndDateType") endDateType: option<endDateType>,
    @as("EndDate") endDate: option<dateTime>,
    @as("EphemeralStorage") ephemeralStorage: option<boolean_>,
    @as("EbsOptimized") ebsOptimized: option<boolean_>,
    @as("InstanceCount") instanceCount: integer_,
    @as("Tenancy") tenancy: option<capacityReservationTenancy>,
    @as("AvailabilityZoneId") availabilityZoneId: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("InstancePlatform") instancePlatform: capacityReservationInstancePlatform,
    @as("InstanceType") instanceType: string_,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {@as("CapacityReservation") capacityReservation: option<capacityReservation>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateCapacityReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopySnapshot = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("SourceSnapshotId") sourceSnapshotId: string_,
    @as("SourceRegion") sourceRegion: string_,
    @as("PresignedUrl") presignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Encrypted") encrypted: option<boolean_>,
    @as("DestinationRegion") destinationRegion: option<string_>,
    @as("DestinationOutpostArn") destinationOutpostArn: option<string_>,
    @as("Description") description: option<string_>,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @as("SnapshotId") snapshotId: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CopySnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelReservedInstancesListing = {
  type t
  type request = {
    @as("ReservedInstancesListingId") reservedInstancesListingId: reservedInstancesListingId,
  }
  type response = {
    @as("ReservedInstancesListings")
    reservedInstancesListings: option<reservedInstancesListingList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CancelReservedInstancesListingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeSecurityGroupIngress = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ToPort") toPort: option<integer_>,
    @as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: option<string_>,
    @as("SourceSecurityGroupName") sourceSecurityGroupName: option<string_>,
    @as("IpProtocol") ipProtocol: option<string_>,
    @as("IpPermissions") ipPermissions: option<ipPermissionList>,
    @as("GroupName") groupName: option<securityGroupName>,
    @as("GroupId") groupId: option<securityGroupId>,
    @as("FromPort") fromPort: option<integer_>,
    @as("CidrIp") cidrIp: option<string_>,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AuthorizeSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AuthorizeSecurityGroupEgress = {
  type t
  type request = {
    @as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: option<string_>,
    @as("SourceSecurityGroupName") sourceSecurityGroupName: option<string_>,
    @as("ToPort") toPort: option<integer_>,
    @as("IpProtocol") ipProtocol: option<string_>,
    @as("FromPort") fromPort: option<integer_>,
    @as("CidrIp") cidrIp: option<string_>,
    @as("IpPermissions") ipPermissions: option<ipPermissionList>,
    @as("GroupId") groupId: securityGroupId,
    @as("DryRun") dryRun: option<boolean_>,
  }

  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AuthorizeSecurityGroupEgressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AllocateHosts = {
  type t
  type request = {
    @as("HostRecovery") hostRecovery: option<hostRecovery>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Quantity") quantity: integer_,
    @as("InstanceFamily") instanceFamily: option<string_>,
    @as("InstanceType") instanceType: option<string_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("AvailabilityZone") availabilityZone: string_,
    @as("AutoPlacement") autoPlacement: option<autoPlacement>,
  }
  type response = {@as("HostIds") hostIds: option<responseHostIdList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AllocateHostsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AllocateAddress = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<string_>,
    @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
    @as("PublicIpv4Pool") publicIpv4Pool: option<ipv4PoolEc2Id>,
    @as("Address") address: option<publicIpAddress>,
    @as("Domain") domain: option<domainType>,
  }
  type response = {
    @as("CarrierIp") carrierIp: option<string_>,
    @as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: option<string_>,
    @as("CustomerOwnedIp") customerOwnedIp: option<string_>,
    @as("Domain") domain: option<domainType>,
    @as("NetworkBorderGroup") networkBorderGroup: option<string_>,
    @as("PublicIpv4Pool") publicIpv4Pool: option<string_>,
    @as("AllocationId") allocationId: option<string_>,
    @as("PublicIp") publicIp: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "AllocateAddressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptVpcPeeringConnection = {
  type t
  type request = {
    @as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("VpcPeeringConnection") vpcPeeringConnection: option<vpcPeeringConnection>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "AcceptVpcPeeringConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RunScheduledInstances = {
  type t
  type request = {
    @as("ScheduledInstanceId") scheduledInstanceId: scheduledInstanceId,
    @as("LaunchSpecification") launchSpecification: scheduledInstancesLaunchSpecification,
    @as("InstanceCount") instanceCount: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
  }
  type response = {@as("InstanceIdSet") instanceIdSet: option<instanceIdSet>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RunScheduledInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyFleet = {
  type t
  type request = {
    @as("TargetCapacitySpecification")
    targetCapacitySpecification: option<targetCapacitySpecificationRequest>,
    @as("FleetId") fleetId: fleetId,
    @as("LaunchTemplateConfigs")
    launchTemplateConfigs: option<fleetLaunchTemplateConfigListRequest>,
    @as("ExcessCapacityTerminationPolicy")
    excessCapacityTerminationPolicy: option<fleetExcessCapacityTerminationPolicy>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("Return") return: option<boolean_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportVolume = {
  type t
  type request = {
    @as("Volume") volume: volumeDetail,
    @as("Image") image: diskImageDetail,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Description") description: option<string_>,
    @as("AvailabilityZone") availabilityZone: string_,
  }
  type response = {@as("ConversionTask") conversionTask: option<conversionTask>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ImportVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportInstance = {
  type t
  type request = {
    @as("Platform") platform: platformValues,
    @as("LaunchSpecification") launchSpecification: option<importInstanceLaunchSpecification>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DiskImages") diskImages: option<diskImageList>,
    @as("Description") description: option<string_>,
  }
  type response = {@as("ConversionTask") conversionTask: option<conversionTask>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ImportInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLaunchTemplateData = {
  type t
  type request = {
    @as("InstanceId") instanceId: instanceId,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("LaunchTemplateData") launchTemplateData: option<responseLaunchTemplateData>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "GetLaunchTemplateDataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableFastSnapshotRestores = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SourceSnapshotIds") sourceSnapshotIds: snapshotIdStringList,
    @as("AvailabilityZones") availabilityZones: availabilityZoneStringList,
  }
  type response = {
    @as("Unsuccessful") unsuccessful: option<enableFastSnapshotRestoreErrorSet>,
    @as("Successful") successful: option<enableFastSnapshotRestoreSuccessSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "EnableFastSnapshotRestoresCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableFastSnapshotRestores = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("SourceSnapshotIds") sourceSnapshotIds: snapshotIdStringList,
    @as("AvailabilityZones") availabilityZones: availabilityZoneStringList,
  }
  type response = {
    @as("Unsuccessful") unsuccessful: option<disableFastSnapshotRestoreErrorSet>,
    @as("Successful") successful: option<disableFastSnapshotRestoreSuccessSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DisableFastSnapshotRestoresCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeVpcsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpcIds") vpcIds: option<vpcIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Vpcs") vpcs: option<vpcList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpcsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpcPeeringConnections = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeVpcPeeringConnectionsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("VpcPeeringConnectionIds") vpcPeeringConnectionIds: option<vpcPeeringConnectionIdList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("VpcPeeringConnections") vpcPeeringConnections: option<vpcPeeringConnectionList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeVpcPeeringConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVolumeStatus = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VolumeIds") volumeIds: option<volumeIdStringList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("VolumeStatuses") volumeStatuses: option<volumeStatusList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVolumeStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransitGatewayConnectPeers = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<transitGatewayMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("TransitGatewayConnectPeerIds")
    transitGatewayConnectPeerIds: option<transitGatewayConnectPeerIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayConnectPeers")
    transitGatewayConnectPeers: option<transitGatewayConnectPeerList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTransitGatewayConnectPeersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrafficMirrorFilters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<trafficMirroringMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TrafficMirrorFilterIds") trafficMirrorFilterIds: option<trafficMirrorFilterIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TrafficMirrorFilters") trafficMirrorFilters: option<trafficMirrorFilterSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeTrafficMirrorFiltersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubnets = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeSubnetsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("SubnetIds") subnetIds: option<subnetIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Subnets") subnets: option<subnetList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeSubnetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRouteTables = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeRouteTablesMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("RouteTableIds") routeTableIds: option<routeTableIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("RouteTables") routeTables: option<routeTableList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeRouteTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstancesModifications = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("ReservedInstancesModificationIds")
    reservedInstancesModificationIds: option<reservedInstancesModificationIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("ReservedInstancesModifications")
    reservedInstancesModifications: option<reservedInstancesModificationList>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeReservedInstancesModificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkInterfaces = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeNetworkInterfacesMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkInterfaceIds") networkInterfaceIds: option<networkInterfaceIdList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkInterfaces") networkInterfaces: option<networkInterfaceList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeNetworkInterfacesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkAcls = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeNetworkAclsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkAclIds") networkAclIds: option<networkAclIdStringList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkAcls") networkAcls: option<networkAclList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeNetworkAclsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceStatus = {
  type t
  type request = {
    @as("IncludeAllInstances") includeAllInstances: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("InstanceIds") instanceIds: option<instanceIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("InstanceStatuses") instanceStatuses: option<instanceStatusList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeInstanceStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImportImageTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("ImportTaskIds") importTaskIds: option<importTaskIdList>,
    @as("Filters") filters: option<filterList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ImportImageTasks") importImageTasks: option<importImageTaskList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeImportImageTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImages = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Owners") owners: option<ownerStringList>,
    @as("ImageIds") imageIds: option<imageIdStringList>,
    @as("Filters") filters: option<filterList>,
    @as("ExecutableUsers") executableUsers: option<executableByStringList>,
  }
  type response = {@as("Images") images: option<imageList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeImagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHosts = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("HostIds") hostIds: option<requestHostIdList>,
    @as("Filter") filter: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Hosts") hosts: option<hostList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeHostsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClientVpnEndpoints = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<describeClientVpnEndpointMaxResults>,
    @as("ClientVpnEndpointIds") clientVpnEndpointIds: option<clientVpnEndpointIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ClientVpnEndpoints") clientVpnEndpoints: option<endpointSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeClientVpnEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLaunchTemplate = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("LaunchTemplateData") launchTemplateData: requestLaunchTemplateData,
    @as("VersionDescription") versionDescription: option<versionDescription>,
    @as("LaunchTemplateName") launchTemplateName: launchTemplateName,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Warning") warning: option<validationWarning>,
    @as("LaunchTemplate") launchTemplate: option<launchTemplate>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateLaunchTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFleet = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: option<boolean_>,
    @as("ValidUntil") validUntil: option<dateTime>,
    @as("ValidFrom") validFrom: option<dateTime>,
    @as("Type") type_: option<fleetType>,
    @as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: option<boolean_>,
    @as("TargetCapacitySpecification")
    targetCapacitySpecification: targetCapacitySpecificationRequest,
    @as("LaunchTemplateConfigs") launchTemplateConfigs: fleetLaunchTemplateConfigListRequest,
    @as("ExcessCapacityTerminationPolicy")
    excessCapacityTerminationPolicy: option<fleetExcessCapacityTerminationPolicy>,
    @as("OnDemandOptions") onDemandOptions: option<onDemandOptionsRequest>,
    @as("SpotOptions") spotOptions: option<spotOptionsRequest>,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Instances") instances: option<createFleetInstancesSet>,
    @as("Errors") errors: option<createFleetErrorsSet>,
    @as("FleetId") fleetId: option<fleetId>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDhcpOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DhcpConfigurations") dhcpConfigurations: newDhcpConfigurationList,
  }
  type response = {@as("DhcpOptions") dhcpOptions: option<dhcpOptions>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateDhcpOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartNetworkInsightsAnalysis = {
  type t
  type request = {
    @as("ClientToken") clientToken: string_,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("FilterInArns") filterInArns: option<arnList>,
    @as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId,
  }
  type response = {
    @as("NetworkInsightsAnalysis") networkInsightsAnalysis: option<networkInsightsAnalysis>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "StartNetworkInsightsAnalysisCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpnTunnelOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("TunnelOptions") tunnelOptions: modifyVpnTunnelOptionsSpecification,
    @as("VpnTunnelOutsideIpAddress") vpnTunnelOutsideIpAddress: string_,
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
  }
  type response = {@as("VpnConnection") vpnConnection: option<vpnConnection>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVpnTunnelOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpnTunnelCertificate = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnTunnelOutsideIpAddress") vpnTunnelOutsideIpAddress: string_,
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
  }
  type response = {@as("VpnConnection") vpnConnection: option<vpnConnection>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpnTunnelCertificateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpnConnectionOptions = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: option<string_>,
    @as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: option<string_>,
    @as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: option<string_>,
    @as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: option<string_>,
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
  }
  type response = {@as("VpnConnection") vpnConnection: option<vpnConnection>}
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "ModifyVpnConnectionOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyVpnConnection = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnGatewayId") vpnGatewayId: option<vpnGatewayId>,
    @as("CustomerGatewayId") customerGatewayId: option<customerGatewayId>,
    @as("TransitGatewayId") transitGatewayId: option<transitGatewayId>,
    @as("VpnConnectionId") vpnConnectionId: vpnConnectionId,
  }
  type response = {@as("VpnConnection") vpnConnection: option<vpnConnection>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "ModifyVpnConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStaleSecurityGroups = {
  type t
  type request = {
    @as("VpcId") vpcId: vpcId,
    @as("NextToken") nextToken: option<describeStaleSecurityGroupsNextToken>,
    @as("MaxResults") maxResults: option<describeStaleSecurityGroupsMaxResults>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("StaleSecurityGroupSet") staleSecurityGroupSet: option<staleSecurityGroupSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeStaleSecurityGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeSecurityGroupsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("GroupNames") groupNames: option<groupNameStringList>,
    @as("GroupIds") groupIds: option<groupIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("SecurityGroups") securityGroups: option<securityGroupList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeSecurityGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceTypes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<ditmaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("InstanceTypes") instanceTypes: option<requestInstanceTypeList>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceTypes") instanceTypes: option<instanceTypeInfoList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeInstanceTypesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDhcpOptions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<describeDhcpOptionsMaxResults>,
    @as("NextToken") nextToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
    @as("DhcpOptionsIds") dhcpOptionsIds: option<dhcpOptionsIdStringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("DhcpOptions") dhcpOptions: option<dhcpOptionsList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeDhcpOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConversionTasks = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("ConversionTaskIds") conversionTaskIds: option<conversionIdStringList>,
  }
  type response = {@as("ConversionTasks") conversionTasks: option<describeConversionTaskList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeConversionTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVpnConnection = {
  type t
  type request = {
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("Options") options: option<vpnConnectionOptionsSpecification>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("TransitGatewayId") transitGatewayId: option<transitGatewayId>,
    @as("VpnGatewayId") vpnGatewayId: option<vpnGatewayId>,
    @as("Type") type_: string_,
    @as("CustomerGatewayId") customerGatewayId: customerGatewayId,
  }
  type response = {@as("VpnConnection") vpnConnection: option<vpnConnection>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "CreateVpnConnectionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLaunchTemplateVersion = {
  type t
  type request = {
    @as("LaunchTemplateData") launchTemplateData: requestLaunchTemplateData,
    @as("VersionDescription") versionDescription: option<versionDescription>,
    @as("SourceVersion") sourceVersion: option<string_>,
    @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
    @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
    @as("ClientToken") clientToken: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Warning") warning: option<validationWarning>,
    @as("LaunchTemplateVersion") launchTemplateVersion: option<launchTemplateVersion>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "CreateLaunchTemplateVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RunInstances = {
  type t
  type request = {
    @as("EnclaveOptions") enclaveOptions: option<enclaveOptionsRequest>,
    @as("MetadataOptions") metadataOptions: option<instanceMetadataOptionsRequest>,
    @as("LicenseSpecifications") licenseSpecifications: option<licenseSpecificationListRequest>,
    @as("HibernationOptions") hibernationOptions: option<hibernationOptionsRequest>,
    @as("CapacityReservationSpecification")
    capacityReservationSpecification: option<capacityReservationSpecification>,
    @as("CpuOptions") cpuOptions: option<cpuOptionsRequest>,
    @as("CreditSpecification") creditSpecification: option<creditSpecificationRequest>,
    @as("InstanceMarketOptions") instanceMarketOptions: option<instanceMarketOptionsRequest>,
    @as("LaunchTemplate") launchTemplate: option<launchTemplateSpecification>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ElasticInferenceAccelerators")
    elasticInferenceAccelerators: option<elasticInferenceAccelerators>,
    @as("ElasticGpuSpecification") elasticGpuSpecification: option<elasticGpuSpecifications>,
    @as("PrivateIpAddress") privateIpAddress: option<string_>,
    @as("NetworkInterfaces") networkInterfaces: option<instanceNetworkInterfaceSpecificationList>,
    @as("InstanceInitiatedShutdownBehavior")
    instanceInitiatedShutdownBehavior: option<shutdownBehavior>,
    @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>,
    @as("EbsOptimized") ebsOptimized: option<boolean_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("DisableApiTermination") disableApiTermination: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("AdditionalInfo") additionalInfo: option<string_>,
    @as("UserData") userData: option<string_>,
    @as("SubnetId") subnetId: option<subnetId>,
    @as("SecurityGroups") securityGroups: option<securityGroupStringList>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIdStringList>,
    @as("RamdiskId") ramdiskId: option<ramdiskId>,
    @as("Placement") placement: option<placement>,
    @as("Monitoring") monitoring: option<runInstancesMonitoringEnabled>,
    @as("MinCount") minCount: integer_,
    @as("MaxCount") maxCount: integer_,
    @as("KeyName") keyName: option<keyPairName>,
    @as("KernelId") kernelId: option<kernelId>,
    @as("Ipv6Addresses") ipv6Addresses: option<instanceIpv6AddressList>,
    @as("Ipv6AddressCount") ipv6AddressCount: option<integer_>,
    @as("InstanceType") instanceType: option<instanceType>,
    @as("ImageId") imageId: option<imageId>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappingRequestList>,
  }
  type response = reservation
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RunInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RequestSpotInstances = {
  type t
  type request = {
    @as("InstanceInterruptionBehavior")
    instanceInterruptionBehavior: option<instanceInterruptionBehavior>,
    @as("TagSpecifications") tagSpecifications: option<tagSpecificationList>,
    @as("ValidUntil") validUntil: option<dateTime>,
    @as("ValidFrom") validFrom: option<dateTime>,
    @as("Type") type_: option<spotInstanceType>,
    @as("SpotPrice") spotPrice: option<string_>,
    @as("LaunchSpecification") launchSpecification: option<requestSpotLaunchSpecification>,
    @as("LaunchGroup") launchGroup: option<string_>,
    @as("InstanceCount") instanceCount: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("ClientToken") clientToken: option<string_>,
    @as("BlockDurationMinutes") blockDurationMinutes: option<integer_>,
    @as("AvailabilityZoneGroup") availabilityZoneGroup: option<string_>,
  }
  type response = {
    @as("SpotInstanceRequests") spotInstanceRequests: option<spotInstanceRequestList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RequestSpotInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RequestSpotFleet = {
  type t
  type request = {
    @as("SpotFleetRequestConfig") spotFleetRequestConfig: spotFleetRequestConfigData,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {@as("SpotFleetRequestId") spotFleetRequestId: option<string_>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "RequestSpotFleetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVpnConnections = {
  type t
  type request = {
    @as("DryRun") dryRun: option<boolean_>,
    @as("VpnConnectionIds") vpnConnectionIds: option<vpnConnectionIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {@as("VpnConnections") vpnConnections: option<vpnConnectionList>}
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeVpnConnectionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotInstanceRequests = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("SpotInstanceRequestIds") spotInstanceRequestIds: option<spotInstanceRequestIdList>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("SpotInstanceRequests") spotInstanceRequests: option<spotInstanceRequestList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotInstanceRequestsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNetworkInsightsAnalyses = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("MaxResults") maxResults: option<networkInsightsMaxResults>,
    @as("Filters") filters: option<filterList>,
    @as("AnalysisEndTime") analysisEndTime: option<millisecondDateTime>,
    @as("AnalysisStartTime") analysisStartTime: option<millisecondDateTime>,
    @as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>,
    @as("NetworkInsightsAnalysisIds")
    networkInsightsAnalysisIds: option<networkInsightsAnalysisIdList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("NetworkInsightsAnalyses") networkInsightsAnalyses: option<networkInsightsAnalysisList>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeNetworkInsightsAnalysesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLaunchTemplateVersions = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxVersion") maxVersion: option<string_>,
    @as("MinVersion") minVersion: option<string_>,
    @as("Versions") versions: option<versionStringList>,
    @as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
    @as("LaunchTemplateId") launchTemplateId: option<launchTemplateId>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LaunchTemplateVersions") launchTemplateVersions: option<launchTemplateVersionSet>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeLaunchTemplateVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFleets = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("FleetIds") fleetIds: option<fleetIdSet>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("Fleets") fleets: option<fleetSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeFleetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpotFleetRequests = {
  type t
  type request = {
    @as("SpotFleetRequestIds") spotFleetRequestIds: option<spotFleetRequestIdList>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
  }
  type response = {
    @as("SpotFleetRequestConfigs") spotFleetRequestConfigs: option<spotFleetRequestConfigSet>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ec2") @new
  external new_: request => t = "DescribeSpotFleetRequestsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstances = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("InstanceIds") instanceIds: option<instanceIdStringList>,
    @as("Filters") filters: option<filterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Reservations") reservations: option<reservationList>,
  }
  @module("@aws-sdk/client-ec2") @new external new_: request => t = "DescribeInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
