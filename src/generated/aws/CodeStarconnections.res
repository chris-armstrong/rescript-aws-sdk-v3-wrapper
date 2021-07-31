type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type url = string
type tlsCertificate = string
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type providerType = [@as("GitHubEnterpriseServer") #GitHubEnterpriseServer | @as("GitHub") #GitHub | @as("Bitbucket") #Bitbucket]
type nextToken = string
type maxResults = int;
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
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type connection = {
@as("HostArn") hostArn: hostArn,
@as("ConnectionStatus") connectionStatus: connectionStatus,
@as("OwnerAccountId") ownerAccountId: accountId,
@as("ProviderType") providerType: providerType,
@as("ConnectionArn") connectionArn: connectionArn,
@as("ConnectionName") connectionName: connectionName
}
type vpcConfiguration = {
@as("TlsCertificate") tlsCertificate: tlsCertificate,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>
}
type tagList = array<tag>
type connectionList = array<connection>
type host = {
@as("StatusMessage") statusMessage: hostStatusMessage,
@as("Status") status: hostStatus,
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("ProviderEndpoint") providerEndpoint: url,
@as("ProviderType") providerType: providerType,
@as("HostArn") hostArn: hostArn,
@as("Name") name: hostName
}
type hostList = array<host>
type clientType;
@module("@aws-sdk/client-codestar-connections") @new external createClient: unit => clientType = "CodeStarconnectionsClient";
module DeleteHost = {
  type t;
  type request = {
@as("HostArn") hostArn: option<hostArn>
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "DeleteHostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: option<connectionArn>
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: option<connectionArn>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "GetConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateHost = {
  type t;
  type request = {
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("ProviderEndpoint") providerEndpoint: url,
@as("HostArn") hostArn: option<hostArn>
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "UpdateHostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("HostArnFilter") hostArnFilter: hostArn,
@as("ProviderTypeFilter") providerTypeFilter: providerType
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Connections") connections: connectionList
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "ListConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHost = {
  type t;
  type request = {
@as("HostArn") hostArn: option<hostArn>
}
  type response = {
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("ProviderEndpoint") providerEndpoint: url,
@as("ProviderType") providerType: providerType,
@as("Status") status: hostStatus,
@as("Name") name: hostName
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "GetHostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHost = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("ProviderEndpoint") providerEndpoint: option<url>,
@as("ProviderType") providerType: option<providerType>,
@as("Name") name: option<hostName>
}
  type response = {
@as("Tags") tags: tagList,
@as("HostArn") hostArn: hostArn
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "CreateHostCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("HostArn") hostArn: hostArn,
@as("Tags") tags: tagList,
@as("ConnectionName") connectionName: option<connectionName>,
@as("ProviderType") providerType: providerType
}
  type response = {
@as("Tags") tags: tagList,
@as("ConnectionArn") connectionArn: option<connectionArn>
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHosts = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Hosts") hosts: hostList
}
  @module("@aws-sdk/client-codestar-connections") @new external new_: (Js.Promise.t<request>) => t = "ListHostsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
