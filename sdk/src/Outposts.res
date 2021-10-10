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
@ocaml.doc("<p>The pagination token.</p>") type token = string
type tagValue = string
type tagKey = string
type string_ = string
@ocaml.doc("<p>The name of the site.</p>") type siteName = string
@ocaml.doc("<p>The ID of the site.</p>") type siteId = string
@ocaml.doc("<p>The description of the site.</p>") type siteDescription = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the site.</p>") type siteArn = string
type resourceType = [@as("OUTPOST") #OUTPOST]
@ocaml.doc("<p>The AWS account ID of the Outpost owner.</p>") type ownerId = string
@ocaml.doc("<p>The name of the Outpost.</p>") type outpostName = string
@ocaml.doc("<p>The ID of the Outpost.</p>") type outpostId = string
@ocaml.doc("<p>The description of the Outpost.</p>") type outpostDescription = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the Outpost.</p>") type outpostArn = string
@ocaml.doc("<p>The maximum page size.</p>") type maxResults1000 = int
@ocaml.doc("<p>The life cycle status.</p>") type lifeCycleStatus = string
@ocaml.doc("<p>The instance type.</p>") type instanceType = string
type errorMessage = string
@ocaml.doc("<p>The ID of the Availability Zone.</p>
         <p>You must specify <code>AvailabilityZone</code> or <code>AvailabilityZoneId</code>.</p>")
type availabilityZoneId = string
@ocaml.doc("<p>The Availability Zone.</p>
         <p>You must specify <code>AvailabilityZone</code> or <code>AvailabilityZoneId</code>.</p>")
type availabilityZone = string
type arn = string
@ocaml.doc("<p>The ID of the AWS account.</p>") type accountId = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Information about an instance type.</p>")
type instanceTypeItem = {@as("InstanceType") instanceType: option<instanceType>}
@ocaml.doc("<p>Information about a site.</p>")
type site = {
  @as("SiteArn") siteArn: option<siteArn>,
  @ocaml.doc("<p>The site tags.</p>") @as("Tags") tags: option<tagMap>,
  @as("Description") description: option<siteDescription>,
  @as("Name") name: option<siteName>,
  @as("AccountId") accountId: option<accountId>,
  @as("SiteId") siteId: option<siteId>,
}
@ocaml.doc("<p>Information about an Outpost.</p>")
type outpost = {
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
  @as("OutpostId") outpostId: option<outpostId>,
}
@ocaml.doc("<p>Information about the instance types.</p>")
type instanceTypeListDefinition = array<instanceTypeItem>
@ocaml.doc("<p>Information about the sites.</p>") type siteListDefinition = array<site>
@ocaml.doc("<p>Information about the Outposts.</p>") type outpostListDefinition = array<outpost>
@ocaml.doc("<p>AWS Outposts is a fully managed service that extends AWS infrastructure, APIs, and tools
      to customer premises. By providing local access to AWS managed infrastructure, AWS Outposts
      enables customers to build and run applications on premises using the same programming
      interfaces as in AWS Regions, while using local compute and storage resources for lower
      latency and local data processing needs.</p>")
module DeleteSite = {
  type t
  type request = {@as("SiteId") siteId: siteId}

  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteSiteCommand"
  let make = (~siteId, ()) => new({siteId: siteId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOutpost = {
  type t
  type request = {@as("OutpostId") outpostId: outpostId}

  @module("@aws-sdk/client-outposts") @new external new: request => t = "DeleteOutpostCommand"
  let make = (~outpostId, ()) => new({outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: arn,
  }

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
  let make = (~outpostId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOutpost = {
  type t
  type request = {@as("OutpostId") outpostId: outpostId}
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "GetOutpostCommand"
  let make = (~outpostId, ()) => new({outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOutpost = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the Outpost.</p>") @as("Tags") tags: option<tagMap>,
    @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
    @as("AvailabilityZone") availabilityZone: option<availabilityZone>,
    @as("SiteId") siteId: siteId,
    @as("Description") description: option<outpostDescription>,
    @as("Name") name: outpostName,
  }
  type response = {@as("Outpost") outpost: option<outpost>}
  @module("@aws-sdk/client-outposts") @new external new: request => t = "CreateOutpostCommand"
  let make = (
    ~siteId,
    ~name,
    ~tags=?,
    ~availabilityZoneId=?,
    ~availabilityZone=?,
    ~description=?,
    (),
  ) =>
    new({
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
    @as("MaxResults") maxResults: option<maxResults1000>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Sites") sites: option<siteListDefinition>,
  }
  @module("@aws-sdk/client-outposts") @new external new: request => t = "ListSitesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
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
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
