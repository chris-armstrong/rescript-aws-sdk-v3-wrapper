type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __stringMin5Max32 = string
type __stringMin1Max64 = string
type __stringMin1Max128 = string
type __string = string
type __long = float;
type __integerMin1Max16384 = int;
type __integerMin1Max15 = int;
type __integer = int;
type __double = float;
type __boolean = bool;
type __blob = NodeJs.Buffer.t;
type nodeType = [@as("BROKER") #BROKER]
type maxResults = int;
type kafkaVersionStatus = [@as("DEPRECATED") #DEPRECATED | @as("ACTIVE") #ACTIVE]
type enhancedMonitoring = [@as("PER_TOPIC_PER_PARTITION") #PER_TOPIC_PER_PARTITION | @as("PER_TOPIC_PER_BROKER") #PER_TOPIC_PER_BROKER | @as("PER_BROKER") #PER_BROKER | @as("DEFAULT") #DEFAULT]
type configurationState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type clusterState = [@as("UPDATING") #UPDATING | @as("REBOOTING_BROKER") #REBOOTING_BROKER | @as("MAINTENANCE") #MAINTENANCE | @as("HEALING") #HEALING | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type clientBroker = [@as("PLAINTEXT") #PLAINTEXT | @as("TLS_PLAINTEXT") #TLS_PLAINTEXT | @as("TLS") #TLS]
type brokerAZDistribution = [@as("DEFAULT") #DEFAULT]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type unprocessedScramSecret = {
@as("SecretArn") secretArn: __string,
@as("ErrorMessage") errorMessage: __string,
@as("ErrorCode") errorCode: __string
}
type stateInfo = {
@as("Message") message: __string,
@as("Code") code: __string
}
type scram = {
@as("Enabled") enabled: __boolean
}
type s3 = {
@as("Prefix") prefix: __string,
@as("Enabled") enabled: option<__boolean>,
@as("Bucket") bucket: __string
}
type nodeExporterInfo = {
@as("EnabledInBroker") enabledInBroker: option<__boolean>
}
type nodeExporter = {
@as("EnabledInBroker") enabledInBroker: option<__boolean>
}
type kafkaVersion = {
@as("Status") status: kafkaVersionStatus,
@as("Version") version: __string
}
type jmxExporterInfo = {
@as("EnabledInBroker") enabledInBroker: option<__boolean>
}
type jmxExporter = {
@as("EnabledInBroker") enabledInBroker: option<__boolean>
}
type iam = {
@as("Enabled") enabled: __boolean
}
type firehose = {
@as("Enabled") enabled: option<__boolean>,
@as("DeliveryStream") deliveryStream: __string
}
type errorInfo = {
@as("ErrorString") errorString: __string,
@as("ErrorCode") errorCode: __string
}
type encryptionInTransit = {
@as("InCluster") inCluster: __boolean,
@as("ClientBroker") clientBroker: clientBroker
}
type encryptionAtRest = {
@as("DataVolumeKMSKeyId") dataVolumeKMSKeyId: option<__string>
}
type eBSStorageInfo = {
@as("VolumeSize") volumeSize: __integerMin1Max16384
}
type configurationRevision = {
@as("Revision") revision: option<__long>,
@as("Description") description: __string,
@as("CreationTime") creationTime: option<__timestampIso8601>
}
type configurationInfo = {
@as("Revision") revision: option<__long>,
@as("Arn") arn: option<__string>
}
type clusterOperationStepInfo = {
@as("StepStatus") stepStatus: __string
}
type cloudWatchLogs = {
@as("LogGroup") logGroup: __string,
@as("Enabled") enabled: option<__boolean>
}
type brokerSoftwareInfo = {
@as("KafkaVersion") kafkaVersion: __string,
@as("ConfigurationRevision") configurationRevision: __long,
@as("ConfigurationArn") configurationArn: __string
}
type brokerEBSVolumeInfo = {
@as("VolumeSizeGB") volumeSizeGB: option<__integer>,
@as("KafkaBrokerNodeId") kafkaBrokerNodeId: option<__string>
}
type __listOfUnprocessedScramSecret = array<unprocessedScramSecret>
type __listOfKafkaVersion = array<kafkaVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfBrokerEBSVolumeInfo = array<brokerEBSVolumeInfo>
type zookeeperNodeInfo = {
@as("ZookeeperVersion") zookeeperVersion: __string,
@as("ZookeeperId") zookeeperId: __double,
@as("Endpoints") endpoints: __listOf__string,
@as("ClientVpcIpAddress") clientVpcIpAddress: __string,
@as("AttachedENIId") attachedENIId: __string
}
type tls = {
@as("CertificateAuthorityArnList") certificateAuthorityArnList: __listOf__string
}
type storageInfo = {
@as("EbsStorageInfo") ebsStorageInfo: eBSStorageInfo
}
type sasl = {
@as("Iam") iam: iam,
@as("Scram") scram: scram
}
type prometheusInfo = {
@as("NodeExporter") nodeExporter: nodeExporterInfo,
@as("JmxExporter") jmxExporter: jmxExporterInfo
}
type prometheus = {
@as("NodeExporter") nodeExporter: nodeExporter,
@as("JmxExporter") jmxExporter: jmxExporter
}
type encryptionInfo = {
@as("EncryptionInTransit") encryptionInTransit: encryptionInTransit,
@as("EncryptionAtRest") encryptionAtRest: encryptionAtRest
}
type configuration = {
@as("State") state: option<configurationState>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("KafkaVersions") kafkaVersions: option<__listOf__string>,
@as("Description") description: option<__string>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("Arn") arn: option<__string>
}
type compatibleKafkaVersion = {
@as("TargetVersions") targetVersions: __listOf__string,
@as("SourceVersion") sourceVersion: __string
}
type clusterOperationStep = {
@as("StepName") stepName: __string,
@as("StepInfo") stepInfo: clusterOperationStepInfo
}
type brokerNodeInfo = {
@as("Endpoints") endpoints: __listOf__string,
@as("CurrentBrokerSoftwareInfo") currentBrokerSoftwareInfo: brokerSoftwareInfo,
@as("ClientVpcIpAddress") clientVpcIpAddress: __string,
@as("ClientSubnet") clientSubnet: __string,
@as("BrokerId") brokerId: __double,
@as("AttachedENIId") attachedENIId: __string
}
type brokerLogs = {
@as("S3") s3: s3,
@as("Firehose") firehose: firehose,
@as("CloudWatchLogs") cloudWatchLogs: cloudWatchLogs
}
type __listOfConfiguration = array<configuration>
type __listOfCompatibleKafkaVersion = array<compatibleKafkaVersion>
type __listOfClusterOperationStep = array<clusterOperationStep>
type openMonitoringInfo = {
@as("Prometheus") prometheus: option<prometheusInfo>
}
type openMonitoring = {
@as("Prometheus") prometheus: option<prometheus>
}
type nodeInfo = {
@as("ZookeeperNodeInfo") zookeeperNodeInfo: zookeeperNodeInfo,
@as("NodeType") nodeType: nodeType,
@as("NodeARN") nodeARN: __string,
@as("InstanceType") instanceType: __string,
@as("BrokerNodeInfo") brokerNodeInfo: brokerNodeInfo,
@as("AddedToClusterTime") addedToClusterTime: __string
}
type loggingInfo = {
@as("BrokerLogs") brokerLogs: option<brokerLogs>
}
type clientAuthentication = {
@as("Tls") tls: tls,
@as("Sasl") sasl: sasl
}
type brokerNodeGroupInfo = {
@as("StorageInfo") storageInfo: storageInfo,
@as("SecurityGroups") securityGroups: __listOf__string,
@as("InstanceType") instanceType: option<__stringMin5Max32>,
@as("ClientSubnets") clientSubnets: option<__listOf__string>,
@as("BrokerAZDistribution") brokerAZDistribution: brokerAZDistribution
}
type __listOfNodeInfo = array<nodeInfo>
type mutableClusterInfo = {
@as("InstanceType") instanceType: __stringMin5Max32,
@as("LoggingInfo") loggingInfo: loggingInfo,
@as("KafkaVersion") kafkaVersion: __string,
@as("OpenMonitoring") openMonitoring: openMonitoring,
@as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoring,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: __integer,
@as("ConfigurationInfo") configurationInfo: configurationInfo,
@as("BrokerEBSVolumeInfo") brokerEBSVolumeInfo: __listOfBrokerEBSVolumeInfo
}
type clusterInfo = {
@as("ZookeeperConnectStringTls") zookeeperConnectStringTls: __string,
@as("ZookeeperConnectString") zookeeperConnectString: __string,
@as("Tags") tags: __mapOf__string,
@as("StateInfo") stateInfo: stateInfo,
@as("State") state: clusterState,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: __integer,
@as("LoggingInfo") loggingInfo: loggingInfo,
@as("OpenMonitoring") openMonitoring: openMonitoring,
@as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoring,
@as("EncryptionInfo") encryptionInfo: encryptionInfo,
@as("CurrentVersion") currentVersion: __string,
@as("CurrentBrokerSoftwareInfo") currentBrokerSoftwareInfo: brokerSoftwareInfo,
@as("CreationTime") creationTime: __timestampIso8601,
@as("ClusterName") clusterName: __string,
@as("ClusterArn") clusterArn: __string,
@as("ClientAuthentication") clientAuthentication: clientAuthentication,
@as("BrokerNodeGroupInfo") brokerNodeGroupInfo: brokerNodeGroupInfo,
@as("ActiveOperationArn") activeOperationArn: __string
}
type __listOfClusterInfo = array<clusterInfo>
type clusterOperationInfo = {
@as("TargetClusterInfo") targetClusterInfo: mutableClusterInfo,
@as("SourceClusterInfo") sourceClusterInfo: mutableClusterInfo,
@as("OperationType") operationType: __string,
@as("OperationSteps") operationSteps: __listOfClusterOperationStep,
@as("OperationState") operationState: __string,
@as("OperationArn") operationArn: __string,
@as("ErrorInfo") errorInfo: errorInfo,
@as("EndTime") endTime: __timestampIso8601,
@as("CreationTime") creationTime: __timestampIso8601,
@as("ClusterArn") clusterArn: __string,
@as("ClientRequestId") clientRequestId: __string
}
type __listOfClusterOperationInfo = array<clusterOperationInfo>
type clientType;
@module("@aws-sdk/client-kafka") @new external createClient: unit => clientType = "MSKClient";
module UpdateBrokerType = {
  type t;
  type request = {
@as("TargetInstanceType") targetInstanceType: option<__string>,
@as("CurrentVersion") currentVersion: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBrokerCount = {
  type t;
  type request = {
@as("TargetNumberOfBrokerNodes") targetNumberOfBrokerNodes: option<__integerMin1Max15>,
@as("CurrentVersion") currentVersion: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBootstrapBrokers = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("BootstrapBrokerStringSaslIam") bootstrapBrokerStringSaslIam: __string,
@as("BootstrapBrokerStringSaslScram") bootstrapBrokerStringSaslScram: __string,
@as("BootstrapBrokerStringTls") bootstrapBrokerStringTls: __string,
@as("BootstrapBrokerString") bootstrapBrokerString: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "GetBootstrapBrokersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRevision = {
  type t;
  type request = {
@as("Revision") revision: option<__long>,
@as("Arn") arn: option<__string>
}
  type response = {
@as("ServerProperties") serverProperties: __blob,
@as("Revision") revision: __long,
@as("Description") description: __string,
@as("CreationTime") creationTime: __timestampIso8601,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeConfigurationRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConfiguration = {
  type t;
  type request = {
@as("Arn") arn: option<__string>
}
  type response = {
@as("State") state: configurationState,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DeleteConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: __string,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("State") state: clusterState,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfiguration = {
  type t;
  type request = {
@as("ServerProperties") serverProperties: option<__blob>,
@as("Description") description: __string,
@as("Arn") arn: option<__string>
}
  type response = {
@as("LatestRevision") latestRevision: configurationRevision,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterKafkaVersion = {
  type t;
  type request = {
@as("TargetKafkaVersion") targetKafkaVersion: option<__string>,
@as("CurrentVersion") currentVersion: option<__string>,
@as("ConfigurationInfo") configurationInfo: configurationInfo,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateClusterKafkaVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterConfiguration = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: option<__string>,
@as("ConfigurationInfo") configurationInfo: option<configurationInfo>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateClusterConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RebootBroker = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: option<__string>,
@as("BrokerIds") brokerIds: option<__listOf__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "RebootBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListScramSecrets = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("SecretArnList") secretArnList: __listOf__string,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListScramSecretsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfiguration = {
  type t;
  type request = {
@as("Arn") arn: option<__string>
}
  type response = {
@as("State") state: configurationState,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("KafkaVersions") kafkaVersions: __listOf__string,
@as("Description") description: __string,
@as("CreationTime") creationTime: __timestampIso8601,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfiguration = {
  type t;
  type request = {
@as("ServerProperties") serverProperties: option<__blob>,
@as("Name") name: option<__string>,
@as("KafkaVersions") kafkaVersions: __listOf__string,
@as("Description") description: __string
}
  type response = {
@as("State") state: configurationState,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("CreationTime") creationTime: __timestampIso8601,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "CreateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBrokerStorage = {
  type t;
  type request = {
@as("TargetBrokerEBSVolumeInfo") targetBrokerEBSVolumeInfo: option<__listOfBrokerEBSVolumeInfo>,
@as("CurrentVersion") currentVersion: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKafkaVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("KafkaVersions") kafkaVersions: __listOfKafkaVersion
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListKafkaVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("Arn") arn: option<__string>
}
  type response = {
@as("Revisions") revisions: __listOfConfigurationRevision,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListConfigurationRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateScramSecret = {
  type t;
  type request = {
@as("SecretArnList") secretArnList: option<__listOf__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("UnprocessedScramSecrets") unprocessedScramSecrets: __listOfUnprocessedScramSecret,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "BatchDisassociateScramSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateScramSecret = {
  type t;
  type request = {
@as("SecretArnList") secretArnList: option<__listOf__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("UnprocessedScramSecrets") unprocessedScramSecrets: __listOfUnprocessedScramSecret,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "BatchAssociateScramSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMonitoring = {
  type t;
  type request = {
@as("LoggingInfo") loggingInfo: loggingInfo,
@as("OpenMonitoring") openMonitoring: openMonitoringInfo,
@as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoring,
@as("CurrentVersion") currentVersion: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateMonitoringCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Configurations") configurations: __listOfConfiguration
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCompatibleKafkaVersions = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("CompatibleKafkaVersions") compatibleKafkaVersions: __listOfCompatibleKafkaVersion
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "GetCompatibleKafkaVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: option<__integerMin1Max15>,
@as("LoggingInfo") loggingInfo: loggingInfo,
@as("KafkaVersion") kafkaVersion: option<__stringMin1Max128>,
@as("OpenMonitoring") openMonitoring: openMonitoringInfo,
@as("EnhancedMonitoring") enhancedMonitoring: enhancedMonitoring,
@as("EncryptionInfo") encryptionInfo: encryptionInfo,
@as("ConfigurationInfo") configurationInfo: configurationInfo,
@as("ClusterName") clusterName: option<__stringMin1Max64>,
@as("ClientAuthentication") clientAuthentication: clientAuthentication,
@as("BrokerNodeGroupInfo") brokerNodeGroupInfo: option<brokerNodeGroupInfo>
}
  type response = {
@as("State") state: clusterState,
@as("ClusterName") clusterName: __string,
@as("ClusterArn") clusterArn: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNodes = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("NodeInfoList") nodeInfoList: __listOfNodeInfo,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListNodesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("ClusterInfo") clusterInfo: clusterInfo
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ClusterNameFilter") clusterNameFilter: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("ClusterInfoList") clusterInfoList: __listOfClusterInfo
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterOperation = {
  type t;
  type request = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>
}
  type response = {
@as("ClusterOperationInfo") clusterOperationInfo: clusterOperationInfo
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeClusterOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusterOperations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("ClusterOperationInfoList") clusterOperationInfoList: __listOfClusterOperationInfo
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListClusterOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
