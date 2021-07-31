type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type vpcEndpointId = string
type userPassword = string
type userName = string
type userCount = int;
type url = string
type tagValue = string
type tagKey = string
type subnetId = string
type statusCode = int;
type state = [@as("STOP_FAILED") #STOP_FAILED | @as("START_FAILED") #START_FAILED | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("ONLINE") #ONLINE | @as("OFFLINE") #OFFLINE]
type sshPublicKeyId = string
type sshPublicKeyCount = int;
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
type posixId = float;
type policy = string
type nullableRole = string
type nextToken = string
type message = string
type maxResults = int;
type mapTarget = string
type mapEntry = string
type identityProviderType = [@as("AWS_DIRECTORY_SERVICE") #AWS_DIRECTORY_SERVICE | @as("API_GATEWAY") #API_GATEWAY | @as("SERVICE_MANAGED") #SERVICE_MANAGED]
type hostKeyFingerprint = string
type hostKey = string
type homeDirectoryType = [@as("LOGICAL") #LOGICAL | @as("PATH") #PATH]
type homeDirectory = string
type fips = bool;
type externalId = string
type endpointType = [@as("VPC_ENDPOINT") #VPC_ENDPOINT | @as("VPC") #VPC | @as("PUBLIC") #PUBLIC]
type domain = [@as("EFS") #EFS | @as("S3") #S3]
type directoryId = string
type dateImported = Js.Date.t;
type certificate = string
type arn = string
type addressAllocationId = string
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type sshPublicKey = {
@as("SshPublicKeyId") sshPublicKeyId: option<sshPublicKeyId>,
@as("SshPublicKeyBody") sshPublicKeyBody: option<sshPublicKeyBody>,
@as("DateImported") dateImported: option<dateImported>
}
type securityPolicyOptions = array<securityPolicyOption>
type securityPolicyNames = array<securityPolicyName>
type securityGroupIds = array<securityGroupId>
type secondaryGids = array<posixId>
type protocols = array<protocol>
type listedUser = {
@as("UserName") userName: userName,
@as("SshPublicKeyCount") sshPublicKeyCount: sshPublicKeyCount,
@as("Role") role: role,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory,
@as("Arn") arn: option<arn>
}
type listedServer = {
@as("UserCount") userCount: userCount,
@as("State") state: state,
@as("ServerId") serverId: serverId,
@as("LoggingRole") loggingRole: role,
@as("EndpointType") endpointType: endpointType,
@as("IdentityProviderType") identityProviderType: identityProviderType,
@as("Domain") domain: domain,
@as("Arn") arn: option<arn>
}
type listedAccess = {
@as("ExternalId") externalId: externalId,
@as("Role") role: role,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory
}
type identityProviderDetails = {
@as("DirectoryId") directoryId: directoryId,
@as("InvocationRole") invocationRole: role,
@as("Url") url: url
}
type homeDirectoryMapEntry = {
@as("Target") target: option<mapTarget>,
@as("Entry") entry: option<mapEntry>
}
type addressAllocationIds = array<addressAllocationId>
type tags = array<tag>
type sshPublicKeys = array<sshPublicKey>
type posixProfile = {
@as("SecondaryGids") secondaryGids: secondaryGids,
@as("Gid") gid: option<posixId>,
@as("Uid") uid: option<posixId>
}
type listedUsers = array<listedUser>
type listedServers = array<listedServer>
type listedAccesses = array<listedAccess>
type homeDirectoryMappings = array<homeDirectoryMapEntry>
type endpointDetails = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("VpcId") vpcId: vpcId,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
@as("SubnetIds") subnetIds: subnetIds,
@as("AddressAllocationIds") addressAllocationIds: addressAllocationIds
}
type describedSecurityPolicy = {
@as("TlsCiphers") tlsCiphers: securityPolicyOptions,
@as("SshMacs") sshMacs: securityPolicyOptions,
@as("SshKexs") sshKexs: securityPolicyOptions,
@as("SshCiphers") sshCiphers: securityPolicyOptions,
@as("SecurityPolicyName") securityPolicyName: option<securityPolicyName>,
@as("Fips") fips: fips
}
type describedUser = {
@as("UserName") userName: userName,
@as("Tags") tags: tags,
@as("SshPublicKeys") sshPublicKeys: sshPublicKeys,
@as("Role") role: role,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectory") homeDirectory: homeDirectory,
@as("Arn") arn: option<arn>
}
type describedServer = {
@as("UserCount") userCount: userCount,
@as("Tags") tags: tags,
@as("State") state: state,
@as("ServerId") serverId: serverId,
@as("SecurityPolicyName") securityPolicyName: securityPolicyName,
@as("Protocols") protocols: protocols,
@as("LoggingRole") loggingRole: role,
@as("IdentityProviderType") identityProviderType: identityProviderType,
@as("IdentityProviderDetails") identityProviderDetails: identityProviderDetails,
@as("HostKeyFingerprint") hostKeyFingerprint: hostKeyFingerprint,
@as("EndpointType") endpointType: endpointType,
@as("EndpointDetails") endpointDetails: endpointDetails,
@as("Domain") domain: domain,
@as("Certificate") certificate: certificate,
@as("Arn") arn: option<arn>
}
type describedAccess = {
@as("ExternalId") externalId: externalId,
@as("Role") role: role,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectory") homeDirectory: homeDirectory
}
type clientType;
@module("@aws-sdk/client-transfer") @new external createClient: unit => clientType = "TransferClient";
module TestIdentityProvider = {
  type t;
  type request = {
@as("UserPassword") userPassword: userPassword,
@as("UserName") userName: option<userName>,
@as("SourceIp") sourceIp: sourceIp,
@as("ServerProtocol") serverProtocol: protocol,
@as("ServerId") serverId: option<serverId>
}
  type response = {
@as("Url") url: option<url>,
@as("Message") message: message,
@as("StatusCode") statusCode: option<statusCode>,
@as("Response") response: response
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "TestIdentityProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopServer = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "StopServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartServer = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "StartServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ImportSshPublicKey = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("SshPublicKeyBody") sshPublicKeyBody: option<sshPublicKeyBody>,
@as("ServerId") serverId: option<serverId>
}
  type response = {
@as("UserName") userName: option<userName>,
@as("SshPublicKeyId") sshPublicKeyId: option<sshPublicKeyId>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ImportSshPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSshPublicKey = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("SshPublicKeyId") sshPublicKeyId: option<sshPublicKeyId>,
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DeleteSshPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteServer = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DeleteServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccess = {
  type t;
  type request = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DeleteAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("Arn") arn: option<arn>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListSecurityPolicies = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("SecurityPolicyNames") securityPolicyNames: option<securityPolicyNames>,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ListSecurityPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("ServerId") serverId: option<serverId>,
@as("Role") role: role,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory
}
  type response = {
@as("UserName") userName: option<userName>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServer = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>,
@as("SecurityPolicyName") securityPolicyName: securityPolicyName,
@as("Protocols") protocols: protocols,
@as("LoggingRole") loggingRole: nullableRole,
@as("IdentityProviderDetails") identityProviderDetails: identityProviderDetails,
@as("HostKey") hostKey: hostKey,
@as("EndpointType") endpointType: endpointType,
@as("EndpointDetails") endpointDetails: endpointDetails,
@as("Certificate") certificate: certificate
}
  type response = {
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "UpdateServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccess = {
  type t;
  type request = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>,
@as("Role") role: role,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory
}
  type response = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Arn") arn: option<arn>
}
  
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("Users") users: option<listedUsers>,
@as("ServerId") serverId: option<serverId>,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Arn") arn: option<arn>
}
  type response = {
@as("Tags") tags: tags,
@as("NextToken") nextToken: nextToken,
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServers = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("Servers") servers: option<listedServers>,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ListServersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccesses = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("Accesses") accesses: option<listedAccesses>,
@as("ServerId") serverId: option<serverId>,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "ListAccessesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSecurityPolicy = {
  type t;
  type request = {
@as("SecurityPolicyName") securityPolicyName: option<securityPolicyName>
}
  type response = {
@as("SecurityPolicy") securityPolicy: option<describedSecurityPolicy>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DescribeSecurityPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("Tags") tags: tags,
@as("SshPublicKeyBody") sshPublicKeyBody: sshPublicKeyBody,
@as("ServerId") serverId: option<serverId>,
@as("Role") role: option<role>,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory
}
  type response = {
@as("UserName") userName: option<userName>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServer = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SecurityPolicyName") securityPolicyName: securityPolicyName,
@as("Protocols") protocols: protocols,
@as("LoggingRole") loggingRole: role,
@as("IdentityProviderType") identityProviderType: identityProviderType,
@as("IdentityProviderDetails") identityProviderDetails: identityProviderDetails,
@as("HostKey") hostKey: hostKey,
@as("EndpointType") endpointType: endpointType,
@as("EndpointDetails") endpointDetails: endpointDetails,
@as("Domain") domain: domain,
@as("Certificate") certificate: certificate
}
  type response = {
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "CreateServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccess = {
  type t;
  type request = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>,
@as("Role") role: option<role>,
@as("PosixProfile") posixProfile: posixProfile,
@as("Policy") policy: policy,
@as("HomeDirectoryMappings") homeDirectoryMappings: homeDirectoryMappings,
@as("HomeDirectoryType") homeDirectoryType: homeDirectoryType,
@as("HomeDirectory") homeDirectory: homeDirectory
}
  type response = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "CreateAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("UserName") userName: option<userName>,
@as("ServerId") serverId: option<serverId>
}
  type response = {
@as("User") user: option<describedUser>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServer = {
  type t;
  type request = {
@as("ServerId") serverId: option<serverId>
}
  type response = {
@as("Server") server: option<describedServer>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DescribeServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccess = {
  type t;
  type request = {
@as("ExternalId") externalId: option<externalId>,
@as("ServerId") serverId: option<serverId>
}
  type response = {
@as("Access") access: option<describedAccess>,
@as("ServerId") serverId: option<serverId>
}
  @module("@aws-sdk/client-transfer") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
