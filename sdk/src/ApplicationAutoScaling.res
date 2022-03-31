type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-application-autoscaling") @new
external createClient: unit => awsServiceClient = "ApplicationAutoScalingClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xmlString = string
type timestampType = Js.Date.t
type serviceNamespace = [
  | @as("neptune") #Neptune
  | @as("elasticache") #Elasticache
  | @as("kafka") #Kafka
  | @as("cassandra") #Cassandra
  | @as("lambda") #Lambda
  | @as("comprehend") #Comprehend
  | @as("custom-resource") #Custom_Resource
  | @as("sagemaker") #Sagemaker
  | @as("rds") #Rds
  | @as("dynamodb") #Dynamodb
  | @as("appstream") #Appstream
  | @as("ec2") #Ec2
  | @as("elasticmapreduce") #Elasticmapreduce
  | @as("ecs") #Ecs
]
type scheduledActionName = string
type scalingSuspended = bool
type scalingAdjustment = int
type scalingActivityStatusCode = [
  | @as("Failed") #Failed
  | @as("Unfulfilled") #Unfulfilled
  | @as("Overridden") #Overridden
  | @as("Successful") #Successful
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type scalableDimension = [
  | @as("neptune:cluster:ReadReplicaCount") #Neptune_Cluster_ReadReplicaCount
  | @as("elasticache:replication-group:Replicas") #Elasticache_Replication_Group_Replicas
  | @as("elasticache:replication-group:NodeGroups") #Elasticache_Replication_Group_NodeGroups
  | @as("kafka:broker-storage:VolumeSize") #Kafka_Broker_Storage_VolumeSize
  | @as("cassandra:table:WriteCapacityUnits") #Cassandra_Table_WriteCapacityUnits
  | @as("cassandra:table:ReadCapacityUnits") #Cassandra_Table_ReadCapacityUnits
  | @as("lambda:function:ProvisionedConcurrency") #Lambda_Function_ProvisionedConcurrency
  | @as("comprehend:entity-recognizer-endpoint:DesiredInferenceUnits")
  #Comprehend_Entity_Recognizer_Endpoint_DesiredInferenceUnits
  | @as("comprehend:document-classifier-endpoint:DesiredInferenceUnits")
  #Comprehend_Document_Classifier_Endpoint_DesiredInferenceUnits
  | @as("custom-resource:ResourceType:Property") #Custom_Resource_ResourceType_Property
  | @as("sagemaker:variant:DesiredInstanceCount") #Sagemaker_Variant_DesiredInstanceCount
  | @as("rds:cluster:ReadReplicaCount") #Rds_Cluster_ReadReplicaCount
  | @as("dynamodb:index:WriteCapacityUnits") #Dynamodb_Index_WriteCapacityUnits
  | @as("dynamodb:index:ReadCapacityUnits") #Dynamodb_Index_ReadCapacityUnits
  | @as("dynamodb:table:WriteCapacityUnits") #Dynamodb_Table_WriteCapacityUnits
  | @as("dynamodb:table:ReadCapacityUnits") #Dynamodb_Table_ReadCapacityUnits
  | @as("appstream:fleet:DesiredCapacity") #Appstream_Fleet_DesiredCapacity
  | @as("elasticmapreduce:instancegroup:InstanceCount")
  #Elasticmapreduce_Instancegroup_InstanceCount
  | @as("ec2:spot-fleet-request:TargetCapacity") #Ec2_Spot_Fleet_Request_TargetCapacity
  | @as("ecs:service:DesiredCount") #Ecs_Service_DesiredCount
]
type resourceLabel = string
type resourceIdMaxLen1600 = string
type resourceId = string
type resourceCapacity = int
type policyType = [
  | @as("TargetTrackingScaling") #TargetTrackingScaling
  | @as("StepScaling") #StepScaling
]
type policyName = string
type minAdjustmentMagnitude = int
type metricUnit = string
type metricType = [
  | @as("NeptuneReaderAverageCPUUtilization") #NeptuneReaderAverageCPUUtilization
  | @as("ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage")
  #ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage
  | @as("ElastiCacheReplicaEngineCPUUtilization") #ElastiCacheReplicaEngineCPUUtilization
  | @as("ElastiCachePrimaryEngineCPUUtilization") #ElastiCachePrimaryEngineCPUUtilization
  | @as("KafkaBrokerStorageUtilization") #KafkaBrokerStorageUtilization
  | @as("CassandraWriteCapacityUtilization") #CassandraWriteCapacityUtilization
  | @as("CassandraReadCapacityUtilization") #CassandraReadCapacityUtilization
  | @as("LambdaProvisionedConcurrencyUtilization") #LambdaProvisionedConcurrencyUtilization
  | @as("ComprehendInferenceUtilization") #ComprehendInferenceUtilization
  | @as("AppStreamAverageCapacityUtilization") #AppStreamAverageCapacityUtilization
  | @as("ECSServiceAverageMemoryUtilization") #ECSServiceAverageMemoryUtilization
  | @as("ECSServiceAverageCPUUtilization") #ECSServiceAverageCPUUtilization
  | @as("SageMakerVariantInvocationsPerInstance") #SageMakerVariantInvocationsPerInstance
  | @as("EC2SpotFleetRequestAverageNetworkOut") #EC2SpotFleetRequestAverageNetworkOut
  | @as("EC2SpotFleetRequestAverageNetworkIn") #EC2SpotFleetRequestAverageNetworkIn
  | @as("EC2SpotFleetRequestAverageCPUUtilization") #EC2SpotFleetRequestAverageCPUUtilization
  | @as("RDSReaderAverageDatabaseConnections") #RDSReaderAverageDatabaseConnections
  | @as("RDSReaderAverageCPUUtilization") #RDSReaderAverageCPUUtilization
  | @as("ALBRequestCountPerTarget") #ALBRequestCountPerTarget
  | @as("DynamoDBWriteCapacityUtilization") #DynamoDBWriteCapacityUtilization
  | @as("DynamoDBReadCapacityUtilization") #DynamoDBReadCapacityUtilization
]
type metricStatistic = [
  | @as("Sum") #Sum
  | @as("SampleCount") #SampleCount
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("Average") #Average
]
type metricScale = float
type metricNamespace = string
type metricName = string
type metricDimensionValue = string
type metricDimensionName = string
type metricAggregationType = [
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
  | @as("Average") #Average
]
type maxResults = int
type errorMessage = string
type disableScaleIn = bool
type cooldown = int
type adjustmentType = [
  | @as("ExactCapacity") #ExactCapacity
  | @as("PercentChangeInCapacity") #PercentChangeInCapacity
  | @as("ChangeInCapacity") #ChangeInCapacity
]
@ocaml.doc("<p>Specifies whether the scaling activities for a scalable target are in a suspended state.
      </p>")
type suspendedState = {
  @ocaml.doc("<p>Whether scheduled scaling is suspended. Set the value to <code>true</code> if you don't
         want Application Auto Scaling to add or remove capacity by initiating scheduled actions. The default is
            <code>false</code>. </p>")
  @as("ScheduledScalingSuspended")
  scheduledScalingSuspended: option<scalingSuspended>,
  @ocaml.doc("<p>Whether scale out by a target tracking scaling policy or a step scaling policy is
         suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to add capacity
         when a scaling policy is triggered. The default is <code>false</code>. </p>")
  @as("DynamicScalingOutSuspended")
  dynamicScalingOutSuspended: option<scalingSuspended>,
  @ocaml.doc("<p>Whether scale in by a target tracking scaling policy or a step scaling policy is
         suspended. Set the value to <code>true</code> if you don't want Application Auto Scaling to remove capacity
         when a scaling policy is triggered. The default is <code>false</code>. </p>")
  @as("DynamicScalingInSuspended")
  dynamicScalingInSuspended: option<scalingSuspended>,
}
@ocaml.doc("<p>Represents a step adjustment for a <a href=\"https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepScalingPolicyConfiguration.html\">StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference
         between the value of the aggregated CloudWatch metric and the breach threshold that you've
         defined for the alarm. </p>
         <p>For the following examples, suppose that you have an alarm with a breach threshold of
         50:</p>
         <ul>
            <li>
               <p>To trigger the adjustment when the metric is greater than or equal to 50 and less
               than 60, specify a lower bound of 0 and an upper bound of 10.</p>
            </li>
            <li>
               <p>To trigger the adjustment when the metric is greater than 40 and less than or
               equal to 50, specify a lower bound of -10 and an upper bound of 0.</p>
            </li>
         </ul>
         <p>There are a few rules for the step adjustments for your step policy:</p>
         <ul>
            <li>
               <p>The ranges of your step adjustments can't overlap or have a gap.</p>
            </li>
            <li>
               <p>At most one step adjustment can have a null lower bound. If one step adjustment
               has a negative lower bound, then there must be a step adjustment with a null lower
               bound.</p>
            </li>
            <li>
               <p>At most one step adjustment can have a null upper bound. If one step adjustment
               has a positive upper bound, then there must be a step adjustment with a null upper
               bound.</p>
            </li>
            <li>
               <p>The upper and lower bound can't be null in the same step adjustment.</p>
            </li>
         </ul>")
type stepAdjustment = {
  @ocaml.doc("<p>The amount by which to scale, based on the specified adjustment type. A positive value
         adds to the current capacity while a negative number removes from the current capacity. For
         exact capacity, you must specify a positive value.</p>")
  @as("ScalingAdjustment")
  scalingAdjustment: scalingAdjustment,
  @ocaml.doc("<p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
         the metric value is above the breach threshold, the upper bound is exclusive (the metric
         must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the
         metric must be less than or equal to the threshold plus the upper bound). A null value
         indicates positive infinity.</p>
         <p>The upper bound must be greater than the lower bound.</p>")
  @as("MetricIntervalUpperBound")
  metricIntervalUpperBound: option<metricScale>,
  @ocaml.doc("<p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
         the metric value is above the breach threshold, the lower bound is inclusive (the metric
         must be greater than or equal to the threshold plus the lower bound). Otherwise, it is
         exclusive (the metric must be greater than the threshold plus the lower bound). A null
         value indicates negative infinity.</p>")
  @as("MetricIntervalLowerBound")
  metricIntervalLowerBound: option<metricScale>,
}
@ocaml.doc("<p>Represents a scaling activity.</p>")
type scalingActivity = {
  @ocaml.doc("<p>The details about the scaling activity.</p>") @as("Details")
  details: option<xmlString>,
  @ocaml.doc("<p>A simple message about the current status of the scaling activity.</p>")
  @as("StatusMessage")
  statusMessage: option<xmlString>,
  @ocaml.doc("<p>Indicates the status of the scaling activity.</p>") @as("StatusCode")
  statusCode: scalingActivityStatusCode,
  @ocaml.doc("<p>The Unix timestamp for when the scaling activity ended.</p>") @as("EndTime")
  endTime: option<timestampType>,
  @ocaml.doc("<p>The Unix timestamp for when the scaling activity began.</p>") @as("StartTime")
  startTime: timestampType,
  @ocaml.doc("<p>A simple description of what caused the scaling activity to happen.</p>")
  @as("Cause")
  cause: xmlString,
  @ocaml.doc(
    "<p>A simple description of what action the scaling activity intends to accomplish.</p>"
  )
  @as("Description")
  description: xmlString,
  @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: scalableDimension,
  @ocaml.doc("<p>The identifier of the resource associated with the scaling activity.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource, or a
            <code>custom-resource</code>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
  @ocaml.doc("<p>The unique identifier of the scaling activity.</p>") @as("ActivityId")
  activityId: resourceId,
}
@ocaml.doc("<p>Represents the minimum and maximum capacity for a scheduled action.</p>")
type scalableTargetAction = {
  @ocaml.doc("<p>The maximum capacity.</p>
         <p>Although you can specify a large maximum capacity, note that service quotas may impose
         lower limits. Each service has its own default quotas for the maximum capacity of the
         resource. If you want to specify a higher limit, you can request an increase. For more
         information, consult the documentation for that service. For information about the default
         quotas for each service, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html\">Service Endpoints and
            Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>")
  @as("MaxCapacity")
  maxCapacity: option<resourceCapacity>,
  @ocaml.doc("<p>The minimum capacity.</p>
         <p>For certain resources, the minimum value allowed is 0. This includes Lambda provisioned
      concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources.
      For all other resources, the minimum value allowed is 1.</p>")
  @as("MinCapacity")
  minCapacity: option<resourceCapacity>,
}
type resourceIdsMaxLen1600 = array<resourceIdMaxLen1600>
@ocaml.doc("<p>Represents a predefined metric for a target tracking scaling policy to use with
         Application Auto Scaling.</p>
         <p>Only the Amazon Web Services that you're using send metrics to Amazon CloudWatch. To determine whether a
         desired metric already exists by looking up its namespace and dimension using the CloudWatch
         metrics dashboard in the console, follow the procedure in <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html\">Building dashboards
            with CloudWatch</a> in the <i>Application Auto Scaling User Guide</i>.</p>")
type predefinedMetricSpecification = {
  @ocaml.doc("<p>Identifies the resource associated with the metric type. You can't specify a resource
         label unless the metric type is <code>ALBRequestCountPerTarget</code> and there is a target
         group attached to the Spot Fleet request or ECS service.</p> 
         <p>You create the resource label by appending the final portion of the load balancer ARN
            and the final portion of the target group ARN into a single value, separated by a forward
            slash (/). The format of the resource label is:</p>
        <p>
            <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
        <p>Where:</p>
        <ul>
            <li>
                <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
                    the load balancer ARN</p>
            </li>
            <li>
                <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
                    of the target group ARN.</p>
            </li>
         </ul>
        <p>To find the ARN for an Application Load Balancer, use the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html\">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
            the <a href=\"https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html\">DescribeTargetGroups</a> API operation.</p>")
  @as("ResourceLabel")
  resourceLabel: option<resourceLabel>,
  @ocaml.doc("<p>The metric type. The <code>ALBRequestCountPerTarget</code> metric type applies only to
         Spot Fleet requests and ECS services.</p>")
  @as("PredefinedMetricType")
  predefinedMetricType: metricType,
}
@ocaml.doc("<p>Describes the dimension names and values associated with a metric.</p>")
type metricDimension = {
  @ocaml.doc("<p>The value of the dimension.</p>") @as("Value") value: metricDimensionValue,
  @ocaml.doc("<p>The name of the dimension.</p>") @as("Name") name: metricDimensionName,
}
@ocaml.doc("<p>Represents a CloudWatch alarm associated with a scaling policy.</p>")
type alarm = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alarm.</p>") @as("AlarmARN")
  alarmARN: resourceId,
  @ocaml.doc("<p>The name of the alarm.</p>") @as("AlarmName") alarmName: resourceId,
}
type stepAdjustments = array<stepAdjustment>
@ocaml.doc("<p>Represents a scheduled action.</p>")
type scheduledAction = {
  @ocaml.doc("<p>The date and time that the scheduled action was created.</p>") @as("CreationTime")
  creationTime: timestampType,
  @ocaml.doc("<p>The new minimum and maximum capacity. You can set both values or just one. At the
         scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
         to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
         scales in to the maximum capacity.</p>")
  @as("ScalableTargetAction")
  scalableTargetAction: option<scalableTargetAction>,
  @ocaml.doc("<p>The date and time that the action is scheduled to end, in UTC.</p>") @as("EndTime")
  endTime: option<timestampType>,
  @ocaml.doc("<p>The date and time that the action is scheduled to begin, in UTC.</p>")
  @as("StartTime")
  startTime: option<timestampType>,
  @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: option<scalableDimension>,
  @ocaml.doc("<p>The identifier of the resource associated with the scaling policy.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The time zone used when referring to the date and time of a scheduled action, when the
         scheduled action uses an at or cron expression.</p>")
  @as("Timezone")
  timezone: option<resourceIdMaxLen1600>,
  @ocaml.doc("<p>The schedule for this action. The following formats are supported:</p>
         <ul>
            <li>
               <p>At expressions - \"<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>\"</p>
            </li>
            <li>
               <p>Rate expressions - \"<code>rate(<i>value</i> 
                     <i>unit</i>)</code>\"</p>
            </li>
            <li>
               <p>Cron expressions - \"<code>cron(<i>fields</i>)</code>\"</p>
            </li>
         </ul>
         <p>At expressions are useful for one-time schedules. Cron expressions are useful for 
         scheduled actions that run periodically at a specified date and time, and rate expressions 
         are useful for scheduled actions that run at a regular interval.</p>
         <p>At and cron expressions use Universal Coordinated Time (UTC) by
         default.</p>
         <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
         <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is 
         <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
           <p>For more information and examples, see <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/examples-scheduled-actions.html\">Example scheduled actions for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>")
  @as("Schedule")
  schedule: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource, or a
            <code>custom-resource</code>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the scheduled action.</p>")
  @as("ScheduledActionARN")
  scheduledActionARN: resourceIdMaxLen1600,
  @ocaml.doc("<p>The name of the scheduled action.</p>") @as("ScheduledActionName")
  scheduledActionName: scheduledActionName,
}
type scalingActivities = array<scalingActivity>
@ocaml.doc("<p>Represents a scalable target.</p>")
type scalableTarget = {
  @as("SuspendedState") suspendedState: option<suspendedState>,
  @ocaml.doc("<p>The Unix timestamp for when the scalable target was created.</p>")
  @as("CreationTime")
  creationTime: timestampType,
  @ocaml.doc("<p>The ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your
         behalf.</p>")
  @as("RoleARN")
  roleARN: resourceIdMaxLen1600,
  @ocaml.doc("<p>The maximum value to scale to in response to a scale-out activity.</p>")
  @as("MaxCapacity")
  maxCapacity: resourceCapacity,
  @ocaml.doc("<p>The minimum value to scale to in response to a scale-in activity.</p>")
  @as("MinCapacity")
  minCapacity: resourceCapacity,
  @ocaml.doc("<p>The scalable dimension associated with the scalable target.
      This string consists of the service namespace, resource type, and scaling property.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: scalableDimension,
  @ocaml.doc("<p>The identifier of the resource associated with the scalable target.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource, or a
            <code>custom-resource</code>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
}
type metricDimensions = array<metricDimension>
type alarms = array<alarm>
@ocaml.doc(
  "<p>Represents a step scaling policy configuration to use with Application Auto Scaling.</p>"
)
type stepScalingPolicyConfiguration = {
  @ocaml.doc("<p>The aggregation type for the CloudWatch metrics. Valid values are <code>Minimum</code>,
            <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
         value is treated as <code>Average</code>.</p>")
  @as("MetricAggregationType")
  metricAggregationType: option<metricAggregationType>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for a previous scaling activity to take effect. </p>
         <p>With scale-out policies, the intention is to continuously (but not excessively) scale out.
      After Application Auto Scaling successfully scales out using a step scaling policy, it starts to calculate the
      cooldown time. The scaling policy won't increase the desired capacity again unless either a
      larger scale out is triggered or the cooldown period ends. While the cooldown period is in
      effect, capacity added by the initiating scale-out activity is calculated as part of the
      desired capacity for the next scale-out activity. For example, when an alarm triggers a step
      scaling policy to increase the capacity by 2, the scaling activity completes successfully, and
      a cooldown period starts. If the alarm triggers again during the cooldown period but at a more
      aggressive step adjustment of 3, the previous increase of 2 is considered part of the current
      capacity. Therefore, only 1 is added to the capacity.</p>
         <p>With scale-in policies, the intention is to scale in conservatively to protect your
      application’s availability, so scale-in activities are blocked until the cooldown period has
      expired. However, if another alarm triggers a scale-out activity during the cooldown period
      after a scale-in activity, Application Auto Scaling scales out the target immediately. In this case, the
      cooldown period for the scale-in activity stops and doesn't complete.</p>
         <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
          and a default value of 300 for the following scalable targets:</p> 
         <ul>
            <li>
               <p>AppStream 2.0 fleets</p>
           </li>
            <li>
               <p>Aurora DB clusters</p>
           </li>
            <li>
               <p>ECS services</p>
           </li>
            <li>
               <p>EMR clusters</p>
           </li>
            <li>
               <p> Neptune clusters</p>
           </li>
            <li>
               <p>SageMaker endpoint variants</p>
           </li>
            <li>
               <p>Spot Fleets</p>
           </li>
            <li>
               <p>Custom resources</p>
           </li>
         </ul>
         <p>For all other scalable targets, the default value is 0:</p> 
         <ul>
            <li>
               <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
           </li>
            <li>
               <p>DynamoDB tables and global secondary indexes</p>
           </li>
            <li>
               <p>Amazon Keyspaces tables</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency</p>
           </li>
            <li>
               <p>Amazon MSK broker storage</p>
           </li>
         </ul>")
  @as("Cooldown")
  cooldown: option<cooldown>,
  @ocaml.doc("<p>The minimum value to scale by when the adjustment type is
            <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
         scaling policy to scale out an Amazon ECS service by 25 percent and you specify a
            <code>MinAdjustmentMagnitude</code> of 2. If the service has 4 tasks and the scaling
         policy is performed, 25 percent of 4 is 1. However, because you specified a
            <code>MinAdjustmentMagnitude</code> of 2, Application Auto Scaling scales out the service by 2
         tasks.</p>")
  @as("MinAdjustmentMagnitude")
  minAdjustmentMagnitude: option<minAdjustmentMagnitude>,
  @ocaml.doc("<p>A set of adjustments that enable you to scale based on the size of the alarm
         breach.</p>
         <p>At least one step adjustment is required if you are adding a new step scaling policy
         configuration.</p>")
  @as("StepAdjustments")
  stepAdjustments: option<stepAdjustments>,
  @ocaml.doc("<p>Specifies how the <code>ScalingAdjustment</code> value in a <a href=\"https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepAdjustment.html\">StepAdjustment</a> is interpreted (for example, an absolute number or a
         percentage). The valid values are <code>ChangeInCapacity</code>,
         <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>. </p>
         <p>
            <code>AdjustmentType</code> is required if you are adding a new step scaling policy
         configuration.</p>")
  @as("AdjustmentType")
  adjustmentType: option<adjustmentType>,
}
type scheduledActions = array<scheduledAction>
type scalableTargets = array<scalableTarget>
@ocaml.doc("<p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
         with Application Auto Scaling.</p>
         <p>For information about the available metrics for a service, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html\">Amazon Web Services
            Services That Publish CloudWatch Metrics</a> in the <i>Amazon CloudWatch User
            Guide</i>.</p>
         <p>To create your customized metric specification:</p>
         <ul>
            <li>
               <p>Add values for each required parameter from CloudWatch. You can use an existing metric,
               or a new metric that you create. To use your own metric, you must first publish the
               metric to CloudWatch. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publish Custom
                  Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
            </li>
            <li>
               <p>Choose a metric that changes proportionally with capacity. The value of the metric
               should increase or decrease in inverse proportion to the number of capacity units.
               That is, the value of the metric should decrease when capacity increases, and
               increase when capacity decreases. </p>
            </li>
         </ul>
         <p>For more information about CloudWatch, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html\">Amazon CloudWatch
            Concepts</a>. </p>")
type customizedMetricSpecification = {
  @ocaml.doc("<p>The unit of the metric.</p>") @as("Unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The statistic of the metric.</p>") @as("Statistic") statistic: metricStatistic,
  @ocaml.doc("<p>The dimensions of the metric. </p>
         <p>Conditional: If you published your metric with dimensions, you must specify the same
         dimensions in your scaling policy.</p>")
  @as("Dimensions")
  dimensions: option<metricDimensions>,
  @ocaml.doc("<p>The namespace of the metric.</p>") @as("Namespace") namespace: metricNamespace,
  @ocaml.doc("<p>The name of the metric. </p>") @as("MetricName") metricName: metricName,
}
@ocaml.doc(
  "<p>Represents a target tracking scaling policy configuration to use with Application Auto Scaling.</p>"
)
type targetTrackingScalingPolicyConfiguration = {
  @ocaml.doc("<p>Indicates whether scale in by the target tracking scaling policy is disabled. If the
         value is <code>true</code>, scale in is disabled and the target tracking scaling policy
         won't remove capacity from the scalable target. Otherwise, scale in is enabled and the
         target tracking scaling policy can remove capacity from the scalable target. The default
         value is <code>false</code>.</p>")
  @as("DisableScaleIn")
  disableScaleIn: option<disableScaleIn>,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale-in activity completes before another
      scale-in activity can start.</p>
         <p>With the <i>scale-in cooldown period</i>, the intention is to scale in
      conservatively to protect your application’s availability, so scale-in activities are blocked
      until the cooldown period has expired. However, if another alarm triggers a scale-out activity
      during the scale-in cooldown period, Application Auto Scaling scales out the target immediately. In this case,
      the scale-in cooldown period stops and doesn't complete.</p>
         <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
          and a default value of 300 for the following scalable targets:</p> 
         <ul>
            <li>
               <p>AppStream 2.0 fleets</p>
           </li>
            <li>
               <p>Aurora DB clusters</p>
           </li>
            <li>
               <p>ECS services</p>
           </li>
            <li>
               <p>EMR clusters</p>
           </li>
            <li>
               <p> Neptune clusters</p>
           </li>
            <li>
               <p>SageMaker endpoint variants</p>
           </li>
            <li>
               <p>Spot Fleets</p>
           </li>
            <li>
               <p>Custom resources</p>
           </li>
         </ul>
         <p>For all other scalable targets, the default value is 0:</p> 
         <ul>
            <li>
               <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
           </li>
            <li>
               <p>DynamoDB tables and global secondary indexes</p>
           </li>
            <li>
               <p>Amazon Keyspaces tables</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency</p>
           </li>
            <li>
               <p>Amazon MSK broker storage</p>
           </li>
         </ul>")
  @as("ScaleInCooldown")
  scaleInCooldown: option<cooldown>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for a previous scale-out activity to take
      effect.</p>
         <p>With the <i>scale-out cooldown period</i>, the intention is to continuously
      (but not excessively) scale out. After Application Auto Scaling successfully scales out using a target
      tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't
      increase the desired capacity again unless either a larger scale out is triggered or the
      cooldown period ends. While the cooldown period is in effect, the capacity added by the
      initiating scale-out activity is calculated as part of the desired capacity for the next
      scale-out activity.</p>
         <p>Application Auto Scaling provides a default value of 600 for Amazon ElastiCache replication groups
          and a default value of 300 for the following scalable targets:</p> 
         <ul>
            <li>
               <p>AppStream 2.0 fleets</p>
           </li>
            <li>
               <p>Aurora DB clusters</p>
           </li>
            <li>
               <p>ECS services</p>
           </li>
            <li>
               <p>EMR clusters</p>
           </li>
            <li>
               <p> Neptune clusters</p>
           </li>
            <li>
               <p>SageMaker endpoint variants</p>
           </li>
            <li>
               <p>Spot Fleets</p>
           </li>
            <li>
               <p>Custom resources</p>
           </li>
         </ul>
         <p>For all other scalable targets, the default value is 0:</p> 
         <ul>
            <li>
               <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
           </li>
            <li>
               <p>DynamoDB tables and global secondary indexes</p>
           </li>
            <li>
               <p>Amazon Keyspaces tables</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency</p>
           </li>
            <li>
               <p>Amazon MSK broker storage</p>
           </li>
         </ul>")
  @as("ScaleOutCooldown")
  scaleOutCooldown: option<cooldown>,
  @ocaml.doc("<p>A customized metric. You can specify either a predefined metric or a customized
         metric.</p>")
  @as("CustomizedMetricSpecification")
  customizedMetricSpecification: option<customizedMetricSpecification>,
  @ocaml.doc("<p>A predefined metric. You can specify either a predefined metric or a customized
         metric.</p>")
  @as("PredefinedMetricSpecification")
  predefinedMetricSpecification: option<predefinedMetricSpecification>,
  @ocaml.doc("<p>The target value for the metric. Although this property accepts numbers of type Double,
         it won't accept values that are either too small or too large. Values must be in the range
         of -2^360 to 2^360. The value must be a valid number based on the choice of metric. For
         example, if the metric is CPU utilization, then the target value is a percent value that
         represents how much of the CPU can be used before scaling out. </p>")
  @as("TargetValue")
  targetValue: metricScale,
}
@ocaml.doc("<p>Represents a scaling policy to use with Application Auto Scaling.</p>
         <p>For more information about configuring scaling policies for a specific service, see
            <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/getting-started.html\">Getting started with Application Auto Scaling</a> in the
         <i>Application Auto Scaling User Guide</i>.</p>")
type scalingPolicy = {
  @ocaml.doc("<p>The Unix timestamp for when the scaling policy was created.</p>")
  @as("CreationTime")
  creationTime: timestampType,
  @ocaml.doc("<p>The CloudWatch alarms associated with the scaling policy.</p>") @as("Alarms")
  alarms: option<alarms>,
  @ocaml.doc("<p>A target tracking scaling policy.</p>")
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: option<targetTrackingScalingPolicyConfiguration>,
  @ocaml.doc("<p>A step scaling policy.</p>") @as("StepScalingPolicyConfiguration")
  stepScalingPolicyConfiguration: option<stepScalingPolicyConfiguration>,
  @ocaml.doc("<p>The scaling policy type.</p>") @as("PolicyType") policyType: policyType,
  @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
  @as("ScalableDimension")
  scalableDimension: scalableDimension,
  @ocaml.doc("<p>The identifier of the resource associated with the scaling policy.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
  @as("ResourceId")
  resourceId: resourceIdMaxLen1600,
  @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource, or a
            <code>custom-resource</code>.</p>")
  @as("ServiceNamespace")
  serviceNamespace: serviceNamespace,
  @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName") policyName: policyName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the scaling policy.</p>") @as("PolicyARN")
  policyARN: resourceIdMaxLen1600,
}
type scalingPolicies = array<scalingPolicy>
@ocaml.doc("<p>With Application Auto Scaling, you can configure automatic scaling for the following
      resources:</p>
         <ul>
            <li>
               <p>Amazon AppStream 2.0 fleets</p>
            </li>
            <li>
               <p>Amazon Aurora Replicas</p>
            </li>
            <li>
               <p>Amazon Comprehend document classification and entity recognizer endpoints</p>
            </li>
            <li>
               <p>Amazon DynamoDB tables and global secondary indexes throughput capacity</p>
            </li>
            <li>
               <p>Amazon ECS services</p>
            </li>
            <li>
               <p>Amazon ElastiCache for Redis clusters (replication groups)</p>
            </li>
            <li>
               <p>Amazon EMR clusters</p>
            </li>
            <li>
               <p>Amazon Keyspaces (for Apache Cassandra) tables</p>
            </li>
            <li>
               <p>Lambda function provisioned concurrency</p>
            </li>
            <li>
               <p>Amazon Managed Streaming for Apache Kafka broker storage</p>
            </li>
            <li>
               <p>Amazon Neptune clusters</p>
            </li>
            <li>
               <p>Amazon SageMaker endpoint variants</p>
            </li>
            <li>
               <p>Spot Fleets (Amazon EC2)</p>
            </li>
            <li>
               <p>Custom resources provided by your own applications or services</p>
            </li>
         </ul>
         <p>
            <b>API Summary</b>
         </p>
         <p>The Application Auto Scaling service API includes three key sets of actions: </p>
         <ul>
            <li>
               <p>Register and manage scalable targets - Register Amazon Web Services or custom resources as scalable
          targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and
          retrieve information on existing scalable targets.</p>
            </li>
            <li>
               <p>Configure and manage automatic scaling - Define scaling policies to dynamically scale
          your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions,
          and retrieve your recent scaling activity history.</p>
            </li>
            <li>
               <p>Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by
          calling the <a href=\"https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html\">RegisterScalableTarget</a> API action for any Application Auto Scaling scalable target. You can
          suspend and resume (individually or in combination) scale-out activities that are
          triggered by a scaling policy, scale-in activities that are triggered by a scaling policy,
          and scheduled scaling.</p>
            </li>
         </ul>

    
         <p>To learn more about Application Auto Scaling, including information about granting IAM users required
      permissions for Application Auto Scaling actions, see the <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html\">Application Auto Scaling User
        Guide</a>.</p>")
module DeregisterScalableTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The scalable dimension associated with the scalable target.
      This string consists of the service namespace, resource type, and scaling property.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource associated with the scalable target.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {.}
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeregisterScalableTargetCommand"
  let make = (~scalableDimension, ~resourceId, ~serviceNamespace, ()) =>
    new({
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource associated with the scheduled action.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The name of the scheduled action.</p>") @as("ScheduledActionName")
    scheduledActionName: resourceIdMaxLen1600,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {.}
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeleteScheduledActionCommand"
  let make = (~scalableDimension, ~resourceId, ~scheduledActionName, ~serviceNamespace, ()) =>
    new({
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      scheduledActionName: scheduledActionName,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource associated with the scalable target.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
    @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName")
    policyName: resourceIdMaxLen1600,
  }
  type response = {.}
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DeleteScalingPolicyCommand"
  let make = (~scalableDimension, ~resourceId, ~serviceNamespace, ~policyName, ()) =>
    new({
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
      policyName: policyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterScalableTarget = {
  type t
  type request = {
    @ocaml.doc("<p>An embedded object that contains attributes and attribute values that are used to
         suspend and resume automatic scaling. Setting the value of an attribute to
            <code>true</code> suspends the specified scaling activities. Setting it to
            <code>false</code> (default) resumes the specified scaling activities. </p>
         <p>
            <b>Suspension Outcomes</b>
         </p>
         <ul>
            <li>
               <p>For <code>DynamicScalingInSuspended</code>, while a suspension is in effect, all
               scale-in activities that are triggered by a scaling policy are suspended.</p>
            </li>
            <li>
               <p>For <code>DynamicScalingOutSuspended</code>, while a suspension is in effect, all
               scale-out activities that are triggered by a scaling policy are suspended.</p>
            </li>
            <li>
               <p>For <code>ScheduledScalingSuspended</code>, while a suspension is in effect, all
               scaling activities that involve scheduled actions are suspended. </p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html\">Suspending and resuming scaling</a> in the <i>Application Auto Scaling User
         Guide</i>.</p>")
    @as("SuspendedState")
    suspendedState: option<suspendedState>,
    @ocaml.doc("<p>This parameter is required for services that do not support service-linked roles (such as
      Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable
      target on your behalf. </p>
         <p>If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which
      it creates if it does not yet exist. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles\">Application Auto Scaling IAM roles</a>.</p>")
    @as("RoleARN")
    roleARN: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The maximum value that you plan to scale out to. When a scaling policy is in effect,
         Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to
         changing demand. This property is required when registering a new scalable target.</p>
         <p>Although you can specify a large maximum capacity, note that service quotas may impose
         lower limits. Each service has its own default quotas for the maximum capacity of the
         resource. If you want to specify a higher limit, you can request an increase. For more
         information, consult the documentation for that service. For information about the default
         quotas for each service, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html\">Service Endpoints and
            Quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>")
    @as("MaxCapacity")
    maxCapacity: option<resourceCapacity>,
    @ocaml.doc("<p>The minimum value that you plan to scale in to. When a scaling policy is in effect,
      Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to
      changing demand. This property is required when registering a new scalable target.</p>
         <p>For certain resources, the minimum value allowed is 0. This includes Lambda provisioned
      concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources.
      For all other resources, the minimum value allowed is 1.</p>")
    @as("MinCapacity")
    minCapacity: option<resourceCapacity>,
    @ocaml.doc("<p>The scalable dimension associated with the scalable target.
      This string consists of the service namespace, resource type, and scaling property.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource that is associated with the scalable target.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {.}
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "RegisterScalableTargetCommand"
  let make = (
    ~scalableDimension,
    ~resourceId,
    ~serviceNamespace,
    ~suspendedState=?,
    ~roleARN=?,
    ~maxCapacity=?,
    ~minCapacity=?,
    (),
  ) =>
    new({
      suspendedState: suspendedState,
      roleARN: roleARN,
      maxCapacity: maxCapacity,
      minCapacity: minCapacity,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>The new minimum and maximum capacity. You can set both values or just one. At the
         scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out
         to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling
         scales in to the maximum capacity.</p>")
    @as("ScalableTargetAction")
    scalableTargetAction: option<scalableTargetAction>,
    @ocaml.doc("<p>The date and time for the recurring schedule to end, in UTC.</p>") @as("EndTime")
    endTime: option<timestampType>,
    @ocaml.doc("<p>The date and time for this scheduled action to start, in UTC.</p>")
    @as("StartTime")
    startTime: option<timestampType>,
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource associated with the scheduled action.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The name of the scheduled action. This name must be unique among all other scheduled
         actions on the specified scalable target. </p>")
    @as("ScheduledActionName")
    scheduledActionName: scheduledActionName,
    @ocaml.doc("<p>Specifies the time zone used when setting a scheduled action by using an at or cron
         expression. If a time zone is not provided, UTC is used by default.</p>
         <p>Valid values are the canonical names of the IANA time zones supported by Joda-Time (such
         as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For more information, see <a href=\"https://www.joda.org/joda-time/timezones.html\">https://www.joda.org/joda-time/timezones.html</a>.</p>")
    @as("Timezone")
    timezone: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The schedule for this action. The following formats are supported:</p>
         <ul>
            <li>
               <p>At expressions - \"<code>at(<i>yyyy</i>-<i>mm</i>-<i>dd</i>T<i>hh</i>:<i>mm</i>:<i>ss</i>)</code>\"</p>
            </li>
            <li>
               <p>Rate expressions - \"<code>rate(<i>value</i> 
                     <i>unit</i>)</code>\"</p>
            </li>
            <li>
               <p>Cron expressions - \"<code>cron(<i>fields</i>)</code>\"</p>
            </li>
         </ul>
         <p>At expressions are useful for one-time schedules. Cron expressions are useful for 
         scheduled actions that run periodically at a specified date and time, and rate expressions 
         are useful for scheduled actions that run at a regular interval.</p>
         <p>At and cron expressions use Universal Coordinated Time (UTC) by
         default.</p>
         <p>The cron format consists of six fields separated by white spaces: [Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].</p>
         <p>For rate expressions, <i>value</i> is a positive integer and <i>unit</i> is 
         <code>minute</code> | <code>minutes</code> | <code>hour</code> | <code>hours</code> | <code>day</code> | <code>days</code>.</p>
           <p>For more information and examples, see <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/examples-scheduled-actions.html\">Example scheduled actions for Application Auto Scaling</a> in the <i>Application Auto Scaling User Guide</i>.</p>")
    @as("Schedule")
    schedule: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {.}
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "PutScheduledActionCommand"
  let make = (
    ~scalableDimension,
    ~resourceId,
    ~scheduledActionName,
    ~serviceNamespace,
    ~scalableTargetAction=?,
    ~endTime=?,
    ~startTime=?,
    ~timezone=?,
    ~schedule=?,
    (),
  ) =>
    new({
      scalableTargetAction: scalableTargetAction,
      endTime: endTime,
      startTime: startTime,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      scheduledActionName: scheduledActionName,
      timezone: timezone,
      schedule: schedule,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeScalingActivities = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of scalable targets. This value can be between 1 and
         50. The default value is 50.</p>
         <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
         at a time, along with a <code>NextToken</code> value. To get the next set of results,
         include the <code>NextToken</code> value in a subsequent call. If this parameter is not
         used, the operation returns up to 50 results and a
            <code>NextToken</code> value, if applicable.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
      If you specify a scalable dimension, you must also specify a resource ID.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: option<scalableDimension>,
    @ocaml.doc("<p>The identifier of the resource associated with the scaling activity.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>A list of scaling activity objects.</p>") @as("ScalingActivities")
    scalingActivities: option<scalingActivities>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalingActivitiesCommand"
  let make = (
    ~serviceNamespace,
    ~nextToken=?,
    ~maxResults=?,
    ~scalableDimension=?,
    ~resourceId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledActions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of scheduled action results. This value can be between
         1 and 50. The default value is 50.</p>
         <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
         at a time, along with a <code>NextToken</code> value. To get the next set of results,
         include the <code>NextToken</code> value in a subsequent call. If this parameter is not
         used, the operation returns up to 50 results and a
            <code>NextToken</code> value, if applicable.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
      If you specify a scalable dimension, you must also specify a resource ID.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: option<scalableDimension>,
    @ocaml.doc("<p>The identifier of the resource associated with the scheduled action.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
    @ocaml.doc("<p>The names of the scheduled actions to describe.</p>") @as("ScheduledActionNames")
    scheduledActionNames: option<resourceIdsMaxLen1600>,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>Information about the scheduled actions.</p>") @as("ScheduledActions")
    scheduledActions: option<scheduledActions>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScheduledActionsCommand"
  let make = (
    ~serviceNamespace,
    ~nextToken=?,
    ~maxResults=?,
    ~scalableDimension=?,
    ~resourceId=?,
    ~scheduledActionNames=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
      scheduledActionNames: scheduledActionNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalableTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of scalable targets. This value can be between 1 and
         50. The default value is 50.</p>
         <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
         at a time, along with a <code>NextToken</code> value. To get the next set of results,
         include the <code>NextToken</code> value in a subsequent call. If this parameter is not
         used, the operation returns up to 50 results and a
            <code>NextToken</code> value, if applicable.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The scalable dimension associated with the scalable target.
      This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: option<scalableDimension>,
    @ocaml.doc("<p>The identifier of the resource associated with the scalable target.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceIds")
    resourceIds: option<resourceIdsMaxLen1600>,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The scalable targets that match the request parameters.</p>")
    @as("ScalableTargets")
    scalableTargets: option<scalableTargets>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalableTargetsCommand"
  let make = (
    ~serviceNamespace,
    ~nextToken=?,
    ~maxResults=?,
    ~scalableDimension=?,
    ~resourceIds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      scalableDimension: scalableDimension,
      resourceIds: resourceIds,
      serviceNamespace: serviceNamespace,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutScalingPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A target tracking scaling policy. Includes support for predefined or customized
         metrics.</p>
         <p>This parameter is required if you are creating a policy and the policy type is
            <code>TargetTrackingScaling</code>.</p>")
    @as("TargetTrackingScalingPolicyConfiguration")
    targetTrackingScalingPolicyConfiguration: option<targetTrackingScalingPolicyConfiguration>,
    @ocaml.doc("<p>A step scaling policy.</p>
         <p>This parameter is required if you are creating a policy and the policy type is
            <code>StepScaling</code>.</p>")
    @as("StepScalingPolicyConfiguration")
    stepScalingPolicyConfiguration: option<stepScalingPolicyConfiguration>,
    @ocaml.doc("<p>The policy type. This parameter is required if you are creating a scaling policy.</p>
         <p>The following policy types are supported: </p>
         <p>
            <code>TargetTrackingScaling</code>—Not supported for Amazon EMR</p>
         <p>
            <code>StepScaling</code>—Not supported for DynamoDB, Amazon Comprehend, Lambda, Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or
      Neptune.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html\">Target
        tracking scaling policies</a> and <a href=\"https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html\">Step scaling policies</a> in the <i>Application Auto Scaling User Guide</i>.</p>")
    @as("PolicyType")
    policyType: option<policyType>,
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.</p>
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: scalableDimension,
    @ocaml.doc("<p>The identifier of the resource associated with the scaling policy.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: resourceIdMaxLen1600,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
    @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName") policyName: policyName,
  }
  type response = {
    @ocaml.doc("<p>The CloudWatch alarms created for the target tracking scaling policy.</p>")
    @as("Alarms")
    alarms: option<alarms>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resulting scaling policy.</p>")
    @as("PolicyARN")
    policyARN: resourceIdMaxLen1600,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "PutScalingPolicyCommand"
  let make = (
    ~scalableDimension,
    ~resourceId,
    ~serviceNamespace,
    ~policyName,
    ~targetTrackingScalingPolicyConfiguration=?,
    ~stepScalingPolicyConfiguration=?,
    ~policyType=?,
    (),
  ) =>
    new({
      targetTrackingScalingPolicyConfiguration: targetTrackingScalingPolicyConfiguration,
      stepScalingPolicyConfiguration: stepScalingPolicyConfiguration,
      policyType: policyType,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
      policyName: policyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScalingPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>The maximum number of scalable targets. This value can be between 1 and 10. The default
         value is 10.</p>
         <p>If this parameter is used, the operation returns up to <code>MaxResults</code> results
         at a time, along with a <code>NextToken</code> value. To get the next set of results,
         include the <code>NextToken</code> value in a subsequent call. If this parameter is not
         used, the operation returns up to 10 results and a <code>NextToken</code> value, if
         applicable.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
      If you specify a scalable dimension, you must also specify a resource ID.</p> 
         <ul>
            <li>
               <p>
                  <code>ecs:service:DesiredCount</code> - The desired task count of an ECS service.</p>
           </li>
            <li>
               <p>
                  <code>elasticmapreduce:instancegroup:InstanceCount</code> - The instance count of an EMR Instance Group.</p>
           </li>
            <li>
               <p>
                  <code>ec2:spot-fleet-request:TargetCapacity</code> - The target capacity of a Spot Fleet.</p>
           </li>
            <li>
               <p>
                  <code>appstream:fleet:DesiredCapacity</code> - The desired capacity of an AppStream 2.0 fleet.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:table:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB table.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:ReadCapacityUnits</code> - The provisioned read capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>dynamodb:index:WriteCapacityUnits</code> - The provisioned write capacity for a DynamoDB global secondary index.</p>
           </li>
            <li>
               <p>
                  <code>rds:cluster:ReadReplicaCount</code> - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.</p>
           </li>
            <li>
               <p>
                  <code>sagemaker:variant:DesiredInstanceCount</code> - The number of EC2 instances for an SageMaker model endpoint variant.</p>
           </li>
            <li>
              <p>
                  <code>custom-resource:ResourceType:Property</code> - The scalable dimension for a custom resource provided by your own application or service.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:document-classifier-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend document classification endpoint.</p>
           </li>
            <li>
               <p>
                  <code>comprehend:entity-recognizer-endpoint:DesiredInferenceUnits</code> - The number of inference units for an Amazon Comprehend entity recognizer endpoint.</p>
           </li>
            <li>
               <p>
                  <code>lambda:function:ProvisionedConcurrency</code> - The provisioned concurrency for a Lambda function.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:ReadCapacityUnits</code> - The provisioned read capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>cassandra:table:WriteCapacityUnits</code> - The provisioned write capacity for an Amazon Keyspaces table.</p>
           </li>
            <li>
               <p>
                  <code>kafka:broker-storage:VolumeSize</code> - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:NodeGroups</code> - The number of node groups for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>elasticache:replication-group:Replicas</code> - The number of replicas per node group for an Amazon ElastiCache replication group.</p>
           </li>
            <li>
               <p>
                  <code>neptune:cluster:ReadReplicaCount</code> - The count of read replicas in an Amazon Neptune DB cluster.</p>
           </li>
         </ul>")
    @as("ScalableDimension")
    scalableDimension: option<scalableDimension>,
    @ocaml.doc("<p>The identifier of the resource associated with the scaling policy.
      This string consists of the resource type and unique identifier.</p> 
         <ul>
            <li>
               <p>ECS service - The resource type is <code>service</code> and the unique identifier is the cluster name  
               and service name. Example: <code>service/default/sample-webapp</code>.</p>
           </li>
            <li>
               <p>Spot Fleet - The resource type is <code>spot-fleet-request</code> and the unique identifier is the 
               Spot Fleet request ID. Example: <code>spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE</code>.</p>
           </li>
            <li>
               <p>EMR cluster - The resource type is <code>instancegroup</code> and the unique identifier is the cluster ID and instance group ID.
               Example: <code>instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0</code>.</p>
           </li>
            <li>
               <p>AppStream 2.0 fleet - The resource type is <code>fleet</code> and the unique identifier is the fleet name.
               Example: <code>fleet/sample-fleet</code>.</p>
           </li>
            <li>
               <p>DynamoDB table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>table/my-table</code>.</p>
           </li>
            <li>
               <p>DynamoDB global secondary index - The resource type is <code>index</code> and the unique identifier is the index name. 
               Example: <code>table/my-table/index/my-table-index</code>.</p>
           </li>
            <li>
               <p>Aurora DB cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name.
               Example: <code>cluster:my-db-cluster</code>.</p>
           </li>
            <li>
               <p>SageMaker endpoint variant - The resource type is <code>variant</code> and the unique identifier is the resource ID.
               Example: <code>endpoint/my-end-point/variant/KMeansClustering</code>.</p>
           </li>
            <li>
               <p>Custom resources are not supported with a resource type. This parameter must specify the <code>OutputValue</code> from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information
               is available in our <a href=\"https://github.com/aws/aws-auto-scaling-custom-resource\">GitHub
                  repository</a>.</p>
           </li>
            <li>
               <p>Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: <code>arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE</code>.</p>
           </li>
            <li>
               <p>Lambda provisioned concurrency - The resource type is <code>function</code> and the unique identifier is the function name with a function version or alias name suffix that is not <code>$LATEST</code>. 
               Example: <code>function:my-function:prod</code> or <code>function:my-function:1</code>.</p>
           </li>
            <li>
               <p>Amazon Keyspaces table - The resource type is <code>table</code> and the unique identifier is the table name. 
               Example: <code>keyspace/mykeyspace/table/mytable</code>.</p>
           </li>
            <li>
               <p>Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. 
               Example: <code>arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5</code>.</p>
           </li>
            <li>
               <p>Amazon ElastiCache replication group - The resource type is <code>replication-group</code> and the unique identifier is the replication group name.
               Example: <code>replication-group/mycluster</code>.</p>
           </li>
            <li>
               <p>Neptune cluster - The resource type is <code>cluster</code> and the unique identifier is the cluster name. Example: <code>cluster:mycluster</code>.</p>
           </li>
         </ul>")
    @as("ResourceId")
    resourceId: option<resourceIdMaxLen1600>,
    @ocaml.doc("<p>The namespace of the Amazon Web Services service that provides the resource. For a resource provided
         by your own application or service, use <code>custom-resource</code> instead.</p>")
    @as("ServiceNamespace")
    serviceNamespace: serviceNamespace,
    @ocaml.doc("<p>The names of the scaling policies to describe.</p>") @as("PolicyNames")
    policyNames: option<resourceIdsMaxLen1600>,
  }
  type response = {
    @ocaml.doc("<p>The token required to get the next set of results. This value is <code>null</code> if
         there are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<xmlString>,
    @ocaml.doc("<p>Information about the scaling policies.</p>") @as("ScalingPolicies")
    scalingPolicies: option<scalingPolicies>,
  }
  @module("@aws-sdk/client-application-autoscaling") @new
  external new: request => t = "DescribeScalingPoliciesCommand"
  let make = (
    ~serviceNamespace,
    ~nextToken=?,
    ~maxResults=?,
    ~scalableDimension=?,
    ~resourceId=?,
    ~policyNames=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      scalableDimension: scalableDimension,
      resourceId: resourceId,
      serviceNamespace: serviceNamespace,
      policyNames: policyNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
