type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type totalGpuMemory = int;
type totalFpgaMemory = int;
type scope = [@as("Region") #Region | @as("Availability Zone") #Availability Zone]
type vpnStaticRouteSource = [@as("Static") #Static]
type vpnState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type vpnProtocol = [@as("openvpn") #openvpn]
type vpnGatewayId = string
type vpnEcmpSupportValue = [@as("disable") #disable | @as("enable") #enable]
type vpnConnectionId = string
type vpcTenancy = [@as("default") #default]
type vpcState = [@as("available") #available | @as("pending") #pending]
type vpcPeeringConnectionStateReasonCode = [@as("deleting") #deleting | @as("provisioning") #provisioning | @as("expired") #expired | @as("failed") #failed | @as("rejected") #rejected | @as("deleted") #deleted | @as("active") #active | @as("pending-acceptance") #pending_acceptance | @as("initiating-request") #initiating_request]
type vpcPeeringConnectionId = string
type vpcId = string
type vpcFlowLogId = string
type vpcEndpointType = [@as("GatewayLoadBalancer") #GatewayLoadBalancer | @as("Gateway") #Gateway | @as("Interface") #Interface]
type vpcEndpointServiceId = string
type vpcEndpointId = string
type vpcCidrBlockStateCode = [@as("failed") #failed | @as("failing") #failing | @as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type vpcCidrAssociationId = string
type vpcAttributeName = [@as("enableDnsHostnames") #enableDnsHostnames | @as("enableDnsSupport") #enableDnsSupport]
type volumeType = [@as("gp3") #gp3 | @as("st1") #st1 | @as("sc1") #sc1 | @as("gp2") #gp2 | @as("io2") #io2 | @as("io1") #io1 | @as("standard") #standard]
type volumeStatusName = [@as("io-performance") #io_performance | @as("io-enabled") #io_enabled]
type volumeStatusInfoStatus = [@as("insufficient-data") #insufficient_data | @as("impaired") #impaired | @as("ok") #ok]
type volumeState = [@as("error") #error | @as("deleted") #deleted | @as("deleting") #deleting | @as("in-use") #in_use | @as("available") #available | @as("creating") #creating]
type volumeModificationState = [@as("failed") #failed | @as("completed") #completed | @as("optimizing") #optimizing | @as("modifying") #modifying]
type volumeId = string
type volumeAttributeName = [@as("productCodes") #productCodes | @as("autoEnableIO") #autoEnableIO]
type volumeAttachmentState = [@as("busy") #busy | @as("detached") #detached | @as("detaching") #detaching | @as("attached") #attached | @as("attaching") #attaching]
type virtualizationType = [@as("paravirtual") #paravirtual | @as("hvm") #hvm]
type versionDescription = string
type vCpuCount = int;
type usageClassType = [@as("on-demand") #on_demand | @as("spot") #spot]
type unsuccessfulInstanceCreditSpecificationErrorCode = [@as("InstanceCreditSpecification.NotSupported") #InstanceCreditSpecification_NotSupported | @as("IncorrectInstanceState") #IncorrectInstanceState | @as("InvalidInstanceID.NotFound") #InvalidInstanceID_NotFound | @as("InvalidInstanceID.Malformed") #InvalidInstanceID_Malformed]
type unlimitedSupportedInstanceFamily = [@as("t4g") #t4g | @as("t3a") #t3a | @as("t3") #t3 | @as("t2") #t2]
type tunnelInsideIpVersion = [@as("ipv6") #ipv6 | @as("ipv4") #ipv4]
type transportProtocol = [@as("udp") #udp | @as("tcp") #tcp]
type transitGatewayState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("modifying") #modifying | @as("available") #available | @as("pending") #pending]
type transitGatewayRouteType = [@as("propagated") #propagated | @as("static") #static]
type transitGatewayRouteTableState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type transitGatewayRouteTableId = string
type transitGatewayRouteState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("blackhole") #blackhole | @as("active") #active | @as("pending") #pending]
type transitGatewayPropagationState = [@as("disabled") #disabled | @as("disabling") #disabling | @as("enabled") #enabled | @as("enabling") #enabling]
type transitGatewayPrefixListReferenceState = [@as("deleting") #deleting | @as("modifying") #modifying | @as("available") #available | @as("pending") #pending]
type transitGatewayMulticastDomainState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type transitGatewayMulticastDomainId = string
type transitGatewayMulitcastDomainAssociationState = [@as("failed") #failed | @as("rejected") #rejected | @as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating | @as("pendingAcceptance") #pendingAcceptance]
type transitGatewayMaxResults = int;
type transitGatewayId = string
type transitGatewayConnectPeerState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type transitGatewayConnectPeerId = string
type transitGatewayAttachmentState = [@as("failing") #failing | @as("rejecting") #rejecting | @as("rejected") #rejected | @as("failed") #failed | @as("deleted") #deleted | @as("deleting") #deleting | @as("modifying") #modifying | @as("available") #available | @as("pending") #pending | @as("rollingBack") #rollingBack | @as("pendingAcceptance") #pendingAcceptance | @as("initiatingRequest") #initiatingRequest | @as("initiating") #initiating]
type transitGatewayAttachmentResourceType = [@as("tgw-peering") #tgw_peering | @as("peering") #peering | @as("connect") #connect | @as("direct-connect-gateway") #direct_connect_gateway | @as("vpn") #vpn | @as("vpc") #vpc]
type transitGatewayAttachmentId = string
type transitGatewayAssociationState = [@as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type transitAssociationGatewayId = string
type trafficType = [@as("ALL") #ALL | @as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
type trafficMirroringMaxResults = int;
type trafficMirrorTargetType = [@as("network-load-balancer") #network_load_balancer | @as("network-interface") #network_interface]
type trafficMirrorTargetId = string
type trafficMirrorSessionId = string
type trafficMirrorSessionField = [@as("virtual-network-id") #virtual_network_id | @as("description") #description | @as("packet-length") #packet_length]
type trafficMirrorRuleAction = [@as("reject") #reject | @as("accept") #accept]
type trafficMirrorNetworkService = [@as("amazon-dns") #amazon_dns]
type trafficMirrorFilterRuleId = string
type trafficMirrorFilterRuleField = [@as("description") #description | @as("protocol") #protocol | @as("source-port-range") #source_port_range | @as("destination-port-range") #destination_port_range]
type trafficMirrorFilterId = string
type trafficDirection = [@as("egress") #egress | @as("ingress") #ingress]
type threadsPerCore = int;
type tenancy = [@as("host") #host | @as("dedicated") #dedicated | @as("default") #default]
type telemetryStatus = [@as("DOWN") #DOWN | @as("UP") #UP]
type taggableResourceId = string
type summaryStatus = [@as("initializing") #initializing | @as("not-applicable") #not_applicable | @as("insufficient-data") #insufficient_data | @as("impaired") #impaired | @as("ok") #ok]
type subnetState = [@as("available") #available | @as("pending") #pending]
type subnetId = string
type subnetCidrBlockStateCode = [@as("failed") #failed | @as("failing") #failing | @as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type subnetCidrAssociationId = string
type amazonawsString = string
type statusType = [@as("initializing") #initializing | @as("insufficient-data") #insufficient_data | @as("failed") #failed | @as("passed") #passed]
type statusName = [@as("reachability") #reachability]
type status = [@as("InClassic") #InClassic | @as("InVpc") #InVpc | @as("MoveInProgress") #MoveInProgress]
type staticSourcesSupportValue = [@as("disable") #disable | @as("enable") #enable]
type state = [@as("Expired") #Expired | @as("Failed") #Failed | @as("Rejected") #Rejected | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Available") #Available | @as("Pending") #Pending | @as("PendingAcceptance") #PendingAcceptance]
type spotInstanceType = [@as("persistent") #persistent | @as("one-time") #one_time]
type spotInstanceState = [@as("failed") #failed | @as("cancelled") #cancelled | @as("closed") #closed | @as("active") #active | @as("open") #open]
type spotInstanceRequestId = string
type spotInstanceInterruptionBehavior = [@as("terminate") #terminate | @as("stop") #stop | @as("hibernate") #hibernate]
type spotFleetRequestId = string
type spotAllocationStrategy = [@as("capacity-optimized-prioritized") #capacity_optimized_prioritized | @as("capacity-optimized") #capacity_optimized | @as("diversified") #diversified | @as("lowest-price") #lowest_price]
type snapshotState = [@as("error") #error | @as("completed") #completed | @as("pending") #pending]
type snapshotId = string
type snapshotAttributeName = [@as("createVolumePermission") #createVolumePermission | @as("productCodes") #productCodes]
type shutdownBehavior = [@as("terminate") #terminate | @as("stop") #stop]
type serviceType = [@as("GatewayLoadBalancer") #GatewayLoadBalancer | @as("Gateway") #Gateway | @as("Interface") #Interface]
type serviceState = [@as("Failed") #Failed | @as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Available") #Available | @as("Pending") #Pending]
type sensitiveUserData = string
type selfServicePortal = [@as("disabled") #disabled | @as("enabled") #enabled]
type securityGroupName = string
type securityGroupId = string
type scheduledInstanceId = string
type ruleAction = [@as("deny") #deny | @as("allow") #allow]
type routeTableId = string
type routeTableAssociationStateCode = [@as("failed") #failed | @as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type routeTableAssociationId = string
type routeState = [@as("blackhole") #blackhole | @as("active") #active]
type routeOrigin = [@as("EnableVgwRoutePropagation") #EnableVgwRoutePropagation | @as("CreateRoute") #CreateRoute | @as("CreateRouteTable") #CreateRouteTable]
type routeGatewayId = string
type rootDeviceType = [@as("instance-store") #instance_store | @as("ebs") #ebs]
type resourceType = [@as("vpc-flow-log") #vpc_flow_log | @as("vpn-gateway") #vpn_gateway | @as("vpn-connection") #vpn_connection | @as("vpc-peering-connection") #vpc_peering_connection | @as("vpc") #vpc | @as("volume") #volume | @as("transit-gateway-route-table") #transit_gateway_route_table | @as("transit-gateway-multicast-domain") #transit_gateway_multicast_domain | @as("transit-gateway-connect-peer") #transit_gateway_connect_peer | @as("transit-gateway-attachment") #transit_gateway_attachment | @as("transit-gateway") #transit_gateway | @as("traffic-mirror-target") #traffic_mirror_target | @as("traffic-mirror-session") #traffic_mirror_session | @as("traffic-mirror-filter") #traffic_mirror_filter | @as("subnet") #subnet | @as("spot-instances-request") #spot_instances_request | @as("spot-fleet-request") #spot_fleet_request | @as("snapshot") #snapshot | @as("security-group") #security_group | @as("route-table") #route_table | @as("reserved-instances") #reserved_instances | @as("placement-group") #placement_group | @as("network-insights-path") #network_insights_path | @as("network-insights-analysis") #network_insights_analysis | @as("network-interface") #network_interface | @as("network-acl") #network_acl | @as("natgateway") #natgateway | @as("local-gateway-route-table-vpc-association") #local_gateway_route_table_vpc_association | @as("launch-template") #launch_template | @as("key-pair") #key_pair | @as("internet-gateway") #internet_gateway | @as("instance") #instance | @as("import-snapshot-task") #import_snapshot_task | @as("import-image-task") #import_image_task | @as("image") #image | @as("host-reservation") #host_reservation | @as("fpga-image") #fpga_image | @as("fleet") #fleet | @as("export-instance-task") #export_instance_task | @as("export-image-task") #export_image_task | @as("elastic-gpu") #elastic_gpu | @as("elastic-ip") #elastic_ip | @as("egress-only-internet-gateway") #egress_only_internet_gateway | @as("dhcp-options") #dhcp_options | @as("dedicated-host") #dedicated_host | @as("customer-gateway") #customer_gateway | @as("client-vpn-endpoint") #client_vpn_endpoint]
type resourceArn = string
type resetImageAttributeName = [@as("launchPermission") #launchPermission]
type resetFpgaImageAttributeName = [@as("loadPermission") #loadPermission]
type reservedInstancesOfferingId = string
type reservedInstancesModificationId = string
type reservedInstancesListingId = string
type reservedInstanceState = [@as("queued-deleted") #queued_deleted | @as("queued") #queued | @as("retired") #retired | @as("payment-failed") #payment_failed | @as("active") #active | @as("payment-pending") #payment_pending]
type reservationState = [@as("retired") #retired | @as("active") #active | @as("payment-failed") #payment_failed | @as("payment-pending") #payment_pending]
type reservationId = string
type reportStatusType = [@as("impaired") #impaired | @as("ok") #ok]
type reportInstanceReasonCodes = [@as("other") #other | @as("performance-other") #performance_other | @as("performance-ebs-volume") #performance_ebs_volume | @as("performance-instance-store") #performance_instance_store | @as("performance-network") #performance_network | @as("password-not-available") #password_not_available | @as("not-accepting-credentials") #not_accepting_credentials | @as("unresponsive") #unresponsive | @as("instance-stuck-in-state") #instance_stuck_in_state]
type replacementStrategy = [@as("launch") #launch]
type replaceRootVolumeTaskState = [@as("failed-detached") #failed_detached | @as("failed") #failed | @as("succeeded") #succeeded | @as("failing") #failing | @as("in-progress") #in_progress | @as("pending") #pending]
type replaceRootVolumeTaskId = string
type recurringChargeFrequency = [@as("Hourly") #Hourly]
type ramdiskId = string
type rIProductDescription = [@as("Windows (Amazon VPC)") #Windows (Amazon VPC) | @as("Windows") #Windows | @as("Linux/UNIX (Amazon VPC)") #Linux_UNIX (Amazon VPC) | @as("Linux/UNIX") #Linux_UNIX]
type publicIpAddress = string
type protocolValue = [@as("gre") #gre]
type protocol = [@as("udp") #udp | @as("tcp") #tcp]
type productCodeValues = [@as("marketplace") #marketplace | @as("devpay") #devpay]
type processorSustainedClockSpeed = float;
type principalType = [@as("Role") #Role | @as("User") #User | @as("Account") #Account | @as("OrganizationUnit") #OrganizationUnit | @as("Service") #Service | @as("All") #All]
type prefixListState = [@as("delete-failed") #delete_failed | @as("delete-complete") #delete_complete | @as("delete-in-progress") #delete_in_progress | @as("restore-failed") #restore_failed | @as("restore-complete") #restore_complete | @as("restore-in-progress") #restore_in_progress | @as("modify-failed") #modify_failed | @as("modify-complete") #modify_complete | @as("modify-in-progress") #modify_in_progress | @as("create-failed") #create_failed | @as("create-complete") #create_complete | @as("create-in-progress") #create_in_progress]
type prefixListResourceId = string
type prefixListMaxResults = int;
type port = int;
type poolMaxResults = int;
type platformValues = [@as("Windows") #Windows]
type placementStrategy = [@as("partition") #partition | @as("spread") #spread | @as("cluster") #cluster]
type placementGroupStrategy = [@as("spread") #spread | @as("partition") #partition | @as("cluster") #cluster]
type placementGroupState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type placementGroupName = string
type placementGroupId = string
type permissionGroup = [@as("all") #all]
type paymentOption = [@as("NoUpfront") #NoUpfront | @as("PartialUpfront") #PartialUpfront | @as("AllUpfront") #AllUpfront]
type partitionLoadFrequency = [@as("monthly") #monthly | @as("weekly") #weekly | @as("daily") #daily | @as("none") #none]
type outpostArn = string
type operationType = [@as("remove") #remove | @as("add") #add]
type onDemandAllocationStrategy = [@as("prioritized") #prioritized | @as("lowestPrice") #lowestPrice]
type offeringTypeValues = [@as("All Upfront") #All Upfront | @as("Partial Upfront") #Partial Upfront | @as("No Upfront") #No Upfront | @as("Light Utilization") #Light Utilization | @as("Medium Utilization") #Medium Utilization | @as("Heavy Utilization") #Heavy Utilization]
type offeringId = string
type offeringClassType = [@as("convertible") #convertible | @as("standard") #standard]
type nextToken = string
type networkPerformance = string
type networkInterfaceType = [@as("efa") #efa | @as("natGateway") #natGateway | @as("interface") #interface]
type networkInterfaceStatus = [@as("detaching") #detaching | @as("in-use") #in_use | @as("attaching") #attaching | @as("associated") #associated | @as("available") #available]
type networkInterfacePermissionStateCode = [@as("revoked") #revoked | @as("revoking") #revoking | @as("granted") #granted | @as("pending") #pending]
type networkInterfacePermissionId = string
type networkInterfaceId = string
type networkInterfaceCreationType = [@as("efa") #efa]
type networkInterfaceAttribute = [@as("attachment") #attachment | @as("sourceDestCheck") #sourceDestCheck | @as("groupSet") #groupSet | @as("description") #description]
type networkInterfaceAttachmentId = string
type networkInsightsPathId = string
type networkInsightsMaxResults = int;
type networkInsightsAnalysisId = string
type networkCardIndex = int;
type networkAclId = string
type networkAclAssociationId = string
type natGatewayState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("failed") #failed | @as("pending") #pending]
type natGatewayId = string
type multicastSupportValue = [@as("disable") #disable | @as("enable") #enable]
type moveStatus = [@as("restoringToClassic") #restoringToClassic | @as("movingToVpc") #movingToVpc]
type monitoringState = [@as("pending") #pending | @as("enabled") #enabled | @as("disabling") #disabling | @as("disabled") #disabled]
type modifyAvailabilityZoneOptInStatus = [@as("not-opted-in") #not_opted_in | @as("opted-in") #opted_in]
type millisecondDateTime = Js.Date.t;
type memorySize = float;
type membershipType = [@as("igmp") #igmp | @as("static") #static]
type maximumThroughputInMBps = float;
type maximumNetworkCards = int;
type maximumIops = int;
type maximumEfaInterfaces = int;
type maximumBandwidthInMbps = int;
type maxResults = int;
type maxNetworkInterfaces = int;
type maxIpv6AddrPerInterface = int;
type maxIpv4AddrPerInterface = int;
type marketType = [@as("spot") #spot]
type amazonawsLong = float;
type logDestinationType = [@as("s3") #s3 | @as("cloud-watch-logs") #cloud_watch_logs]
type locationType = [@as("availability-zone-id") #availability_zone_id | @as("availability-zone") #availability_zone | @as("region") #region]
type location = string
type localGatewayVirtualInterfaceId = string
type localGatewayVirtualInterfaceGroupId = string
type localGatewayRoutetableId = string
type localGatewayRouteType = [@as("propagated") #propagated | @as("static") #static]
type localGatewayRouteTableVpcAssociationId = string
type localGatewayRouteTableVirtualInterfaceGroupAssociationId = string
type localGatewayRouteState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("blackhole") #blackhole | @as("active") #active | @as("pending") #pending]
type localGatewayMaxResults = int;
type localGatewayId = string
type listingStatus = [@as("closed") #closed | @as("cancelled") #cancelled | @as("pending") #pending | @as("active") #active]
type listingState = [@as("pending") #pending | @as("cancelled") #cancelled | @as("sold") #sold | @as("available") #available]
type launchTemplateName = string
type launchTemplateInstanceMetadataOptionsState = [@as("applied") #applied | @as("pending") #pending]
type launchTemplateInstanceMetadataEndpointState = [@as("enabled") #enabled | @as("disabled") #disabled]
type launchTemplateId = string
type launchTemplateHttpTokensState = [@as("required") #required | @as("optional") #optional]
type launchTemplateErrorCode = [@as("unexpectedError") #unexpectedError | @as("launchTemplateVersionDoesNotExist") #launchTemplateVersionDoesNotExist | @as("launchTemplateNameMalformed") #launchTemplateNameMalformed | @as("launchTemplateNameDoesNotExist") #launchTemplateNameDoesNotExist | @as("launchTemplateIdMalformed") #launchTemplateIdMalformed | @as("launchTemplateIdDoesNotExist") #launchTemplateIdDoesNotExist]
type launchTemplateElasticInferenceAcceleratorCount = int;
type kmsKeyId = string
type keyPairName = string
type keyPairId = string
type kernelId = string
type ipv6SupportValue = [@as("disable") #disable | @as("enable") #enable]
type ipv6PoolMaxResults = int;
type ipv6PoolEc2Id = string
type ipv6Flag = bool;
type ipv6Address = string
type ipv4PoolEc2Id = string
type ipAddress = string
type internetGatewayId = string
type interfacePermissionType = [@as("EIP-ASSOCIATE") #EIP_ASSOCIATE | @as("INSTANCE-ATTACH") #INSTANCE_ATTACH]
type amazonawsInteger = int;
type instanceTypeHypervisor = [@as("xen") #xen | @as("nitro") #nitro]
type instanceType = [@as("x2gd.metal") #x2gd_metal | @as("x2gd.16xlarge") #x2gd_16xlarge | @as("x2gd.12xlarge") #x2gd_12xlarge | @as("x2gd.8xlarge") #x2gd_8xlarge | @as("x2gd.4xlarge") #x2gd_4xlarge | @as("x2gd.2xlarge") #x2gd_2xlarge | @as("x2gd.xlarge") #x2gd_xlarge | @as("x2gd.large") #x2gd_large | @as("x2gd.medium") #x2gd_medium | @as("mac1.metal") #mac1_metal | @as("m6gd.16xlarge") #m6gd_16xlarge | @as("m6gd.12xlarge") #m6gd_12xlarge | @as("m6gd.8xlarge") #m6gd_8xlarge | @as("m6gd.4xlarge") #m6gd_4xlarge | @as("m6gd.2xlarge") #m6gd_2xlarge | @as("m6gd.xlarge") #m6gd_xlarge | @as("m6gd.large") #m6gd_large | @as("m6gd.medium") #m6gd_medium | @as("m6gd.metal") #m6gd_metal | @as("m6g.16xlarge") #m6g_16xlarge | @as("m6g.12xlarge") #m6g_12xlarge | @as("m6g.8xlarge") #m6g_8xlarge | @as("m6g.4xlarge") #m6g_4xlarge | @as("m6g.2xlarge") #m6g_2xlarge | @as("m6g.xlarge") #m6g_xlarge | @as("m6g.large") #m6g_large | @as("m6g.medium") #m6g_medium | @as("m6g.metal") #m6g_metal | @as("inf1.24xlarge") #inf1_24xlarge | @as("inf1.6xlarge") #inf1_6xlarge | @as("inf1.2xlarge") #inf1_2xlarge | @as("inf1.xlarge") #inf1_xlarge | @as("r5n.24xlarge") #r5n_24xlarge | @as("r5n.16xlarge") #r5n_16xlarge | @as("r5n.12xlarge") #r5n_12xlarge | @as("r5n.8xlarge") #r5n_8xlarge | @as("r5n.4xlarge") #r5n_4xlarge | @as("r5n.2xlarge") #r5n_2xlarge | @as("r5n.xlarge") #r5n_xlarge | @as("r5n.large") #r5n_large | @as("r5dn.24xlarge") #r5dn_24xlarge | @as("r5dn.16xlarge") #r5dn_16xlarge | @as("r5dn.12xlarge") #r5dn_12xlarge | @as("r5dn.8xlarge") #r5dn_8xlarge | @as("r5dn.4xlarge") #r5dn_4xlarge | @as("r5dn.2xlarge") #r5dn_2xlarge | @as("r5dn.xlarge") #r5dn_xlarge | @as("r5dn.large") #r5dn_large | @as("m5n.24xlarge") #m5n_24xlarge | @as("m5n.16xlarge") #m5n_16xlarge | @as("m5n.12xlarge") #m5n_12xlarge | @as("m5n.8xlarge") #m5n_8xlarge | @as("m5n.4xlarge") #m5n_4xlarge | @as("m5n.2xlarge") #m5n_2xlarge | @as("m5n.xlarge") #m5n_xlarge | @as("m5n.large") #m5n_large | @as("m5dn.24xlarge") #m5dn_24xlarge | @as("m5dn.16xlarge") #m5dn_16xlarge | @as("m5dn.12xlarge") #m5dn_12xlarge | @as("m5dn.8xlarge") #m5dn_8xlarge | @as("m5dn.4xlarge") #m5dn_4xlarge | @as("m5dn.2xlarge") #m5dn_2xlarge | @as("m5dn.xlarge") #m5dn_xlarge | @as("m5dn.large") #m5dn_large | @as("a1.metal") #a1_metal | @as("a1.4xlarge") #a1_4xlarge | @as("a1.2xlarge") #a1_2xlarge | @as("a1.xlarge") #a1_xlarge | @as("a1.large") #a1_large | @as("a1.medium") #a1_medium | @as("u-24tb1.metal") #u_24tb1_metal | @as("u-18tb1.metal") #u_18tb1_metal | @as("u-12tb1.metal") #u_12tb1_metal | @as("u-9tb1.metal") #u_9tb1_metal | @as("u-6tb1.metal") #u_6tb1_metal | @as("u-12tb1.112xlarge") #u_12tb1_112xlarge | @as("u-9tb1.112xlarge") #u_9tb1_112xlarge | @as("u-6tb1.112xlarge") #u_6tb1_112xlarge | @as("u-6tb1.56xlarge") #u_6tb1_56xlarge | @as("z1d.metal") #z1d_metal | @as("z1d.12xlarge") #z1d_12xlarge | @as("z1d.6xlarge") #z1d_6xlarge | @as("z1d.3xlarge") #z1d_3xlarge | @as("z1d.2xlarge") #z1d_2xlarge | @as("z1d.xlarge") #z1d_xlarge | @as("z1d.large") #z1d_large | @as("h1.16xlarge") #h1_16xlarge | @as("h1.8xlarge") #h1_8xlarge | @as("h1.4xlarge") #h1_4xlarge | @as("h1.2xlarge") #h1_2xlarge | @as("m5zn.metal") #m5zn_metal | @as("m5zn.12xlarge") #m5zn_12xlarge | @as("m5zn.6xlarge") #m5zn_6xlarge | @as("m5zn.3xlarge") #m5zn_3xlarge | @as("m5zn.2xlarge") #m5zn_2xlarge | @as("m5zn.xlarge") #m5zn_xlarge | @as("m5zn.large") #m5zn_large | @as("m5ad.24xlarge") #m5ad_24xlarge | @as("m5ad.16xlarge") #m5ad_16xlarge | @as("m5ad.12xlarge") #m5ad_12xlarge | @as("m5ad.8xlarge") #m5ad_8xlarge | @as("m5ad.4xlarge") #m5ad_4xlarge | @as("m5ad.2xlarge") #m5ad_2xlarge | @as("m5ad.xlarge") #m5ad_xlarge | @as("m5ad.large") #m5ad_large | @as("m5d.metal") #m5d_metal | @as("m5d.24xlarge") #m5d_24xlarge | @as("m5d.16xlarge") #m5d_16xlarge | @as("m5d.12xlarge") #m5d_12xlarge | @as("m5d.8xlarge") #m5d_8xlarge | @as("m5d.4xlarge") #m5d_4xlarge | @as("m5d.2xlarge") #m5d_2xlarge | @as("m5d.xlarge") #m5d_xlarge | @as("m5d.large") #m5d_large | @as("m5a.24xlarge") #m5a_24xlarge | @as("m5a.16xlarge") #m5a_16xlarge | @as("m5a.12xlarge") #m5a_12xlarge | @as("m5a.8xlarge") #m5a_8xlarge | @as("m5a.4xlarge") #m5a_4xlarge | @as("m5a.2xlarge") #m5a_2xlarge | @as("m5a.xlarge") #m5a_xlarge | @as("m5a.large") #m5a_large | @as("m5.metal") #m5_metal | @as("m5.24xlarge") #m5_24xlarge | @as("m5.16xlarge") #m5_16xlarge | @as("m5.12xlarge") #m5_12xlarge | @as("m5.8xlarge") #m5_8xlarge | @as("m5.4xlarge") #m5_4xlarge | @as("m5.2xlarge") #m5_2xlarge | @as("m5.xlarge") #m5_xlarge | @as("m5.large") #m5_large | @as("f1.16xlarge") #f1_16xlarge | @as("f1.4xlarge") #f1_4xlarge | @as("f1.2xlarge") #f1_2xlarge | @as("d3en.12xlarge") #d3en_12xlarge | @as("d3en.8xlarge") #d3en_8xlarge | @as("d3en.6xlarge") #d3en_6xlarge | @as("d3en.4xlarge") #d3en_4xlarge | @as("d3en.2xlarge") #d3en_2xlarge | @as("d3en.xlarge") #d3en_xlarge | @as("d3.8xlarge") #d3_8xlarge | @as("d3.4xlarge") #d3_4xlarge | @as("d3.2xlarge") #d3_2xlarge | @as("d3.xlarge") #d3_xlarge | @as("d2.8xlarge") #d2_8xlarge | @as("d2.4xlarge") #d2_4xlarge | @as("d2.2xlarge") #d2_2xlarge | @as("d2.xlarge") #d2_xlarge | @as("p4d.24xlarge") #p4d_24xlarge | @as("p3dn.24xlarge") #p3dn_24xlarge | @as("p3.16xlarge") #p3_16xlarge | @as("p3.8xlarge") #p3_8xlarge | @as("p3.2xlarge") #p3_2xlarge | @as("p2.16xlarge") #p2_16xlarge | @as("p2.8xlarge") #p2_8xlarge | @as("p2.xlarge") #p2_xlarge | @as("cg1.4xlarge") #cg1_4xlarge | @as("g4dn.metal") #g4dn_metal | @as("g4dn.16xlarge") #g4dn_16xlarge | @as("g4dn.12xlarge") #g4dn_12xlarge | @as("g4dn.8xlarge") #g4dn_8xlarge | @as("g4dn.4xlarge") #g4dn_4xlarge | @as("g4dn.2xlarge") #g4dn_2xlarge | @as("g4dn.xlarge") #g4dn_xlarge | @as("g4ad.16xlarge") #g4ad_16xlarge | @as("g4ad.8xlarge") #g4ad_8xlarge | @as("g4ad.4xlarge") #g4ad_4xlarge | @as("g3s.xlarge") #g3s_xlarge | @as("g3.16xlarge") #g3_16xlarge | @as("g3.8xlarge") #g3_8xlarge | @as("g3.4xlarge") #g3_4xlarge | @as("g2.8xlarge") #g2_8xlarge | @as("g2.2xlarge") #g2_2xlarge | @as("cc2.8xlarge") #cc2_8xlarge | @as("cc1.4xlarge") #cc1_4xlarge | @as("c6gn.16xlarge") #c6gn_16xlarge | @as("c6gn.12xlarge") #c6gn_12xlarge | @as("c6gn.8xlarge") #c6gn_8xlarge | @as("c6gn.4xlarge") #c6gn_4xlarge | @as("c6gn.2xlarge") #c6gn_2xlarge | @as("c6gn.xlarge") #c6gn_xlarge | @as("c6gn.large") #c6gn_large | @as("c6gn.medium") #c6gn_medium | @as("c6gd.16xlarge") #c6gd_16xlarge | @as("c6gd.12xlarge") #c6gd_12xlarge | @as("c6gd.8xlarge") #c6gd_8xlarge | @as("c6gd.4xlarge") #c6gd_4xlarge | @as("c6gd.2xlarge") #c6gd_2xlarge | @as("c6gd.xlarge") #c6gd_xlarge | @as("c6gd.large") #c6gd_large | @as("c6gd.medium") #c6gd_medium | @as("c6gd.metal") #c6gd_metal | @as("c6g.16xlarge") #c6g_16xlarge | @as("c6g.12xlarge") #c6g_12xlarge | @as("c6g.8xlarge") #c6g_8xlarge | @as("c6g.4xlarge") #c6g_4xlarge | @as("c6g.2xlarge") #c6g_2xlarge | @as("c6g.xlarge") #c6g_xlarge | @as("c6g.large") #c6g_large | @as("c6g.medium") #c6g_medium | @as("c6g.metal") #c6g_metal | @as("c5n.metal") #c5n_metal | @as("c5n.18xlarge") #c5n_18xlarge | @as("c5n.9xlarge") #c5n_9xlarge | @as("c5n.4xlarge") #c5n_4xlarge | @as("c5n.2xlarge") #c5n_2xlarge | @as("c5n.xlarge") #c5n_xlarge | @as("c5n.large") #c5n_large | @as("c5d.metal") #c5d_metal | @as("c5d.24xlarge") #c5d_24xlarge | @as("c5d.18xlarge") #c5d_18xlarge | @as("c5d.12xlarge") #c5d_12xlarge | @as("c5d.9xlarge") #c5d_9xlarge | @as("c5d.4xlarge") #c5d_4xlarge | @as("c5d.2xlarge") #c5d_2xlarge | @as("c5d.xlarge") #c5d_xlarge | @as("c5d.large") #c5d_large | @as("c5ad.24xlarge") #c5ad_24xlarge | @as("c5ad.16xlarge") #c5ad_16xlarge | @as("c5ad.12xlarge") #c5ad_12xlarge | @as("c5ad.8xlarge") #c5ad_8xlarge | @as("c5ad.4xlarge") #c5ad_4xlarge | @as("c5ad.2xlarge") #c5ad_2xlarge | @as("c5ad.xlarge") #c5ad_xlarge | @as("c5ad.large") #c5ad_large | @as("c5a.24xlarge") #c5a_24xlarge | @as("c5a.16xlarge") #c5a_16xlarge | @as("c5a.12xlarge") #c5a_12xlarge | @as("c5a.8xlarge") #c5a_8xlarge | @as("c5a.4xlarge") #c5a_4xlarge | @as("c5a.2xlarge") #c5a_2xlarge | @as("c5a.xlarge") #c5a_xlarge | @as("c5a.large") #c5a_large | @as("c5.metal") #c5_metal | @as("c5.24xlarge") #c5_24xlarge | @as("c5.18xlarge") #c5_18xlarge | @as("c5.12xlarge") #c5_12xlarge | @as("c5.9xlarge") #c5_9xlarge | @as("c5.4xlarge") #c5_4xlarge | @as("c5.2xlarge") #c5_2xlarge | @as("c5.xlarge") #c5_xlarge | @as("c5.large") #c5_large | @as("c4.8xlarge") #c4_8xlarge | @as("c4.4xlarge") #c4_4xlarge | @as("c4.2xlarge") #c4_2xlarge | @as("c4.xlarge") #c4_xlarge | @as("c4.large") #c4_large | @as("c3.8xlarge") #c3_8xlarge | @as("c3.4xlarge") #c3_4xlarge | @as("c3.2xlarge") #c3_2xlarge | @as("c3.xlarge") #c3_xlarge | @as("c3.large") #c3_large | @as("c1.xlarge") #c1_xlarge | @as("c1.medium") #c1_medium | @as("hs1.8xlarge") #hs1_8xlarge | @as("hi1.4xlarge") #hi1_4xlarge | @as("i3en.metal") #i3en_metal | @as("i3en.24xlarge") #i3en_24xlarge | @as("i3en.12xlarge") #i3en_12xlarge | @as("i3en.6xlarge") #i3en_6xlarge | @as("i3en.3xlarge") #i3en_3xlarge | @as("i3en.2xlarge") #i3en_2xlarge | @as("i3en.xlarge") #i3en_xlarge | @as("i3en.large") #i3en_large | @as("i3.metal") #i3_metal | @as("i3.16xlarge") #i3_16xlarge | @as("i3.8xlarge") #i3_8xlarge | @as("i3.4xlarge") #i3_4xlarge | @as("i3.2xlarge") #i3_2xlarge | @as("i3.xlarge") #i3_xlarge | @as("i3.large") #i3_large | @as("i2.8xlarge") #i2_8xlarge | @as("i2.4xlarge") #i2_4xlarge | @as("i2.2xlarge") #i2_2xlarge | @as("i2.xlarge") #i2_xlarge | @as("x1e.32xlarge") #x1e_32xlarge | @as("x1e.16xlarge") #x1e_16xlarge | @as("x1e.8xlarge") #x1e_8xlarge | @as("x1e.4xlarge") #x1e_4xlarge | @as("x1e.2xlarge") #x1e_2xlarge | @as("x1e.xlarge") #x1e_xlarge | @as("x1.32xlarge") #x1_32xlarge | @as("x1.16xlarge") #x1_16xlarge | @as("r6gd.16xlarge") #r6gd_16xlarge | @as("r6gd.12xlarge") #r6gd_12xlarge | @as("r6gd.8xlarge") #r6gd_8xlarge | @as("r6gd.4xlarge") #r6gd_4xlarge | @as("r6gd.2xlarge") #r6gd_2xlarge | @as("r6gd.xlarge") #r6gd_xlarge | @as("r6gd.large") #r6gd_large | @as("r6gd.medium") #r6gd_medium | @as("r6gd.metal") #r6gd_metal | @as("r6g.16xlarge") #r6g_16xlarge | @as("r6g.12xlarge") #r6g_12xlarge | @as("r6g.8xlarge") #r6g_8xlarge | @as("r6g.4xlarge") #r6g_4xlarge | @as("r6g.2xlarge") #r6g_2xlarge | @as("r6g.xlarge") #r6g_xlarge | @as("r6g.large") #r6g_large | @as("r6g.medium") #r6g_medium | @as("r6g.metal") #r6g_metal | @as("r5ad.24xlarge") #r5ad_24xlarge | @as("r5ad.16xlarge") #r5ad_16xlarge | @as("r5ad.12xlarge") #r5ad_12xlarge | @as("r5ad.8xlarge") #r5ad_8xlarge | @as("r5ad.4xlarge") #r5ad_4xlarge | @as("r5ad.2xlarge") #r5ad_2xlarge | @as("r5ad.xlarge") #r5ad_xlarge | @as("r5ad.large") #r5ad_large | @as("r5d.metal") #r5d_metal | @as("r5d.24xlarge") #r5d_24xlarge | @as("r5d.16xlarge") #r5d_16xlarge | @as("r5d.12xlarge") #r5d_12xlarge | @as("r5d.8xlarge") #r5d_8xlarge | @as("r5d.4xlarge") #r5d_4xlarge | @as("r5d.2xlarge") #r5d_2xlarge | @as("r5d.xlarge") #r5d_xlarge | @as("r5d.large") #r5d_large | @as("r5b.metal") #r5b_metal | @as("r5b.24xlarge") #r5b_24xlarge | @as("r5b.16xlarge") #r5b_16xlarge | @as("r5b.12xlarge") #r5b_12xlarge | @as("r5b.8xlarge") #r5b_8xlarge | @as("r5b.4xlarge") #r5b_4xlarge | @as("r5b.2xlarge") #r5b_2xlarge | @as("r5b.xlarge") #r5b_xlarge | @as("r5b.large") #r5b_large | @as("r5a.24xlarge") #r5a_24xlarge | @as("r5a.16xlarge") #r5a_16xlarge | @as("r5a.12xlarge") #r5a_12xlarge | @as("r5a.8xlarge") #r5a_8xlarge | @as("r5a.4xlarge") #r5a_4xlarge | @as("r5a.2xlarge") #r5a_2xlarge | @as("r5a.xlarge") #r5a_xlarge | @as("r5a.large") #r5a_large | @as("r5.metal") #r5_metal | @as("r5.24xlarge") #r5_24xlarge | @as("r5.16xlarge") #r5_16xlarge | @as("r5.12xlarge") #r5_12xlarge | @as("r5.8xlarge") #r5_8xlarge | @as("r5.4xlarge") #r5_4xlarge | @as("r5.2xlarge") #r5_2xlarge | @as("r5.xlarge") #r5_xlarge | @as("r5.large") #r5_large | @as("r4.16xlarge") #r4_16xlarge | @as("r4.8xlarge") #r4_8xlarge | @as("r4.4xlarge") #r4_4xlarge | @as("r4.2xlarge") #r4_2xlarge | @as("r4.xlarge") #r4_xlarge | @as("r4.large") #r4_large | @as("r3.8xlarge") #r3_8xlarge | @as("r3.4xlarge") #r3_4xlarge | @as("r3.2xlarge") #r3_2xlarge | @as("r3.xlarge") #r3_xlarge | @as("r3.large") #r3_large | @as("cr1.8xlarge") #cr1_8xlarge | @as("m2.4xlarge") #m2_4xlarge | @as("m2.2xlarge") #m2_2xlarge | @as("m2.xlarge") #m2_xlarge | @as("m4.16xlarge") #m4_16xlarge | @as("m4.10xlarge") #m4_10xlarge | @as("m4.4xlarge") #m4_4xlarge | @as("m4.2xlarge") #m4_2xlarge | @as("m4.xlarge") #m4_xlarge | @as("m4.large") #m4_large | @as("m3.2xlarge") #m3_2xlarge | @as("m3.xlarge") #m3_xlarge | @as("m3.large") #m3_large | @as("m3.medium") #m3_medium | @as("m1.xlarge") #m1_xlarge | @as("m1.large") #m1_large | @as("m1.medium") #m1_medium | @as("m1.small") #m1_small | @as("t4g.2xlarge") #t4g_2xlarge | @as("t4g.xlarge") #t4g_xlarge | @as("t4g.large") #t4g_large | @as("t4g.medium") #t4g_medium | @as("t4g.small") #t4g_small | @as("t4g.micro") #t4g_micro | @as("t4g.nano") #t4g_nano | @as("t3a.2xlarge") #t3a_2xlarge | @as("t3a.xlarge") #t3a_xlarge | @as("t3a.large") #t3a_large | @as("t3a.medium") #t3a_medium | @as("t3a.small") #t3a_small | @as("t3a.micro") #t3a_micro | @as("t3a.nano") #t3a_nano | @as("t3.2xlarge") #t3_2xlarge | @as("t3.xlarge") #t3_xlarge | @as("t3.large") #t3_large | @as("t3.medium") #t3_medium | @as("t3.small") #t3_small | @as("t3.micro") #t3_micro | @as("t3.nano") #t3_nano | @as("t2.2xlarge") #t2_2xlarge | @as("t2.xlarge") #t2_xlarge | @as("t2.large") #t2_large | @as("t2.medium") #t2_medium | @as("t2.small") #t2_small | @as("t2.micro") #t2_micro | @as("t2.nano") #t2_nano | @as("t1.micro") #t1_micro]
type instanceStorageFlag = bool;
type instanceStateName = [@as("stopped") #stopped | @as("stopping") #stopping | @as("terminated") #terminated | @as("shutting-down") #shutting_down | @as("running") #running | @as("pending") #pending]
type instanceMetadataOptionsState = [@as("applied") #applied | @as("pending") #pending]
type instanceMetadataEndpointState = [@as("enabled") #enabled | @as("disabled") #disabled]
type instanceMatchCriteria = [@as("targeted") #targeted | @as("open") #open]
type instanceLifecycleType = [@as("scheduled") #scheduled | @as("spot") #spot]
type instanceLifecycle = [@as("on-demand") #on_demand | @as("spot") #spot]
type instanceInterruptionBehavior = [@as("terminate") #terminate | @as("stop") #stop | @as("hibernate") #hibernate]
type instanceId = string
type instanceHealthStatus = [@as("unhealthy") #unhealthy | @as("healthy") #healthy]
type instanceEventId = string
type instanceAttributeName = [@as("enclaveOptions") #enclaveOptions | @as("enaSupport") #enaSupport | @as("sriovNetSupport") #sriovNetSupport | @as("ebsOptimized") #ebsOptimized | @as("groupSet") #groupSet | @as("sourceDestCheck") #sourceDestCheck | @as("productCodes") #productCodes | @as("blockDeviceMapping") #blockDeviceMapping | @as("rootDeviceName") #rootDeviceName | @as("instanceInitiatedShutdownBehavior") #instanceInitiatedShutdownBehavior | @as("disableApiTermination") #disableApiTermination | @as("userData") #userData | @as("ramdisk") #ramdisk | @as("kernel") #kernel | @as("instanceType") #instanceType]
type inferenceDeviceName = string
type inferenceDeviceManufacturerName = string
type inferenceDeviceCount = int;
type importTaskId = string
type importSnapshotTaskId = string
type importImageTaskId = string
type imageTypeValues = [@as("ramdisk") #ramdisk | @as("kernel") #kernel | @as("machine") #machine]
type imageState = [@as("error") #error | @as("failed") #failed | @as("transient") #transient | @as("deregistered") #deregistered | @as("invalid") #invalid | @as("available") #available | @as("pending") #pending]
type imageId = string
type imageAttributeName = [@as("bootMode") #bootMode | @as("sriovNetSupport") #sriovNetSupport | @as("blockDeviceMapping") #blockDeviceMapping | @as("productCodes") #productCodes | @as("launchPermission") #launchPermission | @as("ramdisk") #ramdisk | @as("kernel") #kernel | @as("description") #description]
type igmpv2SupportValue = [@as("disable") #disable | @as("enable") #enable]
type iamInstanceProfileAssociationState = [@as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type iamInstanceProfileAssociationId = string
type hypervisorType = [@as("xen") #xen | @as("ovm") #ovm]
type httpTokensState = [@as("required") #required | @as("optional") #optional]
type hostTenancy = [@as("host") #host | @as("dedicated") #dedicated]
type hostReservationId = string
type hostRecovery = [@as("off") #off | @as("on") #on]
type hibernationFlag = bool;
type gpuDeviceName = string
type gpuDeviceMemorySize = int;
type gpuDeviceManufacturerName = string
type gpuDeviceCount = int;
type getManagedPrefixListAssociationsMaxResults = int;
type getGroupsForCapacityReservationRequestMaxResults = int;
type getCapacityReservationUsageRequestMaxResults = int;
type gatewayType = [@as("ipsec.1") #ipsec_1]
type freeTierEligibleFlag = bool;
type fpgaImageStateCode = [@as("unavailable") #unavailable | @as("available") #available | @as("failed") #failed | @as("pending") #pending]
type fpgaImageId = string
type fpgaImageAttributeName = [@as("productCodes") #productCodes | @as("loadPermission") #loadPermission | @as("name") #name | @as("description") #description]
type fpgaDeviceName = string
type fpgaDeviceMemorySize = int;
type fpgaDeviceManufacturerName = string
type fpgaDeviceCount = int;
type flowLogsResourceType = [@as("NetworkInterface") #NetworkInterface | @as("Subnet") #Subnet | @as("VPC") #VPC]
type flowLogResourceId = string
type amazonawsFloat = float;
type fleetType = [@as("instant") #instant | @as("maintain") #maintain | @as("request") #request]
type fleetStateCode = [@as("modifying") #modifying | @as("deleted_terminating") #deleted_terminating | @as("deleted_running") #deleted_running | @as("failed") #failed | @as("deleted") #deleted | @as("active") #active | @as("submitted") #submitted]
type fleetReplacementStrategy = [@as("launch") #launch]
type fleetOnDemandAllocationStrategy = [@as("prioritized") #prioritized | @as("lowest-price") #lowest_price]
type fleetId = string
type fleetExcessCapacityTerminationPolicy = [@as("termination") #termination | @as("no-termination") #no_termination]
type fleetEventType = [@as("service-error") #service_error | @as("fleet-change") #fleet_change | @as("instance-change") #instance_change]
type fleetCapacityReservationUsageStrategy = [@as("use-capacity-reservations-first") #use_capacity_reservations_first]
type fleetActivityStatus = [@as("fulfilled") #fulfilled | @as("pending_termination") #pending_termination | @as("pending_fulfillment") #pending_fulfillment | @as("error") #error]
type fastSnapshotRestoreStateCode = [@as("disabled") #disabled | @as("disabling") #disabling | @as("enabled") #enabled | @as("optimizing") #optimizing | @as("enabling") #enabling]
type exportVmTaskId = string
type exportTaskState = [@as("completed") #completed | @as("cancelled") #cancelled | @as("cancelling") #cancelling | @as("active") #active]
type exportTaskId = string
type exportImageTaskId = string
type exportEnvironment = [@as("microsoft") #microsoft | @as("vmware") #vmware | @as("citrix") #citrix]
type excessCapacityTerminationPolicy = [@as("default") #default | @as("noTermination") #noTermination]
type eventType = [@as("information") #information | @as("error") #error | @as("fleetRequestChange") #fleetRequestChange | @as("instanceChange") #instanceChange]
type eventCode = [@as("instance-stop") #instance_stop | @as("instance-retirement") #instance_retirement | @as("system-maintenance") #system_maintenance | @as("system-reboot") #system_reboot | @as("instance-reboot") #instance_reboot]
type ephemeralNvmeSupport = [@as("required") #required | @as("supported") #supported | @as("unsupported") #unsupported]
type endDateType = [@as("limited") #limited | @as("unlimited") #unlimited]
type enaSupport = [@as("required") #required | @as("supported") #supported | @as("unsupported") #unsupported]
type elasticIpAssociationId = string
type elasticInferenceAcceleratorCount = int;
type elasticGpuStatus = [@as("IMPAIRED") #IMPAIRED | @as("OK") #OK]
type elasticGpuState = [@as("ATTACHED") #ATTACHED]
type elasticGpuId = string
type egressOnlyInternetGatewayId = string
type efaSupportedFlag = bool;
type ebsOptimizedSupport = [@as("default") #default | @as("supported") #supported | @as("unsupported") #unsupported]
type ebsNvmeSupport = [@as("required") #required | @as("supported") #supported | @as("unsupported") #unsupported]
type ebsEncryptionSupport = [@as("supported") #supported | @as("unsupported") #unsupported]
type amazonawsDouble = float;
type domainType = [@as("standard") #standard | @as("vpc") #vpc]
type dnsSupportValue = [@as("disable") #disable | @as("enable") #enable]
type dnsNameState = [@as("failed") #failed | @as("verified") #verified | @as("pendingVerification") #pendingVerification]
type diskType = [@as("ssd") #ssd | @as("hdd") #hdd]
type diskSize = float;
type diskImageFormat = [@as("VHD") #VHD | @as("RAW") #RAW | @as("VMDK") #VMDK]
type diskCount = int;
type dhcpOptionsId = string
type deviceType = [@as("instance-store") #instance_store | @as("ebs") #ebs]
type describeVpcsMaxResults = int;
type describeVpcPeeringConnectionsMaxResults = int;
type describeVpcClassicLinkDnsSupportNextToken = string
type describeVpcClassicLinkDnsSupportMaxResults = int;
type describeSubnetsMaxResults = int;
type describeStoreImageTasksRequestMaxResults = int;
type describeStaleSecurityGroupsNextToken = string
type describeStaleSecurityGroupsMaxResults = int;
type describeSpotFleetRequestHistoryMaxResults = int;
type describeSpotFleetInstancesMaxResults = int;
type describeSecurityGroupsMaxResults = int;
type describeScheduledInstanceAvailabilityMaxResults = int;
type describeRouteTablesMaxResults = int;
type describeReplaceRootVolumeTasksMaxResults = int;
type describePrincipalIdFormatMaxResults = int;
type describeNetworkInterfacesMaxResults = int;
type describeNetworkInterfacePermissionsMaxResults = int;
type describeNetworkAclsMaxResults = int;
type describeNatGatewaysMaxResults = int;
type describeMovingAddressesMaxResults = int;
type describeLaunchTemplatesMaxResults = int;
type describeInternetGatewaysMaxResults = int;
type describeInstanceCreditSpecificationsMaxResults = int;
type describeIamInstanceProfileAssociationsMaxResults = int;
type describeHostReservationsMaxResults = int;
type describeFpgaImagesMaxResults = int;
type describeFastSnapshotRestoresMaxResults = int;
type describeExportImageTasksMaxResults = int;
type describeElasticGpusMaxResults = int;
type describeEgressOnlyInternetGatewaysMaxResults = int;
type describeDhcpOptionsMaxResults = int;
type describeClientVpnTargetNetworksMaxResults = int;
type describeClientVpnRoutesMaxResults = int;
type describeClientVpnEndpointMaxResults = int;
type describeClientVpnConnectionsMaxResults = int;
type describeClientVpnAuthorizationRulesMaxResults = int;
type describeClassicLinkInstancesMaxResults = int;
type describeCapacityReservationsMaxResults = int;
type describeByoipCidrsMaxResults = int;
type deleteQueuedReservedInstancesErrorCode = [@as("unexpected-error") #unexpected_error | @as("reserved-instances-not-in-queued-state") #reserved_instances_not_in_queued_state | @as("reserved-instances-id-invalid") #reserved_instances_id_invalid]
type deleteFleetErrorCode = [@as("unexpectedError") #unexpectedError | @as("fleetNotInDeletableState") #fleetNotInDeletableState | @as("fleetIdMalformed") #fleetIdMalformed | @as("fleetIdDoesNotExist") #fleetIdDoesNotExist]
type defaultingDhcpOptionsId = string
type defaultTargetCapacityType = [@as("on-demand") #on_demand | @as("spot") #spot]
type defaultRouteTablePropagationValue = [@as("disable") #disable | @as("enable") #enable]
type defaultRouteTableAssociationValue = [@as("disable") #disable | @as("enable") #enable]
type defaultNetworkCardIndex = int;
type dedicatedHostId = string
type dedicatedHostFlag = bool;
type dateTime = Js.Date.t;
type datafeedSubscriptionState = [@as("Inactive") #Inactive | @as("Active") #Active]
type dITOMaxResults = int;
type dITMaxResults = int;
type customerGatewayId = string
type currentGenerationFlag = bool;
type currencyCodeValues = [@as("USD") #USD]
type coreCount = int;
type copyTagsFromSource = [@as("volume") #volume]
type conversionTaskState = [@as("completed") #completed | @as("cancelled") #cancelled | @as("cancelling") #cancelling | @as("active") #active]
type conversionTaskId = string
type containerFormat = [@as("ova") #ova]
type connectionNotificationType = [@as("Topic") #Topic]
type connectionNotificationState = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type connectionNotificationId = string
type coipPoolMaxResults = int;
type coipPoolId = string
type clientVpnRouteStatusCode = [@as("deleting") #deleting | @as("failed") #failed | @as("active") #active | @as("creating") #creating]
type clientVpnEndpointStatusCode = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending-associate") #pending_associate]
type clientVpnEndpointId = string
type clientVpnEndpointAttributeStatusCode = [@as("applied") #applied | @as("applying") #applying]
type clientVpnConnectionStatusCode = [@as("terminated") #terminated | @as("terminating") #terminating | @as("failed-to-terminate") #failed_to_terminate | @as("active") #active]
type clientVpnAuthorizationRuleStatusCode = [@as("revoking") #revoking | @as("failed") #failed | @as("active") #active | @as("authorizing") #authorizing]
type clientVpnAuthenticationType = [@as("federated-authentication") #federated_authentication | @as("directory-service-authentication") #directory_service_authentication | @as("certificate-authentication") #certificate_authentication]
type clientVpnAssociationId = string
type clientCertificateRevocationListStatusCode = [@as("active") #active | @as("pending") #pending]
type carrierGatewayState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type carrierGatewayMaxResults = int;
type carrierGatewayId = string
type capacityReservationTenancy = [@as("dedicated") #dedicated | @as("default") #default]
type capacityReservationState = [@as("failed") #failed | @as("pending") #pending | @as("cancelled") #cancelled | @as("expired") #expired | @as("active") #active]
type capacityReservationPreference = [@as("none") #none | @as("open") #open]
type capacityReservationInstancePlatform = [@as("Linux with SQL Server Enterprise") #Linux with SQL Server Enterprise | @as("Linux with SQL Server Web") #Linux with SQL Server Web | @as("Linux with SQL Server Standard") #Linux with SQL Server Standard | @as("Windows with SQL Server Web") #Windows with SQL Server Web | @as("Windows with SQL Server Standard") #Windows with SQL Server Standard | @as("Windows with SQL Server Enterprise") #Windows with SQL Server Enterprise | @as("Windows with SQL Server") #Windows with SQL Server | @as("Windows") #Windows | @as("SUSE Linux") #SUSE Linux | @as("Red Hat Enterprise Linux") #Red Hat Enterprise Linux | @as("Linux/UNIX") #Linux_UNIX]
type capacityReservationId = string
type cancelSpotInstanceRequestState = [@as("completed") #completed | @as("cancelled") #cancelled | @as("closed") #closed | @as("open") #open | @as("active") #active]
type cancelBatchErrorCode = [@as("unexpectedError") #unexpectedError | @as("fleetRequestNotInCancellableState") #fleetRequestNotInCancellableState | @as("fleetRequestIdMalformed") #fleetRequestIdMalformed | @as("fleetRequestIdDoesNotExist") #fleetRequestIdDoesNotExist]
type byoipCidrState = [@as("provisioned-not-publicly-advertisable") #provisioned_not_publicly_advertisable | @as("provisioned") #provisioned | @as("pending-provision") #pending_provision | @as("pending-deprovision") #pending_deprovision | @as("failed-provision") #failed_provision | @as("failed-deprovision") #failed_deprovision | @as("deprovisioned") #deprovisioned | @as("advertised") #advertised]
type burstablePerformanceFlag = bool;
type bundleTaskState = [@as("failed") #failed | @as("complete") #complete | @as("cancelling") #cancelling | @as("storing") #storing | @as("bundling") #bundling | @as("waiting-for-shutdown") #waiting_for_shutdown | @as("pending") #pending]
type bundleId = string
type bootModeValues = [@as("uefi") #uefi | @as("legacy-bios") #legacy_bios]
type bootModeType = [@as("uefi") #uefi | @as("legacy-bios") #legacy_bios]
type amazonawsBoolean = bool;
type blob = NodeJs.Buffer.t;
type bgpStatus = [@as("down") #down | @as("up") #up]
type batchState = [@as("modifying") #modifying | @as("cancelled_terminating") #cancelled_terminating | @as("cancelled_running") #cancelled_running | @as("failed") #failed | @as("cancelled") #cancelled | @as("active") #active | @as("submitted") #submitted]
type baselineThroughputInMBps = float;
type baselineIops = int;
type baselineBandwidthInMbps = int;
type bareMetalFlag = bool;
type availabilityZoneState = [@as("unavailable") #unavailable | @as("impaired") #impaired | @as("information") #information | @as("available") #available]
type availabilityZoneOptInStatus = [@as("not-opted-in") #not_opted_in | @as("opted-in") #opted_in | @as("opt-in-not-required") #opt_in_not_required]
type autoRecoveryFlag = bool;
type autoPlacement = [@as("off") #off | @as("on") #on]
type autoAcceptSharedAttachmentsValue = [@as("disable") #disable | @as("enable") #enable]
type autoAcceptSharedAssociationsValue = [@as("disable") #disable | @as("enable") #enable]
type attachmentStatus = [@as("detached") #detached | @as("detaching") #detaching | @as("attached") #attached | @as("attaching") #attaching]
type associationStatusCode = [@as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("association-failed") #association_failed | @as("associated") #associated | @as("associating") #associating]
type associatedNetworkType = [@as("vpc") #vpc]
type architectureValues = [@as("arm64") #arm64 | @as("x86_64") #x86_64 | @as("i386") #i386]
type architectureType = [@as("arm64") #arm64 | @as("x86_64") #x86_64 | @as("i386") #i386]
type applianceModeSupportValue = [@as("disable") #disable | @as("enable") #enable]
type analysisStatus = [@as("failed") #failed | @as("succeeded") #succeeded | @as("running") #running]
type allowsMultipleInstanceTypes = [@as("off") #off | @as("on") #on]
type allocationStrategy = [@as("capacityOptimizedPrioritized") #capacityOptimizedPrioritized | @as("capacityOptimized") #capacityOptimized | @as("diversified") #diversified | @as("lowestPrice") #lowestPrice]
type allocationState = [@as("pending") #pending | @as("released-permanent-failure") #released_permanent_failure | @as("released") #released | @as("permanent-failure") #permanent_failure | @as("under-assessment") #under_assessment | @as("available") #available]
type allocationId = string
type affinity = [@as("host") #host | @as("default") #default]
type addressMaxResults = int;
type addressAttributeName = [@as("domain-name") #domain_name]
type activityStatus = [@as("fulfilled") #fulfilled | @as("pending_termination") #pending_termination | @as("pending_fulfillment") #pending_fulfillment | @as("error") #error]
type accountAttributeName = [@as("default-vpc") #default_vpc | @as("supported-platforms") #supported_platforms]
type zoneNameStringList = array<amazonawsString>
type zoneIdStringList = array<amazonawsString>
type vpnStaticRoute = {
@as("State") state: vpnState,
@as("Source") source: vpnStaticRouteSource,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
type vpnGatewayIdStringList = array<vpnGatewayId>
type vpnConnectionIdStringList = array<vpnConnectionId>
type vpcPeeringConnectionStateReason = {
@as("Message") message: amazonawsString,
@as("Code") code: vpcPeeringConnectionStateReasonCode
}
type vpcPeeringConnectionOptionsDescription = {
@as("AllowEgressFromLocalVpcToRemoteClassicLink") allowEgressFromLocalVpcToRemoteClassicLink: amazonawsBoolean,
@as("AllowEgressFromLocalClassicLinkToRemoteVpc") allowEgressFromLocalClassicLinkToRemoteVpc: amazonawsBoolean,
@as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: amazonawsBoolean
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
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: vpcCidrBlockStateCode
}
type vpcAttachment = {
@as("VpcId") vpcId: amazonawsString,
@as("State") state: attachmentStatus
}
type volumeStatusEvent = {
@as("InstanceId") instanceId: amazonawsString,
@as("NotBefore") notBefore: millisecondDateTime,
@as("NotAfter") notAfter: millisecondDateTime,
@as("EventType") eventType: amazonawsString,
@as("EventId") eventId: amazonawsString,
@as("Description") description: amazonawsString
}
type volumeStatusDetails = {
@as("Status") status: amazonawsString,
@as("Name") name: volumeStatusName
}
type volumeStatusAttachmentStatus = {
@as("InstanceId") instanceId: amazonawsString,
@as("IoPerformance") ioPerformance: amazonawsString
}
type volumeStatusAction = {
@as("EventType") eventType: amazonawsString,
@as("EventId") eventId: amazonawsString,
@as("Description") description: amazonawsString,
@as("Code") code: amazonawsString
}
type volumeModification = {
@as("EndTime") endTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("Progress") progress: amazonawsLong,
@as("OriginalMultiAttachEnabled") originalMultiAttachEnabled: amazonawsBoolean,
@as("OriginalThroughput") originalThroughput: amazonawsInteger,
@as("OriginalVolumeType") originalVolumeType: volumeType,
@as("OriginalIops") originalIops: amazonawsInteger,
@as("OriginalSize") originalSize: amazonawsInteger,
@as("TargetMultiAttachEnabled") targetMultiAttachEnabled: amazonawsBoolean,
@as("TargetThroughput") targetThroughput: amazonawsInteger,
@as("TargetVolumeType") targetVolumeType: volumeType,
@as("TargetIops") targetIops: amazonawsInteger,
@as("TargetSize") targetSize: amazonawsInteger,
@as("StatusMessage") statusMessage: amazonawsString,
@as("ModificationState") modificationState: volumeModificationState,
@as("VolumeId") volumeId: amazonawsString
}
type volumeIdStringList = array<volumeId>
type volumeDetail = {
@as("Size") size: option<amazonawsLong>
}
type volumeAttachment = {
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("VolumeId") volumeId: amazonawsString,
@as("State") state: volumeAttachmentState,
@as("InstanceId") instanceId: amazonawsString,
@as("Device") device: amazonawsString,
@as("AttachTime") attachTime: dateTime
}
type virtualizationTypeList = array<virtualizationType>
type vgwTelemetry = {
@as("CertificateArn") certificateArn: amazonawsString,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: telemetryStatus,
@as("OutsideIpAddress") outsideIpAddress: amazonawsString,
@as("LastStatusChange") lastStatusChange: dateTime,
@as("AcceptedRouteCount") acceptedRouteCount: amazonawsInteger
}
type versionStringList = array<amazonawsString>
type valueStringList = array<amazonawsString>
type validationError = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type userIdStringList = array<amazonawsString>
type userIdGroupPair = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("UserId") userId: amazonawsString,
@as("PeeringStatus") peeringStatus: amazonawsString,
@as("GroupName") groupName: amazonawsString,
@as("GroupId") groupId: amazonawsString,
@as("Description") description: amazonawsString
}
type userGroupStringList = array<amazonawsString>
type userData = {
@as("Data") data: amazonawsString
}
type userBucketDetails = {
@as("S3Key") s3Key: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString
}
type userBucket = {
@as("S3Key") s3Key: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString
}
type usageClassTypeList = array<usageClassType>
type unsuccessfulItemError = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type unsuccessfulInstanceCreditSpecificationItemError = {
@as("Message") message: amazonawsString,
@as("Code") code: unsuccessfulInstanceCreditSpecificationErrorCode
}
type transitGatewayVpcAttachmentOptions = {
@as("ApplianceModeSupport") applianceModeSupport: applianceModeSupportValue,
@as("Ipv6Support") ipv6Support: ipv6SupportValue,
@as("DnsSupport") dnsSupport: dnsSupportValue
}
type transitGatewaySubnetIdList = array<subnetId>
type transitGatewayRouteTablePropagation = {
@as("State") state: transitGatewayPropagationState,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGatewayRouteTableIdStringList = array<transitGatewayRouteTableId>
type transitGatewayRouteTableAssociation = {
@as("State") state: transitGatewayAssociationState,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGatewayRouteAttachment = {
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString,
@as("ResourceId") resourceId: amazonawsString
}
type transitGatewayPropagation = {
@as("State") state: transitGatewayPropagationState,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId
}
type transitGatewayPrefixListAttachment = {
@as("ResourceId") resourceId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId
}
type transitGatewayNetworkInterfaceIdList = array<networkInterfaceId>
type transitGatewayMulticastGroup = {
@as("SourceType") sourceType: membershipType,
@as("MemberType") memberType: membershipType,
@as("GroupSource") groupSource: amazonawsBoolean,
@as("GroupMember") groupMember: amazonawsBoolean,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString,
@as("GroupIpAddress") groupIpAddress: amazonawsString
}
type transitGatewayMulticastDomainOptions = {
@as("AutoAcceptSharedAssociations") autoAcceptSharedAssociations: autoAcceptSharedAssociationsValue,
@as("StaticSourcesSupport") staticSourcesSupport: staticSourcesSupportValue,
@as("Igmpv2Support") igmpv2Support: igmpv2SupportValue
}
type transitGatewayMulticastDomainIdStringList = array<transitGatewayMulticastDomainId>
type transitGatewayIdStringList = array<transitGatewayId>
type transitGatewayConnectRequestBgpOptions = {
@as("PeerAsn") peerAsn: amazonawsLong
}
type transitGatewayConnectPeerIdStringList = array<transitGatewayConnectPeerId>
type transitGatewayConnectOptions = {
@as("Protocol") protocol: protocolValue
}
type transitGatewayCidrBlockStringList = array<amazonawsString>
type transitGatewayAttachmentPropagation = {
@as("State") state: transitGatewayPropagationState,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: amazonawsString
}
type transitGatewayAttachmentIdStringList = array<transitGatewayAttachmentId>
type transitGatewayAttachmentBgpConfiguration = {
@as("BgpStatus") bgpStatus: bgpStatus,
@as("PeerAddress") peerAddress: amazonawsString,
@as("TransitGatewayAddress") transitGatewayAddress: amazonawsString,
@as("PeerAsn") peerAsn: amazonawsLong,
@as("TransitGatewayAsn") transitGatewayAsn: amazonawsLong
}
type transitGatewayAttachmentAssociation = {
@as("State") state: transitGatewayAssociationState,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: amazonawsString
}
type transitGatewayAssociation = {
@as("State") state: transitGatewayAssociationState,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId
}
type trafficMirrorTargetIdList = array<trafficMirrorTargetId>
type trafficMirrorSessionIdList = array<trafficMirrorSessionId>
type trafficMirrorSessionFieldList = array<trafficMirrorSessionField>
type trafficMirrorPortRangeRequest = {
@as("ToPort") toPort: amazonawsInteger,
@as("FromPort") fromPort: amazonawsInteger
}
type trafficMirrorPortRange = {
@as("ToPort") toPort: amazonawsInteger,
@as("FromPort") fromPort: amazonawsInteger
}
type trafficMirrorNetworkServiceList = array<trafficMirrorNetworkService>
type trafficMirrorFilterRuleFieldList = array<trafficMirrorFilterRuleField>
type trafficMirrorFilterIdList = array<trafficMirrorFilterId>
type threadsPerCoreList = array<threadsPerCore>
type targetGroup = {
@as("Arn") arn: amazonawsString
}
type targetConfigurationRequest = {
@as("OfferingId") offeringId: option<reservedInstancesOfferingId>,
@as("InstanceCount") instanceCount: amazonawsInteger
}
type targetConfiguration = {
@as("OfferingId") offeringId: amazonawsString,
@as("InstanceCount") instanceCount: amazonawsInteger
}
type targetCapacitySpecificationRequest = {
@as("DefaultTargetCapacityType") defaultTargetCapacityType: defaultTargetCapacityType,
@as("SpotTargetCapacity") spotTargetCapacity: amazonawsInteger,
@as("OnDemandTargetCapacity") onDemandTargetCapacity: amazonawsInteger,
@as("TotalTargetCapacity") totalTargetCapacity: option<amazonawsInteger>
}
type targetCapacitySpecification = {
@as("DefaultTargetCapacityType") defaultTargetCapacityType: defaultTargetCapacityType,
@as("SpotTargetCapacity") spotTargetCapacity: amazonawsInteger,
@as("OnDemandTargetCapacity") onDemandTargetCapacity: amazonawsInteger,
@as("TotalTargetCapacity") totalTargetCapacity: amazonawsInteger
}
type tagDescription = {
@as("Value") value: amazonawsString,
@as("ResourceType") resourceType: resourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("Key") key: amazonawsString
}
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type successfulQueuedPurchaseDeletion = {
@as("ReservedInstancesId") reservedInstancesId: amazonawsString
}
type successfulInstanceCreditSpecificationItem = {
@as("InstanceId") instanceId: amazonawsString
}
type subnetIdStringList = array<subnetId>
type subnetCidrBlockState = {
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: subnetCidrBlockStateCode
}
type subnetAssociation = {
@as("State") state: transitGatewayMulitcastDomainAssociationState,
@as("SubnetId") subnetId: amazonawsString
}
type stringList = array<amazonawsString>
type storeImageTaskResult = {
@as("StoreTaskFailureReason") storeTaskFailureReason: amazonawsString,
@as("StoreTaskState") storeTaskState: amazonawsString,
@as("ProgressPercentage") progressPercentage: amazonawsInteger,
@as("S3objectKey") s3objectKey: amazonawsString,
@as("Bucket") bucket: amazonawsString,
@as("TaskStartTime") taskStartTime: millisecondDateTime,
@as("AmiId") amiId: amazonawsString
}
type storageLocation = {
@as("Key") key: amazonawsString,
@as("Bucket") bucket: amazonawsString
}
type stateReason = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type spotPrice = {
@as("Timestamp") timestamp: dateTime,
@as("SpotPrice") spotPrice: amazonawsString,
@as("ProductDescription") productDescription: rIProductDescription,
@as("InstanceType") instanceType: instanceType,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type spotPlacement = {
@as("Tenancy") tenancy: tenancy,
@as("GroupName") groupName: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type spotMarketOptions = {
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("ValidUntil") validUntil: dateTime,
@as("BlockDurationMinutes") blockDurationMinutes: amazonawsInteger,
@as("SpotInstanceType") spotInstanceType: spotInstanceType,
@as("MaxPrice") maxPrice: amazonawsString
}
type spotInstanceStatus = {
@as("UpdateTime") updateTime: dateTime,
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type spotInstanceStateFault = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type spotInstanceRequestIdList = array<spotInstanceRequestId>
type spotFleetRequestIdList = array<spotFleetRequestId>
type spotFleetMonitoring = {
@as("Enabled") enabled: amazonawsBoolean
}
type spotCapacityRebalance = {
@as("ReplacementStrategy") replacementStrategy: replacementStrategy
}
type snapshotIdStringList = array<snapshotId>
type slotStartTimeRangeRequest = {
@as("LatestTime") latestTime: dateTime,
@as("EarliestTime") earliestTime: dateTime
}
type slotDateTimeRangeRequest = {
@as("LatestTime") latestTime: option<dateTime>,
@as("EarliestTime") earliestTime: option<dateTime>
}
type serviceTypeDetail = {
@as("ServiceType") serviceType: serviceType
}
type securityGroupStringList = array<securityGroupName>
type securityGroupReference = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: amazonawsString,
@as("ReferencingVpcId") referencingVpcId: amazonawsString,
@as("GroupId") groupId: amazonawsString
}
type securityGroupIdentifier = {
@as("GroupName") groupName: amazonawsString,
@as("GroupId") groupId: amazonawsString
}
type securityGroupIdStringList = array<securityGroupId>
type scheduledInstancesSecurityGroupIdSet = array<securityGroupId>
type scheduledInstancesPrivateIpAddressConfig = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("Primary") primary: amazonawsBoolean
}
type scheduledInstancesPlacement = {
@as("GroupName") groupName: placementGroupName,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type scheduledInstancesMonitoring = {
@as("Enabled") enabled: amazonawsBoolean
}
type scheduledInstancesIpv6Address = {
@as("Ipv6Address") ipv6Address: ipv6Address
}
type scheduledInstancesIamInstanceProfile = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type scheduledInstancesEbs = {
@as("VolumeType") volumeType: amazonawsString,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("SnapshotId") snapshotId: snapshotId,
@as("Iops") iops: amazonawsInteger,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean
}
type scheduledInstanceIdRequestSet = array<scheduledInstanceId>
type s3Storage = {
@as("UploadPolicySignature") uploadPolicySignature: amazonawsString,
@as("UploadPolicy") uploadPolicy: blob,
@as("Prefix") prefix: amazonawsString,
@as("Bucket") bucket: amazonawsString,
@as("AWSAccessKeyId") aWSAccessKeyId: amazonawsString
}
type s3ObjectTag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type runInstancesMonitoringEnabled = {
@as("Enabled") enabled: option<amazonawsBoolean>
}
type routeTableIdStringList = array<routeTableId>
type routeTableAssociationState = {
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: routeTableAssociationStateCode
}
type route = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: amazonawsString,
@as("State") state: routeState,
@as("Origin") origin: routeOrigin,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("CarrierGatewayId") carrierGatewayId: carrierGatewayId,
@as("LocalGatewayId") localGatewayId: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("NatGatewayId") natGatewayId: amazonawsString,
@as("InstanceOwnerId") instanceOwnerId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("GatewayId") gatewayId: amazonawsString,
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: amazonawsString,
@as("DestinationPrefixListId") destinationPrefixListId: amazonawsString,
@as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
type rootDeviceTypeList = array<rootDeviceType>
type restorableByStringList = array<amazonawsString>
type responseHostIdSet = array<amazonawsString>
type responseHostIdList = array<amazonawsString>
type responseError = {
@as("Message") message: amazonawsString,
@as("Code") code: launchTemplateErrorCode
}
type resourceList = array<amazonawsString>
type resourceIdList = array<taggableResourceId>
type reservedInstancesOfferingIdStringList = array<reservedInstancesOfferingId>
type reservedInstancesModificationIdStringList = array<reservedInstancesModificationId>
type reservedInstancesIdStringList = array<reservationId>
type reservedInstancesId = {
@as("ReservedInstancesId") reservedInstancesId: amazonawsString
}
type reservedInstancesConfiguration = {
@as("Scope") scope: scope,
@as("Platform") platform: amazonawsString,
@as("InstanceType") instanceType: instanceType,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type reservedInstanceLimitPrice = {
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("Amount") amount: amazonawsDouble
}
type reservedInstanceIdSet = array<reservationId>
type reservationValue = {
@as("RemainingUpfrontValue") remainingUpfrontValue: amazonawsString,
@as("RemainingTotalValue") remainingTotalValue: amazonawsString,
@as("HourlyPrice") hourlyPrice: amazonawsString
}
type requestSpotLaunchSpecificationSecurityGroupList = array<amazonawsString>
type requestSpotLaunchSpecificationSecurityGroupIdList = array<securityGroupId>
type requestInstanceTypeList = array<instanceType>
type requestHostIdSet = array<dedicatedHostId>
type requestHostIdList = array<dedicatedHostId>
type replaceRootVolumeTaskIds = array<replaceRootVolumeTaskId>
type removePrefixListEntry = {
@as("Cidr") cidr: option<amazonawsString>
}
type regionNameStringList = array<amazonawsString>
type region = {
@as("OptInStatus") optInStatus: amazonawsString,
@as("RegionName") regionName: amazonawsString,
@as("Endpoint") endpoint: amazonawsString
}
type recurringCharge = {
@as("Frequency") frequency: recurringChargeFrequency,
@as("Amount") amount: amazonawsDouble
}
type reasonCodesList = array<reportInstanceReasonCodes>
type purchaseRequest = {
@as("PurchaseToken") purchaseToken: option<amazonawsString>,
@as("InstanceCount") instanceCount: option<amazonawsInteger>
}
type publicIpv4PoolRange = {
@as("AvailableAddressCount") availableAddressCount: amazonawsInteger,
@as("AddressCount") addressCount: amazonawsInteger,
@as("LastAddress") lastAddress: amazonawsString,
@as("FirstAddress") firstAddress: amazonawsString
}
type publicIpv4PoolIdStringList = array<ipv4PoolEc2Id>
type publicIpStringList = array<amazonawsString>
type ptrUpdateStatus = {
@as("Reason") reason: amazonawsString,
@as("Status") status: amazonawsString,
@as("Value") value: amazonawsString
}
type provisionedBandwidth = {
@as("Status") status: amazonawsString,
@as("Requested") requested: amazonawsString,
@as("RequestTime") requestTime: dateTime,
@as("Provisioned") provisioned: amazonawsString,
@as("ProvisionTime") provisionTime: dateTime
}
type propagatingVgw = {
@as("GatewayId") gatewayId: amazonawsString
}
type productDescriptionList = array<amazonawsString>
type productCodeStringList = array<amazonawsString>
type productCode = {
@as("ProductCodeType") productCodeType: productCodeValues,
@as("ProductCodeId") productCodeId: amazonawsString
}
type privateIpAddressStringList = array<amazonawsString>
type privateIpAddressSpecification = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("Primary") primary: amazonawsBoolean
}
type privateDnsNameConfiguration = {
@as("Name") name: amazonawsString,
@as("Value") value: amazonawsString,
@as("Type") type_: amazonawsString,
@as("State") state: dnsNameState
}
type privateDnsDetails = {
@as("PrivateDnsName") privateDnsName: amazonawsString
}
type pricingDetail = {
@as("Price") price: amazonawsDouble,
@as("Count") count: amazonawsInteger
}
type priceScheduleSpecification = {
@as("Term") term: amazonawsLong,
@as("Price") price: amazonawsDouble,
@as("CurrencyCode") currencyCode: currencyCodeValues
}
type priceSchedule = {
@as("Term") term: amazonawsLong,
@as("Price") price: amazonawsDouble,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("Active") active: amazonawsBoolean
}
type prefixListResourceIdStringList = array<prefixListResourceId>
type prefixListIdSet = array<amazonawsString>
type prefixListId = {
@as("PrefixListId") prefixListId: amazonawsString,
@as("Description") description: amazonawsString
}
type prefixListEntry = {
@as("Description") description: amazonawsString,
@as("Cidr") cidr: amazonawsString
}
type prefixListAssociation = {
@as("ResourceOwner") resourceOwner: amazonawsString,
@as("ResourceId") resourceId: amazonawsString
}
type portRange = {
@as("To") to: amazonawsInteger,
@as("From") from: amazonawsInteger
}
type poolCidrBlock = {
@as("Cidr") cidr: amazonawsString
}
type placementResponse = {
@as("GroupName") groupName: amazonawsString
}
type placementGroupStringList = array<placementGroupName>
type placementGroupStrategyList = array<placementGroupStrategy>
type placementGroupIdStringList = array<placementGroupId>
type placement = {
@as("HostResourceGroupArn") hostResourceGroupArn: amazonawsString,
@as("SpreadDomain") spreadDomain: amazonawsString,
@as("Tenancy") tenancy: tenancy,
@as("HostId") hostId: amazonawsString,
@as("PartitionNumber") partitionNumber: amazonawsInteger,
@as("GroupName") groupName: amazonawsString,
@as("Affinity") affinity: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type phase2IntegrityAlgorithmsRequestListValue = {
@as("Value") value: amazonawsString
}
type phase2IntegrityAlgorithmsListValue = {
@as("Value") value: amazonawsString
}
type phase2EncryptionAlgorithmsRequestListValue = {
@as("Value") value: amazonawsString
}
type phase2EncryptionAlgorithmsListValue = {
@as("Value") value: amazonawsString
}
type phase2DHGroupNumbersRequestListValue = {
@as("Value") value: amazonawsInteger
}
type phase2DHGroupNumbersListValue = {
@as("Value") value: amazonawsInteger
}
type phase1IntegrityAlgorithmsRequestListValue = {
@as("Value") value: amazonawsString
}
type phase1IntegrityAlgorithmsListValue = {
@as("Value") value: amazonawsString
}
type phase1EncryptionAlgorithmsRequestListValue = {
@as("Value") value: amazonawsString
}
type phase1EncryptionAlgorithmsListValue = {
@as("Value") value: amazonawsString
}
type phase1DHGroupNumbersRequestListValue = {
@as("Value") value: amazonawsInteger
}
type phase1DHGroupNumbersListValue = {
@as("Value") value: amazonawsInteger
}
type peeringTgwInfo = {
@as("Region") region: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString
}
type peeringConnectionOptionsRequest = {
@as("AllowEgressFromLocalVpcToRemoteClassicLink") allowEgressFromLocalVpcToRemoteClassicLink: amazonawsBoolean,
@as("AllowEgressFromLocalClassicLinkToRemoteVpc") allowEgressFromLocalClassicLinkToRemoteVpc: amazonawsBoolean,
@as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: amazonawsBoolean
}
type peeringConnectionOptions = {
@as("AllowEgressFromLocalVpcToRemoteClassicLink") allowEgressFromLocalVpcToRemoteClassicLink: amazonawsBoolean,
@as("AllowEgressFromLocalClassicLinkToRemoteVpc") allowEgressFromLocalClassicLinkToRemoteVpc: amazonawsBoolean,
@as("AllowDnsResolutionFromRemoteVpc") allowDnsResolutionFromRemoteVpc: amazonawsBoolean
}
type peeringAttachmentStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type pciId = {
@as("SubsystemVendorId") subsystemVendorId: amazonawsString,
@as("SubsystemId") subsystemId: amazonawsString,
@as("VendorId") vendorId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString
}
type ownerStringList = array<amazonawsString>
type occurrenceDaySet = array<amazonawsInteger>
type occurrenceDayRequestSet = array<amazonawsInteger>
type networkInterfacePermissionState = {
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: networkInterfacePermissionStateCode
}
type networkInterfacePermissionIdList = array<networkInterfacePermissionId>
type networkInterfaceIpv6Address = {
@as("Ipv6Address") ipv6Address: amazonawsString
}
type networkInterfaceIdList = array<networkInterfaceId>
type networkInterfaceAttachmentChanges = {
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachmentId") attachmentId: networkInterfaceAttachmentId
}
type networkInterfaceAttachment = {
@as("Status") status: attachmentStatus,
@as("InstanceOwnerId") instanceOwnerId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachmentId") attachmentId: amazonawsString,
@as("AttachTime") attachTime: dateTime
}
type networkInterfaceAssociation = {
@as("CarrierIp") carrierIp: amazonawsString,
@as("CustomerOwnedIp") customerOwnedIp: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("PublicDnsName") publicDnsName: amazonawsString,
@as("IpOwnerId") ipOwnerId: amazonawsString,
@as("AssociationId") associationId: amazonawsString,
@as("AllocationId") allocationId: amazonawsString
}
type networkInsightsPathIdList = array<networkInsightsPathId>
type networkInsightsAnalysisIdList = array<networkInsightsAnalysisId>
type networkCardInfo = {
@as("MaximumNetworkInterfaces") maximumNetworkInterfaces: maxNetworkInterfaces,
@as("NetworkPerformance") networkPerformance: networkPerformance,
@as("NetworkCardIndex") networkCardIndex: networkCardIndex
}
type networkAclIdStringList = array<networkAclId>
type networkAclAssociation = {
@as("SubnetId") subnetId: amazonawsString,
@as("NetworkAclId") networkAclId: amazonawsString,
@as("NetworkAclAssociationId") networkAclAssociationId: amazonawsString
}
type natGatewayIdStringList = array<natGatewayId>
type natGatewayAddress = {
@as("PublicIp") publicIp: amazonawsString,
@as("PrivateIp") privateIp: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("AllocationId") allocationId: amazonawsString
}
type movingAddressStatus = {
@as("PublicIp") publicIp: amazonawsString,
@as("MoveStatus") moveStatus: moveStatus
}
type monitoring = {
@as("State") state: monitoringState
}
type modifyTransitGatewayVpcAttachmentRequestOptions = {
@as("ApplianceModeSupport") applianceModeSupport: applianceModeSupportValue,
@as("Ipv6Support") ipv6Support: ipv6SupportValue,
@as("DnsSupport") dnsSupport: dnsSupportValue
}
type memoryInfo = {
@as("SizeInMiB") sizeInMiB: memorySize
}
type localGatewayVirtualInterfaceIdSet = array<localGatewayVirtualInterfaceId>
type localGatewayVirtualInterfaceGroupIdSet = array<localGatewayVirtualInterfaceGroupId>
type localGatewayRouteTableVpcAssociationIdSet = array<localGatewayRouteTableVpcAssociationId>
type localGatewayRouteTableVirtualInterfaceGroupAssociationIdSet = array<localGatewayRouteTableVirtualInterfaceGroupAssociationId>
type localGatewayRouteTableIdSet = array<localGatewayRoutetableId>
type localGatewayRoute = {
@as("OwnerId") ownerId: amazonawsString,
@as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: resourceArn,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
@as("State") state: localGatewayRouteState,
@as("Type") type_: localGatewayRouteType,
@as("LocalGatewayVirtualInterfaceGroupId") localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
type localGatewayIdSet = array<localGatewayId>
type loadPermissionRequest = {
@as("UserId") userId: amazonawsString,
@as("Group") group: permissionGroup
}
type loadPermission = {
@as("Group") group: permissionGroup,
@as("UserId") userId: amazonawsString
}
type licenseConfigurationRequest = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type licenseConfiguration = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type launchTemplatesMonitoringRequest = {
@as("Enabled") enabled: amazonawsBoolean
}
type launchTemplatesMonitoring = {
@as("Enabled") enabled: amazonawsBoolean
}
type launchTemplateSpotMarketOptionsRequest = {
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("ValidUntil") validUntil: dateTime,
@as("BlockDurationMinutes") blockDurationMinutes: amazonawsInteger,
@as("SpotInstanceType") spotInstanceType: spotInstanceType,
@as("MaxPrice") maxPrice: amazonawsString
}
type launchTemplateSpotMarketOptions = {
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("ValidUntil") validUntil: dateTime,
@as("BlockDurationMinutes") blockDurationMinutes: amazonawsInteger,
@as("SpotInstanceType") spotInstanceType: spotInstanceType,
@as("MaxPrice") maxPrice: amazonawsString
}
type launchTemplateSpecification = {
@as("Version") version: amazonawsString,
@as("LaunchTemplateName") launchTemplateName: amazonawsString,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId
}
type launchTemplatePlacementRequest = {
@as("PartitionNumber") partitionNumber: amazonawsInteger,
@as("HostResourceGroupArn") hostResourceGroupArn: amazonawsString,
@as("SpreadDomain") spreadDomain: amazonawsString,
@as("Tenancy") tenancy: tenancy,
@as("HostId") hostId: dedicatedHostId,
@as("GroupName") groupName: placementGroupName,
@as("Affinity") affinity: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type launchTemplatePlacement = {
@as("PartitionNumber") partitionNumber: amazonawsInteger,
@as("HostResourceGroupArn") hostResourceGroupArn: amazonawsString,
@as("SpreadDomain") spreadDomain: amazonawsString,
@as("Tenancy") tenancy: tenancy,
@as("HostId") hostId: amazonawsString,
@as("GroupName") groupName: amazonawsString,
@as("Affinity") affinity: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type launchTemplateOverrides = {
@as("Priority") priority: amazonawsDouble,
@as("WeightedCapacity") weightedCapacity: amazonawsDouble,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("SpotPrice") spotPrice: amazonawsString,
@as("InstanceType") instanceType: instanceType
}
type launchTemplateNameStringList = array<launchTemplateName>
type launchTemplateLicenseConfigurationRequest = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type launchTemplateLicenseConfiguration = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type launchTemplateInstanceMetadataOptionsRequest = {
@as("HttpEndpoint") httpEndpoint: launchTemplateInstanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: amazonawsInteger,
@as("HttpTokens") httpTokens: launchTemplateHttpTokensState
}
type launchTemplateInstanceMetadataOptions = {
@as("HttpEndpoint") httpEndpoint: launchTemplateInstanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: amazonawsInteger,
@as("HttpTokens") httpTokens: launchTemplateHttpTokensState,
@as("State") state: launchTemplateInstanceMetadataOptionsState
}
type launchTemplateIdStringList = array<launchTemplateId>
type launchTemplateIamInstanceProfileSpecificationRequest = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type launchTemplateIamInstanceProfileSpecification = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type launchTemplateHibernationOptionsRequest = {
@as("Configured") configured: amazonawsBoolean
}
type launchTemplateHibernationOptions = {
@as("Configured") configured: amazonawsBoolean
}
type launchTemplateEnclaveOptionsRequest = {
@as("Enabled") enabled: amazonawsBoolean
}
type launchTemplateEnclaveOptions = {
@as("Enabled") enabled: amazonawsBoolean
}
type launchTemplateElasticInferenceAcceleratorResponse = {
@as("Count") count: amazonawsInteger,
@as("Type") type_: amazonawsString
}
type launchTemplateElasticInferenceAccelerator = {
@as("Count") count: launchTemplateElasticInferenceAcceleratorCount,
@as("Type") type_: option<amazonawsString>
}
type launchTemplateEbsBlockDeviceRequest = {
@as("Throughput") throughput: amazonawsInteger,
@as("VolumeType") volumeType: volumeType,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("SnapshotId") snapshotId: snapshotId,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Iops") iops: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("Encrypted") encrypted: amazonawsBoolean
}
type launchTemplateEbsBlockDevice = {
@as("Throughput") throughput: amazonawsInteger,
@as("VolumeType") volumeType: volumeType,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("SnapshotId") snapshotId: snapshotId,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Iops") iops: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("Encrypted") encrypted: amazonawsBoolean
}
type launchTemplateCpuOptionsRequest = {
@as("ThreadsPerCore") threadsPerCore: amazonawsInteger,
@as("CoreCount") coreCount: amazonawsInteger
}
type launchTemplateCpuOptions = {
@as("ThreadsPerCore") threadsPerCore: amazonawsInteger,
@as("CoreCount") coreCount: amazonawsInteger
}
type launchPermission = {
@as("UserId") userId: amazonawsString,
@as("Group") group: permissionGroup
}
type lastError = {
@as("Code") code: amazonawsString,
@as("Message") message: amazonawsString
}
type keyPairIdStringList = array<keyPairId>
type keyNameStringList = array<keyPairName>
type ipv6Range = {
@as("Description") description: amazonawsString,
@as("CidrIpv6") cidrIpv6: amazonawsString
}
type ipv6PoolIdList = array<ipv6PoolEc2Id>
type ipv6CidrBlock = {
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString
}
type ipv6CidrAssociation = {
@as("AssociatedResource") associatedResource: amazonawsString,
@as("Ipv6Cidr") ipv6Cidr: amazonawsString
}
type ipv6AddressList = array<amazonawsString>
type ipRanges = array<amazonawsString>
type ipRange = {
@as("Description") description: amazonawsString,
@as("CidrIp") cidrIp: amazonawsString
}
type ipAddressList = array<ipAddress>
type internetGatewayIdList = array<internetGatewayId>
type internetGatewayAttachment = {
@as("VpcId") vpcId: amazonawsString,
@as("State") state: attachmentStatus
}
type instanceUsage = {
@as("UsedInstanceCount") usedInstanceCount: amazonawsInteger,
@as("AccountId") accountId: amazonawsString
}
type instanceTypeOffering = {
@as("Location") location: location,
@as("LocationType") locationType: locationType,
@as("InstanceType") instanceType: instanceType
}
type instanceTypeList = array<instanceType>
type instanceTagKeySet = array<amazonawsString>
type instanceStatusEvent = {
@as("NotBeforeDeadline") notBeforeDeadline: dateTime,
@as("NotBefore") notBefore: dateTime,
@as("NotAfter") notAfter: dateTime,
@as("Description") description: amazonawsString,
@as("Code") code: eventCode,
@as("InstanceEventId") instanceEventId: instanceEventId
}
type instanceStatusDetails = {
@as("Status") status: statusType,
@as("Name") name: statusName,
@as("ImpairedSince") impairedSince: dateTime
}
type instanceState = {
@as("Name") name: instanceStateName,
@as("Code") code: amazonawsInteger
}
type instanceSpecification = {
@as("ExcludeBootVolume") excludeBootVolume: amazonawsBoolean,
@as("InstanceId") instanceId: instanceId
}
type instanceNetworkInterfaceAttachment = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("Status") status: attachmentStatus,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachmentId") attachmentId: amazonawsString,
@as("AttachTime") attachTime: dateTime
}
type instanceNetworkInterfaceAssociation = {
@as("PublicIp") publicIp: amazonawsString,
@as("PublicDnsName") publicDnsName: amazonawsString,
@as("IpOwnerId") ipOwnerId: amazonawsString,
@as("CarrierIp") carrierIp: amazonawsString
}
type instanceMetadataOptionsResponse = {
@as("HttpEndpoint") httpEndpoint: instanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: amazonawsInteger,
@as("HttpTokens") httpTokens: httpTokensState,
@as("State") state: instanceMetadataOptionsState
}
type instanceMetadataOptionsRequest = {
@as("HttpEndpoint") httpEndpoint: instanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: amazonawsInteger,
@as("HttpTokens") httpTokens: httpTokensState
}
type instanceIpv6AddressRequest = {
@as("Ipv6Address") ipv6Address: amazonawsString
}
type instanceIpv6Address = {
@as("Ipv6Address") ipv6Address: amazonawsString
}
type instanceIdsSet = array<instanceId>
type instanceIdStringList = array<instanceId>
type instanceIdSet = array<instanceId>
type instanceFamilyCreditSpecification = {
@as("CpuCredits") cpuCredits: amazonawsString,
@as("InstanceFamily") instanceFamily: unlimitedSupportedInstanceFamily
}
type instanceExportDetails = {
@as("TargetEnvironment") targetEnvironment: exportEnvironment,
@as("InstanceId") instanceId: amazonawsString
}
type instanceCreditSpecificationRequest = {
@as("CpuCredits") cpuCredits: amazonawsString,
@as("InstanceId") instanceId: instanceId
}
type instanceCreditSpecification = {
@as("CpuCredits") cpuCredits: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
type instanceCount = {
@as("State") state: listingState,
@as("InstanceCount") instanceCount: amazonawsInteger
}
type instanceCapacity = {
@as("TotalCapacity") totalCapacity: amazonawsInteger,
@as("InstanceType") instanceType: amazonawsString,
@as("AvailableCapacity") availableCapacity: amazonawsInteger
}
type insideCidrBlocksStringList = array<amazonawsString>
type inferenceDeviceInfo = {
@as("Manufacturer") manufacturer: inferenceDeviceManufacturerName,
@as("Name") name: inferenceDeviceName,
@as("Count") count: inferenceDeviceCount
}
type importTaskIdList = array<importImageTaskId>
type importSnapshotTaskIdList = array<importSnapshotTaskId>
type importImageLicenseConfigurationResponse = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type importImageLicenseConfigurationRequest = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
type imageIdStringList = array<imageId>
type imageIdList = array<imageId>
type idFormat = {
@as("UseLongIds") useLongIds: amazonawsBoolean,
@as("Resource") resource: amazonawsString,
@as("Deadline") deadline: dateTime
}
type icmpTypeCode = {
@as("Type") type_: amazonawsInteger,
@as("Code") code: amazonawsInteger
}
type iamInstanceProfileSpecification = {
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type iamInstanceProfile = {
@as("Id") id: amazonawsString,
@as("Arn") arn: amazonawsString
}
type iKEVersionsRequestListValue = {
@as("Value") value: amazonawsString
}
type iKEVersionsListValue = {
@as("Value") value: amazonawsString
}
type hostReservationIdSet = array<hostReservationId>
type hostProperties = {
@as("TotalVCpus") totalVCpus: amazonawsInteger,
@as("Sockets") sockets: amazonawsInteger,
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("Cores") cores: amazonawsInteger
}
type hostOffering = {
@as("UpfrontPrice") upfrontPrice: amazonawsString,
@as("PaymentOption") paymentOption: paymentOption,
@as("OfferingId") offeringId: amazonawsString,
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("HourlyPrice") hourlyPrice: amazonawsString,
@as("Duration") duration: amazonawsInteger,
@as("CurrencyCode") currencyCode: currencyCodeValues
}
type hostInstance = {
@as("OwnerId") ownerId: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
type hibernationOptionsRequest = {
@as("Configured") configured: amazonawsBoolean
}
type hibernationOptions = {
@as("Configured") configured: amazonawsBoolean
}
type groupNameStringList = array<securityGroupName>
type groupIds = array<securityGroupId>
type groupIdentifier = {
@as("GroupId") groupId: amazonawsString,
@as("GroupName") groupName: amazonawsString
}
type groupIdStringList = array<amazonawsString>
type gpuDeviceMemoryInfo = {
@as("SizeInMiB") sizeInMiB: gpuDeviceMemorySize
}
type fpgaImageState = {
@as("Message") message: amazonawsString,
@as("Code") code: fpgaImageStateCode
}
type fpgaImageIdList = array<fpgaImageId>
type fpgaDeviceMemoryInfo = {
@as("SizeInMiB") sizeInMiB: fpgaDeviceMemorySize
}
type flowLogResourceIds = array<flowLogResourceId>
type flowLogIdList = array<vpcFlowLogId>
type fleetSpotCapacityRebalanceRequest = {
@as("ReplacementStrategy") replacementStrategy: fleetReplacementStrategy
}
type fleetSpotCapacityRebalance = {
@as("ReplacementStrategy") replacementStrategy: fleetReplacementStrategy
}
type fleetLaunchTemplateSpecificationRequest = {
@as("Version") version: amazonawsString,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId
}
type fleetLaunchTemplateSpecification = {
@as("Version") version: amazonawsString,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: amazonawsString
}
type fleetIdSet = array<fleetId>
type federatedAuthenticationRequest = {
@as("SelfServiceSAMLProviderArn") selfServiceSAMLProviderArn: amazonawsString,
@as("SAMLProviderArn") sAMLProviderArn: amazonawsString
}
type federatedAuthentication = {
@as("SelfServiceSamlProviderArn") selfServiceSamlProviderArn: amazonawsString,
@as("SamlProviderArn") samlProviderArn: amazonawsString
}
type exportToS3TaskSpecification = {
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString,
@as("DiskImageFormat") diskImageFormat: diskImageFormat,
@as("ContainerFormat") containerFormat: containerFormat
}
type exportToS3Task = {
@as("S3Key") s3Key: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString,
@as("DiskImageFormat") diskImageFormat: diskImageFormat,
@as("ContainerFormat") containerFormat: containerFormat
}
type exportTaskS3LocationRequest = {
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3Bucket") s3Bucket: option<amazonawsString>
}
type exportTaskS3Location = {
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString
}
type exportTaskIdStringList = array<exportTaskId>
type exportImageTaskIdList = array<exportImageTaskId>
type executableByStringList = array<amazonawsString>
type eventInformation = {
@as("InstanceId") instanceId: amazonawsString,
@as("EventSubType") eventSubType: amazonawsString,
@as("EventDescription") eventDescription: amazonawsString
}
type enclaveOptionsRequest = {
@as("Enabled") enabled: amazonawsBoolean
}
type enclaveOptions = {
@as("Enabled") enabled: amazonawsBoolean
}
type enableFastSnapshotRestoreSuccessItem = {
@as("DisabledTime") disabledTime: millisecondDateTime,
@as("DisablingTime") disablingTime: millisecondDateTime,
@as("EnabledTime") enabledTime: millisecondDateTime,
@as("OptimizingTime") optimizingTime: millisecondDateTime,
@as("EnablingTime") enablingTime: millisecondDateTime,
@as("OwnerAlias") ownerAlias: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("StateTransitionReason") stateTransitionReason: amazonawsString,
@as("State") state: fastSnapshotRestoreStateCode,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString
}
type enableFastSnapshotRestoreStateError = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type elasticInferenceAcceleratorAssociation = {
@as("ElasticInferenceAcceleratorAssociationTime") elasticInferenceAcceleratorAssociationTime: dateTime,
@as("ElasticInferenceAcceleratorAssociationState") elasticInferenceAcceleratorAssociationState: amazonawsString,
@as("ElasticInferenceAcceleratorAssociationId") elasticInferenceAcceleratorAssociationId: amazonawsString,
@as("ElasticInferenceAcceleratorArn") elasticInferenceAcceleratorArn: amazonawsString
}
type elasticInferenceAccelerator = {
@as("Count") count: elasticInferenceAcceleratorCount,
@as("Type") type_: option<amazonawsString>
}
type elasticGpuSpecificationResponse = {
@as("Type") type_: amazonawsString
}
type elasticGpuSpecification = {
@as("Type") type_: option<amazonawsString>
}
type elasticGpuIdSet = array<elasticGpuId>
type elasticGpuHealth = {
@as("Status") status: elasticGpuStatus
}
type elasticGpuAssociation = {
@as("ElasticGpuAssociationTime") elasticGpuAssociationTime: amazonawsString,
@as("ElasticGpuAssociationState") elasticGpuAssociationState: amazonawsString,
@as("ElasticGpuAssociationId") elasticGpuAssociationId: amazonawsString,
@as("ElasticGpuId") elasticGpuId: amazonawsString
}
type egressOnlyInternetGatewayIdList = array<egressOnlyInternetGatewayId>
type efaInfo = {
@as("MaximumEfaInterfaces") maximumEfaInterfaces: maximumEfaInterfaces
}
type ebsOptimizedInfo = {
@as("MaximumIops") maximumIops: maximumIops,
@as("MaximumThroughputInMBps") maximumThroughputInMBps: maximumThroughputInMBps,
@as("MaximumBandwidthInMbps") maximumBandwidthInMbps: maximumBandwidthInMbps,
@as("BaselineIops") baselineIops: baselineIops,
@as("BaselineThroughputInMBps") baselineThroughputInMBps: baselineThroughputInMBps,
@as("BaselineBandwidthInMbps") baselineBandwidthInMbps: baselineBandwidthInMbps
}
type ebsInstanceBlockDeviceSpecification = {
@as("VolumeId") volumeId: volumeId,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean
}
type ebsInstanceBlockDevice = {
@as("VolumeId") volumeId: amazonawsString,
@as("Status") status: attachmentStatus,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachTime") attachTime: dateTime
}
type ebsBlockDevice = {
@as("Encrypted") encrypted: amazonawsBoolean,
@as("OutpostArn") outpostArn: amazonawsString,
@as("Throughput") throughput: amazonawsInteger,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("VolumeType") volumeType: volumeType,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("SnapshotId") snapshotId: amazonawsString,
@as("Iops") iops: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean
}
type dnsEntry = {
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("DnsName") dnsName: amazonawsString
}
type diskInfo = {
@as("Type") type_: diskType,
@as("Count") count: diskCount,
@as("SizeInGB") sizeInGB: diskSize
}
type diskImageVolumeDescription = {
@as("Size") size: amazonawsLong,
@as("Id") id: amazonawsString
}
type diskImageDetail = {
@as("ImportManifestUrl") importManifestUrl: option<amazonawsString>,
@as("Format") format: option<diskImageFormat>,
@as("Bytes") bytes: option<amazonawsLong>
}
type diskImageDescription = {
@as("Size") size: amazonawsLong,
@as("ImportManifestUrl") importManifestUrl: amazonawsString,
@as("Format") format: diskImageFormat,
@as("Checksum") checksum: amazonawsString
}
type disableFastSnapshotRestoreSuccessItem = {
@as("DisabledTime") disabledTime: millisecondDateTime,
@as("DisablingTime") disablingTime: millisecondDateTime,
@as("EnabledTime") enabledTime: millisecondDateTime,
@as("OptimizingTime") optimizingTime: millisecondDateTime,
@as("EnablingTime") enablingTime: millisecondDateTime,
@as("OwnerAlias") ownerAlias: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("StateTransitionReason") stateTransitionReason: amazonawsString,
@as("State") state: fastSnapshotRestoreStateCode,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString
}
type disableFastSnapshotRestoreStateError = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type directoryServiceAuthenticationRequest = {
@as("DirectoryId") directoryId: amazonawsString
}
type directoryServiceAuthentication = {
@as("DirectoryId") directoryId: amazonawsString
}
type dhcpOptionsIdStringList = array<dhcpOptionsId>
type describeFastSnapshotRestoreSuccessItem = {
@as("DisabledTime") disabledTime: millisecondDateTime,
@as("DisablingTime") disablingTime: millisecondDateTime,
@as("EnabledTime") enabledTime: millisecondDateTime,
@as("OptimizingTime") optimizingTime: millisecondDateTime,
@as("EnablingTime") enablingTime: millisecondDateTime,
@as("OwnerAlias") ownerAlias: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("StateTransitionReason") stateTransitionReason: amazonawsString,
@as("State") state: fastSnapshotRestoreStateCode,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString
}
type deleteQueuedReservedInstancesIdList = array<reservationId>
type deleteQueuedReservedInstancesError = {
@as("Message") message: amazonawsString,
@as("Code") code: deleteQueuedReservedInstancesErrorCode
}
type deleteLaunchTemplateVersionsResponseSuccessItem = {
@as("VersionNumber") versionNumber: amazonawsLong,
@as("LaunchTemplateName") launchTemplateName: amazonawsString,
@as("LaunchTemplateId") launchTemplateId: amazonawsString
}
type deleteFleetSuccessItem = {
@as("FleetId") fleetId: fleetId,
@as("PreviousFleetState") previousFleetState: fleetStateCode,
@as("CurrentFleetState") currentFleetState: fleetStateCode
}
type deleteFleetError = {
@as("Message") message: amazonawsString,
@as("Code") code: deleteFleetErrorCode
}
type customerGatewayIdStringList = array<customerGatewayId>
type creditSpecificationRequest = {
@as("CpuCredits") cpuCredits: option<amazonawsString>
}
type creditSpecification = {
@as("CpuCredits") cpuCredits: amazonawsString
}
type createVolumePermission = {
@as("UserId") userId: amazonawsString,
@as("Group") group: permissionGroup
}
type createTransitGatewayVpcAttachmentRequestOptions = {
@as("ApplianceModeSupport") applianceModeSupport: applianceModeSupportValue,
@as("Ipv6Support") ipv6Support: ipv6SupportValue,
@as("DnsSupport") dnsSupport: dnsSupportValue
}
type createTransitGatewayMulticastDomainRequestOptions = {
@as("AutoAcceptSharedAssociations") autoAcceptSharedAssociations: autoAcceptSharedAssociationsValue,
@as("StaticSourcesSupport") staticSourcesSupport: staticSourcesSupportValue,
@as("Igmpv2Support") igmpv2Support: igmpv2SupportValue
}
type createTransitGatewayConnectRequestOptions = {
@as("Protocol") protocol: option<protocolValue>
}
type cpuOptionsRequest = {
@as("ThreadsPerCore") threadsPerCore: amazonawsInteger,
@as("CoreCount") coreCount: amazonawsInteger
}
type cpuOptions = {
@as("ThreadsPerCore") threadsPerCore: amazonawsInteger,
@as("CoreCount") coreCount: amazonawsInteger
}
type coreCountList = array<coreCount>
type conversionIdStringList = array<conversionTaskId>
type connectionNotificationIdsList = array<connectionNotificationId>
type connectionLogResponseOptions = {
@as("CloudwatchLogStream") cloudwatchLogStream: amazonawsString,
@as("CloudwatchLogGroup") cloudwatchLogGroup: amazonawsString,
@as("Enabled") enabled: amazonawsBoolean
}
type connectionLogOptions = {
@as("CloudwatchLogStream") cloudwatchLogStream: amazonawsString,
@as("CloudwatchLogGroup") cloudwatchLogGroup: amazonawsString,
@as("Enabled") enabled: amazonawsBoolean
}
type coipPoolIdSet = array<coipPoolId>
type coipAddressUsage = {
@as("CoIp") coIp: amazonawsString,
@as("AwsService") awsService: amazonawsString,
@as("AwsAccountId") awsAccountId: amazonawsString,
@as("AllocationId") allocationId: amazonawsString
}
type clientVpnSecurityGroupIdSet = array<securityGroupId>
type clientVpnRouteStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientVpnRouteStatusCode
}
type clientVpnEndpointStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientVpnEndpointStatusCode
}
type clientVpnEndpointIdList = array<clientVpnEndpointId>
type clientVpnEndpointAttributeStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientVpnEndpointAttributeStatusCode
}
type clientVpnConnectionStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientVpnConnectionStatusCode
}
type clientVpnAuthorizationRuleStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientVpnAuthorizationRuleStatusCode
}
type clientData = {
@as("UploadStart") uploadStart: dateTime,
@as("UploadSize") uploadSize: amazonawsDouble,
@as("UploadEnd") uploadEnd: dateTime,
@as("Comment") comment: amazonawsString
}
type clientConnectOptions = {
@as("LambdaFunctionArn") lambdaFunctionArn: amazonawsString,
@as("Enabled") enabled: amazonawsBoolean
}
type clientCertificateRevocationListStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: clientCertificateRevocationListStatusCode
}
type classicLoadBalancer = {
@as("Name") name: amazonawsString
}
type classicLinkDnsSupport = {
@as("VpcId") vpcId: amazonawsString,
@as("ClassicLinkDnsSupported") classicLinkDnsSupported: amazonawsBoolean
}
type cidrBlock = {
@as("CidrBlock") cidrBlock: amazonawsString
}
type cidrAuthorizationContext = {
@as("Signature") signature: option<amazonawsString>,
@as("Message") message: option<amazonawsString>
}
type certificateAuthenticationRequest = {
@as("ClientRootCertificateChainArn") clientRootCertificateChainArn: amazonawsString
}
type certificateAuthentication = {
@as("ClientRootCertificateChain") clientRootCertificateChain: amazonawsString
}
type carrierGatewayIdSet = array<carrierGatewayId>
type capacityReservationTargetResponse = {
@as("CapacityReservationResourceGroupArn") capacityReservationResourceGroupArn: amazonawsString,
@as("CapacityReservationId") capacityReservationId: amazonawsString
}
type capacityReservationTarget = {
@as("CapacityReservationResourceGroupArn") capacityReservationResourceGroupArn: amazonawsString,
@as("CapacityReservationId") capacityReservationId: capacityReservationId
}
type capacityReservationOptionsRequest = {
@as("UsageStrategy") usageStrategy: fleetCapacityReservationUsageStrategy
}
type capacityReservationOptions = {
@as("UsageStrategy") usageStrategy: fleetCapacityReservationUsageStrategy
}
type capacityReservationIdSet = array<capacityReservationId>
type capacityReservationGroup = {
@as("OwnerId") ownerId: amazonawsString,
@as("GroupArn") groupArn: amazonawsString
}
type cancelledSpotInstanceRequest = {
@as("State") state: cancelSpotInstanceRequestState,
@as("SpotInstanceRequestId") spotInstanceRequestId: amazonawsString
}
type cancelSpotFleetRequestsSuccessItem = {
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString,
@as("PreviousSpotFleetRequestState") previousSpotFleetRequestState: batchState,
@as("CurrentSpotFleetRequestState") currentSpotFleetRequestState: batchState
}
type cancelSpotFleetRequestsError = {
@as("Message") message: amazonawsString,
@as("Code") code: cancelBatchErrorCode
}
type byoipCidr = {
@as("State") state: byoipCidrState,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Description") description: amazonawsString,
@as("Cidr") cidr: amazonawsString
}
type bundleTaskError = {
@as("Message") message: amazonawsString,
@as("Code") code: amazonawsString
}
type bundleIdStringList = array<bundleId>
type bootModeTypeList = array<bootModeType>
type blobAttributeValue = {
@as("Value") value: blob
}
type billingProductList = array<amazonawsString>
type availabilityZoneStringList = array<amazonawsString>
type availabilityZoneMessage = {
@as("Message") message: amazonawsString
}
type attributeValue = {
@as("Value") value: amazonawsString
}
type attributeBooleanValue = {
@as("Value") value: amazonawsBoolean
}
type athenaIntegration = {
@as("PartitionEndDate") partitionEndDate: millisecondDateTime,
@as("PartitionStartDate") partitionStartDate: millisecondDateTime,
@as("PartitionLoadFrequency") partitionLoadFrequency: option<partitionLoadFrequency>,
@as("IntegrationResultS3DestinationArn") integrationResultS3DestinationArn: option<amazonawsString>
}
type associationStatus = {
@as("Message") message: amazonawsString,
@as("Code") code: associationStatusCode
}
type associationIdList = array<iamInstanceProfileAssociationId>
type associatedTargetNetwork = {
@as("NetworkType") networkType: associatedNetworkType,
@as("NetworkId") networkId: amazonawsString
}
type associatedRole = {
@as("EncryptionKmsKeyId") encryptionKmsKeyId: amazonawsString,
@as("CertificateS3ObjectKey") certificateS3ObjectKey: amazonawsString,
@as("CertificateS3BucketName") certificateS3BucketName: amazonawsString,
@as("AssociatedRoleArn") associatedRoleArn: resourceArn
}
type assignedPrivateIpAddress = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString
}
type arnList = array<resourceArn>
type architectureTypeList = array<architectureType>
type analysisRouteTableRoute = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("Origin") origin: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("NatGatewayId") natGatewayId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("GatewayId") gatewayId: amazonawsString,
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: amazonawsString,
@as("DestinationPrefixListId") destinationPrefixListId: amazonawsString,
@as("DestinationCidr") destinationCidr: amazonawsString
}
type analysisLoadBalancerListener = {
@as("InstancePort") instancePort: port,
@as("LoadBalancerPort") loadBalancerPort: port
}
type analysisComponent = {
@as("Arn") arn: amazonawsString,
@as("Id") id: amazonawsString
}
type alternatePathHint = {
@as("ComponentArn") componentArn: amazonawsString,
@as("ComponentId") componentId: amazonawsString
}
type allowedPrincipal = {
@as("Principal") principal: amazonawsString,
@as("PrincipalType") principalType: principalType
}
type allocationIds = array<allocationId>
type allocationIdList = array<allocationId>
type addPrefixListEntry = {
@as("Description") description: amazonawsString,
@as("Cidr") cidr: option<amazonawsString>
}
type activeInstance = {
@as("InstanceHealth") instanceHealth: instanceHealthStatus,
@as("SpotInstanceRequestId") spotInstanceRequestId: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
type accountAttributeValue = {
@as("AttributeValue") attributeValue: amazonawsString
}
type accountAttributeNameStringList = array<accountAttributeName>
type vpnStaticRouteList = array<vpnStaticRoute>
type vpcIpv6CidrBlockAssociation = {
@as("Ipv6Pool") ipv6Pool: amazonawsString,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("Ipv6CidrBlockState") ipv6CidrBlockState: vpcCidrBlockState,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("AssociationId") associationId: amazonawsString
}
type vpcCidrBlockAssociation = {
@as("CidrBlockState") cidrBlockState: vpcCidrBlockState,
@as("CidrBlock") cidrBlock: amazonawsString,
@as("AssociationId") associationId: amazonawsString
}
type vpcAttachmentList = array<vpcAttachment>
type volumeStatusEventsList = array<volumeStatusEvent>
type volumeStatusDetailsList = array<volumeStatusDetails>
type volumeStatusAttachmentStatusList = array<volumeStatusAttachmentStatus>
type volumeStatusActionsList = array<volumeStatusAction>
type volumeModificationList = array<volumeModification>
type volumeAttachmentList = array<volumeAttachment>
type vgwTelemetryList = array<vgwTelemetry>
type vCpuInfo = {
@as("ValidThreadsPerCore") validThreadsPerCore: threadsPerCoreList,
@as("ValidCores") validCores: coreCountList,
@as("DefaultThreadsPerCore") defaultThreadsPerCore: threadsPerCore,
@as("DefaultCores") defaultCores: coreCount,
@as("DefaultVCpus") defaultVCpus: vCpuCount
}
type userIdGroupPairSet = array<userIdGroupPair>
type userIdGroupPairList = array<userIdGroupPair>
type unsuccessfulItem = {
@as("ResourceId") resourceId: amazonawsString,
@as("Error") error: unsuccessfulItemError
}
type unsuccessfulInstanceCreditSpecificationItem = {
@as("Error") error: unsuccessfulInstanceCreditSpecificationItemError,
@as("InstanceId") instanceId: amazonawsString
}
type transitGatewayRouteTablePropagationList = array<transitGatewayRouteTablePropagation>
type transitGatewayRouteTableAssociationList = array<transitGatewayRouteTableAssociation>
type transitGatewayRouteAttachmentList = array<transitGatewayRouteAttachment>
type transitGatewayRequestOptions = {
@as("TransitGatewayCidrBlocks") transitGatewayCidrBlocks: transitGatewayCidrBlockStringList,
@as("MulticastSupport") multicastSupport: multicastSupportValue,
@as("DnsSupport") dnsSupport: dnsSupportValue,
@as("VpnEcmpSupport") vpnEcmpSupport: vpnEcmpSupportValue,
@as("DefaultRouteTablePropagation") defaultRouteTablePropagation: defaultRouteTablePropagationValue,
@as("DefaultRouteTableAssociation") defaultRouteTableAssociation: defaultRouteTableAssociationValue,
@as("AutoAcceptSharedAttachments") autoAcceptSharedAttachments: autoAcceptSharedAttachmentsValue,
@as("AmazonSideAsn") amazonSideAsn: amazonawsLong
}
type transitGatewayPrefixListReference = {
@as("TransitGatewayAttachment") transitGatewayAttachment: transitGatewayPrefixListAttachment,
@as("Blackhole") blackhole: amazonawsBoolean,
@as("State") state: transitGatewayPrefixListReferenceState,
@as("PrefixListOwnerId") prefixListOwnerId: amazonawsString,
@as("PrefixListId") prefixListId: prefixListResourceId,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: transitGatewayRouteTableId
}
type transitGatewayOptions = {
@as("MulticastSupport") multicastSupport: multicastSupportValue,
@as("DnsSupport") dnsSupport: dnsSupportValue,
@as("VpnEcmpSupport") vpnEcmpSupport: vpnEcmpSupportValue,
@as("PropagationDefaultRouteTableId") propagationDefaultRouteTableId: amazonawsString,
@as("DefaultRouteTablePropagation") defaultRouteTablePropagation: defaultRouteTablePropagationValue,
@as("AssociationDefaultRouteTableId") associationDefaultRouteTableId: amazonawsString,
@as("DefaultRouteTableAssociation") defaultRouteTableAssociation: defaultRouteTableAssociationValue,
@as("AutoAcceptSharedAttachments") autoAcceptSharedAttachments: autoAcceptSharedAttachmentsValue,
@as("TransitGatewayCidrBlocks") transitGatewayCidrBlocks: valueStringList,
@as("AmazonSideAsn") amazonSideAsn: amazonawsLong
}
type transitGatewayMulticastRegisteredGroupSources = {
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("RegisteredNetworkInterfaceIds") registeredNetworkInterfaceIds: valueStringList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayMulticastRegisteredGroupMembers = {
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("RegisteredNetworkInterfaceIds") registeredNetworkInterfaceIds: valueStringList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayMulticastGroupList = array<transitGatewayMulticastGroup>
type transitGatewayMulticastDomainAssociation = {
@as("Subnet") subnet: subnetAssociation,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGatewayMulticastDeregisteredGroupSources = {
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("DeregisteredNetworkInterfaceIds") deregisteredNetworkInterfaceIds: valueStringList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayMulticastDeregisteredGroupMembers = {
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("DeregisteredNetworkInterfaceIds") deregisteredNetworkInterfaceIds: valueStringList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayAttachmentPropagationList = array<transitGatewayAttachmentPropagation>
type transitGatewayAttachmentBgpConfigurationList = array<transitGatewayAttachmentBgpConfiguration>
type trafficMirrorFilterRule = {
@as("Description") description: amazonawsString,
@as("SourceCidrBlock") sourceCidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString,
@as("SourcePortRange") sourcePortRange: trafficMirrorPortRange,
@as("DestinationPortRange") destinationPortRange: trafficMirrorPortRange,
@as("Protocol") protocol: amazonawsInteger,
@as("RuleAction") ruleAction: trafficMirrorRuleAction,
@as("RuleNumber") ruleNumber: amazonawsInteger,
@as("TrafficDirection") trafficDirection: trafficDirection,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: amazonawsString,
@as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: amazonawsString
}
type terminateConnectionStatus = {
@as("CurrentStatus") currentStatus: clientVpnConnectionStatus,
@as("PreviousStatus") previousStatus: clientVpnConnectionStatus,
@as("ConnectionId") connectionId: amazonawsString
}
type targetReservationValue = {
@as("TargetConfiguration") targetConfiguration: targetConfiguration,
@as("ReservationValue") reservationValue: reservationValue
}
type targetNetwork = {
@as("SecurityGroups") securityGroups: valueStringList,
@as("Status") status: associationStatus,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString,
@as("TargetNetworkId") targetNetworkId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("AssociationId") associationId: amazonawsString
}
type targetGroups = array<targetGroup>
type targetConfigurationRequestSet = array<targetConfigurationRequest>
type tagList = array<tag>
type tagDescriptionList = array<tagDescription>
type successfulQueuedPurchaseDeletionSet = array<successfulQueuedPurchaseDeletion>
type successfulInstanceCreditSpecificationSet = array<successfulInstanceCreditSpecificationItem>
type subnetIpv6CidrBlockAssociation = {
@as("Ipv6CidrBlockState") ipv6CidrBlockState: subnetCidrBlockState,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("AssociationId") associationId: subnetCidrAssociationId
}
type subnetAssociationList = array<subnetAssociation>
type storeImageTaskResultSet = array<storeImageTaskResult>
type storage = {
@as("S3") s3: s3Storage
}
type spotPriceHistoryList = array<spotPrice>
type spotMaintenanceStrategies = {
@as("CapacityRebalance") capacityRebalance: spotCapacityRebalance
}
type spotDatafeedSubscription = {
@as("State") state: datafeedSubscriptionState,
@as("Prefix") prefix: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("Fault") fault: spotInstanceStateFault,
@as("Bucket") bucket: amazonawsString
}
type snapshotTaskDetail = {
@as("UserBucket") userBucket: userBucketDetails,
@as("Url") url: amazonawsString,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString,
@as("Progress") progress: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Format") format: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("DiskImageSize") diskImageSize: amazonawsDouble,
@as("Description") description: amazonawsString
}
type snapshotDiskContainer = {
@as("UserBucket") userBucket: userBucket,
@as("Url") url: amazonawsString,
@as("Format") format: amazonawsString,
@as("Description") description: amazonawsString
}
type snapshotDetail = {
@as("UserBucket") userBucket: userBucketDetails,
@as("Url") url: amazonawsString,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString,
@as("Progress") progress: amazonawsString,
@as("Format") format: amazonawsString,
@as("DiskImageSize") diskImageSize: amazonawsDouble,
@as("DeviceName") deviceName: amazonawsString,
@as("Description") description: amazonawsString
}
type serviceTypeDetailSet = array<serviceTypeDetail>
type securityGroupReferences = array<securityGroupReference>
type scheduledInstancesIpv6AddressList = array<scheduledInstancesIpv6Address>
type scheduledInstancesBlockDeviceMapping = {
@as("VirtualName") virtualName: amazonawsString,
@as("NoDevice") noDevice: amazonawsString,
@as("Ebs") ebs: scheduledInstancesEbs,
@as("DeviceName") deviceName: amazonawsString
}
type scheduledInstanceRecurrenceRequest = {
@as("OccurrenceUnit") occurrenceUnit: amazonawsString,
@as("OccurrenceRelativeToEnd") occurrenceRelativeToEnd: amazonawsBoolean,
@as("OccurrenceDays") occurrenceDays: occurrenceDayRequestSet,
@as("Interval") interval: amazonawsInteger,
@as("Frequency") frequency: amazonawsString
}
type scheduledInstanceRecurrence = {
@as("OccurrenceUnit") occurrenceUnit: amazonawsString,
@as("OccurrenceRelativeToEnd") occurrenceRelativeToEnd: amazonawsBoolean,
@as("OccurrenceDaySet") occurrenceDaySet: occurrenceDaySet,
@as("Interval") interval: amazonawsInteger,
@as("Frequency") frequency: amazonawsString
}
type s3ObjectTagList = array<s3ObjectTag>
type routeTableAssociation = {
@as("AssociationState") associationState: routeTableAssociationState,
@as("GatewayId") gatewayId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("RouteTableId") routeTableId: amazonawsString,
@as("RouteTableAssociationId") routeTableAssociationId: amazonawsString,
@as("Main") main: amazonawsBoolean
}
type routeList = array<route>
type reservedIntancesIds = array<reservedInstancesId>
type reservedInstancesModificationResult = {
@as("TargetConfiguration") targetConfiguration: reservedInstancesConfiguration,
@as("ReservedInstancesId") reservedInstancesId: amazonawsString
}
type reservedInstancesConfigurationList = array<reservedInstancesConfiguration>
type reservedInstanceReservationValue = {
@as("ReservedInstanceId") reservedInstanceId: amazonawsString,
@as("ReservationValue") reservationValue: reservationValue
}
type removePrefixListEntries = array<removePrefixListEntry>
type registerInstanceTagAttributeRequest = {
@as("InstanceTagKeys") instanceTagKeys: instanceTagKeySet,
@as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: amazonawsBoolean
}
type regionList = array<region>
type recurringChargesList = array<recurringCharge>
type purchaseRequestSet = array<purchaseRequest>
type purchase = {
@as("UpfrontPrice") upfrontPrice: amazonawsString,
@as("PaymentOption") paymentOption: paymentOption,
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("HourlyPrice") hourlyPrice: amazonawsString,
@as("HostReservationId") hostReservationId: amazonawsString,
@as("HostIdSet") hostIdSet: responseHostIdSet,
@as("Duration") duration: amazonawsInteger,
@as("CurrencyCode") currencyCode: currencyCodeValues
}
type publicIpv4PoolRangeSet = array<publicIpv4PoolRange>
type propagatingVgwList = array<propagatingVgw>
type productCodeList = array<productCode>
type processorInfo = {
@as("SustainedClockSpeedInGhz") sustainedClockSpeedInGhz: processorSustainedClockSpeed,
@as("SupportedArchitectures") supportedArchitectures: architectureTypeList
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
@as("PrefixListName") prefixListName: amazonawsString,
@as("PrefixListId") prefixListId: amazonawsString,
@as("Cidrs") cidrs: valueStringList
}
type portRangeList = array<portRange>
type poolCidrBlocksSet = array<poolCidrBlock>
type placementGroupInfo = {
@as("SupportedStrategies") supportedStrategies: placementGroupStrategyList
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
@as("MaxTotalPrice") maxTotalPrice: amazonawsString,
@as("MinTargetCapacity") minTargetCapacity: amazonawsInteger,
@as("SingleAvailabilityZone") singleAvailabilityZone: amazonawsBoolean,
@as("SingleInstanceType") singleInstanceType: amazonawsBoolean,
@as("CapacityReservationOptions") capacityReservationOptions: capacityReservationOptionsRequest,
@as("AllocationStrategy") allocationStrategy: fleetOnDemandAllocationStrategy
}
type onDemandOptions = {
@as("MaxTotalPrice") maxTotalPrice: amazonawsString,
@as("MinTargetCapacity") minTargetCapacity: amazonawsInteger,
@as("SingleAvailabilityZone") singleAvailabilityZone: amazonawsBoolean,
@as("SingleInstanceType") singleInstanceType: amazonawsBoolean,
@as("CapacityReservationOptions") capacityReservationOptions: capacityReservationOptions,
@as("AllocationStrategy") allocationStrategy: fleetOnDemandAllocationStrategy
}
type newDhcpConfiguration = {
@as("Values") values: valueStringList,
@as("Key") key: amazonawsString
}
type networkInterfacePrivateIpAddress = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("Primary") primary: amazonawsBoolean,
@as("Association") association: networkInterfaceAssociation
}
type networkInterfacePermission = {
@as("PermissionState") permissionState: networkInterfacePermissionState,
@as("Permission") permission: interfacePermissionType,
@as("AwsService") awsService: amazonawsString,
@as("AwsAccountId") awsAccountId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("NetworkInterfacePermissionId") networkInterfacePermissionId: amazonawsString
}
type networkInterfaceIpv6AddressesList = array<networkInterfaceIpv6Address>
type networkCardInfoList = array<networkCardInfo>
type networkAclEntry = {
@as("RuleNumber") ruleNumber: amazonawsInteger,
@as("RuleAction") ruleAction: ruleAction,
@as("Protocol") protocol: amazonawsString,
@as("PortRange") portRange: portRange,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("IcmpTypeCode") icmpTypeCode: icmpTypeCode,
@as("Egress") egress: amazonawsBoolean,
@as("CidrBlock") cidrBlock: amazonawsString
}
type networkAclAssociationList = array<networkAclAssociation>
type natGatewayAddressList = array<natGatewayAddress>
type movingAddressStatusSet = array<movingAddressStatus>
type modifyTransitGatewayOptions = {
@as("PropagationDefaultRouteTableId") propagationDefaultRouteTableId: transitGatewayRouteTableId,
@as("DefaultRouteTablePropagation") defaultRouteTablePropagation: defaultRouteTablePropagationValue,
@as("AssociationDefaultRouteTableId") associationDefaultRouteTableId: transitGatewayRouteTableId,
@as("DefaultRouteTableAssociation") defaultRouteTableAssociation: defaultRouteTableAssociationValue,
@as("AutoAcceptSharedAttachments") autoAcceptSharedAttachments: autoAcceptSharedAttachmentsValue,
@as("DnsSupport") dnsSupport: dnsSupportValue,
@as("VpnEcmpSupport") vpnEcmpSupport: vpnEcmpSupportValue,
@as("RemoveTransitGatewayCidrBlocks") removeTransitGatewayCidrBlocks: transitGatewayCidrBlockStringList,
@as("AddTransitGatewayCidrBlocks") addTransitGatewayCidrBlocks: transitGatewayCidrBlockStringList
}
type localGatewayRouteList = array<localGatewayRoute>
type loadPermissionListRequest = array<loadPermissionRequest>
type loadPermissionList = array<loadPermission>
type licenseSpecificationListRequest = array<licenseConfigurationRequest>
type licenseList = array<licenseConfiguration>
type launchTemplateOverridesList = array<launchTemplateOverrides>
type launchTemplateLicenseSpecificationListRequest = array<launchTemplateLicenseConfigurationRequest>
type launchTemplateLicenseList = array<launchTemplateLicenseConfiguration>
type launchTemplateInstanceMarketOptionsRequest = {
@as("SpotOptions") spotOptions: launchTemplateSpotMarketOptionsRequest,
@as("MarketType") marketType: marketType
}
type launchTemplateInstanceMarketOptions = {
@as("SpotOptions") spotOptions: launchTemplateSpotMarketOptions,
@as("MarketType") marketType: marketType
}
type launchTemplateElasticInferenceAcceleratorResponseList = array<launchTemplateElasticInferenceAcceleratorResponse>
type launchTemplateElasticInferenceAcceleratorList = array<launchTemplateElasticInferenceAccelerator>
type launchTemplateCapacityReservationSpecificationResponse = {
@as("CapacityReservationTarget") capacityReservationTarget: capacityReservationTargetResponse,
@as("CapacityReservationPreference") capacityReservationPreference: capacityReservationPreference
}
type launchTemplateCapacityReservationSpecificationRequest = {
@as("CapacityReservationTarget") capacityReservationTarget: capacityReservationTarget,
@as("CapacityReservationPreference") capacityReservationPreference: capacityReservationPreference
}
type launchTemplateBlockDeviceMappingRequest = {
@as("NoDevice") noDevice: amazonawsString,
@as("Ebs") ebs: launchTemplateEbsBlockDeviceRequest,
@as("VirtualName") virtualName: amazonawsString,
@as("DeviceName") deviceName: amazonawsString
}
type launchTemplateBlockDeviceMapping = {
@as("NoDevice") noDevice: amazonawsString,
@as("Ebs") ebs: launchTemplateEbsBlockDevice,
@as("VirtualName") virtualName: amazonawsString,
@as("DeviceName") deviceName: amazonawsString
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
@as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: amazonawsBoolean,
@as("InstanceTagKeys") instanceTagKeys: instanceTagKeySet
}
type instanceStatusEventList = array<instanceStatusEvent>
type instanceStatusDetailsList = array<instanceStatusDetails>
type instanceStateChange = {
@as("PreviousState") previousState: instanceState,
@as("InstanceId") instanceId: amazonawsString,
@as("CurrentState") currentState: instanceState
}
type instancePrivateIpAddress = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("Primary") primary: amazonawsBoolean,
@as("Association") association: instanceNetworkInterfaceAssociation
}
type instanceMonitoring = {
@as("Monitoring") monitoring: monitoring,
@as("InstanceId") instanceId: amazonawsString
}
type instanceMarketOptionsRequest = {
@as("SpotOptions") spotOptions: spotMarketOptions,
@as("MarketType") marketType: marketType
}
type instanceIpv6AddressListRequest = array<instanceIpv6AddressRequest>
type instanceIpv6AddressList = array<instanceIpv6Address>
type instanceCreditSpecificationListRequest = array<instanceCreditSpecificationRequest>
type instanceCreditSpecificationList = array<instanceCreditSpecification>
type instanceCountList = array<instanceCount>
type instanceBlockDeviceMappingSpecification = {
@as("VirtualName") virtualName: amazonawsString,
@as("NoDevice") noDevice: amazonawsString,
@as("Ebs") ebs: ebsInstanceBlockDeviceSpecification,
@as("DeviceName") deviceName: amazonawsString
}
type instanceBlockDeviceMapping = {
@as("Ebs") ebs: ebsInstanceBlockDevice,
@as("DeviceName") deviceName: amazonawsString
}
type inferenceDeviceInfoList = array<inferenceDeviceInfo>
type importVolumeTaskDetails = {
@as("Volume") volume: diskImageVolumeDescription,
@as("Image") image: diskImageDescription,
@as("Description") description: amazonawsString,
@as("BytesConverted") bytesConverted: amazonawsLong,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type importInstanceVolumeDetailItem = {
@as("Volume") volume: diskImageVolumeDescription,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("Image") image: diskImageDescription,
@as("Description") description: amazonawsString,
@as("BytesConverted") bytesConverted: amazonawsLong,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type importInstanceLaunchSpecification = {
@as("UserData") userData: userData,
@as("SubnetId") subnetId: subnetId,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("Placement") placement: placement,
@as("Monitoring") monitoring: amazonawsBoolean,
@as("InstanceType") instanceType: instanceType,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: shutdownBehavior,
@as("GroupNames") groupNames: securityGroupStringList,
@as("GroupIds") groupIds: securityGroupIdStringList,
@as("Architecture") architecture: architectureValues,
@as("AdditionalInfo") additionalInfo: amazonawsString
}
type importImageLicenseSpecificationListResponse = array<importImageLicenseConfigurationResponse>
type importImageLicenseSpecificationListRequest = array<importImageLicenseConfigurationRequest>
type imageDiskContainer = {
@as("UserBucket") userBucket: userBucket,
@as("Url") url: amazonawsString,
@as("SnapshotId") snapshotId: snapshotId,
@as("Format") format: amazonawsString,
@as("DeviceName") deviceName: amazonawsString,
@as("Description") description: amazonawsString
}
type idFormatList = array<idFormat>
type iamInstanceProfileAssociation = {
@as("Timestamp") timestamp: dateTime,
@as("State") state: iamInstanceProfileAssociationState,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfile,
@as("InstanceId") instanceId: amazonawsString,
@as("AssociationId") associationId: amazonawsString
}
type iKEVersionsRequestList = array<iKEVersionsRequestListValue>
type iKEVersionsList = array<iKEVersionsListValue>
type hostOfferingSet = array<hostOffering>
type hostInstanceList = array<hostInstance>
type historyRecordEntry = {
@as("Timestamp") timestamp: dateTime,
@as("EventType") eventType: fleetEventType,
@as("EventInformation") eventInformation: eventInformation
}
type historyRecord = {
@as("Timestamp") timestamp: dateTime,
@as("EventType") eventType: eventType,
@as("EventInformation") eventInformation: eventInformation
}
type groupIdentifierSet = array<securityGroupIdentifier>
type groupIdentifierList = array<groupIdentifier>
type gpuDeviceInfo = {
@as("MemoryInfo") memoryInfo: gpuDeviceMemoryInfo,
@as("Count") count: gpuDeviceCount,
@as("Manufacturer") manufacturer: gpuDeviceManufacturerName,
@as("Name") name: gpuDeviceName
}
type fpgaDeviceInfo = {
@as("MemoryInfo") memoryInfo: fpgaDeviceMemoryInfo,
@as("Count") count: fpgaDeviceCount,
@as("Manufacturer") manufacturer: fpgaDeviceManufacturerName,
@as("Name") name: fpgaDeviceName
}
type fleetSpotMaintenanceStrategiesRequest = {
@as("CapacityRebalance") capacityRebalance: fleetSpotCapacityRebalanceRequest
}
type fleetSpotMaintenanceStrategies = {
@as("CapacityRebalance") capacityRebalance: fleetSpotCapacityRebalance
}
type fleetLaunchTemplateOverridesRequest = {
@as("Placement") placement: placement,
@as("Priority") priority: amazonawsDouble,
@as("WeightedCapacity") weightedCapacity: amazonawsDouble,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SubnetId") subnetId: subnetId,
@as("MaxPrice") maxPrice: amazonawsString,
@as("InstanceType") instanceType: instanceType
}
type fleetLaunchTemplateOverrides = {
@as("Placement") placement: placementResponse,
@as("Priority") priority: amazonawsDouble,
@as("WeightedCapacity") weightedCapacity: amazonawsDouble,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("MaxPrice") maxPrice: amazonawsString,
@as("InstanceType") instanceType: instanceType
}
type filter = {
@as("Values") values: valueStringList,
@as("Name") name: amazonawsString
}
type failedQueuedPurchaseDeletion = {
@as("ReservedInstancesId") reservedInstancesId: amazonawsString,
@as("Error") error: deleteQueuedReservedInstancesError
}
type errorSet = array<validationError>
type enableFastSnapshotRestoreSuccessSet = array<enableFastSnapshotRestoreSuccessItem>
type enableFastSnapshotRestoreStateErrorItem = {
@as("Error") error: enableFastSnapshotRestoreStateError,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type elasticInferenceAccelerators = array<elasticInferenceAccelerator>
type elasticInferenceAcceleratorAssociationList = array<elasticInferenceAcceleratorAssociation>
type elasticGpuSpecifications = array<elasticGpuSpecification>
type elasticGpuSpecificationResponseList = array<elasticGpuSpecificationResponse>
type elasticGpuSpecificationList = array<elasticGpuSpecification>
type elasticGpuAssociationList = array<elasticGpuAssociation>
type ebsInfo = {
@as("NvmeSupport") nvmeSupport: ebsNvmeSupport,
@as("EbsOptimizedInfo") ebsOptimizedInfo: ebsOptimizedInfo,
@as("EncryptionSupport") encryptionSupport: ebsEncryptionSupport,
@as("EbsOptimizedSupport") ebsOptimizedSupport: ebsOptimizedSupport
}
type dnsServersOptionsModifyStructure = {
@as("Enabled") enabled: amazonawsBoolean,
@as("CustomDnsServers") customDnsServers: valueStringList
}
type dnsEntrySet = array<dnsEntry>
type diskInfoList = array<diskInfo>
type diskImage = {
@as("Volume") volume: volumeDetail,
@as("Image") image: diskImageDetail,
@as("Description") description: amazonawsString
}
type disableFastSnapshotRestoreSuccessSet = array<disableFastSnapshotRestoreSuccessItem>
type disableFastSnapshotRestoreStateErrorItem = {
@as("Error") error: disableFastSnapshotRestoreStateError,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type dhcpConfigurationValueList = array<attributeValue>
type describeFastSnapshotRestoreSuccessSet = array<describeFastSnapshotRestoreSuccessItem>
type deregisterInstanceTagAttributeRequest = {
@as("InstanceTagKeys") instanceTagKeys: instanceTagKeySet,
@as("IncludeAllTagsOfInstance") includeAllTagsOfInstance: amazonawsBoolean
}
type deleteLaunchTemplateVersionsResponseSuccessSet = array<deleteLaunchTemplateVersionsResponseSuccessItem>
type deleteLaunchTemplateVersionsResponseErrorItem = {
@as("ResponseError") responseError: responseError,
@as("VersionNumber") versionNumber: amazonawsLong,
@as("LaunchTemplateName") launchTemplateName: amazonawsString,
@as("LaunchTemplateId") launchTemplateId: amazonawsString
}
type deleteFleetSuccessSet = array<deleteFleetSuccessItem>
type deleteFleetErrorItem = {
@as("FleetId") fleetId: fleetId,
@as("Error") error: deleteFleetError
}
type createVolumePermissionList = array<createVolumePermission>
type connectionNotification = {
@as("ConnectionNotificationState") connectionNotificationState: connectionNotificationState,
@as("ConnectionEvents") connectionEvents: valueStringList,
@as("ConnectionNotificationArn") connectionNotificationArn: amazonawsString,
@as("ConnectionNotificationType") connectionNotificationType: connectionNotificationType,
@as("VpcEndpointId") vpcEndpointId: amazonawsString,
@as("ServiceId") serviceId: amazonawsString,
@as("ConnectionNotificationId") connectionNotificationId: amazonawsString
}
type coipAddressUsageSet = array<coipAddressUsage>
type clientVpnRoute = {
@as("Description") description: amazonawsString,
@as("Status") status: clientVpnRouteStatus,
@as("Origin") origin: amazonawsString,
@as("Type") type_: amazonawsString,
@as("TargetSubnet") targetSubnet: amazonawsString,
@as("DestinationCidr") destinationCidr: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
type clientVpnConnection = {
@as("PostureComplianceStatuses") postureComplianceStatuses: valueStringList,
@as("ConnectionEndTime") connectionEndTime: amazonawsString,
@as("Status") status: clientVpnConnectionStatus,
@as("CommonName") commonName: amazonawsString,
@as("ClientIp") clientIp: amazonawsString,
@as("EgressPackets") egressPackets: amazonawsString,
@as("IngressPackets") ingressPackets: amazonawsString,
@as("EgressBytes") egressBytes: amazonawsString,
@as("IngressBytes") ingressBytes: amazonawsString,
@as("ConnectionEstablishedTime") connectionEstablishedTime: amazonawsString,
@as("Username") username: amazonawsString,
@as("ConnectionId") connectionId: amazonawsString,
@as("Timestamp") timestamp: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
type clientVpnAuthenticationRequest = {
@as("FederatedAuthentication") federatedAuthentication: federatedAuthenticationRequest,
@as("MutualAuthentication") mutualAuthentication: certificateAuthenticationRequest,
@as("ActiveDirectory") activeDirectory: directoryServiceAuthenticationRequest,
@as("Type") type_: clientVpnAuthenticationType
}
type clientVpnAuthentication = {
@as("FederatedAuthentication") federatedAuthentication: federatedAuthentication,
@as("MutualAuthentication") mutualAuthentication: certificateAuthentication,
@as("ActiveDirectory") activeDirectory: directoryServiceAuthentication,
@as("Type") type_: clientVpnAuthenticationType
}
type clientConnectResponseOptions = {
@as("Status") status: clientVpnEndpointAttributeStatus,
@as("LambdaFunctionArn") lambdaFunctionArn: amazonawsString,
@as("Enabled") enabled: amazonawsBoolean
}
type classicLoadBalancers = array<classicLoadBalancer>
type classicLinkDnsSupportList = array<classicLinkDnsSupport>
type cidrBlockSet = array<cidrBlock>
type capacityReservationSpecificationResponse = {
@as("CapacityReservationTarget") capacityReservationTarget: capacityReservationTargetResponse,
@as("CapacityReservationPreference") capacityReservationPreference: capacityReservationPreference
}
type capacityReservationSpecification = {
@as("CapacityReservationTarget") capacityReservationTarget: capacityReservationTarget,
@as("CapacityReservationPreference") capacityReservationPreference: capacityReservationPreference
}
type capacityReservationGroupSet = array<capacityReservationGroup>
type cancelledSpotInstanceRequestList = array<cancelledSpotInstanceRequest>
type cancelSpotFleetRequestsSuccessSet = array<cancelSpotFleetRequestsSuccessItem>
type cancelSpotFleetRequestsErrorItem = {
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString,
@as("Error") error: cancelSpotFleetRequestsError
}
type byoipCidrSet = array<byoipCidr>
type blockDeviceMapping = {
@as("NoDevice") noDevice: amazonawsString,
@as("Ebs") ebs: ebsBlockDevice,
@as("VirtualName") virtualName: amazonawsString,
@as("DeviceName") deviceName: amazonawsString
}
type availableInstanceCapacityList = array<instanceCapacity>
type availabilityZoneMessageList = array<availabilityZoneMessage>
type authorizationRule = {
@as("Status") status: clientVpnAuthorizationRuleStatus,
@as("DestinationCidr") destinationCidr: amazonawsString,
@as("AccessAll") accessAll: amazonawsBoolean,
@as("GroupId") groupId: amazonawsString,
@as("Description") description: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
type athenaIntegrationsSet = array<athenaIntegration>
type associatedTargetNetworkSet = array<associatedTargetNetwork>
type associatedRolesList = array<associatedRole>
type assignedPrivateIpAddressList = array<assignedPrivateIpAddress>
type analysisSecurityGroupRule = {
@as("Protocol") protocol: amazonawsString,
@as("PrefixListId") prefixListId: amazonawsString,
@as("PortRange") portRange: portRange,
@as("SecurityGroupId") securityGroupId: amazonawsString,
@as("Direction") direction: amazonawsString,
@as("Cidr") cidr: amazonawsString
}
type analysisLoadBalancerTarget = {
@as("Port") port: port,
@as("Instance") instance: analysisComponent,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Address") address: ipAddress
}
type analysisComponentList = array<analysisComponent>
type analysisAclRule = {
@as("RuleNumber") ruleNumber: amazonawsInteger,
@as("RuleAction") ruleAction: amazonawsString,
@as("Protocol") protocol: amazonawsString,
@as("PortRange") portRange: portRange,
@as("Egress") egress: amazonawsBoolean,
@as("Cidr") cidr: amazonawsString
}
type alternatePathHintList = array<alternatePathHint>
type allowedPrincipalSet = array<allowedPrincipal>
type addressAttribute = {
@as("PtrRecordUpdate") ptrRecordUpdate: ptrUpdateStatus,
@as("PtrRecord") ptrRecord: amazonawsString,
@as("AllocationId") allocationId: allocationId,
@as("PublicIp") publicIp: publicIpAddress
}
type addPrefixListEntries = array<addPrefixListEntry>
type activeInstanceSet = array<activeInstance>
type accountAttributeValueList = array<accountAttributeValue>
type vpnTunnelOptionsSpecification = {
@as("StartupAction") startupAction: amazonawsString,
@as("IKEVersions") iKEVersions: iKEVersionsRequestList,
@as("Phase2DHGroupNumbers") phase2DHGroupNumbers: phase2DHGroupNumbersRequestList,
@as("Phase1DHGroupNumbers") phase1DHGroupNumbers: phase1DHGroupNumbersRequestList,
@as("Phase2IntegrityAlgorithms") phase2IntegrityAlgorithms: phase2IntegrityAlgorithmsRequestList,
@as("Phase1IntegrityAlgorithms") phase1IntegrityAlgorithms: phase1IntegrityAlgorithmsRequestList,
@as("Phase2EncryptionAlgorithms") phase2EncryptionAlgorithms: phase2EncryptionAlgorithmsRequestList,
@as("Phase1EncryptionAlgorithms") phase1EncryptionAlgorithms: phase1EncryptionAlgorithmsRequestList,
@as("DPDTimeoutAction") dPDTimeoutAction: amazonawsString,
@as("DPDTimeoutSeconds") dPDTimeoutSeconds: amazonawsInteger,
@as("ReplayWindowSize") replayWindowSize: amazonawsInteger,
@as("RekeyFuzzPercentage") rekeyFuzzPercentage: amazonawsInteger,
@as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: amazonawsInteger,
@as("Phase2LifetimeSeconds") phase2LifetimeSeconds: amazonawsInteger,
@as("Phase1LifetimeSeconds") phase1LifetimeSeconds: amazonawsInteger,
@as("PreSharedKey") preSharedKey: amazonawsString,
@as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: amazonawsString,
@as("TunnelInsideCidr") tunnelInsideCidr: amazonawsString
}
type vpnGateway = {
@as("Tags") tags: tagList,
@as("AmazonSideAsn") amazonSideAsn: amazonawsLong,
@as("VpnGatewayId") vpnGatewayId: amazonawsString,
@as("VpcAttachments") vpcAttachments: vpcAttachmentList,
@as("Type") type_: gatewayType,
@as("State") state: vpnState,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type vpcPeeringConnectionVpcInfo = {
@as("Region") region: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("PeeringOptions") peeringOptions: vpcPeeringConnectionOptionsDescription,
@as("OwnerId") ownerId: amazonawsString,
@as("CidrBlockSet") cidrBlockSet: cidrBlockSet,
@as("Ipv6CidrBlockSet") ipv6CidrBlockSet: ipv6CidrBlockSet,
@as("CidrBlock") cidrBlock: amazonawsString
}
type vpcIpv6CidrBlockAssociationSet = array<vpcIpv6CidrBlockAssociation>
type vpcEndpointConnection = {
@as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: valueStringList,
@as("NetworkLoadBalancerArns") networkLoadBalancerArns: valueStringList,
@as("DnsEntries") dnsEntries: dnsEntrySet,
@as("CreationTimestamp") creationTimestamp: millisecondDateTime,
@as("VpcEndpointState") vpcEndpointState: state,
@as("VpcEndpointOwner") vpcEndpointOwner: amazonawsString,
@as("VpcEndpointId") vpcEndpointId: amazonawsString,
@as("ServiceId") serviceId: amazonawsString
}
type vpcEndpoint = {
@as("LastError") lastError: lastError,
@as("OwnerId") ownerId: amazonawsString,
@as("Tags") tags: tagList,
@as("CreationTimestamp") creationTimestamp: millisecondDateTime,
@as("DnsEntries") dnsEntries: dnsEntrySet,
@as("NetworkInterfaceIds") networkInterfaceIds: valueStringList,
@as("RequesterManaged") requesterManaged: amazonawsBoolean,
@as("PrivateDnsEnabled") privateDnsEnabled: amazonawsBoolean,
@as("Groups") groups: groupIdentifierSet,
@as("SubnetIds") subnetIds: valueStringList,
@as("RouteTableIds") routeTableIds: valueStringList,
@as("PolicyDocument") policyDocument: amazonawsString,
@as("State") state: state,
@as("ServiceName") serviceName: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("VpcEndpointType") vpcEndpointType: vpcEndpointType,
@as("VpcEndpointId") vpcEndpointId: amazonawsString
}
type vpcClassicLink = {
@as("VpcId") vpcId: amazonawsString,
@as("Tags") tags: tagList,
@as("ClassicLinkEnabled") classicLinkEnabled: amazonawsBoolean
}
type vpcCidrBlockAssociationSet = array<vpcCidrBlockAssociation>
type volumeStatusInfo = {
@as("Status") status: volumeStatusInfoStatus,
@as("Details") details: volumeStatusDetailsList
}
type volume = {
@as("Throughput") throughput: amazonawsInteger,
@as("MultiAttachEnabled") multiAttachEnabled: amazonawsBoolean,
@as("FastRestored") fastRestored: amazonawsBoolean,
@as("VolumeType") volumeType: volumeType,
@as("Tags") tags: tagList,
@as("Iops") iops: amazonawsInteger,
@as("VolumeId") volumeId: amazonawsString,
@as("State") state: volumeState,
@as("SnapshotId") snapshotId: amazonawsString,
@as("Size") size: amazonawsInteger,
@as("OutpostArn") outpostArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("CreateTime") createTime: dateTime,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Attachments") attachments: volumeAttachmentList
}
type validationWarning = {
@as("Errors") errors: errorSet
}
type unsuccessfulItemSet = array<unsuccessfulItem>
type unsuccessfulItemList = array<unsuccessfulItem>
type unsuccessfulInstanceCreditSpecificationSet = array<unsuccessfulInstanceCreditSpecificationItem>
type tunnelOption = {
@as("StartupAction") startupAction: amazonawsString,
@as("IkeVersions") ikeVersions: iKEVersionsList,
@as("Phase2DHGroupNumbers") phase2DHGroupNumbers: phase2DHGroupNumbersList,
@as("Phase1DHGroupNumbers") phase1DHGroupNumbers: phase1DHGroupNumbersList,
@as("Phase2IntegrityAlgorithms") phase2IntegrityAlgorithms: phase2IntegrityAlgorithmsList,
@as("Phase1IntegrityAlgorithms") phase1IntegrityAlgorithms: phase1IntegrityAlgorithmsList,
@as("Phase2EncryptionAlgorithms") phase2EncryptionAlgorithms: phase2EncryptionAlgorithmsList,
@as("Phase1EncryptionAlgorithms") phase1EncryptionAlgorithms: phase1EncryptionAlgorithmsList,
@as("DpdTimeoutAction") dpdTimeoutAction: amazonawsString,
@as("DpdTimeoutSeconds") dpdTimeoutSeconds: amazonawsInteger,
@as("ReplayWindowSize") replayWindowSize: amazonawsInteger,
@as("RekeyFuzzPercentage") rekeyFuzzPercentage: amazonawsInteger,
@as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: amazonawsInteger,
@as("Phase2LifetimeSeconds") phase2LifetimeSeconds: amazonawsInteger,
@as("Phase1LifetimeSeconds") phase1LifetimeSeconds: amazonawsInteger,
@as("PreSharedKey") preSharedKey: amazonawsString,
@as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: amazonawsString,
@as("TunnelInsideCidr") tunnelInsideCidr: amazonawsString,
@as("OutsideIpAddress") outsideIpAddress: amazonawsString
}
type transitGatewayVpcAttachment = {
@as("Tags") tags: tagList,
@as("Options") options: transitGatewayVpcAttachmentOptions,
@as("CreationTime") creationTime: dateTime,
@as("SubnetIds") subnetIds: valueStringList,
@as("State") state: transitGatewayAttachmentState,
@as("VpcOwnerId") vpcOwnerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGatewayRouteTable = {
@as("Tags") tags: tagList,
@as("CreationTime") creationTime: dateTime,
@as("DefaultPropagationRouteTable") defaultPropagationRouteTable: amazonawsBoolean,
@as("DefaultAssociationRouteTable") defaultAssociationRouteTable: amazonawsBoolean,
@as("State") state: transitGatewayRouteTableState,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: amazonawsString
}
type transitGatewayRoute = {
@as("State") state: transitGatewayRouteState,
@as("Type") type_: transitGatewayRouteType,
@as("TransitGatewayAttachments") transitGatewayAttachments: transitGatewayRouteAttachmentList,
@as("PrefixListId") prefixListId: prefixListResourceId,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
type transitGatewayPrefixListReferenceSet = array<transitGatewayPrefixListReference>
type transitGatewayPeeringAttachment = {
@as("Tags") tags: tagList,
@as("CreationTime") creationTime: dateTime,
@as("State") state: transitGatewayAttachmentState,
@as("Status") status: peeringAttachmentStatus,
@as("AccepterTgwInfo") accepterTgwInfo: peeringTgwInfo,
@as("RequesterTgwInfo") requesterTgwInfo: peeringTgwInfo,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGatewayMulticastDomainAssociations = {
@as("Subnets") subnets: subnetAssociationList,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceId") resourceId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayMulticastDomainAssociationList = array<transitGatewayMulticastDomainAssociation>
type transitGatewayMulticastDomain = {
@as("Tags") tags: tagList,
@as("CreationTime") creationTime: dateTime,
@as("State") state: transitGatewayMulticastDomainState,
@as("Options") options: transitGatewayMulticastDomainOptions,
@as("OwnerId") ownerId: amazonawsString,
@as("TransitGatewayMulticastDomainArn") transitGatewayMulticastDomainArn: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: amazonawsString
}
type transitGatewayConnectPeerConfiguration = {
@as("BgpConfigurations") bgpConfigurations: transitGatewayAttachmentBgpConfigurationList,
@as("Protocol") protocol: protocolValue,
@as("InsideCidrBlocks") insideCidrBlocks: insideCidrBlocksStringList,
@as("PeerAddress") peerAddress: amazonawsString,
@as("TransitGatewayAddress") transitGatewayAddress: amazonawsString
}
type transitGatewayConnect = {
@as("Tags") tags: tagList,
@as("Options") options: transitGatewayConnectOptions,
@as("CreationTime") creationTime: dateTime,
@as("State") state: transitGatewayAttachmentState,
@as("TransitGatewayId") transitGatewayId: transitGatewayId,
@as("TransportTransitGatewayAttachmentId") transportTransitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId
}
type transitGatewayAttachment = {
@as("Tags") tags: tagList,
@as("CreationTime") creationTime: dateTime,
@as("Association") association: transitGatewayAttachmentAssociation,
@as("State") state: transitGatewayAttachmentState,
@as("ResourceId") resourceId: amazonawsString,
@as("ResourceType") resourceType: transitGatewayAttachmentResourceType,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("TransitGatewayOwnerId") transitGatewayOwnerId: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: amazonawsString
}
type transitGateway = {
@as("Tags") tags: tagList,
@as("Options") options: transitGatewayOptions,
@as("CreationTime") creationTime: dateTime,
@as("Description") description: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("State") state: transitGatewayState,
@as("TransitGatewayArn") transitGatewayArn: amazonawsString,
@as("TransitGatewayId") transitGatewayId: amazonawsString
}
type trafficMirrorTarget = {
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("Description") description: amazonawsString,
@as("Type") type_: trafficMirrorTargetType,
@as("NetworkLoadBalancerArn") networkLoadBalancerArn: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("TrafficMirrorTargetId") trafficMirrorTargetId: amazonawsString
}
type trafficMirrorSession = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("VirtualNetworkId") virtualNetworkId: amazonawsInteger,
@as("SessionNumber") sessionNumber: amazonawsInteger,
@as("PacketLength") packetLength: amazonawsInteger,
@as("OwnerId") ownerId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: amazonawsString,
@as("TrafficMirrorTargetId") trafficMirrorTargetId: amazonawsString,
@as("TrafficMirrorSessionId") trafficMirrorSessionId: amazonawsString
}
type trafficMirrorFilterRuleList = array<trafficMirrorFilterRule>
type terminateConnectionStatusSet = array<terminateConnectionStatus>
type targetReservationValueSet = array<targetReservationValue>
type targetNetworkSet = array<targetNetwork>
type targetGroupsConfig = {
@as("TargetGroups") targetGroups: targetGroups
}
type tagSpecification = {
@as("Tags") tags: tagList,
@as("ResourceType") resourceType: resourceType
}
type subnetIpv6CidrBlockAssociationSet = array<subnetIpv6CidrBlockAssociation>
type staleIpPermission = {
@as("UserIdGroupPairs") userIdGroupPairs: userIdGroupPairSet,
@as("ToPort") toPort: amazonawsInteger,
@as("PrefixListIds") prefixListIds: prefixListIdSet,
@as("IpRanges") ipRanges: ipRanges,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("FromPort") fromPort: amazonawsInteger
}
type spotOptionsRequest = {
@as("MaxTotalPrice") maxTotalPrice: amazonawsString,
@as("MinTargetCapacity") minTargetCapacity: amazonawsInteger,
@as("SingleAvailabilityZone") singleAvailabilityZone: amazonawsBoolean,
@as("SingleInstanceType") singleInstanceType: amazonawsBoolean,
@as("InstancePoolsToUseCount") instancePoolsToUseCount: amazonawsInteger,
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: spotInstanceInterruptionBehavior,
@as("MaintenanceStrategies") maintenanceStrategies: fleetSpotMaintenanceStrategiesRequest,
@as("AllocationStrategy") allocationStrategy: spotAllocationStrategy
}
type spotOptions = {
@as("MaxTotalPrice") maxTotalPrice: amazonawsString,
@as("MinTargetCapacity") minTargetCapacity: amazonawsInteger,
@as("SingleAvailabilityZone") singleAvailabilityZone: amazonawsBoolean,
@as("SingleInstanceType") singleInstanceType: amazonawsBoolean,
@as("InstancePoolsToUseCount") instancePoolsToUseCount: amazonawsInteger,
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: spotInstanceInterruptionBehavior,
@as("MaintenanceStrategies") maintenanceStrategies: fleetSpotMaintenanceStrategies,
@as("AllocationStrategy") allocationStrategy: spotAllocationStrategy
}
type spotFleetTagSpecification = {
@as("Tags") tags: tagList,
@as("ResourceType") resourceType: resourceType
}
type snapshotInfo = {
@as("OutpostArn") outpostArn: amazonawsString,
@as("SnapshotId") snapshotId: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("Progress") progress: amazonawsString,
@as("StartTime") startTime: millisecondDateTime,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("State") state: snapshotState,
@as("VolumeId") volumeId: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString
}
type snapshotDetailList = array<snapshotDetail>
type snapshot = {
@as("Tags") tags: tagList,
@as("OutpostArn") outpostArn: amazonawsString,
@as("OwnerAlias") ownerAlias: amazonawsString,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("VolumeId") volumeId: amazonawsString,
@as("StateMessage") stateMessage: amazonawsString,
@as("State") state: snapshotState,
@as("StartTime") startTime: dateTime,
@as("SnapshotId") snapshotId: amazonawsString,
@as("Progress") progress: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("DataEncryptionKeyId") dataEncryptionKeyId: amazonawsString
}
type serviceDetail = {
@as("PrivateDnsNameVerificationState") privateDnsNameVerificationState: dnsNameState,
@as("Tags") tags: tagList,
@as("ManagesVpcEndpoints") managesVpcEndpoints: amazonawsBoolean,
@as("AcceptanceRequired") acceptanceRequired: amazonawsBoolean,
@as("VpcEndpointPolicySupported") vpcEndpointPolicySupported: amazonawsBoolean,
@as("PrivateDnsNames") privateDnsNames: privateDnsDetailsSet,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("BaseEndpointDnsNames") baseEndpointDnsNames: valueStringList,
@as("Owner") owner: amazonawsString,
@as("AvailabilityZones") availabilityZones: valueStringList,
@as("ServiceType") serviceType: serviceTypeDetailSet,
@as("ServiceId") serviceId: amazonawsString,
@as("ServiceName") serviceName: amazonawsString
}
type serviceConfiguration = {
@as("Tags") tags: tagList,
@as("PrivateDnsNameConfiguration") privateDnsNameConfiguration: privateDnsNameConfiguration,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("BaseEndpointDnsNames") baseEndpointDnsNames: valueStringList,
@as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: valueStringList,
@as("NetworkLoadBalancerArns") networkLoadBalancerArns: valueStringList,
@as("ManagesVpcEndpoints") managesVpcEndpoints: amazonawsBoolean,
@as("AcceptanceRequired") acceptanceRequired: amazonawsBoolean,
@as("AvailabilityZones") availabilityZones: valueStringList,
@as("ServiceState") serviceState: serviceState,
@as("ServiceName") serviceName: amazonawsString,
@as("ServiceId") serviceId: amazonawsString,
@as("ServiceType") serviceType: serviceTypeDetailSet
}
type scheduledInstancesNetworkInterface = {
@as("SubnetId") subnetId: subnetId,
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddressConfigs") privateIpAddressConfigs: privateIpAddressConfigSet,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("Ipv6Addresses") ipv6Addresses: scheduledInstancesIpv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("Groups") groups: scheduledInstancesSecurityGroupIdSet,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("Description") description: amazonawsString,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean
}
type scheduledInstancesBlockDeviceMappingSet = array<scheduledInstancesBlockDeviceMapping>
type scheduledInstanceAvailability = {
@as("TotalScheduledInstanceHours") totalScheduledInstanceHours: amazonawsInteger,
@as("SlotDurationInHours") slotDurationInHours: amazonawsInteger,
@as("Recurrence") recurrence: scheduledInstanceRecurrence,
@as("PurchaseToken") purchaseToken: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("NetworkPlatform") networkPlatform: amazonawsString,
@as("MinTermDurationInDays") minTermDurationInDays: amazonawsInteger,
@as("MaxTermDurationInDays") maxTermDurationInDays: amazonawsInteger,
@as("InstanceType") instanceType: amazonawsString,
@as("HourlyPrice") hourlyPrice: amazonawsString,
@as("FirstSlotStartTime") firstSlotStartTime: dateTime,
@as("AvailableInstanceCount") availableInstanceCount: amazonawsInteger,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type scheduledInstance = {
@as("TotalScheduledInstanceHours") totalScheduledInstanceHours: amazonawsInteger,
@as("TermStartDate") termStartDate: dateTime,
@as("TermEndDate") termEndDate: dateTime,
@as("SlotDurationInHours") slotDurationInHours: amazonawsInteger,
@as("ScheduledInstanceId") scheduledInstanceId: amazonawsString,
@as("Recurrence") recurrence: scheduledInstanceRecurrence,
@as("PreviousSlotEndTime") previousSlotEndTime: dateTime,
@as("Platform") platform: amazonawsString,
@as("NextSlotStartTime") nextSlotStartTime: dateTime,
@as("NetworkPlatform") networkPlatform: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("HourlyPrice") hourlyPrice: amazonawsString,
@as("CreateDate") createDate: dateTime,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type routeTableAssociationList = array<routeTableAssociation>
type reservedInstancesOffering = {
@as("Scope") scope: scope,
@as("RecurringCharges") recurringCharges: recurringChargesList,
@as("PricingDetails") pricingDetails: pricingDetailsList,
@as("OfferingType") offeringType: offeringTypeValues,
@as("OfferingClass") offeringClass: offeringClassType,
@as("Marketplace") marketplace: amazonawsBoolean,
@as("InstanceTenancy") instanceTenancy: tenancy,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("UsagePrice") usagePrice: amazonawsFloat,
@as("ReservedInstancesOfferingId") reservedInstancesOfferingId: amazonawsString,
@as("ProductDescription") productDescription: rIProductDescription,
@as("InstanceType") instanceType: instanceType,
@as("FixedPrice") fixedPrice: amazonawsFloat,
@as("Duration") duration: amazonawsLong,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type reservedInstancesModificationResultList = array<reservedInstancesModificationResult>
type reservedInstancesListing = {
@as("UpdateDate") updateDate: dateTime,
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: listingStatus,
@as("ReservedInstancesListingId") reservedInstancesListingId: amazonawsString,
@as("ReservedInstancesId") reservedInstancesId: amazonawsString,
@as("PriceSchedules") priceSchedules: priceScheduleList,
@as("InstanceCounts") instanceCounts: instanceCountList,
@as("CreateDate") createDate: dateTime,
@as("ClientToken") clientToken: amazonawsString
}
type reservedInstances = {
@as("Tags") tags: tagList,
@as("Scope") scope: scope,
@as("RecurringCharges") recurringCharges: recurringChargesList,
@as("OfferingType") offeringType: offeringTypeValues,
@as("OfferingClass") offeringClass: offeringClassType,
@as("InstanceTenancy") instanceTenancy: tenancy,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("UsagePrice") usagePrice: amazonawsFloat,
@as("State") state: reservedInstanceState,
@as("Start") start: dateTime,
@as("ReservedInstancesId") reservedInstancesId: amazonawsString,
@as("ProductDescription") productDescription: rIProductDescription,
@as("InstanceType") instanceType: instanceType,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("FixedPrice") fixedPrice: amazonawsFloat,
@as("End") end: dateTime,
@as("Duration") duration: amazonawsLong,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type reservedInstanceReservationValueSet = array<reservedInstanceReservationValue>
type replaceRootVolumeTask = {
@as("Tags") tags: tagList,
@as("CompleteTime") completeTime: amazonawsString,
@as("StartTime") startTime: amazonawsString,
@as("TaskState") taskState: replaceRootVolumeTaskState,
@as("InstanceId") instanceId: amazonawsString,
@as("ReplaceRootVolumeTaskId") replaceRootVolumeTaskId: replaceRootVolumeTaskId
}
type purchaseSet = array<purchase>
type publicIpv4Pool = {
@as("Tags") tags: tagList,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("TotalAvailableAddressCount") totalAvailableAddressCount: amazonawsInteger,
@as("TotalAddressCount") totalAddressCount: amazonawsInteger,
@as("PoolAddressRanges") poolAddressRanges: publicIpv4PoolRangeSet,
@as("Description") description: amazonawsString,
@as("PoolId") poolId: amazonawsString
}
type principalIdFormat = {
@as("Statuses") statuses: idFormatList,
@as("Arn") arn: amazonawsString
}
type prefixListSet = array<prefixList>
type placementGroup = {
@as("Tags") tags: tagList,
@as("GroupId") groupId: amazonawsString,
@as("PartitionCount") partitionCount: amazonawsInteger,
@as("Strategy") strategy: placementStrategy,
@as("State") state: placementGroupState,
@as("GroupName") groupName: amazonawsString
}
type newDhcpConfigurationList = array<newDhcpConfiguration>
type networkInterfacePrivateIpAddressList = array<networkInterfacePrivateIpAddress>
type networkInterfacePermissionList = array<networkInterfacePermission>
type networkInsightsPath = {
@as("Tags") tags: tagList,
@as("DestinationPort") destinationPort: amazonawsInteger,
@as("Protocol") protocol: protocol,
@as("DestinationIp") destinationIp: ipAddress,
@as("SourceIp") sourceIp: ipAddress,
@as("Destination") destination: amazonawsString,
@as("Source") source: amazonawsString,
@as("CreatedDate") createdDate: millisecondDateTime,
@as("NetworkInsightsPathArn") networkInsightsPathArn: resourceArn,
@as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId
}
type networkInfo = {
@as("EfaInfo") efaInfo: efaInfo,
@as("EfaSupported") efaSupported: efaSupportedFlag,
@as("EnaSupport") enaSupport: enaSupport,
@as("Ipv6Supported") ipv6Supported: ipv6Flag,
@as("Ipv6AddressesPerInterface") ipv6AddressesPerInterface: maxIpv6AddrPerInterface,
@as("Ipv4AddressesPerInterface") ipv4AddressesPerInterface: maxIpv4AddrPerInterface,
@as("NetworkCards") networkCards: networkCardInfoList,
@as("DefaultNetworkCardIndex") defaultNetworkCardIndex: defaultNetworkCardIndex,
@as("MaximumNetworkCards") maximumNetworkCards: maximumNetworkCards,
@as("MaximumNetworkInterfaces") maximumNetworkInterfaces: maxNetworkInterfaces,
@as("NetworkPerformance") networkPerformance: networkPerformance
}
type networkAclEntryList = array<networkAclEntry>
type natGateway = {
@as("Tags") tags: tagList,
@as("VpcId") vpcId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("State") state: natGatewayState,
@as("ProvisionedBandwidth") provisionedBandwidth: provisionedBandwidth,
@as("NatGatewayId") natGatewayId: amazonawsString,
@as("NatGatewayAddresses") natGatewayAddresses: natGatewayAddressList,
@as("FailureMessage") failureMessage: amazonawsString,
@as("FailureCode") failureCode: amazonawsString,
@as("DeleteTime") deleteTime: dateTime,
@as("CreateTime") createTime: dateTime
}
type modifyVpnTunnelOptionsSpecification = {
@as("StartupAction") startupAction: amazonawsString,
@as("IKEVersions") iKEVersions: iKEVersionsRequestList,
@as("Phase2DHGroupNumbers") phase2DHGroupNumbers: phase2DHGroupNumbersRequestList,
@as("Phase1DHGroupNumbers") phase1DHGroupNumbers: phase1DHGroupNumbersRequestList,
@as("Phase2IntegrityAlgorithms") phase2IntegrityAlgorithms: phase2IntegrityAlgorithmsRequestList,
@as("Phase1IntegrityAlgorithms") phase1IntegrityAlgorithms: phase1IntegrityAlgorithmsRequestList,
@as("Phase2EncryptionAlgorithms") phase2EncryptionAlgorithms: phase2EncryptionAlgorithmsRequestList,
@as("Phase1EncryptionAlgorithms") phase1EncryptionAlgorithms: phase1EncryptionAlgorithmsRequestList,
@as("DPDTimeoutAction") dPDTimeoutAction: amazonawsString,
@as("DPDTimeoutSeconds") dPDTimeoutSeconds: amazonawsInteger,
@as("ReplayWindowSize") replayWindowSize: amazonawsInteger,
@as("RekeyFuzzPercentage") rekeyFuzzPercentage: amazonawsInteger,
@as("RekeyMarginTimeSeconds") rekeyMarginTimeSeconds: amazonawsInteger,
@as("Phase2LifetimeSeconds") phase2LifetimeSeconds: amazonawsInteger,
@as("Phase1LifetimeSeconds") phase1LifetimeSeconds: amazonawsInteger,
@as("PreSharedKey") preSharedKey: amazonawsString,
@as("TunnelInsideIpv6Cidr") tunnelInsideIpv6Cidr: amazonawsString,
@as("TunnelInsideCidr") tunnelInsideCidr: amazonawsString
}
type managedPrefixList = {
@as("OwnerId") ownerId: amazonawsString,
@as("Tags") tags: tagList,
@as("Version") version: amazonawsLong,
@as("MaxEntries") maxEntries: amazonawsInteger,
@as("PrefixListName") prefixListName: amazonawsString,
@as("PrefixListArn") prefixListArn: resourceArn,
@as("StateMessage") stateMessage: amazonawsString,
@as("State") state: prefixListState,
@as("AddressFamily") addressFamily: amazonawsString,
@as("PrefixListId") prefixListId: prefixListResourceId
}
type localGatewayVirtualInterfaceGroup = {
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("LocalGatewayId") localGatewayId: amazonawsString,
@as("LocalGatewayVirtualInterfaceIds") localGatewayVirtualInterfaceIds: localGatewayVirtualInterfaceIdSet,
@as("LocalGatewayVirtualInterfaceGroupId") localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId
}
type localGatewayVirtualInterface = {
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("PeerBgpAsn") peerBgpAsn: amazonawsInteger,
@as("LocalBgpAsn") localBgpAsn: amazonawsInteger,
@as("PeerAddress") peerAddress: amazonawsString,
@as("LocalAddress") localAddress: amazonawsString,
@as("Vlan") vlan: amazonawsInteger,
@as("LocalGatewayId") localGatewayId: amazonawsString,
@as("LocalGatewayVirtualInterfaceId") localGatewayVirtualInterfaceId: localGatewayVirtualInterfaceId
}
type localGatewayRouteTableVpcAssociation = {
@as("Tags") tags: tagList,
@as("State") state: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("LocalGatewayId") localGatewayId: amazonawsString,
@as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: resourceArn,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: amazonawsString,
@as("LocalGatewayRouteTableVpcAssociationId") localGatewayRouteTableVpcAssociationId: localGatewayRouteTableVpcAssociationId
}
type localGatewayRouteTableVirtualInterfaceGroupAssociation = {
@as("Tags") tags: tagList,
@as("State") state: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: resourceArn,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayId,
@as("LocalGatewayId") localGatewayId: amazonawsString,
@as("LocalGatewayVirtualInterfaceGroupId") localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
@as("LocalGatewayRouteTableVirtualInterfaceGroupAssociationId") localGatewayRouteTableVirtualInterfaceGroupAssociationId: localGatewayRouteTableVirtualInterfaceGroupAssociationId
}
type localGatewayRouteTable = {
@as("Tags") tags: tagList,
@as("State") state: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("OutpostArn") outpostArn: amazonawsString,
@as("LocalGatewayId") localGatewayId: localGatewayId,
@as("LocalGatewayRouteTableArn") localGatewayRouteTableArn: resourceArn,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: amazonawsString
}
type localGateway = {
@as("Tags") tags: tagList,
@as("State") state: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("OutpostArn") outpostArn: amazonawsString,
@as("LocalGatewayId") localGatewayId: localGatewayId
}
type loadPermissionModifications = {
@as("Remove") remove: loadPermissionListRequest,
@as("Add") add: loadPermissionListRequest
}
type launchTemplateTagSpecificationRequest = {
@as("Tags") tags: tagList,
@as("ResourceType") resourceType: resourceType
}
type launchTemplateTagSpecification = {
@as("Tags") tags: tagList,
@as("ResourceType") resourceType: resourceType
}
type launchTemplateInstanceNetworkInterfaceSpecificationRequest = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("SubnetId") subnetId: subnetId,
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddressSpecificationList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressListRequest,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("InterfaceType") interfaceType: amazonawsString,
@as("Groups") groups: securityGroupIdStringList,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("Description") description: amazonawsString,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean,
@as("AssociateCarrierIpAddress") associateCarrierIpAddress: amazonawsBoolean
}
type launchTemplateInstanceNetworkInterfaceSpecification = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("SubnetId") subnetId: subnetId,
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddressSpecificationList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("InterfaceType") interfaceType: amazonawsString,
@as("Groups") groups: groupIdStringList,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("Description") description: amazonawsString,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean,
@as("AssociateCarrierIpAddress") associateCarrierIpAddress: amazonawsBoolean
}
type launchTemplateConfig = {
@as("Overrides") overrides: launchTemplateOverridesList,
@as("LaunchTemplateSpecification") launchTemplateSpecification: fleetLaunchTemplateSpecification
}
type launchTemplateBlockDeviceMappingRequestList = array<launchTemplateBlockDeviceMappingRequest>
type launchTemplateBlockDeviceMappingList = array<launchTemplateBlockDeviceMapping>
type launchTemplateAndOverridesResponse = {
@as("Overrides") overrides: fleetLaunchTemplateOverrides,
@as("LaunchTemplateSpecification") launchTemplateSpecification: fleetLaunchTemplateSpecification
}
type launchTemplate = {
@as("Tags") tags: tagList,
@as("LatestVersionNumber") latestVersionNumber: amazonawsLong,
@as("DefaultVersionNumber") defaultVersionNumber: amazonawsLong,
@as("CreatedBy") createdBy: amazonawsString,
@as("CreateTime") createTime: dateTime,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: amazonawsString
}
type launchPermissionModifications = {
@as("Remove") remove: launchPermissionList,
@as("Add") add: launchPermissionList
}
type keyPairInfo = {
@as("Tags") tags: tagList,
@as("KeyName") keyName: amazonawsString,
@as("KeyFingerprint") keyFingerprint: amazonawsString,
@as("KeyPairId") keyPairId: amazonawsString
}
type ipv6Pool = {
@as("Tags") tags: tagList,
@as("PoolCidrBlocks") poolCidrBlocks: poolCidrBlocksSet,
@as("Description") description: amazonawsString,
@as("PoolId") poolId: amazonawsString
}
type ipPermission = {
@as("UserIdGroupPairs") userIdGroupPairs: userIdGroupPairList,
@as("ToPort") toPort: amazonawsInteger,
@as("PrefixListIds") prefixListIds: prefixListIdList,
@as("Ipv6Ranges") ipv6Ranges: ipv6RangeList,
@as("IpRanges") ipRanges: ipRangeList,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("FromPort") fromPort: amazonawsInteger
}
type internetGateway = {
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("InternetGatewayId") internetGatewayId: amazonawsString,
@as("Attachments") attachments: internetGatewayAttachmentList
}
type integrateServices = {
@as("AthenaIntegrations") athenaIntegrations: athenaIntegrationsSet
}
type instanceStorageInfo = {
@as("NvmeSupport") nvmeSupport: ephemeralNvmeSupport,
@as("Disks") disks: diskInfoList,
@as("TotalSizeInGB") totalSizeInGB: diskSize
}
type instanceStatusSummary = {
@as("Status") status: summaryStatus,
@as("Details") details: instanceStatusDetailsList
}
type instanceStateChangeList = array<instanceStateChange>
type instancePrivateIpAddressList = array<instancePrivateIpAddress>
type instanceNetworkInterfaceSpecification = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("InterfaceType") interfaceType: amazonawsString,
@as("AssociateCarrierIpAddress") associateCarrierIpAddress: amazonawsBoolean,
@as("SubnetId") subnetId: amazonawsString,
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddressSpecificationList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("Groups") groups: securityGroupIdStringList,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("Description") description: amazonawsString,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean
}
type instanceMonitoringList = array<instanceMonitoring>
type instanceBlockDeviceMappingSpecificationList = array<instanceBlockDeviceMappingSpecification>
type instanceBlockDeviceMappingList = array<instanceBlockDeviceMapping>
type inferenceAcceleratorInfo = {
@as("Accelerators") accelerators: inferenceDeviceInfoList
}
type importSnapshotTask = {
@as("Tags") tags: tagList,
@as("SnapshotTaskDetail") snapshotTaskDetail: snapshotTaskDetail,
@as("ImportTaskId") importTaskId: amazonawsString,
@as("Description") description: amazonawsString
}
type importInstanceVolumeDetailSet = array<importInstanceVolumeDetailItem>
type imageDiskContainerList = array<imageDiskContainer>
type iamInstanceProfileAssociationSet = array<iamInstanceProfileAssociation>
type hostReservation = {
@as("Tags") tags: tagList,
@as("UpfrontPrice") upfrontPrice: amazonawsString,
@as("State") state: reservationState,
@as("Start") start: dateTime,
@as("PaymentOption") paymentOption: paymentOption,
@as("OfferingId") offeringId: amazonawsString,
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("HourlyPrice") hourlyPrice: amazonawsString,
@as("HostReservationId") hostReservationId: amazonawsString,
@as("HostIdSet") hostIdSet: responseHostIdSet,
@as("End") end: dateTime,
@as("Duration") duration: amazonawsInteger,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("Count") count: amazonawsInteger
}
type historyRecords = array<historyRecord>
type historyRecordSet = array<historyRecordEntry>
type gpuDeviceInfoList = array<gpuDeviceInfo>
type fpgaImageAttribute = {
@as("ProductCodes") productCodes: productCodeList,
@as("LoadPermissions") loadPermissions: loadPermissionList,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("FpgaImageId") fpgaImageId: amazonawsString
}
type fpgaImage = {
@as("DataRetentionSupport") dataRetentionSupport: amazonawsBoolean,
@as("Public") public: amazonawsBoolean,
@as("Tags") tags: tagList,
@as("ProductCodes") productCodes: productCodeList,
@as("OwnerAlias") ownerAlias: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("UpdateTime") updateTime: dateTime,
@as("CreateTime") createTime: dateTime,
@as("State") state: fpgaImageState,
@as("PciId") pciId: pciId,
@as("ShellVersion") shellVersion: amazonawsString,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("FpgaImageGlobalId") fpgaImageGlobalId: amazonawsString,
@as("FpgaImageId") fpgaImageId: amazonawsString
}
type fpgaDeviceInfoList = array<fpgaDeviceInfo>
type flowLog = {
@as("MaxAggregationInterval") maxAggregationInterval: amazonawsInteger,
@as("Tags") tags: tagList,
@as("LogFormat") logFormat: amazonawsString,
@as("LogDestination") logDestination: amazonawsString,
@as("LogDestinationType") logDestinationType: logDestinationType,
@as("TrafficType") trafficType: trafficType,
@as("ResourceId") resourceId: amazonawsString,
@as("LogGroupName") logGroupName: amazonawsString,
@as("FlowLogStatus") flowLogStatus: amazonawsString,
@as("FlowLogId") flowLogId: amazonawsString,
@as("DeliverLogsStatus") deliverLogsStatus: amazonawsString,
@as("DeliverLogsPermissionArn") deliverLogsPermissionArn: amazonawsString,
@as("DeliverLogsErrorMessage") deliverLogsErrorMessage: amazonawsString,
@as("CreationTime") creationTime: millisecondDateTime
}
type fleetLaunchTemplateOverridesListRequest = array<fleetLaunchTemplateOverridesRequest>
type fleetLaunchTemplateOverridesList = array<fleetLaunchTemplateOverrides>
type filterList = array<filter>
type failedQueuedPurchaseDeletionSet = array<failedQueuedPurchaseDeletion>
type exportTask = {
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: exportTaskState,
@as("InstanceExportDetails") instanceExportDetails: instanceExportDetails,
@as("ExportToS3Task") exportToS3Task: exportToS3Task,
@as("ExportTaskId") exportTaskId: amazonawsString,
@as("Description") description: amazonawsString
}
type exportImageTask = {
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("S3ExportLocation") s3ExportLocation: exportTaskS3Location,
@as("Progress") progress: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("ExportImageTaskId") exportImageTaskId: amazonawsString,
@as("Description") description: amazonawsString
}
type explanation = {
@as("VpnGateway") vpnGateway: analysisComponent,
@as("VpnConnection") vpnConnection: analysisComponent,
@as("VpcEndpoint") vpcEndpoint: analysisComponent,
@as("Vpc") vpc: analysisComponent,
@as("SubnetRouteTable") subnetRouteTable: analysisComponent,
@as("Subnet") subnet: analysisComponent,
@as("State") state: amazonawsString,
@as("SourceVpc") sourceVpc: analysisComponent,
@as("SecurityGroups") securityGroups: analysisComponentList,
@as("SecurityGroupRule") securityGroupRule: analysisSecurityGroupRule,
@as("SecurityGroup") securityGroup: analysisComponent,
@as("RouteTable") routeTable: analysisComponent,
@as("RouteTableRoute") routeTableRoute: analysisRouteTableRoute,
@as("Protocols") protocols: stringList,
@as("PrefixList") prefixList: analysisComponent,
@as("PortRanges") portRanges: portRangeList,
@as("Port") port: port,
@as("VpcPeeringConnection") vpcPeeringConnection: analysisComponent,
@as("PacketField") packetField: amazonawsString,
@as("NetworkInterface") networkInterface: analysisComponent,
@as("NatGateway") natGateway: analysisComponent,
@as("MissingComponent") missingComponent: amazonawsString,
@as("ElasticLoadBalancerListener") elasticLoadBalancerListener: analysisComponent,
@as("LoadBalancerTargetPort") loadBalancerTargetPort: port,
@as("LoadBalancerTargetGroups") loadBalancerTargetGroups: analysisComponentList,
@as("LoadBalancerTargetGroup") loadBalancerTargetGroup: analysisComponent,
@as("LoadBalancerTarget") loadBalancerTarget: analysisLoadBalancerTarget,
@as("LoadBalancerListenerPort") loadBalancerListenerPort: port,
@as("ClassicLoadBalancerListener") classicLoadBalancerListener: analysisLoadBalancerListener,
@as("LoadBalancerArn") loadBalancerArn: resourceArn,
@as("InternetGateway") internetGateway: analysisComponent,
@as("IngressRouteTable") ingressRouteTable: analysisComponent,
@as("ExplanationCode") explanationCode: amazonawsString,
@as("Direction") direction: amazonawsString,
@as("DestinationVpc") destinationVpc: analysisComponent,
@as("Destination") destination: analysisComponent,
@as("CustomerGateway") customerGateway: analysisComponent,
@as("Component") component: analysisComponent,
@as("Cidrs") cidrs: valueStringList,
@as("AvailabilityZones") availabilityZones: valueStringList,
@as("AttachedTo") attachedTo: analysisComponent,
@as("Addresses") addresses: ipAddressList,
@as("Address") address: ipAddress,
@as("AclRule") aclRule: analysisAclRule,
@as("Acl") acl: analysisComponent
}
type enableFastSnapshotRestoreStateErrorSet = array<enableFastSnapshotRestoreStateErrorItem>
type elasticGpus = {
@as("Tags") tags: tagList,
@as("InstanceId") instanceId: amazonawsString,
@as("ElasticGpuState") elasticGpuState: elasticGpuState,
@as("ElasticGpuHealth") elasticGpuHealth: elasticGpuHealth,
@as("ElasticGpuType") elasticGpuType: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("ElasticGpuId") elasticGpuId: amazonawsString
}
type egressOnlyInternetGateway = {
@as("Tags") tags: tagList,
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
@as("Attachments") attachments: internetGatewayAttachmentList
}
type diskImageList = array<diskImage>
type disableFastSnapshotRestoreStateErrorSet = array<disableFastSnapshotRestoreStateErrorItem>
type dhcpConfiguration = {
@as("Values") values: dhcpConfigurationValueList,
@as("Key") key: amazonawsString
}
type deleteLaunchTemplateVersionsResponseErrorSet = array<deleteLaunchTemplateVersionsResponseErrorItem>
type deleteFleetErrorSet = array<deleteFleetErrorItem>
type customerGateway = {
@as("Tags") tags: tagList,
@as("DeviceName") deviceName: amazonawsString,
@as("Type") type_: amazonawsString,
@as("State") state: amazonawsString,
@as("CertificateArn") certificateArn: amazonawsString,
@as("IpAddress") ipAddress: amazonawsString,
@as("CustomerGatewayId") customerGatewayId: amazonawsString,
@as("BgpAsn") bgpAsn: amazonawsString
}
type createVolumePermissionModifications = {
@as("Remove") remove: createVolumePermissionList,
@as("Add") add: createVolumePermissionList
}
type connectionNotificationSet = array<connectionNotification>
type coipPool = {
@as("PoolArn") poolArn: resourceArn,
@as("Tags") tags: tagList,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: localGatewayRoutetableId,
@as("PoolCidrs") poolCidrs: valueStringList,
@as("PoolId") poolId: coipPoolId
}
type clientVpnRouteSet = array<clientVpnRoute>
type clientVpnConnectionSet = array<clientVpnConnection>
type clientVpnAuthenticationRequestList = array<clientVpnAuthenticationRequest>
type clientVpnAuthenticationList = array<clientVpnAuthentication>
type classicLoadBalancersConfig = {
@as("ClassicLoadBalancers") classicLoadBalancers: classicLoadBalancers
}
type classicLinkInstance = {
@as("VpcId") vpcId: amazonawsString,
@as("Tags") tags: tagList,
@as("InstanceId") instanceId: amazonawsString,
@as("Groups") groups: groupIdentifierList
}
type carrierGateway = {
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("State") state: carrierGatewayState,
@as("VpcId") vpcId: vpcId,
@as("CarrierGatewayId") carrierGatewayId: carrierGatewayId
}
type capacityReservation = {
@as("OutpostArn") outpostArn: outpostArn,
@as("Tags") tags: tagList,
@as("CreateDate") createDate: dateTime,
@as("InstanceMatchCriteria") instanceMatchCriteria: instanceMatchCriteria,
@as("EndDateType") endDateType: endDateType,
@as("EndDate") endDate: dateTime,
@as("StartDate") startDate: millisecondDateTime,
@as("State") state: capacityReservationState,
@as("EphemeralStorage") ephemeralStorage: amazonawsBoolean,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("AvailableInstanceCount") availableInstanceCount: amazonawsInteger,
@as("TotalInstanceCount") totalInstanceCount: amazonawsInteger,
@as("Tenancy") tenancy: capacityReservationTenancy,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("InstancePlatform") instancePlatform: capacityReservationInstancePlatform,
@as("InstanceType") instanceType: amazonawsString,
@as("AvailabilityZoneId") availabilityZoneId: amazonawsString,
@as("CapacityReservationArn") capacityReservationArn: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("CapacityReservationId") capacityReservationId: amazonawsString
}
type cancelSpotFleetRequestsErrorSet = array<cancelSpotFleetRequestsErrorItem>
type bundleTask = {
@as("UpdateTime") updateTime: dateTime,
@as("Storage") storage: storage,
@as("State") state: bundleTaskState,
@as("StartTime") startTime: dateTime,
@as("Progress") progress: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("BundleTaskError") bundleTaskError: bundleTaskError,
@as("BundleId") bundleId: amazonawsString
}
type blockDeviceMappingRequestList = array<blockDeviceMapping>
type blockDeviceMappingList = array<blockDeviceMapping>
type availableCapacity = {
@as("AvailableVCpus") availableVCpus: amazonawsInteger,
@as("AvailableInstanceCapacity") availableInstanceCapacity: availableInstanceCapacityList
}
type availabilityZone = {
@as("ParentZoneId") parentZoneId: amazonawsString,
@as("ParentZoneName") parentZoneName: amazonawsString,
@as("ZoneType") zoneType: amazonawsString,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("GroupName") groupName: amazonawsString,
@as("ZoneId") zoneId: amazonawsString,
@as("ZoneName") zoneName: amazonawsString,
@as("RegionName") regionName: amazonawsString,
@as("Messages") messages: availabilityZoneMessageList,
@as("OptInStatus") optInStatus: availabilityZoneOptInStatus,
@as("State") state: availabilityZoneState
}
type authorizationRuleSet = array<authorizationRule>
type analysisPacketHeader = {
@as("SourcePortRanges") sourcePortRanges: portRangeList,
@as("SourceAddresses") sourceAddresses: ipAddressList,
@as("Protocol") protocol: amazonawsString,
@as("DestinationPortRanges") destinationPortRanges: portRangeList,
@as("DestinationAddresses") destinationAddresses: ipAddressList
}
type addressSet = array<addressAttribute>
type address = {
@as("CarrierIp") carrierIp: amazonawsString,
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: amazonawsString,
@as("CustomerOwnedIp") customerOwnedIp: amazonawsString,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("PublicIpv4Pool") publicIpv4Pool: amazonawsString,
@as("Tags") tags: tagList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceOwnerId") networkInterfaceOwnerId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("Domain") domain: domainType,
@as("AssociationId") associationId: amazonawsString,
@as("AllocationId") allocationId: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
type accountAttribute = {
@as("AttributeValues") attributeValues: accountAttributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type vpnTunnelOptionsSpecificationsList = array<vpnTunnelOptionsSpecification>
type vpnGatewayList = array<vpnGateway>
type vpcPeeringConnection = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: amazonawsString,
@as("Tags") tags: tagList,
@as("Status") status: vpcPeeringConnectionStateReason,
@as("RequesterVpcInfo") requesterVpcInfo: vpcPeeringConnectionVpcInfo,
@as("ExpirationTime") expirationTime: dateTime,
@as("AccepterVpcInfo") accepterVpcInfo: vpcPeeringConnectionVpcInfo
}
type vpcEndpointSet = array<vpcEndpoint>
type vpcEndpointConnectionSet = array<vpcEndpointConnection>
type vpcClassicLinkList = array<vpcClassicLink>
type vpc = {
@as("Tags") tags: tagList,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("CidrBlockAssociationSet") cidrBlockAssociationSet: vpcCidrBlockAssociationSet,
@as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: vpcIpv6CidrBlockAssociationSet,
@as("InstanceTenancy") instanceTenancy: tenancy,
@as("OwnerId") ownerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("State") state: vpcState,
@as("DhcpOptionsId") dhcpOptionsId: amazonawsString,
@as("CidrBlock") cidrBlock: amazonawsString
}
type volumeStatusItem = {
@as("AttachmentStatuses") attachmentStatuses: volumeStatusAttachmentStatusList,
@as("VolumeStatus") volumeStatus: volumeStatusInfo,
@as("VolumeId") volumeId: amazonawsString,
@as("Events") events: volumeStatusEventsList,
@as("OutpostArn") outpostArn: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Actions") actions: volumeStatusActionsList
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
@as("Tags") tags: tagList,
@as("ConnectPeerConfiguration") connectPeerConfiguration: transitGatewayConnectPeerConfiguration,
@as("CreationTime") creationTime: dateTime,
@as("State") state: transitGatewayConnectPeerState,
@as("TransitGatewayConnectPeerId") transitGatewayConnectPeerId: transitGatewayConnectPeerId,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId
}
type transitGatewayConnectList = array<transitGatewayConnect>
type transitGatewayAttachmentList = array<transitGatewayAttachment>
type trafficMirrorTargetSet = array<trafficMirrorTarget>
type trafficMirrorSessionSet = array<trafficMirrorSession>
type trafficMirrorFilter = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("NetworkServices") networkServices: trafficMirrorNetworkServiceList,
@as("EgressFilterRules") egressFilterRules: trafficMirrorFilterRuleList,
@as("IngressFilterRules") ingressFilterRules: trafficMirrorFilterRuleList,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: amazonawsString
}
type tagSpecificationList = array<tagSpecification>
type subnet = {
@as("OutpostArn") outpostArn: amazonawsString,
@as("SubnetArn") subnetArn: amazonawsString,
@as("Tags") tags: tagList,
@as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: subnetIpv6CidrBlockAssociationSet,
@as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: amazonawsBoolean,
@as("OwnerId") ownerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("State") state: subnetState,
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: coipPoolId,
@as("MapCustomerOwnedIpOnLaunch") mapCustomerOwnedIpOnLaunch: amazonawsBoolean,
@as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: amazonawsBoolean,
@as("DefaultForAz") defaultForAz: amazonawsBoolean,
@as("CidrBlock") cidrBlock: amazonawsString,
@as("AvailableIpAddressCount") availableIpAddressCount: amazonawsInteger,
@as("AvailabilityZoneId") availabilityZoneId: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
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
@as("OwnerId") ownerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("Tags") tags: tagList,
@as("Routes") routes: routeList,
@as("RouteTableId") routeTableId: amazonawsString,
@as("PropagatingVgws") propagatingVgws: propagatingVgwList,
@as("Associations") associations: routeTableAssociationList
}
type reservedInstancesOfferingList = array<reservedInstancesOffering>
type reservedInstancesModification = {
@as("UpdateDate") updateDate: dateTime,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("ReservedInstancesModificationId") reservedInstancesModificationId: amazonawsString,
@as("ReservedInstancesIds") reservedInstancesIds: reservedIntancesIds,
@as("ModificationResults") modificationResults: reservedInstancesModificationResultList,
@as("EffectiveDate") effectiveDate: dateTime,
@as("CreateDate") createDate: dateTime,
@as("ClientToken") clientToken: amazonawsString
}
type reservedInstancesListingList = array<reservedInstancesListing>
type reservedInstancesList = array<reservedInstances>
type replaceRootVolumeTasks = array<replaceRootVolumeTask>
type purchasedScheduledInstanceSet = array<scheduledInstance>
type publicIpv4PoolSet = array<publicIpv4Pool>
type principalIdFormatList = array<principalIdFormat>
type placementGroupList = array<placementGroup>
type pathComponent = {
@as("Vpc") vpc: analysisComponent,
@as("Subnet") subnet: analysisComponent,
@as("SourceVpc") sourceVpc: analysisComponent,
@as("SecurityGroupRule") securityGroupRule: analysisSecurityGroupRule,
@as("RouteTableRoute") routeTableRoute: analysisRouteTableRoute,
@as("InboundHeader") inboundHeader: analysisPacketHeader,
@as("OutboundHeader") outboundHeader: analysisPacketHeader,
@as("DestinationVpc") destinationVpc: analysisComponent,
@as("Component") component: analysisComponent,
@as("AclRule") aclRule: analysisAclRule,
@as("SequenceNumber") sequenceNumber: amazonawsInteger
}
type networkInterface = {
@as("VpcId") vpcId: amazonawsString,
@as("TagSet") tagSet: tagList,
@as("SubnetId") subnetId: amazonawsString,
@as("Status") status: networkInterfaceStatus,
@as("SourceDestCheck") sourceDestCheck: amazonawsBoolean,
@as("RequesterManaged") requesterManaged: amazonawsBoolean,
@as("RequesterId") requesterId: amazonawsString,
@as("PrivateIpAddresses") privateIpAddresses: networkInterfacePrivateIpAddressList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("OutpostArn") outpostArn: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("MacAddress") macAddress: amazonawsString,
@as("Ipv6Addresses") ipv6Addresses: networkInterfaceIpv6AddressesList,
@as("InterfaceType") interfaceType: networkInterfaceType,
@as("Groups") groups: groupIdentifierList,
@as("Description") description: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Attachment") attachment: networkInterfaceAttachment,
@as("Association") association: networkInterfaceAssociation
}
type networkInsightsPathList = array<networkInsightsPath>
type networkAcl = {
@as("OwnerId") ownerId: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("Tags") tags: tagList,
@as("NetworkAclId") networkAclId: amazonawsString,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("Entries") entries: networkAclEntryList,
@as("Associations") associations: networkAclAssociationList
}
type natGatewayList = array<natGateway>
type managedPrefixListSet = array<managedPrefixList>
type localGatewayVirtualInterfaceSet = array<localGatewayVirtualInterface>
type localGatewayVirtualInterfaceGroupSet = array<localGatewayVirtualInterfaceGroup>
type localGatewaySet = array<localGateway>
type localGatewayRouteTableVpcAssociationSet = array<localGatewayRouteTableVpcAssociation>
type localGatewayRouteTableVirtualInterfaceGroupAssociationSet = array<localGatewayRouteTableVirtualInterfaceGroupAssociation>
type localGatewayRouteTableSet = array<localGatewayRouteTable>
type loadBalancersConfig = {
@as("TargetGroupsConfig") targetGroupsConfig: targetGroupsConfig,
@as("ClassicLoadBalancersConfig") classicLoadBalancersConfig: classicLoadBalancersConfig
}
type launchTemplateTagSpecificationRequestList = array<launchTemplateTagSpecificationRequest>
type launchTemplateTagSpecificationList = array<launchTemplateTagSpecification>
type launchTemplateSet = array<launchTemplate>
type launchTemplateInstanceNetworkInterfaceSpecificationRequestList = array<launchTemplateInstanceNetworkInterfaceSpecificationRequest>
type launchTemplateInstanceNetworkInterfaceSpecificationList = array<launchTemplateInstanceNetworkInterfaceSpecification>
type launchTemplateConfigList = array<launchTemplateConfig>
type keyPairList = array<keyPairInfo>
type ipv6PoolSet = array<ipv6Pool>
type ipPermissionList = array<ipPermission>
type internetGatewayList = array<internetGateway>
type instanceStatus = {
@as("SystemStatus") systemStatus: instanceStatusSummary,
@as("InstanceStatus") instanceStatus: instanceStatusSummary,
@as("InstanceState") instanceState: instanceState,
@as("InstanceId") instanceId: amazonawsString,
@as("Events") events: instanceStatusEventList,
@as("OutpostArn") outpostArn: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type instanceNetworkInterfaceSpecificationList = array<instanceNetworkInterfaceSpecification>
type instanceNetworkInterface = {
@as("InterfaceType") interfaceType: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("Status") status: networkInterfaceStatus,
@as("SourceDestCheck") sourceDestCheck: amazonawsBoolean,
@as("PrivateIpAddresses") privateIpAddresses: instancePrivateIpAddressList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("MacAddress") macAddress: amazonawsString,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressList,
@as("Groups") groups: groupIdentifierList,
@as("Description") description: amazonawsString,
@as("Attachment") attachment: instanceNetworkInterfaceAttachment,
@as("Association") association: instanceNetworkInterfaceAssociation
}
type importSnapshotTaskList = array<importSnapshotTask>
type importInstanceTaskDetails = {
@as("Volumes") volumes: importInstanceVolumeDetailSet,
@as("Platform") platform: platformValues,
@as("InstanceId") instanceId: amazonawsString,
@as("Description") description: amazonawsString
}
type importImageTask = {
@as("LicenseSpecifications") licenseSpecifications: importImageLicenseSpecificationListResponse,
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("SnapshotDetails") snapshotDetails: snapshotDetailList,
@as("Progress") progress: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("LicenseType") licenseType: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("ImportTaskId") importTaskId: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("Hypervisor") hypervisor: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("Architecture") architecture: amazonawsString
}
type image = {
@as("BootMode") bootMode: bootModeValues,
@as("VirtualizationType") virtualizationType: virtualizationType,
@as("Tags") tags: tagList,
@as("StateReason") stateReason: stateReason,
@as("SriovNetSupport") sriovNetSupport: amazonawsString,
@as("RootDeviceType") rootDeviceType: deviceType,
@as("RootDeviceName") rootDeviceName: amazonawsString,
@as("Name") name: amazonawsString,
@as("ImageOwnerAlias") imageOwnerAlias: amazonawsString,
@as("Hypervisor") hypervisor: hypervisorType,
@as("EnaSupport") enaSupport: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingList,
@as("State") state: imageState,
@as("RamdiskId") ramdiskId: amazonawsString,
@as("ProductCodes") productCodes: productCodeList,
@as("UsageOperation") usageOperation: amazonawsString,
@as("PlatformDetails") platformDetails: amazonawsString,
@as("Platform") platform: platformValues,
@as("OwnerId") ownerId: amazonawsString,
@as("KernelId") kernelId: amazonawsString,
@as("Public") public: amazonawsBoolean,
@as("ImageType") imageType: imageTypeValues,
@as("ImageLocation") imageLocation: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("CreationDate") creationDate: amazonawsString,
@as("Architecture") architecture: architectureValues
}
type hostReservationSet = array<hostReservation>
type host = {
@as("MemberOfServiceLinkedResourceGroup") memberOfServiceLinkedResourceGroup: amazonawsBoolean,
@as("AvailabilityZoneId") availabilityZoneId: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("AllowsMultipleInstanceTypes") allowsMultipleInstanceTypes: allowsMultipleInstanceTypes,
@as("HostRecovery") hostRecovery: hostRecovery,
@as("Tags") tags: tagList,
@as("ReleaseTime") releaseTime: dateTime,
@as("AllocationTime") allocationTime: dateTime,
@as("State") state: allocationState,
@as("Instances") instances: hostInstanceList,
@as("HostReservationId") hostReservationId: amazonawsString,
@as("HostProperties") hostProperties: hostProperties,
@as("HostId") hostId: amazonawsString,
@as("ClientToken") clientToken: amazonawsString,
@as("AvailableCapacity") availableCapacity: availableCapacity,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("AutoPlacement") autoPlacement: autoPlacement
}
type gpuInfo = {
@as("TotalGpuMemoryInMiB") totalGpuMemoryInMiB: totalGpuMemory,
@as("Gpus") gpus: gpuDeviceInfoList
}
type fpgaInfo = {
@as("TotalFpgaMemoryInMiB") totalFpgaMemoryInMiB: totalFpgaMemory,
@as("Fpgas") fpgas: fpgaDeviceInfoList
}
type fpgaImageList = array<fpgaImage>
type flowLogSet = array<flowLog>
type fleetLaunchTemplateConfigRequest = {
@as("Overrides") overrides: fleetLaunchTemplateOverridesListRequest,
@as("LaunchTemplateSpecification") launchTemplateSpecification: fleetLaunchTemplateSpecificationRequest
}
type fleetLaunchTemplateConfig = {
@as("Overrides") overrides: fleetLaunchTemplateOverridesList,
@as("LaunchTemplateSpecification") launchTemplateSpecification: fleetLaunchTemplateSpecification
}
type exportTaskList = array<exportTask>
type exportImageTaskList = array<exportImageTask>
type explanationList = array<explanation>
type enableFastSnapshotRestoreErrorItem = {
@as("FastSnapshotRestoreStateErrors") fastSnapshotRestoreStateErrors: enableFastSnapshotRestoreStateErrorSet,
@as("SnapshotId") snapshotId: amazonawsString
}
type elasticGpuSet = array<elasticGpus>
type egressOnlyInternetGatewayList = array<egressOnlyInternetGateway>
type disableFastSnapshotRestoreErrorItem = {
@as("FastSnapshotRestoreStateErrors") fastSnapshotRestoreStateErrors: disableFastSnapshotRestoreStateErrorSet,
@as("SnapshotId") snapshotId: amazonawsString
}
type dhcpConfigurationList = array<dhcpConfiguration>
type describeFleetsInstances = {
@as("Platform") platform: platformValues,
@as("InstanceType") instanceType: instanceType,
@as("InstanceIds") instanceIds: instanceIdsSet,
@as("Lifecycle") lifecycle: instanceLifecycle,
@as("LaunchTemplateAndOverrides") launchTemplateAndOverrides: launchTemplateAndOverridesResponse
}
type describeFleetError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Lifecycle") lifecycle: instanceLifecycle,
@as("LaunchTemplateAndOverrides") launchTemplateAndOverrides: launchTemplateAndOverridesResponse
}
type customerGatewayList = array<customerGateway>
type createFleetInstance = {
@as("Platform") platform: platformValues,
@as("InstanceType") instanceType: instanceType,
@as("InstanceIds") instanceIds: instanceIdsSet,
@as("Lifecycle") lifecycle: instanceLifecycle,
@as("LaunchTemplateAndOverrides") launchTemplateAndOverrides: launchTemplateAndOverridesResponse
}
type createFleetError = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Lifecycle") lifecycle: instanceLifecycle,
@as("LaunchTemplateAndOverrides") launchTemplateAndOverrides: launchTemplateAndOverridesResponse
}
type coipPoolSet = array<coipPool>
type clientVpnEndpoint = {
@as("ClientConnectOptions") clientConnectOptions: clientConnectResponseOptions,
@as("SelfServicePortalUrl") selfServicePortalUrl: amazonawsString,
@as("VpcId") vpcId: vpcId,
@as("SecurityGroupIds") securityGroupIds: clientVpnSecurityGroupIdSet,
@as("Tags") tags: tagList,
@as("ConnectionLogOptions") connectionLogOptions: connectionLogResponseOptions,
@as("AuthenticationOptions") authenticationOptions: clientVpnAuthenticationList,
@as("ServerCertificateArn") serverCertificateArn: amazonawsString,
@as("AssociatedTargetNetworks") associatedTargetNetworks: associatedTargetNetworkSet,
@as("VpnPort") vpnPort: amazonawsInteger,
@as("TransportProtocol") transportProtocol: transportProtocol,
@as("VpnProtocol") vpnProtocol: vpnProtocol,
@as("SplitTunnel") splitTunnel: amazonawsBoolean,
@as("DnsServers") dnsServers: valueStringList,
@as("ClientCidrBlock") clientCidrBlock: amazonawsString,
@as("DnsName") dnsName: amazonawsString,
@as("DeletionTime") deletionTime: amazonawsString,
@as("CreationTime") creationTime: amazonawsString,
@as("Status") status: clientVpnEndpointStatus,
@as("Description") description: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
type classicLinkInstanceList = array<classicLinkInstance>
type carrierGatewaySet = array<carrierGateway>
type capacityReservationSet = array<capacityReservation>
type bundleTaskList = array<bundleTask>
type availabilityZoneList = array<availabilityZone>
type addressList = array<address>
type accountAttributeList = array<accountAttribute>
type vpnConnectionOptionsSpecification = {
@as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: amazonawsString,
@as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: amazonawsString,
@as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: amazonawsString,
@as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: amazonawsString,
@as("TunnelOptions") tunnelOptions: vpnTunnelOptionsSpecificationsList,
@as("TunnelInsideIpVersion") tunnelInsideIpVersion: tunnelInsideIpVersion,
@as("StaticRoutesOnly") staticRoutesOnly: amazonawsBoolean,
@as("EnableAcceleration") enableAcceleration: amazonawsBoolean
}
type vpnConnectionOptions = {
@as("TunnelOptions") tunnelOptions: tunnelOptionsList,
@as("TunnelInsideIpVersion") tunnelInsideIpVersion: tunnelInsideIpVersion,
@as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: amazonawsString,
@as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: amazonawsString,
@as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: amazonawsString,
@as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: amazonawsString,
@as("StaticRoutesOnly") staticRoutesOnly: amazonawsBoolean,
@as("EnableAcceleration") enableAcceleration: amazonawsBoolean
}
type vpcPeeringConnectionList = array<vpcPeeringConnection>
type vpcList = array<vpc>
type volumeStatusList = array<volumeStatusItem>
type transitGatewayConnectPeerList = array<transitGatewayConnectPeer>
type trafficMirrorFilterSet = array<trafficMirrorFilter>
type subnetList = array<subnet>
type staleSecurityGroup = {
@as("VpcId") vpcId: amazonawsString,
@as("StaleIpPermissionsEgress") staleIpPermissionsEgress: staleIpPermissionSet,
@as("StaleIpPermissions") staleIpPermissions: staleIpPermissionSet,
@as("GroupName") groupName: amazonawsString,
@as("GroupId") groupId: amazonawsString,
@as("Description") description: amazonawsString
}
type spotFleetLaunchSpecification = {
@as("TagSpecifications") tagSpecifications: spotFleetTagSpecificationList,
@as("WeightedCapacity") weightedCapacity: amazonawsDouble,
@as("UserData") userData: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("SpotPrice") spotPrice: amazonawsString,
@as("RamdiskId") ramdiskId: amazonawsString,
@as("Placement") placement: spotPlacement,
@as("NetworkInterfaces") networkInterfaces: instanceNetworkInterfaceSpecificationList,
@as("Monitoring") monitoring: spotFleetMonitoring,
@as("KeyName") keyName: amazonawsString,
@as("KernelId") kernelId: amazonawsString,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: amazonawsString,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingList,
@as("AddressingType") addressingType: amazonawsString,
@as("SecurityGroups") securityGroups: groupIdentifierList
}
type securityGroup = {
@as("VpcId") vpcId: amazonawsString,
@as("Tags") tags: tagList,
@as("IpPermissionsEgress") ipPermissionsEgress: ipPermissionList,
@as("GroupId") groupId: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("IpPermissions") ipPermissions: ipPermissionList,
@as("GroupName") groupName: amazonawsString,
@as("Description") description: amazonawsString
}
type scheduledInstancesLaunchSpecification = {
@as("UserData") userData: amazonawsString,
@as("SubnetId") subnetId: subnetId,
@as("SecurityGroupIds") securityGroupIds: scheduledInstancesSecurityGroupIdSet,
@as("RamdiskId") ramdiskId: ramdiskId,
@as("Placement") placement: scheduledInstancesPlacement,
@as("NetworkInterfaces") networkInterfaces: scheduledInstancesNetworkInterfaceSet,
@as("Monitoring") monitoring: scheduledInstancesMonitoring,
@as("KeyName") keyName: keyPairName,
@as("KernelId") kernelId: kernelId,
@as("InstanceType") instanceType: amazonawsString,
@as("ImageId") imageId: option<imageId>,
@as("IamInstanceProfile") iamInstanceProfile: scheduledInstancesIamInstanceProfile,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("BlockDeviceMappings") blockDeviceMappings: scheduledInstancesBlockDeviceMappingSet
}
type routeTableList = array<routeTable>
type responseLaunchTemplateData = {
@as("EnclaveOptions") enclaveOptions: launchTemplateEnclaveOptions,
@as("MetadataOptions") metadataOptions: launchTemplateInstanceMetadataOptions,
@as("HibernationOptions") hibernationOptions: launchTemplateHibernationOptions,
@as("LicenseSpecifications") licenseSpecifications: launchTemplateLicenseList,
@as("CapacityReservationSpecification") capacityReservationSpecification: launchTemplateCapacityReservationSpecificationResponse,
@as("CpuOptions") cpuOptions: launchTemplateCpuOptions,
@as("CreditSpecification") creditSpecification: creditSpecification,
@as("InstanceMarketOptions") instanceMarketOptions: launchTemplateInstanceMarketOptions,
@as("SecurityGroups") securityGroups: valueStringList,
@as("SecurityGroupIds") securityGroupIds: valueStringList,
@as("ElasticInferenceAccelerators") elasticInferenceAccelerators: launchTemplateElasticInferenceAcceleratorResponseList,
@as("ElasticGpuSpecifications") elasticGpuSpecifications: elasticGpuSpecificationResponseList,
@as("TagSpecifications") tagSpecifications: launchTemplateTagSpecificationList,
@as("UserData") userData: amazonawsString,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: shutdownBehavior,
@as("DisableApiTermination") disableApiTermination: amazonawsBoolean,
@as("RamDiskId") ramDiskId: amazonawsString,
@as("Placement") placement: launchTemplatePlacement,
@as("Monitoring") monitoring: launchTemplatesMonitoring,
@as("KeyName") keyName: amazonawsString,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: amazonawsString,
@as("NetworkInterfaces") networkInterfaces: launchTemplateInstanceNetworkInterfaceSpecificationList,
@as("BlockDeviceMappings") blockDeviceMappings: launchTemplateBlockDeviceMappingList,
@as("IamInstanceProfile") iamInstanceProfile: launchTemplateIamInstanceProfileSpecification,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("KernelId") kernelId: amazonawsString
}
type reservedInstancesModificationList = array<reservedInstancesModification>
type requestSpotLaunchSpecification = {
@as("UserData") userData: amazonawsString,
@as("SubnetId") subnetId: subnetId,
@as("RamdiskId") ramdiskId: ramdiskId,
@as("Placement") placement: spotPlacement,
@as("NetworkInterfaces") networkInterfaces: instanceNetworkInterfaceSpecificationList,
@as("Monitoring") monitoring: runInstancesMonitoringEnabled,
@as("KeyName") keyName: keyPairName,
@as("KernelId") kernelId: kernelId,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: imageId,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingList,
@as("AddressingType") addressingType: amazonawsString,
@as("SecurityGroups") securityGroups: requestSpotLaunchSpecificationSecurityGroupList,
@as("SecurityGroupIds") securityGroupIds: requestSpotLaunchSpecificationSecurityGroupIdList
}
type requestLaunchTemplateData = {
@as("EnclaveOptions") enclaveOptions: launchTemplateEnclaveOptionsRequest,
@as("MetadataOptions") metadataOptions: launchTemplateInstanceMetadataOptionsRequest,
@as("HibernationOptions") hibernationOptions: launchTemplateHibernationOptionsRequest,
@as("LicenseSpecifications") licenseSpecifications: launchTemplateLicenseSpecificationListRequest,
@as("CapacityReservationSpecification") capacityReservationSpecification: launchTemplateCapacityReservationSpecificationRequest,
@as("CpuOptions") cpuOptions: launchTemplateCpuOptionsRequest,
@as("CreditSpecification") creditSpecification: creditSpecificationRequest,
@as("InstanceMarketOptions") instanceMarketOptions: launchTemplateInstanceMarketOptionsRequest,
@as("SecurityGroups") securityGroups: securityGroupStringList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdStringList,
@as("ElasticInferenceAccelerators") elasticInferenceAccelerators: launchTemplateElasticInferenceAcceleratorList,
@as("ElasticGpuSpecifications") elasticGpuSpecifications: elasticGpuSpecificationList,
@as("TagSpecifications") tagSpecifications: launchTemplateTagSpecificationRequestList,
@as("UserData") userData: amazonawsString,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: shutdownBehavior,
@as("DisableApiTermination") disableApiTermination: amazonawsBoolean,
@as("RamDiskId") ramDiskId: ramdiskId,
@as("Placement") placement: launchTemplatePlacementRequest,
@as("Monitoring") monitoring: launchTemplatesMonitoringRequest,
@as("KeyName") keyName: keyPairName,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: imageId,
@as("NetworkInterfaces") networkInterfaces: launchTemplateInstanceNetworkInterfaceSpecificationRequestList,
@as("BlockDeviceMappings") blockDeviceMappings: launchTemplateBlockDeviceMappingRequestList,
@as("IamInstanceProfile") iamInstanceProfile: launchTemplateIamInstanceProfileSpecificationRequest,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("KernelId") kernelId: kernelId
}
type pathComponentList = array<pathComponent>
type networkInterfaceList = array<networkInterface>
type networkAclList = array<networkAcl>
type launchSpecification = {
@as("Monitoring") monitoring: runInstancesMonitoringEnabled,
@as("SubnetId") subnetId: amazonawsString,
@as("RamdiskId") ramdiskId: amazonawsString,
@as("Placement") placement: spotPlacement,
@as("NetworkInterfaces") networkInterfaces: instanceNetworkInterfaceSpecificationList,
@as("KeyName") keyName: amazonawsString,
@as("KernelId") kernelId: amazonawsString,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: amazonawsString,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingList,
@as("AddressingType") addressingType: amazonawsString,
@as("SecurityGroups") securityGroups: groupIdentifierList,
@as("UserData") userData: amazonawsString
}
type instanceTypeInfo = {
@as("SupportedBootModes") supportedBootModes: bootModeTypeList,
@as("AutoRecoverySupported") autoRecoverySupported: autoRecoveryFlag,
@as("DedicatedHostsSupported") dedicatedHostsSupported: dedicatedHostFlag,
@as("BurstablePerformanceSupported") burstablePerformanceSupported: burstablePerformanceFlag,
@as("HibernationSupported") hibernationSupported: hibernationFlag,
@as("InferenceAcceleratorInfo") inferenceAcceleratorInfo: inferenceAcceleratorInfo,
@as("PlacementGroupInfo") placementGroupInfo: placementGroupInfo,
@as("FpgaInfo") fpgaInfo: fpgaInfo,
@as("GpuInfo") gpuInfo: gpuInfo,
@as("NetworkInfo") networkInfo: networkInfo,
@as("EbsInfo") ebsInfo: ebsInfo,
@as("InstanceStorageInfo") instanceStorageInfo: instanceStorageInfo,
@as("InstanceStorageSupported") instanceStorageSupported: instanceStorageFlag,
@as("MemoryInfo") memoryInfo: memoryInfo,
@as("VCpuInfo") vCpuInfo: vCpuInfo,
@as("ProcessorInfo") processorInfo: processorInfo,
@as("Hypervisor") hypervisor: instanceTypeHypervisor,
@as("BareMetal") bareMetal: bareMetalFlag,
@as("SupportedVirtualizationTypes") supportedVirtualizationTypes: virtualizationTypeList,
@as("SupportedRootDeviceTypes") supportedRootDeviceTypes: rootDeviceTypeList,
@as("SupportedUsageClasses") supportedUsageClasses: usageClassTypeList,
@as("FreeTierEligible") freeTierEligible: freeTierEligibleFlag,
@as("CurrentGeneration") currentGeneration: currentGenerationFlag,
@as("InstanceType") instanceType: instanceType
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
@as("Tags") tags: tagList,
@as("OwnerId") ownerId: amazonawsString,
@as("DhcpOptionsId") dhcpOptionsId: amazonawsString,
@as("DhcpConfigurations") dhcpConfigurations: dhcpConfigurationList
}
type describeFleetsInstancesSet = array<describeFleetsInstances>
type describeFleetsErrorSet = array<describeFleetError>
type createFleetInstancesSet = array<createFleetInstance>
type createFleetErrorsSet = array<createFleetError>
type conversionTask = {
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("State") state: conversionTaskState,
@as("ImportVolume") importVolume: importVolumeTaskDetails,
@as("ImportInstance") importInstance: importInstanceTaskDetails,
@as("ExpirationTime") expirationTime: amazonawsString,
@as("ConversionTaskId") conversionTaskId: amazonawsString
}
type vpnConnection = {
@as("VgwTelemetry") vgwTelemetry: vgwTelemetryList,
@as("Tags") tags: tagList,
@as("Routes") routes: vpnStaticRouteList,
@as("Options") options: vpnConnectionOptions,
@as("TransitGatewayId") transitGatewayId: amazonawsString,
@as("VpnGatewayId") vpnGatewayId: amazonawsString,
@as("VpnConnectionId") vpnConnectionId: amazonawsString,
@as("Type") type_: gatewayType,
@as("State") state: vpnState,
@as("Category") category: amazonawsString,
@as("CustomerGatewayId") customerGatewayId: amazonawsString,
@as("CustomerGatewayConfiguration") customerGatewayConfiguration: amazonawsString
}
type staleSecurityGroupSet = array<staleSecurityGroup>
type spotInstanceRequest = {
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("ValidUntil") validUntil: dateTime,
@as("ValidFrom") validFrom: dateTime,
@as("Type") type_: spotInstanceType,
@as("Tags") tags: tagList,
@as("Status") status: spotInstanceStatus,
@as("State") state: spotInstanceState,
@as("SpotPrice") spotPrice: amazonawsString,
@as("SpotInstanceRequestId") spotInstanceRequestId: amazonawsString,
@as("ProductDescription") productDescription: rIProductDescription,
@as("LaunchedAvailabilityZone") launchedAvailabilityZone: amazonawsString,
@as("LaunchSpecification") launchSpecification: launchSpecification,
@as("LaunchGroup") launchGroup: amazonawsString,
@as("InstanceId") instanceId: instanceId,
@as("Fault") fault: spotInstanceStateFault,
@as("CreateTime") createTime: dateTime,
@as("BlockDurationMinutes") blockDurationMinutes: amazonawsInteger,
@as("AvailabilityZoneGroup") availabilityZoneGroup: amazonawsString,
@as("ActualBlockHourlyPrice") actualBlockHourlyPrice: amazonawsString
}
type securityGroupList = array<securityGroup>
type networkInsightsAnalysis = {
@as("Tags") tags: tagList,
@as("AlternatePathHints") alternatePathHints: alternatePathHintList,
@as("Explanations") explanations: explanationList,
@as("ReturnPathComponents") returnPathComponents: pathComponentList,
@as("ForwardPathComponents") forwardPathComponents: pathComponentList,
@as("NetworkPathFound") networkPathFound: amazonawsBoolean,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: analysisStatus,
@as("StartDate") startDate: millisecondDateTime,
@as("FilterInArns") filterInArns: arnList,
@as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId,
@as("NetworkInsightsAnalysisArn") networkInsightsAnalysisArn: resourceArn,
@as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: networkInsightsAnalysisId
}
type launchTemplateVersion = {
@as("LaunchTemplateData") launchTemplateData: responseLaunchTemplateData,
@as("DefaultVersion") defaultVersion: amazonawsBoolean,
@as("CreatedBy") createdBy: amazonawsString,
@as("CreateTime") createTime: dateTime,
@as("VersionDescription") versionDescription: versionDescription,
@as("VersionNumber") versionNumber: amazonawsLong,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: amazonawsString
}
type launchSpecsList = array<spotFleetLaunchSpecification>
type instanceTypeInfoList = array<instanceTypeInfo>
type instance = {
@as("BootMode") bootMode: bootModeValues,
@as("EnclaveOptions") enclaveOptions: enclaveOptions,
@as("MetadataOptions") metadataOptions: instanceMetadataOptionsResponse,
@as("Licenses") licenses: licenseList,
@as("HibernationOptions") hibernationOptions: hibernationOptions,
@as("CapacityReservationSpecification") capacityReservationSpecification: capacityReservationSpecificationResponse,
@as("CapacityReservationId") capacityReservationId: amazonawsString,
@as("CpuOptions") cpuOptions: cpuOptions,
@as("VirtualizationType") virtualizationType: virtualizationType,
@as("Tags") tags: tagList,
@as("StateReason") stateReason: stateReason,
@as("SriovNetSupport") sriovNetSupport: amazonawsString,
@as("SpotInstanceRequestId") spotInstanceRequestId: amazonawsString,
@as("SourceDestCheck") sourceDestCheck: amazonawsBoolean,
@as("SecurityGroups") securityGroups: groupIdentifierList,
@as("RootDeviceType") rootDeviceType: deviceType,
@as("RootDeviceName") rootDeviceName: amazonawsString,
@as("OutpostArn") outpostArn: amazonawsString,
@as("NetworkInterfaces") networkInterfaces: instanceNetworkInterfaceList,
@as("ElasticInferenceAcceleratorAssociations") elasticInferenceAcceleratorAssociations: elasticInferenceAcceleratorAssociationList,
@as("ElasticGpuAssociations") elasticGpuAssociations: elasticGpuAssociationList,
@as("InstanceLifecycle") instanceLifecycle: instanceLifecycleType,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfile,
@as("Hypervisor") hypervisor: hypervisorType,
@as("EnaSupport") enaSupport: amazonawsBoolean,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("BlockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappingList,
@as("Architecture") architecture: architectureValues,
@as("VpcId") vpcId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("StateTransitionReason") stateTransitionReason: amazonawsString,
@as("State") state: instanceState,
@as("RamdiskId") ramdiskId: amazonawsString,
@as("PublicIpAddress") publicIpAddress: amazonawsString,
@as("PublicDnsName") publicDnsName: amazonawsString,
@as("ProductCodes") productCodes: productCodeList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("Platform") platform: platformValues,
@as("Placement") placement: placement,
@as("Monitoring") monitoring: monitoring,
@as("LaunchTime") launchTime: dateTime,
@as("KeyName") keyName: amazonawsString,
@as("KernelId") kernelId: amazonawsString,
@as("InstanceType") instanceType: instanceType,
@as("InstanceId") instanceId: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("AmiLaunchIndex") amiLaunchIndex: amazonawsInteger
}
type fleetData = {
@as("Instances") instances: describeFleetsInstancesSet,
@as("Errors") errors: describeFleetsErrorSet,
@as("Tags") tags: tagList,
@as("OnDemandOptions") onDemandOptions: onDemandOptions,
@as("SpotOptions") spotOptions: spotOptions,
@as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: amazonawsBoolean,
@as("ValidUntil") validUntil: dateTime,
@as("ValidFrom") validFrom: dateTime,
@as("Type") type_: fleetType,
@as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: amazonawsBoolean,
@as("TargetCapacitySpecification") targetCapacitySpecification: targetCapacitySpecification,
@as("LaunchTemplateConfigs") launchTemplateConfigs: fleetLaunchTemplateConfigList,
@as("FulfilledOnDemandCapacity") fulfilledOnDemandCapacity: amazonawsDouble,
@as("FulfilledCapacity") fulfilledCapacity: amazonawsDouble,
@as("ExcessCapacityTerminationPolicy") excessCapacityTerminationPolicy: fleetExcessCapacityTerminationPolicy,
@as("ClientToken") clientToken: amazonawsString,
@as("FleetState") fleetState: fleetStateCode,
@as("FleetId") fleetId: fleetId,
@as("CreateTime") createTime: dateTime,
@as("ActivityStatus") activityStatus: fleetActivityStatus
}
type dhcpOptionsList = array<dhcpOptions>
type describeConversionTaskList = array<conversionTask>
type vpnConnectionList = array<vpnConnection>
type spotInstanceRequestList = array<spotInstanceRequest>
type spotFleetRequestConfigData = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("InstancePoolsToUseCount") instancePoolsToUseCount: amazonawsInteger,
@as("LoadBalancersConfig") loadBalancersConfig: loadBalancersConfig,
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: amazonawsBoolean,
@as("ValidUntil") validUntil: dateTime,
@as("ValidFrom") validFrom: dateTime,
@as("Type") type_: fleetType,
@as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: amazonawsBoolean,
@as("SpotMaxTotalPrice") spotMaxTotalPrice: amazonawsString,
@as("OnDemandMaxTotalPrice") onDemandMaxTotalPrice: amazonawsString,
@as("OnDemandTargetCapacity") onDemandTargetCapacity: amazonawsInteger,
@as("TargetCapacity") targetCapacity: option<amazonawsInteger>,
@as("SpotPrice") spotPrice: amazonawsString,
@as("LaunchTemplateConfigs") launchTemplateConfigs: launchTemplateConfigList,
@as("LaunchSpecifications") launchSpecifications: launchSpecsList,
@as("IamFleetRole") iamFleetRole: option<amazonawsString>,
@as("OnDemandFulfilledCapacity") onDemandFulfilledCapacity: amazonawsDouble,
@as("FulfilledCapacity") fulfilledCapacity: amazonawsDouble,
@as("ExcessCapacityTerminationPolicy") excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
@as("ClientToken") clientToken: amazonawsString,
@as("SpotMaintenanceStrategies") spotMaintenanceStrategies: spotMaintenanceStrategies,
@as("OnDemandAllocationStrategy") onDemandAllocationStrategy: onDemandAllocationStrategy,
@as("AllocationStrategy") allocationStrategy: allocationStrategy
}
type networkInsightsAnalysisList = array<networkInsightsAnalysis>
type launchTemplateVersionSet = array<launchTemplateVersion>
type instanceList = array<instance>
type fleetSet = array<fleetData>
type spotFleetRequestConfig = {
@as("Tags") tags: tagList,
@as("SpotFleetRequestState") spotFleetRequestState: batchState,
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString,
@as("SpotFleetRequestConfig") spotFleetRequestConfig: spotFleetRequestConfigData,
@as("CreateTime") createTime: millisecondDateTime,
@as("ActivityStatus") activityStatus: activityStatus
}
type reservation = {
@as("ReservationId") reservationId: amazonawsString,
@as("RequesterId") requesterId: amazonawsString,
@as("OwnerId") ownerId: amazonawsString,
@as("Instances") instances: instanceList,
@as("Groups") groups: groupIdentifierList
}
type spotFleetRequestConfigSet = array<spotFleetRequestConfig>
type reservationList = array<reservation>
type clientType;
@module("@aws-sdk/client-ec2") @new external createClient: unit => clientType = "EC2Client";
module StartVpcEndpointServicePrivateDnsVerification = {
  type t;
  type request = {
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "StartVpcEndpointServicePrivateDnsVerificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendDiagnosticInterrupt = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceId") instanceId: option<instanceId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "SendDiagnosticInterruptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RestoreAddressToClassic = {
  type t;
  type request = {
@as("PublicIp") publicIp: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Status") status: status,
@as("PublicIp") publicIp: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RestoreAddressToClassicCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetSnapshotAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SnapshotId") snapshotId: option<snapshotId>,
@as("Attribute") attribute: option<snapshotAttributeName>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetSnapshotAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetNetworkInterfaceAttribute = {
  type t;
  type request = {
@as("SourceDestCheck") sourceDestCheck: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetNetworkInterfaceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetInstanceAttribute = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Attribute") attribute: option<instanceAttributeName>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetInstanceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetImageAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ImageId") imageId: option<imageId>,
@as("Attribute") attribute: option<resetImageAttributeName>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ResetFpgaImageAttribute = {
  type t;
  type request = {
@as("Attribute") attribute: resetFpgaImageAttributeName,
@as("FpgaImageId") fpgaImageId: option<fpgaImageId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetFpgaImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetEbsDefaultKmsKeyId = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("KmsKeyId") kmsKeyId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetEbsDefaultKmsKeyIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReplaceRoute = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("CarrierGatewayId") carrierGatewayId: carrierGatewayId,
@as("LocalGatewayId") localGatewayId: localGatewayId,
@as("TransitGatewayId") transitGatewayId: transitGatewayId,
@as("NatGatewayId") natGatewayId: natGatewayId,
@as("LocalTarget") localTarget: amazonawsBoolean,
@as("InstanceId") instanceId: instanceId,
@as("GatewayId") gatewayId: routeGatewayId,
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationPrefixListId") destinationPrefixListId: prefixListResourceId,
@as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ReplaceNetworkAclAssociation = {
  type t;
  type request = {
@as("NetworkAclId") networkAclId: option<networkAclId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AssociationId") associationId: option<networkAclAssociationId>
}
  type response = {
@as("NewAssociationId") newAssociationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceNetworkAclAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReleaseAddress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("AllocationId") allocationId: allocationId
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReleaseAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RejectVpcPeeringConnection = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RejectVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MoveAddressToVpc = {
  type t;
  type request = {
@as("PublicIp") publicIp: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Status") status: status,
@as("AllocationId") allocationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "MoveAddressToVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcTenancy = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceTenancy") instanceTenancy: option<vpcTenancy>,
@as("VpcId") vpcId: option<vpcId>
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcTenancyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyInstancePlacement = {
  type t;
  type request = {
@as("HostResourceGroupArn") hostResourceGroupArn: amazonawsString,
@as("PartitionNumber") partitionNumber: amazonawsInteger,
@as("Tenancy") tenancy: hostTenancy,
@as("InstanceId") instanceId: option<instanceId>,
@as("HostId") hostId: dedicatedHostId,
@as("GroupName") groupName: placementGroupName,
@as("Affinity") affinity: affinity
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstancePlacementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyIdentityIdFormat = {
  type t;
  type request = {
@as("UseLongIds") useLongIds: option<amazonawsBoolean>,
@as("Resource") resource: option<amazonawsString>,
@as("PrincipalArn") principalArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyIdentityIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyIdFormat = {
  type t;
  type request = {
@as("UseLongIds") useLongIds: option<amazonawsBoolean>,
@as("Resource") resource: option<amazonawsString>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyEbsDefaultKmsKeyId = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>
}
  type response = {
@as("KmsKeyId") kmsKeyId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyEbsDefaultKmsKeyIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCapacityReservation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Accept") accept: amazonawsBoolean,
@as("EndDateType") endDateType: endDateType,
@as("EndDate") endDate: dateTime,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("CapacityReservationId") capacityReservationId: option<capacityReservationId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyCapacityReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyAvailabilityZoneGroup = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("OptInStatus") optInStatus: option<modifyAvailabilityZoneOptInStatus>,
@as("GroupName") groupName: option<amazonawsString>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyAvailabilityZoneGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportClientVpnClientCertificateRevocationList = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CertificateRevocationList") certificateRevocationList: option<amazonawsString>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportClientVpnClientCertificateRevocationListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSerialConsoleAccessStatus = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetSerialConsoleAccessStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPasswordData = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Timestamp") timestamp: dateTime,
@as("PasswordData") passwordData: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetPasswordDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEbsEncryptionByDefault = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("EbsEncryptionByDefault") ebsEncryptionByDefault: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetEbsEncryptionByDefaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEbsDefaultKmsKeyId = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("KmsKeyId") kmsKeyId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetEbsDefaultKmsKeyIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConsoleScreenshot = {
  type t;
  type request = {
@as("WakeUp") wakeUp: amazonawsBoolean,
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceId") instanceId: amazonawsString,
@as("ImageData") imageData: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetConsoleScreenshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConsoleOutput = {
  type t;
  type request = {
@as("Latest") latest: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Timestamp") timestamp: dateTime,
@as("Output") output: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetConsoleOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportClientVpnClientConfiguration = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("ClientConfiguration") clientConfiguration: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ExportClientVpnClientConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableVpcClassicLinkDnsSupport = {
  type t;
  type request = {
@as("VpcId") vpcId: vpcId
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableVpcClassicLinkDnsSupportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableVpcClassicLink = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableVpcClassicLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableVolumeIO = {
  type t;
  type request = {
@as("VolumeId") volumeId: option<volumeId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableVolumeIOCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableVgwRoutePropagation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("GatewayId") gatewayId: option<vpnGatewayId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableVgwRoutePropagationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableSerialConsoleAccess = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableSerialConsoleAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableEbsEncryptionByDefault = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("EbsEncryptionByDefault") ebsEncryptionByDefault: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableEbsEncryptionByDefaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateRouteTable = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AssociationId") associationId: option<routeTableAssociationId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateEnclaveCertificateIamRole = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RoleArn") roleArn: resourceArn,
@as("CertificateArn") certificateArn: resourceArn
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateEnclaveCertificateIamRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateAddress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("PublicIp") publicIp: amazonawsString,
@as("AssociationId") associationId: elasticIpAssociationId
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableVpcClassicLinkDnsSupport = {
  type t;
  type request = {
@as("VpcId") vpcId: vpcId
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableVpcClassicLinkDnsSupportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableVpcClassicLink = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableVpcClassicLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableVgwRoutePropagation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("GatewayId") gatewayId: option<vpnGatewayId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableVgwRoutePropagationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableSerialConsoleAccess = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SerialConsoleAccessEnabled") serialConsoleAccessEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableSerialConsoleAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableEbsEncryptionByDefault = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("EbsEncryptionByDefault") ebsEncryptionByDefault: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableEbsEncryptionByDefaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachVpnGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnGatewayId") vpnGatewayId: option<vpnGatewayId>,
@as("VpcId") vpcId: option<vpcId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DetachVpnGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachVolume = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeId") volumeId: option<volumeId>,
@as("InstanceId") instanceId: instanceId,
@as("Force") force: amazonawsBoolean,
@as("Device") device: amazonawsString
}
  type response = volumeAttachment;
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DetachVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachNetworkInterface = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AttachmentId") attachmentId: option<networkInterfaceAttachmentId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DetachNetworkInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachInternetGateway = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("InternetGatewayId") internetGatewayId: option<internetGatewayId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DetachInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachClassicLinkVpc = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DetachClassicLinkVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterImage = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ImageId") imageId: option<imageId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeregisterImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpnGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnGatewayId") vpnGatewayId: option<vpnGatewayId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpnGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpnConnectionRoute = {
  type t;
  type request = {
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpnConnectionRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpnConnection = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpnConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVpcPeeringConnection = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpc = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpcId") vpcId: option<vpcId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteVolume = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeId") volumeId: option<volumeId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteTrafficMirrorTarget = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorTargetId") trafficMirrorTargetId: option<trafficMirrorTargetId>
}
  type response = {
@as("TrafficMirrorTargetId") trafficMirrorTargetId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrafficMirrorTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficMirrorSession = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorSessionId") trafficMirrorSessionId: option<trafficMirrorSessionId>
}
  type response = {
@as("TrafficMirrorSessionId") trafficMirrorSessionId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrafficMirrorSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficMirrorFilterRule = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: option<trafficMirrorFilterRuleId>
}
  type response = {
@as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrafficMirrorFilterRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTrafficMirrorFilter = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: option<trafficMirrorFilterId>
}
  type response = {
@as("TrafficMirrorFilterId") trafficMirrorFilterId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTrafficMirrorFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSubnet = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetId") subnetId: option<subnetId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteSubnetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSpotDatafeedSubscription = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteSpotDatafeedSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSnapshot = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SnapshotId") snapshotId: option<snapshotId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSecurityGroup = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("GroupName") groupName: securityGroupName,
@as("GroupId") groupId: securityGroupId
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRouteTable = {
  type t;
  type request = {
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRoute = {
  type t;
  type request = {
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationPrefixListId") destinationPrefixListId: prefixListResourceId,
@as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePlacementGroup = {
  type t;
  type request = {
@as("GroupName") groupName: option<placementGroupName>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeletePlacementGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNetworkInterfacePermission = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Force") force: amazonawsBoolean,
@as("NetworkInterfacePermissionId") networkInterfacePermissionId: option<networkInterfacePermissionId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkInterfacePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkInterface = {
  type t;
  type request = {
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNetworkInsightsPath = {
  type t;
  type request = {
@as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkInsightsPathCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkInsightsAnalysis = {
  type t;
  type request = {
@as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: option<networkInsightsAnalysisId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NetworkInsightsAnalysisId") networkInsightsAnalysisId: networkInsightsAnalysisId
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkInsightsAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkAclEntry = {
  type t;
  type request = {
@as("RuleNumber") ruleNumber: option<amazonawsInteger>,
@as("NetworkAclId") networkAclId: option<networkAclId>,
@as("Egress") egress: option<amazonawsBoolean>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkAclEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNetworkAcl = {
  type t;
  type request = {
@as("NetworkAclId") networkAclId: option<networkAclId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNetworkAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNatGateway = {
  type t;
  type request = {
@as("NatGatewayId") natGatewayId: option<natGatewayId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NatGatewayId") natGatewayId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteNatGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKeyPair = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("KeyPairId") keyPairId: keyPairId,
@as("KeyName") keyName: keyPairName
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteInternetGateway = {
  type t;
  type request = {
@as("InternetGatewayId") internetGatewayId: option<internetGatewayId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFpgaImage = {
  type t;
  type request = {
@as("FpgaImageId") fpgaImageId: option<fpgaImageId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteFpgaImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEgressOnlyInternetGateway = {
  type t;
  type request = {
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: option<egressOnlyInternetGatewayId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ReturnCode") returnCode: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteEgressOnlyInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDhcpOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DhcpOptionsId") dhcpOptionsId: option<dhcpOptionsId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteDhcpOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomerGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CustomerGatewayId") customerGatewayId: option<customerGatewayId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomerGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateVpnConnectionRoute = {
  type t;
  type request = {
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpnConnectionRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateRoute = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("CarrierGatewayId") carrierGatewayId: carrierGatewayId,
@as("LocalGatewayId") localGatewayId: localGatewayId,
@as("TransitGatewayId") transitGatewayId: transitGatewayId,
@as("NatGatewayId") natGatewayId: natGatewayId,
@as("InstanceId") instanceId: instanceId,
@as("GatewayId") gatewayId: routeGatewayId,
@as("EgressOnlyInternetGatewayId") egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationPrefixListId") destinationPrefixListId: prefixListResourceId,
@as("DestinationIpv6CidrBlock") destinationIpv6CidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyImage = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationOutpostArn") destinationOutpostArn: amazonawsString,
@as("SourceRegion") sourceRegion: option<amazonawsString>,
@as("SourceImageId") sourceImageId: option<amazonawsString>,
@as("Name") name: option<amazonawsString>,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("ImageId") imageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CopyImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyFpgaImage = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("SourceRegion") sourceRegion: option<amazonawsString>,
@as("Name") name: amazonawsString,
@as("Description") description: amazonawsString,
@as("SourceFpgaImageId") sourceFpgaImageId: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FpgaImageId") fpgaImageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CopyFpgaImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmProductInstance = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ProductCode") productCode: option<amazonawsString>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Return") return: amazonawsBoolean,
@as("OwnerId") ownerId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ConfirmProductInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelImportTask = {
  type t;
  type request = {
@as("ImportTaskId") importTaskId: importTaskId,
@as("DryRun") dryRun: amazonawsBoolean,
@as("CancelReason") cancelReason: amazonawsString
}
  type response = {
@as("State") state: amazonawsString,
@as("PreviousState") previousState: amazonawsString,
@as("ImportTaskId") importTaskId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelImportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelExportTask = {
  type t;
  type request = {
@as("ExportTaskId") exportTaskId: option<exportVmTaskId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelConversionTask = {
  type t;
  type request = {
@as("ReasonMessage") reasonMessage: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ConversionTaskId") conversionTaskId: option<conversionTaskId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelConversionTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelCapacityReservation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CapacityReservationId") capacityReservationId: option<capacityReservationId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelCapacityReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachVolume = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeId") volumeId: option<volumeId>,
@as("InstanceId") instanceId: option<instanceId>,
@as("Device") device: option<amazonawsString>
}
  type response = volumeAttachment;
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AttachVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachNetworkInterface = {
  type t;
  type request = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DeviceIndex") deviceIndex: option<amazonawsInteger>
}
  type response = {
@as("NetworkCardIndex") networkCardIndex: amazonawsInteger,
@as("AttachmentId") attachmentId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AttachNetworkInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachInternetGateway = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("InternetGatewayId") internetGatewayId: option<internetGatewayId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AttachInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateEnclaveCertificateIamRole = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RoleArn") roleArn: resourceArn,
@as("CertificateArn") certificateArn: resourceArn
}
  type response = {
@as("EncryptionKmsKeyId") encryptionKmsKeyId: amazonawsString,
@as("CertificateS3ObjectKey") certificateS3ObjectKey: amazonawsString,
@as("CertificateS3BucketName") certificateS3BucketName: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateEnclaveCertificateIamRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDhcpOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpcId") vpcId: option<vpcId>,
@as("DhcpOptionsId") dhcpOptionsId: option<defaultingDhcpOptionsId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateDhcpOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateAddress = {
  type t;
  type request = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AllowReassociation") allowReassociation: amazonawsBoolean,
@as("PublicIp") publicIp: amazonawsString,
@as("InstanceId") instanceId: instanceId,
@as("AllocationId") allocationId: allocationId
}
  type response = {
@as("AssociationId") associationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module WithdrawByoipCidr = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Cidr") cidr: option<amazonawsString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "WithdrawByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnassignPrivateIpAddresses = {
  type t;
  type request = {
@as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddressStringList>,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "UnassignPrivateIpAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UnassignIpv6Addresses = {
  type t;
  type request = {
@as("Ipv6Addresses") ipv6Addresses: option<ipv6AddressList>,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>
}
  type response = {
@as("UnassignedIpv6Addresses") unassignedIpv6Addresses: ipv6AddressList,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "UnassignIpv6AddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeClientVpnIngress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RevokeAllGroups") revokeAllGroups: amazonawsBoolean,
@as("AccessGroupId") accessGroupId: amazonawsString,
@as("TargetNetworkCidr") targetNetworkCidr: option<amazonawsString>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientVpnAuthorizationRuleStatus
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RevokeClientVpnIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReportInstanceStatus = {
  type t;
  type request = {
@as("Status") status: option<reportStatusType>,
@as("StartTime") startTime: dateTime,
@as("ReasonCodes") reasonCodes: option<reasonCodesList>,
@as("Instances") instances: option<instanceIdStringList>,
@as("EndTime") endTime: dateTime,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReportInstanceStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ReplaceRouteTableAssociation = {
  type t;
  type request = {
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AssociationId") associationId: option<routeTableAssociationId>
}
  type response = {
@as("AssociationState") associationState: routeTableAssociationState,
@as("NewAssociationId") newAssociationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceRouteTableAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReplaceNetworkAclEntry = {
  type t;
  type request = {
@as("RuleNumber") ruleNumber: option<amazonawsInteger>,
@as("RuleAction") ruleAction: option<ruleAction>,
@as("Protocol") protocol: option<amazonawsString>,
@as("PortRange") portRange: portRange,
@as("NetworkAclId") networkAclId: option<networkAclId>,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("IcmpTypeCode") icmpTypeCode: icmpTypeCode,
@as("Egress") egress: option<amazonawsBoolean>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("CidrBlock") cidrBlock: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceNetworkAclEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RebootInstances = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RebootInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PurchaseReservedInstancesOffering = {
  type t;
  type request = {
@as("PurchaseTime") purchaseTime: dateTime,
@as("LimitPrice") limitPrice: reservedInstanceLimitPrice,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ReservedInstancesOfferingId") reservedInstancesOfferingId: option<reservedInstancesOfferingId>,
@as("InstanceCount") instanceCount: option<amazonawsInteger>
}
  type response = {
@as("ReservedInstancesId") reservedInstancesId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "PurchaseReservedInstancesOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcPeeringConnectionOptions = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<vpcPeeringConnectionId>,
@as("RequesterPeeringConnectionOptions") requesterPeeringConnectionOptions: peeringConnectionOptionsRequest,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AccepterPeeringConnectionOptions") accepterPeeringConnectionOptions: peeringConnectionOptionsRequest
}
  type response = {
@as("RequesterPeeringConnectionOptions") requesterPeeringConnectionOptions: peeringConnectionOptions,
@as("AccepterPeeringConnectionOptions") accepterPeeringConnectionOptions: peeringConnectionOptions
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcPeeringConnectionOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcEndpointServicePermissions = {
  type t;
  type request = {
@as("RemoveAllowedPrincipals") removeAllowedPrincipals: valueStringList,
@as("AddAllowedPrincipals") addAllowedPrincipals: valueStringList,
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcEndpointServicePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcEndpointServiceConfiguration = {
  type t;
  type request = {
@as("RemoveGatewayLoadBalancerArns") removeGatewayLoadBalancerArns: valueStringList,
@as("AddGatewayLoadBalancerArns") addGatewayLoadBalancerArns: valueStringList,
@as("RemoveNetworkLoadBalancerArns") removeNetworkLoadBalancerArns: valueStringList,
@as("AddNetworkLoadBalancerArns") addNetworkLoadBalancerArns: valueStringList,
@as("AcceptanceRequired") acceptanceRequired: amazonawsBoolean,
@as("RemovePrivateDnsName") removePrivateDnsName: amazonawsBoolean,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcEndpointServiceConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcEndpointConnectionNotification = {
  type t;
  type request = {
@as("ConnectionEvents") connectionEvents: valueStringList,
@as("ConnectionNotificationArn") connectionNotificationArn: amazonawsString,
@as("ConnectionNotificationId") connectionNotificationId: option<connectionNotificationId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ReturnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcEndpointConnectionNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcEndpoint = {
  type t;
  type request = {
@as("PrivateDnsEnabled") privateDnsEnabled: amazonawsBoolean,
@as("RemoveSecurityGroupIds") removeSecurityGroupIds: vpcEndpointSecurityGroupIdList,
@as("AddSecurityGroupIds") addSecurityGroupIds: vpcEndpointSecurityGroupIdList,
@as("RemoveSubnetIds") removeSubnetIds: vpcEndpointSubnetIdList,
@as("AddSubnetIds") addSubnetIds: vpcEndpointSubnetIdList,
@as("RemoveRouteTableIds") removeRouteTableIds: vpcEndpointRouteTableIdList,
@as("AddRouteTableIds") addRouteTableIds: vpcEndpointRouteTableIdList,
@as("PolicyDocument") policyDocument: amazonawsString,
@as("ResetPolicy") resetPolicy: amazonawsBoolean,
@as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpcAttribute = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("EnableDnsSupport") enableDnsSupport: attributeBooleanValue,
@as("EnableDnsHostnames") enableDnsHostnames: attributeBooleanValue
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpcAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyVolumeAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeId") volumeId: option<volumeId>,
@as("AutoEnableIO") autoEnableIO: attributeBooleanValue
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVolumeAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyVolume = {
  type t;
  type request = {
@as("MultiAttachEnabled") multiAttachEnabled: amazonawsBoolean,
@as("Throughput") throughput: amazonawsInteger,
@as("Iops") iops: amazonawsInteger,
@as("VolumeType") volumeType: volumeType,
@as("Size") size: amazonawsInteger,
@as("VolumeId") volumeId: option<volumeId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("VolumeModification") volumeModification: volumeModification
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySubnetAttribute = {
  type t;
  type request = {
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: coipPoolId,
@as("MapCustomerOwnedIpOnLaunch") mapCustomerOwnedIpOnLaunch: attributeBooleanValue,
@as("SubnetId") subnetId: option<subnetId>,
@as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: attributeBooleanValue,
@as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: attributeBooleanValue
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifySubnetAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyNetworkInterfaceAttribute = {
  type t;
  type request = {
@as("SourceDestCheck") sourceDestCheck: attributeBooleanValue,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("Groups") groups: securityGroupIdStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: attributeValue,
@as("Attachment") attachment: networkInterfaceAttachmentChanges
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyNetworkInterfaceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyInstanceMetadataOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("HttpEndpoint") httpEndpoint: instanceMetadataEndpointState,
@as("HttpPutResponseHopLimit") httpPutResponseHopLimit: amazonawsInteger,
@as("HttpTokens") httpTokens: httpTokensState,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("InstanceMetadataOptions") instanceMetadataOptions: instanceMetadataOptionsResponse,
@as("InstanceId") instanceId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstanceMetadataOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyInstanceEventStartTime = {
  type t;
  type request = {
@as("NotBefore") notBefore: option<dateTime>,
@as("InstanceEventId") instanceEventId: option<amazonawsString>,
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Event") event: instanceStatusEvent
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstanceEventStartTimeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDefaultCreditSpecification = {
  type t;
  type request = {
@as("CpuCredits") cpuCredits: option<amazonawsString>,
@as("InstanceFamily") instanceFamily: option<unlimitedSupportedInstanceFamily>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceFamilyCreditSpecification") instanceFamilyCreditSpecification: instanceFamilyCreditSpecification
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyDefaultCreditSpecificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDefaultCreditSpecification = {
  type t;
  type request = {
@as("InstanceFamily") instanceFamily: option<unlimitedSupportedInstanceFamily>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceFamilyCreditSpecification") instanceFamilyCreditSpecification: instanceFamilyCreditSpecification
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetDefaultCreditSpecificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportClientVpnClientCertificateRevocationList = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientCertificateRevocationListStatus,
@as("CertificateRevocationList") certificateRevocationList: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ExportClientVpnClientCertificateRevocationListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableTransitGatewayRouteTablePropagation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("Propagation") propagation: transitGatewayPropagation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableTransitGatewayRouteTablePropagationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateTransitGatewayRouteTable = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("Association") association: transitGatewayAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateTransitGatewayRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateClientVpnTargetNetwork = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AssociationId") associationId: option<clientVpnAssociationId>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: associationStatus,
@as("AssociationId") associationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateClientVpnTargetNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableTransitGatewayRouteTablePropagation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("Propagation") propagation: transitGatewayPropagation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableTransitGatewayRouteTablePropagationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpcId") vpcId: option<vpcId>,
@as("Attribute") attribute: option<vpcAttributeName>
}
  type response = {
@as("EnableDnsSupport") enableDnsSupport: attributeBooleanValue,
@as("EnableDnsHostnames") enableDnsHostnames: attributeBooleanValue,
@as("VpcId") vpcId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprovisionByoipCidr = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Cidr") cidr: option<amazonawsString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeprovisionByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLocalGatewayRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  type response = {
@as("Route") route: localGatewayRoute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteLocalGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteClientVpnRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>,
@as("TargetVpcSubnetId") targetVpcSubnetId: subnetId,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientVpnRouteStatus
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteClientVpnRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteClientVpnEndpoint = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientVpnEndpointStatus
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteClientVpnEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkAclEntry = {
  type t;
  type request = {
@as("RuleNumber") ruleNumber: option<amazonawsInteger>,
@as("RuleAction") ruleAction: option<ruleAction>,
@as("Protocol") protocol: option<amazonawsString>,
@as("PortRange") portRange: portRange,
@as("NetworkAclId") networkAclId: option<networkAclId>,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("IcmpTypeCode") icmpTypeCode: icmpTypeCode,
@as("Egress") egress: option<amazonawsBoolean>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("CidrBlock") cidrBlock: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkAclEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateLocalGatewayRoute = {
  type t;
  type request = {
@as("LocalGatewayVirtualInterfaceGroupId") localGatewayVirtualInterfaceGroupId: option<localGatewayVirtualInterfaceGroupId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  type response = {
@as("Route") route: localGatewayRoute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateLocalGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClientVpnRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("Description") description: amazonawsString,
@as("TargetVpcSubnetId") targetVpcSubnetId: option<subnetId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientVpnRouteStatus
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateClientVpnRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeClientVpnIngress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("Description") description: amazonawsString,
@as("AuthorizeAllGroups") authorizeAllGroups: amazonawsBoolean,
@as("AccessGroupId") accessGroupId: amazonawsString,
@as("TargetNetworkCidr") targetNetworkCidr: option<amazonawsString>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: clientVpnAuthorizationRuleStatus
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AuthorizeClientVpnIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachVpnGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnGatewayId") vpnGatewayId: option<vpnGatewayId>,
@as("VpcId") vpcId: option<vpcId>
}
  type response = {
@as("VpcAttachment") vpcAttachment: vpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AttachVpnGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachClassicLinkVpc = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("InstanceId") instanceId: option<instanceId>,
@as("Groups") groups: option<groupIdStringList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AttachClassicLinkVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateTransitGatewayRouteTable = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("Association") association: transitGatewayAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateTransitGatewayRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateRouteTable = {
  type t;
  type request = {
@as("GatewayId") gatewayId: routeGatewayId,
@as("SubnetId") subnetId: subnetId,
@as("RouteTableId") routeTableId: option<routeTableId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("AssociationState") associationState: routeTableAssociationState,
@as("AssociationId") associationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateClientVpnTargetNetwork = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("SubnetId") subnetId: option<subnetId>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Status") status: associationStatus,
@as("AssociationId") associationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateClientVpnTargetNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssignIpv6Addresses = {
  type t;
  type request = {
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("Ipv6Addresses") ipv6Addresses: ipv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger
}
  type response = {
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("AssignedIpv6Addresses") assignedIpv6Addresses: ipv6AddressList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssignIpv6AddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplySecurityGroupsToClientVpnTargetNetwork = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SecurityGroupIds") securityGroupIds: option<clientVpnSecurityGroupIdSet>,
@as("VpcId") vpcId: option<vpcId>,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("SecurityGroupIds") securityGroupIds: clientVpnSecurityGroupIdSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ApplySecurityGroupsToClientVpnTargetNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AdvertiseByoipCidr = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Cidr") cidr: option<amazonawsString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AdvertiseByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetAddressAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Attribute") attribute: option<addressAttributeName>,
@as("AllocationId") allocationId: option<allocationId>
}
  type response = {
@as("Address") address: addressAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ResetAddressAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReplaceIamInstanceProfileAssociation = {
  type t;
  type request = {
@as("AssociationId") associationId: option<iamInstanceProfileAssociationId>,
@as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>
}
  type response = {
@as("IamInstanceProfileAssociation") iamInstanceProfileAssociation: iamInstanceProfileAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceIamInstanceProfileAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterTransitGatewayMulticastGroupSources = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NetworkInterfaceIds") networkInterfaceIds: transitGatewayNetworkInterfaceIdList,
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("RegisteredMulticastGroupSources") registeredMulticastGroupSources: transitGatewayMulticastRegisteredGroupSources
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RegisterTransitGatewayMulticastGroupSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterTransitGatewayMulticastGroupMembers = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NetworkInterfaceIds") networkInterfaceIds: transitGatewayNetworkInterfaceIdList,
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("RegisteredMulticastGroupMembers") registeredMulticastGroupMembers: transitGatewayMulticastRegisteredGroupMembers
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RegisterTransitGatewayMulticastGroupMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterInstanceEventNotificationAttributes = {
  type t;
  type request = {
@as("InstanceTagAttribute") instanceTagAttribute: registerInstanceTagAttributeRequest,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceTagAttribute") instanceTagAttribute: instanceTagNotificationAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RegisterInstanceEventNotificationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTransitGatewayPrefixListReference = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Blackhole") blackhole: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("TransitGatewayPrefixListReference") transitGatewayPrefixListReference: transitGatewayPrefixListReference
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTransitGatewayPrefixListReferenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTrafficMirrorFilterRule = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RemoveFields") removeFields: trafficMirrorFilterRuleFieldList,
@as("Description") description: amazonawsString,
@as("SourceCidrBlock") sourceCidrBlock: amazonawsString,
@as("DestinationCidrBlock") destinationCidrBlock: amazonawsString,
@as("Protocol") protocol: amazonawsInteger,
@as("SourcePortRange") sourcePortRange: trafficMirrorPortRangeRequest,
@as("DestinationPortRange") destinationPortRange: trafficMirrorPortRangeRequest,
@as("RuleAction") ruleAction: trafficMirrorRuleAction,
@as("RuleNumber") ruleNumber: amazonawsInteger,
@as("TrafficDirection") trafficDirection: trafficDirection,
@as("TrafficMirrorFilterRuleId") trafficMirrorFilterRuleId: option<trafficMirrorFilterRuleId>
}
  type response = {
@as("TrafficMirrorFilterRule") trafficMirrorFilterRule: trafficMirrorFilterRule
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTrafficMirrorFilterRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReservedInstances = {
  type t;
  type request = {
@as("TargetConfigurations") targetConfigurations: option<reservedInstancesConfigurationList>,
@as("ClientToken") clientToken: amazonawsString,
@as("ReservedInstancesIds") reservedInstancesIds: option<reservedInstancesIdStringList>
}
  type response = {
@as("ReservedInstancesModificationId") reservedInstancesModificationId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyReservedInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyInstanceCapacityReservationAttributes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CapacityReservationSpecification") capacityReservationSpecification: option<capacityReservationSpecification>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstanceCapacityReservationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClientVpnEndpoint = {
  type t;
  type request = {
@as("ClientConnectOptions") clientConnectOptions: clientConnectOptions,
@as("SelfServicePortal") selfServicePortal: selfServicePortal,
@as("VpcId") vpcId: vpcId,
@as("SecurityGroupIds") securityGroupIds: clientVpnSecurityGroupIdSet,
@as("DryRun") dryRun: amazonawsBoolean,
@as("SplitTunnel") splitTunnel: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("VpnPort") vpnPort: amazonawsInteger,
@as("DnsServers") dnsServers: dnsServersOptionsModifyStructure,
@as("ConnectionLogOptions") connectionLogOptions: connectionLogOptions,
@as("ServerCertificateArn") serverCertificateArn: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyClientVpnEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyAddressAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DomainName") domainName: amazonawsString,
@as("AllocationId") allocationId: option<allocationId>
}
  type response = {
@as("Address") address: addressAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyAddressAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetManagedPrefixListEntries = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: prefixListMaxResults,
@as("TargetVersion") targetVersion: amazonawsLong,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Entries") entries: prefixListEntrySet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetManagedPrefixListEntriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetManagedPrefixListAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: getManagedPrefixListAssociationsMaxResults,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PrefixListAssociations") prefixListAssociations: prefixListAssociationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetManagedPrefixListAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGroupsForCapacityReservation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: getGroupsForCapacityReservationRequestMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("CapacityReservationId") capacityReservationId: option<capacityReservationId>
}
  type response = {
@as("CapacityReservationGroups") capacityReservationGroups: capacityReservationGroupSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetGroupsForCapacityReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCapacityReservationUsage = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: getCapacityReservationUsageRequestMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("CapacityReservationId") capacityReservationId: option<capacityReservationId>
}
  type response = {
@as("InstanceUsages") instanceUsages: instanceUsageSet,
@as("State") state: capacityReservationState,
@as("AvailableInstanceCount") availableInstanceCount: amazonawsInteger,
@as("TotalInstanceCount") totalInstanceCount: amazonawsInteger,
@as("InstanceType") instanceType: amazonawsString,
@as("CapacityReservationId") capacityReservationId: amazonawsString,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetCapacityReservationUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssociatedIpv6PoolCidrs = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: ipv6PoolMaxResults,
@as("NextToken") nextToken: nextToken,
@as("PoolId") poolId: option<ipv6PoolEc2Id>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Ipv6CidrAssociations") ipv6CidrAssociations: ipv6CidrAssociationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetAssociatedIpv6PoolCidrsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssociatedEnclaveCertificateIamRoles = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CertificateArn") certificateArn: resourceArn
}
  type response = {
@as("AssociatedRoles") associatedRoles: associatedRolesList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetAssociatedEnclaveCertificateIamRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateVpcCidrBlock = {
  type t;
  type request = {
@as("AssociationId") associationId: option<vpcCidrAssociationId>
}
  type response = {
@as("VpcId") vpcId: amazonawsString,
@as("CidrBlockAssociation") cidrBlockAssociation: vpcCidrBlockAssociation,
@as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: vpcIpv6CidrBlockAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateVpcCidrBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateSubnetCidrBlock = {
  type t;
  type request = {
@as("AssociationId") associationId: option<subnetCidrAssociationId>
}
  type response = {
@as("SubnetId") subnetId: amazonawsString,
@as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: subnetIpv6CidrBlockAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateSubnetCidrBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateIamInstanceProfile = {
  type t;
  type request = {
@as("AssociationId") associationId: option<iamInstanceProfileAssociationId>
}
  type response = {
@as("IamInstanceProfileAssociation") iamInstanceProfileAssociation: iamInstanceProfileAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateIamInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcClassicLinkDnsSupport = {
  type t;
  type request = {
@as("VpcIds") vpcIds: vpcClassicLinkIdList,
@as("NextToken") nextToken: describeVpcClassicLinkDnsSupportNextToken,
@as("MaxResults") maxResults: describeVpcClassicLinkDnsSupportMaxResults
}
  type response = {
@as("Vpcs") vpcs: classicLinkDnsSupportList,
@as("NextToken") nextToken: describeVpcClassicLinkDnsSupportNextToken
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcClassicLinkDnsSupportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVolumeAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeId") volumeId: option<volumeId>,
@as("Attribute") attribute: option<volumeAttributeName>
}
  type response = {
@as("VolumeId") volumeId: amazonawsString,
@as("ProductCodes") productCodes: productCodeList,
@as("AutoEnableIO") autoEnableIO: attributeBooleanValue
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVolumeAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotFleetInstances = {
  type t;
  type request = {
@as("SpotFleetRequestId") spotFleetRequestId: option<spotFleetRequestId>,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeSpotFleetInstancesMaxResults,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("ActiveInstances") activeInstances: activeInstanceSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotFleetInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotDatafeedSubscription = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SpotDatafeedSubscription") spotDatafeedSubscription: spotDatafeedSubscription
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotDatafeedSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshotAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SnapshotId") snapshotId: option<snapshotId>,
@as("Attribute") attribute: option<snapshotAttributeName>
}
  type response = {
@as("SnapshotId") snapshotId: amazonawsString,
@as("ProductCodes") productCodes: productCodeList,
@as("CreateVolumePermissions") createVolumePermissions: createVolumePermissionList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSnapshotAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSecurityGroupReferences = {
  type t;
  type request = {
@as("GroupId") groupId: option<groupIds>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SecurityGroupReferenceSet") securityGroupReferenceSet: securityGroupReferences
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSecurityGroupReferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkInterfaceAttribute = {
  type t;
  type request = {
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Attribute") attribute: networkInterfaceAttribute
}
  type response = {
@as("SourceDestCheck") sourceDestCheck: attributeBooleanValue,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("Groups") groups: groupIdentifierList,
@as("Description") description: attributeValue,
@as("Attachment") attachment: networkInterfaceAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkInterfaceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceEventNotificationAttributes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceTagAttribute") instanceTagAttribute: instanceTagNotificationAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceEventNotificationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityIdFormat = {
  type t;
  type request = {
@as("Resource") resource: amazonawsString,
@as("PrincipalArn") principalArn: option<amazonawsString>
}
  type response = {
@as("Statuses") statuses: idFormatList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeIdentityIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdFormat = {
  type t;
  type request = {
@as("Resource") resource: amazonawsString
}
  type response = {
@as("Statuses") statuses: idFormatList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeByoipCidrs = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: option<describeByoipCidrsMaxResults>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ByoipCidrs") byoipCidrs: byoipCidrSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeByoipCidrsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregateIdFormat = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Statuses") statuses: idFormatList,
@as("UseLongIdsAggregated") useLongIdsAggregated: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeAggregateIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterTransitGatewayMulticastGroupSources = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NetworkInterfaceIds") networkInterfaceIds: transitGatewayNetworkInterfaceIdList,
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("DeregisteredMulticastGroupSources") deregisteredMulticastGroupSources: transitGatewayMulticastDeregisteredGroupSources
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeregisterTransitGatewayMulticastGroupSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterTransitGatewayMulticastGroupMembers = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NetworkInterfaceIds") networkInterfaceIds: transitGatewayNetworkInterfaceIdList,
@as("GroupIpAddress") groupIpAddress: amazonawsString,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("DeregisteredMulticastGroupMembers") deregisteredMulticastGroupMembers: transitGatewayMulticastDeregisteredGroupMembers
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeregisterTransitGatewayMulticastGroupMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterInstanceEventNotificationAttributes = {
  type t;
  type request = {
@as("InstanceTagAttribute") instanceTagAttribute: deregisterInstanceTagAttributeRequest,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("InstanceTagAttribute") instanceTagAttribute: instanceTagNotificationAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeregisterInstanceEventNotificationAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayPrefixListReference = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("TransitGatewayPrefixListReference") transitGatewayPrefixListReference: transitGatewayPrefixListReference
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayPrefixListReferenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Resources") resources: option<resourceIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateVpcEndpointConnectionNotification = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("ConnectionEvents") connectionEvents: option<valueStringList>,
@as("ConnectionNotificationArn") connectionNotificationArn: option<amazonawsString>,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
@as("ServiceId") serviceId: vpcEndpointServiceId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("ConnectionNotification") connectionNotification: connectionNotification
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcEndpointConnectionNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayPrefixListReference = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Blackhole") blackhole: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("TransitGatewayPrefixListReference") transitGatewayPrefixListReference: transitGatewayPrefixListReference
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayPrefixListReferenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficMirrorFilterRule = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("SourceCidrBlock") sourceCidrBlock: option<amazonawsString>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>,
@as("Protocol") protocol: amazonawsInteger,
@as("SourcePortRange") sourcePortRange: trafficMirrorPortRangeRequest,
@as("DestinationPortRange") destinationPortRange: trafficMirrorPortRangeRequest,
@as("RuleAction") ruleAction: option<trafficMirrorRuleAction>,
@as("RuleNumber") ruleNumber: option<amazonawsInteger>,
@as("TrafficDirection") trafficDirection: option<trafficDirection>,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: option<trafficMirrorFilterId>
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("TrafficMirrorFilterRule") trafficMirrorFilterRule: trafficMirrorFilterRule
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTrafficMirrorFilterRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("Resources") resources: option<resourceIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateStoreImageTask = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("S3ObjectTags") s3ObjectTags: s3ObjectTagList,
@as("Bucket") bucket: option<amazonawsString>,
@as("ImageId") imageId: option<imageId>
}
  type response = {
@as("ObjectKey") objectKey: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateStoreImageTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSpotDatafeedSubscription = {
  type t;
  type request = {
@as("Prefix") prefix: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Bucket") bucket: option<amazonawsString>
}
  type response = {
@as("SpotDatafeedSubscription") spotDatafeedSubscription: spotDatafeedSubscription
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateSpotDatafeedSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkInterfacePermission = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Permission") permission: option<interfacePermissionType>,
@as("AwsService") awsService: amazonawsString,
@as("AwsAccountId") awsAccountId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>
}
  type response = {
@as("InterfacePermission") interfacePermission: networkInterfacePermission
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkInterfacePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSpotInstanceRequests = {
  type t;
  type request = {
@as("SpotInstanceRequestIds") spotInstanceRequestIds: option<spotInstanceRequestIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("CancelledSpotInstanceRequests") cancelledSpotInstanceRequests: cancelledSpotInstanceRequestList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelSpotInstanceRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateVpcCidrBlock = {
  type t;
  type request = {
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("Ipv6Pool") ipv6Pool: ipv6PoolEc2Id,
@as("Ipv6CidrBlockNetworkBorderGroup") ipv6CidrBlockNetworkBorderGroup: amazonawsString,
@as("VpcId") vpcId: option<vpcId>,
@as("CidrBlock") cidrBlock: amazonawsString,
@as("AmazonProvidedIpv6CidrBlock") amazonProvidedIpv6CidrBlock: amazonawsBoolean
}
  type response = {
@as("VpcId") vpcId: amazonawsString,
@as("CidrBlockAssociation") cidrBlockAssociation: vpcCidrBlockAssociation,
@as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: vpcIpv6CidrBlockAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateVpcCidrBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateSubnetCidrBlock = {
  type t;
  type request = {
@as("SubnetId") subnetId: option<subnetId>,
@as("Ipv6CidrBlock") ipv6CidrBlock: option<amazonawsString>
}
  type response = {
@as("SubnetId") subnetId: amazonawsString,
@as("Ipv6CidrBlockAssociation") ipv6CidrBlockAssociation: subnetIpv6CidrBlockAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateSubnetCidrBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateIamInstanceProfile = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfileSpecification>
}
  type response = {
@as("IamInstanceProfileAssociation") iamInstanceProfileAssociation: iamInstanceProfileAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateIamInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssignPrivateIpAddresses = {
  type t;
  type request = {
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddressStringList,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("AllowReassignment") allowReassignment: amazonawsBoolean
}
  type response = {
@as("AssignedPrivateIpAddresses") assignedPrivateIpAddresses: assignedPrivateIpAddressList,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssignPrivateIpAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptReservedInstancesExchangeQuote = {
  type t;
  type request = {
@as("TargetConfigurations") targetConfigurations: targetConfigurationRequestSet,
@as("ReservedInstanceIds") reservedInstanceIds: option<reservedInstanceIdSet>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ExchangeId") exchangeId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptReservedInstancesExchangeQuoteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnmonitorInstances = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  type response = {
@as("InstanceMonitorings") instanceMonitorings: instanceMonitoringList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "UnmonitorInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateInstances = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  type response = {
@as("TerminatingInstances") terminatingInstances: instanceStateChangeList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "TerminateInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateClientVpnConnections = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Username") username: amazonawsString,
@as("ConnectionId") connectionId: vpnConnectionId,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("ConnectionStatuses") connectionStatuses: terminateConnectionStatusSet,
@as("Username") username: amazonawsString,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "TerminateClientVpnConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopInstances = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Hibernate") hibernate: amazonawsBoolean,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  type response = {
@as("StoppingInstances") stoppingInstances: instanceStateChangeList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "StopInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartInstances = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AdditionalInfo") additionalInfo: amazonawsString,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  type response = {
@as("StartingInstances") startingInstances: instanceStateChangeList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "StartInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchTransitGatewayMulticastGroups = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("MulticastGroups") multicastGroups: transitGatewayMulticastGroupList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "SearchTransitGatewayMulticastGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchLocalGatewayRoutes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: option<filterList>,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Routes") routes: localGatewayRouteList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "SearchLocalGatewayRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreManagedPrefixListVersion = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: option<amazonawsLong>,
@as("PreviousVersion") previousVersion: option<amazonawsLong>,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixList") prefixList: managedPrefixList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RestoreManagedPrefixListVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReplaceTransitGatewayRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Blackhole") blackhole: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  type response = {
@as("Route") route: transitGatewayRoute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReplaceTransitGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReleaseHosts = {
  type t;
  type request = {
@as("HostIds") hostIds: option<requestHostIdList>
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemList,
@as("Successful") successful: responseHostIdList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ReleaseHostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectVpcEndpointConnections = {
  type t;
  type request = {
@as("VpcEndpointIds") vpcEndpointIds: option<vpcEndpointIdList>,
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RejectVpcEndpointConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectTransitGatewayVpcAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayVpcAttachment") transitGatewayVpcAttachment: transitGatewayVpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RejectTransitGatewayVpcAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectTransitGatewayPeeringAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayPeeringAttachment") transitGatewayPeeringAttachment: transitGatewayPeeringAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RejectTransitGatewayPeeringAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectTransitGatewayMulticastDomainAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetIds") subnetIds: valueStringList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("Associations") associations: transitGatewayMulticastDomainAssociations
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RejectTransitGatewayMulticastDomainAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterImage = {
  type t;
  type request = {
@as("BootMode") bootMode: bootModeValues,
@as("VirtualizationType") virtualizationType: amazonawsString,
@as("SriovNetSupport") sriovNetSupport: amazonawsString,
@as("RootDeviceName") rootDeviceName: amazonawsString,
@as("RamdiskId") ramdiskId: ramdiskId,
@as("BillingProducts") billingProducts: billingProductList,
@as("Name") name: option<amazonawsString>,
@as("KernelId") kernelId: kernelId,
@as("EnaSupport") enaSupport: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingRequestList,
@as("Architecture") architecture: architectureValues,
@as("ImageLocation") imageLocation: amazonawsString
}
  type response = {
@as("ImageId") imageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RegisterImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MonitorInstances = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceIds") instanceIds: option<instanceIdStringList>
}
  type response = {
@as("InstanceMonitorings") instanceMonitorings: instanceMonitoringList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "MonitorInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTransitGatewayVpcAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Options") options: modifyTransitGatewayVpcAttachmentRequestOptions,
@as("RemoveSubnetIds") removeSubnetIds: transitGatewaySubnetIdList,
@as("AddSubnetIds") addSubnetIds: transitGatewaySubnetIdList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayVpcAttachment") transitGatewayVpcAttachment: transitGatewayVpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTransitGatewayVpcAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTransitGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Options") options: modifyTransitGatewayOptions,
@as("Description") description: amazonawsString,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGateway") transitGateway: transitGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTransitGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTrafficMirrorSession = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RemoveFields") removeFields: trafficMirrorSessionFieldList,
@as("Description") description: amazonawsString,
@as("VirtualNetworkId") virtualNetworkId: amazonawsInteger,
@as("SessionNumber") sessionNumber: amazonawsInteger,
@as("PacketLength") packetLength: amazonawsInteger,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: trafficMirrorFilterId,
@as("TrafficMirrorTargetId") trafficMirrorTargetId: trafficMirrorTargetId,
@as("TrafficMirrorSessionId") trafficMirrorSessionId: option<trafficMirrorSessionId>
}
  type response = {
@as("TrafficMirrorSession") trafficMirrorSession: trafficMirrorSession
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTrafficMirrorSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySnapshotAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("UserIds") userIds: userIdStringList,
@as("SnapshotId") snapshotId: option<snapshotId>,
@as("OperationType") operationType: operationType,
@as("GroupNames") groupNames: groupNameStringList,
@as("CreateVolumePermission") createVolumePermission: createVolumePermissionModifications,
@as("Attribute") attribute: snapshotAttributeName
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifySnapshotAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyManagedPrefixList = {
  type t;
  type request = {
@as("RemoveEntries") removeEntries: removePrefixListEntries,
@as("AddEntries") addEntries: addPrefixListEntries,
@as("PrefixListName") prefixListName: amazonawsString,
@as("CurrentVersion") currentVersion: amazonawsLong,
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixList") prefixList: managedPrefixList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyManagedPrefixListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyLaunchTemplate = {
  type t;
  type request = {
@as("DefaultVersion") defaultVersion: amazonawsString,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("LaunchTemplate") launchTemplate: launchTemplate
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyLaunchTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyInstanceCreditSpecification = {
  type t;
  type request = {
@as("InstanceCreditSpecifications") instanceCreditSpecifications: option<instanceCreditSpecificationListRequest>,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("UnsuccessfulInstanceCreditSpecifications") unsuccessfulInstanceCreditSpecifications: unsuccessfulInstanceCreditSpecificationSet,
@as("SuccessfulInstanceCreditSpecifications") successfulInstanceCreditSpecifications: successfulInstanceCreditSpecificationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstanceCreditSpecificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyInstanceAttribute = {
  type t;
  type request = {
@as("Value") value: amazonawsString,
@as("UserData") userData: blobAttributeValue,
@as("SriovNetSupport") sriovNetSupport: attributeValue,
@as("Ramdisk") ramdisk: attributeValue,
@as("Kernel") kernel: attributeValue,
@as("InstanceType") instanceType: attributeValue,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: attributeValue,
@as("InstanceId") instanceId: option<instanceId>,
@as("Groups") groups: groupIdStringList,
@as("EnaSupport") enaSupport: attributeBooleanValue,
@as("EbsOptimized") ebsOptimized: attributeBooleanValue,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DisableApiTermination") disableApiTermination: attributeBooleanValue,
@as("BlockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappingSpecificationList,
@as("Attribute") attribute: instanceAttributeName,
@as("SourceDestCheck") sourceDestCheck: attributeBooleanValue
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyInstanceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyImageAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Value") value: amazonawsString,
@as("UserIds") userIds: userIdStringList,
@as("UserGroups") userGroups: userGroupStringList,
@as("ProductCodes") productCodes: productCodeStringList,
@as("OperationType") operationType: operationType,
@as("LaunchPermission") launchPermission: launchPermissionModifications,
@as("ImageId") imageId: option<imageId>,
@as("Description") description: attributeValue,
@as("Attribute") attribute: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyHosts = {
  type t;
  type request = {
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("HostRecovery") hostRecovery: hostRecovery,
@as("HostIds") hostIds: option<requestHostIdList>,
@as("AutoPlacement") autoPlacement: autoPlacement
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemList,
@as("Successful") successful: responseHostIdList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyHostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyFpgaImageAttribute = {
  type t;
  type request = {
@as("Name") name: amazonawsString,
@as("Description") description: amazonawsString,
@as("LoadPermission") loadPermission: loadPermissionModifications,
@as("ProductCodes") productCodes: productCodeStringList,
@as("UserGroups") userGroups: userGroupStringList,
@as("UserIds") userIds: userIdStringList,
@as("OperationType") operationType: operationType,
@as("Attribute") attribute: fpgaImageAttributeName,
@as("FpgaImageId") fpgaImageId: option<fpgaImageId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FpgaImageAttribute") fpgaImageAttribute: fpgaImageAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyFpgaImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayRouteTablePropagations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayRouteTablePropagations") transitGatewayRouteTablePropagations: transitGatewayRouteTablePropagationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayRouteTablePropagationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayRouteTableAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Associations") associations: transitGatewayRouteTableAssociationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayRouteTableAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayPrefixListReferences = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayPrefixListReferences") transitGatewayPrefixListReferences: transitGatewayPrefixListReferenceSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayPrefixListReferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayMulticastDomainAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("MulticastDomainAssociations") multicastDomainAssociations: transitGatewayMulticastDomainAssociationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayMulticastDomainAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayAttachmentPropagations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayAttachmentPropagations") transitGatewayAttachmentPropagations: transitGatewayAttachmentPropagationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayAttachmentPropagationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReservedInstancesExchangeQuote = {
  type t;
  type request = {
@as("TargetConfigurations") targetConfigurations: targetConfigurationRequestSet,
@as("ReservedInstanceIds") reservedInstanceIds: option<reservedInstanceIdSet>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ValidationFailureReason") validationFailureReason: amazonawsString,
@as("TargetConfigurationValueSet") targetConfigurationValueSet: targetReservationValueSet,
@as("TargetConfigurationValueRollup") targetConfigurationValueRollup: reservationValue,
@as("ReservedInstanceValueSet") reservedInstanceValueSet: reservedInstanceReservationValueSet,
@as("ReservedInstanceValueRollup") reservedInstanceValueRollup: reservationValue,
@as("PaymentDue") paymentDue: amazonawsString,
@as("OutputReservedInstancesWillExpireAt") outputReservedInstancesWillExpireAt: dateTime,
@as("IsValidExchange") isValidExchange: amazonawsBoolean,
@as("CurrencyCode") currencyCode: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetReservedInstancesExchangeQuoteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHostReservationPurchasePreview = {
  type t;
  type request = {
@as("OfferingId") offeringId: option<offeringId>,
@as("HostIdSet") hostIdSet: option<requestHostIdSet>
}
  type response = {
@as("TotalUpfrontPrice") totalUpfrontPrice: amazonawsString,
@as("TotalHourlyPrice") totalHourlyPrice: amazonawsString,
@as("Purchase") purchase: purchaseSet,
@as("CurrencyCode") currencyCode: currencyCodeValues
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetHostReservationPurchasePreviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFlowLogsIntegrationTemplate = {
  type t;
  type request = {
@as("IntegrateServices") integrateServices: option<integrateServices>,
@as("ConfigDeliveryS3DestinationArn") configDeliveryS3DestinationArn: option<amazonawsString>,
@as("FlowLogId") flowLogId: option<vpcFlowLogId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Result") result: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetFlowLogsIntegrationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCoipPoolUsage = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: coipPoolMaxResults,
@as("Filters") filters: filterList,
@as("PoolId") poolId: option<coipPoolId>
}
  type response = {
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: amazonawsString,
@as("CoipAddressUsages") coipAddressUsages: coipAddressUsageSet,
@as("CoipPoolId") coipPoolId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetCoipPoolUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportTransitGatewayRoutes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("S3Bucket") s3Bucket: option<amazonawsString>,
@as("Filters") filters: filterList,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("S3Location") s3Location: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ExportTransitGatewayRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateTransitGatewayMulticastDomain = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetIds") subnetIds: transitGatewaySubnetIdList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("Associations") associations: transitGatewayMulticastDomainAssociations
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisassociateTransitGatewayMulticastDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpointServicePermissions = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("AllowedPrincipals") allowedPrincipals: allowedPrincipalSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointServicePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpointConnectionNotifications = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("ConnectionNotificationId") connectionNotificationId: connectionNotificationId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ConnectionNotificationSet") connectionNotificationSet: connectionNotificationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointConnectionNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVolumesModifications = {
  type t;
  type request = {
@as("MaxResults") maxResults: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("VolumeIds") volumeIds: volumeIdStringList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VolumesModifications") volumesModifications: volumeModificationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVolumesModificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Tags") tags: tagDescriptionList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStoreImageTasks = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeStoreImageTasksRequestMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ImageIds") imageIds: imageIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("StoreImageTaskResults") storeImageTaskResults: storeImageTaskResultSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeStoreImageTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotPriceHistory = {
  type t;
  type request = {
@as("StartTime") startTime: dateTime,
@as("ProductDescriptions") productDescriptions: productDescriptionList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("InstanceTypes") instanceTypes: instanceTypeList,
@as("EndTime") endTime: dateTime,
@as("DryRun") dryRun: amazonawsBoolean,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Filters") filters: filterList
}
  type response = {
@as("SpotPriceHistory") spotPriceHistory: spotPriceHistoryList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotPriceHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotFleetRequestHistory = {
  type t;
  type request = {
@as("StartTime") startTime: option<dateTime>,
@as("SpotFleetRequestId") spotFleetRequestId: option<spotFleetRequestId>,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeSpotFleetRequestHistoryMaxResults,
@as("EventType") eventType: eventType,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("StartTime") startTime: dateTime,
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("LastEvaluatedTime") lastEvaluatedTime: dateTime,
@as("HistoryRecords") historyRecords: historyRecords
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotFleetRequestHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegions = {
  type t;
  type request = {
@as("AllRegions") allRegions: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("RegionNames") regionNames: regionNameStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("Regions") regions: regionList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeRegionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePrefixLists = {
  type t;
  type request = {
@as("PrefixListIds") prefixListIds: prefixListResourceIdStringList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixLists") prefixLists: prefixListSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribePrefixListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkInterfacePermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeNetworkInterfacePermissionsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("NetworkInterfacePermissionIds") networkInterfacePermissionIds: networkInterfacePermissionIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NetworkInterfacePermissions") networkInterfacePermissions: networkInterfacePermissionList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkInterfacePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMovingAddresses = {
  type t;
  type request = {
@as("PublicIps") publicIps: valueStringList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeMovingAddressesMaxResults,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("MovingAddressStatuses") movingAddressStatuses: movingAddressStatusSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeMovingAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceTypeOfferings = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: dITOMaxResults,
@as("Filters") filters: filterList,
@as("LocationType") locationType: locationType,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("InstanceTypeOfferings") instanceTypeOfferings: instanceTypeOfferingsList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceTypeOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceCreditSpecifications = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeInstanceCreditSpecificationsMaxResults,
@as("InstanceIds") instanceIds: instanceIdStringList,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("InstanceCreditSpecifications") instanceCreditSpecifications: instanceCreditSpecificationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceCreditSpecificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceAttribute = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Attribute") attribute: option<instanceAttributeName>
}
  type response = {
@as("UserData") userData: attributeValue,
@as("SriovNetSupport") sriovNetSupport: attributeValue,
@as("SourceDestCheck") sourceDestCheck: attributeBooleanValue,
@as("RootDeviceName") rootDeviceName: attributeValue,
@as("RamdiskId") ramdiskId: attributeValue,
@as("ProductCodes") productCodes: productCodeList,
@as("KernelId") kernelId: attributeValue,
@as("InstanceType") instanceType: attributeValue,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: attributeValue,
@as("InstanceId") instanceId: amazonawsString,
@as("EbsOptimized") ebsOptimized: attributeBooleanValue,
@as("EnclaveOptions") enclaveOptions: enclaveOptions,
@as("EnaSupport") enaSupport: attributeBooleanValue,
@as("DisableApiTermination") disableApiTermination: attributeBooleanValue,
@as("BlockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappingList,
@as("Groups") groups: groupIdentifierList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImageAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ImageId") imageId: option<imageId>,
@as("Attribute") attribute: option<imageAttributeName>
}
  type response = {
@as("BootMode") bootMode: attributeValue,
@as("SriovNetSupport") sriovNetSupport: attributeValue,
@as("RamdiskId") ramdiskId: attributeValue,
@as("KernelId") kernelId: attributeValue,
@as("Description") description: attributeValue,
@as("ProductCodes") productCodes: productCodeList,
@as("LaunchPermissions") launchPermissions: launchPermissionList,
@as("ImageId") imageId: amazonawsString,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIamInstanceProfileAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeIamInstanceProfileAssociationsMaxResults,
@as("Filters") filters: filterList,
@as("AssociationIds") associationIds: associationIdList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("IamInstanceProfileAssociations") iamInstanceProfileAssociations: iamInstanceProfileAssociationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeIamInstanceProfileAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHostReservationOfferings = {
  type t;
  type request = {
@as("OfferingId") offeringId: offeringId,
@as("NextToken") nextToken: amazonawsString,
@as("MinDuration") minDuration: amazonawsInteger,
@as("MaxResults") maxResults: describeHostReservationsMaxResults,
@as("MaxDuration") maxDuration: amazonawsInteger,
@as("Filter") filter: filterList
}
  type response = {
@as("OfferingSet") offeringSet: hostOfferingSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeHostReservationOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFpgaImageAttribute = {
  type t;
  type request = {
@as("Attribute") attribute: option<fpgaImageAttributeName>,
@as("FpgaImageId") fpgaImageId: option<fpgaImageId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FpgaImageAttribute") fpgaImageAttribute: fpgaImageAttribute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFpgaImageAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetInstances = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("FleetId") fleetId: option<fleetId>,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FleetId") fleetId: fleetId,
@as("NextToken") nextToken: amazonawsString,
@as("ActiveInstances") activeInstances: activeInstanceSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFleetInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetHistory = {
  type t;
  type request = {
@as("StartTime") startTime: option<dateTime>,
@as("FleetId") fleetId: option<fleetId>,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("EventType") eventType: fleetEventType,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("StartTime") startTime: dateTime,
@as("FleetId") fleetId: fleetId,
@as("NextToken") nextToken: amazonawsString,
@as("LastEvaluatedTime") lastEvaluatedTime: dateTime,
@as("HistoryRecords") historyRecords: historyRecordSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFleetHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFastSnapshotRestores = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeFastSnapshotRestoresMaxResults,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("FastSnapshotRestores") fastSnapshotRestores: describeFastSnapshotRestoreSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFastSnapshotRestoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientVpnTargetNetworks = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeClientVpnTargetNetworksMaxResults,
@as("AssociationIds") associationIds: valueStringList,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ClientVpnTargetNetworks") clientVpnTargetNetworks: targetNetworkSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClientVpnTargetNetworksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientVpnRoutes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeClientVpnRoutesMaxResults,
@as("Filters") filters: filterList,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Routes") routes: clientVpnRouteSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClientVpnRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientVpnConnections = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: describeClientVpnConnectionsMaxResults,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: filterList,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Connections") connections: clientVpnConnectionSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClientVpnConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientVpnAuthorizationRules = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeClientVpnAuthorizationRulesMaxResults,
@as("Filters") filters: filterList,
@as("NextToken") nextToken: nextToken,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientVpnEndpointId") clientVpnEndpointId: option<clientVpnEndpointId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AuthorizationRules") authorizationRules: authorizationRuleSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClientVpnAuthorizationRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddressesAttribute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: addressMaxResults,
@as("NextToken") nextToken: nextToken,
@as("Attribute") attribute: addressAttributeName,
@as("AllocationIds") allocationIds: allocationIds
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Addresses") addresses: addressSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeAddressesAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcEndpoints = {
  type t;
  type request = {
@as("VpcEndpointIds") vpcEndpointIds: option<vpcEndpointIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcEndpointServiceConfigurations = {
  type t;
  type request = {
@as("ServiceIds") serviceIds: option<vpcEndpointServiceIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcEndpointServiceConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVpcEndpointConnectionNotifications = {
  type t;
  type request = {
@as("ConnectionNotificationIds") connectionNotificationIds: option<connectionNotificationIdsList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteVpcEndpointConnectionNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayVpcAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayVpcAttachment") transitGatewayVpcAttachment: transitGatewayVpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayVpcAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayRouteTable = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("TransitGatewayRouteTable") transitGatewayRouteTable: transitGatewayRouteTable
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("Route") route: transitGatewayRoute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayPeeringAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayPeeringAttachment") transitGatewayPeeringAttachment: transitGatewayPeeringAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayPeeringAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayMulticastDomain = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: option<transitGatewayMulticastDomainId>
}
  type response = {
@as("TransitGatewayMulticastDomain") transitGatewayMulticastDomain: transitGatewayMulticastDomain
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayMulticastDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayConnect = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayConnect") transitGatewayConnect: transitGatewayConnect
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayConnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGateway") transitGateway: transitGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteQueuedReservedInstances = {
  type t;
  type request = {
@as("ReservedInstancesIds") reservedInstancesIds: option<deleteQueuedReservedInstancesIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FailedQueuedPurchaseDeletions") failedQueuedPurchaseDeletions: failedQueuedPurchaseDeletionSet,
@as("SuccessfulQueuedPurchaseDeletions") successfulQueuedPurchaseDeletions: successfulQueuedPurchaseDeletionSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteQueuedReservedInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteManagedPrefixList = {
  type t;
  type request = {
@as("PrefixListId") prefixListId: option<prefixListResourceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixList") prefixList: managedPrefixList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteManagedPrefixListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLocalGatewayRouteTableVpcAssociation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("LocalGatewayRouteTableVpcAssociationId") localGatewayRouteTableVpcAssociationId: option<localGatewayRouteTableVpcAssociationId>
}
  type response = {
@as("LocalGatewayRouteTableVpcAssociation") localGatewayRouteTableVpcAssociation: localGatewayRouteTableVpcAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteLocalGatewayRouteTableVpcAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchTemplateVersions = {
  type t;
  type request = {
@as("Versions") versions: option<versionStringList>,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("UnsuccessfullyDeletedLaunchTemplateVersions") unsuccessfullyDeletedLaunchTemplateVersions: deleteLaunchTemplateVersionsResponseErrorSet,
@as("SuccessfullyDeletedLaunchTemplateVersions") successfullyDeletedLaunchTemplateVersions: deleteLaunchTemplateVersionsResponseSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteLaunchTemplateVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLaunchTemplate = {
  type t;
  type request = {
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("LaunchTemplate") launchTemplate: launchTemplate
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteLaunchTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFlowLogs = {
  type t;
  type request = {
@as("FlowLogIds") flowLogIds: option<flowLogIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteFlowLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleets = {
  type t;
  type request = {
@as("TerminateInstances") terminateInstances: option<amazonawsBoolean>,
@as("FleetIds") fleetIds: option<fleetIdSet>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("UnsuccessfulFleetDeletions") unsuccessfulFleetDeletions: deleteFleetErrorSet,
@as("SuccessfulFleetDeletions") successfulFleetDeletions: deleteFleetSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteFleetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCarrierGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("CarrierGatewayId") carrierGatewayId: option<carrierGatewayId>
}
  type response = {
@as("CarrierGateway") carrierGateway: carrierGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteCarrierGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayRoute = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Blackhole") blackhole: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>,
@as("DestinationCidrBlock") destinationCidrBlock: option<amazonawsString>
}
  type response = {
@as("Route") route: transitGatewayRoute
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayRouteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSpotFleetRequests = {
  type t;
  type request = {
@as("TerminateInstances") terminateInstances: option<amazonawsBoolean>,
@as("SpotFleetRequestIds") spotFleetRequestIds: option<spotFleetRequestIdList>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("UnsuccessfulFleetRequests") unsuccessfulFleetRequests: cancelSpotFleetRequestsErrorSet,
@as("SuccessfulFleetRequests") successfulFleetRequests: cancelSpotFleetRequestsSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelSpotFleetRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelBundleTask = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("BundleId") bundleId: option<bundleId>
}
  type response = {
@as("BundleTask") bundleTask: bundleTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelBundleTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BundleInstance = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Storage") storage: option<storage>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("BundleTask") bundleTask: bundleTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "BundleInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateTransitGatewayMulticastDomain = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetIds") subnetIds: transitGatewaySubnetIdList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("Associations") associations: transitGatewayMulticastDomainAssociations
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AssociateTransitGatewayMulticastDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptVpcEndpointConnections = {
  type t;
  type request = {
@as("VpcEndpointIds") vpcEndpointIds: option<vpcEndpointIdList>,
@as("ServiceId") serviceId: option<vpcEndpointServiceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptVpcEndpointConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptTransitGatewayVpcAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayVpcAttachment") transitGatewayVpcAttachment: transitGatewayVpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptTransitGatewayVpcAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptTransitGatewayPeeringAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayPeeringAttachment") transitGatewayPeeringAttachment: transitGatewayPeeringAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptTransitGatewayPeeringAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptTransitGatewayMulticastDomainAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetIds") subnetIds: valueStringList,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: transitGatewayAttachmentId,
@as("TransitGatewayMulticastDomainId") transitGatewayMulticastDomainId: transitGatewayMulticastDomainId
}
  type response = {
@as("Associations") associations: transitGatewayMulticastDomainAssociations
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptTransitGatewayMulticastDomainAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSecurityGroupRuleDescriptionsIngress = {
  type t;
  type request = {
@as("IpPermissions") ipPermissions: option<ipPermissionList>,
@as("GroupName") groupName: securityGroupName,
@as("GroupId") groupId: securityGroupId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "UpdateSecurityGroupRuleDescriptionsIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSecurityGroupRuleDescriptionsEgress = {
  type t;
  type request = {
@as("IpPermissions") ipPermissions: option<ipPermissionList>,
@as("GroupName") groupName: securityGroupName,
@as("GroupId") groupId: securityGroupId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "UpdateSecurityGroupRuleDescriptionsEgressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchTransitGatewayRoutes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: option<filterList>,
@as("TransitGatewayRouteTableId") transitGatewayRouteTableId: option<transitGatewayRouteTableId>
}
  type response = {
@as("AdditionalRoutesAvailable") additionalRoutesAvailable: amazonawsBoolean,
@as("Routes") routes: transitGatewayRouteList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "SearchTransitGatewayRoutesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeSecurityGroupIngress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ToPort") toPort: amazonawsInteger,
@as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: amazonawsString,
@as("SourceSecurityGroupName") sourceSecurityGroupName: amazonawsString,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("IpPermissions") ipPermissions: ipPermissionList,
@as("GroupName") groupName: securityGroupName,
@as("GroupId") groupId: securityGroupId,
@as("FromPort") fromPort: amazonawsInteger,
@as("CidrIp") cidrIp: amazonawsString
}
  type response = {
@as("UnknownIpPermissions") unknownIpPermissions: ipPermissionList,
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RevokeSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeSecurityGroupEgress = {
  type t;
  type request = {
@as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: amazonawsString,
@as("SourceSecurityGroupName") sourceSecurityGroupName: amazonawsString,
@as("ToPort") toPort: amazonawsInteger,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("FromPort") fromPort: amazonawsInteger,
@as("CidrIp") cidrIp: amazonawsString,
@as("IpPermissions") ipPermissions: ipPermissionList,
@as("GroupId") groupId: option<securityGroupId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("UnknownIpPermissions") unknownIpPermissions: ipPermissionList,
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RevokeSecurityGroupEgressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseScheduledInstances = {
  type t;
  type request = {
@as("PurchaseRequests") purchaseRequests: option<purchaseRequestSet>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("ScheduledInstanceSet") scheduledInstanceSet: purchasedScheduledInstanceSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "PurchaseScheduledInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseHostReservation = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("OfferingId") offeringId: option<offeringId>,
@as("LimitPrice") limitPrice: amazonawsString,
@as("HostIdSet") hostIdSet: option<requestHostIdSet>,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("TotalUpfrontPrice") totalUpfrontPrice: amazonawsString,
@as("TotalHourlyPrice") totalHourlyPrice: amazonawsString,
@as("Purchase") purchase: purchaseSet,
@as("CurrencyCode") currencyCode: currencyCodeValues,
@as("ClientToken") clientToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "PurchaseHostReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ProvisionByoipCidr = {
  type t;
  type request = {
@as("PoolTagSpecifications") poolTagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("PubliclyAdvertisable") publiclyAdvertisable: amazonawsBoolean,
@as("CidrAuthorizationContext") cidrAuthorizationContext: cidrAuthorizationContext,
@as("Cidr") cidr: option<amazonawsString>
}
  type response = {
@as("ByoipCidr") byoipCidr: byoipCidr
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ProvisionByoipCidrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyTrafficMirrorFilterNetworkServices = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RemoveNetworkServices") removeNetworkServices: trafficMirrorNetworkServiceList,
@as("AddNetworkServices") addNetworkServices: trafficMirrorNetworkServiceList,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: option<trafficMirrorFilterId>
}
  type response = {
@as("TrafficMirrorFilter") trafficMirrorFilter: trafficMirrorFilter
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyTrafficMirrorFilterNetworkServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySpotFleetRequest = {
  type t;
  type request = {
@as("OnDemandTargetCapacity") onDemandTargetCapacity: amazonawsInteger,
@as("TargetCapacity") targetCapacity: amazonawsInteger,
@as("SpotFleetRequestId") spotFleetRequestId: option<spotFleetRequestId>,
@as("LaunchTemplateConfigs") launchTemplateConfigs: launchTemplateConfigList,
@as("ExcessCapacityTerminationPolicy") excessCapacityTerminationPolicy: excessCapacityTerminationPolicy
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifySpotFleetRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportSnapshot = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("RoleName") roleName: amazonawsString,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DiskContainer") diskContainer: snapshotDiskContainer,
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: amazonawsString,
@as("ClientData") clientData: clientData
}
  type response = {
@as("Tags") tags: tagList,
@as("SnapshotTaskDetail") snapshotTaskDetail: snapshotTaskDetail,
@as("ImportTaskId") importTaskId: amazonawsString,
@as("Description") description: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportKeyPair = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("PublicKeyMaterial") publicKeyMaterial: option<blob>,
@as("KeyName") keyName: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Tags") tags: tagList,
@as("KeyPairId") keyPairId: amazonawsString,
@as("KeyName") keyName: amazonawsString,
@as("KeyFingerprint") keyFingerprint: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportImage = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("LicenseSpecifications") licenseSpecifications: importImageLicenseSpecificationListRequest,
@as("RoleName") roleName: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("LicenseType") licenseType: amazonawsString,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Hypervisor") hypervisor: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DiskContainers") diskContainers: imageDiskContainerList,
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: amazonawsString,
@as("ClientData") clientData: clientData,
@as("Architecture") architecture: amazonawsString
}
  type response = {
@as("Tags") tags: tagList,
@as("LicenseSpecifications") licenseSpecifications: importImageLicenseSpecificationListResponse,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("SnapshotDetails") snapshotDetails: snapshotDetailList,
@as("Progress") progress: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("LicenseType") licenseType: amazonawsString,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("ImportTaskId") importTaskId: importImageTaskId,
@as("ImageId") imageId: amazonawsString,
@as("Hypervisor") hypervisor: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("Architecture") architecture: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportImage = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("RoleName") roleName: amazonawsString,
@as("S3ExportLocation") s3ExportLocation: option<exportTaskS3LocationRequest>,
@as("ImageId") imageId: option<imageId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DiskImageFormat") diskImageFormat: option<diskImageFormat>,
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("Tags") tags: tagList,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("S3ExportLocation") s3ExportLocation: exportTaskS3Location,
@as("Progress") progress: amazonawsString,
@as("RoleName") roleName: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("ExportImageTaskId") exportImageTaskId: amazonawsString,
@as("DiskImageFormat") diskImageFormat: diskImageFormat,
@as("Description") description: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ExportImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpnGateways = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnGatewayIds") vpnGatewayIds: vpnGatewayIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("VpnGateways") vpnGateways: vpnGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpnGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpoints = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("VpcEndpointIds") vpcEndpointIds: vpcEndpointIdList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VpcEndpoints") vpcEndpoints: vpcEndpointSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpointServices = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("ServiceNames") serviceNames: valueStringList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ServiceDetails") serviceDetails: serviceDetailSet,
@as("ServiceNames") serviceNames: valueStringList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpointServiceConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("ServiceIds") serviceIds: vpcEndpointServiceIdList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ServiceConfigurations") serviceConfigurations: serviceConfigurationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointServiceConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcEndpointConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VpcEndpointConnections") vpcEndpointConnections: vpcEndpointConnectionSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcEndpointConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcClassicLink = {
  type t;
  type request = {
@as("VpcIds") vpcIds: vpcClassicLinkIdList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("Vpcs") vpcs: vpcClassicLinkList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcClassicLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVolumes = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeIds") volumeIds: volumeIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Volumes") volumes: volumeList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVolumesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGateways = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayIds") transitGatewayIds: transitGatewayIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGateways") transitGateways: transitGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayVpcAttachments = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayAttachmentIds") transitGatewayAttachmentIds: transitGatewayAttachmentIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayVpcAttachments") transitGatewayVpcAttachments: transitGatewayVpcAttachmentList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayVpcAttachmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayRouteTables = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayRouteTableIds") transitGatewayRouteTableIds: transitGatewayRouteTableIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayRouteTables") transitGatewayRouteTables: transitGatewayRouteTableList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayRouteTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayPeeringAttachments = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayAttachmentIds") transitGatewayAttachmentIds: transitGatewayAttachmentIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayPeeringAttachments") transitGatewayPeeringAttachments: transitGatewayPeeringAttachmentList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayPeeringAttachmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayMulticastDomains = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayMulticastDomainIds") transitGatewayMulticastDomainIds: transitGatewayMulticastDomainIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayMulticastDomains") transitGatewayMulticastDomains: transitGatewayMulticastDomainList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayMulticastDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayConnects = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayAttachmentIds") transitGatewayAttachmentIds: transitGatewayAttachmentIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayConnects") transitGatewayConnects: transitGatewayConnectList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayConnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayAttachments = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayAttachmentIds") transitGatewayAttachmentIds: transitGatewayAttachmentIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayAttachments") transitGatewayAttachments: transitGatewayAttachmentList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayAttachmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrafficMirrorTargets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: trafficMirroringMaxResults,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorTargetIds") trafficMirrorTargetIds: trafficMirrorTargetIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TrafficMirrorTargets") trafficMirrorTargets: trafficMirrorTargetSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTrafficMirrorTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrafficMirrorSessions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: trafficMirroringMaxResults,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorSessionIds") trafficMirrorSessionIds: trafficMirrorSessionIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TrafficMirrorSessions") trafficMirrorSessions: trafficMirrorSessionSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTrafficMirrorSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshots = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SnapshotIds") snapshotIds: snapshotIdStringList,
@as("RestorableByUserIds") restorableByUserIds: restorableByStringList,
@as("OwnerIds") ownerIds: ownerStringList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Snapshots") snapshots: snapshotList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledInstances = {
  type t;
  type request = {
@as("SlotStartTimeRange") slotStartTimeRange: slotStartTimeRangeRequest,
@as("ScheduledInstanceIds") scheduledInstanceIds: scheduledInstanceIdRequestSet,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ScheduledInstanceSet") scheduledInstanceSet: scheduledInstanceSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeScheduledInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledInstanceAvailability = {
  type t;
  type request = {
@as("Recurrence") recurrence: option<scheduledInstanceRecurrenceRequest>,
@as("NextToken") nextToken: amazonawsString,
@as("MinSlotDurationInHours") minSlotDurationInHours: amazonawsInteger,
@as("MaxSlotDurationInHours") maxSlotDurationInHours: amazonawsInteger,
@as("MaxResults") maxResults: describeScheduledInstanceAvailabilityMaxResults,
@as("FirstSlotStartTimeRange") firstSlotStartTimeRange: option<slotDateTimeRangeRequest>,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ScheduledInstanceAvailabilitySet") scheduledInstanceAvailabilitySet: scheduledInstanceAvailabilitySet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeScheduledInstanceAvailabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedInstancesOfferings = {
  type t;
  type request = {
@as("OfferingType") offeringType: offeringTypeValues,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("InstanceTenancy") instanceTenancy: tenancy,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ReservedInstancesOfferingIds") reservedInstancesOfferingIds: reservedInstancesOfferingIdStringList,
@as("ProductDescription") productDescription: rIProductDescription,
@as("OfferingClass") offeringClass: offeringClassType,
@as("MinDuration") minDuration: amazonawsLong,
@as("MaxInstanceCount") maxInstanceCount: amazonawsInteger,
@as("MaxDuration") maxDuration: amazonawsLong,
@as("InstanceType") instanceType: instanceType,
@as("IncludeMarketplace") includeMarketplace: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ReservedInstancesOfferings") reservedInstancesOfferings: reservedInstancesOfferingList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedInstancesOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedInstancesListings = {
  type t;
  type request = {
@as("ReservedInstancesListingId") reservedInstancesListingId: reservedInstancesListingId,
@as("ReservedInstancesId") reservedInstancesId: reservationId,
@as("Filters") filters: filterList
}
  type response = {
@as("ReservedInstancesListings") reservedInstancesListings: reservedInstancesListingList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedInstancesListingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedInstances = {
  type t;
  type request = {
@as("OfferingType") offeringType: offeringTypeValues,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ReservedInstancesIds") reservedInstancesIds: reservedInstancesIdStringList,
@as("OfferingClass") offeringClass: offeringClassType,
@as("Filters") filters: filterList
}
  type response = {
@as("ReservedInstances") reservedInstances: reservedInstancesList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplaceRootVolumeTasks = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeReplaceRootVolumeTasksMaxResults,
@as("Filters") filters: filterList,
@as("ReplaceRootVolumeTaskIds") replaceRootVolumeTaskIds: replaceRootVolumeTaskIds
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ReplaceRootVolumeTasks") replaceRootVolumeTasks: replaceRootVolumeTasks
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplaceRootVolumeTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePublicIpv4Pools = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: poolMaxResults,
@as("NextToken") nextToken: nextToken,
@as("PoolIds") poolIds: publicIpv4PoolIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PublicIpv4Pools") publicIpv4Pools: publicIpv4PoolSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribePublicIpv4PoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePrincipalIdFormat = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describePrincipalIdFormatMaxResults,
@as("Resources") resources: resourceList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Principals") principals: principalIdFormatList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribePrincipalIdFormatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePlacementGroups = {
  type t;
  type request = {
@as("GroupIds") groupIds: placementGroupIdStringList,
@as("GroupNames") groupNames: placementGroupStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("PlacementGroups") placementGroups: placementGroupList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribePlacementGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkInsightsPaths = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: networkInsightsMaxResults,
@as("Filters") filters: filterList,
@as("NetworkInsightsPathIds") networkInsightsPathIds: networkInsightsPathIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NetworkInsightsPaths") networkInsightsPaths: networkInsightsPathList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkInsightsPathsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNatGateways = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("NatGatewayIds") natGatewayIds: natGatewayIdStringList,
@as("MaxResults") maxResults: describeNatGatewaysMaxResults,
@as("Filter") filter: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NatGateways") natGateways: natGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNatGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeManagedPrefixLists = {
  type t;
  type request = {
@as("PrefixListIds") prefixListIds: valueStringList,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: prefixListMaxResults,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixLists") prefixLists: managedPrefixListSet,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeManagedPrefixListsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGateways = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayIds") localGatewayIds: localGatewayIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGateways") localGateways: localGatewaySet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGatewayVirtualInterfaces = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayVirtualInterfaceIds") localGatewayVirtualInterfaceIds: localGatewayVirtualInterfaceIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGatewayVirtualInterfaces") localGatewayVirtualInterfaces: localGatewayVirtualInterfaceSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewayVirtualInterfacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGatewayVirtualInterfaceGroups = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayVirtualInterfaceGroupIds") localGatewayVirtualInterfaceGroupIds: localGatewayVirtualInterfaceGroupIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGatewayVirtualInterfaceGroups") localGatewayVirtualInterfaceGroups: localGatewayVirtualInterfaceGroupSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewayVirtualInterfaceGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGatewayRouteTables = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayRouteTableIds") localGatewayRouteTableIds: localGatewayRouteTableIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGatewayRouteTables") localGatewayRouteTables: localGatewayRouteTableSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewayRouteTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGatewayRouteTableVpcAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayRouteTableVpcAssociationIds") localGatewayRouteTableVpcAssociationIds: localGatewayRouteTableVpcAssociationIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGatewayRouteTableVpcAssociations") localGatewayRouteTableVpcAssociations: localGatewayRouteTableVpcAssociationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewayRouteTableVpcAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: localGatewayMaxResults,
@as("Filters") filters: filterList,
@as("LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds") localGatewayRouteTableVirtualInterfaceGroupAssociationIds: localGatewayRouteTableVirtualInterfaceGroupAssociationIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LocalGatewayRouteTableVirtualInterfaceGroupAssociations") localGatewayRouteTableVirtualInterfaceGroupAssociations: localGatewayRouteTableVirtualInterfaceGroupAssociationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLaunchTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeLaunchTemplatesMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("LaunchTemplateNames") launchTemplateNames: launchTemplateNameStringList,
@as("LaunchTemplateIds") launchTemplateIds: launchTemplateIdStringList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LaunchTemplates") launchTemplates: launchTemplateSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLaunchTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeKeyPairs = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("KeyPairIds") keyPairIds: keyPairIdStringList,
@as("KeyNames") keyNames: keyNameStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("KeyPairs") keyPairs: keyPairList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeKeyPairsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIpv6Pools = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: ipv6PoolMaxResults,
@as("NextToken") nextToken: nextToken,
@as("PoolIds") poolIds: ipv6PoolIdList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Ipv6Pools") ipv6Pools: ipv6PoolSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeIpv6PoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInternetGateways = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeInternetGatewaysMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("InternetGatewayIds") internetGatewayIds: internetGatewayIdList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("InternetGateways") internetGateways: internetGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInternetGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImportSnapshotTasks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("ImportTaskIds") importTaskIds: importSnapshotTaskIdList,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ImportSnapshotTasks") importSnapshotTasks: importSnapshotTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeImportSnapshotTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHostReservations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("HostReservationIdSet") hostReservationIdSet: hostReservationIdSet,
@as("Filter") filter: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("HostReservationSet") hostReservationSet: hostReservationSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeHostReservationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFpgaImages = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeFpgaImagesMaxResults,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: filterList,
@as("Owners") owners: ownerStringList,
@as("FpgaImageIds") fpgaImageIds: fpgaImageIdList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("FpgaImages") fpgaImages: fpgaImageList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFpgaImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFlowLogs = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("FlowLogIds") flowLogIds: flowLogIdList,
@as("Filter") filter: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("FlowLogs") flowLogs: flowLogSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFlowLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportTasks = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("ExportTaskIds") exportTaskIds: exportTaskIdStringList
}
  type response = {
@as("ExportTasks") exportTasks: exportTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportImageTasks = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeExportImageTasksMaxResults,
@as("ExportImageTaskIds") exportImageTaskIds: exportImageTaskIdList,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ExportImageTasks") exportImageTasks: exportImageTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportImageTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticGpus = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeElasticGpusMaxResults,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ElasticGpuIds") elasticGpuIds: elasticGpuIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("ElasticGpuSet") elasticGpuSet: elasticGpuSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticGpusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEgressOnlyInternetGateways = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeEgressOnlyInternetGatewaysMaxResults,
@as("EgressOnlyInternetGatewayIds") egressOnlyInternetGatewayIds: egressOnlyInternetGatewayIdList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EgressOnlyInternetGateways") egressOnlyInternetGateways: egressOnlyInternetGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeEgressOnlyInternetGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomerGateways = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("CustomerGatewayIds") customerGatewayIds: customerGatewayIdStringList
}
  type response = {
@as("CustomerGateways") customerGateways: customerGatewayList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomerGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCoipPools = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: coipPoolMaxResults,
@as("Filters") filters: filterList,
@as("PoolIds") poolIds: coipPoolIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("CoipPools") coipPools: coipPoolSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeCoipPoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClassicLinkInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: describeClassicLinkInstancesMaxResults,
@as("InstanceIds") instanceIds: instanceIdStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Instances") instances: classicLinkInstanceList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClassicLinkInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCarrierGateways = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: carrierGatewayMaxResults,
@as("Filters") filters: filterList,
@as("CarrierGatewayIds") carrierGatewayIds: carrierGatewayIdSet
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("CarrierGateways") carrierGateways: carrierGatewaySet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeCarrierGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCapacityReservations = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: describeCapacityReservationsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("CapacityReservationIds") capacityReservationIds: capacityReservationIdSet
}
  type response = {
@as("CapacityReservations") capacityReservations: capacityReservationSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeCapacityReservationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBundleTasks = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("BundleIds") bundleIds: bundleIdStringList
}
  type response = {
@as("BundleTasks") bundleTasks: bundleTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeBundleTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAvailabilityZones = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AllAvailabilityZones") allAvailabilityZones: amazonawsBoolean,
@as("ZoneIds") zoneIds: zoneIdStringList,
@as("ZoneNames") zoneNames: zoneNameStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("AvailabilityZones") availabilityZones: availabilityZoneList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeAvailabilityZonesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddresses = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AllocationIds") allocationIds: allocationIdList,
@as("PublicIps") publicIps: publicIpStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("Addresses") addresses: addressList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AttributeNames") attributeNames: accountAttributeNameStringList
}
  type response = {
@as("AccountAttributes") accountAttributes: accountAttributeList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTransitGatewayConnectPeer = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayConnectPeerId") transitGatewayConnectPeerId: option<transitGatewayConnectPeerId>
}
  type response = {
@as("TransitGatewayConnectPeer") transitGatewayConnectPeer: transitGatewayConnectPeer
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DeleteTransitGatewayConnectPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpnGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AmazonSideAsn") amazonSideAsn: amazonawsLong,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Type") type_: option<gatewayType>,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
  type response = {
@as("VpnGateway") vpnGateway: vpnGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpnGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcPeeringConnection = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("PeerRegion") peerRegion: amazonawsString,
@as("VpcId") vpcId: vpcId,
@as("PeerVpcId") peerVpcId: amazonawsString,
@as("PeerOwnerId") peerOwnerId: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("VpcPeeringConnection") vpcPeeringConnection: vpcPeeringConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcEndpointServiceConfiguration = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ClientToken") clientToken: amazonawsString,
@as("GatewayLoadBalancerArns") gatewayLoadBalancerArns: valueStringList,
@as("NetworkLoadBalancerArns") networkLoadBalancerArns: valueStringList,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("AcceptanceRequired") acceptanceRequired: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("ServiceConfiguration") serviceConfiguration: serviceConfiguration
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcEndpointServiceConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpcEndpoint = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("PrivateDnsEnabled") privateDnsEnabled: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: vpcEndpointSecurityGroupIdList,
@as("SubnetIds") subnetIds: vpcEndpointSubnetIdList,
@as("RouteTableIds") routeTableIds: vpcEndpointRouteTableIdList,
@as("PolicyDocument") policyDocument: amazonawsString,
@as("ServiceName") serviceName: option<amazonawsString>,
@as("VpcId") vpcId: option<vpcId>,
@as("VpcEndpointType") vpcEndpointType: vpcEndpointType,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("VpcEndpoint") vpcEndpoint: vpcEndpoint
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpc = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Ipv6CidrBlockNetworkBorderGroup") ipv6CidrBlockNetworkBorderGroup: amazonawsString,
@as("InstanceTenancy") instanceTenancy: tenancy,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("Ipv6Pool") ipv6Pool: ipv6PoolEc2Id,
@as("AmazonProvidedIpv6CidrBlock") amazonProvidedIpv6CidrBlock: amazonawsBoolean,
@as("CidrBlock") cidrBlock: option<amazonawsString>
}
  type response = {
@as("Vpc") vpc: vpc
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVolume = {
  type t;
  type request = {
@as("Throughput") throughput: amazonawsInteger,
@as("MultiAttachEnabled") multiAttachEnabled: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeType") volumeType: volumeType,
@as("SnapshotId") snapshotId: snapshotId,
@as("Size") size: amazonawsInteger,
@as("OutpostArn") outpostArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Iops") iops: amazonawsInteger,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("AvailabilityZone") availabilityZone: option<amazonawsString>
}
  type response = volume;
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayVpcAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Options") options: createTransitGatewayVpcAttachmentRequestOptions,
@as("SubnetIds") subnetIds: option<transitGatewaySubnetIdList>,
@as("VpcId") vpcId: option<vpcId>,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGatewayVpcAttachment") transitGatewayVpcAttachment: transitGatewayVpcAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayVpcAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayRouteTable = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGatewayRouteTable") transitGatewayRouteTable: transitGatewayRouteTable
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayPeeringAttachment = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("PeerRegion") peerRegion: option<amazonawsString>,
@as("PeerAccountId") peerAccountId: option<amazonawsString>,
@as("PeerTransitGatewayId") peerTransitGatewayId: option<transitAssociationGatewayId>,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGatewayPeeringAttachment") transitGatewayPeeringAttachment: transitGatewayPeeringAttachment
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayPeeringAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayMulticastDomain = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Options") options: createTransitGatewayMulticastDomainRequestOptions,
@as("TransitGatewayId") transitGatewayId: option<transitGatewayId>
}
  type response = {
@as("TransitGatewayMulticastDomain") transitGatewayMulticastDomain: transitGatewayMulticastDomain
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayMulticastDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayConnectPeer = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("InsideCidrBlocks") insideCidrBlocks: option<insideCidrBlocksStringList>,
@as("BgpOptions") bgpOptions: transitGatewayConnectRequestBgpOptions,
@as("PeerAddress") peerAddress: option<amazonawsString>,
@as("TransitGatewayAddress") transitGatewayAddress: amazonawsString,
@as("TransitGatewayAttachmentId") transitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayConnectPeer") transitGatewayConnectPeer: transitGatewayConnectPeer
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayConnectPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGatewayConnect = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Options") options: option<createTransitGatewayConnectRequestOptions>,
@as("TransportTransitGatewayAttachmentId") transportTransitGatewayAttachmentId: option<transitGatewayAttachmentId>
}
  type response = {
@as("TransitGatewayConnect") transitGatewayConnect: transitGatewayConnect
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayConnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Options") options: transitGatewayRequestOptions,
@as("Description") description: amazonawsString
}
  type response = {
@as("TransitGateway") transitGateway: transitGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficMirrorTarget = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Description") description: amazonawsString,
@as("NetworkLoadBalancerArn") networkLoadBalancerArn: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("TrafficMirrorTarget") trafficMirrorTarget: trafficMirrorTarget
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTrafficMirrorTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficMirrorSession = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Description") description: amazonawsString,
@as("VirtualNetworkId") virtualNetworkId: amazonawsInteger,
@as("SessionNumber") sessionNumber: option<amazonawsInteger>,
@as("PacketLength") packetLength: amazonawsInteger,
@as("TrafficMirrorFilterId") trafficMirrorFilterId: option<trafficMirrorFilterId>,
@as("TrafficMirrorTargetId") trafficMirrorTargetId: option<trafficMirrorTargetId>,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("TrafficMirrorSession") trafficMirrorSession: trafficMirrorSession
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTrafficMirrorSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTrafficMirrorFilter = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Description") description: amazonawsString
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("TrafficMirrorFilter") trafficMirrorFilter: trafficMirrorFilter
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateTrafficMirrorFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubnet = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpcId") vpcId: option<vpcId>,
@as("OutpostArn") outpostArn: amazonawsString,
@as("Ipv6CidrBlock") ipv6CidrBlock: amazonawsString,
@as("CidrBlock") cidrBlock: option<amazonawsString>,
@as("AvailabilityZoneId") availabilityZoneId: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("TagSpecifications") tagSpecifications: tagSpecificationList
}
  type response = {
@as("Subnet") subnet: subnet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateSubnetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshots = {
  type t;
  type request = {
@as("CopyTagsFromSource") copyTagsFromSource: copyTagsFromSource,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("OutpostArn") outpostArn: amazonawsString,
@as("InstanceSpecification") instanceSpecification: option<instanceSpecification>,
@as("Description") description: amazonawsString
}
  type response = {
@as("Snapshots") snapshots: snapshotSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VolumeId") volumeId: option<volumeId>,
@as("OutpostArn") outpostArn: amazonawsString,
@as("Description") description: amazonawsString
}
  type response = snapshot;
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSecurityGroup = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: vpcId,
@as("GroupName") groupName: option<amazonawsString>,
@as("Description") description: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagList,
@as("GroupId") groupId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRouteTable = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: option<vpcId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("RouteTable") routeTable: routeTable
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateRouteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRestoreImageTask = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Name") name: amazonawsString,
@as("ObjectKey") objectKey: option<amazonawsString>,
@as("Bucket") bucket: option<amazonawsString>
}
  type response = {
@as("ImageId") imageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateRestoreImageTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReservedInstancesListing = {
  type t;
  type request = {
@as("ReservedInstancesId") reservedInstancesId: option<reservationId>,
@as("PriceSchedules") priceSchedules: option<priceScheduleSpecificationList>,
@as("InstanceCount") instanceCount: option<amazonawsInteger>,
@as("ClientToken") clientToken: option<amazonawsString>
}
  type response = {
@as("ReservedInstancesListings") reservedInstancesListings: reservedInstancesListingList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateReservedInstancesListingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplaceRootVolumeTask = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("SnapshotId") snapshotId: snapshotId,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("ReplaceRootVolumeTask") replaceRootVolumeTask: replaceRootVolumeTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateReplaceRootVolumeTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlacementGroup = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("PartitionCount") partitionCount: amazonawsInteger,
@as("Strategy") strategy: placementStrategy,
@as("GroupName") groupName: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PlacementGroup") placementGroup: placementGroup
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreatePlacementGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkInterface = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("SubnetId") subnetId: option<subnetId>,
@as("InterfaceType") interfaceType: networkInterfaceCreationType,
@as("SecondaryPrivateIpAddressCount") secondaryPrivateIpAddressCount: amazonawsInteger,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddressSpecificationList,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("Groups") groups: securityGroupIdStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString
}
  type response = {
@as("ClientToken") clientToken: amazonawsString,
@as("NetworkInterface") networkInterface: networkInterface
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkInsightsPath = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DestinationPort") destinationPort: port,
@as("Protocol") protocol: option<protocol>,
@as("Destination") destination: option<amazonawsString>,
@as("Source") source: option<amazonawsString>,
@as("DestinationIp") destinationIp: ipAddress,
@as("SourceIp") sourceIp: ipAddress
}
  type response = {
@as("NetworkInsightsPath") networkInsightsPath: networkInsightsPath
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkInsightsPathCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkAcl = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: option<vpcId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NetworkAcl") networkAcl: networkAcl
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNetworkAclCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNatGateway = {
  type t;
  type request = {
@as("AllocationId") allocationId: option<allocationId>,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("SubnetId") subnetId: option<subnetId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("NatGateway") natGateway: natGateway,
@as("ClientToken") clientToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateNatGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateManagedPrefixList = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("AddressFamily") addressFamily: option<amazonawsString>,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("MaxEntries") maxEntries: option<amazonawsInteger>,
@as("Entries") entries: addPrefixListEntries,
@as("PrefixListName") prefixListName: option<amazonawsString>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("PrefixList") prefixList: managedPrefixList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateManagedPrefixListCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocalGatewayRouteTableVpcAssociation = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: option<vpcId>,
@as("LocalGatewayRouteTableId") localGatewayRouteTableId: option<localGatewayRoutetableId>
}
  type response = {
@as("LocalGatewayRouteTableVpcAssociation") localGatewayRouteTableVpcAssociation: localGatewayRouteTableVpcAssociation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateLocalGatewayRouteTableVpcAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKeyPair = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("KeyName") keyName: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagList,
@as("KeyPairId") keyPairId: amazonawsString,
@as("KeyName") keyName: amazonawsString,
@as("KeyMaterial") keyMaterial: sensitiveUserData,
@as("KeyFingerprint") keyFingerprint: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInternetGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList
}
  type response = {
@as("InternetGateway") internetGateway: internetGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceExportTask = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("TargetEnvironment") targetEnvironment: option<exportEnvironment>,
@as("InstanceId") instanceId: option<instanceId>,
@as("ExportToS3Task") exportToS3Task: option<exportToS3TaskSpecification>,
@as("Description") description: amazonawsString
}
  type response = {
@as("ExportTask") exportTask: exportTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateInstanceExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImage = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("NoReboot") noReboot: amazonawsBoolean,
@as("Name") name: option<amazonawsString>,
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingRequestList
}
  type response = {
@as("ImageId") imageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFpgaImage = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ClientToken") clientToken: amazonawsString,
@as("Name") name: amazonawsString,
@as("Description") description: amazonawsString,
@as("LogsStorageLocation") logsStorageLocation: storageLocation,
@as("InputStorageLocation") inputStorageLocation: option<storageLocation>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("FpgaImageGlobalId") fpgaImageGlobalId: amazonawsString,
@as("FpgaImageId") fpgaImageId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateFpgaImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFlowLogs = {
  type t;
  type request = {
@as("MaxAggregationInterval") maxAggregationInterval: amazonawsInteger,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("LogFormat") logFormat: amazonawsString,
@as("LogDestination") logDestination: amazonawsString,
@as("LogDestinationType") logDestinationType: logDestinationType,
@as("TrafficType") trafficType: option<trafficType>,
@as("ResourceType") resourceType: option<flowLogsResourceType>,
@as("ResourceIds") resourceIds: option<flowLogResourceIds>,
@as("LogGroupName") logGroupName: amazonawsString,
@as("DeliverLogsPermissionArn") deliverLogsPermissionArn: amazonawsString,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Unsuccessful") unsuccessful: unsuccessfulItemSet,
@as("FlowLogIds") flowLogIds: valueStringList,
@as("ClientToken") clientToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateFlowLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEgressOnlyInternetGateway = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: option<vpcId>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("EgressOnlyInternetGateway") egressOnlyInternetGateway: egressOnlyInternetGateway,
@as("ClientToken") clientToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateEgressOnlyInternetGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDefaultVpc = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Vpc") vpc: vpc
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateDefaultVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDefaultSubnet = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("AvailabilityZone") availabilityZone: option<amazonawsString>
}
  type response = {
@as("Subnet") subnet: subnet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateDefaultSubnetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomerGateway = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("DeviceName") deviceName: amazonawsString,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Type") type_: option<gatewayType>,
@as("CertificateArn") certificateArn: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("BgpAsn") bgpAsn: option<amazonawsInteger>
}
  type response = {
@as("CustomerGateway") customerGateway: customerGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomerGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClientVpnEndpoint = {
  type t;
  type request = {
@as("ClientConnectOptions") clientConnectOptions: clientConnectOptions,
@as("SelfServicePortal") selfServicePortal: selfServicePortal,
@as("VpcId") vpcId: vpcId,
@as("SecurityGroupIds") securityGroupIds: clientVpnSecurityGroupIdSet,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("SplitTunnel") splitTunnel: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("VpnPort") vpnPort: amazonawsInteger,
@as("TransportProtocol") transportProtocol: transportProtocol,
@as("DnsServers") dnsServers: valueStringList,
@as("ConnectionLogOptions") connectionLogOptions: option<connectionLogOptions>,
@as("AuthenticationOptions") authenticationOptions: option<clientVpnAuthenticationRequestList>,
@as("ServerCertificateArn") serverCertificateArn: option<amazonawsString>,
@as("ClientCidrBlock") clientCidrBlock: option<amazonawsString>
}
  type response = {
@as("DnsName") dnsName: amazonawsString,
@as("Status") status: clientVpnEndpointStatus,
@as("ClientVpnEndpointId") clientVpnEndpointId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateClientVpnEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCarrierGateway = {
  type t;
  type request = {
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("VpcId") vpcId: option<vpcId>
}
  type response = {
@as("CarrierGateway") carrierGateway: carrierGateway
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateCarrierGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCapacityReservation = {
  type t;
  type request = {
@as("OutpostArn") outpostArn: outpostArn,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("InstanceMatchCriteria") instanceMatchCriteria: instanceMatchCriteria,
@as("EndDateType") endDateType: endDateType,
@as("EndDate") endDate: dateTime,
@as("EphemeralStorage") ephemeralStorage: amazonawsBoolean,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("InstanceCount") instanceCount: option<amazonawsInteger>,
@as("Tenancy") tenancy: capacityReservationTenancy,
@as("AvailabilityZoneId") availabilityZoneId: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("InstancePlatform") instancePlatform: option<capacityReservationInstancePlatform>,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("CapacityReservation") capacityReservation: capacityReservation
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateCapacityReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopySnapshot = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("SourceSnapshotId") sourceSnapshotId: option<amazonawsString>,
@as("SourceRegion") sourceRegion: option<amazonawsString>,
@as("PresignedUrl") presignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("DestinationRegion") destinationRegion: amazonawsString,
@as("DestinationOutpostArn") destinationOutpostArn: amazonawsString,
@as("Description") description: amazonawsString
}
  type response = {
@as("Tags") tags: tagList,
@as("SnapshotId") snapshotId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CopySnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelReservedInstancesListing = {
  type t;
  type request = {
@as("ReservedInstancesListingId") reservedInstancesListingId: option<reservedInstancesListingId>
}
  type response = {
@as("ReservedInstancesListings") reservedInstancesListings: reservedInstancesListingList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CancelReservedInstancesListingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeSecurityGroupIngress = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ToPort") toPort: amazonawsInteger,
@as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: amazonawsString,
@as("SourceSecurityGroupName") sourceSecurityGroupName: amazonawsString,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("IpPermissions") ipPermissions: ipPermissionList,
@as("GroupName") groupName: securityGroupName,
@as("GroupId") groupId: securityGroupId,
@as("FromPort") fromPort: amazonawsInteger,
@as("CidrIp") cidrIp: amazonawsString
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AuthorizeSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AuthorizeSecurityGroupEgress = {
  type t;
  type request = {
@as("SourceSecurityGroupOwnerId") sourceSecurityGroupOwnerId: amazonawsString,
@as("SourceSecurityGroupName") sourceSecurityGroupName: amazonawsString,
@as("ToPort") toPort: amazonawsInteger,
@as("IpProtocol") ipProtocol: amazonawsString,
@as("FromPort") fromPort: amazonawsInteger,
@as("CidrIp") cidrIp: amazonawsString,
@as("IpPermissions") ipPermissions: ipPermissionList,
@as("GroupId") groupId: option<securityGroupId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AuthorizeSecurityGroupEgressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AllocateHosts = {
  type t;
  type request = {
@as("HostRecovery") hostRecovery: hostRecovery,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Quantity") quantity: option<amazonawsInteger>,
@as("InstanceFamily") instanceFamily: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("ClientToken") clientToken: amazonawsString,
@as("AvailabilityZone") availabilityZone: option<amazonawsString>,
@as("AutoPlacement") autoPlacement: autoPlacement
}
  type response = {
@as("HostIds") hostIds: responseHostIdList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AllocateHostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocateAddress = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: amazonawsString,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("PublicIpv4Pool") publicIpv4Pool: ipv4PoolEc2Id,
@as("Address") address: publicIpAddress,
@as("Domain") domain: domainType
}
  type response = {
@as("CarrierIp") carrierIp: amazonawsString,
@as("CustomerOwnedIpv4Pool") customerOwnedIpv4Pool: amazonawsString,
@as("CustomerOwnedIp") customerOwnedIp: amazonawsString,
@as("Domain") domain: domainType,
@as("NetworkBorderGroup") networkBorderGroup: amazonawsString,
@as("PublicIpv4Pool") publicIpv4Pool: amazonawsString,
@as("AllocationId") allocationId: amazonawsString,
@as("PublicIp") publicIp: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AllocateAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptVpcPeeringConnection = {
  type t;
  type request = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: vpcPeeringConnectionId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("VpcPeeringConnection") vpcPeeringConnection: vpcPeeringConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "AcceptVpcPeeringConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RunScheduledInstances = {
  type t;
  type request = {
@as("ScheduledInstanceId") scheduledInstanceId: option<scheduledInstanceId>,
@as("LaunchSpecification") launchSpecification: option<scheduledInstancesLaunchSpecification>,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString
}
  type response = {
@as("InstanceIdSet") instanceIdSet: instanceIdSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RunScheduledInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyFleet = {
  type t;
  type request = {
@as("TargetCapacitySpecification") targetCapacitySpecification: targetCapacitySpecificationRequest,
@as("FleetId") fleetId: option<fleetId>,
@as("LaunchTemplateConfigs") launchTemplateConfigs: fleetLaunchTemplateConfigListRequest,
@as("ExcessCapacityTerminationPolicy") excessCapacityTerminationPolicy: fleetExcessCapacityTerminationPolicy,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Return") return: amazonawsBoolean
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportVolume = {
  type t;
  type request = {
@as("Volume") volume: option<volumeDetail>,
@as("Image") image: option<diskImageDetail>,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("AvailabilityZone") availabilityZone: option<amazonawsString>
}
  type response = {
@as("ConversionTask") conversionTask: conversionTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportInstance = {
  type t;
  type request = {
@as("Platform") platform: option<platformValues>,
@as("LaunchSpecification") launchSpecification: importInstanceLaunchSpecification,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DiskImages") diskImages: diskImageList,
@as("Description") description: amazonawsString
}
  type response = {
@as("ConversionTask") conversionTask: conversionTask
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ImportInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLaunchTemplateData = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<instanceId>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("LaunchTemplateData") launchTemplateData: responseLaunchTemplateData
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "GetLaunchTemplateDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableFastSnapshotRestores = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SourceSnapshotIds") sourceSnapshotIds: option<snapshotIdStringList>,
@as("AvailabilityZones") availabilityZones: option<availabilityZoneStringList>
}
  type response = {
@as("Unsuccessful") unsuccessful: enableFastSnapshotRestoreErrorSet,
@as("Successful") successful: enableFastSnapshotRestoreSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "EnableFastSnapshotRestoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableFastSnapshotRestores = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("SourceSnapshotIds") sourceSnapshotIds: option<snapshotIdStringList>,
@as("AvailabilityZones") availabilityZones: option<availabilityZoneStringList>
}
  type response = {
@as("Unsuccessful") unsuccessful: disableFastSnapshotRestoreErrorSet,
@as("Successful") successful: disableFastSnapshotRestoreSuccessSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DisableFastSnapshotRestoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcs = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeVpcsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpcIds") vpcIds: vpcIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Vpcs") vpcs: vpcList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpcPeeringConnections = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeVpcPeeringConnectionsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("VpcPeeringConnectionIds") vpcPeeringConnectionIds: vpcPeeringConnectionIdList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("VpcPeeringConnections") vpcPeeringConnections: vpcPeeringConnectionList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpcPeeringConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVolumeStatus = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VolumeIds") volumeIds: volumeIdStringList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("Filters") filters: filterList
}
  type response = {
@as("VolumeStatuses") volumeStatuses: volumeStatusList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVolumeStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTransitGatewayConnectPeers = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: transitGatewayMaxResults,
@as("Filters") filters: filterList,
@as("TransitGatewayConnectPeerIds") transitGatewayConnectPeerIds: transitGatewayConnectPeerIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayConnectPeers") transitGatewayConnectPeers: transitGatewayConnectPeerList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTransitGatewayConnectPeersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrafficMirrorFilters = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: trafficMirroringMaxResults,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TrafficMirrorFilterIds") trafficMirrorFilterIds: trafficMirrorFilterIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TrafficMirrorFilters") trafficMirrorFilters: trafficMirrorFilterSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeTrafficMirrorFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSubnets = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeSubnetsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("SubnetIds") subnetIds: subnetIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Subnets") subnets: subnetList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSubnetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRouteTables = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeRouteTablesMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("RouteTableIds") routeTableIds: routeTableIdStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RouteTables") routeTables: routeTableList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeRouteTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedInstancesModifications = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ReservedInstancesModificationIds") reservedInstancesModificationIds: reservedInstancesModificationIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("ReservedInstancesModifications") reservedInstancesModifications: reservedInstancesModificationList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedInstancesModificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkInterfaces = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeNetworkInterfacesMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("NetworkInterfaceIds") networkInterfaceIds: networkInterfaceIdList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NetworkInterfaces") networkInterfaces: networkInterfaceList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkInterfacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkAcls = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeNetworkAclsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("NetworkAclIds") networkAclIds: networkAclIdStringList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NetworkAcls") networkAcls: networkAclList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkAclsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceStatus = {
  type t;
  type request = {
@as("IncludeAllInstances") includeAllInstances: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("InstanceIds") instanceIds: instanceIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("InstanceStatuses") instanceStatuses: instanceStatusList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImportImageTasks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("ImportTaskIds") importTaskIds: importTaskIdList,
@as("Filters") filters: filterList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ImportImageTasks") importImageTasks: importImageTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeImportImageTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeImages = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Owners") owners: ownerStringList,
@as("ImageIds") imageIds: imageIdStringList,
@as("Filters") filters: filterList,
@as("ExecutableUsers") executableUsers: executableByStringList
}
  type response = {
@as("Images") images: imageList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHosts = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("HostIds") hostIds: requestHostIdList,
@as("Filter") filter: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Hosts") hosts: hostList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeHostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClientVpnEndpoints = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: describeClientVpnEndpointMaxResults,
@as("ClientVpnEndpointIds") clientVpnEndpointIds: clientVpnEndpointIdList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ClientVpnEndpoints") clientVpnEndpoints: endpointSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeClientVpnEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchTemplate = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("LaunchTemplateData") launchTemplateData: option<requestLaunchTemplateData>,
@as("VersionDescription") versionDescription: versionDescription,
@as("LaunchTemplateName") launchTemplateName: option<launchTemplateName>,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Warning") warning: validationWarning,
@as("LaunchTemplate") launchTemplate: launchTemplate
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateLaunchTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ReplaceUnhealthyInstances") replaceUnhealthyInstances: amazonawsBoolean,
@as("ValidUntil") validUntil: dateTime,
@as("ValidFrom") validFrom: dateTime,
@as("Type") type_: fleetType,
@as("TerminateInstancesWithExpiration") terminateInstancesWithExpiration: amazonawsBoolean,
@as("TargetCapacitySpecification") targetCapacitySpecification: option<targetCapacitySpecificationRequest>,
@as("LaunchTemplateConfigs") launchTemplateConfigs: option<fleetLaunchTemplateConfigListRequest>,
@as("ExcessCapacityTerminationPolicy") excessCapacityTerminationPolicy: fleetExcessCapacityTerminationPolicy,
@as("OnDemandOptions") onDemandOptions: onDemandOptionsRequest,
@as("SpotOptions") spotOptions: spotOptionsRequest,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Instances") instances: createFleetInstancesSet,
@as("Errors") errors: createFleetErrorsSet,
@as("FleetId") fleetId: fleetId
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDhcpOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DhcpConfigurations") dhcpConfigurations: option<newDhcpConfigurationList>
}
  type response = {
@as("DhcpOptions") dhcpOptions: dhcpOptions
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateDhcpOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartNetworkInsightsAnalysis = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<amazonawsString>,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("FilterInArns") filterInArns: arnList,
@as("NetworkInsightsPathId") networkInsightsPathId: option<networkInsightsPathId>
}
  type response = {
@as("NetworkInsightsAnalysis") networkInsightsAnalysis: networkInsightsAnalysis
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "StartNetworkInsightsAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpnTunnelOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("TunnelOptions") tunnelOptions: option<modifyVpnTunnelOptionsSpecification>,
@as("VpnTunnelOutsideIpAddress") vpnTunnelOutsideIpAddress: option<amazonawsString>,
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>
}
  type response = {
@as("VpnConnection") vpnConnection: vpnConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpnTunnelOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpnTunnelCertificate = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnTunnelOutsideIpAddress") vpnTunnelOutsideIpAddress: option<amazonawsString>,
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>
}
  type response = {
@as("VpnConnection") vpnConnection: vpnConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpnTunnelCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpnConnectionOptions = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("RemoteIpv6NetworkCidr") remoteIpv6NetworkCidr: amazonawsString,
@as("LocalIpv6NetworkCidr") localIpv6NetworkCidr: amazonawsString,
@as("RemoteIpv4NetworkCidr") remoteIpv4NetworkCidr: amazonawsString,
@as("LocalIpv4NetworkCidr") localIpv4NetworkCidr: amazonawsString,
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>
}
  type response = {
@as("VpnConnection") vpnConnection: vpnConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpnConnectionOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyVpnConnection = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnGatewayId") vpnGatewayId: vpnGatewayId,
@as("CustomerGatewayId") customerGatewayId: customerGatewayId,
@as("TransitGatewayId") transitGatewayId: transitGatewayId,
@as("VpnConnectionId") vpnConnectionId: option<vpnConnectionId>
}
  type response = {
@as("VpnConnection") vpnConnection: vpnConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "ModifyVpnConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStaleSecurityGroups = {
  type t;
  type request = {
@as("VpcId") vpcId: option<vpcId>,
@as("NextToken") nextToken: describeStaleSecurityGroupsNextToken,
@as("MaxResults") maxResults: describeStaleSecurityGroupsMaxResults,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("StaleSecurityGroupSet") staleSecurityGroupSet: staleSecurityGroupSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeStaleSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSecurityGroups = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeSecurityGroupsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("GroupNames") groupNames: groupNameStringList,
@as("GroupIds") groupIds: groupIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SecurityGroups") securityGroups: securityGroupList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstanceTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: dITMaxResults,
@as("Filters") filters: filterList,
@as("InstanceTypes") instanceTypes: requestInstanceTypeList,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("InstanceTypes") instanceTypes: instanceTypeInfoList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstanceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDhcpOptions = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeDhcpOptionsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList,
@as("DhcpOptionsIds") dhcpOptionsIds: dhcpOptionsIdStringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DhcpOptions") dhcpOptions: dhcpOptionsList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeDhcpOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConversionTasks = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("ConversionTaskIds") conversionTaskIds: conversionIdStringList
}
  type response = {
@as("ConversionTasks") conversionTasks: describeConversionTaskList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeConversionTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVpnConnection = {
  type t;
  type request = {
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("Options") options: vpnConnectionOptionsSpecification,
@as("DryRun") dryRun: amazonawsBoolean,
@as("TransitGatewayId") transitGatewayId: transitGatewayId,
@as("VpnGatewayId") vpnGatewayId: vpnGatewayId,
@as("Type") type_: option<amazonawsString>,
@as("CustomerGatewayId") customerGatewayId: option<customerGatewayId>
}
  type response = {
@as("VpnConnection") vpnConnection: vpnConnection
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateVpnConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLaunchTemplateVersion = {
  type t;
  type request = {
@as("LaunchTemplateData") launchTemplateData: option<requestLaunchTemplateData>,
@as("VersionDescription") versionDescription: versionDescription,
@as("SourceVersion") sourceVersion: amazonawsString,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId,
@as("ClientToken") clientToken: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Warning") warning: validationWarning,
@as("LaunchTemplateVersion") launchTemplateVersion: launchTemplateVersion
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "CreateLaunchTemplateVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RunInstances = {
  type t;
  type request = {
@as("EnclaveOptions") enclaveOptions: enclaveOptionsRequest,
@as("MetadataOptions") metadataOptions: instanceMetadataOptionsRequest,
@as("LicenseSpecifications") licenseSpecifications: licenseSpecificationListRequest,
@as("HibernationOptions") hibernationOptions: hibernationOptionsRequest,
@as("CapacityReservationSpecification") capacityReservationSpecification: capacityReservationSpecification,
@as("CpuOptions") cpuOptions: cpuOptionsRequest,
@as("CreditSpecification") creditSpecification: creditSpecificationRequest,
@as("InstanceMarketOptions") instanceMarketOptions: instanceMarketOptionsRequest,
@as("LaunchTemplate") launchTemplate: launchTemplateSpecification,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ElasticInferenceAccelerators") elasticInferenceAccelerators: elasticInferenceAccelerators,
@as("ElasticGpuSpecification") elasticGpuSpecification: elasticGpuSpecifications,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("NetworkInterfaces") networkInterfaces: instanceNetworkInterfaceSpecificationList,
@as("InstanceInitiatedShutdownBehavior") instanceInitiatedShutdownBehavior: shutdownBehavior,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfileSpecification,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("DryRun") dryRun: amazonawsBoolean,
@as("DisableApiTermination") disableApiTermination: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("AdditionalInfo") additionalInfo: amazonawsString,
@as("UserData") userData: amazonawsString,
@as("SubnetId") subnetId: subnetId,
@as("SecurityGroups") securityGroups: securityGroupStringList,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdStringList,
@as("RamdiskId") ramdiskId: ramdiskId,
@as("Placement") placement: placement,
@as("Monitoring") monitoring: runInstancesMonitoringEnabled,
@as("MinCount") minCount: option<amazonawsInteger>,
@as("MaxCount") maxCount: option<amazonawsInteger>,
@as("KeyName") keyName: keyPairName,
@as("KernelId") kernelId: kernelId,
@as("Ipv6Addresses") ipv6Addresses: instanceIpv6AddressList,
@as("Ipv6AddressCount") ipv6AddressCount: amazonawsInteger,
@as("InstanceType") instanceType: instanceType,
@as("ImageId") imageId: imageId,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappingRequestList
}
  type response = reservation;
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RunInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RequestSpotInstances = {
  type t;
  type request = {
@as("InstanceInterruptionBehavior") instanceInterruptionBehavior: instanceInterruptionBehavior,
@as("TagSpecifications") tagSpecifications: tagSpecificationList,
@as("ValidUntil") validUntil: dateTime,
@as("ValidFrom") validFrom: dateTime,
@as("Type") type_: spotInstanceType,
@as("SpotPrice") spotPrice: amazonawsString,
@as("LaunchSpecification") launchSpecification: requestSpotLaunchSpecification,
@as("LaunchGroup") launchGroup: amazonawsString,
@as("InstanceCount") instanceCount: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean,
@as("ClientToken") clientToken: amazonawsString,
@as("BlockDurationMinutes") blockDurationMinutes: amazonawsInteger,
@as("AvailabilityZoneGroup") availabilityZoneGroup: amazonawsString
}
  type response = {
@as("SpotInstanceRequests") spotInstanceRequests: spotInstanceRequestList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RequestSpotInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RequestSpotFleet = {
  type t;
  type request = {
@as("SpotFleetRequestConfig") spotFleetRequestConfig: option<spotFleetRequestConfigData>,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SpotFleetRequestId") spotFleetRequestId: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "RequestSpotFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVpnConnections = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("VpnConnectionIds") vpnConnectionIds: vpnConnectionIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("VpnConnections") vpnConnections: vpnConnectionList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeVpnConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotInstanceRequests = {
  type t;
  type request = {
@as("MaxResults") maxResults: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("SpotInstanceRequestIds") spotInstanceRequestIds: spotInstanceRequestIdList,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("SpotInstanceRequests") spotInstanceRequests: spotInstanceRequestList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotInstanceRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNetworkInsightsAnalyses = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("DryRun") dryRun: amazonawsBoolean,
@as("MaxResults") maxResults: networkInsightsMaxResults,
@as("Filters") filters: filterList,
@as("AnalysisEndTime") analysisEndTime: millisecondDateTime,
@as("AnalysisStartTime") analysisStartTime: millisecondDateTime,
@as("NetworkInsightsPathId") networkInsightsPathId: networkInsightsPathId,
@as("NetworkInsightsAnalysisIds") networkInsightsAnalysisIds: networkInsightsAnalysisIdList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("NetworkInsightsAnalyses") networkInsightsAnalyses: networkInsightsAnalysisList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeNetworkInsightsAnalysesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLaunchTemplateVersions = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("MaxResults") maxResults: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("MaxVersion") maxVersion: amazonawsString,
@as("MinVersion") minVersion: amazonawsString,
@as("Versions") versions: versionStringList,
@as("LaunchTemplateName") launchTemplateName: launchTemplateName,
@as("LaunchTemplateId") launchTemplateId: launchTemplateId,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LaunchTemplateVersions") launchTemplateVersions: launchTemplateVersionSet
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeLaunchTemplateVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleets = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("FleetIds") fleetIds: fleetIdSet,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("Fleets") fleets: fleetSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeFleetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSpotFleetRequests = {
  type t;
  type request = {
@as("SpotFleetRequestIds") spotFleetRequestIds: spotFleetRequestIdList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean
}
  type response = {
@as("SpotFleetRequestConfigs") spotFleetRequestConfigs: spotFleetRequestConfigSet,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeSpotFleetRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: amazonawsInteger,
@as("DryRun") dryRun: amazonawsBoolean,
@as("InstanceIds") instanceIds: instanceIdStringList,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Reservations") reservations: reservationList
}
  @module("@aws-sdk/client-ec2") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
