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
type vpcId = string
type subnetId = string
type securityGroupId = string
type outpostId = string
type nextToken = string
type networkInterfaceId = string
type maxResults = int
type errorMessage = string
type endpointStatus = [
  | @as("Deleting") #Deleting
  | @as("Available") #Available
  | @as("Pending") #Pending
]
type endpointId = string
type endpointArn = string
type endpointAccessType = [@as("CustomerOwnedIp") #CustomerOwnedIp | @as("Private") #Private]
type customerOwnedIpv4Pool = string
type creationTime = Js.Date.t
type cidrBlock = string
@ocaml.doc("<p>The container for the network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>The ID for the network interface.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<networkInterfaceId>,
}
type networkInterfaces = array<networkInterface>
@ocaml.doc("<p>Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts. 
            S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your 
               virtual private cloud (VPC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/userguide/WorkingWithS3Outposts.html\">
        Accessing S3 on Outposts using VPC-only access points</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>")
type endpoint = {
  @ocaml.doc("<p>The ID of the customer-owned IPv4 address pool used for the endpoint.</p>")
  @as("CustomerOwnedIpv4Pool")
  customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
  @ocaml.doc("<p>The type of connectivity used to access the Amazon S3 on Outposts endpoint.</p>")
  @as("AccessType")
  accessType: option<endpointAccessType>,
  @ocaml.doc("<p>The ID of the security group used for the endpoint.</p>") @as("SecurityGroupId")
  securityGroupId: option<securityGroupId>,
  @ocaml.doc("<p>The ID of the subnet used for the endpoint.</p>") @as("SubnetId")
  subnetId: option<subnetId>,
  @ocaml.doc("<p>The ID of the VPC used for the endpoint.</p>") @as("VpcId") vpcId: option<vpcId>,
  @ocaml.doc("<p>The network interface of the endpoint.</p>") @as("NetworkInterfaces")
  networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>The time the endpoint was created.</p>") @as("CreationTime")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The status of the endpoint.</p>") @as("Status") status: option<endpointStatus>,
  @ocaml.doc("<p>The VPC CIDR committed by this endpoint.</p>") @as("CidrBlock")
  cidrBlock: option<cidrBlock>,
  @ocaml.doc("<p>The ID of the Outposts.</p>") @as("OutpostsId") outpostsId: option<outpostId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint.</p>") @as("EndpointArn")
  endpointArn: option<endpointArn>,
}
type endpoints = array<endpoint>
@ocaml.doc("<p>Amazon S3 on Outposts provides access to S3 on Outposts operations.</p>")
module DeleteEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Outposts. </p>") @as("OutpostId") outpostId: outpostId,
    @ocaml.doc("<p>The ID of the endpoint.</p>") @as("EndpointId") endpointId: endpointId,
  }
  type response = {.}
  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "DeleteEndpointCommand"
  let make = (~outpostId, ~endpointId, ()) => new({outpostId: outpostId, endpointId: endpointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses
            are allocated from this pool for the endpoint.</p>")
    @as("CustomerOwnedIpv4Pool")
    customerOwnedIpv4Pool: option<customerOwnedIpv4Pool>,
    @ocaml.doc("<p>The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use
            the Amazon Web Services VPC, choose <code>Private</code>. To use the endpoint with an on-premises
            network, choose <code>CustomerOwnedIp</code>.  If you choose
                <code>CustomerOwnedIp</code>, you must also provide the customer-owned IP address
            pool (CoIP pool).</p>
        <note>
            <p>
               <code>Private</code> is the default access type value.</p>
         </note>")
    @as("AccessType")
    accessType: option<endpointAccessType>,
    @ocaml.doc("<p>The ID of the security group to use with the endpoint.</p>")
    @as("SecurityGroupId")
    securityGroupId: securityGroupId,
    @ocaml.doc("<p>The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost
            that has Amazon S3 on Outposts provisioned.</p>")
    @as("SubnetId")
    subnetId: subnetId,
    @ocaml.doc("<p>The ID of the Outposts. </p>") @as("OutpostId") outpostId: outpostId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the endpoint.</p>") @as("EndpointArn")
    endpointArn: option<endpointArn>,
  }
  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "CreateEndpointCommand"
  let make = (
    ~securityGroupId,
    ~subnetId,
    ~outpostId,
    ~customerOwnedIpv4Pool=?,
    ~accessType=?,
    (),
  ) =>
    new({
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      accessType: accessType,
      securityGroupId: securityGroupId,
      subnetId: subnetId,
      outpostId: outpostId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSharedEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Amazon Web Services Outpost.</p>") @as("OutpostId")
    outpostId: outpostId,
    @ocaml.doc("<p>The maximum number of endpoints that will be returned in the response.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If a previous response from this operation included a <code>NextToken</code> value, you
            can provide that value here to retrieve the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, 
            you can include this value in subsequent calls to this operation to retrieve more results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).</p>"
    )
    @as("Endpoints")
    endpoints: option<endpoints>,
  }
  @module("@aws-sdk/client-s3-outposts") @new
  external new: request => t = "ListSharedEndpointsCommand"
  let make = (~outpostId, ~maxResults=?, ~nextToken=?, ()) =>
    new({outpostId: outpostId, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of endpoints that will be returned in the response.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If a previous response from this operation included a <code>NextToken</code> value, 
            provide that value here to retrieve the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>, 
            you can include this value in subsequent calls to this operation to retrieve more results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of endpoints associated with the specified Outpost.</p>")
    @as("Endpoints")
    endpoints: option<endpoints>,
  }
  @module("@aws-sdk/client-s3-outposts") @new external new: request => t = "ListEndpointsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
