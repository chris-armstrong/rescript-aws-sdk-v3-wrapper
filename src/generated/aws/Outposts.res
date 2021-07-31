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
type token = string
type tagValue = string
type tagKey = string
type string_ = string
type siteName = string
type siteId = string
type siteDescription = string
type siteArn = string
type resourceType = [@as("OUTPOST") #OUTPOST]
type ownerId = string
type outpostName = string
type outpostId = string
type outpostDescription = string
type outpostArn = string
type maxResults1000 = int
type lifeCycleStatus = string
type instanceType = string
type errorMessage = string
type availabilityZoneId = string
type availabilityZone = string
type arn = string
type accountId = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type instanceTypeItem = {@as("InstanceType") instanceType: option<instanceType>}
type site = {
  @as("SiteArn") siteArn: option<siteArn>,
  @as("Tags") tags: option<tagMap>,
  @as("Description") description: option<siteDescription>,
  @as("Name") name: option<siteName>,
  @as("AccountId") accountId: option<accountId>,
  @as("SiteId") siteId: option<siteId>,
}
type outpost = {
  @as("SiteArn") siteArn: option<siteArn>,
  @as("Tags") tags: option<tagMap>,
  @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
  @as("AvailabilityZone") availabilityZone: option<availabilityZone>,
  @as("LifeCycleStatus") lifeCycleStatus: option<lifeCycleStatus>,
  @as("Description") description: option<outpostDescription>,
  @as("Name") name: option<outpostName>,
  @as("SiteId") siteId: option<siteId>,
  @as("OutpostArn") outpostArn: option<outpostArn>,
  @as("OwnerId") ownerId: option<ownerId>,
  @as("OutpostId") outpostId: option<outpostId>,
}
type instanceTypeListDefinition = array<instanceTypeItem>
type siteListDefinition = array<site>
type outpostListDefinition = array<outpost>

module DeleteSite = {
  type t
  type request = {@as("SiteId") siteId: siteId}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteSiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOutpost = {
  type t
  type request = {@as("OutpostId") outpostId: outpostId}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteOutpostCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutpostInstanceTypes = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
    @as("OutpostId") outpostId: outpostId,
  }
  type response = {
    @as("OutpostArn") outpostArn: option<outpostArn>,
    @as("OutpostId") outpostId: option<outpostId>,
    @as("NextToken") nextToken: option<token>,
    @as("InstanceTypes") instanceTypes: option<instanceTypeListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new
  external new: request => t = "GetOutpostInstanceTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutpost = {
  type t
  type request = {@as("OutpostId") outpostId: outpostId}
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetOutpostCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOutpost = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
    @as("AvailabilityZone") availabilityZone: option<availabilityZone>,
    @as("SiteId") siteId: siteId,
    @as("Description") description: option<outpostDescription>,
    @as("Name") name: outpostName,
  }
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CreateOutpostCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSites = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Sites") sites: option<siteListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListSitesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOutposts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Outposts") outposts: option<outpostListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListOutpostsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
