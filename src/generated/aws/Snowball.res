type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-snowball") @new external createClient: unit => awsServiceClient = "SnowballClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type timestamp_ = Js.Date.t;
type string_ = string
type snsTopicARN = string
type snowballType = [@as("SNC1_SSD") #SNC1_SSD | @as("SNC1_HDD") #SNC1_HDD | @as("EDGE_S") #EDGE_S | @as("EDGE_CG") #EDGE_CG | @as("EDGE_C") #EDGE_C | @as("EDGE") #EDGE | @as("STANDARD") #STANDARD]
type snowballCapacity = [@as("NoPreference") #NoPreference | @as("T14") #T14 | @as("T8") #T8 | @as("T98") #T98 | @as("T42") #T42 | @as("T100") #T100 | @as("T80") #T80 | @as("T50") #T50]
type shippingOption = [@as("STANDARD") #STANDARD | @as("EXPRESS") #EXPRESS | @as("NEXT_DAY") #NEXT_DAY | @as("SECOND_DAY") #SECOND_DAY]
type shippingLabelStatus = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("TimedOut") #TimedOut | @as("InProgress") #InProgress]
type shipmentState = [@as("RETURNED") #RETURNED | @as("RECEIVED") #RECEIVED]
type roleARN = string
type resourceARN = string
type longTermPricingType = [@as("ThreeYear") #ThreeYear | @as("OneYear") #OneYear]
type longTermPricingId = string
type long = float
type listLimit = int
type kmsKeyARN = string
type jobType = [@as("LOCAL_USE") #LOCAL_USE | @as("EXPORT") #EXPORT | @as("IMPORT") #IMPORT]
type jobState = [@as("Pending") #Pending | @as("Listing") #Listing | @as("Cancelled") #Cancelled | @as("Complete") #Complete | @as("InProgress") #InProgress | @as("WithAWS") #WithAWS | @as("WithAWSSortingFacility") #WithAWSSortingFacility | @as("InTransitToAWS") #InTransitToAWS | @as("WithCustomer") #WithCustomer | @as("InTransitToCustomer") #InTransitToCustomer | @as("PreparingShipment") #PreparingShipment | @as("PreparingAppliance") #PreparingAppliance | @as("New") #New]
type jobId = string
type javaBoolean = bool
type integer_ = int
type gstin = string
type clusterState = [@as("Cancelled") #Cancelled | @as("Complete") #Complete | @as("InUse") #InUse | @as("Pending") #Pending | @as("AwaitingQuorum") #AwaitingQuorum]
type clusterId = string
type boolean_ = bool
type amiId = string
type addressId = string
type wirelessConnection = {
@as("IsWifiEnabled") isWifiEnabled: option<boolean_>
}
type shipment = {
@as("TrackingNumber") trackingNumber: option<string_>,
  @as("Status") status: option<string_>
}
type longTermPricingAssociatedJobIdList = array<jobId>
type keyRange = {
@as("EndMarker") endMarker: option<string_>,
  @as("BeginMarker") beginMarker: option<string_>
}
type jobStateList = array<jobState>
type jobLogs = {
@as("JobFailureLogURI") jobFailureLogURI: option<string_>,
  @as("JobSuccessLogURI") jobSuccessLogURI: option<string_>,
  @as("JobCompletionReportURI") jobCompletionReportURI: option<string_>
}
type jobListEntry = {
@as("Description") description: option<string_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("SnowballType") snowballType: option<snowballType>,
  @as("JobType") jobType: option<jobType>,
  @as("IsMaster") isMaster: option<boolean_>,
  @as("JobState") jobState: option<jobState>,
  @as("JobId") jobId: option<string_>
}
type indtaxDocuments = {
@as("GSTIN") gstin: option<gstin>
}
type eventTriggerDefinition = {
@as("EventResourceARN") eventResourceARN: option<resourceARN>
}
type ec2AmiResource = {
@as("SnowballAmiId") snowballAmiId: option<string_>,
  @as("AmiId") amiId: amiId
}
type dataTransfer = {
@as("TotalObjects") totalObjects: option<long>,
  @as("TotalBytes") totalBytes: option<long>,
  @as("ObjectsTransferred") objectsTransferred: option<long>,
  @as("BytesTransferred") bytesTransferred: option<long>
}
type compatibleImage = {
@as("Name") name: option<string_>,
  @as("AmiId") amiId: option<string_>
}
type clusterListEntry = {
@as("Description") description: option<string_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("ClusterState") clusterState: option<clusterState>,
  @as("ClusterId") clusterId: option<string_>
}
type address = {
@as("IsRestricted") isRestricted: option<boolean_>,
  @as("PhoneNumber") phoneNumber: option<string_>,
  @as("PostalCode") postalCode: option<string_>,
  @as("Country") country: option<string_>,
  @as("Landmark") landmark: option<string_>,
  @as("PrefectureOrDistrict") prefectureOrDistrict: option<string_>,
  @as("StateOrProvince") stateOrProvince: option<string_>,
  @as("City") city: option<string_>,
  @as("Street3") street3: option<string_>,
  @as("Street2") street2: option<string_>,
  @as("Street1") street1: option<string_>,
  @as("Company") company: option<string_>,
  @as("Name") name: option<string_>,
  @as("AddressId") addressId: option<addressId>
}
type taxDocuments = {
@as("IND") ind: option<indtaxDocuments>
}
type snowconeDeviceConfiguration = {
@as("WirelessConnection") wirelessConnection: option<wirelessConnection>
}
type shippingDetails = {
@as("OutboundShipment") outboundShipment: option<shipment>,
  @as("InboundShipment") inboundShipment: option<shipment>,
  @as("ShippingOption") shippingOption: option<shippingOption>
}
type s3Resource = {
@as("KeyRange") keyRange: option<keyRange>,
  @as("BucketArn") bucketArn: option<resourceARN>
}
type notification = {
@as("NotifyAll") notifyAll: option<boolean_>,
  @as("JobStatesToNotify") jobStatesToNotify: option<jobStateList>,
  @as("SnsTopicARN") snsTopicARN: option<snsTopicARN>
}
type longTermPricingListEntry = {
@as("JobIds") jobIds: option<longTermPricingAssociatedJobIdList>,
  @as("SnowballType") snowballType: option<snowballType>,
  @as("LongTermPricingStatus") longTermPricingStatus: option<string_>,
  @as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: option<javaBoolean>,
  @as("ReplacementJob") replacementJob: option<jobId>,
  @as("CurrentActiveJob") currentActiveJob: option<jobId>,
  @as("LongTermPricingType") longTermPricingType: option<longTermPricingType>,
  @as("LongTermPricingStartDate") longTermPricingStartDate: option<timestamp_>,
  @as("LongTermPricingEndDate") longTermPricingEndDate: option<timestamp_>,
  @as("LongTermPricingId") longTermPricingId: option<longTermPricingId>
}
type jobListEntryList = array<jobListEntry>
type eventTriggerDefinitionList = array<eventTriggerDefinition>
type ec2AmiResourceList = array<ec2AmiResource>
type compatibleImageList = array<compatibleImage>
type clusterListEntryList = array<clusterListEntry>
type addressList = array<address>
type s3ResourceList = array<s3Resource>
type longTermPricingEntryList = array<longTermPricingListEntry>
type lambdaResource = {
@as("EventTriggers") eventTriggers: option<eventTriggerDefinitionList>,
  @as("LambdaArn") lambdaArn: option<resourceARN>
}
type deviceConfiguration = {
@as("SnowconeDeviceConfiguration") snowconeDeviceConfiguration: option<snowconeDeviceConfiguration>
}
type lambdaResourceList = array<lambdaResource>
type jobResource = {
@as("Ec2AmiResources") ec2AmiResources: option<ec2AmiResourceList>,
  @as("LambdaResources") lambdaResources: option<lambdaResourceList>,
  @as("S3Resources") s3Resources: option<s3ResourceList>
}
type jobMetadata = {
@as("LongTermPricingId") longTermPricingId: option<longTermPricingId>,
  @as("DeviceConfiguration") deviceConfiguration: option<deviceConfiguration>,
  @as("TaxDocuments") taxDocuments: option<taxDocuments>,
  @as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("ClusterId") clusterId: option<string_>,
  @as("JobLogInfo") jobLogInfo: option<jobLogs>,
  @as("DataTransferProgress") dataTransferProgress: option<dataTransfer>,
  @as("Notification") notification: option<notification>,
  @as("SnowballCapacityPreference") snowballCapacityPreference: option<snowballCapacity>,
  @as("ShippingDetails") shippingDetails: option<shippingDetails>,
  @as("AddressId") addressId: option<addressId>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("KmsKeyARN") kmsKeyARN: option<kmsKeyARN>,
  @as("Description") description: option<string_>,
  @as("Resources") resources: option<jobResource>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("SnowballType") snowballType: option<snowballType>,
  @as("JobType") jobType: option<jobType>,
  @as("JobState") jobState: option<jobState>,
  @as("JobId") jobId: option<string_>
}
type clusterMetadata = {
@as("TaxDocuments") taxDocuments: option<taxDocuments>,
  @as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("Notification") notification: option<notification>,
  @as("ShippingOption") shippingOption: option<shippingOption>,
  @as("AddressId") addressId: option<addressId>,
  @as("Resources") resources: option<jobResource>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("SnowballType") snowballType: option<snowballType>,
  @as("JobType") jobType: option<jobType>,
  @as("ClusterState") clusterState: option<clusterState>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("KmsKeyARN") kmsKeyARN: option<kmsKeyARN>,
  @as("Description") description: option<string_>,
  @as("ClusterId") clusterId: option<string_>
}
type jobMetadataList = array<jobMetadata>

module UpdateLongTermPricing = {
  type t;
  type request = {
@as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: option<javaBoolean>,
  @as("ReplacementJob") replacementJob: option<jobId>,
  @as("LongTermPricingId") longTermPricingId: longTermPricingId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "UpdateLongTermPricingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateJobShipmentState = {
  type t;
  type request = {
@as("ShipmentState") shipmentState: shipmentState,
  @as("JobId") jobId: jobId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "UpdateJobShipmentStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSoftwareUpdates = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("UpdatesURI") updatesURI: option<string_>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "GetSoftwareUpdatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSnowballUsage = {
  type t;
  type request = unit
  type response = {
@as("SnowballsInUse") snowballsInUse: option<integer_>,
  @as("SnowballLimit") snowballLimit: option<integer_>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "GetSnowballUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJobUnlockCode = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("UnlockCode") unlockCode: option<string_>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "GetJobUnlockCodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJobManifest = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("ManifestURI") manifestURI: option<string_>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "GetJobManifestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReturnShippingLabel = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("ExpirationDate") expirationDate: option<timestamp_>,
  @as("Status") status: option<shippingLabelStatus>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "DescribeReturnShippingLabelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReturnShippingLabel = {
  type t;
  type request = {
@as("ShippingOption") shippingOption: option<shippingOption>,
  @as("JobId") jobId: jobId
}
  type response = {
@as("Status") status: option<shippingLabelStatus>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CreateReturnShippingLabelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLongTermPricing = {
  type t;
  type request = {
@as("SnowballType") snowballType: option<snowballType>,
  @as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: option<javaBoolean>,
  @as("LongTermPricingType") longTermPricingType: longTermPricingType
}
  type response = {
@as("LongTermPricingId") longTermPricingId: option<longTermPricingId>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CreateLongTermPricingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CancelJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: clusterId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CancelClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAddress = {
  type t;
  type request = {
@as("AddressId") addressId: addressId
}
  type response = {
@as("Address") address: option<address>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "DescribeAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAddress = {
  type t;
  type request = {
@as("Address") address: address
}
  type response = {
@as("AddressId") addressId: option<string_>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CreateAddressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("JobListEntries") jobListEntries: option<jobListEntryList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCompatibleImages = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("CompatibleImages") compatibleImages: option<compatibleImageList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "ListCompatibleImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("ClusterListEntries") clusterListEntries: option<clusterListEntryList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusterJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>,
  @as("ClusterId") clusterId: clusterId
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("JobListEntries") jobListEntries: option<jobListEntryList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "ListClusterJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAddresses = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("Addresses") addresses: option<addressList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "DescribeAddressesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLongTermPricing = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
  @as("MaxResults") maxResults: option<listLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("LongTermPricingEntries") longTermPricingEntries: option<longTermPricingEntryList>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "ListLongTermPricingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateJob = {
  type t;
  type request = {
@as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("SnowballCapacityPreference") snowballCapacityPreference: option<snowballCapacity>,
  @as("Description") description: option<string_>,
  @as("ShippingOption") shippingOption: option<shippingOption>,
  @as("AddressId") addressId: option<addressId>,
  @as("Resources") resources: option<jobResource>,
  @as("Notification") notification: option<notification>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("JobId") jobId: jobId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "UpdateJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCluster = {
  type t;
  type request = {
@as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("Notification") notification: option<notification>,
  @as("ShippingOption") shippingOption: option<shippingOption>,
  @as("AddressId") addressId: option<addressId>,
  @as("Resources") resources: option<jobResource>,
  @as("Description") description: option<string_>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("ClusterId") clusterId: clusterId
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "UpdateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("LongTermPricingId") longTermPricingId: option<longTermPricingId>,
  @as("DeviceConfiguration") deviceConfiguration: option<deviceConfiguration>,
  @as("TaxDocuments") taxDocuments: option<taxDocuments>,
  @as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("SnowballType") snowballType: option<snowballType>,
  @as("ClusterId") clusterId: option<clusterId>,
  @as("Notification") notification: option<notification>,
  @as("ShippingOption") shippingOption: option<shippingOption>,
  @as("SnowballCapacityPreference") snowballCapacityPreference: option<snowballCapacity>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("KmsKeyARN") kmsKeyARN: option<kmsKeyARN>,
  @as("AddressId") addressId: option<addressId>,
  @as("Description") description: option<string_>,
  @as("Resources") resources: option<jobResource>,
  @as("JobType") jobType: option<jobType>
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CreateJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("TaxDocuments") taxDocuments: option<taxDocuments>,
  @as("ForwardingAddressId") forwardingAddressId: option<addressId>,
  @as("Notification") notification: option<notification>,
  @as("ShippingOption") shippingOption: shippingOption,
  @as("SnowballType") snowballType: snowballType,
  @as("RoleARN") roleARN: roleARN,
  @as("KmsKeyARN") kmsKeyARN: option<kmsKeyARN>,
  @as("AddressId") addressId: addressId,
  @as("Description") description: option<string_>,
  @as("Resources") resources: jobResource,
  @as("JobType") jobType: jobType
}
  type response = {
@as("ClusterId") clusterId: option<clusterId>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: clusterId
}
  type response = {
@as("ClusterMetadata") clusterMetadata: option<clusterMetadata>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "DescribeClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("JobId") jobId: jobId
}
  type response = {
@as("SubJobMetadata") subJobMetadata: option<jobMetadataList>,
  @as("JobMetadata") jobMetadata: option<jobMetadata>
}
  @module("@aws-sdk/client-snowball") @new external new_: (request) => t = "DescribeJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
