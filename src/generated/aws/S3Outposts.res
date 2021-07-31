type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type subnetId = string
type securityGroupId = string
type outpostId = string
type nextToken = string
type networkInterfaceId = string
type maxResults = int;
type errorMessage = string
type endpointStatus = [@as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type endpointId = string
type endpointArn = string
type creationTime = Js.Date.t;
type cidrBlock = string
type networkInterface = {
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId
}
type networkInterfaces = array<networkInterface>
type endpoint = {
@as("NetworkInterfaces") networkInterfaces: networkInterfaces,
@as("CreationTime") creationTime: creationTime,
@as("Status") status: endpointStatus,
@as("CidrBlock") cidrBlock: cidrBlock,
@as("OutpostsId") outpostsId: outpostId,
@as("EndpointArn") endpointArn: endpointArn
}
type endpoints = array<endpoint>
type clientType;
@module("@aws-sdk/client-s3-outposts") @new external createClient: unit => clientType = "S3OutpostsClient";
module DeleteEndpoint = {
  type t;
  type request = {
@as("OutpostId") outpostId: option<outpostId>,
@as("EndpointId") endpointId: option<endpointId>
}
  
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("SecurityGroupId") securityGroupId: option<securityGroupId>,
@as("SubnetId") subnetId: option<subnetId>,
@as("OutpostId") outpostId: option<outpostId>
}
  type response = {
@as("EndpointArn") endpointArn: endpointArn
}
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "CreateEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEndpoints = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Endpoints") endpoints: endpoints
}
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "ListEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
