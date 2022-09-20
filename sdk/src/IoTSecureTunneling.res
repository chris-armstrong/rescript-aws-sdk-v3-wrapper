type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotsecuredtunneling") @new
external createClient: unit => awsServiceClient = "IoTSecureTunnelingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tunnelStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type tunnelId = string
type tunnelArn = string
type timeoutInMin = int
type thingName = string
type tagValue = string
type tagKey = string
type service = string
type nextToken = string
type maxResults = int
type errorMessage = string
type description = string
type deleteFlag = bool
type dateType = Js.Date.t
type connectionStatus = [@as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type clientAccessToken = string
type amazonResourceName = string
@ocaml.doc("<p>Information about the tunnel.</p>")
type tunnelSummary = {
  @ocaml.doc("<p>The time the tunnel was last updated.</p>") lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time the tunnel was created.</p>") createdAt: option<dateType>,
  @ocaml.doc("<p>A description of the tunnel.</p>") description: option<description>,
  @ocaml.doc("<p>The status of a tunnel. Valid values are: Open and Closed.</p>")
  status: option<tunnelStatus>,
  @ocaml.doc("<p>The Amazon Resource Name of the tunnel. The tunnel ARN format is
				<code>arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id></code>
         </p>")
  tunnelArn: option<tunnelArn>,
  @ocaml.doc("<p>The unique alpha-numeric identifier for the tunnel.</p>")
  tunnelId: option<tunnelId>,
}
@ocaml.doc("<p>Tunnel timeout configuration.</p>")
type timeoutConfig = {
  @ocaml.doc("<p>The maximum amount of time (in minutes) a tunnel can remain open. If not specified,
			maxLifetimeTimeoutMinutes defaults to 720 minutes. Valid values are from 1 minute to 12
			hours (720 minutes) </p>")
  maxLifetimeTimeoutMinutes: option<timeoutInMin>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>An arbitary key/value pair used to add searchable metadata to secure tunnel
			resources.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") key: tagKey,
}
type serviceList = array<service>
@ocaml.doc("<p>The state of a connection.</p>")
type connectionState = {
  @ocaml.doc("<p>The last time the connection status was updated.</p>")
  lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The connection status of the tunnel. Valid values are <code>CONNECTED</code> and
				<code>DISCONNECTED</code>.</p>")
  status: option<connectionStatus>,
}
type tunnelSummaryList = array<tunnelSummary>
type tagList_ = array<tag>
@ocaml.doc("<p>The destination configuration.</p>")
type destinationConfig = {
  @ocaml.doc("<p>A list of service names that identity the target application. The AWS IoT client running on the destination device reads
			this value and uses it to look up a port or an IP address and a port. The AWS IoT client
			instantiates the local proxy which uses this information to connect to the destination
			application.</p>")
  services: serviceList,
  @ocaml.doc("<p>The name of the IoT thing to which you want to connect.</p>")
  thingName: option<thingName>,
}
@ocaml.doc("<p>A connection between a source computer and a destination device.</p>")
type tunnel = {
  @ocaml.doc("<p>The last time the tunnel was updated.</p>") lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time when the tunnel was created.</p>") createdAt: option<dateType>,
  @ocaml.doc("<p>A list of tag metadata associated with the secure tunnel.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>Timeout configuration for the tunnel.</p>") timeoutConfig: option<timeoutConfig>,
  @ocaml.doc("<p>The destination configuration that specifies the thing name of the destination
			device and a service name that the local proxy uses to connect to the destination
			application.</p>")
  destinationConfig: option<destinationConfig>,
  @ocaml.doc("<p>A description of the tunnel.</p>") description: option<description>,
  @ocaml.doc("<p>The connection state of the destination application.</p>")
  destinationConnectionState: option<connectionState>,
  @ocaml.doc("<p>The connection state of the source application.</p>")
  sourceConnectionState: option<connectionState>,
  @ocaml.doc("<p>The status of a tunnel. Valid values are: Open and Closed.</p>")
  status: option<tunnelStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a tunnel. The tunnel ARN format is
				<code>arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id></code>
         </p>")
  tunnelArn: option<tunnelArn>,
  @ocaml.doc("<p>A unique alpha-numeric ID that identifies a tunnel.</p>")
  tunnelId: option<tunnelId>,
}
@ocaml.doc("<fullname>AWS IoT Secure Tunneling</fullname>
		       <p>AWS IoT Secure Tunnling enables you to create remote connections to devices
			deployed in the field.</p>
		
		       <p>For more information about how AWS IoT Secure Tunneling works, see <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html\">AWS IoT Secure Tunneling</a>.</p>")
module CloseTunnel = {
  type t
  type request = {
    @ocaml.doc("<p>When set to true, AWS IoT Secure Tunneling deletes the tunnel data
			immediately.</p>")
    delete: option<deleteFlag>,
    @ocaml.doc("<p>The ID of the tunnel to close.</p>") tunnelId: tunnelId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "CloseTunnelCommand"
  let make = (~tunnelId, ~delete=?, ()) => new({delete: delete, tunnelId: tunnelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN.</p>") resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module OpenTunnel = {
  type t
  type request = {
    @ocaml.doc("<p>Timeout configuration for a tunnel.</p>") timeoutConfig: option<timeoutConfig>,
    @ocaml.doc("<p>The destination configuration for the OpenTunnel request.</p>")
    destinationConfig: option<destinationConfig>,
    @ocaml.doc("<p>A collection of tag metadata.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>A short text description of the tunnel. </p>") description: option<description>,
  }
  type response = {
    @ocaml.doc("<p>The access token the destination local proxy uses to connect to AWS IoT Secure
			Tunneling.</p>")
    destinationAccessToken: option<clientAccessToken>,
    @ocaml.doc("<p>The access token the source local proxy uses to connect to AWS IoT Secure
			Tunneling.</p>")
    sourceAccessToken: option<clientAccessToken>,
    @ocaml.doc("<p>The Amazon Resource Name for the tunnel. The tunnel ARN format is
				<code>arn:aws:tunnel:<region>:<account-id>:tunnel/<tunnel-id></code>
         </p>")
    tunnelArn: option<tunnelArn>,
    @ocaml.doc("<p>A unique alpha-numeric tunnel ID.</p>") tunnelId: option<tunnelId>,
  }
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "OpenTunnelCommand"
  let make = (~timeoutConfig=?, ~destinationConfig=?, ~tags=?, ~description=?, ()) =>
    new({
      timeoutConfig: timeoutConfig,
      destinationConfig: destinationConfig,
      tags: tags,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTunnels = {
  type t
  type request = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at once.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the IoT thing associated with the destination device.</p>")
    thingName: option<thingName>,
  }
  type response = {
    @ocaml.doc("<p>A token to used to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A short description of the tunnels in an AWS account.</p>")
    tunnelSummaries: option<tunnelSummaryList>,
  }
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "ListTunnelsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~thingName=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The resource ARN.</p>") resourceArn: amazonResourceName}
  type response = {@ocaml.doc("<p>The tags for the specified resource.</p>") tags: option<tagList_>}
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTunnel = {
  type t
  type request = {@ocaml.doc("<p>The tunnel to describe.</p>") tunnelId: tunnelId}
  type response = {@ocaml.doc("<p>The tunnel being described.</p>") tunnel: option<tunnel>}
  @module("@aws-sdk/client-iotsecuredtunneling") @new
  external new: request => t = "DescribeTunnelCommand"
  let make = (~tunnelId, ()) => new({tunnelId: tunnelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
