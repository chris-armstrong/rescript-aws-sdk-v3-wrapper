type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-transfer") @new
external createClient: unit => awsServiceClient = "TransferClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type vpcEndpointId = string
type userPassword = string
type userName = string
type userCount = int
type url = string
type tagValue = string
type tagKey = string
type subnetId = string
type statusCode = int
type state = [
  | @as("STOP_FAILED") #STOP_FAILED
  | @as("START_FAILED") #START_FAILED
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("ONLINE") #ONLINE
  | @as("OFFLINE") #OFFLINE
]
type sshPublicKeyId = string
type sshPublicKeyCount = int
type sshPublicKeyBody = string
type sourceIp = string
type serviceErrorMessage = string
type serverId = string
type securityPolicyOption = string
type securityPolicyName = string
type securityGroupId = string
type role = string
type retryAfterSeconds = string
type response = string
type resourceType = string
type resource = string
type protocol = [@as("FTPS") #FTPS | @as("FTP") #FTP | @as("SFTP") #SFTP]
type posixId = float
type policy = string
type nullableRole = string
type nextToken = string
type message = string
type maxResults = int
type mapTarget = string
type mapEntry = string
type identityProviderType = [
  | @as("AWS_DIRECTORY_SERVICE") #AWS_DIRECTORY_SERVICE
  | @as("API_GATEWAY") #API_GATEWAY
  | @as("SERVICE_MANAGED") #SERVICE_MANAGED
]
type hostKeyFingerprint = string
type hostKey = string
type homeDirectoryType = [@as("LOGICAL") #LOGICAL | @as("PATH") #PATH]
type homeDirectory = string
type fips = bool
type externalId = string
type endpointType = [@as("VPC_ENDPOINT") #VPC_ENDPOINT | @as("VPC") #VPC | @as("PUBLIC") #PUBLIC]
type domain = [@as("EFS") #EFS | @as("S3") #S3]
type directoryId = string
type dateImported = Js.Date.t
type certificate = string
type arn = string
type addressAllocationId = string
type tagKeys = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
type sshPublicKey = {
  @as("SshPublicKeyId") sshPublicKeyId: sshPublicKeyId,
  @as("SshPublicKeyBody") sshPublicKeyBody: sshPublicKeyBody,
  @as("DateImported") dateImported: dateImported,
}
type securityPolicyOptions = array<securityPolicyOption>
type securityPolicyNames = array<securityPolicyName>
type securityGroupIds = array<securityGroupId>
type secondaryGids = array<posixId>
type protocols = array<protocol>
type listedUser = {
  @as("UserName") userName: option<userName>,
  @as("SshPublicKeyCount") sshPublicKeyCount: option<sshPublicKeyCount>,
  @as("Role") role: option<role>,
  @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
  @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  @as("Arn") arn: arn,
}
type listedServer = {
  @as("UserCount") userCount: option<userCount>,
  @as("State") state: option<state>,
  @as("ServerId") serverId: option<serverId>,
  @as("LoggingRole") loggingRole: option<role>,
  @as("EndpointType") endpointType: option<endpointType>,
  @as("IdentityProviderType") identityProviderType: option<identityProviderType>,
  @as("Domain") domain: option<domain>,
  @as("Arn") arn: arn,
}
type listedAccess = {
  @as("ExternalId") externalId: option<externalId>,
  @as("Role") role: option<role>,
  @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
  @as("HomeDirectory") homeDirectory: option<homeDirectory>,
}
type identityProviderDetails = {
  @as("DirectoryId") directoryId: option<directoryId>,
  @as("InvocationRole") invocationRole: option<role>,
  @as("Url") url: option<url>,
}
type homeDirectoryMapEntry = {
  @as("Target") target: mapTarget,
  @as("Entry") entry: mapEntry,
}
type addressAllocationIds = array<addressAllocationId>
type tags = array<tag>
type sshPublicKeys = array<sshPublicKey>
type posixProfile = {
  @as("SecondaryGids") secondaryGids: option<secondaryGids>,
  @as("Gid") gid: posixId,
  @as("Uid") uid: posixId,
}
type listedUsers = array<listedUser>
type listedServers = array<listedServer>
type listedAccesses = array<listedAccess>
type homeDirectoryMappings = array<homeDirectoryMapEntry>
type endpointDetails = {
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
  @as("VpcId") vpcId: option<vpcId>,
  @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
  @as("AddressAllocationIds") addressAllocationIds: option<addressAllocationIds>,
}
type describedSecurityPolicy = {
  @as("TlsCiphers") tlsCiphers: option<securityPolicyOptions>,
  @as("SshMacs") sshMacs: option<securityPolicyOptions>,
  @as("SshKexs") sshKexs: option<securityPolicyOptions>,
  @as("SshCiphers") sshCiphers: option<securityPolicyOptions>,
  @as("SecurityPolicyName") securityPolicyName: securityPolicyName,
  @as("Fips") fips: option<fips>,
}
type describedUser = {
  @as("UserName") userName: option<userName>,
  @as("Tags") tags: option<tags>,
  @as("SshPublicKeys") sshPublicKeys: option<sshPublicKeys>,
  @as("Role") role: option<role>,
  @as("PosixProfile") posixProfile: option<posixProfile>,
  @as("Policy") policy: option<policy>,
  @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
  @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
  @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  @as("Arn") arn: arn,
}
type describedServer = {
  @as("UserCount") userCount: option<userCount>,
  @as("Tags") tags: option<tags>,
  @as("State") state: option<state>,
  @as("ServerId") serverId: option<serverId>,
  @as("SecurityPolicyName") securityPolicyName: option<securityPolicyName>,
  @as("Protocols") protocols: option<protocols>,
  @as("LoggingRole") loggingRole: option<role>,
  @as("IdentityProviderType") identityProviderType: option<identityProviderType>,
  @as("IdentityProviderDetails") identityProviderDetails: option<identityProviderDetails>,
  @as("HostKeyFingerprint") hostKeyFingerprint: option<hostKeyFingerprint>,
  @as("EndpointType") endpointType: option<endpointType>,
  @as("EndpointDetails") endpointDetails: option<endpointDetails>,
  @as("Domain") domain: option<domain>,
  @as("Certificate") certificate: option<certificate>,
  @as("Arn") arn: arn,
}
type describedAccess = {
  @as("ExternalId") externalId: option<externalId>,
  @as("Role") role: option<role>,
  @as("PosixProfile") posixProfile: option<posixProfile>,
  @as("Policy") policy: option<policy>,
  @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
  @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
  @as("HomeDirectory") homeDirectory: option<homeDirectory>,
}

module TestIdentityProvider = {
  type t
  type request = {
    @as("UserPassword") userPassword: option<userPassword>,
    @as("UserName") userName: userName,
    @as("SourceIp") sourceIp: option<sourceIp>,
    @as("ServerProtocol") serverProtocol: option<protocol>,
    @as("ServerId") serverId: serverId,
  }
  type response = {
    @as("Url") url: url,
    @as("Message") message: option<message>,
    @as("StatusCode") statusCode: statusCode,
    @as("Response") response: option<response>,
  }
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "TestIdentityProviderCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopServer = {
  type t
  type request = {@as("ServerId") serverId: serverId}

  @module("@aws-sdk/client-transfer") @new external new: request => t = "StopServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartServer = {
  type t
  type request = {@as("ServerId") serverId: serverId}

  @module("@aws-sdk/client-transfer") @new external new: request => t = "StartServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportSshPublicKey = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("SshPublicKeyBody") sshPublicKeyBody: sshPublicKeyBody,
    @as("ServerId") serverId: serverId,
  }
  type response = {
    @as("UserName") userName: userName,
    @as("SshPublicKeyId") sshPublicKeyId: sshPublicKeyId,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ImportSshPublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("ServerId") serverId: serverId,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSshPublicKey = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("SshPublicKeyId") sshPublicKeyId: sshPublicKeyId,
    @as("ServerId") serverId: serverId,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteSshPublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServer = {
  type t
  type request = {@as("ServerId") serverId: serverId}

  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccess = {
  type t
  type request = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("Arn") arn: arn,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListSecurityPolicies = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("SecurityPolicyNames") securityPolicyNames: securityPolicyNames,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "ListSecurityPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUser = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("ServerId") serverId: serverId,
    @as("Role") role: option<role>,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @as("Policy") policy: option<policy>,
    @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
    @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
    @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  }
  type response = {
    @as("UserName") userName: userName,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateServer = {
  type t
  type request = {
    @as("ServerId") serverId: serverId,
    @as("SecurityPolicyName") securityPolicyName: option<securityPolicyName>,
    @as("Protocols") protocols: option<protocols>,
    @as("LoggingRole") loggingRole: option<nullableRole>,
    @as("IdentityProviderDetails") identityProviderDetails: option<identityProviderDetails>,
    @as("HostKey") hostKey: option<hostKey>,
    @as("EndpointType") endpointType: option<endpointType>,
    @as("EndpointDetails") endpointDetails: option<endpointDetails>,
    @as("Certificate") certificate: option<certificate>,
  }
  type response = {@as("ServerId") serverId: serverId}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccess = {
  type t
  type request = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
    @as("Role") role: option<role>,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @as("Policy") policy: option<policy>,
    @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
    @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
    @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  }
  type response = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("Arn") arn: arn,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListUsers = {
  type t
  type request = {
    @as("ServerId") serverId: serverId,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("Users") users: listedUsers,
    @as("ServerId") serverId: serverId,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListUsersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Arn") arn: arn,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("Servers") servers: listedServers,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListServersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccesses = {
  type t
  type request = {
    @as("ServerId") serverId: serverId,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("Accesses") accesses: listedAccesses,
    @as("ServerId") serverId: serverId,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListAccessesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityPolicy = {
  type t
  type request = {@as("SecurityPolicyName") securityPolicyName: securityPolicyName}
  type response = {@as("SecurityPolicy") securityPolicy: describedSecurityPolicy}
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "DescribeSecurityPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("Tags") tags: option<tags>,
    @as("SshPublicKeyBody") sshPublicKeyBody: option<sshPublicKeyBody>,
    @as("ServerId") serverId: serverId,
    @as("Role") role: role,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @as("Policy") policy: option<policy>,
    @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
    @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
    @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  }
  type response = {
    @as("UserName") userName: userName,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateServer = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("SecurityPolicyName") securityPolicyName: option<securityPolicyName>,
    @as("Protocols") protocols: option<protocols>,
    @as("LoggingRole") loggingRole: option<role>,
    @as("IdentityProviderType") identityProviderType: option<identityProviderType>,
    @as("IdentityProviderDetails") identityProviderDetails: option<identityProviderDetails>,
    @as("HostKey") hostKey: option<hostKey>,
    @as("EndpointType") endpointType: option<endpointType>,
    @as("EndpointDetails") endpointDetails: option<endpointDetails>,
    @as("Domain") domain: option<domain>,
    @as("Certificate") certificate: option<certificate>,
  }
  type response = {@as("ServerId") serverId: serverId}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccess = {
  type t
  type request = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
    @as("Role") role: role,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @as("Policy") policy: option<policy>,
    @as("HomeDirectoryMappings") homeDirectoryMappings: option<homeDirectoryMappings>,
    @as("HomeDirectoryType") homeDirectoryType: option<homeDirectoryType>,
    @as("HomeDirectory") homeDirectory: option<homeDirectory>,
  }
  type response = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @as("UserName") userName: userName,
    @as("ServerId") serverId: serverId,
  }
  type response = {
    @as("User") user: describedUser,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeUserCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServer = {
  type t
  type request = {@as("ServerId") serverId: serverId}
  type response = {@as("Server") server: describedServer}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeServerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccess = {
  type t
  type request = {
    @as("ExternalId") externalId: externalId,
    @as("ServerId") serverId: serverId,
  }
  type response = {
    @as("Access") access: describedAccess,
    @as("ServerId") serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
