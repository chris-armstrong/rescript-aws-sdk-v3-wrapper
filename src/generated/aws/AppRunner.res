type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uUID = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type startCommand = string
type sourceCodeVersionType = [@as("BRANCH") #BRANCH]
type serviceStatus = [@as("OPERATION_IN_PROGRESS") #OPERATION_IN_PROGRESS | @as("PAUSED") #PAUSED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("RUNNING") #RUNNING | @as("CREATE_FAILED") #CREATE_FAILED]
type serviceName = string
type serviceMaxResults = int;
type serviceId = string
type runtimeEnvironmentVariablesValue = string
type runtimeEnvironmentVariablesKey = string
type runtime = [@as("NODEJS_12") #NODEJS_12 | @as("PYTHON_3") #PYTHON_3]
type roleArn = string
type providerType = [@as("GITHUB") #GITHUB]
type operationType = [@as("DELETE_SERVICE") #DELETE_SERVICE | @as("RESUME_SERVICE") #RESUME_SERVICE | @as("PAUSE_SERVICE") #PAUSE_SERVICE | @as("CREATE_SERVICE") #CREATE_SERVICE | @as("START_DEPLOYMENT") #START_DEPLOYMENT]
type operationStatus = [@as("ROLLBACK_SUCCEEDED") #ROLLBACK_SUCCEEDED | @as("ROLLBACK_FAILED") #ROLLBACK_FAILED | @as("ROLLBACK_IN_PROGRESS") #ROLLBACK_IN_PROGRESS | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type nullableBoolean = bool;
type nextToken = string
type memory = string
type maxResults = int;
type listOperationsMaxResults = int;
type kmsKeyArn = string
type amazonawsInteger = int;
type imageRepositoryType = [@as("ECR_PUBLIC") #ECR_PUBLIC | @as("ECR") #ECR]
type imageIdentifier = string
type healthCheckUnhealthyThreshold = int;
type healthCheckTimeout = int;
type healthCheckProtocol = [@as("HTTP") #HTTP | @as("TCP") #TCP]
type healthCheckInterval = int;
type healthCheckHealthyThreshold = int;
type errorMessage = string
type domainName = string
type describeCustomDomainsMaxResults = int;
type customDomainAssociationStatus = [@as("BINDING_CERTIFICATE") #BINDING_CERTIFICATE | @as("PENDING_CERTIFICATE_DNS_VALIDATION") #PENDING_CERTIFICATE_DNS_VALIDATION | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATING") #CREATING]
type cpu = string
type connectionStatus = [@as("DELETED") #DELETED | @as("ERROR") #ERROR | @as("AVAILABLE") #AVAILABLE | @as("PENDING_HANDSHAKE") #PENDING_HANDSHAKE]
type connectionName = string
type configurationSource = [@as("API") #API | @as("REPOSITORY") #REPOSITORY]
type certificateValidationRecordStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type buildCommand = string
type amazonawsBoolean = bool;
type autoScalingConfigurationStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type autoScalingConfigurationName = string
type appRunnerResourceArn = string
type aSConfigMinSize = int;
type aSConfigMaxSize = int;
type aSConfigMaxConcurrency = int;
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type sourceCodeVersion = {
@as("Value") value: option<amazonawsString>,
@as("Type") type_: option<sourceCodeVersionType>
}
type serviceSummary = {
@as("Status") status: serviceStatus,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("ServiceUrl") serviceUrl: amazonawsString,
@as("ServiceArn") serviceArn: appRunnerResourceArn,
@as("ServiceId") serviceId: serviceId,
@as("ServiceName") serviceName: serviceName
}
type runtimeEnvironmentVariables = Js.Dict.t< runtimeEnvironmentVariablesValue>
type operationSummary = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("EndedAt") endedAt: amazonawsTimestamp,
@as("StartedAt") startedAt: amazonawsTimestamp,
@as("TargetArn") targetArn: appRunnerResourceArn,
@as("Status") status: operationStatus,
@as("Type") type_: operationType,
@as("Id") id: uUID
}
type instanceConfiguration = {
@as("InstanceRoleArn") instanceRoleArn: roleArn,
@as("Memory") memory: memory,
@as("Cpu") cpu: cpu
}
type healthCheckConfiguration = {
@as("UnhealthyThreshold") unhealthyThreshold: healthCheckUnhealthyThreshold,
@as("HealthyThreshold") healthyThreshold: healthCheckHealthyThreshold,
@as("Timeout") timeout: healthCheckTimeout,
@as("Interval") interval: healthCheckInterval,
@as("Path") path: amazonawsString,
@as("Protocol") protocol: healthCheckProtocol
}
type encryptionConfiguration = {
@as("KmsKey") kmsKey: option<kmsKeyArn>
}
type connectionSummary = {
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Status") status: connectionStatus,
@as("ProviderType") providerType: providerType,
@as("ConnectionArn") connectionArn: appRunnerResourceArn,
@as("ConnectionName") connectionName: connectionName
}
type connection = {
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Status") status: connectionStatus,
@as("ProviderType") providerType: providerType,
@as("ConnectionArn") connectionArn: appRunnerResourceArn,
@as("ConnectionName") connectionName: connectionName
}
type certificateValidationRecord = {
@as("Status") status: certificateValidationRecordStatus,
@as("Value") value: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Name") name: amazonawsString
}
type autoScalingConfigurationSummary = {
@as("AutoScalingConfigurationRevision") autoScalingConfigurationRevision: amazonawsInteger,
@as("AutoScalingConfigurationName") autoScalingConfigurationName: autoScalingConfigurationName,
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn
}
type autoScalingConfiguration = {
@as("DeletedAt") deletedAt: amazonawsTimestamp,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("MaxSize") maxSize: amazonawsInteger,
@as("MinSize") minSize: amazonawsInteger,
@as("MaxConcurrency") maxConcurrency: amazonawsInteger,
@as("Status") status: autoScalingConfigurationStatus,
@as("Latest") latest: amazonawsBoolean,
@as("AutoScalingConfigurationRevision") autoScalingConfigurationRevision: amazonawsInteger,
@as("AutoScalingConfigurationName") autoScalingConfigurationName: autoScalingConfigurationName,
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn
}
type authenticationConfiguration = {
@as("AccessRoleArn") accessRoleArn: roleArn,
@as("ConnectionArn") connectionArn: appRunnerResourceArn
}
type tagList = array<tag>
type serviceSummaryList = array<serviceSummary>
type operationSummaryList = array<operationSummary>
type imageConfiguration = {
@as("Port") port: amazonawsString,
@as("StartCommand") startCommand: amazonawsString,
@as("RuntimeEnvironmentVariables") runtimeEnvironmentVariables: runtimeEnvironmentVariables
}
type connectionSummaryList = array<connectionSummary>
type codeConfigurationValues = {
@as("RuntimeEnvironmentVariables") runtimeEnvironmentVariables: runtimeEnvironmentVariables,
@as("Port") port: amazonawsString,
@as("StartCommand") startCommand: startCommand,
@as("BuildCommand") buildCommand: buildCommand,
@as("Runtime") runtime: option<runtime>
}
type certificateValidationRecordList = array<certificateValidationRecord>
type autoScalingConfigurationSummaryList = array<autoScalingConfigurationSummary>
type imageRepository = {
@as("ImageRepositoryType") imageRepositoryType: option<imageRepositoryType>,
@as("ImageConfiguration") imageConfiguration: imageConfiguration,
@as("ImageIdentifier") imageIdentifier: option<imageIdentifier>
}
type customDomain = {
@as("Status") status: option<customDomainAssociationStatus>,
@as("CertificateValidationRecords") certificateValidationRecords: certificateValidationRecordList,
@as("EnableWWWSubdomain") enableWWWSubdomain: option<nullableBoolean>,
@as("DomainName") domainName: option<domainName>
}
type codeConfiguration = {
@as("CodeConfigurationValues") codeConfigurationValues: codeConfigurationValues,
@as("ConfigurationSource") configurationSource: option<configurationSource>
}
type customDomainList = array<customDomain>
type codeRepository = {
@as("CodeConfiguration") codeConfiguration: codeConfiguration,
@as("SourceCodeVersion") sourceCodeVersion: option<sourceCodeVersion>,
@as("RepositoryUrl") repositoryUrl: option<amazonawsString>
}
type sourceConfiguration = {
@as("AuthenticationConfiguration") authenticationConfiguration: authenticationConfiguration,
@as("AutoDeploymentsEnabled") autoDeploymentsEnabled: nullableBoolean,
@as("ImageRepository") imageRepository: imageRepository,
@as("CodeRepository") codeRepository: codeRepository
}
type service = {
@as("AutoScalingConfigurationSummary") autoScalingConfigurationSummary: option<autoScalingConfigurationSummary>,
@as("HealthCheckConfiguration") healthCheckConfiguration: healthCheckConfiguration,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("InstanceConfiguration") instanceConfiguration: option<instanceConfiguration>,
@as("SourceConfiguration") sourceConfiguration: option<sourceConfiguration>,
@as("Status") status: option<serviceStatus>,
@as("DeletedAt") deletedAt: amazonawsTimestamp,
@as("UpdatedAt") updatedAt: option<amazonawsTimestamp>,
@as("CreatedAt") createdAt: option<amazonawsTimestamp>,
@as("ServiceUrl") serviceUrl: option<amazonawsString>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>,
@as("ServiceId") serviceId: option<serviceId>,
@as("ServiceName") serviceName: option<serviceName>
}
type clientType;
@module("@aws-sdk/client-apprunner") @new external createClient: unit => clientType = "AppRunnerClient";
module StartDeployment = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("OperationId") operationId: option<uUID>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "StartDeploymentCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<appRunnerResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingConfiguration = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: option<autoScalingConfiguration>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DescribeAutoScalingConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: option<appRunnerResourceArn>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAutoScalingConfiguration = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: option<autoScalingConfiguration>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DeleteAutoScalingConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<appRunnerResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<appRunnerResourceArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: serviceMaxResults,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ServiceSummaryList") serviceSummaryList: option<serviceSummaryList>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ListServicesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOperations = {
  type t;
  type request = {
@as("MaxResults") maxResults: listOperationsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OperationSummaryList") operationSummaryList: operationSummaryList
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ListOperationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ConnectionName") connectionName: connectionName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConnectionSummaryList") connectionSummaryList: option<connectionSummaryList>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ListConnectionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAutoScalingConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("LatestOnly") latestOnly: amazonawsBoolean,
@as("AutoScalingConfigurationName") autoScalingConfigurationName: autoScalingConfigurationName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AutoScalingConfigurationSummaryList") autoScalingConfigurationSummaryList: option<autoScalingConfigurationSummaryList>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ListAutoScalingConfigurationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ProviderType") providerType: option<providerType>,
@as("ConnectionName") connectionName: option<connectionName>
}
  type response = {
@as("Connection") connection: option<connection>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAutoScalingConfiguration = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("MaxSize") maxSize: aSConfigMaxSize,
@as("MinSize") minSize: aSConfigMinSize,
@as("MaxConcurrency") maxConcurrency: aSConfigMaxConcurrency,
@as("AutoScalingConfigurationName") autoScalingConfigurationName: option<autoScalingConfigurationName>
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: option<autoScalingConfiguration>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "CreateAutoScalingConfigurationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateCustomDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("CustomDomain") customDomain: option<customDomain>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>,
@as("DNSTarget") dNSTarget: option<amazonawsString>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DisassociateCustomDomainCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateCustomDomain = {
  type t;
  type request = {
@as("EnableWWWSubdomain") enableWWWSubdomain: nullableBoolean,
@as("DomainName") domainName: option<domainName>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("CustomDomain") customDomain: option<customDomain>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>,
@as("DNSTarget") dNSTarget: option<amazonawsString>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "AssociateCustomDomainCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: describeCustomDomainsMaxResults,
@as("NextToken") nextToken: amazonawsString,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("CustomDomains") customDomains: option<customDomainList>,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>,
@as("DNSTarget") dNSTarget: option<amazonawsString>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomDomainsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateService = {
  type t;
  type request = {
@as("HealthCheckConfiguration") healthCheckConfiguration: healthCheckConfiguration,
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn,
@as("InstanceConfiguration") instanceConfiguration: instanceConfiguration,
@as("SourceConfiguration") sourceConfiguration: sourceConfiguration,
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("OperationId") operationId: option<uUID>,
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "UpdateServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("OperationId") operationId: uUID,
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "ResumeServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PauseService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("OperationId") operationId: uUID,
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "PauseServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DescribeServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: option<appRunnerResourceArn>
}
  type response = {
@as("OperationId") operationId: option<uUID>,
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "DeleteServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateService = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn,
@as("HealthCheckConfiguration") healthCheckConfiguration: healthCheckConfiguration,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("Tags") tags: tagList,
@as("InstanceConfiguration") instanceConfiguration: instanceConfiguration,
@as("SourceConfiguration") sourceConfiguration: option<sourceConfiguration>,
@as("ServiceName") serviceName: option<serviceName>
}
  type response = {
@as("OperationId") operationId: option<uUID>,
@as("Service") service: option<service>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (Js.Promise.t<request>) => t = "CreateServiceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
