type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type userArn = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type subnetId = string
type amazonawsString = string
type permissions = [@as("read-only") #read_only | @as("read-write") #read_write | @as("owner") #owner]
type memberPermissions = [@as("read-only") #read_only | @as("read-write") #read_write]
type maxResults = int;
type managedCredentialsStatus = [@as("FAILED_REMOVAL_BY_OWNER") #FAILED_REMOVAL_BY_OWNER | @as("FAILED_REMOVAL_BY_COLLABORATOR") #FAILED_REMOVAL_BY_COLLABORATOR | @as("PENDING_START_REMOVAL_BY_OWNER") #PENDING_START_REMOVAL_BY_OWNER | @as("PENDING_REMOVAL_BY_OWNER") #PENDING_REMOVAL_BY_OWNER | @as("PENDING_START_REMOVAL_BY_COLLABORATOR") #PENDING_START_REMOVAL_BY_COLLABORATOR | @as("PENDING_REMOVAL_BY_COLLABORATOR") #PENDING_REMOVAL_BY_COLLABORATOR | @as("DISABLED_BY_COLLABORATOR") #DISABLED_BY_COLLABORATOR | @as("DISABLED_BY_OWNER") #DISABLED_BY_OWNER | @as("DISABLED_BY_DEFAULT") #DISABLED_BY_DEFAULT | @as("ENABLED_BY_OWNER") #ENABLED_BY_OWNER | @as("ENABLED_ON_CREATE") #ENABLED_ON_CREATE]
type amazonawsInteger = int;
type instanceType = string
type imageId = string
type environmentType = [@as("ec2") #ec2 | @as("ssh") #ssh]
type environmentStatus = [@as("deleting") #deleting | @as("stopped") #stopped | @as("stopping") #stopping | @as("ready") #ready | @as("connecting") #connecting | @as("creating") #creating | @as("error") #error]
type environmentName = string
type environmentLifecycleStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type environmentId = string
type environmentDescription = string
type environmentArn = string
type connectionType = [@as("CONNECT_SSM") #CONNECT_SSM | @as("CONNECT_SSH") #CONNECT_SSH]
type clientRequestToken = string
type automaticStopTimeMinutes = int;
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type permissionsList = array<permissions>
type environmentMember = {
@as("lastAccess") lastAccess: amazonawsTimestamp,
@as("environmentId") environmentId: option<environmentId>,
@as("userArn") userArn: option<userArn>,
@as("userId") userId: option<amazonawsString>,
@as("permissions") permissions: option<permissions>
}
type environmentLifecycle = {
@as("failureResource") failureResource: amazonawsString,
@as("reason") reason: amazonawsString,
@as("status") status: environmentLifecycleStatus
}
type environmentIdList = array<environmentId>
type boundedEnvironmentIdList = array<environmentId>
type tagList = array<tag>
type environmentMembersList = array<environmentMember>
type environment = {
@as("managedCredentialsStatus") managedCredentialsStatus: managedCredentialsStatus,
@as("lifecycle") lifecycle: environmentLifecycle,
@as("ownerArn") ownerArn: option<amazonawsString>,
@as("arn") arn: option<amazonawsString>,
@as("connectionType") connectionType: connectionType,
@as("type") type_: option<environmentType>,
@as("description") description: environmentDescription,
@as("name") name: environmentName,
@as("id") id: environmentId
}
type environmentList = array<environment>
type clientType;
@module("@aws-sdk/client-cloud9") @new external createClient: unit => clientType = "Cloud9Client";
module UpdateEnvironment = {
  type t;
  type request = {
@as("description") description: environmentDescription,
@as("name") name: environmentName,
@as("environmentId") environmentId: option<environmentId>
}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentStatus = {
  type t;
  type request = {
@as("environmentId") environmentId: option<environmentId>
}
  type response = {
@as("message") message: option<amazonawsString>,
@as("status") status: option<environmentStatus>
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEnvironmentMembership = {
  type t;
  type request = {
@as("userArn") userArn: option<userArn>,
@as("environmentId") environmentId: option<environmentId>
}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "DeleteEnvironmentMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEnvironment = {
  type t;
  type request = {
@as("environmentId") environmentId: option<environmentId>
}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "DeleteEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironmentMembership = {
  type t;
  type request = {
@as("permissions") permissions: option<memberPermissions>,
@as("userArn") userArn: option<userArn>,
@as("environmentId") environmentId: option<environmentId>
}
  type response = {
@as("membership") membership: environmentMember
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnvironmentMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<environmentArn>
}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEnvironments = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString
}
  type response = {
@as("environmentIds") environmentIds: environmentIdList,
@as("nextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "ListEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironmentMembership = {
  type t;
  type request = {
@as("permissions") permissions: option<memberPermissions>,
@as("userArn") userArn: option<userArn>,
@as("environmentId") environmentId: option<environmentId>
}
  type response = {
@as("membership") membership: option<environmentMember>
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "CreateEnvironmentMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<environmentArn>
}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<environmentArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentMemberships = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("permissions") permissions: permissionsList,
@as("environmentId") environmentId: environmentId,
@as("userArn") userArn: userArn
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("memberships") memberships: environmentMembersList
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentMembershipsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironmentEC2 = {
  type t;
  type request = {
@as("connectionType") connectionType: connectionType,
@as("tags") tags: tagList,
@as("ownerArn") ownerArn: userArn,
@as("automaticStopTimeMinutes") automaticStopTimeMinutes: automaticStopTimeMinutes,
@as("imageId") imageId: imageId,
@as("subnetId") subnetId: subnetId,
@as("instanceType") instanceType: option<instanceType>,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("description") description: environmentDescription,
@as("name") name: option<environmentName>
}
  type response = {
@as("environmentId") environmentId: environmentId
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "CreateEnvironmentEC2Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironments = {
  type t;
  type request = {
@as("environmentIds") environmentIds: option<boundedEnvironmentIdList>
}
  type response = {
@as("environments") environments: environmentList
}
  @module("@aws-sdk/client-cloud9") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
