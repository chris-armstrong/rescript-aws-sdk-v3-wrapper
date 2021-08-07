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
type clientToken = string
type acmcertArn = string
type virtualClusterStates = array<virtualClusterState>
type tagMap = Js.Dict.t<stringEmpty256>
type tagKeyList = array<string128>
type subnetIds = array<string256>
type sensitivePropertiesMap = Js.Dict.t<string1024>
type s3MonitoringConfiguration = {logUri: uriString}
type jobRunStates = array<jobRunState>
type entryPointArguments = array<entryPointArgument>
type endpointTypes = array<endpointType>
type endpointStates = array<endpointState>
type eksInfo = {namespace: option<string256>}
type cloudWatchMonitoringConfiguration = {
  logStreamNamePrefix: option<string256>,
  logGroupName: logGroupName,
}
type sparkSubmitJobDriver = {
  sparkSubmitParameters: option<sparkSubmitParameters>,
  entryPointArguments: option<entryPointArguments>,
  entryPoint: entryPointPath,
}
type monitoringConfiguration = {
  s3MonitoringConfiguration: option<s3MonitoringConfiguration>,
  cloudWatchMonitoringConfiguration: option<cloudWatchMonitoringConfiguration>,
  persistentAppUI: option<persistentAppUI>,
}
type containerInfo = {eksInfo: option<eksInfo>}
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
type jobDriver = {sparkSubmitJobDriver: option<sparkSubmitJobDriver>}
type containerProvider = {
  info: option<containerInfo>,
  id: string256,
  @as("type") type_: containerProviderType,
}
type virtualCluster = {
  tags: option<tagMap>,
  createdAt: option<date>,
  containerProvider: option<containerProvider>,
  state: option<virtualClusterState>,
  arn: option<virtualClusterArn>,
  name: option<resourceNameString>,
  id: option<resourceIdString>,
}
type virtualClusters = array<virtualCluster>
type rec configurationList = array<configuration>
and configuration = {
  configurations: option<configurationList>,
  properties: option<sensitivePropertiesMap>,
  classification: string1024,
}
type configurationOverrides = {
  monitoringConfiguration: option<monitoringConfiguration>,
  applicationConfiguration: option<configurationList>,
}
type jobRun = {
  tags: option<tagMap>,
  failureReason: option<failureReason>,
  stateDetails: option<string256>,
  finishedAt: option<date>,
  createdBy: option<requestIdentityUserArn>,
  createdAt: option<date>,
  jobDriver: option<jobDriver>,
  configurationOverrides: option<configurationOverrides>,
  releaseLabel: option<releaseLabel>,
  executionRoleArn: option<iamroleArn>,
  clientToken: option<clientToken>,
  state: option<jobRunState>,
  arn: option<jobArn>,
  virtualClusterId: option<resourceIdString>,
  name: option<resourceNameString>,
  id: option<resourceIdString>,
}
type endpoint = {
  tags: option<tagMap>,
  subnetIds: option<subnetIds>,
  securityGroup: option<string256>,
  createdAt: option<date>,
  serverUrl: option<uriString>,
  configurationOverrides: option<configurationOverrides>,
  certificateArn: option<acmcertArn>,
  executionRoleArn: option<iamroleArn>,
  releaseLabel: option<releaseLabel>,
  state: option<endpointState>,
  @as("type") type_: option<endpointType>,
  virtualClusterId: option<resourceIdString>,
  arn: option<endpointArn>,
  name: option<resourceNameString>,
  id: option<resourceIdString>,
}
type jobRuns = array<jobRun>
type endpoints = array<endpoint>

module DeleteVirtualCluster = {
  type t
  type request = {id: resourceIdString}
  type response = {id: option<resourceIdString>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DeleteVirtualClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteManagedEndpoint = {
  type t
  type request = {
    virtualClusterId: resourceIdString,
    id: resourceIdString,
  }
  type response = {
    virtualClusterId: option<resourceIdString>,
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DeleteManagedEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJobRun = {
  type t
  type request = {
    virtualClusterId: resourceIdString,
    id: resourceIdString,
  }
  type response = {
    virtualClusterId: option<resourceIdString>,
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "CancelJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: rsiArn,
  }
  type response = unit
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: rsiArn,
  }
  type response = unit
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: rsiArn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVirtualCluster = {
  type t
  type request = {
    tags: option<tagMap>,
    clientToken: clientToken,
    containerProvider: containerProvider,
    name: resourceNameString,
  }
  type response = {
    arn: option<virtualClusterArn>,
    name: option<resourceNameString>,
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "CreateVirtualClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVirtualCluster = {
  type t
  type request = {id: resourceIdString}
  type response = {virtualCluster: option<virtualCluster>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeVirtualClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVirtualClusters = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<javaInteger>,
    states: option<virtualClusterStates>,
    createdBefore: option<date>,
    createdAfter: option<date>,
    containerProviderType: option<containerProviderType>,
    containerProviderId: option<string1024>,
  }
  type response = {
    nextToken: option<nextToken>,
    virtualClusters: option<virtualClusters>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListVirtualClustersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartJobRun = {
  type t
  type request = {
    tags: option<tagMap>,
    configurationOverrides: option<configurationOverrides>,
    jobDriver: jobDriver,
    releaseLabel: releaseLabel,
    executionRoleArn: iamroleArn,
    clientToken: clientToken,
    virtualClusterId: resourceIdString,
    name: option<resourceNameString>,
  }
  type response = {
    virtualClusterId: option<resourceIdString>,
    arn: option<jobArn>,
    name: option<resourceNameString>,
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "StartJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateManagedEndpoint = {
  type t
  type request = {
    tags: option<tagMap>,
    clientToken: clientToken,
    configurationOverrides: option<configurationOverrides>,
    certificateArn: acmcertArn,
    executionRoleArn: iamroleArn,
    releaseLabel: releaseLabel,
    @as("type") type_: endpointType,
    virtualClusterId: resourceIdString,
    name: resourceNameString,
  }
  type response = {
    virtualClusterId: option<resourceIdString>,
    arn: option<endpointArn>,
    name: option<resourceNameString>,
    id: option<resourceIdString>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "CreateManagedEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeManagedEndpoint = {
  type t
  type request = {
    virtualClusterId: resourceIdString,
    id: resourceIdString,
  }
  type response = {endpoint: option<endpoint>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeManagedEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobRun = {
  type t
  type request = {
    virtualClusterId: resourceIdString,
    id: resourceIdString,
  }
  type response = {jobRun: option<jobRun>}
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "DescribeJobRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListManagedEndpoints = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<javaInteger>,
    states: option<endpointStates>,
    types: option<endpointTypes>,
    createdAfter: option<date>,
    createdBefore: option<date>,
    virtualClusterId: resourceIdString,
  }
  type response = {
    nextToken: option<nextToken>,
    endpoints: option<endpoints>,
  }
  @module("@aws-sdk/client-emr-containers") @new
  external new: request => t = "ListManagedEndpointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobRuns = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<javaInteger>,
    states: option<jobRunStates>,
    name: option<resourceNameString>,
    createdAfter: option<date>,
    createdBefore: option<date>,
    virtualClusterId: resourceIdString,
  }
  type response = {
    nextToken: option<nextToken>,
    jobRuns: option<jobRuns>,
  }
  @module("@aws-sdk/client-emr-containers") @new external new: request => t = "ListJobRunsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
