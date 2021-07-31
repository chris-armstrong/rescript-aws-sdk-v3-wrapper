type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type __timestampIso8601 = Js.Date.t;
type __stringMin5Max32 = string
type __stringMin1Max64 = string
type __stringMin1Max128 = string
type __string = string
type __long = float
type __integerMin1Max16384 = int
type __integerMin1Max15 = int
type __integer = int
type __double = float
type __boolean = bool
type __blob = NodeJs.Buffer.t
type nodeType = [@as("BROKER") #BROKER]
type maxResults = int
type kafkaVersionStatus = [@as("DEPRECATED") #DEPRECATED | @as("ACTIVE") #ACTIVE]
type enhancedMonitoring = [@as("PER_TOPIC_PER_PARTITION") #PERTOPICPERPARTITION | @as("PER_TOPIC_PER_BROKER") #PERTOPICPERBROKER | @as("PER_BROKER") #PERBROKER | @as("DEFAULT") #DEFAULT]
type configurationState = [@as("DELETE_FAILED") #DELETEFAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type clusterState = [@as("UPDATING") #UPDATING | @as("REBOOTING_BROKER") #REBOOTINGBROKER | @as("MAINTENANCE") #MAINTENANCE | @as("HEALING") #HEALING | @as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type clientBroker = [@as("PLAINTEXT") #PLAINTEXT | @as("TLS_PLAINTEXT") #TLSPLAINTEXT | @as("TLS") #TLS]
type brokerAZDistribution = [@as("DEFAULT") #DEFAULT]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type unprocessedScramSecret = {
@as("SecretArn") secretArn: option<__string>,
@as("ErrorMessage") errorMessage: option<__string>,
@as("ErrorCode") errorCode: option<__string>
}
type stateInfo = {
@as("Message") message: option<__string>,
@as("Code") code: option<__string>
}
type scram = {
@as("Enabled") enabled: option<__boolean>
}
type s3 = {
@as("Prefix") prefix: option<__string>,
@as("Enabled") enabled: __boolean,
@as("Bucket") bucket: option<__string>
}
type nodeExporterInfo = {
@as("EnabledInBroker") enabledInBroker: __boolean
}
type nodeExporter = {
@as("EnabledInBroker") enabledInBroker: __boolean
}
type kafkaVersion = {
@as("Status") status: option<kafkaVersionStatus>,
@as("Version") version: option<__string>
}
type jmxExporterInfo = {
@as("EnabledInBroker") enabledInBroker: __boolean
}
type jmxExporter = {
@as("EnabledInBroker") enabledInBroker: __boolean
}
type iam = {
@as("Enabled") enabled: option<__boolean>
}
type firehose = {
@as("Enabled") enabled: __boolean,
@as("DeliveryStream") deliveryStream: option<__string>
}
type errorInfo = {
@as("ErrorString") errorString: option<__string>,
@as("ErrorCode") errorCode: option<__string>
}
type encryptionInTransit = {
@as("InCluster") inCluster: option<__boolean>,
@as("ClientBroker") clientBroker: option<clientBroker>
}
type encryptionAtRest = {
@as("DataVolumeKMSKeyId") dataVolumeKMSKeyId: __string
}
type ebsstorageInfo = {
@as("VolumeSize") volumeSize: option<__integerMin1Max16384>
}
type configurationRevision = {
@as("Revision") revision: __long,
@as("Description") description: option<__string>,
@as("CreationTime") creationTime: __timestampIso8601
}
type configurationInfo = {
@as("Revision") revision: __long,
@as("Arn") arn: __string
}
type clusterOperationStepInfo = {
@as("StepStatus") stepStatus: option<__string>
}
type cloudWatchLogs = {
@as("LogGroup") logGroup: option<__string>,
@as("Enabled") enabled: __boolean
}
type brokerSoftwareInfo = {
@as("KafkaVersion") kafkaVersion: option<__string>,
@as("ConfigurationRevision") configurationRevision: option<__long>,
@as("ConfigurationArn") configurationArn: option<__string>
}
type brokerEBSVolumeInfo = {
@as("VolumeSizeGB") volumeSizeGB: __integer,
@as("KafkaBrokerNodeId") kafkaBrokerNodeId: __string
}
type __listOfUnprocessedScramSecret = array<unprocessedScramSecret>
type __listOfKafkaVersion = array<kafkaVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfBrokerEBSVolumeInfo = array<brokerEBSVolumeInfo>
type zookeeperNodeInfo = {
@as("ZookeeperVersion") zookeeperVersion: option<__string>,
@as("ZookeeperId") zookeeperId: option<__double>,
@as("Endpoints") endpoints: option<__listOf__string>,
@as("ClientVpcIpAddress") clientVpcIpAddress: option<__string>,
@as("AttachedENIId") attachedENIId: option<__string>
}
type tls = {
@as("CertificateAuthorityArnList") certificateAuthorityArnList: option<__listOf__string>
}
type storageInfo = {
@as("EbsStorageInfo") ebsStorageInfo: option<ebsstorageInfo>
}
type sasl = {
@as("Iam") iam: option<iam>,
@as("Scram") scram: option<scram>
}
type prometheusInfo = {
@as("NodeExporter") nodeExporter: option<nodeExporterInfo>,
@as("JmxExporter") jmxExporter: option<jmxExporterInfo>
}
type prometheus = {
@as("NodeExporter") nodeExporter: option<nodeExporter>,
@as("JmxExporter") jmxExporter: option<jmxExporter>
}
type encryptionInfo = {
@as("EncryptionInTransit") encryptionInTransit: option<encryptionInTransit>,
@as("EncryptionAtRest") encryptionAtRest: option<encryptionAtRest>
}
type configuration = {
@as("State") state: configurationState,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("KafkaVersions") kafkaVersions: __listOf__string,
@as("Description") description: __string,
@as("CreationTime") creationTime: __timestampIso8601,
@as("Arn") arn: __string
}
type compatibleKafkaVersion = {
@as("TargetVersions") targetVersions: option<__listOf__string>,
@as("SourceVersion") sourceVersion: option<__string>
}
type clusterOperationStep = {
@as("StepName") stepName: option<__string>,
@as("StepInfo") stepInfo: option<clusterOperationStepInfo>
}
type brokerNodeInfo = {
@as("Endpoints") endpoints: option<__listOf__string>,
@as("CurrentBrokerSoftwareInfo") currentBrokerSoftwareInfo: option<brokerSoftwareInfo>,
@as("ClientVpcIpAddress") clientVpcIpAddress: option<__string>,
@as("ClientSubnet") clientSubnet: option<__string>,
@as("BrokerId") brokerId: option<__double>,
@as("AttachedENIId") attachedENIId: option<__string>
}
type brokerLogs = {
@as("S3") s3: option<s3>,
@as("Firehose") firehose: option<firehose>,
@as("CloudWatchLogs") cloudWatchLogs: option<cloudWatchLogs>
}
type __listOfConfiguration = array<configuration>
type __listOfCompatibleKafkaVersion = array<compatibleKafkaVersion>
type __listOfClusterOperationStep = array<clusterOperationStep>
type openMonitoringInfo = {
@as("Prometheus") prometheus: prometheusInfo
}
type openMonitoring = {
@as("Prometheus") prometheus: prometheus
}
type nodeInfo = {
@as("ZookeeperNodeInfo") zookeeperNodeInfo: option<zookeeperNodeInfo>,
@as("NodeType") nodeType: option<nodeType>,
@as("NodeARN") nodeARN: option<__string>,
@as("InstanceType") instanceType: option<__string>,
@as("BrokerNodeInfo") brokerNodeInfo: option<brokerNodeInfo>,
@as("AddedToClusterTime") addedToClusterTime: option<__string>
}
type loggingInfo = {
@as("BrokerLogs") brokerLogs: brokerLogs
}
type clientAuthentication = {
@as("Tls") tls: option<tls>,
@as("Sasl") sasl: option<sasl>
}
type brokerNodeGroupInfo = {
@as("StorageInfo") storageInfo: option<storageInfo>,
@as("SecurityGroups") securityGroups: option<__listOf__string>,
@as("InstanceType") instanceType: __stringMin5Max32,
@as("ClientSubnets") clientSubnets: __listOf__string,
@as("BrokerAZDistribution") brokerAZDistribution: option<brokerAZDistribution>
}
type __listOfNodeInfo = array<nodeInfo>
type mutableClusterInfo = {
@as("InstanceType") instanceType: option<__stringMin5Max32>,
@as("LoggingInfo") loggingInfo: option<loggingInfo>,
@as("KafkaVersion") kafkaVersion: option<__string>,
@as("OpenMonitoring") openMonitoring: option<openMonitoring>,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoring>,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: option<__integer>,
@as("ConfigurationInfo") configurationInfo: option<configurationInfo>,
@as("BrokerEBSVolumeInfo") brokerEBSVolumeInfo: option<__listOfBrokerEBSVolumeInfo>
}
type clusterInfo = {
@as("ZookeeperConnectStringTls") zookeeperConnectStringTls: option<__string>,
@as("ZookeeperConnectString") zookeeperConnectString: option<__string>,
@as("Tags") tags: option<__mapOf__string>,
@as("StateInfo") stateInfo: option<stateInfo>,
@as("State") state: option<clusterState>,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: option<__integer>,
@as("LoggingInfo") loggingInfo: option<loggingInfo>,
@as("OpenMonitoring") openMonitoring: option<openMonitoring>,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoring>,
@as("EncryptionInfo") encryptionInfo: option<encryptionInfo>,
@as("CurrentVersion") currentVersion: option<__string>,
@as("CurrentBrokerSoftwareInfo") currentBrokerSoftwareInfo: option<brokerSoftwareInfo>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("ClusterName") clusterName: option<__string>,
@as("ClusterArn") clusterArn: option<__string>,
@as("ClientAuthentication") clientAuthentication: option<clientAuthentication>,
@as("BrokerNodeGroupInfo") brokerNodeGroupInfo: option<brokerNodeGroupInfo>,
@as("ActiveOperationArn") activeOperationArn: option<__string>
}
type __listOfClusterInfo = array<clusterInfo>
type clusterOperationInfo = {
@as("TargetClusterInfo") targetClusterInfo: option<mutableClusterInfo>,
@as("SourceClusterInfo") sourceClusterInfo: option<mutableClusterInfo>,
@as("OperationType") operationType: option<__string>,
@as("OperationSteps") operationSteps: option<__listOfClusterOperationStep>,
@as("OperationState") operationState: option<__string>,
@as("OperationArn") operationArn: option<__string>,
@as("ErrorInfo") errorInfo: option<errorInfo>,
@as("EndTime") endTime: option<__timestampIso8601>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("ClusterArn") clusterArn: option<__string>,
@as("ClientRequestId") clientRequestId: option<__string>
}
type __listOfClusterOperationInfo = array<clusterOperationInfo>
type awsServiceClient;
@module("@aws-sdk/client-kafka") @new external createClient: unit => awsServiceClient = "MSKClient";
module UpdateBrokerType = {
  type t;
  type request = {
@as("TargetInstanceType") targetInstanceType: __string,
@as("CurrentVersion") currentVersion: __string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBrokerCount = {
  type t;
  type request = {
@as("TargetNumberOfBrokerNodes") targetNumberOfBrokerNodes: __integerMin1Max15,
@as("CurrentVersion") currentVersion: __string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBootstrapBrokers = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("BootstrapBrokerStringSaslIam") bootstrapBrokerStringSaslIam: option<__string>,
@as("BootstrapBrokerStringSaslScram") bootstrapBrokerStringSaslScram: option<__string>,
@as("BootstrapBrokerStringTls") bootstrapBrokerStringTls: option<__string>,
@as("BootstrapBrokerString") bootstrapBrokerString: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "GetBootstrapBrokersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRevision = {
  type t;
  type request = {
@as("Revision") revision: __long,
@as("Arn") arn: __string
}
  type response = {
@as("ServerProperties") serverProperties: option<__blob>,
@as("Revision") revision: option<__long>,
@as("Description") description: option<__string>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeConfigurationRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConfiguration = {
  type t;
  type request = {
@as("Arn") arn: __string
}
  type response = {
@as("State") state: option<configurationState>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DeleteConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: option<__string>,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("State") state: option<clusterState>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfiguration = {
  type t;
  type request = {
@as("ServerProperties") serverProperties: __blob,
@as("Description") description: option<__string>,
@as("Arn") arn: __string
}
  type response = {
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterKafkaVersion = {
  type t;
  type request = {
@as("TargetKafkaVersion") targetKafkaVersion: __string,
@as("CurrentVersion") currentVersion: __string,
@as("ConfigurationInfo") configurationInfo: option<configurationInfo>,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateClusterKafkaVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterConfiguration = {
  type t;
  type request = {
@as("CurrentVersion") currentVersion: __string,
@as("ConfigurationInfo") configurationInfo: configurationInfo,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateClusterConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RebootBroker = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: __string,
@as("BrokerIds") brokerIds: __listOf__string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "RebootBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListScramSecrets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("SecretArnList") secretArnList: option<__listOf__string>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListScramSecretsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfiguration = {
  type t;
  type request = {
@as("Arn") arn: __string
}
  type response = {
@as("State") state: option<configurationState>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("KafkaVersions") kafkaVersions: option<__listOf__string>,
@as("Description") description: option<__string>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConfiguration = {
  type t;
  type request = {
@as("ServerProperties") serverProperties: __blob,
@as("Name") name: __string,
@as("KafkaVersions") kafkaVersions: option<__listOf__string>,
@as("Description") description: option<__string>
}
  type response = {
@as("State") state: option<configurationState>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("CreationTime") creationTime: option<__timestampIso8601>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "CreateConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBrokerStorage = {
  type t;
  type request = {
@as("TargetBrokerEBSVolumeInfo") targetBrokerEBSVolumeInfo: __listOfBrokerEBSVolumeInfo,
@as("CurrentVersion") currentVersion: __string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateBrokerStorageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListKafkaVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("KafkaVersions") kafkaVersions: option<__listOfKafkaVersion>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListKafkaVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Arn") arn: __string
}
  type response = {
@as("Revisions") revisions: option<__listOfConfigurationRevision>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListConfigurationRevisionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateScramSecret = {
  type t;
  type request = {
@as("SecretArnList") secretArnList: __listOf__string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("UnprocessedScramSecrets") unprocessedScramSecrets: option<__listOfUnprocessedScramSecret>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "BatchDisassociateScramSecretCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateScramSecret = {
  type t;
  type request = {
@as("SecretArnList") secretArnList: __listOf__string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("UnprocessedScramSecrets") unprocessedScramSecrets: option<__listOfUnprocessedScramSecret>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "BatchAssociateScramSecretCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMonitoring = {
  type t;
  type request = {
@as("LoggingInfo") loggingInfo: option<loggingInfo>,
@as("OpenMonitoring") openMonitoring: option<openMonitoringInfo>,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoring>,
@as("CurrentVersion") currentVersion: __string,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterOperationArn") clusterOperationArn: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "UpdateMonitoringCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("Configurations") configurations: option<__listOfConfiguration>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCompatibleKafkaVersions = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: option<__string>
}
  type response = {
@as("CompatibleKafkaVersions") compatibleKafkaVersions: option<__listOfCompatibleKafkaVersion>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "GetCompatibleKafkaVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("NumberOfBrokerNodes") numberOfBrokerNodes: __integerMin1Max15,
@as("LoggingInfo") loggingInfo: option<loggingInfo>,
@as("KafkaVersion") kafkaVersion: __stringMin1Max128,
@as("OpenMonitoring") openMonitoring: option<openMonitoringInfo>,
@as("EnhancedMonitoring") enhancedMonitoring: option<enhancedMonitoring>,
@as("EncryptionInfo") encryptionInfo: option<encryptionInfo>,
@as("ConfigurationInfo") configurationInfo: option<configurationInfo>,
@as("ClusterName") clusterName: __stringMin1Max64,
@as("ClientAuthentication") clientAuthentication: option<clientAuthentication>,
@as("BrokerNodeGroupInfo") brokerNodeGroupInfo: brokerNodeGroupInfo
}
  type response = {
@as("State") state: option<clusterState>,
@as("ClusterName") clusterName: option<__string>,
@as("ClusterArn") clusterArn: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNodes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("NodeInfoList") nodeInfoList: option<__listOfNodeInfo>,
@as("NextToken") nextToken: option<__string>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListNodesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCluster = {
  type t;
  type request = {
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("ClusterInfo") clusterInfo: option<clusterInfo>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ClusterNameFilter") clusterNameFilter: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("ClusterInfoList") clusterInfoList: option<__listOfClusterInfo>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterOperation = {
  type t;
  type request = {
@as("ClusterOperationArn") clusterOperationArn: __string
}
  type response = {
@as("ClusterOperationInfo") clusterOperationInfo: option<clusterOperationInfo>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "DescribeClusterOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusterOperations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ClusterArn") clusterArn: __string
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("ClusterOperationInfoList") clusterOperationInfoList: option<__listOfClusterOperationInfo>
}
  @module("@aws-sdk/client-kafka") @new external new_: (request) => t = "ListClusterOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
