type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-outposts") @new
external createClient: unit => awsServiceClient = "OutpostsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uplinkGbps = [
  | @as("UPLINK_100G") #UPLINK_100G
  | @as("UPLINK_40G") #UPLINK_40G
  | @as("UPLINK_10G") #UPLINK_10G
  | @as("UPLINK_1G") #UPLINK_1G
]
type uplinkCount = [
  | @as("UPLINK_COUNT_16") #UPLINK_COUNT_16
  | @as("UPLINK_COUNT_12") #UPLINK_COUNT_12
  | @as("UPLINK_COUNT_8") #UPLINK_COUNT_8
  | @as("UPLINK_COUNT_7") #UPLINK_COUNT_7
  | @as("UPLINK_COUNT_6") #UPLINK_COUNT_6
  | @as("UPLINK_COUNT_5") #UPLINK_COUNT_5
  | @as("UPLINK_COUNT_4") #UPLINK_COUNT_4
  | @as("UPLINK_COUNT_3") #UPLINK_COUNT_3
  | @as("UPLINK_COUNT_2") #UPLINK_COUNT_2
  | @as("UPLINK_COUNT_1") #UPLINK_COUNT_1
]
@ocaml.doc("<p>The pagination token.</p>") type token = string
type tagValue = string
type tagKey = string
type supportedUplinkGbps = int
type supportedStorageEnum = [@as("S3") #S3 | @as("EBS") #EBS]
type supportedHardwareType = [@as("SERVER") #SERVER | @as("RACK") #RACK]
type string_ = string
type stateOrRegion = string
type skuCode = string
type siteNotes = string
@ocaml.doc("<p>The name of the site.</p>") type siteName = string
@ocaml.doc("<p>
      The ID of the site.
    </p>")
type siteId = string
@ocaml.doc("<p>The description of the site.</p>") type siteDescription = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the site.</p>") type siteArn = string
type resourceType = [@as("ORDER") #ORDER | @as("OUTPOST") #OUTPOST]
type quantity = string
type powerPhase = [@as("THREE_PHASE") #THREE_PHASE | @as("SINGLE_PHASE") #SINGLE_PHASE]
type powerFeedDrop = [@as("BELOW_RACK") #BELOW_RACK | @as("ABOVE_RACK") #ABOVE_RACK]
type powerDrawKva = [
  | @as("POWER_15_KVA") #POWER_15_KVA
  | @as("POWER_10_KVA") #POWER_10_KVA
  | @as("POWER_5_KVA") #POWER_5_KVA
]
type powerConnector = [
  | @as("AH532P6W") #AH532P6W
  | @as("AH530P7W") #AH530P7W
  | @as("IEC309") #IEC309
  | @as("L6_30P") #L6_30P
]
type postalCode = string
type paymentTerm = [@as("THREE_YEARS") #THREE_YEARS]
type paymentOption = [
  | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT
  | @as("NO_UPFRONT") #NO_UPFRONT
  | @as("ALL_UPFRONT") #ALL_UPFRONT
]
@ocaml.doc("<p>The Amazon Web Services account ID of the Outpost owner.</p>") type ownerId = string
@ocaml.doc("<p>The name of the Outpost.</p>") type outpostName = string
type outpostIdentifier = string
type outpostIdOnly = string
type outpostId = string
@ocaml.doc("<p>The description of the Outpost.</p>") type outpostDescription = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the Outpost.</p>") type outpostArn = string
type orderType = [@as("REPLACEMENT") #REPLACEMENT | @as("OUTPOST") #OUTPOST]
type orderStatus = [
  | @as("ERROR") #ERROR
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PREPARING") #PREPARING
  | @as("CANCELLED") #CANCELLED
  | @as("FULFILLED") #FULFILLED
  | @as("INSTALLING") #INSTALLING
  | @as("PROCESSING") #PROCESSING
  | @as("PENDING") #PENDING
  | @as("RECEIVED") #RECEIVED
]
type orderId = string
type opticalStandard = [
  | @as("OPTIC_1000BASE_SX") #OPTIC_1000BASE_SX
  | @as("OPTIC_1000BASE_LX") #OPTIC_1000BASE_LX
  | @as("OPTIC_100G_PSM4_MSA") #OPTIC_100G_PSM4_MSA
  | @as("OPTIC_100GBASE_LR4") #OPTIC_100GBASE_LR4
  | @as("OPTIC_100GBASE_CWDM4") #OPTIC_100GBASE_CWDM4
  | @as("OPTIC_100GBASE_SR4") #OPTIC_100GBASE_SR4
  | @as("OPTIC_40GBASE_LR4") #OPTIC_40GBASE_LR4
  | @as("OPTIC_40GBASE_IR4_LR4L") #OPTIC_40GBASE_IR4_LR4L
  | @as("OPTIC_40GBASE_ESR") #OPTIC_40GBASE_ESR
  | @as("OPTIC_40GBASE_SR") #OPTIC_40GBASE_SR
  | @as("OPTIC_10GBASE_LR") #OPTIC_10GBASE_LR
  | @as("OPTIC_10GBASE_IR") #OPTIC_10GBASE_IR
  | @as("OPTIC_10GBASE_SR") #OPTIC_10GBASE_SR
]
type municipality = string
type maximumSupportedWeightLbs = [
  | @as("MAX_2000_LBS") #MAX_2000_LBS
  | @as("MAX_1800_LBS") #MAX_1800_LBS
  | @as("MAX_1600_LBS") #MAX_1600_LBS
  | @as("MAX_1400_LBS") #MAX_1400_LBS
  | @as("NO_LIMIT") #NO_LIMIT
]
type maxSize = string
@ocaml.doc("<p>The maximum page size.</p>") type maxResults1000 = int
type lineItemStatus = [
  | @as("CANCELLED") #CANCELLED
  | @as("ERROR") #ERROR
  | @as("INSTALLED") #INSTALLED
  | @as("INSTALLING") #INSTALLING
  | @as("DELIVERED") #DELIVERED
  | @as("SHIPPED") #SHIPPED
  | @as("BUILDING") #BUILDING
  | @as("PREPARING") #PREPARING
]
type lineItemQuantity = int
type lineItemId = string
@ocaml.doc("<p>The life cycle status.</p>") type lifeCycleStatus = string
@ocaml.doc("<p>The instance type.</p>") type instanceType = string
type iso8601Timestamp = Js.Date.t
type fiberOpticCableType = [@as("MULTI_MODE") #MULTI_MODE | @as("SINGLE_MODE") #SINGLE_MODE]
type family = string
type errorMessage = string
type districtOrCounty = string
type countryCode = string
type contactPhoneNumber = string
type contactName = string
type city = string
type catalogItemWeightLbs = int
type catalogItemStatus = [@as("DISCONTINUED") #DISCONTINUED | @as("AVAILABLE") #AVAILABLE]
type catalogItemPowerKva = float
type catalogItemClass = [@as("SERVER") #SERVER | @as("RACK") #RACK]
@ocaml.doc("<p>The ID of the Availability Zone.</p>") type availabilityZoneId = string
@ocaml.doc("<p>The Availability Zone.</p>") type availabilityZone = string
type arn = string
type addressType = [
  | @as("OPERATING_ADDRESS") #OPERATING_ADDRESS
  | @as("SHIPPING_ADDRESS") #SHIPPING_ADDRESS
]
type addressLine3 = string
type addressLine2 = string
type addressLine1 = string
@ocaml.doc("<p>The ID of the Amazon Web Services account.</p>") type accountId = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type supportedUplinkGbpsListDefinition = array<supportedUplinkGbps>
type supportedStorageList = array<supportedStorageEnum>
type stateOrRegionList = array<stateOrRegion>
@ocaml.doc("<p> Information about the physical and logistical details for racks at sites.
      For more information
      about hardware requirements for racks, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist\">Network 
        readiness checklist</a> in the Amazon Web Services Outposts User Guide.
        </p>")
type rackPhysicalProperties = {
  @ocaml.doc("<p>The maximum rack weight that this site can support. <code>NO_LIMIT</code> is over 2000 lbs
      (907 kg). </p>")
  @as("MaximumSupportedWeightLbs")
  maximumSupportedWeightLbs: option<maximumSupportedWeightLbs>,
  @ocaml.doc("<p>The type of optical standard used to attach the Outpost to the network. This field is
      dependent on uplink speed, fiber type, and distance to the upstream device. For more information
      about networking requirements for racks, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking\">Network</a> 
        in the Amazon Web Services Outposts User Guide.
        </p>")
  @as("OpticalStandard")
  opticalStandard: option<opticalStandard>,
  @ocaml.doc("<p>The type of fiber used to attach the Outpost to the network. </p>")
  @as("FiberOpticCableType")
  fiberOpticCableType: option<fiberOpticCableType>,
  @ocaml.doc("<p>The number of uplinks each Outpost network device.</p>") @as("UplinkCount")
  uplinkCount: option<uplinkCount>,
  @ocaml.doc("<p>The uplink speed the rack supports for the connection to the Region. </p>")
  @as("UplinkGbps")
  uplinkGbps: option<uplinkGbps>,
  @ocaml.doc("<p>The position of the power feed.</p>") @as("PowerFeedDrop")
  powerFeedDrop: option<powerFeedDrop>,
  @ocaml.doc("<p>The power connector for the hardware. </p>") @as("PowerConnector")
  powerConnector: option<powerConnector>,
  @ocaml.doc("<p>The power option that you can provide for hardware.</p>") @as("PowerPhase")
  powerPhase: option<powerPhase>,
  @ocaml.doc("<p>The power draw available at the hardware placement position for the rack. </p>")
  @as("PowerDrawKva")
  powerDrawKva: option<powerDrawKva>,
}
type lineItemStatusCounts = Js.Dict.t<lineItemQuantity>
@ocaml.doc("<p>Information about a line item request.</p>")
type lineItemRequest = {
  @ocaml.doc("<p>The quantity of a line item request.</p>") @as("Quantity")
  quantity: option<lineItemQuantity>,
  @ocaml.doc("<p>The ID of the catalog item.</p>") @as("CatalogItemId")
  catalogItemId: option<skuCode>,
}
@ocaml.doc("<p>Information about a line item.</p>")
type lineItem = {
  @ocaml.doc("<p>The status of the line item.</p>") @as("Status") status: option<lineItemStatus>,
  @ocaml.doc("<p>The quantity of the line item.</p>") @as("Quantity")
  quantity: option<lineItemQuantity>,
  @ocaml.doc("<p>The ID of the line item.</p>") @as("LineItemId") lineItemId: option<lineItemId>,
  @ocaml.doc("<p>
      The ID of the catalog item.
    </p>")
  @as("CatalogItemId")
  catalogItemId: option<skuCode>,
}
type lifeCycleStatusList = array<lifeCycleStatus>
@ocaml.doc("<p>Information about an instance type.</p>")
type instanceTypeItem = {@as("InstanceType") instanceType: option<instanceType>}
type ec2FamilyList = array<family>
@ocaml.doc("<p> Information about EC2 capacity. </p>")
type ec2Capacity = {
  @ocaml.doc("<p>
      The quantity of the EC2 capacity.
    </p>")
  @as("Quantity")
  quantity: option<quantity>,
  @ocaml.doc("<p>
      The maximum size of the EC2 capacity.
    </p>")
  @as("MaxSize")
  maxSize: option<maxSize>,
  @ocaml.doc("<p>
      The family of the EC2 capacity.
    </p>")
  @as("Family")
  family: option<family>,
}
type countryCodeList = array<countryCode>
type cityList = array<city>
type catalogItemClassList = array<catalogItemClass>
type availabilityZoneList = array<availabilityZone>
type availabilityZoneIdList = array<availabilityZoneId>
@ocaml.doc("<p>
      Information about an address.
    </p>")
type address = {
  @ocaml.doc("<p>The municipality for the address.</p>") @as("Municipality")
  municipality: option<municipality>,
  @ocaml.doc("<p>The ISO-3166 two-letter country code for the address.</p>") @as("CountryCode")
  countryCode: countryCode,
  @ocaml.doc("<p>The postal code for the address.</p>") @as("PostalCode") postalCode: postalCode,
  @ocaml.doc("<p>The district or county for the address.</p>") @as("DistrictOrCounty")
  districtOrCounty: option<districtOrCounty>,
  @ocaml.doc("<p>The state for the address.</p>") @as("StateOrRegion") stateOrRegion: stateOrRegion,
  @ocaml.doc("<p>The city for the address.</p>") @as("City") city: city,
  @ocaml.doc("<p>The third line of the address.</p>") @as("AddressLine3")
  addressLine3: option<addressLine3>,
  @ocaml.doc("<p>The second line of the address.</p>") @as("AddressLine2")
  addressLine2: option<addressLine2>,
  @ocaml.doc("<p>The first line of the address.</p>") @as("AddressLine1")
  addressLine1: addressLine1,
  @ocaml.doc("<p>The phone number of the contact.</p>") @as("ContactPhoneNumber")
  contactPhoneNumber: option<contactPhoneNumber>,
  @ocaml.doc("<p>The name of the contact.</p>") @as("ContactName") contactName: option<contactName>,
}
@ocaml.doc("<p>Information about a site.</p>")
type site = {
  @ocaml.doc("<p>
      Information about the physical and logistical details for a rack at the site.
    </p>")
  @as("RackPhysicalProperties")
  rackPhysicalProperties: option<rackPhysicalProperties>,
  @ocaml.doc("<p>
      City where the hardware is installed and powered on.
    </p>")
  @as("OperatingAddressCity")
  operatingAddressCity: option<city>,
  @ocaml.doc("<p> State or region where the hardware is installed and powered on. </p>")
  @as("OperatingAddressStateOrRegion")
  operatingAddressStateOrRegion: option<stateOrRegion>,
  @ocaml.doc("<p>
      The ISO-3166 two-letter country code where the hardware is installed and powered on.
    </p>")
  @as("OperatingAddressCountryCode")
  operatingAddressCountryCode: option<countryCode>,
  @ocaml.doc("<p>
      Notes about a site. 
    </p>")
  @as("Notes")
  notes: option<siteNotes>,
  @as("SiteArn") siteArn: option<siteArn>,
  @ocaml.doc("<p>The site tags.</p>") @as("Tags") tags: option<tagMap>,
  @as("Description") description: option<siteDescription>,
  @as("Name") name: option<siteName>,
  @as("AccountId") accountId: option<accountId>,
  @as("SiteId") siteId: option<siteId>,
}
@ocaml.doc("<p>Information about an Outpost.</p>")
type outpost = {
  @ocaml.doc("<p>
      The hardware type. 
    </p>")
  @as("SupportedHardwareType")
  supportedHardwareType: option<supportedHardwareType>,
  @as("SiteArn") siteArn: option<siteArn>,
  @ocaml.doc("<p>The Outpost tags.</p>") @as("Tags") tags: option<tagMap>,
  @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
  @as("AvailabilityZone") availabilityZone: option<availabilityZone>,
  @as("LifeCycleStatus") lifeCycleStatus: option<lifeCycleStatus>,
  @as("Description") description: option<outpostDescription>,
  @as("Name") name: option<outpostName>,
  @as("SiteId") siteId: option<siteId>,
  @as("OutpostArn") outpostArn: option<outpostArn>,
  @as("OwnerId") ownerId: option<ownerId>,
  @ocaml.doc("<p>
      The ID of the Outpost.
    </p>")
  @as("OutpostId")
  outpostId: option<outpostId>,
}
@ocaml.doc("<p>
      A summary of line items in your order.
    </p>")
type orderSummary = {
  @ocaml.doc("<p>
      Fulfilment date for the order.
    </p>")
  @as("OrderFulfilledDate")
  orderFulfilledDate: option<iso8601Timestamp>,
  @ocaml.doc("<p>
      Submission date for the order. 
    </p>")
  @as("OrderSubmissionDate")
  orderSubmissionDate: option<iso8601Timestamp>,
  @ocaml.doc("<p>
      The status of all line items in the order. 
    </p>")
  @as("LineItemCountsByStatus")
  lineItemCountsByStatus: option<lineItemStatusCounts>,
  @ocaml.doc("<p>The status of the order.</p>
         <ul>
            <li>
               <p>
                  <code>PREPARING</code> - Order is received and is being prepared.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Order is either being built, shipped, or installed. For more
          information, see the <code>LineItem</code> status.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - Order is complete.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> - Order is cancelled.</p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - Customer should contact support.</p>
            </li>
         </ul>
    
         <note>
            <p>The following statuses are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
          <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
         </note>")
  @as("Status")
  status: option<orderStatus>,
  @ocaml.doc("<p>
      The type of order. 
    </p>")
  @as("OrderType")
  orderType: option<orderType>,
  @ocaml.doc("<p>
      The ID of the order.
    </p>")
  @as("OrderId")
  orderId: option<orderId>,
  @ocaml.doc("<p>
      The ID of the Outpost.
    </p>")
  @as("OutpostId")
  outpostId: option<outpostIdOnly>,
}
type lineItemRequestListDefinition = array<lineItemRequest>
type lineItemListDefinition = array<lineItem>
@ocaml.doc("<p>Information about the instance types.</p>")
type instanceTypeListDefinition = array<instanceTypeItem>
type ec2CapacityListDefinition = array<ec2Capacity>
@ocaml.doc("<p>Information about the sites.</p>") type siteListDefinition = array<site>
@ocaml.doc("<p>Information about the Outposts.</p>") type outpostListDefinition = array<outpost>
type orderSummaryListDefinition = array<orderSummary>
@ocaml.doc("<p>Information about an order.</p>")
type order = {
  @ocaml.doc("<p>The fulfillment date of the order.</p>") @as("OrderFulfilledDate")
  orderFulfilledDate: option<iso8601Timestamp>,
  @ocaml.doc("<p>The submission date for the order.</p>") @as("OrderSubmissionDate")
  orderSubmissionDate: option<iso8601Timestamp>,
  @ocaml.doc("<p>The payment option for the order.</p>") @as("PaymentOption")
  paymentOption: option<paymentOption>,
  @ocaml.doc("<p>The line items for the order</p>") @as("LineItems")
  lineItems: option<lineItemListDefinition>,
  @ocaml.doc("<p>The status of the order.</p>
         <ul>
            <li>
               <p>
                  <code>PREPARING</code> - Order is received and being prepared.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Order is either being built, shipped, or installed. To get more
          details, see the <code>LineItem</code> status.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - Order is complete.</p>
            </li>
            <li>
               <p>
                  <code>CANCELLED</code> - Order is cancelled.</p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - Customer should contact support.</p>
            </li>
         </ul>
    
         <note>
            <p>The following status are deprecated: <code>RECEIVED</code>, <code>PENDING</code>,
          <code>PROCESSING</code>, <code>INSTALLING</code>, and <code>FULFILLED</code>. </p>
         </note>")
  @as("Status")
  status: option<orderStatus>,
  @ocaml.doc("<p>The ID of the order.</p>") @as("OrderId") orderId: option<orderId>,
  @ocaml.doc("<p>
      The ID of the Outpost in the order.
    </p>")
  @as("OutpostId")
  outpostId: option<outpostIdOnly>,
}
@ocaml.doc("<p> Information about a catalog item. </p>")
type catalogItem = {
  @ocaml.doc("<p>
      The supported storage options for the catalog item.
    </p>")
  @as("SupportedStorage")
  supportedStorage: option<supportedStorageList>,
  @ocaml.doc("<p>
      The uplink speed this catalog item requires for the 
      connection to the Region.
    </p>")
  @as("SupportedUplinkGbps")
  supportedUplinkGbps: option<supportedUplinkGbpsListDefinition>,
  @ocaml.doc("<p> The weight of the item in pounds. </p>") @as("WeightLbs")
  weightLbs: option<catalogItemWeightLbs>,
  @ocaml.doc("<p>
      Information about the power draw of an item.
    </p>")
  @as("PowerKva")
  powerKva: option<catalogItemPowerKva>,
  @ocaml.doc("<p>
      Information about the EC2 capacity of an item.
    </p>")
  @as("EC2Capacities")
  ec2Capacities: option<ec2CapacityListDefinition>,
  @ocaml.doc("<p>
      The status of a catalog item.
    </p>")
  @as("ItemStatus")
  itemStatus: option<catalogItemStatus>,
  @ocaml.doc("<p>
      The ID of the catalog item.
    </p>")
  @as("CatalogItemId")
  catalogItemId: option<skuCode>,
}
type catalogItemListDefinition = array<catalogItem>
@ocaml.doc("<p>Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools
      to customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts
      enables customers to build and run applications on premises using the same programming
      interfaces as in Amazon Web Services Regions, while using local compute and storage resources for lower
      latency and local data processing needs.</p>")
module DeleteSite = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {.}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteSiteCommand"
  let make = (~siteId, ()) => new({siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOutpost = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostId")
    outpostId: outpostId,
  }
  type response = {.}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteOutpostCommand"
  let make = (~outpostId, ()) => new({outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelOrder = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ID of the order to cancel.
    </p>")
    @as("OrderId")
    orderId: orderId,
  }
  type response = {.}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CancelOrderCommand"
  let make = (~orderId, ()) => new({orderId: orderId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSiteAddress = {
  type t
  type request = {
    @ocaml.doc("<p>
      The address for the site.
    </p>")
    @as("Address")
    address: address,
    @ocaml.doc("<p>
      The type of the address.
    </p>")
    @as("AddressType")
    addressType: addressType,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {
    @ocaml.doc("<p>
      Information about an address. 
    </p>")
    @as("Address")
    address: option<address>,
    @ocaml.doc("<p>
      The type of the address.
    </p>")
    @as("AddressType")
    addressType: option<addressType>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "UpdateSiteAddressCommand"
  let make = (~address, ~addressType, ~siteId, ()) =>
    new({address: address, addressType: addressType, siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The resource tags.</p>") @as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSiteAddress = {
  type t
  type request = {
    @ocaml.doc("<p> The type of the address you request. </p>") @as("AddressType")
    addressType: addressType,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {
    @ocaml.doc("<p>
      Information about the address.
    </p>")
    @as("Address")
    address: option<address>,
    @ocaml.doc("<p> The type of the address you receive. </p>") @as("AddressType")
    addressType: option<addressType>,
    @as("SiteId") siteId: option<siteId>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetSiteAddressCommand"
  let make = (~addressType, ~siteId, ()) => new({addressType: addressType, siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSiteRackPhysicalProperties = {
  type t
  type request = {
    @ocaml.doc("<p> Specify the maximum rack weight that this site can support. <code>NO_LIMIT</code> is over
      2000lbs. </p>")
    @as("MaximumSupportedWeightLbs")
    maximumSupportedWeightLbs: option<maximumSupportedWeightLbs>,
    @ocaml.doc("<p>Specify the type of optical standard that you will use to attach the Outpost to your
      network. This field is dependent on uplink speed, fiber type, and distance to the upstream
      device. For more information
      about networking requirements for racks, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#facility-networking\">Network</a> 
        in the Amazon Web Services Outposts User Guide.
        </p>
         <ul>
            <li>
               <p>
                  <code>OPTIC_10GBASE_SR</code>: 10GBASE-SR</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_10GBASE_IR</code>: 10GBASE-IR</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_10GBASE_LR</code>: 10GBASE-LR</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_40GBASE_SR</code>: 40GBASE-SR</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_40GBASE_ESR</code>: 40GBASE-ESR</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_40GBASE_IR4_LR4L</code>: 40GBASE-IR (LR4L)</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_40GBASE_LR4</code>: 40GBASE-LR4</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_100GBASE_SR4</code>: 100GBASE-SR4</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_100GBASE_CWDM4</code>: 100GBASE-CWDM4</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_100GBASE_LR4</code>: 100GBASE-LR4</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_100G_PSM4_MSA</code>: 100G PSM4 MSA</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_1000BASE_LX</code>: 1000Base-LX</p>
            </li>
            <li>
               <p>
                  <code>OPTIC_1000BASE_SX</code> : 1000Base-SX</p>
            </li>
         </ul>")
    @as("OpticalStandard")
    opticalStandard: option<opticalStandard>,
    @ocaml.doc("<p> Specify the type of fiber that you will use to attach the Outpost to your network.
    </p>")
    @as("FiberOpticCableType")
    fiberOpticCableType: option<fiberOpticCableType>,
    @ocaml.doc("<p>Racks come with two Outpost network devices. Depending on the supported uplink speed at
      the site, the Outpost network devices provide a variable number of uplinks. Specify the number
      of uplinks for each Outpost network device that you intend to use to connect the rack to your
      network. Note the correlation between <code>UplinkGbps</code> and <code>UplinkCount</code>. </p>
         <ul>
            <li>
               <p>1Gbps - Uplinks available: 1, 2, 4, 6, 8</p>
            </li>
            <li>
               <p>10Gbps - Uplinks available: 1, 2, 4, 8, 12, 16</p>
            </li>
            <li>
               <p>40 and 100 Gbps- Uplinks available: 1, 2, 4</p>
            </li>
         </ul>")
    @as("UplinkCount")
    uplinkCount: option<uplinkCount>,
    @ocaml.doc("<p> Specify the uplink speed the rack should support for the connection to the Region.
    </p>")
    @as("UplinkGbps")
    uplinkGbps: option<uplinkGbps>,
    @ocaml.doc("<p> Specify whether the power feed comes above or below the rack. </p>")
    @as("PowerFeedDrop")
    powerFeedDrop: option<powerFeedDrop>,
    @ocaml.doc("<p> Specify the power connector that Amazon Web Services should plan to provide for connections to the
      hardware. Note the correlation between <code>PowerPhase</code> and
      <code>PowerConnector</code>. </p>
         <ul>
            <li>
               <p>Single-phase AC feed</p>
               <ul>
                  <li>
                     <p>
                        <b>L6-30P</b> – (common in US); 30A; single phase</p>
                  </li>
                  <li>
                     <p>
                        <b>IEC309 (blue)</b> – P+N+E, 6hr; 32 A; single
              phase</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Three-phase AC feed</p>
               <ul>
                  <li>
                     <p>
                        <b>AH530P7W (red)</b> – 3P+N+E, 7hr; 30A; three
              phase</p>
                  </li>
                  <li>
                     <p>
                        <b>AH532P6W (red)</b> – 3P+N+E, 6hr; 32A; three
              phase</p>
                  </li>
               </ul>
            </li>
         </ul>")
    @as("PowerConnector")
    powerConnector: option<powerConnector>,
    @ocaml.doc("<p> Specify the power option that you can provide for hardware. </p>
         <ul>
            <li>
               <p>Single-phase AC feed: 200 V to 277 V, 50 Hz or 60 Hz</p>
            </li>
            <li>
               <p>Three-phase AC feed: 346 V to 480 V, 50 Hz or 60 Hz</p>
            </li>
         </ul>")
    @as("PowerPhase")
    powerPhase: option<powerPhase>,
    @ocaml.doc("<p>Specify in kVA the power draw available at the hardware placement position for the
      rack.</p>")
    @as("PowerDrawKva")
    powerDrawKva: option<powerDrawKva>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-outposts") @new
  external new: request => t = "UpdateSiteRackPhysicalPropertiesCommand"
  let make = (
    ~siteId,
    ~maximumSupportedWeightLbs=?,
    ~opticalStandard=?,
    ~fiberOpticCableType=?,
    ~uplinkCount=?,
    ~uplinkGbps=?,
    ~powerFeedDrop=?,
    ~powerConnector=?,
    ~powerPhase=?,
    ~powerDrawKva=?,
    (),
  ) =>
    new({
      maximumSupportedWeightLbs: maximumSupportedWeightLbs,
      opticalStandard: opticalStandard,
      fiberOpticCableType: fiberOpticCableType,
      uplinkCount: uplinkCount,
      uplinkGbps: uplinkGbps,
      powerFeedDrop: powerFeedDrop,
      powerConnector: powerConnector,
      powerPhase: powerPhase,
      powerDrawKva: powerDrawKva,
      siteId: siteId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSite = {
  type t
  type request = {
    @ocaml.doc("<p>
      Notes about a site.
    </p>")
    @as("Notes")
    notes: option<siteNotes>,
    @as("Description") description: option<siteDescription>,
    @as("Name") name: option<siteName>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "UpdateSiteCommand"
  let make = (~siteId, ~notes=?, ~description=?, ~name=?, ()) =>
    new({notes: notes, description: description, name: name, siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOutpost = {
  type t
  type request = {
    @ocaml.doc("<p>
      The type of hardware for this Outpost.
    </p>")
    @as("SupportedHardwareType")
    supportedHardwareType: option<supportedHardwareType>,
    @as("Description") description: option<outpostDescription>,
    @as("Name") name: option<outpostName>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostId")
    outpostId: outpostId,
  }
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "UpdateOutpostCommand"
  let make = (~outpostId, ~supportedHardwareType=?, ~description=?, ~name=?, ()) =>
    new({
      supportedHardwareType: supportedHardwareType,
      description: description,
      name: name,
      outpostId: outpostId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSite = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetSiteCommand"
  let make = (~siteId, ()) => new({siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutpostInstanceTypes = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostId")
    outpostId: outpostId,
  }
  type response = {
    @as("OutpostArn") outpostArn: option<outpostArn>,
    @ocaml.doc("<p>
      The ID of the Outpost.
    </p>")
    @as("OutpostId")
    outpostId: option<outpostId>,
    @as("NextToken") nextToken: option<token>,
    @as("InstanceTypes") instanceTypes: option<instanceTypeListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new
  external new: request => t = "GetOutpostInstanceTypesCommand"
  let make = (~outpostId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutpost = {
  type t
  type request = {
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostId")
    outpostId: outpostId,
  }
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetOutpostCommand"
  let make = (~outpostId, ()) => new({outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSite = {
  type t
  type request = {
    @ocaml.doc("<p> Information about the physical and logistical details for the rack at this site.
      For more information
      about hardware requirements for racks, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist\">Network 
        readiness checklist</a> in the Amazon Web Services Outposts User Guide.
        </p>")
    @as("RackPhysicalProperties")
    rackPhysicalProperties: option<rackPhysicalProperties>,
    @ocaml.doc("<p>
      The location to ship the hardware. This address might be different 
      from the operating address.
    </p>")
    @as("ShippingAddress")
    shippingAddress: option<address>,
    @ocaml.doc("<p>
      The location to install and power on the hardware. This address might be 
      different from the shipping address.
    </p>")
    @as("OperatingAddress")
    operatingAddress: option<address>,
    @ocaml.doc("<p>
      The tags to apply to a site.
    </p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Additional information that you provide about site access requirements, electrician
      scheduling, personal protective equipment, or regulation of equipment materials that could
      affect your installation process. </p>")
    @as("Notes")
    notes: option<siteNotes>,
    @as("Description") description: option<siteDescription>,
    @as("Name") name: siteName,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CreateSiteCommand"
  let make = (
    ~name,
    ~rackPhysicalProperties=?,
    ~shippingAddress=?,
    ~operatingAddress=?,
    ~tags=?,
    ~notes=?,
    ~description=?,
    (),
  ) =>
    new({
      rackPhysicalProperties: rackPhysicalProperties,
      shippingAddress: shippingAddress,
      operatingAddress: operatingAddress,
      tags: tags,
      notes: notes,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOutpost = {
  type t
  type request = {
    @ocaml.doc("<p>
      The type of hardware for this Outpost.
    </p>")
    @as("SupportedHardwareType")
    supportedHardwareType: option<supportedHardwareType>,
    @ocaml.doc("<p>The tags to apply to the Outpost.</p>") @as("Tags") tags: option<tagMap>,
    @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
    @as("AvailabilityZone") availabilityZone: option<availabilityZone>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the site.
    </p>")
    @as("SiteId")
    siteId: siteId,
    @as("Description") description: option<outpostDescription>,
    @as("Name") name: outpostName,
  }
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CreateOutpostCommand"
  let make = (
    ~siteId,
    ~name,
    ~supportedHardwareType=?,
    ~tags=?,
    ~availabilityZoneId=?,
    ~availabilityZone=?,
    ~description=?,
    (),
  ) =>
    new({
      supportedHardwareType: supportedHardwareType,
      tags: tags,
      availabilityZoneId: availabilityZoneId,
      availabilityZone: availabilityZone,
      siteId: siteId,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSites = {
  type t
  type request = {
    @ocaml.doc("<p>
      A filter for the city of the Outpost site. 
    </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("OperatingAddressCityFilter")
    operatingAddressCityFilter: option<cityList>,
    @ocaml.doc("<p> A filter for the state/region of the Outpost site. </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("OperatingAddressStateOrRegionFilter")
    operatingAddressStateOrRegionFilter: option<stateOrRegionList>,
    @ocaml.doc("<p> A filter for the country code of the Outpost site. </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("OperatingAddressCountryCodeFilter")
    operatingAddressCountryCodeFilter: option<countryCodeList>,
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Sites") sites: option<siteListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListSitesCommand"
  let make = (
    ~operatingAddressCityFilter=?,
    ~operatingAddressStateOrRegionFilter=?,
    ~operatingAddressCountryCodeFilter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      operatingAddressCityFilter: operatingAddressCityFilter,
      operatingAddressStateOrRegionFilter: operatingAddressStateOrRegionFilter,
      operatingAddressCountryCodeFilter: operatingAddressCountryCodeFilter,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOutposts = {
  type t
  type request = {
    @ocaml.doc("<p>
      A filter for the AZ IDs (<code>use1-az1</code>) of the Outpost.
    </p>
    
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("AvailabilityZoneIdFilter")
    availabilityZoneIdFilter: option<availabilityZoneIdList>,
    @ocaml.doc("<p> A filter for the Availability Zone (<code>us-east-1a</code>) of the Outpost. </p>
    
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("AvailabilityZoneFilter")
    availabilityZoneFilter: option<availabilityZoneList>,
    @ocaml.doc("<p>
      A filter for the lifecycle status of the Outpost. 
    </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("LifeCycleStatusFilter")
    lifeCycleStatusFilter: option<lifeCycleStatusList>,
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Outposts") outposts: option<outpostListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListOutpostsCommand"
  let make = (
    ~availabilityZoneIdFilter=?,
    ~availabilityZoneFilter=?,
    ~lifeCycleStatusFilter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      availabilityZoneIdFilter: availabilityZoneIdFilter,
      availabilityZoneFilter: availabilityZoneFilter,
      lifeCycleStatusFilter: lifeCycleStatusFilter,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrders = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostIdentifierFilter")
    outpostIdentifierFilter: option<outpostIdentifier>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>
      Information about the orders. 
    </p>")
    @as("Orders")
    orders: option<orderSummaryListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListOrdersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~outpostIdentifierFilter=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      outpostIdentifierFilter: outpostIdentifierFilter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOrder = {
  type t
  type request = {@ocaml.doc("<p>The ID of the order.</p>") @as("OrderId") orderId: orderId}
  type response = {@as("Order") order: option<order>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetOrderCommand"
  let make = (~orderId, ()) => new({orderId: orderId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCatalogItem = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the catalog item.</p>") @as("CatalogItemId") catalogItemId: skuCode,
  }
  type response = {
    @ocaml.doc("<p>Information about this catalog item.</p>") @as("CatalogItem")
    catalogItem: option<catalogItem>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetCatalogItemCommand"
  let make = (~catalogItemId, ()) => new({catalogItemId: catalogItemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOrder = {
  type t
  type request = {
    @ocaml.doc("<p>The payment terms for the order.</p>") @as("PaymentTerm")
    paymentTerm: option<paymentTerm>,
    @ocaml.doc("<p>The payment option for the order.</p>") @as("PaymentOption")
    paymentOption: paymentOption,
    @ocaml.doc("<p>The line items that make up the order.</p>") @as("LineItems")
    lineItems: lineItemRequestListDefinition,
    @ocaml.doc("<p>
      The ID or the Amazon Resource Name (ARN) of the Outpost.
    </p>")
    @as("OutpostIdentifier")
    outpostIdentifier: outpostIdentifier,
  }
  type response = {
    @ocaml.doc("<p>Information about this order.</p>") @as("Order") order: option<order>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CreateOrderCommand"
  let make = (~paymentOption, ~lineItems, ~outpostIdentifier, ~paymentTerm=?, ()) =>
    new({
      paymentTerm: paymentTerm,
      paymentOption: paymentOption,
      lineItems: lineItems,
      outpostIdentifier: outpostIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCatalogItems = {
  type t
  type request = {
    @ocaml.doc("<p>
      A filter for EC2 family options for items in the catalog.
    </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("EC2FamilyFilter")
    ec2FamilyFilter: option<ec2FamilyList>,
    @ocaml.doc("<p>
      A filter for the storage options of items in the catalog.
    </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("SupportedStorageFilter")
    supportedStorageFilter: option<supportedStorageList>,
    @ocaml.doc("<p>
      A filter for the class of items in the catalog.
    </p>
         <p>Filter values are case sensitive. If you specify multiple 
         values for a filter, the values are joined with an <code>OR</code>, and the request returns 
         all results that match any of the specified values.</p>")
    @as("ItemClassFilter")
    itemClassFilter: option<catalogItemClassList>,
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @ocaml.doc("<p>Information about the catalog items.</p>") @as("CatalogItems")
    catalogItems: option<catalogItemListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListCatalogItemsCommand"
  let make = (
    ~ec2FamilyFilter=?,
    ~supportedStorageFilter=?,
    ~itemClassFilter=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      ec2FamilyFilter: ec2FamilyFilter,
      supportedStorageFilter: supportedStorageFilter,
      itemClassFilter: itemClassFilter,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
