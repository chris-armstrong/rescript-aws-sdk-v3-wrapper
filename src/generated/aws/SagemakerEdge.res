type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = string
type value = float;
type amazonawsTimestamp = Js.Date.t;
type modelName = string
type metric = string
type errorMessage = string
type dimension = string
type deviceRegistration = string
type deviceName = string
type deviceFleetName = string
type cacheTTLSeconds = string
type edgeMetric = {
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("Value") value: value,
@as("MetricName") metricName: metric,
@as("Dimension") dimension: dimension
}
type edgeMetrics = array<edgeMetric>
type model = {
@as("ModelMetrics") modelMetrics: edgeMetrics,
@as("LatestInference") latestInference: amazonawsTimestamp,
@as("LatestSampleTime") latestSampleTime: amazonawsTimestamp,
@as("ModelVersion") modelVersion: version,
@as("ModelName") modelName: modelName
}
type models = array<model>
type clientType;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => clientType = "SagemakerEdgeClient";
module GetDeviceRegistration = {
  type t;
  type request = {
@as("DeviceFleetName") deviceFleetName: option<deviceFleetName>,
@as("DeviceName") deviceName: option<deviceName>
}
  type response = {
@as("CacheTTL") cacheTTL: cacheTTLSeconds,
@as("DeviceRegistration") deviceRegistration: deviceRegistration
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "GetDeviceRegistrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendHeartbeat = {
  type t;
  type request = {
@as("DeviceFleetName") deviceFleetName: option<deviceFleetName>,
@as("DeviceName") deviceName: option<deviceName>,
@as("AgentVersion") agentVersion: option<version>,
@as("Models") models: models,
@as("AgentMetrics") agentMetrics: edgeMetrics
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "SendHeartbeatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}
