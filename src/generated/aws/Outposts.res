type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type token = string
type tagValue = string
type tagKey = string
type amazonawsString = string
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
type maxResults1000 = int;
type lifeCycleStatus = string
type instanceType = string
type errorMessage = string
type availabilityZoneId = string
type availabilityZone = string
type arn = string
type accountId = string
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type instanceTypeItem = {
@as("InstanceType") instanceType: instanceType
}
type site = {
@as("SiteArn") siteArn: siteArn,
@as("Tags") tags: tagMap,
@as("Description") description: siteDescription,
@as("Name") name: siteName,
@as("AccountId") accountId: accountId,
@as("SiteId") siteId: siteId
}
type outpost = {
@as("SiteArn") siteArn: siteArn,
@as("Tags") tags: tagMap,
@as("AvailabilityZoneId") availabilityZoneId: availabilityZoneId,
@as("AvailabilityZone") availabilityZone: availabilityZone,
@as("LifeCycleStatus") lifeCycleStatus: lifeCycleStatus,
@as("Description") description: outpostDescription,
@as("Name") name: outpostName,
@as("SiteId") siteId: siteId,
@as("OutpostArn") outpostArn: outpostArn,
@as("OwnerId") ownerId: ownerId,
@as("OutpostId") outpostId: outpostId
}
type instanceTypeListDefinition = array<instanceTypeItem>
type siteListDefinition = array<site>
type outpostListDefinition = array<outpost>
type clientType;
@module("@aws-sdk/client-outposts") @new external createClient: unit => clientType = "OutpostsClient";
module DeleteSite = {
  type t;
  type request = {
@as("SiteId") siteId: option<siteId>
}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "DeleteSiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteOutpost = {
  type t;
  type request = {
@as("OutpostId") outpostId: option<outpostId>
}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "DeleteOutpostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOutpostInstanceTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults1000,
@as("NextToken") nextToken: token,
@as("OutpostId") outpostId: option<outpostId>
}
  type response = {
@as("OutpostArn") outpostArn: outpostArn,
@as("OutpostId") outpostId: outpostId,
@as("NextToken") nextToken: token,
@as("InstanceTypes") instanceTypes: instanceTypeListDefinition
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "GetOutpostInstanceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOutpost = {
  type t;
  type request = {
@as("OutpostId") outpostId: option<outpostId>
}
  type response = {
@as("Outpost") outpost: outpost
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "GetOutpostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOutpost = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("AvailabilityZoneId") availabilityZoneId: availabilityZoneId,
@as("AvailabilityZone") availabilityZone: availabilityZone,
@as("SiteId") siteId: option<siteId>,
@as("Description") description: outpostDescription,
@as("Name") name: option<outpostName>
}
  type response = {
@as("Outpost") outpost: outpost
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "CreateOutpostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSites = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults1000,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Sites") sites: siteListDefinition
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "ListSitesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOutposts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults1000,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Outposts") outposts: outpostListDefinition
}
  @module("@aws-sdk/client-outposts") @new external new_: (Js.Promise.t<request>) => t = "ListOutpostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
