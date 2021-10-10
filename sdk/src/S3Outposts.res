type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-s3-outposts") @new
external createClient: unit => awsServiceClient = "S3OutpostsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type subnetId = string
type securityGroupId = string
type outpostId = string
type nextToken = string
type networkInterfaceId = string
type maxResults = int
type errorMessage = string
type endpointStatus = [@as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type endpointId = string
type endpointArn = string
type creationTime = Js.Date.t
type cidrBlock = string
@ocaml.doc("<p>The container for the network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>The ID for the network interface.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<networkInterfaceId>,
}
type networkInterfaces = array<networkInterface>
@ocaml.doc("<p>S3 on Outposts access points simplify managing data access at scale for shared datasets 
            in Amazon S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform 
            actions within your virtual private cloud (VPC). </p>")
type endpoint = {
  @ocaml.doc("<p>The network interface of the endpoint.</p>") @as("NetworkInterfaces")
  networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>The time the endpoint was created.</p>") @as("CreationTime")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The status of the endpoint.</p>") @as("Status") status: option<endpointStatus>,
  @ocaml.doc("<p>The VPC CIDR committed by this endpoint.</p>") @as("CidrBlock")
  cidrBlock: option<cidrBlock>,
  @ocaml.doc("<p>The ID of the AWS Outpost.</p>") @as("OutpostsId") outpostsId: option<outpostId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint.</p>") @as("EndpointArn")
  endpointArn: option<endpointArn>,
}
type endpoints = array<endpoint>
@ocaml.doc("<p>Amazon S3 on Outposts provides access to S3 on Outposts operations.</p>")
module DeleteEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the AWS Outpost. </p>") @as("OutpostId") outpostId: outpostId,
    @ocaml.doc("<p>The ID of the end point.</p>") @as("EndpointId") endpointId: endpointId,
  }

  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "DeleteEndpointCommand"
  let make = (~outpostId, ~endpointId, ()) => new({outpostId: outpostId, endpointId: endpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the security group to use with the endpoint.</p>")
    @as("SecurityGroupId")
    securityGroupId: securityGroupId,
    @ocaml.doc("<p>The ID of the subnet in the selected VPC.</p>") @as("SubnetId")
    subnetId: subnetId,
    @ocaml.doc("<p>The ID of the AWS Outpost. </p>") @as("OutpostId") outpostId: outpostId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint.</p>") @as("EndpointArn")
    endpointArn: option<endpointArn>,
  }
  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "CreateEndpointCommand"
  let make = (~securityGroupId, ~subnetId, ~outpostId, ()) =>
    new({securityGroupId: securityGroupId, subnetId: subnetId, outpostId: outpostId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The max number of endpoints that can be returned on the request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next endpoint requested in the list.</p>") @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The next endpoint returned in the list.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns an array of endpoints associated with AWS Outpost.</p>") @as("Endpoints")
    endpoints: option<endpoints>,
  }
  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "ListEndpointsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
