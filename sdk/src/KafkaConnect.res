type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kafkaconnect") @new
external createClient: unit => awsServiceClient = "KafkaConnectClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __stringMin1Max128 = string
type __stringMax1024 = string
type __string = string
type __longMin1 = float
type __long = float
type __integerMin1Max8 = int
type __integerMin1Max100 = int
type __integerMin1Max10 = int
type __integer = int
type __boolean = bool
type maxResults = int
type kafkaClusterEncryptionInTransitType = [@as("TLS") #TLS | @as("PLAINTEXT") #PLAINTEXT]
type kafkaClusterClientAuthenticationType = [@as("IAM") #IAM | @as("NONE") #NONE]
type customPluginState = [
  | @as("DELETING") #DELETING
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATING") #CREATING
]
type customPluginContentType = [@as("ZIP") #ZIP | @as("JAR") #JAR]
type connectorState = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
  | @as("RUNNING") #RUNNING
]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
@ocaml.doc("<p>The summary of a worker configuration revision.</p>")
type workerConfigurationRevisionSummary = {
  @ocaml.doc("<p>The revision of a worker configuration.</p>") revision: option<__long>,
  @ocaml.doc("<p>The description of a worker configuration revision.</p>")
  description: option<__string>,
  @ocaml.doc("<p>The time that a worker configuration revision was created.</p>")
  creationTime: option<__timestampIso8601>,
}
@ocaml.doc("<p>The description of the worker configuration revision.</p>")
type workerConfigurationRevisionDescription = {
  @ocaml.doc("<p>The description of a revision of the worker configuration.</p>")
  revision: option<__long>,
  @ocaml.doc("<p>Base64 encoded contents of the connect-distributed.properties file.</p>")
  propertiesFileContent: option<__string>,
  @ocaml.doc("<p>The description of the worker configuration revision.</p>")
  description: option<__string>,
  @ocaml.doc("<p>The time that the worker configuration was created.</p>")
  creationTime: option<__timestampIso8601>,
}
@ocaml.doc("<p>The description of the worker configuration.</p>")
type workerConfigurationDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the worker configuration.</p>")
  workerConfigurationArn: option<__string>,
  @ocaml.doc("<p>The revision of the worker configuration.</p>") revision: option<__long>,
}
@ocaml.doc("<p>The configuration of the workers, which are the processes that run the connector
         logic.</p>")
type workerConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the worker configuration.</p>")
  workerConfigurationArn: __string,
  @ocaml.doc("<p>The revision of the worker configuration.</p>") revision: __longMin1,
}
@ocaml.doc("<p>Details about the state of a resource.</p>")
type stateDescription = {
  @ocaml.doc("<p>A message that describes the state of a resource.</p>") message: option<__string>,
  @ocaml.doc("<p>A code that describes the state of a resource.</p>") code: option<__string>,
}
@ocaml.doc("<p>An update to the connector's scale-out policy.</p>")
type scaleOutPolicyUpdate = {
  @ocaml.doc("<p>The target CPU utilization percentage threshold at which you want connector scale out to
         be triggered.</p>")
  cpuUtilizationPercentage: __integerMin1Max100,
}
@ocaml.doc("<p>The description of the scale-out policy for the connector.</p>")
type scaleOutPolicyDescription = {
  @ocaml.doc("<p>The CPU utilization percentage threshold at which you want connector scale out to be
         triggered.</p>")
  cpuUtilizationPercentage: option<__integer>,
}
@ocaml.doc("<p>The scale-out policy for the connector.</p>")
type scaleOutPolicy = {
  @ocaml.doc("<p>The CPU utilization percentage threshold at which you want connector scale out to be
         triggered.</p>")
  cpuUtilizationPercentage: __integerMin1Max100,
}
@ocaml.doc("<p>An update to the connector's scale-in policy.</p>")
type scaleInPolicyUpdate = {
  @ocaml.doc("<p>The target CPU utilization percentage threshold at which you want connector scale in to
         be triggered.</p>")
  cpuUtilizationPercentage: __integerMin1Max100,
}
@ocaml.doc("<p>The description of the scale-in policy for the connector.</p>")
type scaleInPolicyDescription = {
  @ocaml.doc("<p>Specifies the CPU utilization percentage threshold at which you want connector scale in
         to be triggered.</p>")
  cpuUtilizationPercentage: option<__integer>,
}
@ocaml.doc("<p>The scale-in policy for the connector.</p>")
type scaleInPolicy = {
  @ocaml.doc("<p>Specifies the CPU utilization percentage threshold at which you want connector scale in
         to be triggered.</p>")
  cpuUtilizationPercentage: __integerMin1Max100,
}
@ocaml.doc("<p>The description of the details about delivering logs to Amazon S3.</p>")
type s3LogDeliveryDescription = {
  @ocaml.doc("<p>The S3 prefix that is the destination for log delivery.</p>")
  prefix: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>"
  )
  enabled: option<__boolean>,
  @ocaml.doc("<p>The name of the S3 bucket that is the destination for log delivery.</p>")
  bucket: option<__string>,
}
@ocaml.doc("<p>Details about delivering logs to Amazon S3.</p>")
type s3LogDelivery = {
  @ocaml.doc("<p>The S3 prefix that is the destination for log delivery.</p>")
  prefix: option<__string>,
  @ocaml.doc(
    "<p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>"
  )
  enabled: __boolean,
  @ocaml.doc("<p>The name of the S3 bucket that is the destination for log delivery.</p>")
  bucket: option<__string>,
}
@ocaml.doc("<p>The description of the location of an object in Amazon S3.</p>")
type s3LocationDescription = {
  @ocaml.doc("<p>The version of an object in an S3 bucket.</p>") objectVersion: option<__string>,
  @ocaml.doc("<p>The file key for an object in an S3 bucket.</p>") fileKey: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an S3 bucket.</p>") bucketArn: option<__string>,
}
@ocaml.doc("<p>The location of an object in Amazon S3.</p>")
type s3Location = {
  @ocaml.doc("<p>The version of an object in an S3 bucket.</p>") objectVersion: option<__string>,
  @ocaml.doc("<p>The file key for an object in an S3 bucket.</p>") fileKey: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an S3 bucket.</p>") bucketArn: __string,
}
@ocaml.doc("<p>An update to a connector's fixed capacity.</p>")
type provisionedCapacityUpdate = {
  @ocaml.doc("<p>The number of workers that are allocated to the connector.</p>")
  workerCount: __integerMin1Max10,
  @ocaml.doc("<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
         values are 1,2,4,8.</p>")
  mcuCount: __integerMin1Max8,
}
@ocaml.doc("<p>The description of a connector's provisioned capacity.</p>")
type provisionedCapacityDescription = {
  @ocaml.doc("<p>The number of workers that are allocated to the connector.</p>")
  workerCount: option<__integer>,
  @ocaml.doc("<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
         values are 1,2,4,8.</p>")
  mcuCount: option<__integer>,
}
@ocaml.doc("<p>Details about a connector's provisioned capacity.</p>")
type provisionedCapacity = {
  @ocaml.doc("<p>The number of workers that are allocated to the connector.</p>")
  workerCount: __integerMin1Max10,
  @ocaml.doc("<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
         values are 1,2,4,8.</p>")
  mcuCount: __integerMin1Max8,
}
@ocaml.doc("<p>The description of the encryption in transit to the Apache Kafka cluster.</p>")
type kafkaClusterEncryptionInTransitDescription = {
  @ocaml.doc("<p>The type of encryption in transit to the Apache Kafka cluster.</p>")
  encryptionType: option<kafkaClusterEncryptionInTransitType>,
}
@ocaml.doc("<p>Details of encryption in transit to the Apache Kafka cluster.</p>")
type kafkaClusterEncryptionInTransit = {
  @ocaml.doc("<p>The type of encryption in transit to the Apache Kafka cluster.</p>")
  encryptionType: kafkaClusterEncryptionInTransitType,
}
@ocaml.doc("<p>The client authentication information used in order to authenticate with the Apache
         Kafka cluster.</p>")
type kafkaClusterClientAuthenticationDescription = {
  @ocaml.doc("<p>The type of client authentication used to connect to the Apache Kafka cluster. Value
         NONE means that no client authentication is used.</p>")
  authenticationType: option<kafkaClusterClientAuthenticationType>,
}
@ocaml.doc("<p>The client authentication information used in order to authenticate with the Apache
         Kafka cluster.</p>")
type kafkaClusterClientAuthentication = {
  @ocaml.doc("<p>The type of client authentication used to connect to the Apache Kafka cluster. Value
         NONE means that no client authentication is used.</p>")
  authenticationType: kafkaClusterClientAuthenticationType,
}
@ocaml.doc("<p>A description of the settings for delivering logs to Amazon Kinesis Data
         Firehose.</p>")
type firehoseLogDeliveryDescription = {
  @ocaml.doc(
    "<p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>"
  )
  enabled: option<__boolean>,
  @ocaml.doc("<p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
         delivery.</p>")
  deliveryStream: option<__string>,
}
@ocaml.doc("<p>The settings for delivering logs to Amazon Kinesis Data Firehose.</p>")
type firehoseLogDelivery = {
  @ocaml.doc(
    "<p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>"
  )
  enabled: __boolean,
  @ocaml.doc("<p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
         delivery.</p>")
  deliveryStream: option<__string>,
}
@ocaml.doc("<p>Details about a custom plugin file.</p>")
type customPluginFileDescription = {
  @ocaml.doc(
    "<p>The size in bytes of the custom plugin file. You can use it to validate the file.</p>"
  )
  fileSize: option<__long>,
  @ocaml.doc("<p>The hex-encoded MD5 checksum of the custom plugin file. You can use it to validate the
         file.</p>")
  fileMd5: option<__string>,
}
@ocaml.doc("<p>Details about a custom plugin.</p>")
type customPluginDescription = {
  @ocaml.doc("<p>The revision of the custom plugin.</p>") revision: option<__long>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom plugin.</p>")
  customPluginArn: option<__string>,
}
@ocaml.doc("<p>A plugin is an AWS resource that contains the code that defines a connector's
         logic.</p>")
type customPlugin = {
  @ocaml.doc("<p>The revision of the custom plugin.</p>") revision: __longMin1,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom plugin.</p>")
  customPluginArn: __string,
}
@ocaml.doc("<p>A description of the log delivery settings.</p>")
type cloudWatchLogsLogDeliveryDescription = {
  @ocaml.doc(
    "<p>The name of the CloudWatch log group that is the destination for log delivery.</p>"
  )
  logGroup: option<__string>,
  @ocaml.doc("<p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>")
  enabled: option<__boolean>,
}
@ocaml.doc("<p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>")
type cloudWatchLogsLogDelivery = {
  @ocaml.doc(
    "<p>The name of the CloudWatch log group that is the destination for log delivery.</p>"
  )
  logGroup: option<__string>,
  @ocaml.doc("<p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>")
  enabled: __boolean,
}
@ocaml.doc("<p>Workers can send worker logs to different destination types. This configuration
         specifies the details of these destinations.</p>")
type workerLogDeliveryDescription = {
  @ocaml.doc("<p>Details about delivering logs to Amazon S3.</p>")
  s3: option<s3LogDeliveryDescription>,
  @ocaml.doc("<p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>")
  firehose: option<firehoseLogDeliveryDescription>,
  @ocaml.doc("<p>Details about delivering logs to Amazon CloudWatch Logs.</p>")
  cloudWatchLogs: option<cloudWatchLogsLogDeliveryDescription>,
}
@ocaml.doc("<p>Workers can send worker logs to different destination types. This configuration
         specifies the details of these destinations.</p>")
type workerLogDelivery = {
  @ocaml.doc("<p>Details about delivering logs to Amazon S3.</p>") s3: option<s3LogDelivery>,
  @ocaml.doc("<p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>")
  firehose: option<firehoseLogDelivery>,
  @ocaml.doc("<p>Details about delivering logs to Amazon CloudWatch Logs.</p>")
  cloudWatchLogs: option<cloudWatchLogsLogDelivery>,
}
@ocaml.doc("<p>The summary of a worker configuration.</p>")
type workerConfigurationSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the worker configuration.</p>")
  workerConfigurationArn: option<__string>,
  @ocaml.doc("<p>The name of the worker configuration.</p>") name: option<__string>,
  @ocaml.doc("<p>The latest revision of a worker configuration.</p>")
  latestRevision: option<workerConfigurationRevisionSummary>,
  @ocaml.doc("<p>The description of a worker configuration.</p>") description: option<__string>,
  @ocaml.doc("<p>The time that a worker configuration was created.</p>")
  creationTime: option<__timestampIso8601>,
}
@ocaml.doc("<p>The description of the VPC in which the connector resides.</p>")
type vpcDescription = {
  @ocaml.doc("<p>The subnets for the connector.</p>") subnets: option<__listOf__string>,
  @ocaml.doc("<p>The security groups for the connector.</p>")
  securityGroups: option<__listOf__string>,
}
@ocaml.doc("<p>Information about the VPC in which the connector resides.</p>")
type vpc = {
  @ocaml.doc("<p>The subnets for the connector.</p>") subnets: __listOf__string,
  @ocaml.doc("<p>The security groups for the connector.</p>")
  securityGroups: option<__listOf__string>,
}
@ocaml.doc("<p>The description of the plugin.</p>")
type pluginDescription = {
  @ocaml.doc("<p>Details about a custom plugin.</p>") customPlugin: option<customPluginDescription>,
}
@ocaml.doc("<p>A plugin is an AWS resource that contains the code that defines your connector logic.
      </p>")
type plugin = {@ocaml.doc("<p>Details about a custom plugin.</p>") customPlugin: customPlugin}
@ocaml.doc("<p>Information about the location of a custom plugin.</p>")
type customPluginLocationDescription = {
  @ocaml.doc("<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
         file stored in Amazon S3.</p>")
  s3Location: option<s3LocationDescription>,
}
@ocaml.doc("<p>Information about the location of a custom plugin.</p>")
type customPluginLocation = {
  @ocaml.doc("<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
         file stored in Amazon S3.</p>")
  s3Location: s3Location,
}
@ocaml.doc("<p>The updates to the auto scaling parameters for the connector.</p>")
type autoScalingUpdate = {
  @ocaml.doc("<p>The target sacle-out policy for the connector.</p>")
  scaleOutPolicy: scaleOutPolicyUpdate,
  @ocaml.doc("<p>The target sacle-in policy for the connector.</p>")
  scaleInPolicy: scaleInPolicyUpdate,
  @ocaml.doc("<p>The target minimum number of workers allocated to the connector.</p>")
  minWorkerCount: __integerMin1Max10,
  @ocaml.doc("<p>The target number of microcontroller units (MCUs) allocated to each connector worker.
         The valid values are 1,2,4,8.</p>")
  mcuCount: __integerMin1Max8,
  @ocaml.doc("<p>The target maximum number of workers allocated to the connector.</p>")
  maxWorkerCount: __integerMin1Max10,
}
@ocaml.doc("<p>Information about the auto scaling parameters for the connector.</p>")
type autoScalingDescription = {
  @ocaml.doc("<p>The sacle-out policy for the connector.&gt;</p>")
  scaleOutPolicy: option<scaleOutPolicyDescription>,
  @ocaml.doc("<p>The sacle-in policy for the connector.</p>")
  scaleInPolicy: option<scaleInPolicyDescription>,
  @ocaml.doc("<p>The minimum number of workers allocated to the connector.</p>")
  minWorkerCount: option<__integer>,
  @ocaml.doc("<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
         values are 1,2,4,8.</p>")
  mcuCount: option<__integer>,
  @ocaml.doc("<p>The maximum number of workers allocated to the connector.</p>")
  maxWorkerCount: option<__integer>,
}
@ocaml.doc("<p>Specifies how the connector scales.</p>")
type autoScaling = {
  @ocaml.doc("<p>The sacle-out policy for the connector.</p>")
  scaleOutPolicy: option<scaleOutPolicy>,
  @ocaml.doc("<p>The sacle-in policy for the connector.</p>") scaleInPolicy: option<scaleInPolicy>,
  @ocaml.doc("<p>The minimum number of workers allocated to the connector.</p>")
  minWorkerCount: __integerMin1Max10,
  @ocaml.doc("<p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
         values are 1,2,4,8.</p>")
  mcuCount: __integerMin1Max8,
  @ocaml.doc("<p>The maximum number of workers allocated to the connector.</p>")
  maxWorkerCount: __integerMin1Max10,
}
type __listOfWorkerConfigurationSummary = array<workerConfigurationSummary>
type __listOfPluginDescription = array<pluginDescription>
type __listOfPlugin = array<plugin>
@ocaml.doc("<p>The description of the log delivery settings.</p>")
type logDeliveryDescription = {
  @ocaml.doc("<p>The workers can send worker logs to different destination types. This configuration
         specifies the details of these destinations.</p>")
  workerLogDelivery: option<workerLogDeliveryDescription>,
}
@ocaml.doc("<p>Details about log delivery.</p>")
type logDelivery = {
  @ocaml.doc("<p>The workers can send worker logs to different destination types. This configuration
         specifies the details of these destinations.</p>")
  workerLogDelivery: workerLogDelivery,
}
@ocaml.doc("<p>Details about the revision of a custom plugin.</p>")
type customPluginRevisionSummary = {
  @ocaml.doc("<p>The revision of the custom plugin.</p>") revision: option<__long>,
  @ocaml.doc("<p>Information about the location of the custom plugin.</p>")
  location: option<customPluginLocationDescription>,
  @ocaml.doc("<p>Details about the custom plugin file.</p>")
  fileDescription: option<customPluginFileDescription>,
  @ocaml.doc("<p>The description of the custom plugin.</p>") description: option<__string>,
  @ocaml.doc("<p>The time that the custom plugin was created.</p>")
  creationTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The format of the plugin file.</p>") contentType: option<customPluginContentType>,
}
@ocaml.doc("<p>The target capacity for the connector. The capacity can be auto scaled or
         provisioned.</p>")
type capacityUpdate = {
  @ocaml.doc("<p>The target settings for provisioned capacity.</p>")
  provisionedCapacity: option<provisionedCapacityUpdate>,
  @ocaml.doc("<p>The target auto scaling setting.</p>") autoScaling: option<autoScalingUpdate>,
}
@ocaml.doc("<p>A description of the connector's capacity.</p>")
type capacityDescription = {
  @ocaml.doc("<p>Describes a connector's provisioned capacity.</p>")
  provisionedCapacity: option<provisionedCapacityDescription>,
  @ocaml.doc("<p>Describes the connector's auto scaling capacity.</p>")
  autoScaling: option<autoScalingDescription>,
}
@ocaml.doc("<p>Information about the capacity of the connector, whether it is auto scaled or
         provisioned.</p>")
type capacity = {
  @ocaml.doc("<p>Details about a fixed capacity allocated to a connector.</p>")
  provisionedCapacity: option<provisionedCapacity>,
  @ocaml.doc("<p>Information about the auto scaling parameters for the connector.</p>")
  autoScaling: option<autoScaling>,
}
@ocaml.doc(
  "<p>The description of the Apache Kafka cluster to which the connector is connected.</p>"
)
type apacheKafkaClusterDescription = {
  @ocaml.doc("<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
         cluster.</p>")
  vpc: option<vpcDescription>,
  @ocaml.doc("<p>The bootstrap servers of the cluster.</p>") bootstrapServers: option<__string>,
}
@ocaml.doc("<p>The details of the Apache Kafka cluster to which the connector is connected.</p>")
type apacheKafkaCluster = {
  @ocaml.doc("<p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
         cluster.</p>")
  vpc: vpc,
  @ocaml.doc("<p>The bootstrap servers of the cluster.</p>") bootstrapServers: __string,
}
@ocaml.doc("<p>Details of how to connect to the Apache Kafka cluster.</p>")
type kafkaClusterDescription = {
  @ocaml.doc("<p>The Apache Kafka cluster to which the connector is connected.</p>")
  apacheKafkaCluster: option<apacheKafkaClusterDescription>,
}
@ocaml.doc("<p>The details of the Apache Kafka cluster to which the connector is connected.</p>")
type kafkaCluster = {
  @ocaml.doc("<p>The Apache Kafka cluster to which the connector is connected.</p>")
  apacheKafkaCluster: apacheKafkaCluster,
}
@ocaml.doc("<p>A summary of the custom plugin.</p>")
type customPluginSummary = {
  @ocaml.doc("<p>The name of the custom plugin.</p>") name: option<__string>,
  @ocaml.doc("<p>The latest revision of the custom plugin.</p>")
  latestRevision: option<customPluginRevisionSummary>,
  @ocaml.doc("<p>A description of the custom plugin.</p>") description: option<__string>,
  @ocaml.doc("<p>The state of the custom plugin.</p>") customPluginState: option<customPluginState>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom plugin.</p>")
  customPluginArn: option<__string>,
  @ocaml.doc("<p>The time that the custom plugin was created.</p>")
  creationTime: option<__timestampIso8601>,
}
type __listOfCustomPluginSummary = array<customPluginSummary>
@ocaml.doc("<p>Summary of a connector.</p>")
type connectorSummary = {
  @ocaml.doc("<p>The worker configurations that are in use with the connector.</p>")
  workerConfiguration: option<workerConfigurationDescription>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
         Web Services resources.</p>")
  serviceExecutionRoleArn: option<__string>,
  @ocaml.doc("<p>Specifies which plugins were used for this connector.</p>")
  plugins: option<__listOfPluginDescription>,
  @ocaml.doc("<p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>")
  logDelivery: option<logDeliveryDescription>,
  @ocaml.doc("<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
         cluster's version and the plugins.</p>")
  kafkaConnectVersion: option<__string>,
  @ocaml.doc("<p>Details of encryption in transit to the Apache Kafka cluster.</p>")
  kafkaClusterEncryptionInTransit: option<kafkaClusterEncryptionInTransitDescription>,
  @ocaml.doc("<p>The type of client authentication used to connect to the Apache Kafka cluster. The value
         is NONE when no client authentication is used.</p>")
  kafkaClusterClientAuthentication: option<kafkaClusterClientAuthenticationDescription>,
  @ocaml.doc("<p>The details of the Apache Kafka cluster to which the connector is connected.</p>")
  kafkaCluster: option<kafkaClusterDescription>,
  @ocaml.doc("<p>The current version of the connector.</p>") currentVersion: option<__string>,
  @ocaml.doc("<p>The time that the connector was created.</p>")
  creationTime: option<__timestampIso8601>,
  @ocaml.doc("<p>The state of the connector.</p>") connectorState: option<connectorState>,
  @ocaml.doc("<p>The name of the connector.</p>") connectorName: option<__string>,
  @ocaml.doc("<p>The description of the connector.</p>") connectorDescription: option<__string>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector.</p>")
  connectorArn: option<__string>,
  @ocaml.doc("<p>The connector's compute capacity settings.</p>")
  capacity: option<capacityDescription>,
}
type __listOfConnectorSummary = array<connectorSummary>
@ocaml.doc("<p/>")
module DeleteCustomPlugin = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>"
    )
    customPluginArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The state of the custom plugin.</p>")
    customPluginState: option<customPluginState>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the custom plugin that you requested to delete.</p>"
    )
    customPluginArn: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "DeleteCustomPluginCommand"
  let make = (~customPluginArn, ()) => new({customPluginArn: customPluginArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The current version of the connector that you want to delete.</p>")
    currentVersion: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>")
    connectorArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The state of the connector that you requested to delete.</p>")
    connectorState: option<connectorState>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the connector that you requested to delete.</p>"
    )
    connectorArn: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new external new: request => t = "DeleteConnectorCommand"
  let make = (~connectorArn, ~currentVersion=?, ()) => new({currentVersion, connectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeWorkerConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the worker configuration that you want to get
         information about.</p>")
    workerConfigurationArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom configuration.</p>")
    workerConfigurationArn: option<__string>,
    @ocaml.doc("<p>The name of the worker configuration.</p>") name: option<__string>,
    @ocaml.doc("<p>The latest revision of the custom configuration.</p>")
    latestRevision: option<workerConfigurationRevisionDescription>,
    @ocaml.doc("<p>The description of the worker configuration.</p>") description: option<__string>,
    @ocaml.doc("<p>The time that the worker configuration was created.</p>")
    creationTime: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "DescribeWorkerConfigurationCommand"
  let make = (~workerConfigurationArn, ()) => new({workerConfigurationArn: workerConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateWorkerConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Base64 encoded contents of connect-distributed.properties file.</p>")
    propertiesFileContent: __string,
    @ocaml.doc("<p>The name of the worker configuration.</p>") name: __stringMin1Max128,
    @ocaml.doc("<p>A summary description of the worker configuration.</p>")
    description: option<__stringMax1024>,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that Amazon assigned to the worker configuration.</p>"
    )
    workerConfigurationArn: option<__string>,
    @ocaml.doc("<p>The name of the worker configuration.</p>") name: option<__string>,
    @ocaml.doc("<p>The latest revision of the worker configuration.</p>")
    latestRevision: option<workerConfigurationRevisionSummary>,
    @ocaml.doc("<p>The time that the worker configuration was created.</p>")
    creationTime: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "CreateWorkerConfigurationCommand"
  let make = (~propertiesFileContent, ~name, ~description=?, ()) =>
    new({propertiesFileContent, name, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCustomPlugin = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the custom plugin.</p>") name: __stringMin1Max128,
    @ocaml.doc("<p>Information about the location of a custom plugin.</p>")
    location: customPluginLocation,
    @ocaml.doc("<p>A summary description of the custom plugin.</p>")
    description: option<__stringMax1024>,
    @ocaml.doc("<p>The type of the plugin file.</p>") contentType: customPluginContentType,
  }
  type response = {
    @ocaml.doc("<p>The revision of the custom plugin.</p>") revision: option<__long>,
    @ocaml.doc("<p>The name of the custom plugin.</p>") name: option<__string>,
    @ocaml.doc("<p>The state of the custom plugin.</p>")
    customPluginState: option<customPluginState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that Amazon assigned to the custom plugin.</p>")
    customPluginArn: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "CreateCustomPluginCommand"
  let make = (~name, ~location, ~contentType, ~description=?, ()) =>
    new({name, location, description, contentType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The current version of the connector that you want to update.</p>")
    currentVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>")
    connectorArn: __string,
    @ocaml.doc("<p>The target capacity.</p>") capacity: capacityUpdate,
  }
  type response = {
    @ocaml.doc("<p>The state of the connector.</p>") connectorState: option<connectorState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector.</p>")
    connectorArn: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new external new: request => t = "UpdateConnectorCommand"
  let make = (~currentVersion, ~connectorArn, ~capacity, ()) =>
    new({currentVersion, connectorArn, capacity})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorkerConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
         NextToken. Send this NextToken in a subsequent request to continue listing from where the
         previous operation left off.</p>")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of worker configurations to list in one response.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>An array of worker configuration descriptions.</p>")
    workerConfigurations: option<__listOfWorkerConfigurationSummary>,
    @ocaml.doc("<p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
         NextToken. Send this NextToken in a subsequent request to continue listing from where the
         previous operation left off.</p>")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "ListWorkerConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCustomPlugin = {
  type t
  type request = {
    @ocaml.doc("<p>Returns information about a custom plugin.</p>") customPluginArn: __string,
  }
  type response = {
    @ocaml.doc("<p>Details about the state of a custom plugin.</p>")
    stateDescription: option<stateDescription>,
    @ocaml.doc("<p>The name of the custom plugin.</p>") name: option<__string>,
    @ocaml.doc("<p>The latest successfully created revision of the custom plugin. If there are no
         successfully created revisions, this field will be absent.</p>")
    latestRevision: option<customPluginRevisionSummary>,
    @ocaml.doc("<p>The description of the custom plugin.</p>") description: option<__string>,
    @ocaml.doc("<p>The state of the custom plugin.</p>")
    customPluginState: option<customPluginState>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom plugin.</p>")
    customPluginArn: option<__string>,
    @ocaml.doc("<p>The time that the custom plugin was created.</p>")
    creationTime: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "DescribeCustomPluginCommand"
  let make = (~customPluginArn, ()) => new({customPluginArn: customPluginArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConnector = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>")
    connectorArn: __string,
  }
  type response = {
    @ocaml.doc("<p>Details about the state of a connector.</p>")
    stateDescription: option<stateDescription>,
    @ocaml.doc("<p>Specifies which worker configuration was used for the connector.</p>")
    workerConfiguration: option<workerConfigurationDescription>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
         Web Services resources.</p>")
    serviceExecutionRoleArn: option<__string>,
    @ocaml.doc("<p>Specifies which plugins were used for this connector.</p>")
    plugins: option<__listOfPluginDescription>,
    @ocaml.doc("<p>Details about delivering logs to Amazon CloudWatch Logs.</p>")
    logDelivery: option<logDeliveryDescription>,
    @ocaml.doc("<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
         cluster's version and the plugins.</p>")
    kafkaConnectVersion: option<__string>,
    @ocaml.doc("<p>Details of encryption in transit to the Apache Kafka cluster.</p>")
    kafkaClusterEncryptionInTransit: option<kafkaClusterEncryptionInTransitDescription>,
    @ocaml.doc("<p>The type of client authentication used to connect to the Apache Kafka cluster. The value
         is NONE when no client authentication is used.</p>")
    kafkaClusterClientAuthentication: option<kafkaClusterClientAuthenticationDescription>,
    @ocaml.doc("<p>The Apache Kafka cluster that the connector is connected to.</p>")
    kafkaCluster: option<kafkaClusterDescription>,
    @ocaml.doc("<p>The current version of the connector.</p>") currentVersion: option<__string>,
    @ocaml.doc("<p>The time the connector was created.</p>")
    creationTime: option<__timestampIso8601>,
    @ocaml.doc("<p>The state of the connector.</p>") connectorState: option<connectorState>,
    @ocaml.doc("<p>The name of the connector.</p>") connectorName: option<__string>,
    @ocaml.doc("<p>A summary description of the connector.</p>")
    connectorDescription: option<__string>,
    @ocaml.doc("<p>A map of keys to values that represent the configuration for the connector.</p>")
    connectorConfiguration: option<__mapOf__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connector.</p>")
    connectorArn: option<__string>,
    @ocaml.doc("<p>Information about the capacity of the connector, whether it is auto scaled or
         provisioned.</p>")
    capacity: option<capacityDescription>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "DescribeConnectorCommand"
  let make = (~connectorArn, ()) => new({connectorArn: connectorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnector = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies which worker configuration to use with the connector.</p>")
    workerConfiguration: option<workerConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the
         Amazon Web Services resources that it needs. The types of resources depends on the logic of
         the connector. For example, a connector that has Amazon S3 as a destination must have
         permissions that allow it to write to the S3 destination bucket.</p>")
    serviceExecutionRoleArn: __string,
    @ocaml.doc("<p>Specifies which plugins to use for the connector.</p>") plugins: __listOfPlugin,
    @ocaml.doc("<p>Details about log delivery.</p>") logDelivery: option<logDelivery>,
    @ocaml.doc("<p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
         cluster's version and the plugins.</p>")
    kafkaConnectVersion: __string,
    @ocaml.doc("<p>Details of encryption in transit to the Apache Kafka cluster.</p>")
    kafkaClusterEncryptionInTransit: kafkaClusterEncryptionInTransit,
    @ocaml.doc("<p>Details of the client authentication used by the Apache Kafka cluster.</p>")
    kafkaClusterClientAuthentication: kafkaClusterClientAuthentication,
    @ocaml.doc("<p>Specifies which Apache Kafka cluster to connect to.</p>")
    kafkaCluster: kafkaCluster,
    @ocaml.doc("<p>The name of the connector.</p>") connectorName: __stringMin1Max128,
    @ocaml.doc("<p>A summary description of the connector.</p>")
    connectorDescription: option<__stringMax1024>,
    @ocaml.doc("<p>A map of keys to values that represent the configuration for the connector.</p>")
    connectorConfiguration: __mapOf__string,
    @ocaml.doc("<p>Information about the capacity allocated to the connector. Exactly one of the two
         properties must be specified.</p>")
    capacity: capacity,
  }
  type response = {
    @ocaml.doc("<p>The state of the connector.</p>") connectorState: option<connectorState>,
    @ocaml.doc("<p>The name of the connector.</p>") connectorName: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that Amazon assigned to the connector.</p>")
    connectorArn: option<__string>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new external new: request => t = "CreateConnectorCommand"
  let make = (
    ~serviceExecutionRoleArn,
    ~plugins,
    ~kafkaConnectVersion,
    ~kafkaClusterEncryptionInTransit,
    ~kafkaClusterClientAuthentication,
    ~kafkaCluster,
    ~connectorName,
    ~connectorConfiguration,
    ~capacity,
    ~workerConfiguration=?,
    ~logDelivery=?,
    ~connectorDescription=?,
    (),
  ) =>
    new({
      workerConfiguration,
      serviceExecutionRoleArn,
      plugins,
      logDelivery,
      kafkaConnectVersion,
      kafkaClusterEncryptionInTransit,
      kafkaClusterClientAuthentication,
      kafkaCluster,
      connectorName,
      connectorDescription,
      connectorConfiguration,
      capacity,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCustomPlugins = {
  type t
  type request = {
    @ocaml.doc("<p>If the response of a ListCustomPlugins operation is truncated, it will include a
         NextToken. Send this NextToken in a subsequent request to continue listing from where the
         previous operation left off.</p>")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of custom plugins to list in one response.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>If the response of a ListCustomPlugins operation is truncated, it will include a
         NextToken. Send this NextToken in a subsequent request to continue listing from where the
         previous operation left off.</p>")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of custom plugin descriptions.</p>")
    customPlugins: option<__listOfCustomPluginSummary>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new
  external new: request => t = "ListCustomPluginsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnectors = {
  type t
  type request = {
    @ocaml.doc("<p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
         Send this NextToken in a subsequent request to continue listing from where the previous
         operation left off.</p>")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of connectors to list in one response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name prefix that you want to use to search for and list connectors.</p>")
    connectorNamePrefix: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
         Send this NextToken in a subsequent request to continue listing from where it left
         off.</p>")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of connector descriptions.</p>")
    connectors: option<__listOfConnectorSummary>,
  }
  @module("@aws-sdk/client-kafkaconnect") @new external new: request => t = "ListConnectorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~connectorNamePrefix=?, ()) =>
    new({nextToken, maxResults, connectorNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
