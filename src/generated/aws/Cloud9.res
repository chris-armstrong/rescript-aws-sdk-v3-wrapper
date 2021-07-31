type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloud9") @new
external createClient: unit => awsServiceClient = "Cloud9Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userArn = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type permissions = [
  | @as("read-only") #Read_Only
  | @as("read-write") #Read_Write
  | @as("owner") #Owner
]
type memberPermissions = [@as("read-only") #Read_Only | @as("read-write") #Read_Write]
type maxResults = int
type managedCredentialsStatus = [
  | @as("FAILED_REMOVAL_BY_OWNER") #FAILED_REMOVAL_BY_OWNER
  | @as("FAILED_REMOVAL_BY_COLLABORATOR") #FAILED_REMOVAL_BY_COLLABORATOR
  | @as("PENDING_START_REMOVAL_BY_OWNER") #PENDING_START_REMOVAL_BY_OWNER
  | @as("PENDING_REMOVAL_BY_OWNER") #PENDING_REMOVAL_BY_OWNER
  | @as("PENDING_START_REMOVAL_BY_COLLABORATOR") #PENDING_START_REMOVAL_BY_COLLABORATOR
  | @as("PENDING_REMOVAL_BY_COLLABORATOR") #PENDING_REMOVAL_BY_COLLABORATOR
  | @as("DISABLED_BY_COLLABORATOR") #DISABLED_BY_COLLABORATOR
  | @as("DISABLED_BY_OWNER") #DISABLED_BY_OWNER
  | @as("DISABLED_BY_DEFAULT") #DISABLED_BY_DEFAULT
  | @as("ENABLED_BY_OWNER") #ENABLED_BY_OWNER
  | @as("ENABLED_ON_CREATE") #ENABLED_ON_CREATE
]
type integer_ = int
type instanceType = string
type imageId = string
type environmentType = [@as("ec2") #Ec2 | @as("ssh") #Ssh]
type environmentStatus = [
  | @as("deleting") #Deleting
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("ready") #Ready
  | @as("connecting") #Connecting
  | @as("creating") #Creating
  | @as("error") #Error
]
type environmentName = string
type environmentLifecycleStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type environmentId = string
type environmentDescription = string
type environmentArn = string
type connectionType = [@as("CONNECT_SSM") #CONNECT_SSM | @as("CONNECT_SSH") #CONNECT_SSH]
type clientRequestToken = string
type automaticStopTimeMinutes = int
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type permissionsList = array<permissions>
type environmentMember = {
  lastAccess: option<timestamp_>,
  environmentId: environmentId,
  userArn: userArn,
  userId: string_,
  permissions: permissions,
}
type environmentLifecycle = {
  failureResource: option<string_>,
  reason: option<string_>,
  status: option<environmentLifecycleStatus>,
}
type environmentIdList = array<environmentId>
type boundedEnvironmentIdList = array<environmentId>
type tagList_ = array<tag>
type environmentMembersList = array<environmentMember>
type environment = {
  managedCredentialsStatus: option<managedCredentialsStatus>,
  lifecycle: option<environmentLifecycle>,
  ownerArn: string_,
  arn: string_,
  connectionType: option<connectionType>,
  @as("type") type_: environmentType,
  description: option<environmentDescription>,
  name: option<environmentName>,
  id: option<environmentId>,
}
type environmentList = array<environment>

module UpdateEnvironment = {
  type t
  type request = {
    description: option<environmentDescription>,
    name: option<environmentName>,
    environmentId: environmentId,
  }
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "UpdateEnvironmentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentStatus = {
  type t
  type request = {environmentId: environmentId}
  type response = {
    message: string_,
    status: environmentStatus,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DescribeEnvironmentStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEnvironmentMembership = {
  type t
  type request = {
    userArn: userArn,
    environmentId: environmentId,
  }
  type response = unit
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DeleteEnvironmentMembershipCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEnvironment = {
  type t
  type request = {environmentId: environmentId}
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "DeleteEnvironmentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEnvironmentMembership = {
  type t
  type request = {
    permissions: memberPermissions,
    userArn: userArn,
    environmentId: environmentId,
  }
  type response = {membership: option<environmentMember>}
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "UpdateEnvironmentMembershipCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: environmentArn,
  }
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEnvironments = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
  }
  type response = {
    environmentIds: option<environmentIdList>,
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "ListEnvironmentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEnvironmentMembership = {
  type t
  type request = {
    permissions: memberPermissions,
    userArn: userArn,
    environmentId: environmentId,
  }
  type response = {membership: environmentMember}
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "CreateEnvironmentMembershipCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: environmentArn,
  }
  type response = unit
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: environmentArn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentMemberships = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    permissions: option<permissionsList>,
    environmentId: option<environmentId>,
    userArn: option<userArn>,
  }
  type response = {
    nextToken: option<string_>,
    memberships: option<environmentMembersList>,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DescribeEnvironmentMembershipsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEnvironmentEC2 = {
  type t
  type request = {
    connectionType: option<connectionType>,
    tags: option<tagList_>,
    ownerArn: option<userArn>,
    automaticStopTimeMinutes: option<automaticStopTimeMinutes>,
    imageId: option<imageId>,
    subnetId: option<subnetId>,
    instanceType: instanceType,
    clientRequestToken: option<clientRequestToken>,
    description: option<environmentDescription>,
    name: environmentName,
  }
  type response = {environmentId: option<environmentId>}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "CreateEnvironmentEC2Command"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironments = {
  type t
  type request = {environmentIds: boundedEnvironmentIdList}
  type response = {environments: option<environmentList>}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "DescribeEnvironmentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
