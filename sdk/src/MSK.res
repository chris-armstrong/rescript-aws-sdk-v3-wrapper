type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kafka") @new external createClient: unit => awsServiceClient = "MSKClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
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
@ocaml.doc("<p>The broker or Zookeeper node.</p>") type nodeType = [@as("BROKER") #BROKER]
type maxResults = int
type kafkaVersionStatus = [@as("DEPRECATED") #DEPRECATED | @as("ACTIVE") #ACTIVE]
@ocaml.doc(
  "<p>Specifies which metrics are gathered for the MSK cluster. This property has the following possible values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION. For a list of the metrics associated with each of these levels of monitoring, see <a href=\"https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html\">Monitoring</a>.</p>"
)
type enhancedMonitoring = [
  | @as("PER_TOPIC_PER_PARTITION") #PER_TOPIC_PER_PARTITION
  | @as("PER_TOPIC_PER_BROKER") #PER_TOPIC_PER_BROKER
  | @as("PER_BROKER") #PER_BROKER
  | @as("DEFAULT") #DEFAULT
]
@ocaml.doc("<p>The state of a configuration.</p>")
type configurationState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
]
@ocaml.doc("<p>The type of cluster.</p>")
type clusterType = [@as("SERVERLESS") #SERVERLESS | @as("PROVISIONED") #PROVISIONED]
@ocaml.doc("<p>The state of the Apache Kafka cluster.</p>")
type clusterState = [
  | @as("UPDATING") #UPDATING
  | @as("REBOOTING_BROKER") #REBOOTING_BROKER
  | @as("MAINTENANCE") #MAINTENANCE
  | @as("HEALING") #HEALING
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
@ocaml.doc("<p>Client-broker encryption in transit setting.</p>")
type clientBroker = [
  | @as("PLAINTEXT") #PLAINTEXT
  | @as("TLS_PLAINTEXT") #TLS_PLAINTEXT
  | @as("TLS") #TLS
]
@ocaml.doc("<p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>
         <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>")
type brokerAZDistribution = [@as("DEFAULT") #DEFAULT]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
@ocaml.doc("<p>Error info for scram secret associate/disassociate failure.</p>")
type unprocessedScramSecret = {
  @ocaml.doc("<p>AWS Secrets Manager secret ARN.</p>") @as("SecretArn") secretArn: option<__string>,
  @ocaml.doc("<p>Error message for associate/disassociate failure.</p>") @as("ErrorMessage")
  errorMessage: option<__string>,
  @ocaml.doc("<p>Error code for associate/disassociate failure.</p>") @as("ErrorCode")
  errorCode: option<__string>,
}
type unauthenticated = {
  @ocaml.doc(
    "<p>Specifies whether you want to turn on or turn off unauthenticated traffic to your cluster.</p>"
  )
  @as("Enabled")
  enabled: option<__boolean>,
}
type stateInfo = {
  @as("Message") message: option<__string>,
  @as("Code") code: option<__string>,
}
@ocaml.doc("<p>Details for SASL/SCRAM client authentication.</p>")
type scram = {
  @ocaml.doc("<p>SASL/SCRAM authentication is enabled or not.</p>") @as("Enabled")
  enabled: option<__boolean>,
}
type s3 = {
  @as("Prefix") prefix: option<__string>,
  @as("Enabled") enabled: __boolean,
  @as("Bucket") bucket: option<__string>,
}
@ocaml.doc("Public access control for brokers.")
type publicAccess = {
  @ocaml.doc(
    "<p>The value DISABLED indicates that public access is turned off. SERVICE_PROVIDED_EIPS indicates that public access is turned on.</p>"
  )
  @as("Type")
  type_: option<__string>,
}
@ocaml.doc(
  "Contains information about provisioned throughput for EBS storage volumes attached to kafka broker nodes."
)
type provisionedThroughput = {
  @ocaml.doc(
    "Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second."
  )
  @as("VolumeThroughput")
  volumeThroughput: option<__integer>,
  @ocaml.doc("Provisioned throughput is enabled or not.") @as("Enabled") enabled: option<__boolean>,
}
@ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
type nodeExporterInfo = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
  @as("EnabledInBroker")
  enabledInBroker: __boolean,
}
@ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
type nodeExporter = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
  @as("EnabledInBroker")
  enabledInBroker: __boolean,
}
type kafkaVersion = {
  @as("Status") status: option<kafkaVersionStatus>,
  @as("Version") version: option<__string>,
}
@ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
type jmxExporterInfo = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
  @as("EnabledInBroker")
  enabledInBroker: __boolean,
}
@ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
type jmxExporter = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
  @as("EnabledInBroker")
  enabledInBroker: __boolean,
}
@ocaml.doc("<p>Details for IAM access control.</p>")
type iam = {
  @ocaml.doc("<p>Indicates whether IAM access control is enabled.</p>") @as("Enabled")
  enabled: option<__boolean>,
}
type firehose = {
  @as("Enabled") enabled: __boolean,
  @as("DeliveryStream") deliveryStream: option<__string>,
}
@ocaml.doc("<p>Returns information about an error state of the cluster.</p>")
type errorInfo = {
  @ocaml.doc("<p>An optional field to provide more details about the error.</p>") @as("ErrorString")
  errorString: option<__string>,
  @ocaml.doc("<p>A number describing the error programmatically.</p>") @as("ErrorCode")
  errorCode: option<__string>,
}
@ocaml.doc("<p>The settings for encrypting data in transit.</p>")
type encryptionInTransit = {
  @ocaml.doc("<p>When set to true, it indicates that data communication among the broker nodes of the cluster is encrypted. When set to false, the communication happens in plaintext.</p>
            <p>The default value is true.</p>")
  @as("InCluster")
  inCluster: option<__boolean>,
  @ocaml.doc("<p>Indicates the encryption setting for data in transit between clients and brokers. The following are the possible values.</p>
            <p>
               TLS means that client-broker communication is enabled with TLS only.</p>
            <p>
               TLS_PLAINTEXT means that client-broker communication is enabled for both TLS-encrypted, as well as plaintext data.</p>
            <p>
               PLAINTEXT means that client-broker communication is enabled in plaintext only.</p>
            <p>The default value is TLS_PLAINTEXT.</p>")
  @as("ClientBroker")
  clientBroker: option<clientBroker>,
}
@ocaml.doc("<p>The data-volume encryption details.</p>")
type encryptionAtRest = {
  @ocaml.doc(
    "<p>The ARN of the AWS KMS key for encrypting data at rest. If you don't specify a KMS key, MSK creates one for you and uses it.</p>"
  )
  @as("DataVolumeKMSKeyId")
  dataVolumeKMSKeyId: __string,
}
@ocaml.doc("<p>Describes a configuration revision.</p>")
type configurationRevision = {
  @ocaml.doc("<p>The revision number.</p>") @as("Revision") revision: __long,
  @ocaml.doc("<p>The description of the configuration revision.</p>") @as("Description")
  description: option<__string>,
  @ocaml.doc("<p>The time when the configuration revision was created.</p>") @as("CreationTime")
  creationTime: __timestampIso8601,
}
@ocaml.doc("<p>Specifies the configuration to use for the brokers.</p>")
type configurationInfo = {
  @ocaml.doc("<p>The revision of the configuration to use.</p>") @as("Revision") revision: __long,
  @ocaml.doc("<p>ARN of the configuration to use.</p>") @as("Arn") arn: __string,
}
@ocaml.doc("<p>State information about the operation step.</p>")
type clusterOperationStepInfo = {
  @ocaml.doc("<p>The steps current status.</p>") @as("StepStatus") stepStatus: option<__string>,
}
type cloudWatchLogs = {
  @as("LogGroup") logGroup: option<__string>,
  @as("Enabled") enabled: __boolean,
}
@ocaml.doc("<p>Information about the current software installed on the cluster.</p>")
type brokerSoftwareInfo = {
  @ocaml.doc("<p>The version of Apache Kafka.</p>") @as("KafkaVersion")
  kafkaVersion: option<__string>,
  @ocaml.doc(
    "<p>The revision of the configuration to use. This field isn't visible in this preview release.</p>"
  )
  @as("ConfigurationRevision")
  configurationRevision: option<__long>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the configuration used for the cluster. This field isn't visible in this preview release.</p>"
  )
  @as("ConfigurationArn")
  configurationArn: option<__string>,
}
type __listOfUnprocessedScramSecret = array<unprocessedScramSecret>
type __listOfKafkaVersion = array<kafkaVersion>
type __listOfConfigurationRevision = array<configurationRevision>
@ocaml.doc("<p>Zookeeper node information.</p>")
type zookeeperNodeInfo = {
  @ocaml.doc("<p>The version of Zookeeper.</p>") @as("ZookeeperVersion")
  zookeeperVersion: option<__string>,
  @ocaml.doc("<p>The role-specific ID for Zookeeper.</p>") @as("ZookeeperId")
  zookeeperId: option<__double>,
  @ocaml.doc("<p>Endpoints for accessing the ZooKeeper.</p>") @as("Endpoints")
  endpoints: option<__listOf__string>,
  @ocaml.doc("<p>The virtual private cloud (VPC) IP address of the client.</p>")
  @as("ClientVpcIpAddress")
  clientVpcIpAddress: option<__string>,
  @ocaml.doc("<p>The attached elastic network interface of the broker.</p>") @as("AttachedENIId")
  attachedENIId: option<__string>,
}
@ocaml.doc("<p>The configuration of the Amazon VPCs for the cluster.</p>")
type vpcConfig = {
  @ocaml.doc("<p>The IDs of the security groups associated with the cluster.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<__listOf__string>,
  @ocaml.doc("<p>The IDs of the subnets associated with the cluster.</p>") @as("SubnetIds")
  subnetIds: __listOf__string,
}
@ocaml.doc("<p>Details for client authentication using TLS.</p>")
type tls = {
  @ocaml.doc("<p>Specifies whether you want to turn on or turn off TLS authentication.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>List of ACM Certificate Authority ARNs.</p>") @as("CertificateAuthorityArnList")
  certificateAuthorityArnList: option<__listOf__string>,
}
@ocaml.doc("<p>Details for client authentication using SASL.</p>")
type serverlessSasl = {
  @ocaml.doc("<p>Indicates whether IAM access control is enabled.</p>") @as("Iam") iam: option<iam>,
}
@ocaml.doc("<p>Details for client authentication using SASL.</p>")
type sasl = {
  @ocaml.doc("<p>Indicates whether IAM access control is enabled.</p>") @as("Iam") iam: option<iam>,
  @ocaml.doc("<p>Details for SASL/SCRAM client authentication.</p>") @as("Scram")
  scram: option<scram>,
}
@ocaml.doc("<p>Prometheus settings.</p>")
type prometheusInfo = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
  @as("NodeExporter")
  nodeExporter: option<nodeExporterInfo>,
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
  @as("JmxExporter")
  jmxExporter: option<jmxExporterInfo>,
}
@ocaml.doc("<p>Prometheus settings.</p>")
type prometheus = {
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the Node Exporter.</p>")
  @as("NodeExporter")
  nodeExporter: option<nodeExporter>,
  @ocaml.doc("<p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>")
  @as("JmxExporter")
  jmxExporter: option<jmxExporter>,
}
@ocaml.doc(
  "<p>Includes encryption-related information, such as the AWS KMS key used for encrypting data at rest and whether you want MSK to encrypt your data in transit.</p>"
)
type encryptionInfo = {
  @ocaml.doc("<p>The details for encryption in transit.</p>") @as("EncryptionInTransit")
  encryptionInTransit: option<encryptionInTransit>,
  @ocaml.doc("<p>The data-volume encryption details.</p>") @as("EncryptionAtRest")
  encryptionAtRest: option<encryptionAtRest>,
}
@ocaml.doc(
  "<p>Contains information about the EBS storage volumes attached to Apache Kafka broker nodes.</p>"
)
type ebsstorageInfo = {
  @ocaml.doc("<p>The size in GiB of the EBS volume for the data drive on each broker node.</p>")
  @as("VolumeSize")
  volumeSize: option<__integerMin1Max16384>,
  @ocaml.doc("EBS volume provisioned throughput information.") @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughput>,
}
@ocaml.doc("<p>Information about the broker access configuration.</p>")
type connectivityInfo = {
  @ocaml.doc("<p>Public access control for brokers.</p>") @as("PublicAccess")
  publicAccess: option<publicAccess>,
}
@ocaml.doc("<p>Represents an MSK Configuration.</p>")
type configuration = {
  @ocaml.doc(
    "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>"
  )
  @as("State")
  state: configurationState,
  @ocaml.doc("<p>The name of the configuration.</p>") @as("Name") name: __string,
  @ocaml.doc("<p>Latest revision of the configuration.</p>") @as("LatestRevision")
  latestRevision: configurationRevision,
  @ocaml.doc(
    "<p>An array of the versions of Apache Kafka with which you can use this MSK configuration. You can use this configuration for an MSK cluster only if the Apache Kafka version specified for the cluster appears in this array.</p>"
  )
  @as("KafkaVersions")
  kafkaVersions: __listOf__string,
  @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
  description: __string,
  @ocaml.doc("<p>The time when the configuration was created.</p>") @as("CreationTime")
  creationTime: __timestampIso8601,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
  arn: __string,
}
@ocaml.doc(
  "<p>Contains source Apache Kafka versions and compatible target Apache Kafka versions.</p>"
)
type compatibleKafkaVersion = {
  @ocaml.doc("<p>A list of Apache Kafka versions.</p>") @as("TargetVersions")
  targetVersions: option<__listOf__string>,
  @ocaml.doc("<p>An Apache Kafka version.</p>") @as("SourceVersion")
  sourceVersion: option<__string>,
}
@ocaml.doc("<p>Step taken during a cluster operation.</p>")
type clusterOperationStep = {
  @ocaml.doc("<p>The name of the step.</p>") @as("StepName") stepName: option<__string>,
  @ocaml.doc("<p>Information about the step and its status.</p>") @as("StepInfo")
  stepInfo: option<clusterOperationStepInfo>,
}
@ocaml.doc("<p>BrokerNodeInfo</p>")
type brokerNodeInfo = {
  @ocaml.doc("<p>Endpoints for accessing the broker.</p>") @as("Endpoints")
  endpoints: option<__listOf__string>,
  @ocaml.doc(
    "<p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>"
  )
  @as("CurrentBrokerSoftwareInfo")
  currentBrokerSoftwareInfo: option<brokerSoftwareInfo>,
  @ocaml.doc("<p>The virtual private cloud (VPC) of the client.</p>") @as("ClientVpcIpAddress")
  clientVpcIpAddress: option<__string>,
  @ocaml.doc("<p>The client subnet to which this broker node belongs.</p>") @as("ClientSubnet")
  clientSubnet: option<__string>,
  @ocaml.doc("<p>The ID of the broker.</p>") @as("BrokerId") brokerId: option<__double>,
  @ocaml.doc("<p>The attached elastic network interface of the broker.</p>") @as("AttachedENIId")
  attachedENIId: option<__string>,
}
type brokerLogs = {
  @as("S3") s3: option<s3>,
  @as("Firehose") firehose: option<firehose>,
  @as("CloudWatchLogs") cloudWatchLogs: option<cloudWatchLogs>,
}
@ocaml.doc(
  "<p>Specifies the EBS volume upgrade information. The broker identifier must be set to the keyword ALL. This means the changes apply to all the brokers in the cluster.</p>"
)
type brokerEBSVolumeInfo = {
  @ocaml.doc("<p>Size of the EBS volume to update.</p>") @as("VolumeSizeGB")
  volumeSizeGB: option<__integer>,
  @ocaml.doc("EBS volume provisioned throughput information.") @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughput>,
  @ocaml.doc("<p>The ID of the broker to update.</p>") @as("KafkaBrokerNodeId")
  kafkaBrokerNodeId: __string,
}
type __listOfVpcConfig = array<vpcConfig>
type __listOfConfiguration = array<configuration>
type __listOfCompatibleKafkaVersion = array<compatibleKafkaVersion>
type __listOfClusterOperationStep = array<clusterOperationStep>
type __listOfBrokerEBSVolumeInfo = array<brokerEBSVolumeInfo>
@ocaml.doc("<p>Contains information about storage volumes attached to MSK broker nodes.</p>")
type storageInfo = {
  @ocaml.doc("<p>EBS volume information.</p>") @as("EbsStorageInfo")
  ebsStorageInfo: option<ebsstorageInfo>,
}
@ocaml.doc("<p>Includes all client authentication information.</p>")
type serverlessClientAuthentication = {
  @ocaml.doc("<p>Details for ClientAuthentication using SASL.</p>") @as("Sasl")
  sasl: option<serverlessSasl>,
}
@ocaml.doc("<p>JMX and Node monitoring for the MSK cluster.</p>")
type openMonitoringInfo = {
  @ocaml.doc("<p>Prometheus settings.</p>") @as("Prometheus") prometheus: prometheusInfo,
}
@ocaml.doc("<p>JMX and Node monitoring for the MSK cluster.</p>")
type openMonitoring = {
  @ocaml.doc("<p>Prometheus settings.</p>") @as("Prometheus") prometheus: prometheus,
}
@ocaml.doc("<p>The node information object.</p>")
type nodeInfo = {
  @ocaml.doc("<p>The ZookeeperNodeInfo.</p>") @as("ZookeeperNodeInfo")
  zookeeperNodeInfo: option<zookeeperNodeInfo>,
  @ocaml.doc("<p>The node type.</p>") @as("NodeType") nodeType: option<nodeType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the node.</p>") @as("NodeARN")
  nodeARN: option<__string>,
  @ocaml.doc("<p>The instance type.</p>") @as("InstanceType") instanceType: option<__string>,
  @ocaml.doc("<p>The broker node info.</p>") @as("BrokerNodeInfo")
  brokerNodeInfo: option<brokerNodeInfo>,
  @ocaml.doc("<p>The start time.</p>") @as("AddedToClusterTime")
  addedToClusterTime: option<__string>,
}
type loggingInfo = {@as("BrokerLogs") brokerLogs: brokerLogs}
@ocaml.doc("<p>Includes all client authentication information.</p>")
type clientAuthentication = {
  @ocaml.doc("<p>Contains information about unauthenticated traffic to the cluster.</p>")
  @as("Unauthenticated")
  unauthenticated: option<unauthenticated>,
  @ocaml.doc("<p>Details for ClientAuthentication using TLS.</p>") @as("Tls") tls: option<tls>,
  @ocaml.doc("<p>Details for ClientAuthentication using SASL.</p>") @as("Sasl") sasl: option<sasl>,
}
type __listOfNodeInfo = array<nodeInfo>
@ocaml.doc("<p>Serverless cluster request.</p>")
type serverlessRequest = {
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<serverlessClientAuthentication>,
  @ocaml.doc("<p>The configuration of the Amazon VPCs for the cluster.</p>") @as("VpcConfigs")
  vpcConfigs: __listOfVpcConfig,
}
@ocaml.doc("<p>Serverless cluster.</p>")
type serverless = {
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<serverlessClientAuthentication>,
  @ocaml.doc("<p>The configuration of the Amazon VPCs for the cluster.</p>") @as("VpcConfigs")
  vpcConfigs: __listOfVpcConfig,
}
@ocaml.doc("<p>Information about cluster attributes that can be updated via update APIs.</p>")
type mutableClusterInfo = {
  @ocaml.doc("<p>Information about the broker access configuration.</p>") @as("ConnectivityInfo")
  connectivityInfo: option<connectivityInfo>,
  @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
  encryptionInfo: option<encryptionInfo>,
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<clientAuthentication>,
  @ocaml.doc("<p>Information about the Amazon MSK broker type.</p>") @as("InstanceType")
  instanceType: option<__stringMin5Max32>,
  @ocaml.doc(
    "<p>You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.</p>"
  )
  @as("LoggingInfo")
  loggingInfo: option<loggingInfo>,
  @ocaml.doc("<p>The Apache Kafka version.</p>") @as("KafkaVersion") kafkaVersion: option<__string>,
  @ocaml.doc("<p>The settings for open monitoring.</p>") @as("OpenMonitoring")
  openMonitoring: option<openMonitoring>,
  @ocaml.doc(
    "<p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>"
  )
  @as("EnhancedMonitoring")
  enhancedMonitoring: option<enhancedMonitoring>,
  @ocaml.doc("<p>The number of broker nodes in the cluster.</p>") @as("NumberOfBrokerNodes")
  numberOfBrokerNodes: option<__integer>,
  @ocaml.doc("<p>Information about the changes in the configuration of the brokers.</p>")
  @as("ConfigurationInfo")
  configurationInfo: option<configurationInfo>,
  @ocaml.doc("<p>Specifies the size of the EBS volume and the ID of the associated broker.</p>")
  @as("BrokerEBSVolumeInfo")
  brokerEBSVolumeInfo: option<__listOfBrokerEBSVolumeInfo>,
}
@ocaml.doc("<p>Describes the setup to be used for Apache Kafka broker nodes in the cluster.</p>")
type brokerNodeGroupInfo = {
  @ocaml.doc("<p>Information about the broker access configuration.</p>") @as("ConnectivityInfo")
  connectivityInfo: option<connectivityInfo>,
  @ocaml.doc("<p>Contains information about storage volumes attached to MSK broker nodes.</p>")
  @as("StorageInfo")
  storageInfo: option<storageInfo>,
  @ocaml.doc(
    "<p>The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster. If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.</p>"
  )
  @as("SecurityGroups")
  securityGroups: option<__listOf__string>,
  @ocaml.doc("<p>The type of Amazon EC2 instances to use for Apache Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,
kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.</p>")
  @as("InstanceType")
  instanceType: __stringMin5Max32,
  @ocaml.doc(
    "<p>The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't be in Availability Zone us-east-1e.</p>"
  )
  @as("ClientSubnets")
  clientSubnets: __listOf__string,
  @ocaml.doc("<p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>
         <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>")
  @as("BrokerAZDistribution")
  brokerAZDistribution: option<brokerAZDistribution>,
}
@ocaml.doc("<p>Provisioned cluster request.</p>")
type provisionedRequest = {
  @ocaml.doc("<p>The number of broker nodes in the cluster.</p>") @as("NumberOfBrokerNodes")
  numberOfBrokerNodes: __integerMin1Max15,
  @ocaml.doc("<p>Log delivery information for the cluster.</p>") @as("LoggingInfo")
  loggingInfo: option<loggingInfo>,
  @ocaml.doc("<p>The Apache Kafka version that you want for the cluster.</p>") @as("KafkaVersion")
  kafkaVersion: __stringMin1Max128,
  @ocaml.doc("<p>The settings for open monitoring.</p>") @as("OpenMonitoring")
  openMonitoring: option<openMonitoringInfo>,
  @ocaml.doc(
    "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>"
  )
  @as("EnhancedMonitoring")
  enhancedMonitoring: option<enhancedMonitoring>,
  @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
  encryptionInfo: option<encryptionInfo>,
  @ocaml.doc(
    "<p>Represents the configuration that you want Amazon MSK to use for the brokers in a cluster.</p>"
  )
  @as("ConfigurationInfo")
  configurationInfo: option<configurationInfo>,
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<clientAuthentication>,
  @ocaml.doc("<p>Information about the brokers.</p>") @as("BrokerNodeGroupInfo")
  brokerNodeGroupInfo: brokerNodeGroupInfo,
}
@ocaml.doc("<p>Provisioned cluster.</p>")
type provisioned = {
  @ocaml.doc(
    "<p>The connection string to use to connect to the Apache ZooKeeper cluster on a TLS port.</p>"
  )
  @as("ZookeeperConnectStringTls")
  zookeeperConnectStringTls: option<__string>,
  @ocaml.doc("<p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>")
  @as("ZookeeperConnectString")
  zookeeperConnectString: option<__string>,
  @ocaml.doc("<p>The number of broker nodes in the cluster.</p>") @as("NumberOfBrokerNodes")
  numberOfBrokerNodes: __integerMin1Max15,
  @ocaml.doc("<p>Log delivery information for the cluster.</p>") @as("LoggingInfo")
  loggingInfo: option<loggingInfo>,
  @ocaml.doc("<p>The settings for open monitoring.</p>") @as("OpenMonitoring")
  openMonitoring: option<openMonitoringInfo>,
  @ocaml.doc(
    "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>"
  )
  @as("EnhancedMonitoring")
  enhancedMonitoring: option<enhancedMonitoring>,
  @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
  encryptionInfo: option<encryptionInfo>,
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<clientAuthentication>,
  @ocaml.doc("<p>Information about the Apache Kafka version deployed on the brokers.</p>")
  @as("CurrentBrokerSoftwareInfo")
  currentBrokerSoftwareInfo: option<brokerSoftwareInfo>,
  @ocaml.doc("<p>Information about the brokers.</p>") @as("BrokerNodeGroupInfo")
  brokerNodeGroupInfo: brokerNodeGroupInfo,
}
@ocaml.doc("<p>Returns information about a cluster operation.</p>")
type clusterOperationInfo = {
  @ocaml.doc("<p>Information about cluster attributes after a cluster is updated.</p>")
  @as("TargetClusterInfo")
  targetClusterInfo: option<mutableClusterInfo>,
  @ocaml.doc("<p>Information about cluster attributes before a cluster is updated.</p>")
  @as("SourceClusterInfo")
  sourceClusterInfo: option<mutableClusterInfo>,
  @ocaml.doc("<p>Type of the cluster operation.</p>") @as("OperationType")
  operationType: option<__string>,
  @ocaml.doc("<p>Steps completed during the operation.</p>") @as("OperationSteps")
  operationSteps: option<__listOfClusterOperationStep>,
  @ocaml.doc("<p>State of the cluster operation.</p>") @as("OperationState")
  operationState: option<__string>,
  @ocaml.doc("<p>ARN of the cluster operation.</p>") @as("OperationArn")
  operationArn: option<__string>,
  @ocaml.doc("<p>Describes the error if the operation fails.</p>") @as("ErrorInfo")
  errorInfo: option<errorInfo>,
  @ocaml.doc("<p>The time at which the operation finished.</p>") @as("EndTime")
  endTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The time that the operation was created.</p>") @as("CreationTime")
  creationTime: option<__timestampIso8601>,
  @ocaml.doc("<p>ARN of the cluster.</p>") @as("ClusterArn") clusterArn: option<__string>,
  @ocaml.doc("<p>The ID of the API request that triggered this operation.</p>")
  @as("ClientRequestId")
  clientRequestId: option<__string>,
}
@ocaml.doc("<p>Returns information about a cluster.</p>")
type clusterInfo = {
  @ocaml.doc("<p>The connection string to use to connect to zookeeper cluster on Tls port.</p>")
  @as("ZookeeperConnectStringTls")
  zookeeperConnectStringTls: option<__string>,
  @ocaml.doc("<p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>")
  @as("ZookeeperConnectString")
  zookeeperConnectString: option<__string>,
  @ocaml.doc("<p>Tags attached to the cluster.</p>") @as("Tags") tags: option<__mapOf__string>,
  @as("StateInfo") stateInfo: option<stateInfo>,
  @ocaml.doc(
    "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>"
  )
  @as("State")
  state: option<clusterState>,
  @ocaml.doc("<p>The number of broker nodes in the cluster.</p>") @as("NumberOfBrokerNodes")
  numberOfBrokerNodes: option<__integer>,
  @as("LoggingInfo") loggingInfo: option<loggingInfo>,
  @ocaml.doc("<p>Settings for open monitoring using Prometheus.</p>") @as("OpenMonitoring")
  openMonitoring: option<openMonitoring>,
  @ocaml.doc(
    "<p>Specifies which metrics are gathered for the MSK cluster. This property has the following possible values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION. For a list of the metrics associated with each of these levels of monitoring, see <a href=\"https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html\">Monitoring</a>.</p>"
  )
  @as("EnhancedMonitoring")
  enhancedMonitoring: option<enhancedMonitoring>,
  @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
  encryptionInfo: option<encryptionInfo>,
  @ocaml.doc("<p>The current version of the MSK cluster.</p>") @as("CurrentVersion")
  currentVersion: option<__string>,
  @ocaml.doc(
    "<p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>"
  )
  @as("CurrentBrokerSoftwareInfo")
  currentBrokerSoftwareInfo: option<brokerSoftwareInfo>,
  @ocaml.doc("<p>The time when the cluster was created.</p>") @as("CreationTime")
  creationTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The name of the cluster.</p>") @as("ClusterName") clusterName: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
  @as("ClusterArn")
  clusterArn: option<__string>,
  @ocaml.doc("<p>Includes all client authentication information.</p>") @as("ClientAuthentication")
  clientAuthentication: option<clientAuthentication>,
  @ocaml.doc("<p>Information about the broker nodes.</p>") @as("BrokerNodeGroupInfo")
  brokerNodeGroupInfo: option<brokerNodeGroupInfo>,
  @ocaml.doc("<p>Arn of active cluster operation.</p>") @as("ActiveOperationArn")
  activeOperationArn: option<__string>,
}
type __listOfClusterOperationInfo = array<clusterOperationInfo>
type __listOfClusterInfo = array<clusterInfo>
@ocaml.doc("<p>Returns information about a cluster.</p>")
type cluster = {
  @ocaml.doc("<p>Information about the serverless cluster.</p>") @as("Serverless")
  serverless: option<serverless>,
  @ocaml.doc("<p>Information about the provisioned cluster.</p>") @as("Provisioned")
  provisioned: option<provisioned>,
  @ocaml.doc("<p>Tags attached to the cluster.</p>") @as("Tags") tags: option<__mapOf__string>,
  @ocaml.doc("<p>State Info for the Amazon MSK cluster.</p>") @as("StateInfo")
  stateInfo: option<stateInfo>,
  @ocaml.doc(
    "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>"
  )
  @as("State")
  state: option<clusterState>,
  @ocaml.doc("<p>The current version of the MSK cluster.</p>") @as("CurrentVersion")
  currentVersion: option<__string>,
  @ocaml.doc("<p>The time when the cluster was created.</p>") @as("CreationTime")
  creationTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The name of the cluster.</p>") @as("ClusterName") clusterName: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
  @as("ClusterArn")
  clusterArn: option<__string>,
  @ocaml.doc("<p>Cluster Type.</p>") @as("ClusterType") clusterType: option<clusterType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies a cluster operation.</p>")
  @as("ActiveOperationArn")
  activeOperationArn: option<__string>,
}
type __listOfCluster = array<cluster>
@ocaml.doc("<p>The operations for managing an Amazon MSK cluster.</p>")
module UpdateBrokerType = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>"
    )
    @as("TargetInstanceType")
    targetInstanceType: __string,
    @ocaml.doc(
      "<p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateBrokerTypeCommand"
  let make = (~targetInstanceType, ~currentVersion, ~clusterArn, ()) =>
    new({
      targetInstanceType: targetInstanceType,
      currentVersion: currentVersion,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBrokerCount = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>"
    )
    @as("TargetNumberOfBrokerNodes")
    targetNumberOfBrokerNodes: __integerMin1Max15,
    @ocaml.doc(
      "<p>The version of cluster to update from. A successful operation will then generate a new version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateBrokerCountCommand"
  let make = (~targetNumberOfBrokerNodes, ~currentVersion, ~clusterArn, ()) =>
    new({
      targetNumberOfBrokerNodes: targetNumberOfBrokerNodes,
      currentVersion: currentVersion,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBootstrapBrokers = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>"
    )
    @as("BootstrapBrokerStringPublicSaslIam")
    bootstrapBrokerStringPublicSaslIam: option<__string>,
    @ocaml.doc(
      "<p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>"
    )
    @as("BootstrapBrokerStringPublicSaslScram")
    bootstrapBrokerStringPublicSaslScram: option<__string>,
    @ocaml.doc("<p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>")
    @as("BootstrapBrokerStringPublicTls")
    bootstrapBrokerStringPublicTls: option<__string>,
    @ocaml.doc(
      "<p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>"
    )
    @as("BootstrapBrokerStringSaslIam")
    bootstrapBrokerStringSaslIam: option<__string>,
    @ocaml.doc(
      "<p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>"
    )
    @as("BootstrapBrokerStringSaslScram")
    bootstrapBrokerStringSaslScram: option<__string>,
    @ocaml.doc("<p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>")
    @as("BootstrapBrokerStringTls")
    bootstrapBrokerStringTls: option<__string>,
    @ocaml.doc("<p>A string containing one or more hostname:port pairs.</p>")
    @as("BootstrapBrokerString")
    bootstrapBrokerString: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "GetBootstrapBrokersCommand"
  let make = (~clusterArn, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationRevision = {
  type t
  type request = {
    @ocaml.doc("<p>A string that uniquely identifies a revision of an MSK configuration.</p>")
    @as("Revision")
    revision: __long,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>"
    )
    @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc("<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. 
               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>")
    @as("ServerProperties")
    serverProperties: option<__blob>,
    @ocaml.doc("<p>The revision number.</p>") @as("Revision") revision: option<__long>,
    @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The time when the configuration was created.</p>") @as("CreationTime")
    creationTime: option<__timestampIso8601>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "DescribeConfigurationRevisionCommand"
  let make = (~revision, ~arn, ()) => new({revision: revision, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>"
    )
    @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>"
    )
    @as("State")
    state: option<configurationState>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>"
    )
    @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "DeleteConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The current version of the MSK cluster.</p>") @as("CurrentVersion")
    currentVersion: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>"
    )
    @as("State")
    state: option<clusterState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "DeleteClusterCommand"
  let make = (~clusterArn, ~currentVersion=?, ()) =>
    new({currentVersion: currentVersion, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. 
               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>")
    @as("ServerProperties")
    serverProperties: __blob,
    @ocaml.doc("<p>The description of the configuration revision.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc("<p>Latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateConfigurationCommand"
  let make = (~serverProperties, ~arn, ~description=?, ()) =>
    new({serverProperties: serverProperties, description: description, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClusterKafkaVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Target Kafka version.</p>") @as("TargetKafkaVersion")
    targetKafkaVersion: __string,
    @ocaml.doc("<p>Current cluster version.</p>") @as("CurrentVersion") currentVersion: __string,
    @ocaml.doc(
      "<p>The custom configuration that should be applied on the new version of cluster.</p>"
    )
    @as("ConfigurationInfo")
    configurationInfo: option<configurationInfo>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "UpdateClusterKafkaVersionCommand"
  let make = (~targetKafkaVersion, ~currentVersion, ~clusterArn, ~configurationInfo=?, ()) =>
    new({
      targetKafkaVersion: targetKafkaVersion,
      currentVersion: currentVersion,
      configurationInfo: configurationInfo,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateClusterConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the cluster that needs to be updated.</p>") @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc(
      "<p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>"
    )
    @as("ConfigurationInfo")
    configurationInfo: configurationInfo,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "UpdateClusterConfigurationCommand"
  let make = (~currentVersion, ~configurationInfo, ~clusterArn, ()) =>
    new({
      currentVersion: currentVersion,
      configurationInfo: configurationInfo,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>
            <ul>
               <li>
                  <p>Each tag key must be unique. If you add a tag with a key that's already in
                  use, your new tag overwrites the existing key-value pair. </p>
               </li>
               <li>
                  <p>You can't start a tag key with aws: because this prefix is reserved for use
                  by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
                  you can't edit or delete them.</p>
               </li>
               <li>
                  <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>
               </li>
               <li>
                  <p>Tag keys must consist of the following characters: Unicode letters, digits,
                  white space, and the following special characters: _ . / = + -
                     @.</p>
               </li>
            </ul>")
    @as("TagKeys")
    tagKeys: __listOf__string,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pair for the resource tag.</p>") @as("Tags") tags: __mapOf__string,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-kafka") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RebootBroker = {
  type t
  @ocaml.doc("Reboots a node.")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>")
    @as("ClusterArn")
    clusterArn: __string,
    @ocaml.doc(
      "<p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>"
    )
    @as("BrokerIds")
    brokerIds: __listOf__string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "RebootBrokerCommand"
  let make = (~clusterArn, ~brokerIds, ()) => new({clusterArn: clusterArn, brokerIds: brokerIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The key-value pair for the resource tag.</p>") @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScramSecrets = {
  type t
  type request = {
    @ocaml.doc("<p>The nextToken of the query.</p>") @as("NextToken") nextToken: option<__string>,
    @ocaml.doc("<p>The maxResults of the query.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The arn of the cluster.</p>") @as("ClusterArn") clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The list of scram secrets associated with the cluster.</p>") @as("SecretArnList")
    secretArnList: option<__listOf__string>,
    @ocaml.doc("<p>Paginated results marker.</p>") @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListScramSecretsCommand"
  let make = (~clusterArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>"
    )
    @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>"
    )
    @as("State")
    state: option<configurationState>,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("Name") name: option<__string>,
    @ocaml.doc("<p>Latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>The versions of Apache Kafka with which you can use this MSK configuration.</p>")
    @as("KafkaVersions")
    kafkaVersions: option<__listOf__string>,
    @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The time when the configuration was created.</p>") @as("CreationTime")
    creationTime: option<__timestampIso8601>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "DescribeConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded. 
               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>")
    @as("ServerProperties")
    serverProperties: __blob,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("Name") name: __string,
    @ocaml.doc("<p>The versions of Apache Kafka with which you can use this MSK configuration.</p>")
    @as("KafkaVersions")
    kafkaVersions: option<__listOf__string>,
    @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
    description: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>"
    )
    @as("State")
    state: option<configurationState>,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("Name") name: option<__string>,
    @ocaml.doc("<p>Latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>The time when the configuration was created.</p>") @as("CreationTime")
    creationTime: option<__timestampIso8601>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "CreateConfigurationCommand"
  let make = (~serverProperties, ~name, ~kafkaVersions=?, ~description=?, ()) =>
    new({
      serverProperties: serverProperties,
      name: name,
      kafkaVersions: kafkaVersions,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnectivity = {
  type t
  @ocaml.doc("Request body for UpdateConnectivity.")
  type request = {
    @ocaml.doc(
      "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>Information about the broker access configuration.</p>") @as("ConnectivityInfo")
    connectivityInfo: connectivityInfo,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configuration.</p>") @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateConnectivityCommand"
  let make = (~currentVersion, ~connectivityInfo, ~clusterArn, ()) =>
    new({
      currentVersion: currentVersion,
      connectivityInfo: connectivityInfo,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKafkaVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("KafkaVersions") kafkaVersions: option<__listOfKafkaVersion>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListKafkaVersionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurationRevisions = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>"
    )
    @as("Arn")
    arn: __string,
  }
  type response = {
    @ocaml.doc("<p>List of ConfigurationRevision objects.</p>") @as("Revisions")
    revisions: option<__listOfConfigurationRevision>,
    @ocaml.doc("<p>Paginated results marker.</p>") @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "ListConfigurationRevisionsCommand"
  let make = (~arn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateScramSecret = {
  type t
  @ocaml.doc("<p>Disassociates sasl scram secrets to cluster.</p>")
  type request = {
    @ocaml.doc("<p>List of AWS Secrets Manager secret ARNs.</p>") @as("SecretArnList")
    secretArnList: __listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>List of errors when disassociating secrets to cluster.</p>")
    @as("UnprocessedScramSecrets")
    unprocessedScramSecrets: option<__listOfUnprocessedScramSecret>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "BatchDisassociateScramSecretCommand"
  let make = (~secretArnList, ~clusterArn, ()) =>
    new({secretArnList: secretArnList, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateScramSecret = {
  type t
  @ocaml.doc("<p>Associates sasl scram secrets to cluster.</p>")
  type request = {
    @ocaml.doc("<p>List of AWS Secrets Manager secret ARNs.</p>") @as("SecretArnList")
    secretArnList: __listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>List of errors when associating secrets to cluster.</p>")
    @as("UnprocessedScramSecrets")
    unprocessedScramSecrets: option<__listOfUnprocessedScramSecret>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "BatchAssociateScramSecretCommand"
  let make = (~secretArnList, ~clusterArn, ()) =>
    new({secretArnList: secretArnList, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecurity = {
  type t
  type request = {
    @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
    encryptionInfo: option<encryptionInfo>,
    @ocaml.doc(
      "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
    @ocaml.doc("<p>Includes all client authentication related information.</p>")
    @as("ClientAuthentication")
    clientAuthentication: option<clientAuthentication>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateSecurityCommand"
  let make = (~currentVersion, ~clusterArn, ~encryptionInfo=?, ~clientAuthentication=?, ()) =>
    new({
      encryptionInfo: encryptionInfo,
      currentVersion: currentVersion,
      clusterArn: clusterArn,
      clientAuthentication: clientAuthentication,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMonitoring = {
  type t
  @ocaml.doc("Request body for UpdateMonitoring.")
  type request = {
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The settings for open monitoring.</p>") @as("OpenMonitoring")
    openMonitoring: option<openMonitoringInfo>,
    @ocaml.doc(
      "<p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>"
    )
    @as("EnhancedMonitoring")
    enhancedMonitoring: option<enhancedMonitoring>,
    @ocaml.doc(
      "<p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateMonitoringCommand"
  let make = (
    ~currentVersion,
    ~clusterArn,
    ~loggingInfo=?,
    ~openMonitoring=?,
    ~enhancedMonitoring=?,
    (),
  ) =>
    new({
      loggingInfo: loggingInfo,
      openMonitoring: openMonitoring,
      enhancedMonitoring: enhancedMonitoring,
      currentVersion: currentVersion,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBrokerStorage = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Describes the target volume size and the ID of the broker to apply the update to.</p>"
    )
    @as("TargetBrokerEBSVolumeInfo")
    targetBrokerEBSVolumeInfo: __listOfBrokerEBSVolumeInfo,
    @ocaml.doc(
      "<p>The version of cluster to update from. A successful operation will then generate a new version.</p>"
    )
    @as("CurrentVersion")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster operation.</p>")
    @as("ClusterOperationArn")
    clusterOperationArn: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "UpdateBrokerStorageCommand"
  let make = (~targetBrokerEBSVolumeInfo, ~currentVersion, ~clusterArn, ()) =>
    new({
      targetBrokerEBSVolumeInfo: targetBrokerEBSVolumeInfo,
      currentVersion: currentVersion,
      clusterArn: clusterArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The paginated results marker. When the result of a ListConfigurations operation is truncated, the call returns NextToken in the response. 
               To get another batch of configurations, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of MSK configurations.</p>") @as("Configurations")
    configurations: option<__listOfConfiguration>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCompatibleKafkaVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster check.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>A list of CompatibleKafkaVersion objects.</p>") @as("CompatibleKafkaVersions")
    compatibleKafkaVersions: option<__listOfCompatibleKafkaVersion>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "GetCompatibleKafkaVersionsCommand"
  let make = (~clusterArn=?, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNodes = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>List containing a NodeInfo object.</p>") @as("NodeInfoList")
    nodeInfoList: option<__listOfNodeInfo>,
    @ocaml.doc("<p>The paginated results marker. When the result of a ListNodes operation is truncated, the call returns NextToken in the response. 
               To get another batch of nodes, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListNodesCommand"
  let make = (~clusterArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @ocaml.doc("<p>Create tags when creating the cluster.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The number of broker nodes in the cluster.</p>") @as("NumberOfBrokerNodes")
    numberOfBrokerNodes: __integerMin1Max15,
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The version of Apache Kafka.</p>") @as("KafkaVersion")
    kafkaVersion: __stringMin1Max128,
    @ocaml.doc("<p>The settings for open monitoring.</p>") @as("OpenMonitoring")
    openMonitoring: option<openMonitoringInfo>,
    @ocaml.doc(
      "<p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>"
    )
    @as("EnhancedMonitoring")
    enhancedMonitoring: option<enhancedMonitoring>,
    @ocaml.doc("<p>Includes all encryption-related information.</p>") @as("EncryptionInfo")
    encryptionInfo: option<encryptionInfo>,
    @ocaml.doc(
      "<p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>"
    )
    @as("ConfigurationInfo")
    configurationInfo: option<configurationInfo>,
    @ocaml.doc("<p>The name of the cluster.</p>") @as("ClusterName") clusterName: __stringMin1Max64,
    @ocaml.doc("<p>Includes all client authentication related information.</p>")
    @as("ClientAuthentication")
    clientAuthentication: option<clientAuthentication>,
    @ocaml.doc("<p>Information about the broker nodes in the cluster.</p>")
    @as("BrokerNodeGroupInfo")
    brokerNodeGroupInfo: brokerNodeGroupInfo,
  }
  type response = {
    @ocaml.doc(
      "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>"
    )
    @as("State")
    state: option<clusterState>,
    @ocaml.doc("<p>The name of the MSK cluster.</p>") @as("ClusterName")
    clusterName: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~numberOfBrokerNodes,
    ~kafkaVersion,
    ~clusterName,
    ~brokerNodeGroupInfo,
    ~tags=?,
    ~loggingInfo=?,
    ~openMonitoring=?,
    ~enhancedMonitoring=?,
    ~encryptionInfo=?,
    ~configurationInfo=?,
    ~clientAuthentication=?,
    (),
  ) =>
    new({
      tags: tags,
      numberOfBrokerNodes: numberOfBrokerNodes,
      loggingInfo: loggingInfo,
      kafkaVersion: kafkaVersion,
      openMonitoring: openMonitoring,
      enhancedMonitoring: enhancedMonitoring,
      encryptionInfo: encryptionInfo,
      configurationInfo: configurationInfo,
      clusterName: clusterName,
      clientAuthentication: clientAuthentication,
      brokerNodeGroupInfo: brokerNodeGroupInfo,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterOperation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>"
    )
    @as("ClusterOperationArn")
    clusterOperationArn: __string,
  }
  type response = {
    @ocaml.doc("<p>Cluster operation information</p>") @as("ClusterOperationInfo")
    clusterOperationInfo: option<clusterOperationInfo>,
  }
  @module("@aws-sdk/client-kafka") @new
  external new: request => t = "DescribeClusterOperationCommand"
  let make = (~clusterOperationArn, ()) => new({clusterOperationArn: clusterOperationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The cluster information.</p>") @as("ClusterInfo")
    clusterInfo: option<clusterInfo>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "DescribeClusterCommand"
  let make = (~clusterArn, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterV2 = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the serverless cluster.</p>") @as("Serverless")
    serverless: option<serverlessRequest>,
    @ocaml.doc("<p>Information about the provisioned cluster.</p>") @as("Provisioned")
    provisioned: option<provisionedRequest>,
    @ocaml.doc("<p>A map of tags that you want the cluster to have.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The name of the cluster.</p>") @as("ClusterName") clusterName: __stringMin1Max64,
  }
  type response = {
    @ocaml.doc("<p>The type of the cluster. The possible states are PROVISIONED or SERVERLESS.</p>")
    @as("ClusterType")
    clusterType: option<clusterType>,
    @ocaml.doc(
      "<p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>"
    )
    @as("State")
    state: option<clusterState>,
    @ocaml.doc("<p>The name of the MSK cluster.</p>") @as("ClusterName")
    clusterName: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "CreateClusterV2Command"
  let make = (~clusterName, ~serverless=?, ~provisioned=?, ~tags=?, ()) =>
    new({serverless: serverless, provisioned: provisioned, tags: tags, clusterName: clusterName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>"
    )
    @as("ClusterNameFilter")
    clusterNameFilter: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response. 
               To get another batch of clusters, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>Information on each of the MSK clusters in the response.</p>")
    @as("ClusterInfoList")
    clusterInfoList: option<__listOfClusterInfo>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListClustersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~clusterNameFilter=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterNameFilter: clusterNameFilter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusterOperations = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>If the response of ListClusterOperations is truncated, it returns a NextToken in the response. This Nexttoken should be sent in the subsequent request to ListClusterOperations.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of cluster operation information objects.</p>")
    @as("ClusterOperationInfoList")
    clusterOperationInfoList: option<__listOfClusterOperationInfo>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListClusterOperationsCommand"
  let make = (~clusterArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterV2 = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The cluster information.</p>") @as("ClusterInfo") clusterInfo: option<cluster>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "DescribeClusterV2Command"
  let make = (~clusterArn, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClustersV2 = {
  type t
  type request = {
    @ocaml.doc("<p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specify either PROVISIONED or SERVERLESS.</p>") @as("ClusterTypeFilter")
    clusterTypeFilter: option<__string>,
    @ocaml.doc(
      "<p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>"
    )
    @as("ClusterNameFilter")
    clusterNameFilter: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response. 
               To get another batch of clusters, provide this token in your next request.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>Information on each of the MSK clusters in the response.</p>")
    @as("ClusterInfoList")
    clusterInfoList: option<__listOfCluster>,
  }
  @module("@aws-sdk/client-kafka") @new external new: request => t = "ListClustersV2Command"
  let make = (~nextToken=?, ~maxResults=?, ~clusterTypeFilter=?, ~clusterNameFilter=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      clusterTypeFilter: clusterTypeFilter,
      clusterNameFilter: clusterNameFilter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
