type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type taintValue = string
type taintKey = string
type requiredClaimsValue = string
type requiredClaimsKey = string
type labelValue = string
type labelKey = string
type configStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type zeroCapacity = int;
type updateType = [@as("AddonUpdate") #AddonUpdate | @as("AssociateEncryptionConfig") #AssociateEncryptionConfig | @as("DisassociateIdentityProviderConfig") #DisassociateIdentityProviderConfig | @as("AssociateIdentityProviderConfig") #AssociateIdentityProviderConfig | @as("ConfigUpdate") #ConfigUpdate | @as("LoggingUpdate") #LoggingUpdate | @as("EndpointAccessUpdate") #EndpointAccessUpdate | @as("VersionUpdate") #VersionUpdate]
type updateStatus = [@as("Successful") #Successful | @as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("InProgress") #InProgress]
type updateParamType = [@as("ResolveConflicts") #ResolveConflicts | @as("ServiceAccountRoleArn") #ServiceAccountRoleArn | @as("AddonVersion") #AddonVersion | @as("EncryptionConfig") #EncryptionConfig | @as("IdentityProviderConfig") #IdentityProviderConfig | @as("LaunchTemplateVersion") #LaunchTemplateVersion | @as("LaunchTemplateName") #LaunchTemplateName | @as("PublicAccessCidrs") #PublicAccessCidrs | @as("ReleaseVersion") #ReleaseVersion | @as("MinSize") #MinSize | @as("MaxSize") #MaxSize | @as("TaintsToRemove") #TaintsToRemove | @as("TaintsToAdd") #TaintsToAdd | @as("LabelsToRemove") #LabelsToRemove | @as("LabelsToAdd") #LabelsToAdd | @as("DesiredSize") #DesiredSize | @as("ClusterLogging") #ClusterLogging | @as("EndpointPublicAccess") #EndpointPublicAccess | @as("EndpointPrivateAccess") #EndpointPrivateAccess | @as("PlatformVersion") #PlatformVersion | @as("Version") #Version]
type amazonawsTimestamp = Js.Date.t;
type taintEffect = [@as("PREFER_NO_SCHEDULE") #PREFER_NO_SCHEDULE | @as("NO_EXECUTE") #NO_EXECUTE | @as("NO_SCHEDULE") #NO_SCHEDULE]
type tagValue = string
type tagKey = string
type amazonawsString = string
type roleArn = string
type resolveConflicts = [@as("NONE") #NONE | @as("OVERWRITE") #OVERWRITE]
type nodegroupStatus = [@as("DEGRADED") #DEGRADED | @as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type nodegroupIssueCode = [@as("ClusterUnreachable") #ClusterUnreachable | @as("InternalFailure") #InternalFailure | @as("AccessDenied") #AccessDenied | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses | @as("InstanceLimitExceeded") #InstanceLimitExceeded | @as("AsgInstanceLaunchFailures") #AsgInstanceLaunchFailures | @as("NodeCreationFailure") #NodeCreationFailure | @as("IamNodeRoleNotFound") #IamNodeRoleNotFound | @as("IamLimitExceeded") #IamLimitExceeded | @as("IamInstanceProfileNotFound") #IamInstanceProfileNotFound | @as("Ec2SubnetInvalidConfiguration") #Ec2SubnetInvalidConfiguration | @as("Ec2SubnetNotFound") #Ec2SubnetNotFound | @as("Ec2LaunchTemplateVersionMismatch") #Ec2LaunchTemplateVersionMismatch | @as("Ec2LaunchTemplateNotFound") #Ec2LaunchTemplateNotFound | @as("Ec2SecurityGroupDeletionFailure") #Ec2SecurityGroupDeletionFailure | @as("Ec2SecurityGroupNotFound") #Ec2SecurityGroupNotFound | @as("AutoScalingGroupInvalidConfiguration") #AutoScalingGroupInvalidConfiguration | @as("AutoScalingGroupNotFound") #AutoScalingGroupNotFound]
type logType = [@as("scheduler") #scheduler | @as("controllerManager") #controllerManager | @as("authenticator") #authenticator | @as("audit") #audit | @as("api") #api]
type listUpdatesRequestMaxResults = int;
type listNodegroupsRequestMaxResults = int;
type listIdentityProviderConfigsRequestMaxResults = int;
type listClustersRequestMaxResults = int;
type listAddonsRequestMaxResults = int;
type fargateProfilesRequestMaxResults = int;
type fargateProfileStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("CREATE_FAILED") #CREATE_FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type errorCode = [@as("AdmissionRequestDenied") #AdmissionRequestDenied | @as("ConfigurationConflict") #ConfigurationConflict | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas | @as("ClusterUnreachable") #ClusterUnreachable | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses | @as("PodEvictionFailure") #PodEvictionFailure | @as("NodeCreationFailure") #NodeCreationFailure | @as("Unknown") #Unknown | @as("VpcIdNotFound") #VpcIdNotFound | @as("OperationNotPermitted") #OperationNotPermitted | @as("AccessDenied") #AccessDenied | @as("IpNotAvailable") #IpNotAvailable | @as("EniLimitReached") #EniLimitReached | @as("SecurityGroupNotFound") #SecurityGroupNotFound | @as("SubnetNotFound") #SubnetNotFound]
type describeAddonVersionsRequestMaxResults = int;
type clusterStatus = [@as("UPDATING") #UPDATING | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type clusterName = string
type capacityTypes = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type capacity = int;
type boxedInteger = int;
type boxedBoolean = bool;
type amazonawsBoolean = bool;
type addonStatus = [@as("DEGRADED") #DEGRADED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATE_FAILED") #CREATE_FAILED | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type addonIssueCode = [@as("AdmissionRequestDenied") #AdmissionRequestDenied | @as("ConfigurationConflict") #ConfigurationConflict | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas | @as("ClusterUnreachable") #ClusterUnreachable | @as("InternalFailure") #InternalFailure | @as("AccessDenied") #AccessDenied]
type aMITypes = [@as("CUSTOM") #CUSTOM | @as("AL2_ARM_64") #AL2_ARM_64 | @as("AL2_x86_64_GPU") #AL2_x86_64_GPU | @as("AL2_x86_64") #AL2_x86_64]
type requiredClaimsMap = Js.Dict.t< requiredClaimsValue>
type labelsMap = Js.Dict.t< labelValue>
type labelsKeyList = array<amazonawsString>
type updateParam = {
@as("value") value: amazonawsString,
@as("type") type_: updateParamType
}
type taint = {
@as("effect") effect: taintEffect,
@as("value") value: taintValue,
@as("key") key: taintKey
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type stringList = array<amazonawsString>
type provider = {
@as("keyArn") keyArn: amazonawsString
}
type oIDC = {
@as("issuer") issuer: amazonawsString
}
type nodegroupScalingConfig = {
@as("desiredSize") desiredSize: zeroCapacity,
@as("maxSize") maxSize: capacity,
@as("minSize") minSize: zeroCapacity
}
type logTypes = array<logType>
type launchTemplateSpecification = {
@as("id") id: amazonawsString,
@as("version") version: amazonawsString,
@as("name") name: amazonawsString
}
type kubernetesNetworkConfigResponse = {
@as("serviceIpv4Cidr") serviceIpv4Cidr: amazonawsString
}
type kubernetesNetworkConfigRequest = {
@as("serviceIpv4Cidr") serviceIpv4Cidr: amazonawsString
}
type identityProviderConfig = {
@as("name") name: option<amazonawsString>,
@as("type") type_: option<amazonawsString>
}
type fargateProfileLabel = Js.Dict.t< amazonawsString>
type certificate = {
@as("data") data: amazonawsString
}
type autoScalingGroup = {
@as("name") name: amazonawsString
}
type taintsList = array<taint>
type vpcConfigResponse = {
@as("publicAccessCidrs") publicAccessCidrs: stringList,
@as("endpointPrivateAccess") endpointPrivateAccess: amazonawsBoolean,
@as("endpointPublicAccess") endpointPublicAccess: amazonawsBoolean,
@as("vpcId") vpcId: amazonawsString,
@as("clusterSecurityGroupId") clusterSecurityGroupId: amazonawsString,
@as("securityGroupIds") securityGroupIds: stringList,
@as("subnetIds") subnetIds: stringList
}
type vpcConfigRequest = {
@as("publicAccessCidrs") publicAccessCidrs: stringList,
@as("endpointPrivateAccess") endpointPrivateAccess: boxedBoolean,
@as("endpointPublicAccess") endpointPublicAccess: boxedBoolean,
@as("securityGroupIds") securityGroupIds: stringList,
@as("subnetIds") subnetIds: stringList
}
type updateParams = array<updateParam>
type updateLabelsPayload = {
@as("removeLabels") removeLabels: labelsKeyList,
@as("addOrUpdateLabels") addOrUpdateLabels: labelsMap
}
type remoteAccessConfig = {
@as("sourceSecurityGroups") sourceSecurityGroups: stringList,
@as("ec2SshKey") ec2SshKey: amazonawsString
}
type oidcIdentityProviderConfigRequest = {
@as("requiredClaims") requiredClaims: requiredClaimsMap,
@as("groupsPrefix") groupsPrefix: amazonawsString,
@as("groupsClaim") groupsClaim: amazonawsString,
@as("usernamePrefix") usernamePrefix: amazonawsString,
@as("usernameClaim") usernameClaim: amazonawsString,
@as("clientId") clientId: option<amazonawsString>,
@as("issuerUrl") issuerUrl: option<amazonawsString>,
@as("identityProviderConfigName") identityProviderConfigName: option<amazonawsString>
}
type oidcIdentityProviderConfig = {
@as("status") status: configStatus,
@as("tags") tags: tagMap,
@as("requiredClaims") requiredClaims: requiredClaimsMap,
@as("groupsPrefix") groupsPrefix: amazonawsString,
@as("groupsClaim") groupsClaim: amazonawsString,
@as("usernamePrefix") usernamePrefix: amazonawsString,
@as("usernameClaim") usernameClaim: amazonawsString,
@as("clientId") clientId: amazonawsString,
@as("issuerUrl") issuerUrl: amazonawsString,
@as("clusterName") clusterName: amazonawsString,
@as("identityProviderConfigArn") identityProviderConfigArn: amazonawsString,
@as("identityProviderConfigName") identityProviderConfigName: amazonawsString
}
type logSetup = {
@as("enabled") enabled: boxedBoolean,
@as("types") types: logTypes
}
type issue = {
@as("resourceIds") resourceIds: stringList,
@as("message") message: amazonawsString,
@as("code") code: nodegroupIssueCode
}
type identityProviderConfigs = array<identityProviderConfig>
type identity = {
@as("oidc") oidc: oIDC
}
type fargateProfileSelector = {
@as("labels") labels: fargateProfileLabel,
@as("namespace") namespace: amazonawsString
}
type errorDetail = {
@as("resourceIds") resourceIds: stringList,
@as("errorMessage") errorMessage: amazonawsString,
@as("errorCode") errorCode: errorCode
}
type encryptionConfig = {
@as("provider") provider: provider,
@as("resources") resources: stringList
}
type compatibility = {
@as("defaultVersion") defaultVersion: amazonawsBoolean,
@as("platformVersions") platformVersions: stringList,
@as("clusterVersion") clusterVersion: amazonawsString
}
type autoScalingGroupList = array<autoScalingGroup>
type addonIssue = {
@as("resourceIds") resourceIds: stringList,
@as("message") message: amazonawsString,
@as("code") code: addonIssueCode
}
type updateTaintsPayload = {
@as("removeTaints") removeTaints: taintsList,
@as("addOrUpdateTaints") addOrUpdateTaints: taintsList
}
type nodegroupResources = {
@as("remoteAccessSecurityGroup") remoteAccessSecurityGroup: amazonawsString,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupList
}
type logSetups = array<logSetup>
type issueList = array<issue>
type identityProviderConfigResponse = {
@as("oidc") oidc: oidcIdentityProviderConfig
}
type fargateProfileSelectors = array<fargateProfileSelector>
type errorDetails = array<errorDetail>
type encryptionConfigList = array<encryptionConfig>
type compatibilities = array<compatibility>
type addonIssueList = array<addonIssue>
type update = {
@as("errors") errors: errorDetails,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("params") params: updateParams,
@as("type") type_: updateType,
@as("status") status: updateStatus,
@as("id") id: amazonawsString
}
type nodegroupHealth = {
@as("issues") issues: issueList
}
type logging = {
@as("clusterLogging") clusterLogging: logSetups
}
type fargateProfile = {
@as("tags") tags: tagMap,
@as("status") status: fargateProfileStatus,
@as("selectors") selectors: fargateProfileSelectors,
@as("subnets") subnets: stringList,
@as("podExecutionRoleArn") podExecutionRoleArn: amazonawsString,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("clusterName") clusterName: amazonawsString,
@as("fargateProfileArn") fargateProfileArn: amazonawsString,
@as("fargateProfileName") fargateProfileName: amazonawsString
}
type addonVersionInfo = {
@as("compatibilities") compatibilities: compatibilities,
@as("architecture") architecture: stringList,
@as("addonVersion") addonVersion: amazonawsString
}
type addonHealth = {
@as("issues") issues: addonIssueList
}
type nodegroup = {
@as("tags") tags: tagMap,
@as("launchTemplate") launchTemplate: launchTemplateSpecification,
@as("health") health: nodegroupHealth,
@as("diskSize") diskSize: boxedInteger,
@as("resources") resources: nodegroupResources,
@as("taints") taints: taintsList,
@as("labels") labels: labelsMap,
@as("nodeRole") nodeRole: amazonawsString,
@as("amiType") amiType: aMITypes,
@as("remoteAccess") remoteAccess: remoteAccessConfig,
@as("subnets") subnets: stringList,
@as("instanceTypes") instanceTypes: stringList,
@as("scalingConfig") scalingConfig: nodegroupScalingConfig,
@as("capacityType") capacityType: capacityTypes,
@as("status") status: nodegroupStatus,
@as("modifiedAt") modifiedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("releaseVersion") releaseVersion: amazonawsString,
@as("version") version: amazonawsString,
@as("clusterName") clusterName: amazonawsString,
@as("nodegroupArn") nodegroupArn: amazonawsString,
@as("nodegroupName") nodegroupName: amazonawsString
}
type cluster = {
@as("encryptionConfig") encryptionConfig: encryptionConfigList,
@as("tags") tags: tagMap,
@as("platformVersion") platformVersion: amazonawsString,
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("certificateAuthority") certificateAuthority: certificate,
@as("status") status: clusterStatus,
@as("identity") identity: identity,
@as("logging") logging: logging,
@as("kubernetesNetworkConfig") kubernetesNetworkConfig: kubernetesNetworkConfigResponse,
@as("resourcesVpcConfig") resourcesVpcConfig: vpcConfigResponse,
@as("roleArn") roleArn: amazonawsString,
@as("endpoint") endpoint: amazonawsString,
@as("version") version: amazonawsString,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("arn") arn: amazonawsString,
@as("name") name: amazonawsString
}
type addonVersionInfoList = array<addonVersionInfo>
type addon = {
@as("tags") tags: tagMap,
@as("serviceAccountRoleArn") serviceAccountRoleArn: amazonawsString,
@as("modifiedAt") modifiedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("addonArn") addonArn: amazonawsString,
@as("health") health: addonHealth,
@as("addonVersion") addonVersion: amazonawsString,
@as("status") status: addonStatus,
@as("clusterName") clusterName: clusterName,
@as("addonName") addonName: amazonawsString
}
type addonInfo = {
@as("addonVersions") addonVersions: addonVersionInfoList,
@as("type") type_: amazonawsString,
@as("addonName") addonName: amazonawsString
}
type addons = array<addonInfo>
type clientType;
@module("@aws-sdk/client-eks") @new external createClient: unit => clientType = "EKSClient";
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUpdates = {
  type t;
  type request = {
@as("maxResults") maxResults: listUpdatesRequestMaxResults,
@as("nextToken") nextToken: amazonawsString,
@as("addonName") addonName: amazonawsString,
@as("nodegroupName") nodegroupName: amazonawsString,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("updateIds") updateIds: stringList
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListUpdatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNodegroups = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: listNodegroupsRequestMaxResults,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("nodegroups") nodegroups: stringList
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListNodegroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFargateProfiles = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: fargateProfilesRequestMaxResults,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("fargateProfileNames") fargateProfileNames: stringList
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListFargateProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: listClustersRequestMaxResults
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("clusters") clusters: stringList
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAddons = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: listAddonsRequestMaxResults,
@as("clusterName") clusterName: option<clusterName>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("addons") addons: stringList
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListAddonsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentityProviderConfigs = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: listIdentityProviderConfigsRequestMaxResults,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("identityProviderConfigs") identityProviderConfigs: identityProviderConfigs
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "ListIdentityProviderConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityProviderConfig = {
  type t;
  type request = {
@as("identityProviderConfig") identityProviderConfig: option<identityProviderConfig>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("identityProviderConfig") identityProviderConfig: identityProviderConfigResponse
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeIdentityProviderConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNodegroupVersion = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("force") force: amazonawsBoolean,
@as("launchTemplate") launchTemplate: launchTemplateSpecification,
@as("releaseVersion") releaseVersion: amazonawsString,
@as("version") version: amazonawsString,
@as("nodegroupName") nodegroupName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateNodegroupVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNodegroupConfig = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("scalingConfig") scalingConfig: nodegroupScalingConfig,
@as("taints") taints: updateTaintsPayload,
@as("labels") labels: updateLabelsPayload,
@as("nodegroupName") nodegroupName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateNodegroupConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterVersion = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("version") version: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateClusterVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterConfig = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("logging") logging: logging,
@as("resourcesVpcConfig") resourcesVpcConfig: vpcConfigRequest,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateClusterConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAddon = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("resolveConflicts") resolveConflicts: resolveConflicts,
@as("serviceAccountRoleArn") serviceAccountRoleArn: roleArn,
@as("addonVersion") addonVersion: amazonawsString,
@as("addonName") addonName: option<amazonawsString>,
@as("clusterName") clusterName: option<clusterName>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "UpdateAddonCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateIdentityProviderConfig = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("identityProviderConfig") identityProviderConfig: option<identityProviderConfig>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DisassociateIdentityProviderConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUpdate = {
  type t;
  type request = {
@as("addonName") addonName: amazonawsString,
@as("nodegroupName") nodegroupName: amazonawsString,
@as("updateId") updateId: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFargateProfile = {
  type t;
  type request = {
@as("fargateProfileName") fargateProfileName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("fargateProfile") fargateProfile: fargateProfile
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeFargateProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFargateProfile = {
  type t;
  type request = {
@as("fargateProfileName") fargateProfileName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("fargateProfile") fargateProfile: fargateProfile
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteFargateProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFargateProfile = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("selectors") selectors: fargateProfileSelectors,
@as("subnets") subnets: stringList,
@as("podExecutionRoleArn") podExecutionRoleArn: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>,
@as("fargateProfileName") fargateProfileName: option<amazonawsString>
}
  type response = {
@as("fargateProfile") fargateProfile: fargateProfile
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateFargateProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateIdentityProviderConfig = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("tags") tags: tagMap,
@as("oidc") oidc: option<oidcIdentityProviderConfigRequest>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("tags") tags: tagMap,
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "AssociateIdentityProviderConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateEncryptionConfig = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("encryptionConfig") encryptionConfig: option<encryptionConfigList>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("update") update: update
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "AssociateEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNodegroup = {
  type t;
  type request = {
@as("nodegroupName") nodegroupName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nodegroup") nodegroup: nodegroup
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeNodegroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
@as("name") name: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddon = {
  type t;
  type request = {
@as("addonName") addonName: option<amazonawsString>,
@as("clusterName") clusterName: option<clusterName>
}
  type response = {
@as("addon") addon: addon
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeAddonCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNodegroup = {
  type t;
  type request = {
@as("nodegroupName") nodegroupName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nodegroup") nodegroup: nodegroup
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteNodegroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("name") name: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAddon = {
  type t;
  type request = {
@as("addonName") addonName: option<amazonawsString>,
@as("clusterName") clusterName: option<clusterName>
}
  type response = {
@as("addon") addon: addon
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DeleteAddonCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNodegroup = {
  type t;
  type request = {
@as("releaseVersion") releaseVersion: amazonawsString,
@as("version") version: amazonawsString,
@as("capacityType") capacityType: capacityTypes,
@as("launchTemplate") launchTemplate: launchTemplateSpecification,
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("tags") tags: tagMap,
@as("taints") taints: taintsList,
@as("labels") labels: labelsMap,
@as("nodeRole") nodeRole: option<amazonawsString>,
@as("remoteAccess") remoteAccess: remoteAccessConfig,
@as("amiType") amiType: aMITypes,
@as("instanceTypes") instanceTypes: stringList,
@as("subnets") subnets: option<stringList>,
@as("diskSize") diskSize: boxedInteger,
@as("scalingConfig") scalingConfig: nodegroupScalingConfig,
@as("nodegroupName") nodegroupName: option<amazonawsString>,
@as("clusterName") clusterName: option<amazonawsString>
}
  type response = {
@as("nodegroup") nodegroup: nodegroup
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateNodegroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("encryptionConfig") encryptionConfig: encryptionConfigList,
@as("tags") tags: tagMap,
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("logging") logging: logging,
@as("kubernetesNetworkConfig") kubernetesNetworkConfig: kubernetesNetworkConfigRequest,
@as("resourcesVpcConfig") resourcesVpcConfig: option<vpcConfigRequest>,
@as("roleArn") roleArn: option<amazonawsString>,
@as("version") version: amazonawsString,
@as("name") name: option<clusterName>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAddon = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientRequestToken") clientRequestToken: amazonawsString,
@as("resolveConflicts") resolveConflicts: resolveConflicts,
@as("serviceAccountRoleArn") serviceAccountRoleArn: roleArn,
@as("addonVersion") addonVersion: amazonawsString,
@as("addonName") addonName: option<amazonawsString>,
@as("clusterName") clusterName: option<clusterName>
}
  type response = {
@as("addon") addon: addon
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "CreateAddonCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAddonVersions = {
  type t;
  type request = {
@as("addonName") addonName: amazonawsString,
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: describeAddonVersionsRequestMaxResults,
@as("kubernetesVersion") kubernetesVersion: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("addons") addons: addons
}
  @module("@aws-sdk/client-eks") @new external new_: (request) => t = "DescribeAddonVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
