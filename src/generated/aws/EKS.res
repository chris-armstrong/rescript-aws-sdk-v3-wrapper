type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-eks") @new external createClient: unit => awsServiceClient = "EKSClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type taintValue = string
type taintKey = string
type requiredClaimsValue = string
type requiredClaimsKey = string
type labelValue = string
type labelKey = string
type configStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type zeroCapacity = int
type updateType = [@as("AddonUpdate") #AddonUpdate | @as("AssociateEncryptionConfig") #AssociateEncryptionConfig | @as("DisassociateIdentityProviderConfig") #DisassociateIdentityProviderConfig | @as("AssociateIdentityProviderConfig") #AssociateIdentityProviderConfig | @as("ConfigUpdate") #ConfigUpdate | @as("LoggingUpdate") #LoggingUpdate | @as("EndpointAccessUpdate") #EndpointAccessUpdate | @as("VersionUpdate") #VersionUpdate]
type updateStatus = [@as("Successful") #Successful | @as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("InProgress") #InProgress]
type updateParamType = [@as("ResolveConflicts") #ResolveConflicts | @as("ServiceAccountRoleArn") #ServiceAccountRoleArn | @as("AddonVersion") #AddonVersion | @as("EncryptionConfig") #EncryptionConfig | @as("IdentityProviderConfig") #IdentityProviderConfig | @as("LaunchTemplateVersion") #LaunchTemplateVersion | @as("LaunchTemplateName") #LaunchTemplateName | @as("PublicAccessCidrs") #PublicAccessCidrs | @as("ReleaseVersion") #ReleaseVersion | @as("MinSize") #MinSize | @as("MaxSize") #MaxSize | @as("TaintsToRemove") #TaintsToRemove | @as("TaintsToAdd") #TaintsToAdd | @as("LabelsToRemove") #LabelsToRemove | @as("LabelsToAdd") #LabelsToAdd | @as("DesiredSize") #DesiredSize | @as("ClusterLogging") #ClusterLogging | @as("EndpointPublicAccess") #EndpointPublicAccess | @as("EndpointPrivateAccess") #EndpointPrivateAccess | @as("PlatformVersion") #PlatformVersion | @as("Version") #Version]
type timestamp_ = Js.Date.t;
type taintEffect = [@as("PREFER_NO_SCHEDULE") #PREFER_NO_SCHEDULE | @as("NO_EXECUTE") #NO_EXECUTE | @as("NO_SCHEDULE") #NO_SCHEDULE]
type tagValue = string
type tagKey = string
type string_ = string
type roleArn = string
type resolveConflicts = [@as("NONE") #NONE | @as("OVERWRITE") #OVERWRITE]
type nodegroupStatus = [@as("DEGRADED") #DEGRADED | @as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type nodegroupIssueCode = [@as("ClusterUnreachable") #ClusterUnreachable | @as("InternalFailure") #InternalFailure | @as("AccessDenied") #AccessDenied | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses | @as("InstanceLimitExceeded") #InstanceLimitExceeded | @as("AsgInstanceLaunchFailures") #AsgInstanceLaunchFailures | @as("NodeCreationFailure") #NodeCreationFailure | @as("IamNodeRoleNotFound") #IamNodeRoleNotFound | @as("IamLimitExceeded") #IamLimitExceeded | @as("IamInstanceProfileNotFound") #IamInstanceProfileNotFound | @as("Ec2SubnetInvalidConfiguration") #Ec2SubnetInvalidConfiguration | @as("Ec2SubnetNotFound") #Ec2SubnetNotFound | @as("Ec2LaunchTemplateVersionMismatch") #Ec2LaunchTemplateVersionMismatch | @as("Ec2LaunchTemplateNotFound") #Ec2LaunchTemplateNotFound | @as("Ec2SecurityGroupDeletionFailure") #Ec2SecurityGroupDeletionFailure | @as("Ec2SecurityGroupNotFound") #Ec2SecurityGroupNotFound | @as("AutoScalingGroupInvalidConfiguration") #AutoScalingGroupInvalidConfiguration | @as("AutoScalingGroupNotFound") #AutoScalingGroupNotFound]
type logType = [@as("scheduler") #Scheduler | @as("controllerManager") #ControllerManager | @as("authenticator") #Authenticator | @as("audit") #Audit | @as("api") #Api]
type listUpdatesRequestMaxResults = int
type listNodegroupsRequestMaxResults = int
type listIdentityProviderConfigsRequestMaxResults = int
type listClustersRequestMaxResults = int
type listAddonsRequestMaxResults = int
type fargateProfilesRequestMaxResults = int
type fargateProfileStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type errorCode = [@as("AdmissionRequestDenied") #AdmissionRequestDenied | @as("ConfigurationConflict") #ConfigurationConflict | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas | @as("ClusterUnreachable") #ClusterUnreachable | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses | @as("PodEvictionFailure") #PodEvictionFailure | @as("NodeCreationFailure") #NodeCreationFailure | @as("Unknown") #Unknown | @as("VpcIdNotFound") #VpcIdNotFound | @as("OperationNotPermitted") #OperationNotPermitted | @as("AccessDenied") #AccessDenied | @as("IpNotAvailable") #IpNotAvailable | @as("EniLimitReached") #EniLimitReached | @as("SecurityGroupNotFound") #SecurityGroupNotFound | @as("SubnetNotFound") #SubnetNotFound]
type describeAddonVersionsRequestMaxResults = int
type clusterStatus = [@as("UPDATING") #UPDATING | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type clusterName = string
type capacityTypes = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type capacity = int
type boxedInteger = int
type boxedBoolean = bool
type boolean_ = bool
type addonStatus = [@as("DEGRADED") #DEGRADED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATE_FAILED") #CREATE_FAILED | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type addonIssueCode = [@as("AdmissionRequestDenied") #AdmissionRequestDenied | @as("ConfigurationConflict") #ConfigurationConflict | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas | @as("ClusterUnreachable") #ClusterUnreachable | @as("InternalFailure") #InternalFailure | @as("AccessDenied") #AccessDenied]
type amitypes = [@as("CUSTOM") #CUSTOM | @as("AL2_ARM_64") #AL2_ARM_64 | @as("AL2_x86_64_GPU") #AL2_X86_64_GPU | @as("AL2_x86_64") #AL2_X86_64]
type requiredClaimsMap = Js.Dict.t<requiredClaimsValue>
type labelsMap = Js.Dict.t<labelValue>
type labelsKeyList = array<string_>
type updateParam = {
value: option<string_>,
  @as("type") type_: option<updateParamType>
}
type taint = {
effect: option<taintEffect>,
  value: option<taintValue>,
  key: option<taintKey>
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<string_>
type provider = {
keyArn: option<string_>
}
type oidc = {
issuer: option<string_>
}
type nodegroupScalingConfig = {
desiredSize: option<zeroCapacity>,
  maxSize: option<capacity>,
  minSize: option<zeroCapacity>
}
type logTypes = array<logType>
type launchTemplateSpecification = {
id: option<string_>,
  version: option<string_>,
  name: option<string_>
}
type kubernetesNetworkConfigResponse = {
serviceIpv4Cidr: option<string_>
}
type kubernetesNetworkConfigRequest = {
serviceIpv4Cidr: option<string_>
}
type identityProviderConfig = {
name: string_,
  @as("type") type_: string_
}
type fargateProfileLabel = Js.Dict.t<string_>
type certificate = {
data: option<string_>
}
type autoScalingGroup = {
name: option<string_>
}
type taintsList = array<taint>
type vpcConfigResponse = {
publicAccessCidrs: option<stringList>,
  endpointPrivateAccess: option<boolean_>,
  endpointPublicAccess: option<boolean_>,
  vpcId: option<string_>,
  clusterSecurityGroupId: option<string_>,
  securityGroupIds: option<stringList>,
  subnetIds: option<stringList>
}
type vpcConfigRequest = {
publicAccessCidrs: option<stringList>,
  endpointPrivateAccess: option<boxedBoolean>,
  endpointPublicAccess: option<boxedBoolean>,
  securityGroupIds: option<stringList>,
  subnetIds: option<stringList>
}
type updateParams = array<updateParam>
type updateLabelsPayload = {
removeLabels: option<labelsKeyList>,
  addOrUpdateLabels: option<labelsMap>
}
type remoteAccessConfig = {
sourceSecurityGroups: option<stringList>,
  ec2SshKey: option<string_>
}
type oidcIdentityProviderConfigRequest = {
requiredClaims: option<requiredClaimsMap>,
  groupsPrefix: option<string_>,
  groupsClaim: option<string_>,
  usernamePrefix: option<string_>,
  usernameClaim: option<string_>,
  clientId: string_,
  issuerUrl: string_,
  identityProviderConfigName: string_
}
type oidcIdentityProviderConfig = {
status: option<configStatus>,
  tags: option<tagMap>,
  requiredClaims: option<requiredClaimsMap>,
  groupsPrefix: option<string_>,
  groupsClaim: option<string_>,
  usernamePrefix: option<string_>,
  usernameClaim: option<string_>,
  clientId: option<string_>,
  issuerUrl: option<string_>,
  clusterName: option<string_>,
  identityProviderConfigArn: option<string_>,
  identityProviderConfigName: option<string_>
}
type logSetup = {
enabled: option<boxedBoolean>,
  types: option<logTypes>
}
type issue = {
resourceIds: option<stringList>,
  message: option<string_>,
  code: option<nodegroupIssueCode>
}
type identityProviderConfigs = array<identityProviderConfig>
type identity = {
oidc: option<oidc>
}
type fargateProfileSelector = {
labels: option<fargateProfileLabel>,
  namespace: option<string_>
}
type errorDetail = {
resourceIds: option<stringList>,
  errorMessage: option<string_>,
  errorCode: option<errorCode>
}
type encryptionConfig = {
provider: option<provider>,
  resources: option<stringList>
}
type compatibility = {
defaultVersion: option<boolean_>,
  platformVersions: option<stringList>,
  clusterVersion: option<string_>
}
type autoScalingGroupList = array<autoScalingGroup>
type addonIssue = {
resourceIds: option<stringList>,
  message: option<string_>,
  code: option<addonIssueCode>
}
type updateTaintsPayload = {
removeTaints: option<taintsList>,
  addOrUpdateTaints: option<taintsList>
}
type nodegroupResources = {
remoteAccessSecurityGroup: option<string_>,
  autoScalingGroups: option<autoScalingGroupList>
}
type logSetups = array<logSetup>
type issueList = array<issue>
type identityProviderConfigResponse = {
oidc: option<oidcIdentityProviderConfig>
}
type fargateProfileSelectors = array<fargateProfileSelector>
type errorDetails = array<errorDetail>
type encryptionConfigList = array<encryptionConfig>
type compatibilities = array<compatibility>
type addonIssueList = array<addonIssue>
type update = {
errors: option<errorDetails>,
  createdAt: option<timestamp_>,
  params: option<updateParams>,
  @as("type") type_: option<updateType>,
  status: option<updateStatus>,
  id: option<string_>
}
type nodegroupHealth = {
issues: option<issueList>
}
type logging = {
clusterLogging: option<logSetups>
}
type fargateProfile = {
tags: option<tagMap>,
  status: option<fargateProfileStatus>,
  selectors: option<fargateProfileSelectors>,
  subnets: option<stringList>,
  podExecutionRoleArn: option<string_>,
  createdAt: option<timestamp_>,
  clusterName: option<string_>,
  fargateProfileArn: option<string_>,
  fargateProfileName: option<string_>
}
type addonVersionInfo = {
compatibilities: option<compatibilities>,
  architecture: option<stringList>,
  addonVersion: option<string_>
}
type addonHealth = {
issues: option<addonIssueList>
}
type nodegroup = {
tags: option<tagMap>,
  launchTemplate: option<launchTemplateSpecification>,
  health: option<nodegroupHealth>,
  diskSize: option<boxedInteger>,
  resources: option<nodegroupResources>,
  taints: option<taintsList>,
  labels: option<labelsMap>,
  nodeRole: option<string_>,
  amiType: option<amitypes>,
  remoteAccess: option<remoteAccessConfig>,
  subnets: option<stringList>,
  instanceTypes: option<stringList>,
  scalingConfig: option<nodegroupScalingConfig>,
  capacityType: option<capacityTypes>,
  status: option<nodegroupStatus>,
  modifiedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  releaseVersion: option<string_>,
  version: option<string_>,
  clusterName: option<string_>,
  nodegroupArn: option<string_>,
  nodegroupName: option<string_>
}
type cluster = {
encryptionConfig: option<encryptionConfigList>,
  tags: option<tagMap>,
  platformVersion: option<string_>,
  clientRequestToken: option<string_>,
  certificateAuthority: option<certificate>,
  status: option<clusterStatus>,
  identity: option<identity>,
  logging: option<logging>,
  kubernetesNetworkConfig: option<kubernetesNetworkConfigResponse>,
  resourcesVpcConfig: option<vpcConfigResponse>,
  roleArn: option<string_>,
  endpoint: option<string_>,
  version: option<string_>,
  createdAt: option<timestamp_>,
  arn: option<string_>,
  name: option<string_>
}
type addonVersionInfoList = array<addonVersionInfo>
type addon = {
tags: option<tagMap>,
  serviceAccountRoleArn: option<string_>,
  modifiedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  addonArn: option<string_>,
  health: option<addonHealth>,
  addonVersion: option<string_>,
  status: option<addonStatus>,
  clusterName: option<clusterName>,
  addonName: option<string_>
}
type addonInfo = {
addonVersions: option<addonVersionInfoList>,
  @as("type") type_: option<string_>,
  addonName: option<string_>
}
type addons = array<addonInfo>

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUpdates = {
  type t;
  type request = {
maxResults: option<listUpdatesRequestMaxResults>,
  nextToken: option<string_>,
  addonName: option<string_>,
  nodegroupName: option<string_>,
  name: string_
}
  type response = {
nextToken: option<string_>,
  updateIds: option<stringList>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListUpdatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: string_
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNodegroups = {
  type t;
  type request = {
nextToken: option<string_>,
  maxResults: option<listNodegroupsRequestMaxResults>,
  clusterName: string_
}
  type response = {
nextToken: option<string_>,
  nodegroups: option<stringList>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListNodegroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFargateProfiles = {
  type t;
  type request = {
nextToken: option<string_>,
  maxResults: option<fargateProfilesRequestMaxResults>,
  clusterName: string_
}
  type response = {
nextToken: option<string_>,
  fargateProfileNames: option<stringList>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListFargateProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
nextToken: option<string_>,
  maxResults: option<listClustersRequestMaxResults>
}
  type response = {
nextToken: option<string_>,
  clusters: option<stringList>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAddons = {
  type t;
  type request = {
nextToken: option<string_>,
  maxResults: option<listAddonsRequestMaxResults>,
  clusterName: clusterName
}
  type response = {
nextToken: option<string_>,
  addons: option<stringList>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListAddonsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIdentityProviderConfigs = {
  type t;
  type request = {
nextToken: option<string_>,
  maxResults: option<listIdentityProviderConfigsRequestMaxResults>,
  clusterName: string_
}
  type response = {
nextToken: option<string_>,
  identityProviderConfigs: option<identityProviderConfigs>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListIdentityProviderConfigsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityProviderConfig = {
  type t;
  type request = {
identityProviderConfig: identityProviderConfig,
  clusterName: string_
}
  type response = {
identityProviderConfig: option<identityProviderConfigResponse>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeIdentityProviderConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNodegroupVersion = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  force: option<boolean_>,
  launchTemplate: option<launchTemplateSpecification>,
  releaseVersion: option<string_>,
  version: option<string_>,
  nodegroupName: string_,
  clusterName: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateNodegroupVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNodegroupConfig = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  scalingConfig: option<nodegroupScalingConfig>,
  taints: option<updateTaintsPayload>,
  labels: option<updateLabelsPayload>,
  nodegroupName: string_,
  clusterName: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateNodegroupConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterVersion = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  version: string_,
  name: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateClusterVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterConfig = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  logging: option<logging>,
  resourcesVpcConfig: option<vpcConfigRequest>,
  name: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateClusterConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAddon = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  resolveConflicts: option<resolveConflicts>,
  serviceAccountRoleArn: option<roleArn>,
  addonVersion: option<string_>,
  addonName: string_,
  clusterName: clusterName
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateAddonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateIdentityProviderConfig = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  identityProviderConfig: identityProviderConfig,
  clusterName: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DisassociateIdentityProviderConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUpdate = {
  type t;
  type request = {
addonName: option<string_>,
  nodegroupName: option<string_>,
  updateId: string_,
  name: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeUpdateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFargateProfile = {
  type t;
  type request = {
fargateProfileName: string_,
  clusterName: string_
}
  type response = {
fargateProfile: option<fargateProfile>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeFargateProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFargateProfile = {
  type t;
  type request = {
fargateProfileName: string_,
  clusterName: string_
}
  type response = {
fargateProfile: option<fargateProfile>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteFargateProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFargateProfile = {
  type t;
  type request = {
tags: option<tagMap>,
  clientRequestToken: option<string_>,
  selectors: option<fargateProfileSelectors>,
  subnets: option<stringList>,
  podExecutionRoleArn: string_,
  clusterName: string_,
  fargateProfileName: string_
}
  type response = {
fargateProfile: option<fargateProfile>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateFargateProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateIdentityProviderConfig = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  tags: option<tagMap>,
  oidc: oidcIdentityProviderConfigRequest,
  clusterName: string_
}
  type response = {
tags: option<tagMap>,
  update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "AssociateIdentityProviderConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateEncryptionConfig = {
  type t;
  type request = {
clientRequestToken: option<string_>,
  encryptionConfig: encryptionConfigList,
  clusterName: string_
}
  type response = {
update: option<update>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "AssociateEncryptionConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNodegroup = {
  type t;
  type request = {
nodegroupName: string_,
  clusterName: string_
}
  type response = {
nodegroup: option<nodegroup>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeNodegroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
name: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAddon = {
  type t;
  type request = {
addonName: string_,
  clusterName: clusterName
}
  type response = {
addon: option<addon>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeAddonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteNodegroup = {
  type t;
  type request = {
nodegroupName: string_,
  clusterName: string_
}
  type response = {
nodegroup: option<nodegroup>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteNodegroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
name: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAddon = {
  type t;
  type request = {
addonName: string_,
  clusterName: clusterName
}
  type response = {
addon: option<addon>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteAddonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNodegroup = {
  type t;
  type request = {
releaseVersion: option<string_>,
  version: option<string_>,
  capacityType: option<capacityTypes>,
  launchTemplate: option<launchTemplateSpecification>,
  clientRequestToken: option<string_>,
  tags: option<tagMap>,
  taints: option<taintsList>,
  labels: option<labelsMap>,
  nodeRole: string_,
  remoteAccess: option<remoteAccessConfig>,
  amiType: option<amitypes>,
  instanceTypes: option<stringList>,
  subnets: stringList,
  diskSize: option<boxedInteger>,
  scalingConfig: option<nodegroupScalingConfig>,
  nodegroupName: string_,
  clusterName: string_
}
  type response = {
nodegroup: option<nodegroup>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateNodegroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
encryptionConfig: option<encryptionConfigList>,
  tags: option<tagMap>,
  clientRequestToken: option<string_>,
  logging: option<logging>,
  kubernetesNetworkConfig: option<kubernetesNetworkConfigRequest>,
  resourcesVpcConfig: vpcConfigRequest,
  roleArn: string_,
  version: option<string_>,
  name: clusterName
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAddon = {
  type t;
  type request = {
tags: option<tagMap>,
  clientRequestToken: option<string_>,
  resolveConflicts: option<resolveConflicts>,
  serviceAccountRoleArn: option<roleArn>,
  addonVersion: option<string_>,
  addonName: string_,
  clusterName: clusterName
}
  type response = {
addon: option<addon>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateAddonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAddonVersions = {
  type t;
  type request = {
addonName: option<string_>,
  nextToken: option<string_>,
  maxResults: option<describeAddonVersionsRequestMaxResults>,
  kubernetesVersion: option<string_>
}
  type response = {
nextToken: option<string_>,
  addons: option<addons>
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeAddonVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
