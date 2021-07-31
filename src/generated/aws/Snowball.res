type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
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
type amazonawsLong = float;
type listLimit = int;
type kmsKeyARN = string
type jobType = [@as("LOCAL_USE") #LOCAL_USE | @as("EXPORT") #EXPORT | @as("IMPORT") #IMPORT]
type jobState = [@as("Pending") #Pending | @as("Listing") #Listing | @as("Cancelled") #Cancelled | @as("Complete") #Complete | @as("InProgress") #InProgress | @as("WithAWS") #WithAWS | @as("WithAWSSortingFacility") #WithAWSSortingFacility | @as("InTransitToAWS") #InTransitToAWS | @as("WithCustomer") #WithCustomer | @as("InTransitToCustomer") #InTransitToCustomer | @as("PreparingShipment") #PreparingShipment | @as("PreparingAppliance") #PreparingAppliance | @as("New") #New]
type jobId = string
type javaBoolean = bool;
type amazonawsInteger = int;
type gSTIN = string
type clusterState = [@as("Cancelled") #Cancelled | @as("Complete") #Complete | @as("InUse") #InUse | @as("Pending") #Pending | @as("AwaitingQuorum") #AwaitingQuorum]
type clusterId = string
type amazonawsBoolean = bool;
type amiId = string
type addressId = string
type wirelessConnection = {
@as("IsWifiEnabled") isWifiEnabled: amazonawsBoolean
}
type shipment = {
@as("TrackingNumber") trackingNumber: amazonawsString,
@as("Status") status: amazonawsString
}
type longTermPricingAssociatedJobIdList = array<jobId>
type keyRange = {
@as("EndMarker") endMarker: amazonawsString,
@as("BeginMarker") beginMarker: amazonawsString
}
type jobStateList = array<jobState>
type jobLogs = {
@as("JobFailureLogURI") jobFailureLogURI: amazonawsString,
@as("JobSuccessLogURI") jobSuccessLogURI: amazonawsString,
@as("JobCompletionReportURI") jobCompletionReportURI: amazonawsString
}
type jobListEntry = {
@as("Description") description: amazonawsString,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("SnowballType") snowballType: snowballType,
@as("JobType") jobType: jobType,
@as("IsMaster") isMaster: amazonawsBoolean,
@as("JobState") jobState: jobState,
@as("JobId") jobId: amazonawsString
}
type iNDTaxDocuments = {
@as("GSTIN") gSTIN: gSTIN
}
type eventTriggerDefinition = {
@as("EventResourceARN") eventResourceARN: resourceARN
}
type ec2AmiResource = {
@as("SnowballAmiId") snowballAmiId: amazonawsString,
@as("AmiId") amiId: option<amiId>
}
type dataTransfer = {
@as("TotalObjects") totalObjects: amazonawsLong,
@as("TotalBytes") totalBytes: amazonawsLong,
@as("ObjectsTransferred") objectsTransferred: amazonawsLong,
@as("BytesTransferred") bytesTransferred: amazonawsLong
}
type compatibleImage = {
@as("Name") name: amazonawsString,
@as("AmiId") amiId: amazonawsString
}
type clusterListEntry = {
@as("Description") description: amazonawsString,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("ClusterState") clusterState: clusterState,
@as("ClusterId") clusterId: amazonawsString
}
type address = {
@as("IsRestricted") isRestricted: amazonawsBoolean,
@as("PhoneNumber") phoneNumber: amazonawsString,
@as("PostalCode") postalCode: amazonawsString,
@as("Country") country: amazonawsString,
@as("Landmark") landmark: amazonawsString,
@as("PrefectureOrDistrict") prefectureOrDistrict: amazonawsString,
@as("StateOrProvince") stateOrProvince: amazonawsString,
@as("City") city: amazonawsString,
@as("Street3") street3: amazonawsString,
@as("Street2") street2: amazonawsString,
@as("Street1") street1: amazonawsString,
@as("Company") company: amazonawsString,
@as("Name") name: amazonawsString,
@as("AddressId") addressId: addressId
}
type taxDocuments = {
@as("IND") iND: iNDTaxDocuments
}
type snowconeDeviceConfiguration = {
@as("WirelessConnection") wirelessConnection: wirelessConnection
}
type shippingDetails = {
@as("OutboundShipment") outboundShipment: shipment,
@as("InboundShipment") inboundShipment: shipment,
@as("ShippingOption") shippingOption: shippingOption
}
type s3Resource = {
@as("KeyRange") keyRange: keyRange,
@as("BucketArn") bucketArn: resourceARN
}
type notification = {
@as("NotifyAll") notifyAll: amazonawsBoolean,
@as("JobStatesToNotify") jobStatesToNotify: jobStateList,
@as("SnsTopicARN") snsTopicARN: snsTopicARN
}
type longTermPricingListEntry = {
@as("JobIds") jobIds: longTermPricingAssociatedJobIdList,
@as("SnowballType") snowballType: snowballType,
@as("LongTermPricingStatus") longTermPricingStatus: amazonawsString,
@as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: javaBoolean,
@as("ReplacementJob") replacementJob: jobId,
@as("CurrentActiveJob") currentActiveJob: jobId,
@as("LongTermPricingType") longTermPricingType: longTermPricingType,
@as("LongTermPricingStartDate") longTermPricingStartDate: amazonawsTimestamp,
@as("LongTermPricingEndDate") longTermPricingEndDate: amazonawsTimestamp,
@as("LongTermPricingId") longTermPricingId: longTermPricingId
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
@as("EventTriggers") eventTriggers: eventTriggerDefinitionList,
@as("LambdaArn") lambdaArn: resourceARN
}
type deviceConfiguration = {
@as("SnowconeDeviceConfiguration") snowconeDeviceConfiguration: snowconeDeviceConfiguration
}
type lambdaResourceList = array<lambdaResource>
type jobResource = {
@as("Ec2AmiResources") ec2AmiResources: ec2AmiResourceList,
@as("LambdaResources") lambdaResources: lambdaResourceList,
@as("S3Resources") s3Resources: s3ResourceList
}
type jobMetadata = {
@as("LongTermPricingId") longTermPricingId: longTermPricingId,
@as("DeviceConfiguration") deviceConfiguration: deviceConfiguration,
@as("TaxDocuments") taxDocuments: taxDocuments,
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("ClusterId") clusterId: amazonawsString,
@as("JobLogInfo") jobLogInfo: jobLogs,
@as("DataTransferProgress") dataTransferProgress: dataTransfer,
@as("Notification") notification: notification,
@as("SnowballCapacityPreference") snowballCapacityPreference: snowballCapacity,
@as("ShippingDetails") shippingDetails: shippingDetails,
@as("AddressId") addressId: addressId,
@as("RoleARN") roleARN: roleARN,
@as("KmsKeyARN") kmsKeyARN: kmsKeyARN,
@as("Description") description: amazonawsString,
@as("Resources") resources: jobResource,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("SnowballType") snowballType: snowballType,
@as("JobType") jobType: jobType,
@as("JobState") jobState: jobState,
@as("JobId") jobId: amazonawsString
}
type clusterMetadata = {
@as("TaxDocuments") taxDocuments: taxDocuments,
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("Notification") notification: notification,
@as("ShippingOption") shippingOption: shippingOption,
@as("AddressId") addressId: addressId,
@as("Resources") resources: jobResource,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("SnowballType") snowballType: snowballType,
@as("JobType") jobType: jobType,
@as("ClusterState") clusterState: clusterState,
@as("RoleARN") roleARN: roleARN,
@as("KmsKeyARN") kmsKeyARN: kmsKeyARN,
@as("Description") description: amazonawsString,
@as("ClusterId") clusterId: amazonawsString
}
type jobMetadataList = array<jobMetadata>
type clientType;
@module("@aws-sdk/client-snowball") @new external createClient: unit => clientType = "SnowballClient";
module UpdateLongTermPricing = {
  type t;
  type request = {
@as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: javaBoolean,
@as("ReplacementJob") replacementJob: jobId,
@as("LongTermPricingId") longTermPricingId: option<longTermPricingId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "UpdateLongTermPricingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJobShipmentState = {
  type t;
  type request = {
@as("ShipmentState") shipmentState: option<shipmentState>,
@as("JobId") jobId: option<jobId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "UpdateJobShipmentStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSoftwareUpdates = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("UpdatesURI") updatesURI: amazonawsString
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "GetSoftwareUpdatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSnowballUsage = {
  type t;
  type request = unit
  type response = {
@as("SnowballsInUse") snowballsInUse: amazonawsInteger,
@as("SnowballLimit") snowballLimit: amazonawsInteger
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "GetSnowballUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobUnlockCode = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("UnlockCode") unlockCode: amazonawsString
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "GetJobUnlockCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobManifest = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ManifestURI") manifestURI: amazonawsString
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "GetJobManifestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReturnShippingLabel = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("Status") status: shippingLabelStatus
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "DescribeReturnShippingLabelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReturnShippingLabel = {
  type t;
  type request = {
@as("ShippingOption") shippingOption: shippingOption,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("Status") status: shippingLabelStatus
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CreateReturnShippingLabelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLongTermPricing = {
  type t;
  type request = {
@as("SnowballType") snowballType: snowballType,
@as("IsLongTermPricingAutoRenew") isLongTermPricingAutoRenew: javaBoolean,
@as("LongTermPricingType") longTermPricingType: option<longTermPricingType>
}
  type response = {
@as("LongTermPricingId") longTermPricingId: longTermPricingId
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CreateLongTermPricingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CancelJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: option<clusterId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CancelClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddress = {
  type t;
  type request = {
@as("AddressId") addressId: option<addressId>
}
  type response = {
@as("Address") address: address
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "DescribeAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAddress = {
  type t;
  type request = {
@as("Address") address: option<address>
}
  type response = {
@as("AddressId") addressId: amazonawsString
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CreateAddressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("JobListEntries") jobListEntries: jobListEntryList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCompatibleImages = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("CompatibleImages") compatibleImages: compatibleImageList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "ListCompatibleImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ClusterListEntries") clusterListEntries: clusterListEntryList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "ListClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusterJobs = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit,
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("JobListEntries") jobListEntries: jobListEntryList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "ListClusterJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddresses = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Addresses") addresses: addressList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "DescribeAddressesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLongTermPricing = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: listLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LongTermPricingEntries") longTermPricingEntries: longTermPricingEntryList
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "ListLongTermPricingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJob = {
  type t;
  type request = {
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("SnowballCapacityPreference") snowballCapacityPreference: snowballCapacity,
@as("Description") description: amazonawsString,
@as("ShippingOption") shippingOption: shippingOption,
@as("AddressId") addressId: addressId,
@as("Resources") resources: jobResource,
@as("Notification") notification: notification,
@as("RoleARN") roleARN: roleARN,
@as("JobId") jobId: option<jobId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "UpdateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCluster = {
  type t;
  type request = {
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("Notification") notification: notification,
@as("ShippingOption") shippingOption: shippingOption,
@as("AddressId") addressId: addressId,
@as("Resources") resources: jobResource,
@as("Description") description: amazonawsString,
@as("RoleARN") roleARN: roleARN,
@as("ClusterId") clusterId: option<clusterId>
}
  type response = unit
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "UpdateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("LongTermPricingId") longTermPricingId: longTermPricingId,
@as("DeviceConfiguration") deviceConfiguration: deviceConfiguration,
@as("TaxDocuments") taxDocuments: taxDocuments,
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("SnowballType") snowballType: snowballType,
@as("ClusterId") clusterId: clusterId,
@as("Notification") notification: notification,
@as("ShippingOption") shippingOption: shippingOption,
@as("SnowballCapacityPreference") snowballCapacityPreference: snowballCapacity,
@as("RoleARN") roleARN: roleARN,
@as("KmsKeyARN") kmsKeyARN: kmsKeyARN,
@as("AddressId") addressId: addressId,
@as("Description") description: amazonawsString,
@as("Resources") resources: jobResource,
@as("JobType") jobType: jobType
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("TaxDocuments") taxDocuments: taxDocuments,
@as("ForwardingAddressId") forwardingAddressId: addressId,
@as("Notification") notification: notification,
@as("ShippingOption") shippingOption: option<shippingOption>,
@as("SnowballType") snowballType: option<snowballType>,
@as("RoleARN") roleARN: option<roleARN>,
@as("KmsKeyARN") kmsKeyARN: kmsKeyARN,
@as("AddressId") addressId: option<addressId>,
@as("Description") description: amazonawsString,
@as("Resources") resources: option<jobResource>,
@as("JobType") jobType: option<jobType>
}
  type response = {
@as("ClusterId") clusterId: clusterId
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
@as("ClusterId") clusterId: option<clusterId>
}
  type response = {
@as("ClusterMetadata") clusterMetadata: clusterMetadata
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "DescribeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("SubJobMetadata") subJobMetadata: jobMetadataList,
@as("JobMetadata") jobMetadata: jobMetadata
}
  @module("@aws-sdk/client-snowball") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
