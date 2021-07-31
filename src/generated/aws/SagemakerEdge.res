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
type long = float
type version = string
type value = float
type timestamp_ = Js.Date.t;
type modelName = string
type metric = string
type errorMessage = string
type dimension = string
type deviceRegistration = string
type deviceName = string
type deviceFleetName = string
type cacheTTLSeconds = string
type edgeMetric = {
@as("Timestamp") timestamp_: option<timestamp_>,
@as("Value") value: option<value>,
@as("MetricName") metricName: option<metric>,
@as("Dimension") dimension: option<dimension>
}
type edgeMetrics = array<edgeMetric>
type model = {
@as("ModelMetrics") modelMetrics: option<edgeMetrics>,
@as("LatestInference") latestInference: option<timestamp_>,
@as("LatestSampleTime") latestSampleTime: option<timestamp_>,
@as("ModelVersion") modelVersion: option<version>,
@as("ModelName") modelName: option<modelName>
}
type models = array<model>
type awsServiceClient;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => awsServiceClient = "SagemakerEdgeClient";
module GetDeviceRegistration = {
  type t;
  type request = {
@as("DeviceFleetName") deviceFleetName: deviceFleetName,
@as("DeviceName") deviceName: deviceName
}
  type response = {
@as("CacheTTL") cacheTTL: option<cacheTTLSeconds>,
@as("DeviceRegistration") deviceRegistration: option<deviceRegistration>
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "GetDeviceRegistrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendHeartbeat = {
  type t;
  type request = {
@as("DeviceFleetName") deviceFleetName: deviceFleetName,
@as("DeviceName") deviceName: deviceName,
@as("AgentVersion") agentVersion: version,
@as("Models") models: option<models>,
@as("AgentMetrics") agentMetrics: option<edgeMetrics>
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "SendHeartbeatCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}
