type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-eks") @new external createClient: unit => awsServiceClient = "EKSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type taintValue = string
type taintKey = string
type requiredClaimsValue = string
type requiredClaimsKey = string
type labelValue = string
type labelKey = string
type configStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATING") #CREATING]
type zeroCapacity = int
type updateType = [
  | @as("AddonUpdate") #AddonUpdate
  | @as("AssociateEncryptionConfig") #AssociateEncryptionConfig
  | @as("DisassociateIdentityProviderConfig") #DisassociateIdentityProviderConfig
  | @as("AssociateIdentityProviderConfig") #AssociateIdentityProviderConfig
  | @as("ConfigUpdate") #ConfigUpdate
  | @as("LoggingUpdate") #LoggingUpdate
  | @as("EndpointAccessUpdate") #EndpointAccessUpdate
  | @as("VersionUpdate") #VersionUpdate
]
type updateStatus = [
  | @as("Successful") #Successful
  | @as("Cancelled") #Cancelled
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
]
type updateParamType = [
  | @as("MaxUnavailablePercentage") #MaxUnavailablePercentage
  | @as("MaxUnavailable") #MaxUnavailable
  | @as("ResolveConflicts") #ResolveConflicts
  | @as("ServiceAccountRoleArn") #ServiceAccountRoleArn
  | @as("AddonVersion") #AddonVersion
  | @as("EncryptionConfig") #EncryptionConfig
  | @as("IdentityProviderConfig") #IdentityProviderConfig
  | @as("LaunchTemplateVersion") #LaunchTemplateVersion
  | @as("LaunchTemplateName") #LaunchTemplateName
  | @as("PublicAccessCidrs") #PublicAccessCidrs
  | @as("ReleaseVersion") #ReleaseVersion
  | @as("MinSize") #MinSize
  | @as("MaxSize") #MaxSize
  | @as("TaintsToRemove") #TaintsToRemove
  | @as("TaintsToAdd") #TaintsToAdd
  | @as("LabelsToRemove") #LabelsToRemove
  | @as("LabelsToAdd") #LabelsToAdd
  | @as("DesiredSize") #DesiredSize
  | @as("ClusterLogging") #ClusterLogging
  | @as("EndpointPublicAccess") #EndpointPublicAccess
  | @as("EndpointPrivateAccess") #EndpointPrivateAccess
  | @as("PlatformVersion") #PlatformVersion
  | @as("Version") #Version
]
type timestamp_ = Js.Date.t
type taintEffect = [
  | @as("PREFER_NO_SCHEDULE") #PREFER_NO_SCHEDULE
  | @as("NO_EXECUTE") #NO_EXECUTE
  | @as("NO_SCHEDULE") #NO_SCHEDULE
]
type tagValue = string
type tagKey = string
type string_ = string
type roleArn = string
type resolveConflicts = [@as("NONE") #NONE | @as("OVERWRITE") #OVERWRITE]
type percentCapacity = int
type nonZeroInteger = int
type nodegroupStatus = [
  | @as("DEGRADED") #DEGRADED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type nodegroupIssueCode = [
  | @as("Ec2SubnetMissingIpv6Assignment") #Ec2SubnetMissingIpv6Assignment
  | @as("ClusterUnreachable") #ClusterUnreachable
  | @as("InternalFailure") #InternalFailure
  | @as("AccessDenied") #AccessDenied
  | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses
  | @as("InstanceLimitExceeded") #InstanceLimitExceeded
  | @as("AsgInstanceLaunchFailures") #AsgInstanceLaunchFailures
  | @as("NodeCreationFailure") #NodeCreationFailure
  | @as("IamNodeRoleNotFound") #IamNodeRoleNotFound
  | @as("IamLimitExceeded") #IamLimitExceeded
  | @as("IamInstanceProfileNotFound") #IamInstanceProfileNotFound
  | @as("Ec2SubnetInvalidConfiguration") #Ec2SubnetInvalidConfiguration
  | @as("Ec2SubnetNotFound") #Ec2SubnetNotFound
  | @as("Ec2LaunchTemplateVersionMismatch") #Ec2LaunchTemplateVersionMismatch
  | @as("Ec2LaunchTemplateNotFound") #Ec2LaunchTemplateNotFound
  | @as("Ec2SecurityGroupDeletionFailure") #Ec2SecurityGroupDeletionFailure
  | @as("Ec2SecurityGroupNotFound") #Ec2SecurityGroupNotFound
  | @as("AutoScalingGroupInvalidConfiguration") #AutoScalingGroupInvalidConfiguration
  | @as("AutoScalingGroupNotFound") #AutoScalingGroupNotFound
]
type logType = [
  | @as("scheduler") #Scheduler
  | @as("controllerManager") #ControllerManager
  | @as("authenticator") #Authenticator
  | @as("audit") #Audit
  | @as("api") #Api
]
type listUpdatesRequestMaxResults = int
type listNodegroupsRequestMaxResults = int
type listIdentityProviderConfigsRequestMaxResults = int
type listClustersRequestMaxResults = int
type listAddonsRequestMaxResults = int
type ipFamily = [@as("ipv6") #Ipv6 | @as("ipv4") #Ipv4]
type fargateProfilesRequestMaxResults = int
type fargateProfileStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type errorCode = [
  | @as("K8sResourceNotFound") #K8sResourceNotFound
  | @as("UnsupportedAddonModification") #UnsupportedAddonModification
  | @as("AdmissionRequestDenied") #AdmissionRequestDenied
  | @as("ConfigurationConflict") #ConfigurationConflict
  | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas
  | @as("ClusterUnreachable") #ClusterUnreachable
  | @as("InsufficientFreeAddresses") #InsufficientFreeAddresses
  | @as("PodEvictionFailure") #PodEvictionFailure
  | @as("NodeCreationFailure") #NodeCreationFailure
  | @as("Unknown") #Unknown
  | @as("VpcIdNotFound") #VpcIdNotFound
  | @as("OperationNotPermitted") #OperationNotPermitted
  | @as("AccessDenied") #AccessDenied
  | @as("IpNotAvailable") #IpNotAvailable
  | @as("EniLimitReached") #EniLimitReached
  | @as("SecurityGroupNotFound") #SecurityGroupNotFound
  | @as("SubnetNotFound") #SubnetNotFound
]
type describeAddonVersionsRequestMaxResults = int
type connectorConfigProvider = [
  | @as("OTHER") #OTHER
  | @as("EC2") #EC2
  | @as("RANCHER") #RANCHER
  | @as("TANZU") #TANZU
  | @as("OPENSHIFT") #OPENSHIFT
  | @as("AKS") #AKS
  | @as("GKE") #GKE
  | @as("ANTHOS") #ANTHOS
  | @as("EKS_ANYWHERE") #EKS_ANYWHERE
]
type clusterStatus = [
  | @as("PENDING") #PENDING
  | @as("UPDATING") #UPDATING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type clusterName = string
type capacityTypes = [@as("SPOT") #SPOT | @as("ON_DEMAND") #ON_DEMAND]
type capacity = int
type boxedInteger = int
type boxedBoolean = bool
type boolean_ = bool
type addonStatus = [
  | @as("DEGRADED") #DEGRADED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type addonIssueCode = [
  | @as("K8sResourceNotFound") #K8sResourceNotFound
  | @as("UnsupportedAddonModification") #UnsupportedAddonModification
  | @as("AdmissionRequestDenied") #AdmissionRequestDenied
  | @as("ConfigurationConflict") #ConfigurationConflict
  | @as("InsufficientNumberOfReplicas") #InsufficientNumberOfReplicas
  | @as("ClusterUnreachable") #ClusterUnreachable
  | @as("InternalFailure") #InternalFailure
  | @as("AccessDenied") #AccessDenied
]
type amitypes = [
  | @as("BOTTLEROCKET_x86_64") #BOTTLEROCKET_X86_64
  | @as("BOTTLEROCKET_ARM_64") #BOTTLEROCKET_ARM_64
  | @as("CUSTOM") #CUSTOM
  | @as("AL2_ARM_64") #AL2_ARM_64
  | @as("AL2_x86_64_GPU") #AL2_X86_64_GPU
  | @as("AL2_x86_64") #AL2_X86_64
]
type requiredClaimsMap = Js.Dict.t<requiredClaimsValue>
type labelsMap = Js.Dict.t<labelValue>
type labelsKeyList = array<string_>
@ocaml.doc("<p>An object representing the details of an update request.</p>")
type updateParam = {
  @ocaml.doc("<p>The value of the keys submitted as part of an update request.</p>")
  value: option<string_>,
  @ocaml.doc("<p>The keys associated with an update request.</p>") @as("type")
  type_: option<updateParamType>,
}
@ocaml.doc("<p>A property that allows a node to repel a set of pods.</p>")
type taint = {
  @ocaml.doc("<p>The effect of the taint.</p>") effect: option<taintEffect>,
  @ocaml.doc("<p>The value of the taint.</p>") value: option<taintValue>,
  @ocaml.doc("<p>The key of the taint.</p>") key: option<taintKey>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<string_>
@ocaml.doc("<p>Identifies the Key Management Service (KMS) key used to encrypt the
            secrets.</p>")
type provider = {
  @ocaml.doc("<p>Amazon Resource Name (ARN) or alias of the KMS key. The KMS key must be symmetric, created in the same
            region as the cluster, and if the KMS key was created in a different account, the user
            must have access to the KMS key. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html\">Allowing
                Users in Other Accounts to Use a KMS key</a> in the <i>Key Management Service Developer Guide</i>.</p>")
  keyArn: option<string_>,
}
@ocaml.doc("<p>An object representing the <a href=\"https://openid.net/connect/\">OpenID
                Connect</a> (OIDC) identity provider information for the cluster.</p>")
type oidc = {
  @ocaml.doc("<p>The issuer URL for the OIDC identity provider.</p>") issuer: option<string_>,
}
@ocaml.doc("<p>The node group update configuration.</p>")
type nodegroupUpdateConfig = {
  @ocaml.doc("<p>The maximum percentage of nodes unavailable during a version update. This percentage
            of nodes will be updated in parallel, up to 100 nodes at once. This value or
                <code>maxUnavailable</code> is required to have a value.</p>")
  maxUnavailablePercentage: option<percentCapacity>,
  @ocaml.doc("<p>The maximum number of nodes unavailable at once during a version update. Nodes will be
            updated in parallel. This value or <code>maxUnavailablePercentage</code> is required to
            have a value.The maximum number is 100.</p>")
  maxUnavailable: option<nonZeroInteger>,
}
@ocaml.doc("<p>An object representing the scaling configuration details for the Auto Scaling group
            that is associated with your node group. When creating a node group, you must specify
            all or none of the properties. When updating a node group, you can specify any or none
            of the properties.</p>")
type nodegroupScalingConfig = {
  @ocaml.doc("<p>The current number of nodes that the managed node group should maintain.</p>
        <important>
            <p>If you use Cluster Autoscaler, you shouldn't change the desiredSize value
                directly, as this can cause the Cluster Autoscaler to suddenly scale up or scale
                down.</p>
        </important>
        <p>Whenever this parameter changes, the number of worker nodes in the node group is
            updated to the specified size. If this parameter is given a value that is smaller than
            the current number of running worker nodes, the necessary number of worker nodes are
            terminated to match the given value.
            
            When using CloudFormation, no action occurs if you remove this parameter from your CFN
            template.</p>
        <p>This parameter can be different from minSize in some cases, such as when starting with
            extra hosts for testing. This parameter can also be different when you want to start
            with an estimated number of needed hosts, but let Cluster Autoscaler reduce the number
            if there are too many. When Cluster Autoscaler is used, the desiredSize parameter is
            altered by Cluster Autoscaler (but can be out-of-date for short periods of time).
            Cluster Autoscaler doesn't scale a managed node group lower than minSize or higher than
            maxSize.</p>")
  desiredSize: option<zeroCapacity>,
  @ocaml.doc("<p>The maximum number of nodes that the managed node group can scale out to. For
            information about the maximum number that you can specify, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html\">Amazon EKS service quotas</a> in the <i>Amazon EKS User Guide</i>.</p>")
  maxSize: option<capacity>,
  @ocaml.doc("<p>The minimum number of nodes that the managed node group can scale in to.</p>")
  minSize: option<zeroCapacity>,
}
type logTypes = array<logType>
@ocaml.doc("<p>An object representing a node group launch template specification. The launch template
            cannot include <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html\">
               <code>SubnetId</code>
            </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html\">
               <code>IamInstanceProfile</code>
            </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html\">
               <code>RequestSpotInstances</code>
            </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html\">
               <code>HibernationOptions</code>
            </a>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html\">
               <code>TerminateInstances</code>
            </a>, or the node group  deployment or
            update will fail. For more information about launch templates, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html\">
               <code>CreateLaunchTemplate</code>
            </a> in the Amazon EC2 API
            Reference. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>
        <p>Specify either <code>name</code> or <code>id</code>, but not both.</p>")
type launchTemplateSpecification = {
  @ocaml.doc("<p>The ID of the launch template.</p>") id: option<string_>,
  @ocaml.doc("<p>The version of the launch template to use. If no version is specified, then the
            template's default version is used.</p>")
  version: option<string_>,
  @ocaml.doc("<p>The name of the launch template.</p>") name: option<string_>,
}
@ocaml.doc("<p>The Kubernetes network configuration for the cluster. The response contains a value
            for <b>serviceIpv6Cidr</b> or <b>serviceIpv4Cidr</b>, but not both. </p>")
type kubernetesNetworkConfigResponse = {
  @ocaml.doc("<p>The IP family used to assign Kubernetes Pod and Service IP addresses. The IP family is
            always <code>ipv4</code>, unless you have a <code>1.21</code> or later cluster running
            version 1.10.0 or later of the Amazon VPC CNI add-on and specified <code>ipv6</code> when you
            created the cluster. </p>")
  ipFamily: option<ipFamily>,
  @ocaml.doc("<p>The CIDR block that Kubernetes Pod and Service IP addresses are assigned from if you
            created a 1.21 or later cluster with version 1.10.0 or later of the Amazon VPC CNI add-on and
            specified <code>ipv6</code> for <b>ipFamily</b> when you
            created the cluster. Kubernetes assigns addresses from the unique local address range
            (fc00::/7).</p>")
  serviceIpv6Cidr: option<string_>,
  @ocaml.doc("<p>The CIDR block that Kubernetes Pod and Service IP addresses are assigned from.
            Kubernetes assigns addresses from an IPv4 CIDR block assigned to a subnet that the node
            is in. If you didn't specify a CIDR block when you created the cluster, then Kubernetes
            assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. If this
            was specified, then it was specified when the cluster was created and it can't be
            changed.</p>")
  serviceIpv4Cidr: option<string_>,
}
@ocaml.doc("<p>The Kubernetes network configuration for the cluster.</p>")
type kubernetesNetworkConfigRequest = {
  @ocaml.doc("<p>Specify which IP version is used to assign Kubernetes Pod and Service IP addresses. If
            you don't specify a value, <code>ipv4</code> is used by default. You can only specify an
            IP family when you create a cluster and can't change this value once the cluster is
            created. If you specify <code>ipv6</code>, the VPC and subnets that you specify for
            cluster creation must have both IPv4 and IPv6 CIDR blocks assigned to them. </p>
        <p>You can only specify <code>ipv6</code> for 1.21 and later clusters that use version
            1.10.0 or later of the Amazon VPC CNI add-on. If you specify <code>ipv6</code>, then ensure
            that your VPC meets the requirements and that you're familiar with the considerations
            listed in <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html\">Assigning
                IPv6 addresses to Pods and Services</a> in the Amazon EKS User Guide. If
            you specify <code>ipv6</code>, Kubernetes assigns Service and Pod addresses from the
            unique local address range (fc00::/7). You can't specify a custom IPv6 CIDR
            block.</p>")
  ipFamily: option<ipFamily>,
  @ocaml.doc("<p>Don't specify a value if you select <code>ipv6</code> for <b>ipFamily</b>. The CIDR block to assign Kubernetes service IP addresses from.
            If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16
            or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not
            overlap with resources in other networks that are peered or connected to your VPC. The
            block must meet the following requirements:</p>
        <ul>
            <li>
                <p>Within one of the following private IP address blocks: 10.0.0.0/8,
                    172.16.0.0/12, or 192.168.0.0/16.</p>
            </li>
            <li>
                <p>Doesn't overlap with any CIDR block assigned to the VPC that you selected for
                    VPC.</p>
            </li>
            <li>
                <p>Between /24 and /12.</p>
            </li>
         </ul>
        <important>
            <p>You can only specify a custom CIDR block when you create a cluster and can't
                change this value once the cluster is created.</p>
        </important>")
  serviceIpv4Cidr: option<string_>,
}
type includeClustersList = array<string_>
@ocaml.doc("<p>An object representing an identity provider configuration.</p>")
type identityProviderConfig = {
  @ocaml.doc("<p>The name of the identity provider configuration.</p>") name: string_,
  @ocaml.doc("<p>The type of the identity provider configuration.</p>") @as("type") type_: string_,
}
type fargateProfileLabel = Js.Dict.t<string_>
@ocaml.doc("<p>The full description of your connected cluster.</p>")
type connectorConfigResponse = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role to communicate with services from the connected Kubernetes
            cluster.</p>")
  roleArn: option<string_>,
  @ocaml.doc("<p>The cluster's cloud service provider.</p>") provider: option<string_>,
  @ocaml.doc("<p>The expiration time of the connected cluster. The cluster's YAML file must be applied
            through the native provider.</p>")
  activationExpiry: option<timestamp_>,
  @ocaml.doc("<p>A unique code associated with the cluster for registration purposes.</p>")
  activationCode: option<string_>,
  @ocaml.doc("<p>A unique ID associated with the cluster for registration purposes.</p>")
  activationId: option<string_>,
}
@ocaml.doc("<p>The configuration sent to a cluster for configuration.</p>")
type connectorConfigRequest = {
  @ocaml.doc("<p>The cloud provider for the target cluster to connect.</p>")
  provider: connectorConfigProvider,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role that is authorized to request the connector
            configuration.</p>")
  roleArn: string_,
}
@ocaml.doc("<p>An object representing the <code>certificate-authority-data</code> for your
            cluster.</p>")
type certificate = {
  @ocaml.doc("<p>The Base64-encoded certificate data required to communicate with your cluster. Add
            this to the <code>certificate-authority-data</code> section of the
                <code>kubeconfig</code> file for your cluster.</p>")
  data: option<string_>,
}
@ocaml.doc("<p>An Auto Scaling group that is associated with an Amazon EKS managed node
            group.</p>")
type autoScalingGroup = {
  @ocaml.doc("<p>The name of the Auto Scaling group associated with an Amazon EKS managed node
            group.</p>")
  name: option<string_>,
}
type taintsList = array<taint>
@ocaml.doc("<p>An object representing an Amazon EKS cluster VPC configuration
            response.</p>")
type vpcConfigResponse = {
  @ocaml.doc("<p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
            endpoint. Communication to the endpoint from addresses outside of the listed CIDR blocks
            is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled private
            endpoint access and you have nodes or Fargate pods in the cluster,
            then ensure that the necessary CIDR blocks are listed. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS cluster endpoint access control</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  publicAccessCidrs: option<stringList>,
  @ocaml.doc("<p>This parameter indicates whether the Amazon EKS private API server endpoint is
            enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes
            API requests that originate from within your cluster's VPC use the private VPC endpoint
            instead of traversing the internet. If this value is disabled and you have nodes or
                Fargate pods in the cluster, then ensure that
                <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication
            with the nodes or Fargate pods. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS cluster endpoint access control</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  endpointPrivateAccess: option<boolean_>,
  @ocaml.doc("<p>This parameter indicates whether the Amazon EKS public API server endpoint is
            enabled. If the Amazon EKS public API server endpoint is disabled, your
            cluster's Kubernetes API server can only receive requests that originate from within the
            cluster VPC.</p>")
  endpointPublicAccess: option<boolean_>,
  @ocaml.doc("<p>The VPC associated with your cluster.</p>") vpcId: option<string_>,
  @ocaml.doc("<p>The cluster security group that was created by Amazon EKS for the cluster.
            Managed node groups use this security group for control-plane-to-data-plane
            communication.</p>")
  clusterSecurityGroupId: option<string_>,
  @ocaml.doc("<p>The security groups associated with the cross-account elastic network interfaces that
            are used to allow communication between your nodes and the Kubernetes control
            plane.</p>")
  securityGroupIds: option<stringList>,
  @ocaml.doc("<p>The subnets associated with your cluster.</p>") subnetIds: option<stringList>,
}
@ocaml.doc("<p>An object representing the VPC configuration to use for an Amazon EKS
            cluster.</p>")
type vpcConfigRequest = {
  @ocaml.doc("<p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server
            endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that
            you specify is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled
            private endpoint access and you have nodes or Fargate pods in the
            cluster, then ensure that you specify the necessary CIDR blocks. For more information,
            see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS cluster endpoint access control</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  publicAccessCidrs: option<stringList>,
  @ocaml.doc("<p>Set this value to <code>true</code> to enable private access for your cluster's
            Kubernetes API server endpoint. If you enable private access, Kubernetes API requests
            from within your cluster's VPC use the private VPC endpoint. The default value for this
            parameter is <code>false</code>, which disables private access for your Kubernetes API
            server. If you disable private access and you have nodes or Fargate
            pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the
            necessary CIDR blocks for communication with the nodes or Fargate pods.
            For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS cluster endpoint access control</a> in
            the <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  endpointPrivateAccess: option<boxedBoolean>,
  @ocaml.doc("<p>Set this value to <code>false</code> to disable public access to your cluster's
            Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes
            API server can only receive requests from within the cluster VPC. The default value for
            this parameter is <code>true</code>, which enables public access for your Kubernetes API
            server. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS cluster endpoint access control</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  endpointPublicAccess: option<boxedBoolean>,
  @ocaml.doc("<p>Specify one or more security groups for the cross-account elastic network interfaces
            that Amazon EKS creates to use that allow communication between your nodes and
            the Kubernetes control plane. If you don't specify any security groups, then familiarize
            yourself with the difference between Amazon EKS defaults for clusters deployed
            with Kubernetes:</p>
        <ul>
            <li>
                <p>1.14 Amazon EKS platform version <code>eks.2</code> and earlier</p>
            </li>
            <li>
                <p>1.14 Amazon EKS platform version <code>eks.3</code> and later </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html\">Amazon EKS security group
                considerations</a> in the <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  securityGroupIds: option<stringList>,
  @ocaml.doc("<p>Specify subnets for your Amazon EKS nodes. Amazon EKS creates
            cross-account elastic network interfaces in these subnets to allow communication between
            your nodes and the Kubernetes control plane.</p>")
  subnetIds: option<stringList>,
}
type updateParams = array<updateParam>
@ocaml.doc("<p>An object representing a Kubernetes label change for a managed node group.</p>")
type updateLabelsPayload = {
  @ocaml.doc("<p>Kubernetes labels to be removed.</p>") removeLabels: option<labelsKeyList>,
  @ocaml.doc("<p>Kubernetes labels to be added or updated.</p>")
  addOrUpdateLabels: option<labelsMap>,
}
@ocaml.doc("<p>An object representing the remote access configuration for the managed node
            group.</p>")
type remoteAccessConfig = {
  @ocaml.doc("<p>The security groups that are allowed SSH access (port 22) to the nodes. If you specify
            an Amazon EC2 SSH key but do not specify a source security group when you create
            a managed node group, then port 22 on the nodes is opened to the internet (0.0.0.0/0).
            For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html\">Security Groups for Your VPC</a> in the
            <i>Amazon Virtual Private Cloud User Guide</i>.</p>")
  sourceSecurityGroups: option<stringList>,
  @ocaml.doc("<p>The Amazon EC2 SSH key that provides access for SSH communication with the
            nodes in the managed node group. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html\">Amazon EC2 key pairs and Linux instances</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>.</p>")
  ec2SshKey: option<string_>,
}
@ocaml.doc("<p>An object representing an OpenID Connect (OIDC) configuration. Before associating an
            OIDC identity provider to your cluster, review the considerations in <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/authenticate-oidc-identity-provider.html\">Authenticating
                users for your cluster from an OpenID Connect identity provider</a> in the
            <i>Amazon EKS User Guide</i>.</p>")
type oidcIdentityProviderConfigRequest = {
  @ocaml.doc("<p>The key value pairs that describe required claims in the identity token. If set, each
            claim is verified to be present in the token with a matching value. For the maximum
            number of claims that you can require, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/service-quotas.html\">Amazon EKS service
                quotas</a> in the <i>Amazon EKS User Guide</i>.</p>")
  requiredClaims: option<requiredClaimsMap>,
  @ocaml.doc("<p>The prefix that is prepended to group claims to prevent clashes with existing names
            (such as <code>system:</code> groups). For example, the value<code> oidc:</code> will
            create group names like <code>oidc:engineering</code> and
            <code>oidc:infra</code>.</p>")
  groupsPrefix: option<string_>,
  @ocaml.doc("<p>The JWT claim that the provider uses to return your groups.</p>")
  groupsClaim: option<string_>,
  @ocaml.doc("<p>The prefix that is prepended to username claims to prevent clashes with existing
            names. If you do not provide this field, and <code>username</code> is a value other than
                <code>email</code>, the prefix defaults to <code>issuerurl#</code>. You can use the
            value <code>-</code> to disable all prefixing.</p>")
  usernamePrefix: option<string_>,
  @ocaml.doc("<p>The JSON Web Token (JWT) claim to use as the username. The default is
            <code>sub</code>, which is expected to be a unique identifier of the end user. You can
            choose other claims, such as <code>email</code> or <code>name</code>, depending on the
            OpenID identity provider. Claims other than <code>email</code> are prefixed with the
            issuer URL to prevent naming clashes with other plug-ins.</p>")
  usernameClaim: option<string_>,
  @ocaml.doc("<p>This is also known as <i>audience</i>. The ID for the client application
            that makes authentication requests to the OpenID identity provider.</p>")
  clientId: string_,
  @ocaml.doc("<p>The URL of the OpenID identity provider that allows the API server to discover public
            signing keys for verifying tokens. The URL must begin with <code>https://</code> and
            should correspond to the <code>iss</code> claim in the provider's OIDC ID tokens. Per
            the OIDC standard, path components are allowed but query parameters are not. Typically
            the URL consists of only a hostname, like <code>https://server.example.org</code> or
                <code>https://example.com</code>. This URL should point to the level below
                <code>.well-known/openid-configuration</code> and must be publicly accessible over
            the internet.</p>")
  issuerUrl: string_,
  @ocaml.doc("<p>The name of the OIDC provider configuration.</p>")
  identityProviderConfigName: string_,
}
@ocaml.doc("<p>An object that represents the configuration for an OpenID Connect (OIDC) identity
            provider. </p>")
type oidcIdentityProviderConfig = {
  @ocaml.doc("<p>The status of the OIDC identity provider.</p>") status: option<configStatus>,
  @ocaml.doc("<p>The metadata to apply to the provider configuration to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The key-value pairs that describe required claims in the identity token. If set, each
            claim is verified to be present in the token with a matching value.</p>")
  requiredClaims: option<requiredClaimsMap>,
  @ocaml.doc("<p>The prefix that is prepended to group claims to prevent clashes with existing names
            (such as <code>system:</code> groups). For example, the value<code> oidc:</code> creates
            group names like <code>oidc:engineering</code> and <code>oidc:infra</code>. The prefix
            can't contain <code>system:</code>
         </p>")
  groupsPrefix: option<string_>,
  @ocaml.doc("<p>The JSON web token (JWT) claim that the provider uses to return your groups.</p>")
  groupsClaim: option<string_>,
  @ocaml.doc("<p>The prefix that is prepended to username claims to prevent clashes with existing
            names. The prefix can't contain <code>system:</code>
         </p>")
  usernamePrefix: option<string_>,
  @ocaml.doc("<p>The JSON Web token (JWT) claim that is used as the username.</p>")
  usernameClaim: option<string_>,
  @ocaml.doc("<p>This is also known as <i>audience</i>. The ID of the client application
            that makes authentication requests to the OIDC identity provider.</p>")
  clientId: option<string_>,
  @ocaml.doc("<p>The URL of the OIDC identity provider that allows the API server to discover public
            signing keys for verifying tokens.</p>")
  issuerUrl: option<string_>,
  @ocaml.doc("<p>The cluster that the configuration is associated to.</p>")
  clusterName: option<string_>,
  @ocaml.doc("<p>The ARN of the configuration.</p>") identityProviderConfigArn: option<string_>,
  @ocaml.doc("<p>The name of the configuration.</p>") identityProviderConfigName: option<string_>,
}
@ocaml.doc("<p>An object representing the enabled or disabled Kubernetes control plane logs for your
            cluster.</p>")
type logSetup = {
  @ocaml.doc("<p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control
            plane logs. Each individual log type can be enabled or disabled independently.</p>")
  enabled: option<boxedBoolean>,
  @ocaml.doc("<p>The available cluster control plane log types.</p>") types: option<logTypes>,
}
@ocaml.doc("<p>An object representing an issue with an Amazon EKS resource.</p>")
type issue = {
  @ocaml.doc("<p>The Amazon Web Services resources that are afflicted by this issue.</p>")
  resourceIds: option<stringList>,
  @ocaml.doc("<p>The error message associated with the issue.</p>") message: option<string_>,
  @ocaml.doc("<p>A brief description of the error.</p>
        <ul>
            <li>
                <p>
                  <b>AccessDenied</b>: Amazon EKS or one or
                    more of your managed nodes is failing to authenticate or authorize with your
                    Kubernetes cluster API server.</p>
            </li>
            <li>
                <p>
                  <b>AsgInstanceLaunchFailures</b>: Your Auto Scaling group is experiencing failures while attempting to launch
                    instances.</p>
            </li>
            <li>
                <p>
                  <b>AutoScalingGroupNotFound</b>: We couldn't find
                    the Auto Scaling group associated with the managed node group. You may be
                    able to recreate an Auto Scaling group with the same settings to
                    recover.</p>
            </li>
            <li>
                <p>
                  <b>ClusterUnreachable</b>: Amazon EKS or one
                    or more of your managed nodes is unable to to communicate with your Kubernetes
                    cluster API server. This can happen if there are network disruptions or if API
                    servers are timing out processing requests. </p>
            </li>
            <li>
                <p>
                  <b>Ec2LaunchTemplateNotFound</b>: We couldn't find
                    the Amazon EC2 launch template for your managed node group. You may be
                    able to recreate a launch template with the same settings to recover.</p>
            </li>
            <li>
                <p>
                  <b>Ec2LaunchTemplateVersionMismatch</b>: The Amazon EC2 launch template version for your managed node group does not
                    match the version that Amazon EKS created. You may be able to revert to
                    the version that Amazon EKS created to recover.</p>
            </li>
            <li>
                <p>
                  <b>Ec2SecurityGroupDeletionFailure</b>: We could not
                    delete the remote access security group for your managed node group. Remove any
                    dependencies from the security group.</p>
            </li>
            <li>
                <p>
                  <b>Ec2SecurityGroupNotFound</b>: We couldn't find
                    the cluster security group for the cluster. You must recreate your
                    cluster.</p>
            </li>
            <li>
                <p>
                  <b>Ec2SubnetInvalidConfiguration</b>: One or more
                        Amazon EC2 subnets specified for a node group do not automatically
                    assign public IP addresses to instances launched into it. If you want your
                    instances to be assigned a public IP address, then you need to enable the
                        <code>auto-assign public IP address</code> setting for the subnet. See
                        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip\">Modifying
                        the public IPv4 addressing attribute for your subnet</a> in the Amazon
                    VPC User Guide.</p>
            </li>
            <li>
                <p>
                  <b>IamInstanceProfileNotFound</b>: We couldn't find
                    the IAM instance profile for your managed node group. You may be
                    able to recreate an instance profile with the same settings to recover.</p>
            </li>
            <li>
                <p>
                  <b>IamNodeRoleNotFound</b>: We couldn't find the
                        IAM role for your managed node group. You may be able to
                    recreate an IAM role with the same settings to recover.</p>
            </li>
            <li>
                <p>
                  <b>InstanceLimitExceeded</b>: Your Amazon Web Services account is unable to launch any more instances of the specified instance
                    type. You may be able to request an Amazon EC2 instance limit increase
                    to recover.</p>
            </li>
            <li>
                <p>
                  <b>InsufficientFreeAddresses</b>: One or more of the
                    subnets associated with your managed node group does not have enough available
                    IP addresses for new nodes.</p>
            </li>
            <li>
                <p>
                  <b>InternalFailure</b>: These errors are usually
                    caused by an Amazon EKS server-side issue.</p>
            </li>
            <li>
                <p>
                  <b>NodeCreationFailure</b>: Your launched instances
                    are unable to register with your Amazon EKS cluster. Common causes of this failure
                    are insufficient <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html\">node IAM role</a>
                    permissions or lack of outbound internet access for the nodes. </p>
            </li>
         </ul>")
  code: option<nodegroupIssueCode>,
}
type identityProviderConfigs = array<identityProviderConfig>
@ocaml.doc("<p>An object representing an identity provider.</p>")
type identity = {
  @ocaml.doc("<p>An object representing the <a href=\"https://openid.net/connect/\">OpenID
                Connect</a> identity provider information.</p>")
  oidc: option<oidc>,
}
@ocaml.doc("<p>An object representing an Fargate profile selector.</p>")
type fargateProfileSelector = {
  @ocaml.doc("<p>The Kubernetes labels that the selector should match. A pod must contain all of the
            labels that are specified in the selector for it to be considered a match.</p>")
  labels: option<fargateProfileLabel>,
  @ocaml.doc("<p>The Kubernetes namespace that the selector should match.</p>")
  namespace: option<string_>,
}
@ocaml.doc("<p>An object representing an error when an asynchronous operation fails.</p>")
type errorDetail = {
  @ocaml.doc("<p>An optional field that contains the resource IDs associated with the error.</p>")
  resourceIds: option<stringList>,
  @ocaml.doc("<p>A more complete description of the error.</p>") errorMessage: option<string_>,
  @ocaml.doc("<p>A brief description of the error. </p>
        <ul>
            <li>
                <p>
                  <b>SubnetNotFound</b>: We couldn't find one of the
                    subnets associated with the cluster.</p>
            </li>
            <li>
                <p>
                  <b>SecurityGroupNotFound</b>: We couldn't find one
                    of the security groups associated with the cluster.</p>
            </li>
            <li>
                <p>
                  <b>EniLimitReached</b>: You have reached the elastic
                    network interface limit for your account.</p>
            </li>
            <li>
                <p>
                  <b>IpNotAvailable</b>: A subnet associated with the
                    cluster doesn't have any free IP addresses.</p>
            </li>
            <li>
                <p>
                  <b>AccessDenied</b>: You don't have permissions to
                    perform the specified operation.</p>
            </li>
            <li>
                <p>
                  <b>OperationNotPermitted</b>: The service role
                    associated with the cluster doesn't have the required access permissions for
                        Amazon EKS.</p>
            </li>
            <li>
                <p>
                  <b>VpcIdNotFound</b>: We couldn't find the VPC
                    associated with the cluster.</p>
            </li>
         </ul>")
  errorCode: option<errorCode>,
}
@ocaml.doc("<p>The encryption configuration for the cluster.</p>")
type encryptionConfig = {
  @ocaml.doc("<p>Key Management Service (KMS) key. Either the ARN or the alias can be
            used.</p>")
  provider: option<provider>,
  @ocaml.doc(
    "<p>Specifies the resources to be encrypted. The only supported value is \"secrets\".</p>"
  )
  resources: option<stringList>,
}
@ocaml.doc("<p>Compatibility information.</p>")
type compatibility = {
  @ocaml.doc("<p>The supported default version.</p>") defaultVersion: option<boolean_>,
  @ocaml.doc("<p>The supported compute platform.</p>") platformVersions: option<stringList>,
  @ocaml.doc("<p>The supported Kubernetes version of the cluster.</p>")
  clusterVersion: option<string_>,
}
type autoScalingGroupList = array<autoScalingGroup>
@ocaml.doc("<p>An issue related to an add-on.</p>")
type addonIssue = {
  @ocaml.doc("<p>The resource IDs of the issue.</p>") resourceIds: option<stringList>,
  @ocaml.doc("<p>A message that provides details about the issue and what might cause it.</p>")
  message: option<string_>,
  @ocaml.doc("<p>A code that describes the type of issue.</p>") code: option<addonIssueCode>,
}
@ocaml.doc("<p>An object representing the details of an update to a taints payload.</p>")
type updateTaintsPayload = {
  @ocaml.doc("<p>Kubernetes taints to be removed.</p>") removeTaints: option<taintsList>,
  @ocaml.doc("<p>Kubernetes taints to be added or updated.</p>")
  addOrUpdateTaints: option<taintsList>,
}
@ocaml.doc("<p>An object representing the resources associated with the node group, such as Auto
            Scaling groups and security groups for remote access.</p>")
type nodegroupResources = {
  @ocaml.doc("<p>The remote access security group associated with the node group. This security group
            controls SSH access to the nodes.</p>")
  remoteAccessSecurityGroup: option<string_>,
  @ocaml.doc("<p>The Auto Scaling groups associated with the node group.</p>")
  autoScalingGroups: option<autoScalingGroupList>,
}
type logSetups = array<logSetup>
type issueList = array<issue>
@ocaml.doc("<p>The full description of your identity configuration.</p>")
type identityProviderConfigResponse = {
  @ocaml.doc("<p>An object that represents an OpenID Connect (OIDC) identity provider
            configuration.</p>")
  oidc: option<oidcIdentityProviderConfig>,
}
type fargateProfileSelectors = array<fargateProfileSelector>
type errorDetails = array<errorDetail>
type encryptionConfigList = array<encryptionConfig>
type compatibilities = array<compatibility>
type addonIssueList = array<addonIssue>
@ocaml.doc("<p>An object representing an asynchronous update.</p>")
type update = {
  @ocaml.doc("<p>Any errors associated with a <code>Failed</code> update.</p>")
  errors: option<errorDetails>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the update was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>A key-value map that contains the parameters associated with the update.</p>")
  params: option<updateParams>,
  @ocaml.doc("<p>The type of the update.</p>") @as("type") type_: option<updateType>,
  @ocaml.doc("<p>The current status of the update.</p>") status: option<updateStatus>,
  @ocaml.doc("<p>A UUID that is used to track the update.</p>") id: option<string_>,
}
@ocaml.doc("<p>An object representing the health status of the node group.</p>")
type nodegroupHealth = {
  @ocaml.doc("<p>Any issues that are associated with the node group. </p>")
  issues: option<issueList>,
}
@ocaml.doc("<p>An object representing the logging configuration for resources in your cluster.</p>")
type logging = {
  @ocaml.doc("<p>The cluster control plane logging configuration for your cluster.</p>")
  clusterLogging: option<logSetups>,
}
@ocaml.doc("<p>An object representing an Fargate profile.</p>")
type fargateProfile = {
  @ocaml.doc("<p>The metadata applied to the Fargate profile to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.
            Fargate profile tags do not propagate to any other resources associated with the
            Fargate profile, such as the pods that are scheduled with it.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The current status of the Fargate profile.</p>")
  status: option<fargateProfileStatus>,
  @ocaml.doc("<p>The selectors to match for pods to use this Fargate profile.</p>")
  selectors: option<fargateProfileSelectors>,
  @ocaml.doc("<p>The IDs of subnets to launch pods into.</p>") subnets: option<stringList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in
            the Fargate profile. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html\">Pod
                Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>")
  podExecutionRoleArn: option<string_>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the Fargate profile was
            created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The name of the Amazon EKS cluster that the Fargate profile
            belongs to.</p>")
  clusterName: option<string_>,
  @ocaml.doc("<p>The full Amazon Resource Name (ARN) of the Fargate profile.</p>")
  fargateProfileArn: option<string_>,
  @ocaml.doc("<p>The name of the Fargate profile.</p>") fargateProfileName: option<string_>,
}
@ocaml.doc("<p>Information about an add-on version.</p>")
type addonVersionInfo = {
  @ocaml.doc("<p>An object that represents the compatibilities of a version.</p>")
  compatibilities: option<compatibilities>,
  @ocaml.doc("<p>The architectures that the version supports.</p>")
  architecture: option<stringList>,
  @ocaml.doc("<p>The version of the add-on.</p>") addonVersion: option<string_>,
}
@ocaml.doc("<p>The health of the add-on.</p>")
type addonHealth = {
  @ocaml.doc("<p>An object that represents the add-on's health issues.</p>")
  issues: option<addonIssueList>,
}
@ocaml.doc("<p>An object representing an Amazon EKS managed node group.</p>")
type nodegroup = {
  @ocaml.doc("<p>The metadata applied to the node group to assist with categorization and organization.
            Each tag consists of a key and an optional value. You define both. Node group
            tags do not propagate to any other resources associated with the node group, such as the
            Amazon EC2 instances or subnets. </p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>If a launch template was used to create the node group, then this is the launch
            template that was used.</p>")
  launchTemplate: option<launchTemplateSpecification>,
  @ocaml.doc("<p>The node group update configuration.</p>")
  updateConfig: option<nodegroupUpdateConfig>,
  @ocaml.doc("<p>The health status of the node group. If there are issues with your node group's
            health, they are listed here.</p>")
  health: option<nodegroupHealth>,
  @ocaml.doc("<p>If the node group wasn't deployed with a launch template, then this is the disk size
            in the node group configuration. If the node group was deployed with a launch template,
            then this is <code>null</code>.</p>")
  diskSize: option<boxedInteger>,
  @ocaml.doc("<p>The resources associated with the node group, such as Auto Scaling groups and security
            groups for remote access.</p>")
  resources: option<nodegroupResources>,
  @ocaml.doc("<p>The Kubernetes taints to be applied to the nodes in the node group when they are
            created. Effect is one of <code>No_Schedule</code>, <code>Prefer_No_Schedule</code>, or
                <code>No_Execute</code>. Kubernetes taints can be used together with tolerations to
            control how workloads are scheduled to your nodes.</p>")
  taints: option<taintsList>,
  @ocaml.doc("<p>The Kubernetes labels applied to the nodes in the node group.</p>
        <note>
            <p>Only labels that are applied with the Amazon EKS API are shown here. There
                may be other Kubernetes labels applied to the nodes in this group.</p>
        </note>")
  labels: option<labelsMap>,
  @ocaml.doc("<p>The IAM role associated with your node group. The Amazon EKS
            node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf.
            Nodes receive permissions for these API calls through an IAM instance
            profile and associated policies.</p>")
  nodeRole: option<string_>,
  @ocaml.doc("<p>If the node group was deployed using a launch template with a custom AMI, then this is
                <code>CUSTOM</code>. For node groups that weren't deployed using a launch template,
            this is the AMI type that was specified in the node group configuration.</p>")
  amiType: option<amitypes>,
  @ocaml.doc("<p>If the node group wasn't deployed with a launch template, then this is the remote
            access configuration that is associated with the node group. If the node group was
            deployed with a launch template, then this is <code>null</code>.</p>")
  remoteAccess: option<remoteAccessConfig>,
  @ocaml.doc("<p>The subnets that were specified for the Auto Scaling group that is associated with
            your node group.</p>")
  subnets: option<stringList>,
  @ocaml.doc("<p>If the node group wasn't deployed with a launch template, then this is the instance
            type that is associated with the node group. If the node group was deployed with a
            launch template, then this is <code>null</code>.</p>")
  instanceTypes: option<stringList>,
  @ocaml.doc("<p>The scaling configuration details for the Auto Scaling group that is associated with
            your node group.</p>")
  scalingConfig: option<nodegroupScalingConfig>,
  @ocaml.doc("<p>The capacity type of your managed node group.</p>")
  capacityType: option<capacityTypes>,
  @ocaml.doc("<p>The current status of the managed node group.</p>")
  status: option<nodegroupStatus>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the managed node group was last
            modified.</p>")
  modifiedAt: option<timestamp_>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the managed node group was
            created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>If the node group was deployed using a launch template with a custom AMI, then this is
            the AMI ID that was specified in the launch template. For node groups that weren't
            deployed using a launch template, this is the version of the Amazon EKS
            optimized AMI that the node group was deployed with.</p>")
  releaseVersion: option<string_>,
  @ocaml.doc("<p>The Kubernetes version of the managed node group.</p>") version: option<string_>,
  @ocaml.doc("<p>The name of the cluster that the managed node group resides in.</p>")
  clusterName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the managed node group.</p>")
  nodegroupArn: option<string_>,
  @ocaml.doc("<p>The name associated with an Amazon EKS managed node group.</p>")
  nodegroupName: option<string_>,
}
@ocaml.doc("<p>An object representing an Amazon EKS cluster.</p>")
type cluster = {
  @ocaml.doc("<p>The configuration used to connect to a cluster for registration.</p>")
  connectorConfig: option<connectorConfigResponse>,
  @ocaml.doc("<p>The encryption configuration for the cluster.</p>")
  encryptionConfig: option<encryptionConfigList>,
  @ocaml.doc("<p>The metadata that you apply to the cluster to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.
            Cluster tags do not propagate to any other resources associated with the
            cluster.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The platform version of your Amazon EKS cluster. For more information, see
                <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html\">Platform Versions</a> in the <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
  platformVersion: option<string_>,
  @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
  clientRequestToken: option<string_>,
  @ocaml.doc("<p>The <code>certificate-authority-data</code> for your cluster.</p>")
  certificateAuthority: option<certificate>,
  @ocaml.doc("<p>The current status of the cluster.</p>") status: option<clusterStatus>,
  @ocaml.doc("<p>The identity provider information for the cluster.</p>")
  identity: option<identity>,
  @ocaml.doc("<p>The logging configuration for your cluster.</p>") logging: option<logging>,
  @ocaml.doc("<p>The Kubernetes network configuration for the cluster.</p>")
  kubernetesNetworkConfig: option<kubernetesNetworkConfigResponse>,
  @ocaml.doc("<p>The VPC configuration used by the cluster control plane. Amazon EKS VPC
            resources have specific requirements to work properly with Kubernetes. For more
            information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html\">Cluster VPC Considerations</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html\">Cluster Security
                Group Considerations</a> in the <i>Amazon EKS User Guide</i>.</p>")
  resourcesVpcConfig: option<vpcConfigResponse>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the
            Kubernetes control plane to make calls to Amazon Web Services API operations on your
            behalf.</p>")
  roleArn: option<string_>,
  @ocaml.doc("<p>The endpoint for your Kubernetes API server.</p>") endpoint: option<string_>,
  @ocaml.doc("<p>The Kubernetes server version for the cluster.</p>") version: option<string_>,
  @ocaml.doc("<p>The Unix epoch timestamp in seconds for when the cluster was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") arn: option<string_>,
  @ocaml.doc("<p>The name of the cluster.</p>") name: option<string_>,
}
type addonVersionInfoList = array<addonVersionInfo>
@ocaml.doc("<p>An Amazon EKS add-on. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html\">Amazon EKS add-ons</a> in
            the <i>Amazon EKS User Guide</i>.</p>")
type addon = {
  @ocaml.doc("<p>The metadata that you apply to the add-on to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.
            Add-on tags do not propagate to any other resources associated with the cluster.
        </p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that is bound to the Kubernetes service
            account used by the add-on.</p>")
  serviceAccountRoleArn: option<string_>,
  @ocaml.doc("<p>The date and time that the add-on was last modified.</p>")
  modifiedAt: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the add-on was created.</p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the add-on.</p>") addonArn: option<string_>,
  @ocaml.doc("<p>An object that represents the health of the add-on.</p>")
  health: option<addonHealth>,
  @ocaml.doc("<p>The version of the add-on.</p>") addonVersion: option<string_>,
  @ocaml.doc("<p>The status of the add-on.</p>") status: option<addonStatus>,
  @ocaml.doc("<p>The name of the cluster.</p>") clusterName: option<clusterName>,
  @ocaml.doc("<p>The name of the add-on.</p>") addonName: option<string_>,
}
@ocaml.doc("<p>Information about an add-on.</p>")
type addonInfo = {
  @ocaml.doc("<p>An object that represents information about available add-on versions and compatible
            Kubernetes versions.</p>")
  addonVersions: option<addonVersionInfoList>,
  @ocaml.doc("<p>The type of the add-on.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>The name of the add-on.</p>") addonName: option<string_>,
}
type addons = array<addonInfo>
@ocaml.doc("<p>Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy
            for you to run Kubernetes on Amazon Web Services without needing to stand up or maintain
            your own Kubernetes control plane. Kubernetes is an open-source system for automating
            the deployment, scaling, and management of containerized applications. </p>
        <p>Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so
            you can use all the existing plugins and tooling from the Kubernetes community.
            Applications running on Amazon EKS are fully compatible with applications
            running on any standard Kubernetes environment, whether running in on-premises data
            centers or public clouds. This means that you can easily migrate any standard Kubernetes
            application to Amazon EKS without any code modification required.</p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported
            resources are Amazon EKS clusters and managed node groups.</p>")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-eks") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources
            are Amazon EKS clusters and managed node groups.</p>")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-eks") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListUpdates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of update results returned by <code>ListUpdates</code> in paginated
            output. When you use this parameter, <code>ListUpdates</code> returns only
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. You can see the remaining results of the initial request by sending
            another <code>ListUpdates</code> request with the returned <code>nextToken</code> value.
            This value can be between 1 and 100. If you don't use this
            parameter, <code>ListUpdates</code> returns up to 100 results and a
                <code>nextToken</code> value if applicable.</p>")
    maxResults: option<listUpdatesRequestMaxResults>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListUpdates</code> request where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The names of the installed add-ons that have available updates.</p>")
    addonName: option<string_>,
    @ocaml.doc("<p>The name of the Amazon EKS managed node group to list updates for.</p>")
    nodegroupName: option<string_>,
    @ocaml.doc("<p>The name of the Amazon EKS cluster to list updates for.</p>") name: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListUpdates</code>
            request. When the results of a <code>ListUpdates</code> request exceed
                <code>maxResults</code>, you can use this value to retrieve the next page of
            results. This value is <code>null</code> when there are no more results to
            return.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of all the updates for the specified cluster and Region.</p>")
    updateIds: option<stringList>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListUpdatesCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ~addonName=?, ~nodegroupName=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      addonName: addonName,
      nodegroupName: nodegroupName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
            supported resources are Amazon EKS clusters and managed node groups.</p>")
    resourceArn: string_,
  }
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNodegroups = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListNodegroups</code> request where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of node group results returned by <code>ListNodegroups</code> in
            paginated output. When you use this parameter, <code>ListNodegroups</code> returns only
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. You can see the remaining results of the initial request by sending
            another <code>ListNodegroups</code> request with the returned <code>nextToken</code>
            value. This value can be between 1 and 100. If you don't
            use this parameter, <code>ListNodegroups</code> returns up to 100
            results and a <code>nextToken</code> value if applicable.</p>")
    maxResults: option<listNodegroupsRequestMaxResults>,
    @ocaml.doc("<p>The name of the Amazon EKS cluster that you would like to list node groups
            in.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListNodegroups</code>
            request. When the results of a <code>ListNodegroups</code> request exceed
                <code>maxResults</code>, you can use this value to retrieve the next page of
            results. This value is <code>null</code> when there are no more results to
            return.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of all of the node groups associated with the specified cluster.</p>")
    nodegroups: option<stringList>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListNodegroupsCommand"
  let make = (~clusterName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFargateProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListFargateProfiles</code> request where <code>maxResults</code> was used and
            the results exceeded the value of that parameter. Pagination continues from the end of
            the previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of Fargate profile results returned by
                <code>ListFargateProfiles</code> in paginated output. When you use this parameter,
                <code>ListFargateProfiles</code> returns only <code>maxResults</code> results in a
            single page along with a <code>nextToken</code> response element. You can see the
            remaining results of the initial request by sending another
                <code>ListFargateProfiles</code> request with the returned <code>nextToken</code>
            value. This value can be between 1 and 100. If you don't
            use this parameter, <code>ListFargateProfiles</code> returns up to 100
            results and a <code>nextToken</code> value if applicable.</p>")
    maxResults: option<fargateProfilesRequestMaxResults>,
    @ocaml.doc(
      "<p>The name of the Amazon EKS cluster that you would like to list Fargate profiles in.</p>"
    )
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future
                <code>ListFargateProfiles</code> request. When the results of a
                <code>ListFargateProfiles</code> request exceed <code>maxResults</code>, you can use
            this value to retrieve the next page of results. This value is <code>null</code> when
            there are no more results to return.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of all of the Fargate profiles associated with the specified
            cluster.</p>")
    fargateProfileNames: option<stringList>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListFargateProfilesCommand"
  let make = (~clusterName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates whether external clusters are included in the returned list. Use '<code>all</code>' to return connected clusters, or blank to return only Amazon EKS clusters. '<code>all</code>' must be in lowercase otherwise an error occurs.</p>"
    )
    @as("include")
    include_: option<includeClustersList>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListClusters</code> request where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of cluster results returned by <code>ListClusters</code> in
            paginated output. When you use this parameter, <code>ListClusters</code> returns only
                <code>maxResults</code> results in a single page along with a <code>nextToken</code>
            response element. You can see the remaining results of the initial request by sending
            another <code>ListClusters</code> request with the returned <code>nextToken</code>
            value. This value can be between 1 and 100. If you don't
            use this parameter, <code>ListClusters</code> returns up to 100
            results and a <code>nextToken</code> value if applicable.</p>")
    maxResults: option<listClustersRequestMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListClusters</code>
            request. When the results of a <code>ListClusters</code> request exceed
                <code>maxResults</code>, you can use this value to retrieve the next page of
            results. This value is <code>null</code> when there are no more results to
            return.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of all of the clusters for your account in the specified Region.</p>")
    clusters: option<stringList>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListClustersCommand"
  let make = (~include_=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({include_: include_, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAddons = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListAddonsRequest</code> where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of add-on results returned by <code>ListAddonsRequest</code> in
            paginated output. When you use this parameter, <code>ListAddonsRequest</code> returns
            only <code>maxResults</code> results in a single page along with a
                <code>nextToken</code> response element. You can see the remaining results of the
            initial request by sending another <code>ListAddonsRequest</code> request with the
            returned <code>nextToken</code> value. This value can be between 1 and
            100. If you don't use this parameter, <code>ListAddonsRequest</code>
            returns up to 100 results and a <code>nextToken</code> value, if
            applicable.</p>")
    maxResults: option<listAddonsRequestMaxResults>,
    @ocaml.doc("<p>The name of the cluster.</p>") clusterName: clusterName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListAddonsResponse</code> where <code>maxResults</code> was used and the
            results exceeded the value of that parameter. Pagination continues from the end of the
            previous results that returned the <code>nextToken</code> value.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of available add-ons.</p>") addons: option<stringList>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "ListAddonsCommand"
  let make = (~clusterName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityProviderConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>IdentityProviderConfigsRequest</code> where <code>maxResults</code> was used
            and the results exceeded the value of that parameter. Pagination continues from the end
            of the previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of identity provider configurations returned by
                <code>ListIdentityProviderConfigs</code> in paginated output. When you use this
            parameter, <code>ListIdentityProviderConfigs</code> returns only <code>maxResults</code>
            results in a single page along with a <code>nextToken</code> response element. You can
            see the remaining results of the initial request by sending another
                <code>ListIdentityProviderConfigs</code> request with the returned
                <code>nextToken</code> value. This value can be between 1 and
            100. If you don't use this parameter,
                <code>ListIdentityProviderConfigs</code> returns up to 100 results
            and a <code>nextToken</code> value, if applicable.</p>")
    maxResults: option<listIdentityProviderConfigsRequestMaxResults>,
    @ocaml.doc(
      "<p>The cluster name that you want to list identity provider configurations for.</p>"
    )
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>ListIdentityProviderConfigsResponse</code> where <code>maxResults</code> was
            used and the results exceeded the value of that parameter. Pagination continues from the
            end of the previous results that returned the <code>nextToken</code> value.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The identity provider configurations for the cluster.</p>")
    identityProviderConfigs: option<identityProviderConfigs>,
  }
  @module("@aws-sdk/client-eks") @new
  external new: request => t = "ListIdentityProviderConfigsCommand"
  let make = (~clusterName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityProviderConfig = {
  type t
  type request = {
    @ocaml.doc("<p>An object that represents an identity provider configuration.</p>")
    identityProviderConfig: identityProviderConfig,
    @ocaml.doc("<p>The cluster name that the identity provider configuration is associated to.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The object that represents an OpenID Connect (OIDC) identity provider
            configuration.</p>")
    identityProviderConfig: option<identityProviderConfigResponse>,
  }
  @module("@aws-sdk/client-eks") @new
  external new: request => t = "DescribeIdentityProviderConfigCommand"
  let make = (~identityProviderConfig, ~clusterName, ()) =>
    new({identityProviderConfig: identityProviderConfig, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNodegroupVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>Force the update if the existing node group's pods are unable to be drained due to a
            pod disruption budget issue. If an update fails because pods could not be drained, you
            can force the update after it fails to terminate the old node whether or not any pods
            are running on the node.</p>")
    force: option<boolean_>,
    @ocaml.doc("<p>An object representing a node group's launch template specification. You can only
            update a node group using a launch template if the node group was originally deployed
            with a launch template.</p>")
    launchTemplate: option<launchTemplateSpecification>,
    @ocaml.doc("<p>The AMI version of the Amazon EKS optimized AMI to use for the update. By
            default, the latest available AMI version for the node group's Kubernetes version is
            used. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html\">Amazon EKS optimized Amazon Linux 2 AMI versions </a> in the <i>Amazon EKS User Guide</i>.
            If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
            or the node group  update will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    releaseVersion: option<string_>,
    @ocaml.doc("<p>The Kubernetes version to update to. If no version is specified, then the Kubernetes
            version of the node group does not change. You can specify the Kubernetes version of the
            cluster to update the node group to the latest AMI version of the cluster's Kubernetes
            version. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify 
                <code>version</code>, or the node group  update will fail.
            For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    version: option<string_>,
    @ocaml.doc("<p>The name of the managed node group to update.</p>") nodegroupName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster that is associated with the managed node
            group to update.</p>")
    clusterName: string_,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "UpdateNodegroupVersionCommand"
  let make = (
    ~nodegroupName,
    ~clusterName,
    ~clientRequestToken=?,
    ~force=?,
    ~launchTemplate=?,
    ~releaseVersion=?,
    ~version=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      force: force,
      launchTemplate: launchTemplate,
      releaseVersion: releaseVersion,
      version: version,
      nodegroupName: nodegroupName,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNodegroupConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The node group update configuration.</p>")
    updateConfig: option<nodegroupUpdateConfig>,
    @ocaml.doc(
      "<p>The scaling configuration details for the Auto Scaling group after the update.</p>"
    )
    scalingConfig: option<nodegroupScalingConfig>,
    @ocaml.doc("<p>The Kubernetes taints to be applied to the nodes in the node group after the
            update.</p>")
    taints: option<updateTaintsPayload>,
    @ocaml.doc("<p>The Kubernetes labels to be applied to the nodes in the node group after the
            update.</p>")
    labels: option<updateLabelsPayload>,
    @ocaml.doc("<p>The name of the managed node group to update.</p>") nodegroupName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster that the managed node group resides
            in.</p>")
    clusterName: string_,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "UpdateNodegroupConfigCommand"
  let make = (
    ~nodegroupName,
    ~clusterName,
    ~clientRequestToken=?,
    ~updateConfig=?,
    ~scalingConfig=?,
    ~taints=?,
    ~labels=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      updateConfig: updateConfig,
      scalingConfig: scalingConfig,
      taints: taints,
      labels: labels,
      nodegroupName: nodegroupName,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClusterVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The desired Kubernetes version following a successful update.</p>")
    version: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster to update.</p>") name: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of the specified update</p>") update: option<update>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "UpdateClusterVersionCommand"
  let make = (~version, ~name, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, version: version, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClusterConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>Enable or disable exporting the Kubernetes control plane logs for your cluster to
                CloudWatch Logs. By default, cluster control plane logs aren't exported to
                CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS cluster control plane logs</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>
        <note>
            <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
                exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">CloudWatch
                Pricing</a>.</p>
        </note>")
    logging: option<logging>,
    resourcesVpcConfig: option<vpcConfigRequest>,
    @ocaml.doc("<p>The name of the Amazon EKS cluster to update.</p>") name: string_,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "UpdateClusterConfigCommand"
  let make = (~name, ~clientRequestToken=?, ~logging=?, ~resourcesVpcConfig=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      logging: logging,
      resourcesVpcConfig: resourcesVpcConfig,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAddon = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>How to resolve parameter value conflicts when applying the new version of the add-on
            to the cluster.</p>")
    resolveConflicts: option<resolveConflicts>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
     permissions assigned to the node IAM role. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html\">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
        <note>
            <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
                your cluster. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html\">Enabling
                    IAM roles for service accounts on your cluster</a> in the
                <i>Amazon EKS User Guide</i>.</p>
         </note>")
    serviceAccountRoleArn: option<roleArn>,
    @ocaml.doc("<p>The version of the add-on. The version must match one of the versions returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html\">
               <code>DescribeAddonVersions</code>
            </a>.</p>")
    addonVersion: option<string_>,
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html\">
               <code>ListAddons</code>
            </a>.</p>")
    addonName: string_,
    @ocaml.doc("<p>The name of the cluster.</p>") clusterName: clusterName,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "UpdateAddonCommand"
  let make = (
    ~addonName,
    ~clusterName,
    ~clientRequestToken=?,
    ~resolveConflicts=?,
    ~serviceAccountRoleArn=?,
    ~addonVersion=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      resolveConflicts: resolveConflicts,
      serviceAccountRoleArn: serviceAccountRoleArn,
      addonVersion: addonVersion,
      addonName: addonName,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateIdentityProviderConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>An object that represents an identity provider configuration.</p>")
    identityProviderConfig: identityProviderConfig,
    @ocaml.doc("<p>The name of the cluster to disassociate an identity provider from.</p>")
    clusterName: string_,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new
  external new: request => t = "DisassociateIdentityProviderConfigCommand"
  let make = (~identityProviderConfig, ~clusterName, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      identityProviderConfig: identityProviderConfig,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUpdate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html\">
               <code>ListAddons</code>
            </a>.</p>")
    addonName: option<string_>,
    @ocaml.doc("<p>The name of the Amazon EKS node group associated with the update.</p>")
    nodegroupName: option<string_>,
    @ocaml.doc("<p>The ID of the update to describe.</p>") updateId: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster associated with the update.</p>")
    name: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of the specified update.</p>") update: option<update>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeUpdateCommand"
  let make = (~updateId, ~name, ~addonName=?, ~nodegroupName=?, ()) =>
    new({addonName: addonName, nodegroupName: nodegroupName, updateId: updateId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFargateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Fargate profile to describe.</p>") fargateProfileName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster associated with the Fargate
            profile.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of your Fargate profile.</p>")
    fargateProfile: option<fargateProfile>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeFargateProfileCommand"
  let make = (~fargateProfileName, ~clusterName, ()) =>
    new({fargateProfileName: fargateProfileName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFargateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Fargate profile to delete.</p>") fargateProfileName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster associated with the Fargate
            profile to delete.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The deleted Fargate profile.</p>") fargateProfile: option<fargateProfile>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DeleteFargateProfileCommand"
  let make = (~fargateProfileName, ~clusterName, ()) =>
    new({fargateProfileName: fargateProfileName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFargateProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata to apply to the Fargate profile to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.
            Fargate profile tags do not propagate to any other resources associated with the
            Fargate profile, such as the pods that are scheduled with it.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The selectors to match for pods to use this Fargate profile. Each
            selector must have an associated namespace. Optionally, you can also specify labels for
            a namespace. You may specify up to five selectors in a Fargate
            profile.</p>")
    selectors: option<fargateProfileSelectors>,
    @ocaml.doc("<p>The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with
            no direct route to an Internet Gateway) are accepted for this parameter.</p>")
    subnets: option<stringList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in
            the Fargate profile. The pod execution role allows Fargate
            infrastructure to register with your cluster as a node, and it provides read access to
                Amazon ECR image repositories. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html\">Pod
                Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>")
    podExecutionRoleArn: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster to apply the Fargate profile
            to.</p>")
    clusterName: string_,
    @ocaml.doc("<p>The name of the Fargate profile.</p>") fargateProfileName: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of your new Fargate profile.</p>")
    fargateProfile: option<fargateProfile>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "CreateFargateProfileCommand"
  let make = (
    ~podExecutionRoleArn,
    ~clusterName,
    ~fargateProfileName,
    ~tags=?,
    ~clientRequestToken=?,
    ~selectors=?,
    ~subnets=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      selectors: selectors,
      subnets: subnets,
      podExecutionRoleArn: podExecutionRoleArn,
      clusterName: clusterName,
      fargateProfileName: fargateProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateIdentityProviderConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The metadata to apply to the configuration to assist with categorization and
            organization. Each tag consists of a key and an optional value. You define both.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>An object that represents an OpenID Connect (OIDC) identity provider
            configuration.</p>")
    oidc: oidcIdentityProviderConfigRequest,
    @ocaml.doc("<p>The name of the cluster to associate the configuration to.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagMap>,
    update: option<update>,
  }
  @module("@aws-sdk/client-eks") @new
  external new: request => t = "AssociateIdentityProviderConfigCommand"
  let make = (~oidc, ~clusterName, ~clientRequestToken=?, ~tags=?, ()) =>
    new({clientRequestToken: clientRequestToken, tags: tags, oidc: oidc, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateEncryptionConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The client request token you are using with the encryption configuration.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The configuration you are using for encryption.</p>")
    encryptionConfig: encryptionConfigList,
    @ocaml.doc(
      "<p>The name of the cluster that you are associating with encryption configuration.</p>"
    )
    clusterName: string_,
  }
  type response = {update: option<update>}
  @module("@aws-sdk/client-eks") @new
  external new: request => t = "AssociateEncryptionConfigCommand"
  let make = (~encryptionConfig, ~clusterName, ~clientRequestToken=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      encryptionConfig: encryptionConfig,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata that you apply to the cluster to assist with categorization and
            organization. Each tag consists of a key and an optional value, both of which you
            define. Cluster tags do not propagate to any other resources associated with the
            cluster.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc(
      "<p>The configuration settings required to connect the Kubernetes cluster to the Amazon EKS control plane.</p>"
    )
    connectorConfig: connectorConfigRequest,
    @ocaml.doc("<p>Define a unique name for this cluster for your Region.</p>") name: clusterName,
  }
  type response = {cluster: option<cluster>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "RegisterClusterCommand"
  let make = (~connectorConfig, ~name, ~tags=?, ~clientRequestToken=?, ()) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      connectorConfig: connectorConfig,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNodegroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the node group to describe.</p>") nodegroupName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster associated with the node group.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of your node group.</p>") nodegroup: option<nodegroup>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeNodegroupCommand"
  let make = (~nodegroupName, ~clusterName, ()) =>
    new({nodegroupName: nodegroupName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  type request = {@ocaml.doc("<p>The name of the cluster to describe.</p>") name: string_}
  type response = {
    @ocaml.doc("<p>The full description of your specified cluster.</p>") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeClusterCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAddon = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html\">
               <code>ListAddons</code>
            </a>.</p>")
    addonName: string_,
    @ocaml.doc("<p>The name of the cluster.</p>") clusterName: clusterName,
  }
  type response = {addon: option<addon>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeAddonCommand"
  let make = (~addonName, ~clusterName, ()) => new({addonName: addonName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the connected cluster to deregister.</p>") name: string_,
  }
  type response = {cluster: option<cluster>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "DeregisterClusterCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNodegroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the node group to delete.</p>") nodegroupName: string_,
    @ocaml.doc("<p>The name of the Amazon EKS cluster that is associated with your node
            group.</p>")
    clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of your deleted node group.</p>")
    nodegroup: option<nodegroup>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DeleteNodegroupCommand"
  let make = (~nodegroupName, ~clusterName, ()) =>
    new({nodegroupName: nodegroupName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {@ocaml.doc("<p>The name of the cluster to delete.</p>") name: string_}
  type response = {
    @ocaml.doc("<p>The full description of the cluster to delete.</p>") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DeleteClusterCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAddon = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this option preserves the add-on software on your cluster but Amazon EKS stops managing any settings for the add-on. If an IAM
            account is associated with the add-on, it is not removed.</p>")
    preserve: option<boolean_>,
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html\">
               <code>ListAddons</code>
            </a>.</p>")
    addonName: string_,
    @ocaml.doc("<p>The name of the cluster to delete the add-on from.</p>")
    clusterName: clusterName,
  }
  type response = {addon: option<addon>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "DeleteAddonCommand"
  let make = (~addonName, ~clusterName, ~preserve=?, ()) =>
    new({preserve: preserve, addonName: addonName, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNodegroup = {
  type t
  type request = {
    @ocaml.doc("<p>The AMI version of the Amazon EKS optimized AMI to use with your node group.
            By default, the latest available AMI version for the node group's current Kubernetes
            version is used. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html\">Amazon EKS optimized Amazon Linux 2 AMI versions</a> in the <i>Amazon EKS User Guide</i>.
            If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>releaseVersion</code>,
            or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    releaseVersion: option<string_>,
    @ocaml.doc("<p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes
            version of the cluster is used, and this is the only accepted specified value.
            If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>version</code>,
            or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    version: option<string_>,
    @ocaml.doc("<p>The capacity type for your node group.</p>") capacityType: option<capacityTypes>,
    @ocaml.doc("<p>The node group update configuration.</p>")
    updateConfig: option<nodegroupUpdateConfig>,
    @ocaml.doc("<p>An object representing a node group's launch template specification. If specified,
            then do not specify <code>instanceTypes</code>, <code>diskSize</code>, or
                <code>remoteAccess</code> and make sure that the launch template meets the
            requirements in <code>launchTemplateSpecification</code>.</p>")
    launchTemplate: option<launchTemplateSpecification>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>The metadata to apply to the node group to assist with categorization and
            organization. Each tag consists of a key and an optional value. You
            define both. Node group tags do not propagate to any other resources associated with the node
            group, such as the Amazon EC2 instances or subnets.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The Kubernetes taints to be applied to the nodes in the node group.</p>")
    taints: option<taintsList>,
    @ocaml.doc("<p>The Kubernetes labels to be applied to the nodes in the node group when they are
            created.</p>")
    labels: option<labelsMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The
                Amazon EKS worker node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf. Nodes receive permissions for these API calls
            through an IAM instance profile and associated policies. Before you can
            launch nodes and register them into a cluster, you must create an IAM
            role for those nodes to use when they are launched. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html\">Amazon EKS node IAM role</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>. If you specify <code>launchTemplate</code>, then don't specify 
                <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html\">
               <code>IamInstanceProfile</code>
            </a> in your launch template,
            or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    nodeRole: string_,
    @ocaml.doc("<p>The remote access (SSH) configuration to use with your node group. If you specify <code>launchTemplate</code>,
            then don't specify  <code>remoteAccess</code>, or the node group  deployment
            will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    remoteAccess: option<remoteAccessConfig>,
    @ocaml.doc("<p>The AMI type for your node group. GPU instance types should use the
                <code>AL2_x86_64_GPU</code> AMI type. Non-GPU instances should use the
                <code>AL2_x86_64</code> AMI type. Arm instances should use the
                <code>AL2_ARM_64</code> AMI type. All types use the Amazon EKS optimized
            Amazon Linux 2 AMI. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI,
                then don't specify <code>amiType</code>, or the node group  deployment
            will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    amiType: option<amitypes>,
    @ocaml.doc("<p>Specify the instance types for a node group. If you specify a GPU instance type, be
            sure to specify <code>AL2_x86_64_GPU</code> with the <code>amiType</code> parameter. If
            you specify <code>launchTemplate</code>, then you can specify zero or one instance type
            in your launch template <i>or</i> you can specify 0-20 instance types for
                <code>instanceTypes</code>. If however, you specify an instance type in your launch
            template <i>and</i> specify any <code>instanceTypes</code>, the node group
            deployment will fail. If you don't specify an instance type in a launch template or for
                <code>instanceTypes</code>, then <code>t3.medium</code> is used, by default. If you
            specify <code>Spot</code> for <code>capacityType</code>, then we recommend specifying
            multiple values for <code>instanceTypes</code>. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types\">Managed node group capacity types</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in
            the <i>Amazon EKS User Guide</i>.</p>")
    instanceTypes: option<stringList>,
    @ocaml.doc("<p>The subnets to use for the Auto Scaling group that is created for your node group.
            If you specify <code>launchTemplate</code>, then don't specify  <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html\">
               <code>SubnetId</code>
            </a> in your launch template, or the node group 
            deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    subnets: stringList,
    @ocaml.doc("<p>The root device disk size (in GiB) for your node group instances. The default disk
            size is 20 GiB. If you specify <code>launchTemplate</code>, then don't specify  <code>diskSize</code>,
            or the node group  deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>")
    diskSize: option<boxedInteger>,
    @ocaml.doc("<p>The scaling configuration details for the Auto Scaling group that is created for your
            node group.</p>")
    scalingConfig: option<nodegroupScalingConfig>,
    @ocaml.doc("<p>The unique name to give your node group.</p>") nodegroupName: string_,
    @ocaml.doc("<p>The name of the cluster to create the node group in.</p>") clusterName: string_,
  }
  type response = {
    @ocaml.doc("<p>The full description of your new node group.</p>") nodegroup: option<nodegroup>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "CreateNodegroupCommand"
  let make = (
    ~nodeRole,
    ~subnets,
    ~nodegroupName,
    ~clusterName,
    ~releaseVersion=?,
    ~version=?,
    ~capacityType=?,
    ~updateConfig=?,
    ~launchTemplate=?,
    ~clientRequestToken=?,
    ~tags=?,
    ~taints=?,
    ~labels=?,
    ~remoteAccess=?,
    ~amiType=?,
    ~instanceTypes=?,
    ~diskSize=?,
    ~scalingConfig=?,
    (),
  ) =>
    new({
      releaseVersion: releaseVersion,
      version: version,
      capacityType: capacityType,
      updateConfig: updateConfig,
      launchTemplate: launchTemplate,
      clientRequestToken: clientRequestToken,
      tags: tags,
      taints: taints,
      labels: labels,
      nodeRole: nodeRole,
      remoteAccess: remoteAccess,
      amiType: amiType,
      instanceTypes: instanceTypes,
      subnets: subnets,
      diskSize: diskSize,
      scalingConfig: scalingConfig,
      nodegroupName: nodegroupName,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The encryption configuration for the cluster.</p>")
    encryptionConfig: option<encryptionConfigList>,
    @ocaml.doc("<p>The metadata to apply to the cluster to assist with categorization and organization.
            Each tag consists of a key and an optional value. You define both.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>Enable or disable exporting the Kubernetes control plane logs for your cluster to
                CloudWatch Logs. By default, cluster control plane logs aren't exported to
                CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS Cluster control plane logs</a> in the
                <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>
        <note>
            <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
                exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">CloudWatch
                Pricing</a>.</p>
        </note>")
    logging: option<logging>,
    @ocaml.doc("<p>The Kubernetes network configuration for the cluster.</p>")
    kubernetesNetworkConfig: option<kubernetesNetworkConfigRequest>,
    @ocaml.doc("<p>The VPC configuration that's used by the cluster control plane. Amazon EKS VPC resources have
            specific requirements to work properly with Kubernetes. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html\">Cluster VPC
                Considerations</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html\">Cluster Security Group Considerations</a> in the
            <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five
            security groups. However, we recommend that you use a dedicated security group for your
            cluster control plane.</p>")
    resourcesVpcConfig: vpcConfigRequest,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the
            Kubernetes control plane to make calls to Amazon Web Services API operations on your
            behalf. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html\">Amazon EKS Service IAM Role</a> in the <i>
               <i>Amazon EKS User Guide</i>
            </i>.</p>")
    roleArn: string_,
    @ocaml.doc("<p>The desired Kubernetes version for your cluster. If you don't specify a value here,
            the latest version available in Amazon EKS is used.</p>")
    version: option<string_>,
    @ocaml.doc("<p>The unique name to give to your cluster.</p>") name: clusterName,
  }
  type response = {
    @ocaml.doc("<p>The full description of your new cluster.</p>") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~resourcesVpcConfig,
    ~roleArn,
    ~name,
    ~encryptionConfig=?,
    ~tags=?,
    ~clientRequestToken=?,
    ~logging=?,
    ~kubernetesNetworkConfig=?,
    ~version=?,
    (),
  ) =>
    new({
      encryptionConfig: encryptionConfig,
      tags: tags,
      clientRequestToken: clientRequestToken,
      logging: logging,
      kubernetesNetworkConfig: kubernetesNetworkConfig,
      resourcesVpcConfig: resourcesVpcConfig,
      roleArn: roleArn,
      version: version,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAddon = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata to apply to the cluster to assist with categorization and organization.
            Each tag consists of a key and an optional value. You define both.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    clientRequestToken: option<string_>,
    @ocaml.doc("<p>How to resolve parameter value conflicts when migrating an existing add-on to an
                Amazon EKS add-on.</p>")
    resolveConflicts: option<resolveConflicts>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
     permissions assigned to the node IAM role. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html\">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
        <note>
            <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
                your cluster. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html\">Enabling
                    IAM roles for service accounts on your cluster</a> in the
                <i>Amazon EKS User Guide</i>.</p>
         </note>")
    serviceAccountRoleArn: option<roleArn>,
    @ocaml.doc("<p>The version of the add-on. The version must match one of the versions returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html\">
               <code>DescribeAddonVersions</code>
            </a>.</p>")
    addonVersion: option<string_>,
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html\">
               <code>DescribeAddonVersions</code>
            </a>.</p>")
    addonName: string_,
    @ocaml.doc("<p>The name of the cluster to create the add-on for.</p>") clusterName: clusterName,
  }
  type response = {addon: option<addon>}
  @module("@aws-sdk/client-eks") @new external new: request => t = "CreateAddonCommand"
  let make = (
    ~addonName,
    ~clusterName,
    ~tags=?,
    ~clientRequestToken=?,
    ~resolveConflicts=?,
    ~serviceAccountRoleArn=?,
    ~addonVersion=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      resolveConflicts: resolveConflicts,
      serviceAccountRoleArn: serviceAccountRoleArn,
      addonVersion: addonVersion,
      addonName: addonName,
      clusterName: clusterName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAddonVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the add-on. The name must match one of the names returned by <a href=\"https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html\">
               <code>ListAddons</code>
            </a>.</p>")
    addonName: option<string_>,
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribeAddonVersionsRequest</code> where <code>maxResults</code> was used and
            the results exceeded the value of that parameter. Pagination continues from the end of
            the previous results that returned the <code>nextToken</code> value.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>")
    maxResults: option<describeAddonVersionsRequestMaxResults>,
    @ocaml.doc("<p>The Kubernetes versions that the add-on can be used with.</p>")
    kubernetesVersion: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated
                <code>DescribeAddonVersionsResponse</code> where <code>maxResults</code> was used
            and the results exceeded the value of that parameter. Pagination continues from the end
            of the previous results that returned the <code>nextToken</code> value.</p>
        <note>
            <p>This token should be treated as an opaque identifier that is used only to
                retrieve the next items in a list and not for other programmatic purposes.</p>
        </note>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The list of available versions with Kubernetes version compatibility.</p>")
    addons: option<addons>,
  }
  @module("@aws-sdk/client-eks") @new external new: request => t = "DescribeAddonVersionsCommand"
  let make = (~addonName=?, ~nextToken=?, ~maxResults=?, ~kubernetesVersion=?, ()) =>
    new({
      addonName: addonName,
      nextToken: nextToken,
      maxResults: maxResults,
      kubernetesVersion: kubernetesVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
