type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-emr-containers") @new
external createClient: unit => awsServiceClient = "EMRcontainersClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type virtualClusterState = [
  | @as("ARRESTED") #ARRESTED
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("RUNNING") #RUNNING
]
type virtualClusterArn = string
type uriString = string
type stringEmpty256 = string
type string256 = string
type string128 = string
type string1024 = string
type sparkSubmitParameters = string
type rsiArn = string
type resourceNameString = string
type resourceIdString = string
type requestIdentityUserArn = string
type releaseLabel = string
type persistentAppUI = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type nextToken = string
type logGroupName = string
type kubernetesNamespace = string
type jobRunState = [
  | @as("COMPLETED") #COMPLETED
  | @as("CANCEL_PENDING") #CANCEL_PENDING
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("RUNNING") #RUNNING
  | @as("SUBMITTED") #SUBMITTED
  | @as("PENDING") #PENDING
]
type jobArn = string
type javaInteger = int
type iamroleArn = string
type failureReason = [
  | @as("CLUSTER_UNAVAILABLE") #CLUSTER_UNAVAILABLE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("USER_ERROR") #USER_ERROR
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type entryPointPath = string
type entryPointArgument = string
type endpointType = string
type endpointState = [
  | @as("TERMINATED_WITH_ERRORS") #TERMINATED_WITH_ERRORS
  | @as("TERMINATED") #TERMINATED
  | @as("TERMINATING") #TERMINATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type endpointArn = string
type date = Js.Date.t
type containerProviderType = [@as("EKS") #EKS]
type clusterId = string
type clientToken = string
type base64Encoded = string
type acmcertArn = string
type virtualClusterStates = array<virtualClusterState>
type tagMap = Js.Dict.t<stringEmpty256>
type tagKeyList = array<string128>
type subnetIds = array<string256>
type sensitivePropertiesMap = Js.Dict.t<string1024>
@ocaml.doc(
  "<p> Amazon S3 configuration for monitoring log publishing. You can configure your jobs to send log information to Amazon S3.</p>"
)
type s3MonitoringConfiguration = {
  @ocaml.doc("<p>Amazon S3 destination URI for log publishing.</p>") logUri: uriString,
}
type jobRunStates = array<jobRunState>
type entryPointArguments = array<entryPointArgument>
type endpointTypes = array<endpointType>
type endpointStates = array<endpointState>
@ocaml.doc("<p>The information about the EKS cluster.</p>")
type eksInfo = {
  @ocaml.doc("<p>The namespaces of the EKS cluster.</p>") namespace: option<kubernetesNamespace>,
}
@ocaml.doc(
  "<p>A configuration for CloudWatch monitoring. You can configure your jobs to send log information to CloudWatch Logs.</p>"
)
type cloudWatchMonitoringConfiguration = {
  @ocaml.doc("<p>The specified name prefix for log streams.</p>")
  logStreamNamePrefix: option<string256>,
  @ocaml.doc("<p>The name of the log group for log publishing.</p>") logGroupName: logGroupName,
}
@ocaml.doc("<p>The entity representing certificate data generated for managed endpoint.</p>")
type certificate = {
  @ocaml.doc("<p>The base64 encoded PEM certificate data generated for managed endpoint.</p>")
  certificateData: option<base64Encoded>,
  @ocaml.doc("<p>The ARN of the certificate generated for managed endpoint.</p>")
  certificateArn: option<acmcertArn>,
}
@ocaml.doc("<p>The information about job driver for Spark submit.</p>")
type sparkSubmitJobDriver = {
  @ocaml.doc("<p>The Spark submit parameters that are used for job runs.</p>")
  sparkSubmitParameters: option<sparkSubmitParameters>,
  @ocaml.doc("<p>The arguments for job application.</p>")
  entryPointArguments: option<entryPointArguments>,
  @ocaml.doc("<p>The entry point of job application.</p>") entryPoint: entryPointPath,
}
@ocaml.doc("<p>Configuration setting for monitoring.</p>")
type monitoringConfiguration = {
  @ocaml.doc("<p>Amazon S3 configuration for monitoring log publishing.</p>")
  s3MonitoringConfiguration: option<s3MonitoringConfiguration>,
  @ocaml.doc("<p>Monitoring configurations for CloudWatch.</p>")
  cloudWatchMonitoringConfiguration: option<cloudWatchMonitoringConfiguration>,
  @ocaml.doc("<p>Monitoring configurations for the persistent application UI. </p>")
  persistentAppUI: option<persistentAppUI>,
}
@ocaml.doc("<p>The information about the container used for a job run or a managed endpoint.</p>")
type containerInfo = {
  @ocaml.doc("<p>The information about the EKS cluster.</p>") eksInfo: option<eksInfo>,
}
module ContainerInfo = {
  type t = EksInfo(eksInfo)
  exception ContainerInfoUnspecified
  let classify = value =>
    switch value {
    | {eksInfo: Some(x)} => EksInfo(x)
    | _ => raise(ContainerInfoUnspecified)
    }

  let make = value =>
    switch value {
    | EksInfo(x) => {eksInfo: Some(x)}
    }
}
@ocaml.doc("<p>Specify the driver that the job runs on.</p>")
type jobDriver = {
  @ocaml.doc("<p>The job driver parameters specified for spark submit.</p>")
  sparkSubmitJobDriver: option<sparkSubmitJobDriver>,
}
@ocaml.doc("<p>The information about the container provider.</p>")
type containerProvider = {
  @ocaml.doc("<p>The information about the container cluster.</p>") info: option<containerInfo>,
  @ocaml.doc("<p>The ID of the container cluster.</p>") id: clusterId,
  @ocaml.doc("<p>The type of the container provider. EKS is the only supported type as of now.</p>")
  @as("type")
  type_: containerProviderType,
}
@ocaml.doc(
  "<p>This entity describes a virtual cluster. A virtual cluster is a Kubernetes namespace that Amazon EMR is registered with. Amazon EMR uses virtual clusters to run jobs and host endpoints. Multiple virtual clusters can be backed by the same physical cluster. However, each virtual cluster maps to one namespace on an EKS cluster. Virtual clusters do not create any active resources that contribute to your bill or that require lifecycle management outside the service.</p>"
)
type virtualCluster = {
  @ocaml.doc("<p>The assigned tags of the virtual cluster.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date and time when the virtual cluster is created.</p>")
  createdAt: option<date>,
  @ocaml.doc("<p>The container provider of the virtual cluster.</p>")
  containerProvider: option<containerProvider>,
  @ocaml.doc("<p>The state of the virtual cluster.</p>") state: option<virtualClusterState>,
  @ocaml.doc("<p>The ARN of the virtual cluster.</p>") arn: option<virtualClusterArn>,
  @ocaml.doc("<p>The name of the virtual cluster.</p>") name: option<resourceNameString>,
  @ocaml.doc("<p>The ID of the virtual cluster.</p>") id: option<resourceIdString>,
}
type virtualClusters = array<virtualCluster>
type rec configurationList = array<configuration>
and configuration = {
  @ocaml.doc("<p>A list of additional configurations to apply within a configuration object.</p>")
  configurations: option<configurationList>,
  @ocaml.doc("<p>A set of properties specified within a configuration classification.</p>")
  properties: option<sensitivePropertiesMap>,
  @ocaml.doc("<p>The classification within a configuration.</p>") classification: string1024,
}
@ocaml.doc("<p>A configuration specification to be used to override existing configurations.</p>")
type configurationOverrides = {
  @ocaml.doc("<p>The configurations for monitoring.</p>")
  monitoringConfiguration: option<monitoringConfiguration>,
  @ocaml.doc("<p>The configurations for the application running by the job run. </p>")
  applicationConfiguration: option<configurationList>,
}
@ocaml.doc(
  "<p>This entity describes a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS. </p>"
)
type jobRun = {
  @ocaml.doc("<p>The assigned tags of the job run.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The reasons why the job run has failed.</p>") failureReason: option<failureReason>,
  @ocaml.doc("<p>Additional details of the job run state.</p>") stateDetails: option<string256>,
  @ocaml.doc("<p>The date and time when the job run has finished.</p>") finishedAt: option<date>,
  @ocaml.doc("<p>The user who created the job run.</p>") createdBy: option<requestIdentityUserArn>,
  @ocaml.doc("<p>The date and time when the job run was created.</p>") createdAt: option<date>,
  @ocaml.doc("<p>Parameters of job driver for the job run.</p>") jobDriver: option<jobDriver>,
  @ocaml.doc("<p>The configuration settings that are used to override default configuration.</p>")
  configurationOverrides: option<configurationOverrides>,
  @ocaml.doc("<p>The release version of Amazon EMR.</p>") releaseLabel: option<releaseLabel>,
  @ocaml.doc("<p>The execution role ARN of the job run.</p>") executionRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>The client token used to start a job run.</p>") clientToken: option<clientToken>,
  @ocaml.doc("<p>The state of the job run. </p>") state: option<jobRunState>,
  @ocaml.doc("<p>The ARN of job run.</p>") arn: option<jobArn>,
  @ocaml.doc("<p>The ID of the job run's virtual cluster.</p>")
  virtualClusterId: option<resourceIdString>,
  @ocaml.doc("<p>The name of the job run.</p>") name: option<resourceNameString>,
  @ocaml.doc("<p>The ID of the job run.</p>") id: option<resourceIdString>,
}
@ocaml.doc("<p>This entity represents the endpoint that is managed by Amazon EMR on EKS.</p>")
type endpoint = {
  @ocaml.doc("<p>The tags of the endpoint. 
      </p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>
         The reasons why the endpoint has failed.
      </p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>
         Additional details of the endpoint state.
      </p>")
  stateDetails: option<string256>,
  @ocaml.doc("<p>The subnet IDs of the endpoint.
      </p>")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The security group configuration of the endpoint. 
      </p>")
  securityGroup: option<string256>,
  @ocaml.doc("<p>The date and time when the endpoint was created.</p>") createdAt: option<date>,
  @ocaml.doc("<p>The server URL of the endpoint.</p>") serverUrl: option<uriString>,
  @ocaml.doc(
    "<p>The configuration settings that are used to override existing configurations for endpoints.</p>"
  )
  configurationOverrides: option<configurationOverrides>,
  @ocaml.doc(
    "<p>The certificate generated by emr control plane on customer behalf to secure the managed endpoint.</p>"
  )
  certificateAuthority: option<certificate>,
  @ocaml.doc(
    "<p>The certificate ARN of the endpoint. This field is under deprecation and will be removed in future.</p>"
  )
  certificateArn: option<acmcertArn>,
  @ocaml.doc("<p>The execution role ARN of the endpoint.</p>") executionRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>The EMR release version to be used for the endpoint.</p>")
  releaseLabel: option<releaseLabel>,
  @ocaml.doc("<p>The state of the endpoint.</p>") state: option<endpointState>,
  @ocaml.doc("<p>The type of the endpoint.</p>") @as("type") type_: option<endpointType>,
  @ocaml.doc("<p>The ID of the endpoint's virtual cluster.</p>")
  virtualClusterId: option<resourceIdString>,
  @ocaml.doc("<p>The ARN of the endpoint.</p>") arn: option<endpointArn>,
  @ocaml.doc("<p>The name of the endpoint.</p>") name: option<resourceNameString>,
  @ocaml.doc("<p>The ID of the endpoint.</p>") id: option<resourceIdString>,
}
type jobRuns = array<jobRun>
type endpoints = array<endpoint>
@ocaml.doc("<p>Amazon EMR on EKS provides a deployment option for Amazon EMR that allows you to run
         open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon EKS). With
         this deployment option, you can focus on running analytics workloads while Amazon EMR on
         EKS builds, configures, and manages containers for open-source applications. For more
         information about Amazon EMR on EKS concepts and tasks, see <a href=\"https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html\">What is Amazon EMR on EKS</a>.</p>
         <p>
            <i>Amazon EMR containers</i> is the API name for Amazon EMR on EKS. The
            <code>emr-containers</code> prefix is used in the following scenarios: </p>
         <ul>
            <li>
               <p>It is the prefix in the CLI commands for Amazon EMR on EKS. For example, <code>aws
                  emr-containers start-job-run</code>.</p>
            </li>
            <li>
               <p>It is the prefix before IAM policy actions for Amazon EMR on EKS. For example, <code>\"Action\": [
            \"emr-containers:StartJobRun\"]</code>. For more information, see <a href=\"https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions\">Policy actions for Amazon EMR on EKS</a>.</p>
            </li>
            <li>
               <p>It is the prefix used in Amazon EMR on EKS service endpoints. For example, <code>emr-containers.us-east-2.amazonaws.com</code>. For more
            information, see <a href=\"https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints\">Amazon EMR on EKS Service Endpoints</a>.</p>
            </li>
         </ul>")
module DeleteVirtualCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual cluster that will be deleted.</p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>This output contains the ID of the virtual cluster that will be deleted. </p>")
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DeleteVirtualClusterCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteManagedEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the endpoint's virtual cluster.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>The ID of the managed endpoint.</p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The output displays the ID of the endpoint's virtual cluster.</p>")
    virtualClusterId: option<resourceIdString>,
    @ocaml.doc("<p>The output displays the ID of the managed endpoint.</p>")
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DeleteManagedEndpointCommand"
  let make = (~virtualClusterId, ~id, ()) => new({virtualClusterId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual cluster for which the job run will be canceled.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>The ID of the job run to cancel.</p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc(
      "<p>The output contains the virtual cluster ID for which the job run is cancelled.</p>"
    )
    virtualClusterId: option<resourceIdString>,
    @ocaml.doc("<p>The output contains the ID of the cancelled job run.</p>")
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "CancelJobRunCommand"
  let make = (~virtualClusterId, ~id, ()) => new({virtualClusterId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys of the resources.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of resources.</p>") resourceArn: rsiArn,
  }
  type response = {.}
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to resources.</p>") tags: tagMap,
    @ocaml.doc("<p>The ARN of resources.</p>") resourceArn: rsiArn,
  }
  type response = {.}
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The ARN of tagged resources.</p>") resourceArn: rsiArn}
  type response = {@ocaml.doc("<p>The tags assigned to resources.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateVirtualCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to the virtual cluster.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The client token of the virtual cluster.</p>") clientToken: clientToken,
    @ocaml.doc("<p>The container provider of the virtual cluster.</p>")
    containerProvider: containerProvider,
    @ocaml.doc("<p>The specified name of the virtual cluster.</p>") name: resourceNameString,
  }
  type response = {
    @ocaml.doc("<p>This output contains the ARN of virtual cluster.</p>")
    arn: option<virtualClusterArn>,
    @ocaml.doc("<p>This output contains the name of the virtual cluster.</p>")
    name: option<resourceNameString>,
    @ocaml.doc("<p>This output contains the virtual cluster ID.</p>") id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "CreateVirtualClusterCommand"
  let make = (~clientToken, ~containerProvider, ~name, ~tags=?, ()) =>
    new({tags, clientToken, containerProvider, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeVirtualCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual cluster that will be described.</p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>This output displays information about the specified virtual cluster.</p>")
    virtualCluster: option<virtualCluster>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeVirtualClusterCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVirtualClusters = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of virtual clusters to return. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of virtual clusters that can be listed.</p>")
    maxResults: option<javaInteger>,
    @ocaml.doc("<p>The states of the requested virtual clusters.</p>")
    states: option<virtualClusterStates>,
    @ocaml.doc("<p>The date and time before which the virtual clusters are created.</p>")
    createdBefore: option<date>,
    @ocaml.doc("<p>The date and time after which the virtual clusters are created.</p>")
    createdAfter: option<date>,
    @ocaml.doc(
      "<p>The container provider type of the virtual cluster. EKS is the only supported type as of now.</p>"
    )
    containerProviderType: option<containerProviderType>,
    @ocaml.doc("<p>The container provider ID of the virtual cluster.</p>")
    containerProviderId: option<string1024>,
  }
  type response = {
    @ocaml.doc("<p>This output displays the token for the next set of virtual clusters.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This output lists the specified virtual clusters.</p>")
    virtualClusters: option<virtualClusters>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListVirtualClustersCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~states=?,
    ~createdBefore=?,
    ~createdAfter=?,
    ~containerProviderType=?,
    ~containerProviderId=?,
    (),
  ) =>
    new({
      nextToken,
      maxResults,
      states,
      createdBefore,
      createdAfter,
      containerProviderType,
      containerProviderId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to job runs.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The configuration overrides for the job run.</p>")
    configurationOverrides: option<configurationOverrides>,
    @ocaml.doc("<p>The job driver for the job run.</p>") jobDriver: jobDriver,
    @ocaml.doc("<p>The Amazon EMR release version to use for the job run.</p>")
    releaseLabel: releaseLabel,
    @ocaml.doc("<p>The execution role ARN for the job run.</p>") executionRoleArn: iamroleArn,
    @ocaml.doc("<p>The client idempotency token of the job run request. </p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The virtual cluster ID for which the job run request is submitted.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>The name of the job run.</p>") name: option<resourceNameString>,
  }
  type response = {
    @ocaml.doc(
      "<p>This output displays the virtual cluster ID for which the job run was submitted.</p>"
    )
    virtualClusterId: option<resourceIdString>,
    @ocaml.doc("<p>This output lists the ARN of job run.</p>") arn: option<jobArn>,
    @ocaml.doc("<p>This output displays the name of the started job run.</p>")
    name: option<resourceNameString>,
    @ocaml.doc("<p>This output displays the started job run ID.</p>") id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "StartJobRunCommand"
  let make = (
    ~jobDriver,
    ~releaseLabel,
    ~executionRoleArn,
    ~clientToken,
    ~virtualClusterId,
    ~tags=?,
    ~configurationOverrides=?,
    ~name=?,
    (),
  ) =>
    new({
      tags,
      configurationOverrides,
      jobDriver,
      releaseLabel,
      executionRoleArn,
      clientToken,
      virtualClusterId,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateManagedEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The tags of the managed endpoint.
      </p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The client idempotency token for this create call.</p>")
    clientToken: clientToken,
    @ocaml.doc(
      "<p>The configuration settings that will be used to override existing configurations.</p>"
    )
    configurationOverrides: option<configurationOverrides>,
    @ocaml.doc(
      "<p>The certificate ARN provided by users for the managed endpoint. This fiedd is under deprecation and will be removed in future releases.</p>"
    )
    certificateArn: option<acmcertArn>,
    @ocaml.doc("<p>The ARN of the execution role.</p>") executionRoleArn: iamroleArn,
    @ocaml.doc("<p>The Amazon EMR release version.</p>") releaseLabel: releaseLabel,
    @ocaml.doc("<p>The type of the managed endpoint.</p>") @as("type") type_: endpointType,
    @ocaml.doc("<p>The ID of the virtual cluster for which a managed endpoint is created.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>The name of the managed endpoint.</p>") name: resourceNameString,
  }
  type response = {
    @ocaml.doc("<p>The output contains the ID of the virtual cluster.</p>")
    virtualClusterId: option<resourceIdString>,
    @ocaml.doc("<p>The output contains the ARN of the managed endpoint.</p>")
    arn: option<endpointArn>,
    @ocaml.doc("<p>The output contains the name of the managed endpoint.</p>")
    name: option<resourceNameString>,
    @ocaml.doc("<p>The output contains the ID of the managed endpoint.</p>")
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "CreateManagedEndpointCommand"
  let make = (
    ~clientToken,
    ~executionRoleArn,
    ~releaseLabel,
    ~type_,
    ~virtualClusterId,
    ~name,
    ~tags=?,
    ~configurationOverrides=?,
    ~certificateArn=?,
    (),
  ) =>
    new({
      tags,
      clientToken,
      configurationOverrides,
      certificateArn,
      executionRoleArn,
      releaseLabel,
      type_,
      virtualClusterId,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeManagedEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the endpoint's virtual cluster.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>This output displays ID of the managed endpoint.</p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>This output displays information about a managed endpoint.</p>")
    endpoint: option<endpoint>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeManagedEndpointCommand"
  let make = (~virtualClusterId, ~id, ()) => new({virtualClusterId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeJobRun = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual cluster for which the job run is submitted.</p>")
    virtualClusterId: resourceIdString,
    @ocaml.doc("<p>The ID of the job run request. </p>") id: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The output displays information about a job run.</p>") jobRun: option<jobRun>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeJobRunCommand"
  let make = (~virtualClusterId, ~id, ()) => new({virtualClusterId, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListManagedEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p> The token for the next set of managed endpoints to return. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of managed endpoints that can be listed.</p>")
    maxResults: option<javaInteger>,
    @ocaml.doc("<p>The states of the managed endpoints.</p>") states: option<endpointStates>,
    @ocaml.doc("<p>The types of the managed endpoints.</p>") types: option<endpointTypes>,
    @ocaml.doc("<p> The date and time after which the endpoints are created.</p>")
    createdAfter: option<date>,
    @ocaml.doc("<p>The date and time before which the endpoints are created.</p>")
    createdBefore: option<date>,
    @ocaml.doc("<p>The ID of the virtual cluster.</p>") virtualClusterId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p> The token for the next set of endpoints to return. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The managed endpoints to be listed.</p>") endpoints: option<endpoints>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListManagedEndpointsCommand"
  let make = (
    ~virtualClusterId,
    ~nextToken=?,
    ~maxResults=?,
    ~states=?,
    ~types=?,
    ~createdAfter=?,
    ~createdBefore=?,
    (),
  ) => new({nextToken, maxResults, states, types, createdAfter, createdBefore, virtualClusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListJobRuns = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of job runs to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of job runs that can be listed.</p>")
    maxResults: option<javaInteger>,
    @ocaml.doc("<p>The states of the job run.</p>") states: option<jobRunStates>,
    @ocaml.doc("<p>The name of the job run.</p>") name: option<resourceNameString>,
    @ocaml.doc("<p>The date and time after which the job runs were submitted.</p>")
    createdAfter: option<date>,
    @ocaml.doc("<p>The date and time before which the job runs were submitted.</p>")
    createdBefore: option<date>,
    @ocaml.doc("<p>The ID of the virtual cluster for which to list the job run. </p>")
    virtualClusterId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>This output displays the token for the next set of job runs.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This output lists information about the specified job runs.</p>")
    jobRuns: option<jobRuns>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "ListJobRunsCommand"
  let make = (
    ~virtualClusterId,
    ~nextToken=?,
    ~maxResults=?,
    ~states=?,
    ~name=?,
    ~createdAfter=?,
    ~createdBefore=?,
    (),
  ) => new({nextToken, maxResults, states, name, createdAfter, createdBefore, virtualClusterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
