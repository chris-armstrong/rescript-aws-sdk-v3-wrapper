type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codestar-connections") @new
external createClient: unit => awsServiceClient = "CodeStarconnectionsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type url = string
type tlsCertificate = string
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type providerType = [
  | @as("GitHubEnterpriseServer") #GitHubEnterpriseServer
  | @as("GitHub") #GitHub
  | @as("Bitbucket") #Bitbucket
]
type nextToken = string
type maxResults = int
type hostStatusMessage = string
type hostStatus = string
type hostName = string
type hostArn = string
type errorMessage = string
type connectionStatus = [
  | @as("ERROR") #ERROR
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type connectionName = string
type connectionArn = string
type amazonResourceName = string
type accountId = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag is a key-value pair that is used to manage the resource.</p>
         <p>This tag is available for use by AWS services that support tags.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The tag's key.</p>") @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>A resource that is used to connect third-party source providers with services like AWS CodePipeline.</p>
         <p>Note: A connection created through CloudFormation, the CLI, or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by updating the 
      connection in the console.</p>")
type connection = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the host associated with the connection.</p>")
  @as("HostArn")
  hostArn: option<hostArn>,
  @ocaml.doc("<p>The current status of the connection. </p>") @as("ConnectionStatus")
  connectionStatus: option<connectionStatus>,
  @ocaml.doc("<p>The identifier of the external provider where your third-party code repository is configured.
      For Bitbucket, this is the account ID of the owner of the Bitbucket repository.</p>")
  @as("OwnerAccountId")
  ownerAccountId: option<accountId>,
  @ocaml.doc("<p>The name of the external provider where your third-party code repository is
      configured.</p>")
  @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection
      reference when the connection is shared between AWS services.</p>
         <note>
            <p>The ARN is never reused if the connection is deleted.</p>
         </note>")
  @as("ConnectionArn")
  connectionArn: option<connectionArn>,
  @ocaml.doc(
    "<p>The name of the connection. Connection names must be unique in an AWS user account.</p>"
  )
  @as("ConnectionName")
  connectionName: option<connectionName>,
}
@ocaml.doc("<p>The VPC configuration provisioned for the host.</p>")
type vpcConfiguration = {
  @ocaml.doc(
    "<p>The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.</p>"
  )
  @as("TlsCertificate")
  tlsCertificate: option<tlsCertificate>,
  @ocaml.doc("<p>The ID of the security group or security groups associated with the Amazon VPC connected
      to the infrastructure where your provider type is installed.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: securityGroupIds,
  @ocaml.doc("<p>The ID of the subnet or subnets associated with the Amazon VPC connected to the
      infrastructure where your provider type is installed.</p>")
  @as("SubnetIds")
  subnetIds: subnetIds,
  @ocaml.doc("<p>The ID of the Amazon VPC connected to the infrastructure where your provider type is
      installed.</p>")
  @as("VpcId")
  vpcId: vpcId,
}
type tagList_ = array<tag>
type connectionList = array<connection>
@ocaml.doc("<p>A resource that represents the infrastructure where a third-party provider is installed.
      The host is used when you create connections to an installed third-party provider type, such
      as GitHub Enterprise Server. You create one host for all connections to that provider.</p>
         <note>
            <p>A host created through the CLI or the SDK is in `PENDING` status by
        default. You can make its status `AVAILABLE` by setting up the host in the console.</p>
         </note>")
type host = {
  @ocaml.doc("<p>The status description for the host.</p>") @as("StatusMessage")
  statusMessage: option<hostStatusMessage>,
  @ocaml.doc(
    "<p>The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.</p>"
  )
  @as("Status")
  status: option<hostStatus>,
  @ocaml.doc("<p>The VPC configuration provisioned for the host.</p>") @as("VpcConfiguration")
  vpcConfiguration: option<vpcConfiguration>,
  @ocaml.doc("<p>The endpoint of the infrastructure where your provider type is installed.</p>")
  @as("ProviderEndpoint")
  providerEndpoint: option<url>,
  @ocaml.doc("<p>The name of the installed provider to be associated with your connection. The host
      resource represents the infrastructure where your provider type is installed. The valid
      provider type is GitHub Enterprise Server.</p>")
  @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the host.</p>") @as("HostArn")
  hostArn: option<hostArn>,
  @ocaml.doc("<p>The name of the host.</p>") @as("Name") name: option<hostName>,
}
type hostList = array<host>
@ocaml.doc("<fullname>AWS CodeStar Connections</fullname>
         <p>This AWS CodeStar Connections API Reference provides descriptions and usage examples of
      the operations and data types for the AWS CodeStar Connections API. You can use the
      connections API to work with connections and installations.</p>
         <p>
            <i>Connections</i> are configurations that you use to connect AWS
      resources to external code repositories. Each connection is a resource that can be given to
      services such as CodePipeline to connect to a third-party repository such as Bitbucket. For
      example, you can add the connection in CodePipeline so that it triggers your pipeline when a
      code change is made to your third-party code repository. Each connection is named and
      associated with a unique ARN that is used to reference the connection.</p>
         <p>When you create a connection, the console initiates a third-party connection handshake.
        <i>Installations</i> are the apps that are used to conduct this handshake. For
      example, the installation for the Bitbucket provider type is the Bitbucket app. When you
      create a connection, you can choose an existing installation or create one.</p>
         <p>When you want to create a connection to an installed provider type such as GitHub
      Enterprise Server, you create a <i>host</i> for your connections.</p>
         <p>You can work with connections by calling:</p>
         <ul>
            <li>
               <p>
                  <a>CreateConnection</a>, which creates a uniquely named connection that can be
          referenced by services such as CodePipeline.</p>
            </li>
            <li>
               <p>
                  <a>DeleteConnection</a>, which deletes the specified connection.</p>
            </li>
            <li>
               <p>
                  <a>GetConnection</a>, which returns information about the connection, including
          the connection status.</p>
            </li>
            <li>
               <p>
                  <a>ListConnections</a>, which lists the connections associated with your
          account.</p>
            </li>
         </ul>
         <p>You can work with hosts by calling:</p>
         <ul>
            <li>
               <p>
                  <a>CreateHost</a>, which creates a host that represents the infrastructure where your provider is installed.</p>
            </li>
            <li>
               <p>
                  <a>DeleteHost</a>, which deletes the specified host.</p>
            </li>
            <li>
               <p>
                  <a>GetHost</a>, which returns information about the host, including
          the setup status.</p>
            </li>
            <li>
               <p>
                  <a>ListHosts</a>, which lists the hosts associated with your
          account.</p>
            </li>
         </ul>
         <p>You can work with tags in AWS CodeStar Connections by calling the following:</p>
         <ul>
            <li>
               <p>
                  <a>ListTagsForResource</a>, which gets information about AWS tags for a
          specified Amazon Resource Name (ARN) in AWS CodeStar Connections.</p>
            </li>
            <li>
               <p>
                  <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeStar
          Connections.</p>
            </li>
            <li>
               <p>
                  <a>UntagResource</a>, which removes tags for a resource in AWS CodeStar
          Connections.</p>
            </li>
         </ul>
         <p>For information about how to use AWS CodeStar Connections, see the <a href=\"https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html\">Developer Tools User
        Guide</a>.</p>")
module DeleteHost = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the host to be deleted.</p>") @as("HostArn")
    hostArn: hostArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "DeleteHostCommand"
  let make = (~hostArn, ()) => new({hostArn: hostArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>
         <note>
            <p>The ARN is never reused if the connection is deleted.</p>
         </note>")
    @as("ConnectionArn")
    connectionArn: connectionArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionArn, ()) => new({connectionArn: connectionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of keys for the tags to be removed from the resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>")
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a connection.</p>") @as("ConnectionArn")
    connectionArn: connectionArn,
  }
  type response = {
    @ocaml.doc("<p>The connection details, such as status, owner, and provider type.</p>")
    @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "GetConnectionCommand"
  let make = (~connectionArn, ()) => new({connectionArn: connectionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateHost = {
  type t
  type request = {
    @ocaml.doc("<p>The VPC configuration of the host to be updated. A VPC must be configured and the
      infrastructure to be represented by the host must already be connected to the VPC.</p>")
    @as("VpcConfiguration")
    vpcConfiguration: option<vpcConfiguration>,
    @ocaml.doc("<p>The URL or endpoint of the host to be updated.</p>") @as("ProviderEndpoint")
    providerEndpoint: option<url>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the host to be updated.</p>") @as("HostArn")
    hostArn: hostArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "UpdateHostCommand"
  let make = (~hostArn, ~vpcConfiguration=?, ~providerEndpoint=?, ()) =>
    new({vpcConfiguration, providerEndpoint, hostArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you want to modify or add to the resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key and value pairs associated with the specified resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The token that was returned from the previous <code>ListConnections</code> call, which
      can be used to return the next set of connections in the list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
      results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters the list of connections to those associated with a specified host.</p>")
    @as("HostArnFilter")
    hostArnFilter: option<hostArn>,
    @ocaml.doc("<p>Filters the list of connections to those associated with a specified provider, such as
      Bitbucket.</p>")
    @as("ProviderTypeFilter")
    providerTypeFilter: option<providerType>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used in the next <code>ListConnections</code> call. To view all
      items in the list, continue to call this operation with each subsequent token until no more
      <code>nextToken</code> values are returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of connections and the details for each connection, such as status, owner, and
      provider type.</p>")
    @as("Connections")
    connections: option<connectionList>,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "ListConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~hostArnFilter=?, ~providerTypeFilter=?, ()) =>
    new({nextToken, maxResults, hostArnFilter, providerTypeFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetHost = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the requested host.</p>") @as("HostArn")
    hostArn: hostArn,
  }
  type response = {
    @ocaml.doc("<p>The VPC configuration of the requested host.</p>") @as("VpcConfiguration")
    vpcConfiguration: option<vpcConfiguration>,
    @ocaml.doc("<p>The endpoint of the infrastructure represented by the requested host.</p>")
    @as("ProviderEndpoint")
    providerEndpoint: option<url>,
    @ocaml.doc("<p>The provider type of the requested host, such as GitHub Enterprise Server.</p>")
    @as("ProviderType")
    providerType: option<providerType>,
    @ocaml.doc("<p>The status of the requested host.</p>") @as("Status") status: option<hostStatus>,
    @ocaml.doc("<p>The name of the requested host.</p>") @as("Name") name: option<hostName>,
  }
  @module("@aws-sdk/client-codestar-connections") @new external new: request => t = "GetHostCommand"
  let make = (~hostArn, ()) => new({hostArn: hostArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateHost = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The VPC configuration to be provisioned for the host. A VPC must be configured and the
      infrastructure to be represented by the host must already be connected to the VPC.</p>")
    @as("VpcConfiguration")
    vpcConfiguration: option<vpcConfiguration>,
    @ocaml.doc("<p>The endpoint of the infrastructure to be represented by the host after it is
      created.</p>")
    @as("ProviderEndpoint")
    providerEndpoint: url,
    @ocaml.doc("<p>The name of the installed provider to be associated with your connection. The host
      resource represents the infrastructure where your provider type is installed. The valid
      provider type is GitHub Enterprise Server.</p>")
    @as("ProviderType")
    providerType: providerType,
    @ocaml.doc("<p>The name of the host to be created. The name must be unique in the calling AWS
      account.</p>")
    @as("Name")
    name: hostName,
  }
  type response = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the host to be created.</p>") @as("HostArn")
    hostArn: option<hostArn>,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "CreateHostCommand"
  let make = (~providerEndpoint, ~providerType, ~name, ~tags=?, ~vpcConfiguration=?, ()) =>
    new({tags, vpcConfiguration, providerEndpoint, providerType, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>"
    )
    @as("HostArn")
    hostArn: option<hostArn>,
    @ocaml.doc("<p>The key-value pair to use when tagging the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name of the connection to be created. The name must be unique in the calling AWS
      account.</p>")
    @as("ConnectionName")
    connectionName: connectionName,
    @ocaml.doc("<p>The name of the external provider where your third-party code repository is
      configured.</p>")
    @as("ProviderType")
    providerType: option<providerType>,
  }
  type response = {
    @ocaml.doc("<p>Specifies the tags applied to the resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the
      connection reference when the connection is shared between AWS services.</p>
         <note>
            <p>The ARN is never reused if the connection is deleted.</p>
         </note>")
    @as("ConnectionArn")
    connectionArn: connectionArn,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "CreateConnectionCommand"
  let make = (~connectionName, ~hostArn=?, ~tags=?, ~providerType=?, ()) =>
    new({hostArn, tags, connectionName, providerType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListHosts = {
  type t
  type request = {
    @ocaml.doc("<p>The token that was returned from the previous <code>ListHosts</code> call, which can be
      used to return the next set of hosts in the list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in a single call. To retrieve the remaining
      results, make another call with the returned <code>nextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used in the next <code>ListHosts</code> call. To view all items in the
      list, continue to call this operation with each subsequent token until no more
      <code>nextToken</code> values are returned.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of hosts and the details for each host, such as status, endpoint, and provider
      type.</p>")
    @as("Hosts")
    hosts: option<hostList>,
  }
  @module("@aws-sdk/client-codestar-connections") @new
  external new: request => t = "ListHostsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
