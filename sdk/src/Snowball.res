type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-snowball") @new
external createClient: unit => awsServiceClient = "SnowballClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type transferOption = [@as("LOCAL_USE") #LOCAL_USE | @as("EXPORT") #EXPORT | @as("IMPORT") #IMPORT]
type timestamp_ = Js.Date.t
type string_ = string
type storageUnit = [@as("TB") #TB]
type storageLimit = int
type snsTopicARN = string
type snowballType = [
  | @as("SNC1_SSD") #SNC1_SSD
  | @as("SNC1_HDD") #SNC1_HDD
  | @as("EDGE_S") #EDGE_S
  | @as("EDGE_CG") #EDGE_CG
  | @as("EDGE_C") #EDGE_C
  | @as("EDGE") #EDGE
  | @as("STANDARD") #STANDARD
]
type snowballCapacity = [
  | @as("NoPreference") #NoPreference
  | @as("T14") #T14
  | @as("T8") #T8
  | @as("T98") #T98
  | @as("T42") #T42
  | @as("T100") #T100
  | @as("T80") #T80
  | @as("T50") #T50
]
type shippingOption = [
  | @as("STANDARD") #STANDARD
  | @as("EXPRESS") #EXPRESS
  | @as("NEXT_DAY") #NEXT_DAY
  | @as("SECOND_DAY") #SECOND_DAY
]
type shippingLabelStatus = [
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("TimedOut") #TimedOut
  | @as("InProgress") #InProgress
]
type shipmentState = [@as("RETURNED") #RETURNED | @as("RECEIVED") #RECEIVED]
type roleARN = string
type resourceARN = string
type remoteManagement = [
  | @as("INSTALLED_AUTOSTART") #INSTALLED_AUTOSTART
  | @as("INSTALLED_ONLY") #INSTALLED_ONLY
]
type longTermPricingType = [@as("ThreeYear") #ThreeYear | @as("OneYear") #OneYear]
type longTermPricingId = string
type long = float
type listLimit = int
type kmsKeyARN = string
type jobType = [@as("LOCAL_USE") #LOCAL_USE | @as("EXPORT") #EXPORT | @as("IMPORT") #IMPORT]
type jobState = [
  | @as("Pending") #Pending
  | @as("Listing") #Listing
  | @as("Cancelled") #Cancelled
  | @as("Complete") #Complete
  | @as("InProgress") #InProgress
  | @as("WithAWS") #WithAWS
  | @as("WithAWSSortingFacility") #WithAWSSortingFacility
  | @as("InTransitToAWS") #InTransitToAWS
  | @as("WithCustomer") #WithCustomer
  | @as("InTransitToCustomer") #InTransitToCustomer
  | @as("PreparingShipment") #PreparingShipment
  | @as("PreparingAppliance") #PreparingAppliance
  | @as("New") #New
]
type jobId = string
type javaBoolean = bool
type integer_ = int
type gstin = string
type deviceServiceName = [
  | @as("S3_ON_DEVICE_SERVICE") #S3_ON_DEVICE_SERVICE
  | @as("NFS_ON_DEVICE_SERVICE") #NFS_ON_DEVICE_SERVICE
]
type clusterState = [
  | @as("Cancelled") #Cancelled
  | @as("Complete") #Complete
  | @as("InUse") #InUse
  | @as("Pending") #Pending
  | @as("AwaitingQuorum") #AwaitingQuorum
]
type clusterId = string
type boolean_ = bool
type amiId = string
type addressId = string
@ocaml.doc("<p>Configures the wireless connection on an Snowcone device.</p>")
type wirelessConnection = {
  @ocaml.doc("<p>Enables the Wi-Fi adapter on an Snowcone device.</p>") @as("IsWifiEnabled")
  isWifiEnabled: option<boolean_>,
}
@ocaml.doc("<p>An object that represents the service or services on the Snow Family device that your
      transferred data will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and
      NFS (Network File System).</p>")
type targetOnDeviceService = {
  @ocaml.doc("<p>Specifies whether the data is being imported or exported. You can import or export the
      data, or use it locally on the device.</p>")
  @as("TransferOption")
  transferOption: option<transferOption>,
  @ocaml.doc("<p>Specifies the name of the service on the Snow Family device that your transferred data
      will be exported from or imported into.</p>")
  @as("ServiceName")
  serviceName: option<deviceServiceName>,
}
@ocaml.doc("<p>An object that represents the metadata and configuration settings for the Storage Gateway
      service Tape Gateway type on an Amazon Web Services Snow Family device.</p>")
type tgwonDeviceServiceConfiguration = {
  @ocaml.doc("<p>The scale unit of the virtual tapes on the device.</p>") @as("StorageUnit")
  storageUnit: option<storageUnit>,
  @ocaml.doc("<p>The maximum number of virtual tapes to store on one Snow Family device. Due to physical
      resource limitations, this value must be set to 80 for Snowball Edge.</p>")
  @as("StorageLimit")
  storageLimit: option<storageLimit>,
}
@ocaml.doc("<p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or
      outbound shipment.</p>")
type shipment = {
  @ocaml.doc("<p>The tracking number for this job. Using this tracking number with your region's
      carrier's website, you can track a Snow device as the carrier transports it.</p>
         <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the
      carrier.</p>")
  @as("TrackingNumber")
  trackingNumber: option<string_>,
  @ocaml.doc("<p>Status information for a shipment.</p>") @as("Status") status: option<string_>,
}
@ocaml.doc("<p>An object that represents the metadata and configuration settings for the NFS (Network
      File System) service on an Amazon Web Services Snow Family device.</p>")
type nfsonDeviceServiceConfiguration = {
  @ocaml.doc("<p>The scale unit of the NFS storage on the device.</p>
         <p>Valid values: TB.</p>")
  @as("StorageUnit")
  storageUnit: option<storageUnit>,
  @ocaml.doc("<p>The maximum NFS storage for one Snow Family device.</p>") @as("StorageLimit")
  storageLimit: option<storageLimit>,
}
type longTermPricingAssociatedJobIdList = array<jobId>
@ocaml.doc("<p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an
      optional <code>KeyRange</code> value. The length of the range is defined at job creation, and
      has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or
      both. Ranges are UTF-8 binary sorted.</p>")
type keyRange = {
  @ocaml.doc("<p>The key that ends an optional key range for an export job. Ranges are inclusive and
      UTF-8 binary sorted.</p>")
  @as("EndMarker")
  endMarker: option<string_>,
  @ocaml.doc("<p>The key that starts an optional key range for an export job. Ranges are inclusive and
      UTF-8 binary sorted.</p>")
  @as("BeginMarker")
  beginMarker: option<string_>,
}
type jobStateList = array<jobState>
@ocaml.doc("<p>Contains job logs. Whenever a Snow device is used to import data into or export data
      out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are
      returned as a part of the response syntax of the <code>DescribeJob</code> action in the
        <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after
      this request has been made. To access any of the job logs after 60 minutes have passed, you'll
      have to make another call to the <code>DescribeJob</code> action.</p>

         <p>For import jobs, the PDF job report becomes available at the end of the import process.
      For export jobs, your job report typically becomes available while the Snow device for your
      job part is being delivered to you.</p>

         <p>The job report provides you insight into the state of your Amazon S3 data transfer. The
      report includes details about your job or job part for your records.</p>

         <p>For deeper visibility into the status of your transferred objects, you can look at the
      two associated logs: a success log and a failure log. The logs are saved in comma-separated
      value (CSV) format, and the name of each log includes the ID of the job or job part that the
      log describes.</p>")
type jobLogs = {
  @ocaml.doc("<p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>")
  @as("JobFailureLogURI")
  jobFailureLogURI: option<string_>,
  @ocaml.doc("<p>A link to an Amazon S3 presigned URL where the job success log is located.</p>")
  @as("JobSuccessLogURI")
  jobSuccessLogURI: option<string_>,
  @ocaml.doc("<p>A link to an Amazon S3 presigned URL where the job completion report is
      located.</p>")
  @as("JobCompletionReportURI")
  jobCompletionReportURI: option<string_>,
}
@ocaml.doc("<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
      that indicates whether the job is a job part, in the case of an export job.</p>")
type jobListEntry = {
  @ocaml.doc("<p>The optional description of this specific job, for example <code>Important Photos
        2016-08-11</code>.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The creation date for this job.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The type of device used with this job.</p>") @as("SnowballType")
  snowballType: option<snowballType>,
  @ocaml.doc("<p>The type of job.</p>") @as("JobType") jobType: option<jobType>,
  @ocaml.doc("<p>A value that indicates that this job is a main job. A main job represents a successful
      request to create an export job. Main jobs aren't associated with any Snowballs. Instead, each
      main job will have at least one job part, and each job part is associated with a Snowball. It
      might take some time before the job parts associated with a particular main job are listed,
      because they are created after the main job is created.</p>")
  @as("IsMaster")
  isMaster: option<boolean_>,
  @ocaml.doc("<p>The current state of this job.</p>") @as("JobState") jobState: option<jobState>,
  @ocaml.doc("<p>The automatically generated ID for a job, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
  @as("JobId")
  jobId: option<string_>,
}
@ocaml.doc("<p>The tax documents required in Amazon Web Services Region in India.</p>")
type indtaxDocuments = {
  @ocaml.doc("<p>The Goods and Services Tax (GST) documents required in Amazon Web Services Region in
      India.</p>")
  @as("GSTIN")
  gstin: option<gstin>,
}
@ocaml.doc("<p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>")
type eventTriggerDefinition = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an Lambda function's event trigger associated with this job.</p>"
  )
  @as("EventResourceARN")
  eventResourceARN: option<resourceARN>,
}
@ocaml.doc("<p>A JSON-formatted object that contains the IDs for an Amazon Machine Image (AMI),
      including the Amazon EC2 AMI ID and the Snow device AMI ID. Each AMI has these two IDs to
      simplify identifying the AMI in both the Amazon Web Services Cloud and on the device.</p>")
type ec2AmiResource = {
  @ocaml.doc("<p>The ID of the AMI on the Snow device.</p>") @as("SnowballAmiId")
  snowballAmiId: option<string_>,
  @ocaml.doc("<p>The ID of the AMI in Amazon EC2.</p>") @as("AmiId") amiId: amiId,
}
@ocaml.doc("<p>Defines the real-time status of a Snow device's data transfer while the device is at
        Amazon Web Services. This data is only available while a job has a <code>JobState</code>
      value of <code>InProgress</code>, for both import and export jobs.</p>")
type dataTransfer = {
  @ocaml.doc("<p>The total number of objects for a transfer between a Snow device and Amazon S3. This
      value is set to 0 (zero) until all the keys that will be transferred have been
      listed.</p>")
  @as("TotalObjects")
  totalObjects: option<long>,
  @ocaml.doc("<p>The total bytes of data for a transfer between a Snow device and Amazon S3. This value
      is set to 0 (zero) until all the keys that will be transferred have been listed.</p>")
  @as("TotalBytes")
  totalBytes: option<long>,
  @ocaml.doc("<p>The number of objects transferred between a Snow device and Amazon S3.</p>")
  @as("ObjectsTransferred")
  objectsTransferred: option<long>,
  @ocaml.doc("<p>The number of bytes transferred between a Snow device and Amazon S3.</p>")
  @as("BytesTransferred")
  bytesTransferred: option<long>,
}
@ocaml.doc("<p>A JSON-formatted object that describes a compatible Amazon Machine Image (AMI),
      including the ID and name for a Snow device AMI. This AMI is compatible with the device's
      physical hardware requirements, and it should be able to be run in an SBE1 instance on the
      device.</p>")
type compatibleImage = {
  @ocaml.doc("<p>The optional name of a compatible image.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The unique identifier for an individual Snow device AMI.</p>") @as("AmiId")
  amiId: option<string_>,
}
@ocaml.doc("<p>Contains a cluster's state, a cluster's ID, and other important information.</p>")
type clusterListEntry = {
  @ocaml.doc("<p>Defines an optional description of the cluster, for example <code>Environmental Data
        Cluster-01</code>.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The creation date for this cluster.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The current state of this cluster. For information about the state of a specific node,
      see <a>JobListEntry$JobState</a>.</p>")
  @as("ClusterState")
  clusterState: option<clusterState>,
  @ocaml.doc("<p>The 39-character ID for the cluster that you want to list, for example
        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
  @as("ClusterId")
  clusterId: option<string_>,
}
@ocaml.doc("<p>The address that you want the Snow device(s) associated with a specific job to be
      shipped to. Addresses are validated at the time of creation. The address you provide must be
      located within the serviceable area of your region. Although no individual elements of the
        <code>Address</code> are required, if the address is invalid or unsupported, then an
      exception is thrown.</p>")
type address = {
  @ocaml.doc("<p>If the address you are creating is a primary address, then set this option to
      true. This field is not supported in most regions.</p>")
  @as("IsRestricted")
  isRestricted: option<boolean_>,
  @ocaml.doc("<p>The phone number associated with an address that a Snow device is to be delivered
      to.</p>")
  @as("PhoneNumber")
  phoneNumber: option<string_>,
  @ocaml.doc("<p>The postal code in an address that a Snow device is to be delivered to.</p>")
  @as("PostalCode")
  postalCode: option<string_>,
  @ocaml.doc("<p>The country in an address that a Snow device is to be delivered to.</p>")
  @as("Country")
  country: option<string_>,
  @ocaml.doc("<p>This field is no longer used and the value is ignored.</p>") @as("Landmark")
  landmark: option<string_>,
  @ocaml.doc("<p>This field is no longer used and the value is ignored.</p>")
  @as("PrefectureOrDistrict")
  prefectureOrDistrict: option<string_>,
  @ocaml.doc("<p>The state or province in an address that a Snow device is to be delivered to.</p>")
  @as("StateOrProvince")
  stateOrProvince: option<string_>,
  @ocaml.doc("<p>The city in an address that a Snow device is to be delivered to.</p>") @as("City")
  city: option<string_>,
  @ocaml.doc("<p>The third line in a street address that a Snow device is to be delivered
      to.</p>")
  @as("Street3")
  street3: option<string_>,
  @ocaml.doc("<p>The second line in a street address that a Snow device is to be delivered
      to.</p>")
  @as("Street2")
  street2: option<string_>,
  @ocaml.doc("<p>The first line in a street address that a Snow device is to be delivered
      to.</p>")
  @as("Street1")
  street1: option<string_>,
  @ocaml.doc("<p>The name of the company to receive a Snow device at an address.</p>")
  @as("Company")
  company: option<string_>,
  @ocaml.doc("<p>The name of a person to receive a Snow device at an address.</p>") @as("Name")
  name: option<string_>,
  @ocaml.doc("<p>The unique ID for an address.</p>") @as("AddressId") addressId: option<addressId>,
}
@ocaml.doc("<p>The tax documents required in your Amazon Web Services Region.</p>")
type taxDocuments = {@as("IND") ind: option<indtaxDocuments>}
type targetOnDeviceServiceList = array<targetOnDeviceService>
@ocaml.doc("<p>Specifies the device configuration for an Snowcone job.</p>")
type snowconeDeviceConfiguration = {
  @ocaml.doc("<p>Configures the wireless connection for the Snowcone device.</p>")
  @as("WirelessConnection")
  wirelessConnection: option<wirelessConnection>,
}
@ocaml.doc("<p>A job's shipping information, including inbound and outbound tracking numbers and
      shipping speed options.</p>")
type shippingDetails = {
  @ocaml.doc("<p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being
      delivered to the address that you specified for a particular job.</p>")
  @as("OutboundShipment")
  outboundShipment: option<shipment>,
  @ocaml.doc("<p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being
      returned to Amazon Web Services for a particular job.</p>")
  @as("InboundShipment")
  inboundShipment: option<shipment>,
  @ocaml.doc("<p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get
      the Snow device from the job's creation date. This speed represents how quickly it moves to
      its destination while in transit. Regional shipping speeds are as follows:</p>

         <ul>
            <li>
               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
          express are delivered in about a day.</p>
            </li>
            <li>
               <p>In the European Union (EU), you have access to express shipping. Typically, Snow
          devices shipped express are delivered in about a day. In addition, most countries in the
          EU have access to standard shipping, which typically takes less than a week, one
          way.</p>
            </li>
            <li>
               <p>In India, Snow devices are delivered in one to seven days.</p>
            </li>
            <li>
               <p>In the United States of America (US), you have access to one-day shipping and
          two-day shipping.</p>
            </li>
         </ul>")
  @as("ShippingOption")
  shippingOption: option<shippingOption>,
}
@ocaml.doc("<p>An object that represents the metadata and configuration settings for services on an Amazon Web Services
      Snow Family device.</p>")
type onDeviceServiceConfiguration = {
  @ocaml.doc(
    "<p>Represents the Storage Gateway service Tape Gateway type on a Snow Family device.</p>"
  )
  @as("TGWOnDeviceService")
  tgwonDeviceService: option<tgwonDeviceServiceConfiguration>,
  @ocaml.doc("<p>Represents the NFS (Network File System) service on a Snow Family device.</p>")
  @as("NFSOnDeviceService")
  nfsonDeviceService: option<nfsonDeviceServiceConfiguration>,
}
@ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated
      with a specific job. The <code>Notification</code> object is returned as a part of the
      response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data
      type.</p>

         <p>When the notification settings are defined during job creation, you can choose to
      notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of
      strings, or you can specify that you want to have Amazon SNS notifications sent out for all
      job states with <code>NotifyAll</code> set to true.</p>")
type notification = {
  @ocaml.doc("<p>Any change in job state will trigger a notification for this job.</p>")
  @as("NotifyAll")
  notifyAll: option<boolean_>,
  @ocaml.doc("<p>The list of job states that will trigger a notification for this job.</p>")
  @as("JobStatesToNotify")
  jobStatesToNotify: option<jobStateList>,
  @ocaml.doc("<p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can
      create Amazon Resource Names (ARNs) for topics by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html\">CreateTopic</a> Amazon SNS API
      action.</p>

         <p>You can subscribe email addresses to an Amazon SNS topic through the Amazon Web Services Management Console, or by using the <a href=\"https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html\">Subscribe</a> Amazon Simple Notification
      Service (Amazon SNS) API action.</p>")
  @as("SnsTopicARN")
  snsTopicARN: option<snsTopicARN>,
}
@ocaml.doc("<p>Each <code>LongTermPricingListEntry</code> object contains information about a long-term
      pricing type.</p>")
type longTermPricingListEntry = {
  @ocaml.doc("<p>The IDs of the jobs that are associated with a long-term pricing type.</p>")
  @as("JobIds")
  jobIds: option<longTermPricingAssociatedJobIdList>,
  @ocaml.doc("<p>The type of Snow Family Devices associated with this long-term pricing job.</p>")
  @as("SnowballType")
  snowballType: option<snowballType>,
  @ocaml.doc("<p>The status of the long-term pricing type.</p>") @as("LongTermPricingStatus")
  longTermPricingStatus: option<string_>,
  @ocaml.doc("<p>If set to <code>true</code>, specifies that the current long-term pricing type for the
      device should be automatically renewed before the long-term pricing contract expires.</p>")
  @as("IsLongTermPricingAutoRenew")
  isLongTermPricingAutoRenew: option<javaBoolean>,
  @ocaml.doc("<p>A new device that replaces a device that is ordered with long-term pricing.</p>")
  @as("ReplacementJob")
  replacementJob: option<jobId>,
  @ocaml.doc("<p>The current active jobs on the device the long-term pricing type.</p>")
  @as("CurrentActiveJob")
  currentActiveJob: option<jobId>,
  @ocaml.doc("<p>The type of long-term pricing that was selected for the device.</p>")
  @as("LongTermPricingType")
  longTermPricingType: option<longTermPricingType>,
  @ocaml.doc("<p>The start date of the long-term pricing contract.</p>")
  @as("LongTermPricingStartDate")
  longTermPricingStartDate: option<timestamp_>,
  @ocaml.doc("<p>The end date the long-term pricing contract.</p>") @as("LongTermPricingEndDate")
  longTermPricingEndDate: option<timestamp_>,
  @ocaml.doc("<p>The ID of the long-term pricing type for the device.</p>") @as("LongTermPricingId")
  longTermPricingId: option<longTermPricingId>,
}
type jobListEntryList = array<jobListEntry>
type eventTriggerDefinitionList = array<eventTriggerDefinition>
type ec2AmiResourceList = array<ec2AmiResource>
type compatibleImageList = array<compatibleImage>
type clusterListEntryList = array<clusterListEntry>
type addressList = array<address>
@ocaml.doc("<p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your
      transferred data will be exported from or imported into. For export jobs, this object can have
      an optional <code>KeyRange</code> value. The length of the range is defined at job creation,
      and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or
      both. Ranges are UTF-8 binary sorted.</p>")
type s3Resource = {
  @ocaml.doc("<p>Specifies the service or services on the Snow Family device that your transferred data
      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
      System).</p>")
  @as("TargetOnDeviceServices")
  targetOnDeviceServices: option<targetOnDeviceServiceList>,
  @ocaml.doc("<p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific
      Amazon S3 bucket. The length of the range is defined at job creation, and has either an
      inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are
      UTF-8 binary sorted.</p>")
  @as("KeyRange")
  keyRange: option<keyRange>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>") @as("BucketArn")
  bucketArn: option<resourceARN>,
}
type longTermPricingEntryList = array<longTermPricingListEntry>
@ocaml.doc("<p>Identifies </p>")
type lambdaResource = {
  @ocaml.doc(
    "<p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>"
  )
  @as("EventTriggers")
  eventTriggers: option<eventTriggerDefinitionList>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that represents an Lambda function to be
      triggered by PUT object actions on the associated local Amazon S3 resource.</p>")
  @as("LambdaArn")
  lambdaArn: option<resourceARN>,
}
@ocaml.doc("<p>The container for <code>SnowconeDeviceConfiguration</code>. </p>")
type deviceConfiguration = {
  @ocaml.doc("<p>Returns information about the device configuration for an Snowcone
      job.</p>")
  @as("SnowconeDeviceConfiguration")
  snowconeDeviceConfiguration: option<snowconeDeviceConfiguration>,
}
type s3ResourceList = array<s3Resource>
type lambdaResourceList = array<lambdaResource>
@ocaml.doc("<p>Contains an array of Amazon Web Services resource objects. Each object represents an
      Amazon S3 bucket, an Lambda function, or an Amazon Machine Image (AMI) based
      on Amazon EC2 that is associated with a particular job.</p>")
type jobResource = {
  @ocaml.doc("<p>The Amazon Machine Images (AMIs) associated with this job.</p>")
  @as("Ec2AmiResources")
  ec2AmiResources: option<ec2AmiResourceList>,
  @ocaml.doc("<p>The Python-language Lambda functions for this job.</p>") @as("LambdaResources")
  lambdaResources: option<lambdaResourceList>,
  @ocaml.doc("<p>An array of <code>S3Resource</code> objects.</p>") @as("S3Resources")
  s3Resources: option<s3ResourceList>,
}
@ocaml.doc("<p>Contains information about a specific job including shipping information, job status,
      and other important metadata. This information is returned as a part of the response syntax of
      the <code>DescribeJob</code> action.</p>")
type jobMetadata = {
  @ocaml.doc("<p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family
      device.</p>")
  @as("OnDeviceServiceConfiguration")
  onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
  @ocaml.doc("<p>The ID of the long-term pricing type for the device.</p>") @as("LongTermPricingId")
  longTermPricingId: option<longTermPricingId>,
  @ocaml.doc("<p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
      internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
      automatically be available when the device arrives at your location. Otherwise, you need to
      use the Snowball Client to manage the device.</p>")
  @as("RemoteManagement")
  remoteManagement: option<remoteManagement>,
  @as("DeviceConfiguration") deviceConfiguration: option<deviceConfiguration>,
  @ocaml.doc(
    "<p>The metadata associated with the tax documents required in your Amazon Web Services Region.</p>"
  )
  @as("TaxDocuments")
  taxDocuments: option<taxDocuments>,
  @ocaml.doc("<p>The ID of the address that you want a job shipped to, after it will be
      shipped to its primary address. This field is not supported in most regions.</p>")
  @as("ForwardingAddressId")
  forwardingAddressId: option<addressId>,
  @ocaml.doc("<p>The 39-character ID for the cluster, for example
        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
  @as("ClusterId")
  clusterId: option<string_>,
  @ocaml.doc("<p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF
      job report becomes available at the end of the import process. For export jobs, your job
      report typically becomes available while the Snow device for your job part is being delivered
      to you.</p>")
  @as("JobLogInfo")
  jobLogInfo: option<jobLogs>,
  @ocaml.doc("<p>A value that defines the real-time status of a Snow device's data transfer while the
      device is at Amazon Web Services. This data is only available while a job has a
        <code>JobState</code> value of <code>InProgress</code>, for both import and export
      jobs.</p>")
  @as("DataTransferProgress")
  dataTransferProgress: option<dataTransfer>,
  @ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated
      with a specific job. The <code>Notification</code> object is returned as a part of the
      response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data
      type.</p>")
  @as("Notification")
  notification: option<notification>,
  @ocaml.doc("<p>The Snow device capacity preference for this job, specified at job creation. In US
      regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB
      capacity Snowballs.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
  @as("SnowballCapacityPreference")
  snowballCapacityPreference: option<snowballCapacity>,
  @ocaml.doc("<p>A job's shipping information, including inbound and outbound tracking numbers and
      shipping speed options.</p>")
  @as("ShippingDetails")
  shippingDetails: option<shippingDetails>,
  @ocaml.doc("<p>The ID for the address that you want the Snow device shipped to.</p>")
  @as("AddressId")
  addressId: option<addressId>,
  @ocaml.doc("<p>The role ARN associated with this job. This ARN was created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>
      API action in Identity and Access Management.</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Key Management Service (KMS) key
      associated with this job. This ARN was created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in KMS.</p>")
  @as("KmsKeyARN")
  kmsKeyARN: option<kmsKeyARN>,
  @ocaml.doc("<p>The description of the job, provided at job creation.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object
      represents an Amazon S3 bucket that your transferred data will be exported from or imported
      into.</p>")
  @as("Resources")
  resources: option<jobResource>,
  @ocaml.doc("<p>The creation date for this job.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The type of device used with this job.</p>") @as("SnowballType")
  snowballType: option<snowballType>,
  @ocaml.doc("<p>The type of job.</p>") @as("JobType") jobType: option<jobType>,
  @ocaml.doc("<p>The current status of the jobs.</p>") @as("JobState") jobState: option<jobState>,
  @ocaml.doc("<p>The automatically generated ID for a job, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
  @as("JobId")
  jobId: option<string_>,
}
@ocaml.doc("<p>Contains metadata about a specific cluster.</p>")
type clusterMetadata = {
  @ocaml.doc("<p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family
      device.</p>")
  @as("OnDeviceServiceConfiguration")
  onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
  @ocaml.doc("<p>The tax documents required in your Amazon Web Services Region.</p>")
  @as("TaxDocuments")
  taxDocuments: option<taxDocuments>,
  @ocaml.doc("<p>The ID of the address that you want a cluster shipped to, after it will be
      shipped to its primary address. This field is not supported in most regions.</p>")
  @as("ForwardingAddressId")
  forwardingAddressId: option<addressId>,
  @ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
      cluster.</p>")
  @as("Notification")
  notification: option<notification>,
  @ocaml.doc("<p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
      you'll get each device, rather it represents how quickly each device moves to its destination
      while in transit. Regional shipping speeds are as follows:</p>

         <ul>
            <li>
               <p>In Australia, you have access to express shipping. Typically, devices shipped
          express are delivered in about a day.</p>
            </li>
            <li>
               <p>In the European Union (EU), you have access to express shipping. Typically, Snow
          devices shipped express are delivered in about a day. In addition, most countries in the
          EU have access to standard shipping, which typically takes less than a week, one
          way.</p>
            </li>
            <li>
               <p>In India, Snow devices are delivered in one to seven days.</p>
            </li>
            <li>
               <p>In the US, you have access to one-day shipping and two-day shipping.</p>
            </li>
         </ul>")
  @as("ShippingOption")
  shippingOption: option<shippingOption>,
  @ocaml.doc("<p>The automatically generated ID for a specific address.</p>") @as("AddressId")
  addressId: option<addressId>,
  @ocaml.doc(
    "<p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>"
  )
  @as("Resources")
  resources: option<jobResource>,
  @ocaml.doc("<p>The creation date for this cluster.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The type of Snowcone device to use for this cluster.
      </p>
         <note>
            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
          <code>EDGE</code> device type.</p>
         </note>")
  @as("SnowballType")
  snowballType: option<snowballType>,
  @ocaml.doc("<p>The type of job for this cluster. Currently, the only job type supported for clusters
      is <code>LOCAL_USE</code>.</p>")
  @as("JobType")
  jobType: option<jobType>,
  @ocaml.doc("<p>The current status of the cluster.</p>") @as("ClusterState")
  clusterState: option<clusterState>,
  @ocaml.doc("<p>The role ARN associated with this cluster. This ARN was created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>
      API action in Identity and Access Management (IAM).</p>")
  @as("RoleARN")
  roleARN: option<roleARN>,
  @ocaml.doc("<p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster.
      This ARN was created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in Key Management Service (KMS.</p>")
  @as("KmsKeyARN")
  kmsKeyARN: option<kmsKeyARN>,
  @ocaml.doc("<p>The optional description of the cluster.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The automatically generated ID for a cluster.</p>") @as("ClusterId")
  clusterId: option<string_>,
}
type jobMetadataList = array<jobMetadata>
@ocaml.doc("<p>The Amazon Web Services Snow Family provides a petabyte-scale data transport solution that uses
      secure devices to transfer large amounts of data between your on-premises data centers and
      Amazon Simple Storage Service (Amazon S3). The Snow Family commands described here provide access to the same
      functionality that is available in the Amazon Web Services Snow Family Management Console, which enables you to create
      and manage jobs for a Snow Family device. To transfer data locally with a Snow Family device,
      you'll need to use the Snowball Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow Family. For more information, see the <a href=\"https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html\">User Guide</a>.</p>")
module UpdateLongTermPricing = {
  type t
  type request = {
    @ocaml.doc("<p>If set to <code>true</code>, specifies that the current long-term pricing type for the
      device should be automatically renewed before the long-term pricing contract expires.</p>")
    @as("IsLongTermPricingAutoRenew")
    isLongTermPricingAutoRenew: option<javaBoolean>,
    @ocaml.doc("<p>Specifies that a device that is ordered with long-term pricing should be replaced with a
      new device.</p>")
    @as("ReplacementJob")
    replacementJob: option<jobId>,
    @ocaml.doc("<p>The ID of the long-term pricing type for the device.</p>")
    @as("LongTermPricingId")
    longTermPricingId: longTermPricingId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "UpdateLongTermPricingCommand"
  let make = (~longTermPricingId, ~isLongTermPricingAutoRenew=?, ~replacementJob=?, ()) =>
    new({
      isLongTermPricingAutoRenew: isLongTermPricingAutoRenew,
      replacementJob: replacementJob,
      longTermPricingId: longTermPricingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateJobShipmentState = {
  type t
  type request = {
    @ocaml.doc("<p>The state of a device when it is being shipped. </p>
         <p>Set to <code>RECEIVED</code> when the device arrives at your location.</p>
         <p>Set to <code>RETURNED</code> when you have returned the device to Amazon Web Services.</p>")
    @as("ShipmentState")
    shipmentState: shipmentState,
    @ocaml.doc("<p>The job ID of the job whose shipment date you want to update, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "UpdateJobShipmentStateCommand"
  let make = (~shipmentState, ~jobId, ()) => new({shipmentState: shipmentState, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetSoftwareUpdates = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for a job that you want to get the software update file for, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 presigned URL for the update file associated with the specified
        <code>JobId</code> value. The software update will be available for 2 days after this
      request is made. To access an update after the 2 days have passed, you'll have to make another
      call to <code>GetSoftwareUpdates</code>.</p>")
    @as("UpdatesURI")
    updatesURI: option<string_>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "GetSoftwareUpdatesCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSnowballUsage = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The number of Snow devices that this account is currently using.</p>")
    @as("SnowballsInUse")
    snowballsInUse: option<integer_>,
    @ocaml.doc("<p>The service limit for number of Snow devices this account can have at once. The default
      service limit is 1 (one).</p>")
    @as("SnowballLimit")
    snowballLimit: option<integer_>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "GetSnowballUsageCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobUnlockCode = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for
      example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code>
      value can be accessed for up to 360 days after the job has been created.</p>")
    @as("UnlockCode")
    unlockCode: option<string_>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "GetJobUnlockCodeCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobManifest = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for a job that you want to get the manifest file for, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 presigned URL for the manifest file associated with the specified
        <code>JobId</code> value.</p>")
    @as("ManifestURI")
    manifestURI: option<string_>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "GetJobManifestCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReturnShippingLabel = {
  type t
  type request = {
    @ocaml.doc("<p>The automatically generated ID for a job, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The pre-signed Amazon S3 URI used to download the return shipping label.</p>")
    @as("ReturnShippingLabelURI")
    returnShippingLabelURI: option<string_>,
    @ocaml.doc("<p>The expiration date of the current return shipping label.</p>")
    @as("ExpirationDate")
    expirationDate: option<timestamp_>,
    @ocaml.doc(
      "<p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>"
    )
    @as("Status")
    status: option<shippingLabelStatus>,
  }
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "DescribeReturnShippingLabelCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReturnShippingLabel = {
  type t
  type request = {
    @ocaml.doc("<p>The shipping speed for a particular job. This speed doesn't dictate how soon the device
      is returned to Amazon Web Services. This speed represents how quickly it moves to its
      destination while in transit. Regional shipping speeds are as follows:</p>")
    @as("ShippingOption")
    shippingOption: option<shippingOption>,
    @ocaml.doc("<p>The ID for a job that you want to create the return shipping label for; for example,
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>"
    )
    @as("Status")
    status: option<shippingLabelStatus>,
  }
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "CreateReturnShippingLabelCommand"
  let make = (~jobId, ~shippingOption=?, ()) => new({shippingOption: shippingOption, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLongTermPricing = {
  type t
  type request = {
    @ocaml.doc("<p>The type of Snow Family Devices to use for the long-term pricing job.</p>")
    @as("SnowballType")
    snowballType: option<snowballType>,
    @ocaml.doc("<p>Specifies whether the current long-term pricing type for the device should be
      renewed.</p>")
    @as("IsLongTermPricingAutoRenew")
    isLongTermPricingAutoRenew: option<javaBoolean>,
    @ocaml.doc("<p>The type of long-term pricing option you want for the device, either 1-year or 3-year
      long-term pricing.</p>")
    @as("LongTermPricingType")
    longTermPricingType: longTermPricingType,
  }
  type response = {
    @ocaml.doc("<p>The ID of the long-term pricing type for the device.</p>")
    @as("LongTermPricingId")
    longTermPricingId: option<longTermPricingId>,
  }
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "CreateLongTermPricingCommand"
  let make = (~longTermPricingType, ~snowballType=?, ~isLongTermPricingAutoRenew=?, ()) =>
    new({
      snowballType: snowballType,
      isLongTermPricingAutoRenew: isLongTermPricingAutoRenew,
      longTermPricingType: longTermPricingType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJob = {
  type t
  type request = {
    @ocaml.doc("<p>The 39-character job ID for the job that you want to cancel, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new external new: request => t = "CancelJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The 39-character ID for the cluster that you want to cancel, for example
        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new external new: request => t = "CancelClusterCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeAddress = {
  type t
  type request = {
    @ocaml.doc("<p>The automatically generated ID for a specific address.</p>") @as("AddressId")
    addressId: addressId,
  }
  type response = {
    @ocaml.doc("<p>The address that you want the Snow device(s) associated with a specific job to be
      shipped to.</p>")
    @as("Address")
    address: option<address>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "DescribeAddressCommand"
  let make = (~addressId, ()) => new({addressId: addressId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAddress = {
  type t
  type request = {
    @ocaml.doc("<p>The address that you want the Snow device shipped to.</p>") @as("Address")
    address: address,
  }
  type response = {
    @ocaml.doc("<p>The automatically generated ID for a specific address. You'll use this ID when you
      create a job to specify which address you want the Snow device for that job shipped
      to.</p>")
    @as("AddressId")
    addressId: option<string_>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "CreateAddressCommand"
  let make = (~address, ()) => new({address: address})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of
        <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
      as the starting point for your returned list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of <code>JobListEntry</code> objects to return.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
  }
  type response = {
    @ocaml.doc("<p>HTTP requests are stateless. If you use this automatically generated
        <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned
        <code>JobListEntry</code> objects will start from this point in the array.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
      that indicates whether the job is a job part, in the case of export jobs. </p>")
    @as("JobListEntries")
    jobListEntries: option<jobListEntryList>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "ListJobsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCompatibleImages = {
  type t
  type request = {
    @ocaml.doc("<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of
      compatible images, you can specify a value for <code>NextToken</code> as the starting point
      for your list of returned images.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results for the list of compatible images. Currently, a Snowball
      Edge device can store 10 AMIs.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
  }
  type response = {
    @ocaml.doc("<p>Because HTTP requests are stateless, this is the starting point for your next list of
      returned images.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A JSON-formatted object that describes a compatible AMI, including the ID and name for
      a Snow device AMI.</p>")
    @as("CompatibleImages")
    compatibleImages: option<compatibleImageList>,
  }
  @module("@aws-sdk/client-snowball") @new
  external new: request => t = "ListCompatibleImagesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
  type t
  type request = {
    @ocaml.doc("<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of
        <code>ClusterListEntry</code> objects, you have the option of specifying
        <code>NextToken</code> as the starting point for your returned list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of <code>ClusterListEntry</code> objects to return.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
  }
  type response = {
    @ocaml.doc("<p>HTTP requests are stateless. If you use the automatically generated
        <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of
      returned clusters will start from this point in the array.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID,
      and other important status information.</p>")
    @as("ClusterListEntries")
    clusterListEntries: option<clusterListEntryList>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "ListClustersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusterJobs = {
  type t
  type request = {
    @ocaml.doc("<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of
        <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
      as the starting point for your returned list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of <code>JobListEntry</code> objects to return.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
    @ocaml.doc("<p>The 39-character ID for the cluster that you want to list, for example
        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>HTTP requests are stateless. If you use the automatically generated
        <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list
      of returned jobs will start from this point in the array.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
      that indicates whether the job is a job part, in the case of export jobs. </p>")
    @as("JobListEntries")
    jobListEntries: option<jobListEntryList>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "ListClusterJobsCommand"
  let make = (~clusterId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAddresses = {
  type t
  type request = {
    @ocaml.doc("<p>HTTP requests are stateless. To identify what object comes \"next\" in the list of
        <code>ADDRESS</code> objects, you have the option of specifying a value for
        <code>NextToken</code> as the starting point for your list of returned addresses.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of <code>ADDRESS</code> objects to return.</p>") @as("MaxResults")
    maxResults: option<listLimit>,
  }
  type response = {
    @ocaml.doc("<p>HTTP requests are stateless. If you use the automatically generated
        <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of
      returned addresses will start from this point in the array.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The Snow device shipping addresses that were created for this account.</p>")
    @as("Addresses")
    addresses: option<addressList>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "DescribeAddressesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLongTermPricing = {
  type t
  type request = {
    @ocaml.doc("<p>Because HTTP requests are stateless, this is the starting point for your next list of
        <code>ListLongTermPricing</code> to return.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of <code>ListLongTermPricing</code> objects to return.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
  }
  type response = {
    @ocaml.doc("<p>Because HTTP requests are stateless, this is the starting point for your next list of
      returned <code>ListLongTermPricing</code> list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Each <code>LongTermPricingEntry</code> object contains a status, ID, and other information
      about the <code>LongTermPricing</code> type. </p>")
    @as("LongTermPricingEntries")
    longTermPricingEntries: option<longTermPricingEntryList>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "ListLongTermPricingCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The updated ID for the forwarding address for a job. This field is not
      supported in most regions.</p>")
    @as("ForwardingAddressId")
    forwardingAddressId: option<addressId>,
    @ocaml.doc("<p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US
      regions.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("SnowballCapacityPreference")
    snowballCapacityPreference: option<snowballCapacity>,
    @ocaml.doc("<p>The updated description of this job's <a>JobMetadata</a> object.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The updated shipping option value of this job's <a>ShippingDetails</a>
      object.</p>")
    @as("ShippingOption")
    shippingOption: option<shippingOption>,
    @ocaml.doc("<p>The ID of the updated <a>Address</a> object.</p>") @as("AddressId")
    addressId: option<addressId>,
    @ocaml.doc("<p>Specifies the service or services on the Snow Family device that your transferred data
      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
      System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>")
    @as("OnDeviceServiceConfiguration")
    onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
    @ocaml.doc(
      "<p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>"
    )
    @as("Resources")
    resources: option<jobResource>,
    @ocaml.doc("<p>The new or updated <a>Notification</a> object.</p>") @as("Notification")
    notification: option<notification>,
    @ocaml.doc("<p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To
      create a role ARN, use the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>Identity and Access Management
      (IAM) API action.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The job ID of the job that you want to update, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new external new: request => t = "UpdateJobCommand"
  let make = (
    ~jobId,
    ~forwardingAddressId=?,
    ~snowballCapacityPreference=?,
    ~description=?,
    ~shippingOption=?,
    ~addressId=?,
    ~onDeviceServiceConfiguration=?,
    ~resources=?,
    ~notification=?,
    ~roleARN=?,
    (),
  ) =>
    new({
      forwardingAddressId: forwardingAddressId,
      snowballCapacityPreference: snowballCapacityPreference,
      description: description,
      shippingOption: shippingOption,
      addressId: addressId,
      onDeviceServiceConfiguration: onDeviceServiceConfiguration,
      resources: resources,
      notification: notification,
      roleARN: roleARN,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The updated ID for the forwarding address for a cluster. This field is not
      supported in most regions.</p>")
    @as("ForwardingAddressId")
    forwardingAddressId: option<addressId>,
    @ocaml.doc("<p>The new or updated <a>Notification</a> object.</p>") @as("Notification")
    notification: option<notification>,
    @ocaml.doc("<p>The updated shipping option value of this cluster's <a>ShippingDetails</a>
      object.</p>")
    @as("ShippingOption")
    shippingOption: option<shippingOption>,
    @ocaml.doc("<p>The ID of the updated <a>Address</a> object.</p>") @as("AddressId")
    addressId: option<addressId>,
    @ocaml.doc("<p>Specifies the service or services on the Snow Family device that your transferred data
      will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
      (Network File System).</p>")
    @as("OnDeviceServiceConfiguration")
    onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
    @ocaml.doc("<p>The updated arrays of <a>JobResource</a> objects that can include updated
        <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>")
    @as("Resources")
    resources: option<jobResource>,
    @ocaml.doc("<p>The updated description of this cluster.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster.
      To create a role ARN, use the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a> API action in Identity and Access Management (IAM).</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The cluster ID of the cluster that you want to update, for example
        <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {.}
  @module("@aws-sdk/client-snowball") @new external new: request => t = "UpdateClusterCommand"
  let make = (
    ~clusterId,
    ~forwardingAddressId=?,
    ~notification=?,
    ~shippingOption=?,
    ~addressId=?,
    ~onDeviceServiceConfiguration=?,
    ~resources=?,
    ~description=?,
    ~roleARN=?,
    (),
  ) =>
    new({
      forwardingAddressId: forwardingAddressId,
      notification: notification,
      shippingOption: shippingOption,
      addressId: addressId,
      onDeviceServiceConfiguration: onDeviceServiceConfiguration,
      resources: resources,
      description: description,
      roleARN: roleARN,
      clusterId: clusterId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the long-term pricing type for the device.</p>")
    @as("LongTermPricingId")
    longTermPricingId: option<longTermPricingId>,
    @ocaml.doc("<p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
      internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
      automatically be available when the device arrives at your location. Otherwise, you need to
      use the Snowball Client to manage the device.</p>")
    @as("RemoteManagement")
    remoteManagement: option<remoteManagement>,
    @ocaml.doc("<p>Defines the device configuration for an Snowcone job.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("DeviceConfiguration")
    deviceConfiguration: option<deviceConfiguration>,
    @ocaml.doc("<p>The tax documents required in your Amazon Web Services Region.</p>")
    @as("TaxDocuments")
    taxDocuments: option<taxDocuments>,
    @ocaml.doc("<p>The forwarding address ID for a job. This field is not supported in most
      Regions.</p>")
    @as("ForwardingAddressId")
    forwardingAddressId: option<addressId>,
    @ocaml.doc("<p>The type of Snow Family Devices to use for this job.
      </p>
         <note>
            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
          <code>EDGE</code> device type.</p>
         </note>
         <p>The type of Amazon Web Services Snow device to use for this job. Currently, the only
      supported device type for cluster jobs is <code>EDGE</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html\">Snowball Edge Device
        Options</a> in the Snowball Edge Developer Guide.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("SnowballType")
    snowballType: option<snowballType>,
    @ocaml.doc("<p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to
      provide only this <code>clusterId</code> value. The other job attributes are inherited from
      the cluster.</p>")
    @as("ClusterId")
    clusterId: option<clusterId>,
    @ocaml.doc("<p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for
      this job.</p>")
    @as("Notification")
    notification: option<notification>,
    @ocaml.doc("<p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the
      Snow device, rather it represents how quickly the Snow device moves to its destination while
      in transit. Regional shipping speeds are as follows:</p>

         <ul>
            <li>
               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
          express are delivered in about a day.</p>
            </li>
            <li>
               <p>In the European Union (EU), you have access to express shipping. Typically, Snow
          devices shipped express are delivered in about a day. In addition, most countries in the
          EU have access to standard shipping, which typically takes less than a week, one
          way.</p>
            </li>
            <li>
               <p>In India, Snow devices are delivered in one to seven days.</p>
            </li>
            <li>
               <p>In the US, you have access to one-day shipping and two-day shipping.</p>
            </li>
         </ul>")
    @as("ShippingOption")
    shippingOption: option<shippingOption>,
    @ocaml.doc("<p>If your job is being created in one of the US regions, you have the option of
      specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
      with 80 TB in storage capacity.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("SnowballCapacityPreference")
    snowballCapacityPreference: option<snowballCapacity>,
    @ocaml.doc("<p>The <code>RoleARN</code> that you want to associate with this job.
      <code>RoleArn</code>s are created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a>
      Identity and Access Management (IAM) API action.</p>")
    @as("RoleARN")
    roleARN: option<roleARN>,
    @ocaml.doc("<p>The <code>KmsKeyARN</code> that you want to associate with this job.
        <code>KmsKeyARN</code>s are created using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a>
      Key Management Service (KMS) API action.</p>")
    @as("KmsKeyARN")
    kmsKeyARN: option<kmsKeyARN>,
    @ocaml.doc("<p>The ID for the address that you want the Snow device shipped to.</p>")
    @as("AddressId")
    addressId: option<addressId>,
    @ocaml.doc("<p>Defines an optional description of this specific job, for example <code>Important
        Photos 2016-08-11</code>.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>Specifies the service or services on the Snow Family device that your transferred data
      will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
      System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>")
    @as("OnDeviceServiceConfiguration")
    onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
    @ocaml.doc("<p>Defines the Amazon S3 buckets associated with this job.</p>

         <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred
      data will be imported into.</p>

         <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred
      data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If
      you choose to export a range, you define the length of the range by providing either an
      inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both.
      Ranges are UTF-8 binary sorted.</p>")
    @as("Resources")
    resources: option<jobResource>,
    @ocaml.doc("<p>Defines the type of job that you're creating.
      </p>")
    @as("JobType")
    jobType: option<jobType>,
  }
  type response = {
    @ocaml.doc("<p>The automatically generated ID for a job, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~longTermPricingId=?,
    ~remoteManagement=?,
    ~deviceConfiguration=?,
    ~taxDocuments=?,
    ~forwardingAddressId=?,
    ~snowballType=?,
    ~clusterId=?,
    ~notification=?,
    ~shippingOption=?,
    ~snowballCapacityPreference=?,
    ~roleARN=?,
    ~kmsKeyARN=?,
    ~addressId=?,
    ~description=?,
    ~onDeviceServiceConfiguration=?,
    ~resources=?,
    ~jobType=?,
    (),
  ) =>
    new({
      longTermPricingId: longTermPricingId,
      remoteManagement: remoteManagement,
      deviceConfiguration: deviceConfiguration,
      taxDocuments: taxDocuments,
      forwardingAddressId: forwardingAddressId,
      snowballType: snowballType,
      clusterId: clusterId,
      notification: notification,
      shippingOption: shippingOption,
      snowballCapacityPreference: snowballCapacityPreference,
      roleARN: roleARN,
      kmsKeyARN: kmsKeyARN,
      addressId: addressId,
      description: description,
      onDeviceServiceConfiguration: onDeviceServiceConfiguration,
      resources: resources,
      jobType: jobType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>Allows you to securely operate and manage Snow devices in a cluster remotely from outside
      of your internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
      automatically be available when the device arrives at your location. Otherwise, you need to
      use the Snowball Client to manage the device.</p>")
    @as("RemoteManagement")
    remoteManagement: option<remoteManagement>,
    @ocaml.doc("<p>The tax documents required in your Amazon Web Services Region.</p>")
    @as("TaxDocuments")
    taxDocuments: option<taxDocuments>,
    @ocaml.doc("<p>The forwarding address ID for a cluster. This field is not supported in most
      regions.</p>")
    @as("ForwardingAddressId")
    forwardingAddressId: option<addressId>,
    @ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
      cluster.</p>")
    @as("Notification")
    notification: option<notification>,
    @ocaml.doc("<p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
      you'll get each Snowball Edge device, rather it represents how quickly each device moves to
      its destination while in transit. Regional shipping speeds are as follows: </p>
         <ul>
            <li>
               <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
          express are delivered in about a day.</p>
            </li>
            <li>
               <p>In the European Union (EU), you have access to express shipping. Typically, Snow
          devices shipped express are delivered in about a day. In addition, most countries in the
          EU have access to standard shipping, which typically takes less than a week, one
          way.</p>
            </li>
            <li>
               <p>In India, Snow devices are delivered in one to seven days.</p>
            </li>
            <li>
               <p>In the United States of America (US), you have access to one-day shipping and
          two-day shipping.</p>
            </li>
         </ul>

         <ul>
            <li>
               <p>In Australia, you have access to express shipping. Typically, devices shipped
          express are delivered in about a day.</p>
            </li>
            <li>
               <p>In the European Union (EU), you have access to express shipping. Typically, Snow
          devices shipped express are delivered in about a day. In addition, most countries in the
          EU have access to standard shipping, which typically takes less than a week, one
          way.</p>
            </li>
            <li>
               <p>In India, Snow devices are delivered in one to seven days.</p>
            </li>
            <li>
               <p>In the US, you have access to one-day shipping and two-day shipping.</p>
            </li>
         </ul>")
    @as("ShippingOption")
    shippingOption: shippingOption,
    @ocaml.doc("<p>The type of Snow Family Devices to use for this cluster. </p>
         <note>
            <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
          <code>EDGE</code> device type.</p>
         </note>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("SnowballType")
    snowballType: snowballType,
    @ocaml.doc("<p>The <code>RoleARN</code> that you want to associate with this cluster.
        <code>RoleArn</code> values are created by using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html\">CreateRole</a> API action in Identity and Access Management (IAM).</p>")
    @as("RoleARN")
    roleARN: roleARN,
    @ocaml.doc("<p>The <code>KmsKeyARN</code> value that you want to associate with this cluster.
        <code>KmsKeyARN</code> values are created by using the <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html\">CreateKey</a> API action in Key Management Service (KMS). </p>")
    @as("KmsKeyARN")
    kmsKeyARN: option<kmsKeyARN>,
    @ocaml.doc("<p>The ID for the address that you want the cluster shipped to.</p>")
    @as("AddressId")
    addressId: addressId,
    @ocaml.doc("<p>An optional description of this specific cluster, for example <code>Environmental Data
        Cluster-01</code>.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>Specifies the service or services on the Snow Family device that your transferred data
      will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
      (Network File System).</p>")
    @as("OnDeviceServiceConfiguration")
    onDeviceServiceConfiguration: option<onDeviceServiceConfiguration>,
    @ocaml.doc("<p>The resources associated with the cluster job. These resources include Amazon S3
      buckets and optional Lambda functions written in the Python language.
    </p>")
    @as("Resources")
    resources: jobResource,
    @ocaml.doc("<p>The type of job for this cluster. Currently, the only job type supported for clusters
      is <code>LOCAL_USE</code>.</p>
    
         <p>For more information, see
      \"https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
      \"https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html\" (Snow
      Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>")
    @as("JobType")
    jobType: jobType,
  }
  type response = {
    @ocaml.doc("<p>The automatically generated ID for a cluster.</p>") @as("ClusterId")
    clusterId: option<clusterId>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~shippingOption,
    ~snowballType,
    ~roleARN,
    ~addressId,
    ~resources,
    ~jobType,
    ~remoteManagement=?,
    ~taxDocuments=?,
    ~forwardingAddressId=?,
    ~notification=?,
    ~kmsKeyARN=?,
    ~description=?,
    ~onDeviceServiceConfiguration=?,
    (),
  ) =>
    new({
      remoteManagement: remoteManagement,
      taxDocuments: taxDocuments,
      forwardingAddressId: forwardingAddressId,
      notification: notification,
      shippingOption: shippingOption,
      snowballType: snowballType,
      roleARN: roleARN,
      kmsKeyARN: kmsKeyARN,
      addressId: addressId,
      description: description,
      onDeviceServiceConfiguration: onDeviceServiceConfiguration,
      resources: resources,
      jobType: jobType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The automatically generated ID for a cluster.</p>") @as("ClusterId")
    clusterId: clusterId,
  }
  type response = {
    @ocaml.doc("<p>Information about a specific cluster, including shipping information, cluster status,
      and other important metadata.</p>")
    @as("ClusterMetadata")
    clusterMetadata: option<clusterMetadata>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "DescribeClusterCommand"
  let make = (~clusterId, ()) => new({clusterId: clusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The automatically generated ID for a job, for example
        <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Information about a specific job part (in the case of an export job), including
      shipping information, job status, and other important metadata.</p>")
    @as("SubJobMetadata")
    subJobMetadata: option<jobMetadataList>,
    @ocaml.doc("<p>Information about a specific job, including shipping information, job status, and other
      important metadata.</p>")
    @as("JobMetadata")
    jobMetadata: option<jobMetadata>,
  }
  @module("@aws-sdk/client-snowball") @new external new: request => t = "DescribeJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
