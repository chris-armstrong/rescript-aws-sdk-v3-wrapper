type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-apprunner") @new
external createClient: unit => awsServiceClient = "AppRunnerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcConnectorStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type vpcConnectorName = string
type uuid = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type startCommand = string
type sourceCodeVersionType = [@as("BRANCH") #BRANCH]
type serviceStatus = [
  | @as("OPERATION_IN_PROGRESS") #OPERATION_IN_PROGRESS
  | @as("PAUSED") #PAUSED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("RUNNING") #RUNNING
  | @as("CREATE_FAILED") #CREATE_FAILED
]
type serviceName = string
type serviceMaxResults = int
type serviceId = string
type runtimeEnvironmentVariablesValue = string
type runtimeEnvironmentVariablesKey = string
type runtime = [
  | @as("CORRETTO_11") #CORRETTO_11
  | @as("CORRETTO_8") #CORRETTO_8
  | @as("NODEJS_14") #NODEJS_14
  | @as("NODEJS_12") #NODEJS_12
  | @as("PYTHON_3") #PYTHON_3
]
type roleArn = string
type providerType = [@as("GITHUB") #GITHUB]
type operationType = [
  | @as("DELETE_SERVICE") #DELETE_SERVICE
  | @as("RESUME_SERVICE") #RESUME_SERVICE
  | @as("PAUSE_SERVICE") #PAUSE_SERVICE
  | @as("CREATE_SERVICE") #CREATE_SERVICE
  | @as("START_DEPLOYMENT") #START_DEPLOYMENT
]
type operationStatus = [
  | @as("ROLLBACK_SUCCEEDED") #ROLLBACK_SUCCEEDED
  | @as("ROLLBACK_FAILED") #ROLLBACK_FAILED
  | @as("ROLLBACK_IN_PROGRESS") #ROLLBACK_IN_PROGRESS
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type nullableBoolean = bool
type nextToken = string
type memory = string
type maxResults = int
type listOperationsMaxResults = int
type kmsKeyArn = string
type integer_ = int
type imageRepositoryType = [@as("ECR_PUBLIC") #ECR_PUBLIC | @as("ECR") #ECR]
type imageIdentifier = string
type healthCheckUnhealthyThreshold = int
type healthCheckTimeout = int
type healthCheckProtocol = [@as("HTTP") #HTTP | @as("TCP") #TCP]
type healthCheckPath = string
type healthCheckInterval = int
type healthCheckHealthyThreshold = int
type errorMessage = string
type egressType = [@as("VPC") #VPC | @as("DEFAULT") #DEFAULT]
type domainName = string
type describeCustomDomainsMaxResults = int
type customDomainAssociationStatus = [
  | @as("BINDING_CERTIFICATE") #BINDING_CERTIFICATE
  | @as("PENDING_CERTIFICATE_DNS_VALIDATION") #PENDING_CERTIFICATE_DNS_VALIDATION
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
type cpu = string
type connectionStatus = [
  | @as("DELETED") #DELETED
  | @as("ERROR") #ERROR
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING_HANDSHAKE") #PENDING_HANDSHAKE
]
type connectionName = string
type configurationSource = [@as("API") #API | @as("REPOSITORY") #REPOSITORY]
type certificateValidationRecordStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type buildCommand = string
type boolean_ = bool
type autoScalingConfigurationStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type autoScalingConfigurationName = string
type appRunnerResourceArn = string
type asconfigMinSize = int
type asconfigMaxSize = int
type asconfigMaxConcurrency = int
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>Describes a tag that is applied to an App Runner resource. A tag is a metadata item consisting of a key-value pair.</p>"
)
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: option<tagKey>,
}
type stringList = array<string_>
@ocaml.doc(
  "<p>Identifies a version of code that App Runner refers to within a source code repository.</p>"
)
type sourceCodeVersion = {
  @ocaml.doc("<p>A source code version.</p>
         <p>For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.</p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p>The type of version identifier.</p>
         <p>For a git-based repository, branches represent versions.</p>")
  @as("Type")
  type_: sourceCodeVersionType,
}
@ocaml.doc("<p>Provides summary information for an App Runner service.</p>
         <p>This type contains limited information about a service. It doesn't include configuration details. It's returned by the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html\">ListServices</a> action. Complete service information is returned by the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html\">CreateService</a>, <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html\">DescribeService</a>, and <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html\">DeleteService</a> actions using the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_Service.html\">Service</a> type.</p>")
type serviceSummary = {
  @ocaml.doc("<p>The current state of the App Runner service. These particular values mean the following.</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_FAILED</code> – The service failed to create. Read the failure events and logs, change any parameters that need to be fixed,
          and retry the call to create the service.</p>
               <p>The failed service isn't usable, and still counts towards your service quota. When you're done analyzing the failure, delete the service.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure
          that all related resources are removed.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<serviceStatus>,
  @ocaml.doc(
    "<p>The time when the App Runner service was last updated. It's in theUnix time stamp format.</p>"
  )
  @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>"
  )
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>"
  )
  @as("ServiceUrl")
  serviceUrl: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this service.</p>") @as("ServiceArn")
  serviceArn: option<appRunnerResourceArn>,
  @ocaml.doc(
    "<p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>"
  )
  @as("ServiceId")
  serviceId: option<serviceId>,
  @ocaml.doc("<p>The customer-provided service name.</p>") @as("ServiceName")
  serviceName: option<serviceName>,
}
type runtimeEnvironmentVariables = Js.Dict.t<runtimeEnvironmentVariablesValue>
@ocaml.doc(
  "<p>Provides summary information for an operation that occurred on an App Runner service.</p>"
)
type operationSummary = {
  @ocaml.doc(
    "<p>The time when the operation was last updated. It's in the Unix time stamp format.</p>"
  )
  @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when the operation ended. It's in the Unix time stamp format.</p>")
  @as("EndedAt")
  endedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when the operation started. It's in the Unix time stamp format.</p>")
  @as("StartedAt")
  startedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the resource that the operation acted on (for example, an App Runner service).</p>"
  )
  @as("TargetArn")
  targetArn: option<appRunnerResourceArn>,
  @ocaml.doc("<p>The current state of the operation.</p>") @as("Status")
  status: option<operationStatus>,
  @ocaml.doc("<p>The type of operation. It indicates a specific action that occured.</p>")
  @as("Type")
  type_: option<operationType>,
  @ocaml.doc(
    "<p>A unique ID of this operation. It's unique in the scope of the App Runner service.</p>"
  )
  @as("Id")
  id: option<uuid>,
}
@ocaml.doc(
  "<p>Describes the runtime configuration of an App Runner service instance (scaling unit).</p>"
)
type instanceConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls
      any Amazon Web Services APIs.</p>")
  @as("InstanceRoleArn")
  instanceRoleArn: option<roleArn>,
  @ocaml.doc("<p>The amount of memory, in MB or GB, reserved for each instance of your App Runner service.</p>
         <p>Default: <code>2 GB</code>
         </p>")
  @as("Memory")
  memory: option<memory>,
  @ocaml.doc("<p>The number of CPU units reserved for each instance of your App Runner service.</p>
         <p>Default: <code>1 vCPU</code>
         </p>")
  @as("Cpu")
  cpu: option<cpu>,
}
@ocaml.doc(
  "<p>Describes the settings for the health check that App Runner performs to monitor the health of a service.</p>"
)
type healthCheckConfiguration = {
  @ocaml.doc("<p>The number of consecutive checks that must fail before App Runner decides that the service is unhealthy.</p>
         <p>Default: <code>5</code>
         </p>")
  @as("UnhealthyThreshold")
  unhealthyThreshold: option<healthCheckUnhealthyThreshold>,
  @ocaml.doc("<p>The number of consecutive checks that must succeed before App Runner decides that the service is healthy.</p>
         <p>Default: <code>1</code>
         </p>")
  @as("HealthyThreshold")
  healthyThreshold: option<healthCheckHealthyThreshold>,
  @ocaml.doc("<p>The time, in seconds, to wait for a health check response before deciding it failed.</p>
         <p>Default: <code>2</code>
         </p>")
  @as("Timeout")
  timeout: option<healthCheckTimeout>,
  @ocaml.doc("<p>The time interval, in seconds, between health checks.</p>
         <p>Default: <code>5</code>
         </p>")
  @as("Interval")
  interval: option<healthCheckInterval>,
  @ocaml.doc("<p>The URL that health check requests are sent to.</p>
         <p>
            <code>Path</code> is only applicable when you set <code>Protocol</code> to <code>HTTP</code>.</p>
         <p>Default: <code>\"/\"</code>
         </p>")
  @as("Path")
  path: option<healthCheckPath>,
  @ocaml.doc("<p>The IP protocol that App Runner uses to perform health checks for your service.</p>
         <p>If you set <code>Protocol</code> to <code>HTTP</code>, App Runner sends health check requests to the HTTP path specified by <code>Path</code>.</p>
         <p>Default: <code>TCP</code>
         </p>")
  @as("Protocol")
  protocol: option<healthCheckProtocol>,
}
@ocaml.doc(
  "<p>Describes a custom encryption key that App Runner uses to encrypt copies of the source repository and service logs.</p>"
)
type encryptionConfiguration = {
  @ocaml.doc("<p>The ARN of the KMS key that's used for encryption.</p>") @as("KmsKey")
  kmsKey: kmsKeyArn,
}
@ocaml.doc(
  "<p>Describes configuration settings related to outbound network traffic of an App Runner service.</p>"
)
type egressConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when <code>EgressType =
        VPC</code>.</p>")
  @as("VpcConnectorArn")
  vpcConnectorArn: option<appRunnerResourceArn>,
  @ocaml.doc("<p>The type of egress configuration.</p>
         <p>Set to <code>DEFAULT</code> for access to resources hosted on public networks.</p>
         <p>Set to <code>VPC</code> to associate your service to a custom VPC specified by <code>VpcConnectorArn</code>.</p>")
  @as("EgressType")
  egressType: option<egressType>,
}
@ocaml.doc("<p>Provides summary information about an App Runner connection resource.</p>")
type connectionSummary = {
  @ocaml.doc("<p>The App Runner connection creation time, expressed as a Unix time stamp.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>"
  )
  @as("Status")
  status: option<connectionStatus>,
  @ocaml.doc("<p>The source repository provider.</p>") @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this connection.</p>") @as("ConnectionArn")
  connectionArn: option<appRunnerResourceArn>,
  @ocaml.doc("<p>The customer-provided connection name.</p>") @as("ConnectionName")
  connectionName: option<connectionName>,
}
@ocaml.doc("<p>Describes an App Runner connection resource.</p>")
type connection = {
  @ocaml.doc("<p>The App Runner connection creation time, expressed as a Unix time stamp.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>"
  )
  @as("Status")
  status: option<connectionStatus>,
  @ocaml.doc("<p>The source repository provider.</p>") @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this connection.</p>") @as("ConnectionArn")
  connectionArn: option<appRunnerResourceArn>,
  @ocaml.doc("<p>The customer-provided connection name.</p>") @as("ConnectionName")
  connectionName: option<connectionName>,
}
@ocaml.doc(
  "<p>Describes a certificate CNAME record to add to your DNS. For more information, see <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_AssociateCustomDomain.html\">AssociateCustomDomain</a>.</p>"
)
type certificateValidationRecord = {
  @ocaml.doc("<p>The current state of the certificate CNAME record validation. It should change to <code>SUCCESS</code> after App Runner completes validation with your
      DNS.</p>")
  @as("Status")
  status: option<certificateValidationRecordStatus>,
  @ocaml.doc("<p>The certificate CNAME record value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The record type, always <code>CNAME</code>.</p>") @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>The certificate CNAME record name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Provides summary information about an App Runner automatic scaling configuration resource.</p>
         <p>This type contains limited information about an auto scaling configuration. It includes only identification information, without configuration
      details. It's returned by the <a>ListAutoScalingConfigurations</a> action. Complete configuration information is returned by the <a>CreateAutoScalingConfiguration</a>, <a>DescribeAutoScalingConfiguration</a>, and <a>DeleteAutoScalingConfiguration</a>
      actions using the <a>AutoScalingConfiguration</a> type.</p>")
type autoScalingConfigurationSummary = {
  @ocaml.doc("<p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) with the same
        <code>AutoScalingConfigurationName</code>.</p>")
  @as("AutoScalingConfigurationRevision")
  autoScalingConfigurationRevision: option<integer_>,
  @ocaml.doc(
    "<p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>"
  )
  @as("AutoScalingConfigurationName")
  autoScalingConfigurationName: option<autoScalingConfigurationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>")
  @as("AutoScalingConfigurationArn")
  autoScalingConfigurationArn: option<appRunnerResourceArn>,
}
@ocaml.doc("<p>Describes an App Runner automatic scaling configuration resource.</p>
         <p>A higher <code>MinSize</code> increases the spread of your App Runner service over more Availability Zones in the Amazon Web Services Region. The tradeoff is a higher
      minimal cost.</p>
         <p>A lower <code>MaxSize</code> controls your cost. The tradeoff is lower responsiveness during peak demand.</p>
         <p>Multiple revisions of a configuration might have the same <code>AutoScalingConfigurationName</code> and different
        <code>AutoScalingConfigurationRevision</code> values.</p>")
type autoScalingConfiguration = {
  @ocaml.doc(
    "<p>The time when the auto scaling configuration was deleted. It's in Unix time stamp format.</p>"
  )
  @as("DeletedAt")
  deletedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The time when the auto scaling configuration was created. It's in Unix time stamp format.</p>"
  )
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The maximum number of instances that a service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>"
  )
  @as("MaxSize")
  maxSize: option<integer_>,
  @ocaml.doc("<p>The minimum number of instances that App Runner provisions for a service. The service always has at least <code>MinSize</code> provisioned instances. Some
      of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to be
      quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
         <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>")
  @as("MinSize")
  minSize: option<integer_>,
  @ocaml.doc("<p>The maximum number of concurrent requests that an instance processes. If the number of concurrent requests exceeds this limit, App Runner scales the service
      up.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<integer_>,
  @ocaml.doc("<p>The current state of the auto scaling configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be
      used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>")
  @as("Status")
  status: option<autoScalingConfigurationStatus>,
  @ocaml.doc("<p>It's set to <code>true</code> for the configuration with the highest <code>Revision</code> among all configurations that share the same
        <code>Name</code>. It's set to <code>false</code> otherwise.</p>")
  @as("Latest")
  latest: option<boolean_>,
  @ocaml.doc("<p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>\"Status\": \"ACTIVE\"</code>) that share the same
        <code>AutoScalingConfigurationName</code>.</p>")
  @as("AutoScalingConfigurationRevision")
  autoScalingConfigurationRevision: option<integer_>,
  @ocaml.doc(
    "<p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>"
  )
  @as("AutoScalingConfigurationName")
  autoScalingConfigurationName: option<autoScalingConfigurationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>")
  @as("AutoScalingConfigurationArn")
  autoScalingConfigurationArn: option<appRunnerResourceArn>,
}
@ocaml.doc(
  "<p>Describes resources needed to authenticate access to some source repositories. The specific resource depends on the repository provider.</p>"
)
type authenticationConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that grants the App Runner service access to a source repository. It's required for ECR image repositories
      (but not for ECR Public repositories).</p>")
  @as("AccessRoleArn")
  accessRoleArn: option<roleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner connection that enables the App Runner service to connect to a source repository. It's required for GitHub code
      repositories.</p>")
  @as("ConnectionArn")
  connectionArn: option<appRunnerResourceArn>,
}
@ocaml.doc("<p>Describes an App Runner VPC connector resource. A VPC connector describes the Amazon Virtual Private Cloud (Amazon VPC) that an App Runner service is
      associated with, and the subnets and security group that are used.</p>
         <p>Multiple revisions of a connector might have the same <code>Name</code> and different <code>Revision</code> values.</p>
         <note>
            <p>At this time, App Runner supports only one revision per name.</p>
         </note>")
type vpcConnector = {
  @ocaml.doc("<p>The time when the VPC connector was deleted. It's in Unix time stamp format.</p>")
  @as("DeletedAt")
  deletedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when the VPC connector was created. It's in Unix time stamp format.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The current state of the VPC connector. If the status of a connector revision is <code>INACTIVE</code>, it was deleted and can't be
      used. Inactive connector revisions are permanently removed some time after they are deleted.</p>")
  @as("Status")
  status: option<vpcConnectorStatus>,
  @ocaml.doc("<p>A list of IDs of security groups that App Runner uses for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the default
      security group of the Amazon VPC. The default security group allows all outbound traffic.</p>")
  @as("SecurityGroups")
  securityGroups: option<stringList>,
  @ocaml.doc(
    "<p>A list of IDs of subnets that App Runner uses for your service. All IDs are of subnets of a single Amazon VPC.</p>"
  )
  @as("Subnets")
  subnets: option<stringList>,
  @ocaml.doc("<p>The revision of this VPC connector. It's unique among all the active connectors (<code>\"Status\": \"ACTIVE\"</code>) that share the same
      <code>Name</code>.</p>
         <note>
            <p>At this time, App Runner supports only one revision per name.</p>
         </note>")
  @as("VpcConnectorRevision")
  vpcConnectorRevision: option<integer_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this VPC connector.</p>") @as("VpcConnectorArn")
  vpcConnectorArn: option<appRunnerResourceArn>,
  @ocaml.doc("<p>The customer-provided VPC connector name.</p>") @as("VpcConnectorName")
  vpcConnectorName: option<vpcConnectorName>,
}
type tagList_ = array<tag>
type serviceSummaryList = array<serviceSummary>
type operationSummaryList = array<operationSummary>
@ocaml.doc("<p>Describes configuration settings related to network traffic of an App Runner service. Consists of embedded objects for each configurable network
      feature.</p>")
type networkConfiguration = {
  @ocaml.doc("<p>Network configuration settings for outbound message traffic.</p>")
  @as("EgressConfiguration")
  egressConfiguration: option<egressConfiguration>,
}
@ocaml.doc(
  "<p>Describes the configuration that App Runner uses to run an App Runner service using an image pulled from a source image repository.</p>"
)
type imageConfiguration = {
  @ocaml.doc("<p>The port that your application listens to in the container.</p>
         <p>Default: <code>8080</code>
         </p>")
  @as("Port")
  port: option<string_>,
  @ocaml.doc("<p>An optional command that App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start
      command.</p>")
  @as("StartCommand")
  startCommand: option<startCommand>,
  @ocaml.doc("<p>Environment variables that are available to your running App Runner service. An array of key-value pairs. Keys with a prefix of <code>AWSAPPRUNNER</code>
      are reserved for system use and aren't valid.</p>")
  @as("RuntimeEnvironmentVariables")
  runtimeEnvironmentVariables: option<runtimeEnvironmentVariables>,
}
type connectionSummaryList = array<connectionSummary>
@ocaml.doc("<p>Describes the basic configuration needed for building and running an App Runner service. This type doesn't support the full set of possible
      configuration options. Fur full configuration capabilities, use a <code>apprunner.yaml</code> file in the source code repository.</p>")
type codeConfigurationValues = {
  @ocaml.doc("<p>The environment variables that are available to your running App Runner service. An array of key-value pairs. Keys with a prefix of
        <code>AWSAPPRUNNER</code> are reserved for system use and aren't valid.</p>")
  @as("RuntimeEnvironmentVariables")
  runtimeEnvironmentVariables: option<runtimeEnvironmentVariables>,
  @ocaml.doc("<p>The port that your application listens to in the container.</p>
         <p>Default: <code>8080</code>
         </p>")
  @as("Port")
  port: option<string_>,
  @ocaml.doc("<p>The command App Runner runs to start your application.</p>") @as("StartCommand")
  startCommand: option<startCommand>,
  @ocaml.doc("<p>The command App Runner runs to build your application.</p>") @as("BuildCommand")
  buildCommand: option<buildCommand>,
  @ocaml.doc("<p>A runtime environment type for building and running an App Runner service.
       It represents a
      programming language runtime.</p>")
  @as("Runtime")
  runtime: runtime,
}
type certificateValidationRecordList = array<certificateValidationRecord>
type autoScalingConfigurationSummaryList = array<autoScalingConfigurationSummary>
type vpcConnectors = array<vpcConnector>
@ocaml.doc("<p>Describes a source image repository.</p>")
type imageRepository = {
  @ocaml.doc(
    "<p>The type of the image repository. This reflects the repository provider and whether the repository is private or public.</p>"
  )
  @as("ImageRepositoryType")
  imageRepositoryType: imageRepositoryType,
  @ocaml.doc("<p>Configuration for running the identified image.</p>") @as("ImageConfiguration")
  imageConfiguration: option<imageConfiguration>,
  @ocaml.doc("<p>The identifier of an image.</p>
         <p>For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the image name format, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html\">Pulling an image</a> in the <i>Amazon ECR User Guide</i>.</p>")
  @as("ImageIdentifier")
  imageIdentifier: imageIdentifier,
}
@ocaml.doc("<p>Describes a custom domain that's associated with an App Runner service.</p>")
type customDomain = {
  @ocaml.doc("<p>The current state of the domain name association.</p>") @as("Status")
  status: customDomainAssociationStatus,
  @ocaml.doc("<p>A list of certificate CNAME records that's used for this domain name.</p>")
  @as("CertificateValidationRecords")
  certificateValidationRecords: option<certificateValidationRecordList>,
  @ocaml.doc("<p>When <code>true</code>, the subdomain <code>www.<i>DomainName</i>
            </code> is associated with the App Runner service in addition to the base
      domain.</p>")
  @as("EnableWWWSubdomain")
  enableWWWSubdomain: nullableBoolean,
  @ocaml.doc("<p>An associated custom domain endpoint. It can be a root domain (for example, <code>example.com</code>), a subdomain (for example,
        <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>")
  @as("DomainName")
  domainName: domainName,
}
@ocaml.doc(
  "<p>Describes the configuration that App Runner uses to build and run an App Runner service from a source code repository.</p>"
)
type codeConfiguration = {
  @ocaml.doc("<p>The basic configuration for building and running the App Runner service. Use it to quickly launch an App Runner service without providing a
        <code>apprunner.yaml</code> file in the source code repository (or ignoring the file if it exists).</p>")
  @as("CodeConfigurationValues")
  codeConfigurationValues: option<codeConfigurationValues>,
  @ocaml.doc("<p>The source of the App Runner configuration. Values are interpreted as follows:</p>
         <ul>
            <li>
               <p>
                  <code>REPOSITORY</code> – App Runner reads configuration values from the <code>apprunner.yaml</code> file in the source code repository and
          ignores <code>CodeConfigurationValues</code>.</p>
            </li>
            <li>
               <p>
                  <code>API</code> – App Runner uses configuration values provided in <code>CodeConfigurationValues</code> and ignores the
            <code>apprunner.yaml</code> file in the source code repository.</p>
            </li>
         </ul>")
  @as("ConfigurationSource")
  configurationSource: configurationSource,
}
type customDomainList = array<customDomain>
@ocaml.doc("<p>Describes a source code repository.</p>")
type codeRepository = {
  @ocaml.doc(
    "<p>Configuration for building and running the service from a source code repository.</p>"
  )
  @as("CodeConfiguration")
  codeConfiguration: option<codeConfiguration>,
  @ocaml.doc("<p>The version that should be used within the source code repository.</p>")
  @as("SourceCodeVersion")
  sourceCodeVersion: sourceCodeVersion,
  @ocaml.doc("<p>The location of the repository that contains the source code.</p>")
  @as("RepositoryUrl")
  repositoryUrl: string_,
}
@ocaml.doc(
  "<p>Describes the source deployed to an App Runner service. It can be a code or an image repository.</p>"
)
type sourceConfiguration = {
  @ocaml.doc(
    "<p>Describes the resources that are needed to authenticate access to some source repositories.</p>"
  )
  @as("AuthenticationConfiguration")
  authenticationConfiguration: option<authenticationConfiguration>,
  @ocaml.doc("<p>If <code>true</code>, continuous integration from the source repository is enabled for the App Runner service. Each repository change (including any source
      code commit or new image version) starts a deployment.</p>
         <p>Default: App Runner sets to <code>false</code> for a source image that uses an ECR Public repository or an ECR repository that's in an Amazon Web Services account other than the one that the service is in. App Runner sets to <code>true</code> in all other cases (which currently include a source code
      repository or a source image using a same-account ECR repository).</p>")
  @as("AutoDeploymentsEnabled")
  autoDeploymentsEnabled: option<nullableBoolean>,
  @ocaml.doc("<p>The description of a source image
      repository.</p>
         <p>You must provide either this member or <code>CodeRepository</code> (but not both).</p>")
  @as("ImageRepository")
  imageRepository: option<imageRepository>,
  @ocaml.doc("<p>The description of a source code repository.</p>
         <p>You must provide either this member or <code>ImageRepository</code> (but not both).</p>")
  @as("CodeRepository")
  codeRepository: option<codeRepository>,
}
@ocaml.doc("<p>Describes an App Runner service. It can describe a service in any state, including deleted services.</p>
         <p>This type contains the full information about a service, including configuration details. It's returned by the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html\">CreateService</a>, <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html\">DescribeService</a>, and <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html\">DeleteService</a> actions. A subset of this
      information is returned by the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html\">ListServices</a> action using the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_ServiceSummary.html\">ServiceSummary</a> type.</p>")
type service = {
  @ocaml.doc(
    "<p>Configuration settings related to network traffic of the web application that this service runs.</p>"
  )
  @as("NetworkConfiguration")
  networkConfiguration: networkConfiguration,
  @ocaml.doc(
    "<p>Summary information for the App Runner automatic scaling configuration resource that's associated with this service.</p>"
  )
  @as("AutoScalingConfigurationSummary")
  autoScalingConfigurationSummary: autoScalingConfigurationSummary,
  @ocaml.doc(
    "<p>The settings for the health check that App Runner performs to monitor the health of this service.</p>"
  )
  @as("HealthCheckConfiguration")
  healthCheckConfiguration: option<healthCheckConfiguration>,
  @ocaml.doc("<p>The encryption key that App Runner uses to encrypt the service logs and the copy of the source repository that App Runner maintains for the service. It can be
      either a customer-provided encryption key or an Amazon Web Services managed key.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: option<encryptionConfiguration>,
  @ocaml.doc("<p>The runtime configuration of instances (scaling units) of this service.</p>")
  @as("InstanceConfiguration")
  instanceConfiguration: instanceConfiguration,
  @ocaml.doc(
    "<p>The source deployed to the App Runner service. It can be a code or an image repository.</p>"
  )
  @as("SourceConfiguration")
  sourceConfiguration: sourceConfiguration,
  @ocaml.doc("<p>The current state of the App Runner service. These particular values mean the following.</p>
         <ul>
            <li>
               <p>
                  <code>CREATE_FAILED</code> – The service failed to create. To troubleshoot this failure, read the failure events and logs, change any
          parameters that need to be fixed, and retry the call to create the service.</p>
               <p>The failed service isn't usable, and still counts towards your service quota. When you're done analyzing the failure, delete the service.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure
          that all related resources are removed.</p>
            </li>
         </ul>")
  @as("Status")
  status: serviceStatus,
  @ocaml.doc(
    "<p>The time when the App Runner service was deleted. It's in the Unix time stamp format.</p>"
  )
  @as("DeletedAt")
  deletedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The time when the App Runner service was last updated at. It's in the Unix time stamp format.</p>"
  )
  @as("UpdatedAt")
  updatedAt: timestamp_,
  @ocaml.doc(
    "<p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>"
  )
  @as("CreatedAt")
  createdAt: timestamp_,
  @ocaml.doc(
    "<p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>"
  )
  @as("ServiceUrl")
  serviceUrl: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of this service.</p>") @as("ServiceArn")
  serviceArn: appRunnerResourceArn,
  @ocaml.doc(
    "<p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>"
  )
  @as("ServiceId")
  serviceId: serviceId,
  @ocaml.doc("<p>The customer-provided service name.</p>") @as("ServiceName")
  serviceName: serviceName,
}
@ocaml.doc("<fullname>App Runner</fullname>

    

         <p>App Runner is an application service that provides a fast, simple, and cost-effective way to go directly from an existing container image or source code
      to a running service in the Amazon Web Services Cloud in seconds. You don't need to learn new technologies, decide which compute service to use, or understand how to
      provision and configure Amazon Web Services resources.</p>
         <p>App Runner connects directly to your container registry or source code repository. It provides an automatic delivery pipeline with fully managed operations,
      high performance, scalability, and security.</p>
         <p>For more information about App Runner, see the <a href=\"https://docs.aws.amazon.com/apprunner/latest/dg/\">App Runner Developer Guide</a>.
      For release information, see the <a href=\"https://docs.aws.amazon.com/apprunner/latest/relnotes/\">App Runner Release Notes</a>.</p>
         <p>
       To install the Software Development Kits (SDKs), Integrated
      Development Environment (IDE) Toolkits, and command line tools that you can use to access the API, see <a href=\"http://aws.amazon.com/tools/\">Tools for
        Amazon Web Services</a>.</p>
         <p>
            <b>Endpoints</b>
         </p>
         <p>For a list of Region-specific endpoints that App Runner supports, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/apprunner.html\">App Runner
        endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>")
module StartDeployment = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to manually deploy to.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
      the operation's progress.</p>")
    @as("OperationId")
    operationId: uuid,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "StartDeploymentCommand"
  let make = (~serviceArn, ()) => new({serviceArn: serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys that you want to remove.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
         <p>It must be the ARN of an App Runner resource.</p>")
    @as("ResourceArn")
    resourceArn: appRunnerResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeAutoScalingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want a description for.</p>
         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
            </code> or
          <code>.../<i>name</i>/<i>revision</i>
            </code>. If a revision isn't specified, the latest active revision is
      described.</p>")
    @as("AutoScalingConfigurationArn")
    autoScalingConfigurationArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A full description of the App Runner auto scaling configuration that you specified in this request.</p>"
    )
    @as("AutoScalingConfiguration")
    autoScalingConfiguration: autoScalingConfiguration,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "DescribeAutoScalingConfigurationCommand"
  let make = (~autoScalingConfigurationArn, ()) =>
    new({autoScalingConfigurationArn: autoScalingConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner connection that you want to delete.</p>"
    )
    @as("ConnectionArn")
    connectionArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>A description of the App Runner connection that this request just deleted.</p>")
    @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionArn, ()) => new({connectionArn: connectionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteAutoScalingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to delete.</p>
         <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
            </code> or
          <code>.../<i>name</i>/<i>revision</i>
            </code>. If a revision isn't specified, the latest active revision is deleted.</p>")
    @as("AutoScalingConfigurationArn")
    autoScalingConfigurationArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A description of the App Runner auto scaling configuration that this request just deleted.</p>"
    )
    @as("AutoScalingConfiguration")
    autoScalingConfiguration: autoScalingConfiguration,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "DeleteAutoScalingConfigurationCommand"
  let make = (~autoScalingConfigurationArn, ()) =>
    new({autoScalingConfigurationArn: autoScalingConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag key-value pairs to add or update. If a key is new to the resource, the tag is added with the provided value. If a key is already
      associated with the resource, the value of the tag is updated.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to update tags for.</p>
         <p>It must be the ARN of an App Runner resource.</p>")
    @as("ResourceArn")
    resourceArn: appRunnerResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that a tag list is requested for.</p>
         <p>It must be the ARN of an App Runner resource.</p>")
    @as("ResourceArn")
    resourceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>A list of the tag key-value pairs that are associated with the resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<serviceMaxResults>,
    @ocaml.doc("<p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A list of service summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>"
    )
    @as("ServiceSummaryList")
    serviceSummaryList: serviceSummaryList,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "ListServicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOperations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<listOperationsMaxResults>,
    @ocaml.doc("<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of operation summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each
      call.</p>")
    @as("OperationSummaryList")
    operationSummaryList: option<operationSummaryList>,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "ListOperationsCommand"
  let make = (~serviceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnections = {
  type t
  type request = {
    @ocaml.doc("<p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to include in each response (result page). Used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>If specified, only this connection is returned. If not specified, the result isn't filtered by name.</p>"
    )
    @as("ConnectionName")
    connectionName: option<connectionName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. Returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of summary information records for connections. In a paginated request, the request returns up to <code>MaxResults</code> records for each
      call.</p>")
    @as("ConnectionSummaryList")
    connectionSummaryList: connectionSummaryList,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "ListConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~connectionName=?, ()) =>
    new({nextToken, maxResults, connectionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAutoScalingConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones that are specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
         <p>Keep as <code>false</code> to list all revisions for each requested configuration name.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("LatestOnly")
    latestOnly: option<boolean_>,
    @ocaml.doc("<p>The name of the App Runner auto scaling configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified, App Runner
      returns revisions of all configurations.</p>")
    @as("AutoScalingConfigurationName")
    autoScalingConfigurationName: option<autoScalingConfigurationName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of summary information records for auto scaling configurations. In a paginated request, the request returns up to <code>MaxResults</code>
      records for each call.</p>")
    @as("AutoScalingConfigurationSummaryList")
    autoScalingConfigurationSummaryList: autoScalingConfigurationSummaryList,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "ListAutoScalingConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~latestOnly=?, ~autoScalingConfigurationName=?, ()) =>
    new({nextToken, maxResults, latestOnly, autoScalingConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeVpcConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want a description for.</p>
         <p>The ARN must be a full VPC connector ARN.</p>")
    @as("VpcConnectorArn")
    vpcConnectorArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A description of the App Runner VPC connector that you specified in this request.</p>"
    )
    @as("VpcConnector")
    vpcConnector: vpcConnector,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "DescribeVpcConnectorCommand"
  let make = (~vpcConnectorArn, ()) => new({vpcConnectorArn: vpcConnectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVpcConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to delete.</p>
         <p>The ARN must be a full VPC connector ARN.</p>")
    @as("VpcConnectorArn")
    vpcConnectorArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A description of the App Runner VPC connector that this request just deleted.</p>"
    )
    @as("VpcConnector")
    vpcConnector: vpcConnector,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "DeleteVpcConnectorCommand"
  let make = (~vpcConnectorArn, ()) => new({vpcConnectorArn: vpcConnectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateVpcConnector = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of IDs of security groups that App Runner should use for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the
      default security group of the Amazon VPC. The default security group allows all outbound traffic.</p>")
    @as("SecurityGroups")
    securityGroups: option<stringList>,
    @ocaml.doc("<p>A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single
        Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.</p>")
    @as("Subnets")
    subnets: stringList,
    @ocaml.doc("<p>A name for the VPC connector.</p>") @as("VpcConnectorName")
    vpcConnectorName: vpcConnectorName,
  }
  type response = {
    @ocaml.doc(
      "<p>A description of the App Runner VPC connector that's created by this request.</p>"
    )
    @as("VpcConnector")
    vpcConnector: vpcConnector,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "CreateVpcConnectorCommand"
  let make = (~subnets, ~vpcConnectorName, ~tags=?, ~securityGroups=?, ()) =>
    new({tags, securityGroups, subnets, vpcConnectorName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of metadata items that you can associate with your connection resource. A tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The source repository provider.</p>") @as("ProviderType")
    providerType: providerType,
    @ocaml.doc(
      "<p>A name for the new connection. It must be unique across all App Runner connections for the Amazon Web Services account in the Amazon Web Services Region.</p>"
    )
    @as("ConnectionName")
    connectionName: connectionName,
  }
  type response = {
    @ocaml.doc("<p>A description of the App Runner connection that's created by this request.</p>")
    @as("Connection")
    connection: connection,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "CreateConnectionCommand"
  let make = (~providerType, ~connectionName, ~tags=?, ()) =>
    new({tags, providerType, connectionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAutoScalingConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The maximum number of instances that your service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>
         <p>Default: <code>25</code>
         </p>")
    @as("MaxSize")
    maxSize: option<asconfigMaxSize>,
    @ocaml.doc("<p>The minimum number of instances that App Runner provisions for your service. The service always has at least <code>MinSize</code> provisioned instances.
      Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to
      be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
         <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>
         <p>Default: <code>1</code>
         </p>")
    @as("MinSize")
    minSize: option<asconfigMinSize>,
    @ocaml.doc("<p>The maximum number of concurrent requests that you want an instance to process. If the number of concurrent requests exceeds this limit, App Runner scales
      up your service.</p>
         <p>Default: <code>100</code>
         </p>")
    @as("MaxConcurrency")
    maxConcurrency: option<asconfigMaxConcurrency>,
    @ocaml.doc("<p>A name for the auto scaling configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number <code>1</code> of this
      name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
         <note>
            <p>The name <code>DefaultConfiguration</code> is reserved (it's the configuration that App Runner uses if you don't provide a custome one). You can't use it
        to create a new auto scaling configuration, and you can't create a revision of it.</p>
            <p>When you want to use your own auto scaling configuration for your App Runner service, <i>create a configuration with a different name</i>,
        and then provide it when you create or update your service.</p>
         </note>")
    @as("AutoScalingConfigurationName")
    autoScalingConfigurationName: autoScalingConfigurationName,
  }
  type response = {
    @ocaml.doc(
      "<p>A description of the App Runner auto scaling configuration that's created by this request.</p>"
    )
    @as("AutoScalingConfiguration")
    autoScalingConfiguration: autoScalingConfiguration,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "CreateAutoScalingConfigurationCommand"
  let make = (
    ~autoScalingConfigurationName,
    ~tags=?,
    ~maxSize=?,
    ~minSize=?,
    ~maxConcurrency=?,
    (),
  ) => new({tags, maxSize, minSize, maxConcurrency, autoScalingConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVpcConnectors = {
  type t
  type request = {
    @ocaml.doc("<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones that are specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of information records for VPC connectors. In a paginated request, the request returns up to <code>MaxResults</code> records for each
      call.</p>")
    @as("VpcConnectors")
    vpcConnectors: vpcConnectors,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "ListVpcConnectorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateCustomDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The domain name that you want to disassociate from the App Runner service.</p>")
    @as("DomainName")
    domainName: domainName,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to disassociate a custom domain name from.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>A description of the domain name that's being disassociated.</p>")
    @as("CustomDomain")
    customDomain: customDomain,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that a custom domain name is disassociated from.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
    @ocaml.doc(
      "<p>The App Runner subdomain of the App Runner service. The disassociated custom domain name was mapped to this target name.</p>"
    )
    @as("DNSTarget")
    dnstarget: string_,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "DisassociateCustomDomainCommand"
  let make = (~domainName, ~serviceArn, ()) => new({domainName, serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateCustomDomain = {
  type t
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to associate the subdomain <code>www.<i>DomainName</i>
            </code> with the App Runner service in addition to the base
      domain.</p>
         <p>Default: <code>true</code>
         </p>")
    @as("EnableWWWSubdomain")
    enableWWWSubdomain: option<nullableBoolean>,
    @ocaml.doc("<p>A custom domain endpoint to associate. Specify a root domain (for example, <code>example.com</code>), a subdomain (for example,
        <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>")
    @as("DomainName")
    domainName: domainName,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to associate a custom domain name with.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>A description of the domain name that's being associated.</p>")
    @as("CustomDomain")
    customDomain: customDomain,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service with which a custom domain name is associated.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
    @ocaml.doc(
      "<p>The App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name.</p>"
    )
    @as("DNSTarget")
    dnstarget: string_,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "AssociateCustomDomainCommand"
  let make = (~domainName, ~serviceArn, ~enableWWWSubdomain=?, ()) =>
    new({enableWWWSubdomain, domainName, serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCustomDomains = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results that each response (result page) can include. It's used for a paginated request.</p>
         <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>")
    @as("MaxResults")
    maxResults: option<describeCustomDomainsMaxResults>,
    @ocaml.doc("<p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
      identical to the ones that are specified in the initial request.</p>
         <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want associated custom domain names to be described for.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of descriptions of custom domain names that are associated with the service. In a paginated request, the request returns up to
        <code>MaxResults</code> records per call.</p>")
    @as("CustomDomains")
    customDomains: customDomainList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service whose associated custom domain names you want to describe.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
    @ocaml.doc(
      "<p>The App Runner subdomain of the App Runner service. The associated custom domain names are mapped to this target name.</p>"
    )
    @as("DNSTarget")
    dnstarget: string_,
  }
  @module("@aws-sdk/client-apprunner") @new
  external new: request => t = "DescribeCustomDomainsCommand"
  let make = (~serviceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>"
    )
    @as("NetworkConfiguration")
    networkConfiguration: option<networkConfiguration>,
    @ocaml.doc(
      "<p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>"
    )
    @as("HealthCheckConfiguration")
    healthCheckConfiguration: option<healthCheckConfiguration>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service.</p>"
    )
    @as("AutoScalingConfigurationArn")
    autoScalingConfigurationArn: option<appRunnerResourceArn>,
    @ocaml.doc(
      "<p>The runtime configuration to apply to instances (scaling units) of the App Runner service.</p>"
    )
    @as("InstanceConfiguration")
    instanceConfiguration: option<instanceConfiguration>,
    @ocaml.doc("<p>The source configuration to apply to the App Runner service.</p>
         <p>You can change the configuration of the code or image repository that the service uses. However, you can't switch from code to image or the other way
      around. This means that you must provide the same structure member of <code>SourceConfiguration</code> that you originally included when you created the
      service. Specifically, you can include either <code>CodeRepository</code> or <code>ImageRepository</code>. To update the source configuration, set the
      values to members of the structure that you include.</p>")
    @as("SourceConfiguration")
    sourceConfiguration: option<sourceConfiguration>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to update.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
      the operation's progress.</p>")
    @as("OperationId")
    operationId: uuid,
    @ocaml.doc("<p>A description of the App Runner service updated by this request. All configuration values in the returned <code>Service</code> structure reflect
      configuration changes that are being applied by this request.</p>")
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "UpdateServiceCommand"
  let make = (
    ~serviceArn,
    ~networkConfiguration=?,
    ~healthCheckConfiguration=?,
    ~autoScalingConfigurationArn=?,
    ~instanceConfiguration=?,
    ~sourceConfiguration=?,
    (),
  ) =>
    new({
      networkConfiguration,
      healthCheckConfiguration,
      autoScalingConfigurationArn,
      instanceConfiguration,
      sourceConfiguration,
      serviceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResumeService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to resume.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
      the operation's progress.</p>")
    @as("OperationId")
    operationId: option<uuid>,
    @ocaml.doc("<p>A description of the App Runner service that this request just resumed.</p>")
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "ResumeServiceCommand"
  let make = (~serviceArn, ()) => new({serviceArn: serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PauseService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to pause.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
      the operation's progress.</p>")
    @as("OperationId")
    operationId: option<uuid>,
    @ocaml.doc("<p>A description of the App Runner service that this request just paused.</p>")
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "PauseServiceCommand"
  let make = (~serviceArn, ()) => new({serviceArn: serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want a description for.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A full description of the App Runner service that you specified in this request.</p>"
    )
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "DescribeServiceCommand"
  let make = (~serviceArn, ()) => new({serviceArn: serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the App Runner service that you want to delete.</p>"
    )
    @as("ServiceArn")
    serviceArn: appRunnerResourceArn,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
      the operation's progress.</p>")
    @as("OperationId")
    operationId: uuid,
    @ocaml.doc("<p>A description of the App Runner service that this request just deleted.</p>")
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "DeleteServiceCommand"
  let make = (~serviceArn, ()) => new({serviceArn: serviceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateService = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>"
    )
    @as("NetworkConfiguration")
    networkConfiguration: option<networkConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service. If not provided,
      App Runner associates the latest revision of a default auto scaling configuration.</p>")
    @as("AutoScalingConfigurationArn")
    autoScalingConfigurationArn: option<appRunnerResourceArn>,
    @ocaml.doc(
      "<p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>"
    )
    @as("HealthCheckConfiguration")
    healthCheckConfiguration: option<healthCheckConfiguration>,
    @ocaml.doc("<p>An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default,
      App Runner uses an Amazon Web Services managed key.</p>")
    @as("EncryptionConfiguration")
    encryptionConfiguration: option<encryptionConfiguration>,
    @ocaml.doc(
      "<p>An optional list of metadata items that you can associate with the App Runner service resource. A tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The runtime configuration of instances (scaling units) of the App Runner service.</p>"
    )
    @as("InstanceConfiguration")
    instanceConfiguration: option<instanceConfiguration>,
    @ocaml.doc(
      "<p>The source to deploy to the App Runner service. It can be a code or an image repository.</p>"
    )
    @as("SourceConfiguration")
    sourceConfiguration: sourceConfiguration,
    @ocaml.doc(
      "<p>A name for the App Runner service. It must be unique across all the running App Runner services in your Amazon Web Services account in the Amazon Web Services Region.</p>"
    )
    @as("ServiceName")
    serviceName: serviceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a href=\"https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html\">ListOperations</a> call to track the operation's progress.</p>"
    )
    @as("OperationId")
    operationId: uuid,
    @ocaml.doc("<p>A description of the App Runner service that's created by this request.</p>")
    @as("Service")
    service: service,
  }
  @module("@aws-sdk/client-apprunner") @new external new: request => t = "CreateServiceCommand"
  let make = (
    ~sourceConfiguration,
    ~serviceName,
    ~networkConfiguration=?,
    ~autoScalingConfigurationArn=?,
    ~healthCheckConfiguration=?,
    ~encryptionConfiguration=?,
    ~tags=?,
    ~instanceConfiguration=?,
    (),
  ) =>
    new({
      networkConfiguration,
      autoScalingConfigurationArn,
      healthCheckConfiguration,
      encryptionConfiguration,
      tags,
      instanceConfiguration,
      sourceConfiguration,
      serviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
