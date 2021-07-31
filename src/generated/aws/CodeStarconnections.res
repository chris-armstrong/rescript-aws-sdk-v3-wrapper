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
type vpcId = string
type url = string
type tlsCertificate = string
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type providerType = [@as("GitHubEnterpriseServer") #GitHubEnterpriseServer | @as("GitHub") #GitHub | @as("Bitbucket") #Bitbucket]
type nextToken = string
type maxResults = int
type hostStatusMessage = string
type hostStatus = string
type hostName = string
type hostArn = string
type errorMessage = string
type connectionStatus = [@as("ERROR") #ERROR | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type connectionName = string
type connectionArn = string
type amazonResourceName = string
type accountId = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type connection = {
@as("HostArn") hostArn: option<hostArn>,
@as("ConnectionStatus") connectionStatus: option<connectionStatus>,
@as("OwnerAccountId") ownerAccountId: option<accountId>,
@as("ProviderType") providerType: option<providerType>,
@as("ConnectionArn") connectionArn: option<connectionArn>,
@as("ConnectionName") connectionName: option<connectionName>
}
type vpcConfiguration = {
@as("TlsCertificate") tlsCertificate: option<tlsCertificate>,
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
type tagList_ = array<tag>
type connectionList = array<connection>
type host = {
@as("StatusMessage") statusMessage: option<hostStatusMessage>,
@as("Status") status: option<hostStatus>,
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("ProviderEndpoint") providerEndpoint: option<url>,
@as("ProviderType") providerType: option<providerType>,
@as("HostArn") hostArn: option<hostArn>,
@as("Name") name: option<hostName>
}
type hostList = array<host>
type awsServiceClient;
@module("@aws-sdk/client-codestar-connections") @new external createClient: unit => awsServiceClient = "CodeStarconnectionsClient";
module DeleteHost = {
  type t;
  type request = {
@as("HostArn") hostArn: hostArn
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "DeleteHostCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: connectionArn
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: connectionArn
}
  type response = {
@as("Connection") connection: option<connection>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "GetConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateHost = {
  type t;
  type request = {
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("ProviderEndpoint") providerEndpoint: option<url>,
@as("HostArn") hostArn: hostArn
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "UpdateHostCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("HostArnFilter") hostArnFilter: option<hostArn>,
@as("ProviderTypeFilter") providerTypeFilter: option<providerType>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Connections") connections: option<connectionList>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "ListConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetHost = {
  type t;
  type request = {
@as("HostArn") hostArn: hostArn
}
  type response = {
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("ProviderEndpoint") providerEndpoint: option<url>,
@as("ProviderType") providerType: option<providerType>,
@as("Status") status: option<hostStatus>,
@as("Name") name: option<hostName>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "GetHostCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateHost = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("ProviderEndpoint") providerEndpoint: url,
@as("ProviderType") providerType: providerType,
@as("Name") name: hostName
}
  type response = {
@as("Tags") tags: option<tagList_>,
@as("HostArn") hostArn: option<hostArn>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "CreateHostCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("HostArn") hostArn: option<hostArn>,
@as("Tags") tags: option<tagList_>,
@as("ConnectionName") connectionName: connectionName,
@as("ProviderType") providerType: option<providerType>
}
  type response = {
@as("Tags") tags: option<tagList_>,
@as("ConnectionArn") connectionArn: connectionArn
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "CreateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListHosts = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Hosts") hosts: option<hostList>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (request) => t = "ListHostsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
