type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
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
type creationTime = Js.Date.t;
type cidrBlock = string
type networkInterface = {
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>
}
type networkInterfaces = array<networkInterface>
type endpoint = {
@as("NetworkInterfaces") networkInterfaces: option<networkInterfaces>,
@as("CreationTime") creationTime: option<creationTime>,
@as("Status") status: option<endpointStatus>,
@as("CidrBlock") cidrBlock: option<cidrBlock>,
@as("OutpostsId") outpostsId: option<outpostId>,
@as("EndpointArn") endpointArn: option<endpointArn>
}
type endpoints = array<endpoint>
type awsServiceClient;
@module("@aws-sdk/client-s3-outposts") @new external createClient: unit => awsServiceClient = "S3OutpostsClient";
module DeleteEndpoint = {
  type t;
  type request = {
@as("OutpostId") outpostId: outpostId,
@as("EndpointId") endpointId: endpointId
}
  
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("SecurityGroupId") securityGroupId: securityGroupId,
@as("SubnetId") subnetId: subnetId,
@as("OutpostId") outpostId: outpostId
}
  type response = {
@as("EndpointArn") endpointArn: option<endpointArn>
}
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "CreateEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEndpoints = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Endpoints") endpoints: option<endpoints>
}
  @module("@aws-sdk/client-s3-outposts") @new external new_: (request) => t = "ListEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
