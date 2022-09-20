type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sagemaker") @new
external createClient: unit => awsServiceClient = "SagemakerEdgeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type value = float
type timestamp_ = Js.Date.t
type modelName = string
type metric = string
type errorMessage = string
type dimension = string
type deviceRegistration = string
type deviceName = string
type deviceFleetName = string
type cacheTTLSeconds = string
@ocaml.doc("<p>Information required for edge device metrics.</p>")
type edgeMetric = {
  @ocaml.doc("<p>Timestamp of when the metric was requested.</p>") @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>Returns the value of the metric.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>Returns the name of the metric.</p>") @as("MetricName") metricName: option<metric>,
  @ocaml.doc("<p>The dimension of metrics published.</p>") @as("Dimension")
  dimension: option<dimension>,
}
type edgeMetrics = array<edgeMetric>
@ocaml.doc(
  "<p>Information about a model deployed on an edge device that is registered with SageMaker Edge Manager.</p>"
)
type model = {
  @ocaml.doc("<p>Information required for model metrics.</p>") @as("ModelMetrics")
  modelMetrics: option<edgeMetrics>,
  @ocaml.doc("<p>The timestamp of the last inference that was made.</p>") @as("LatestInference")
  latestInference: option<timestamp_>,
  @ocaml.doc("<p>The timestamp of the last data sample taken.</p>") @as("LatestSampleTime")
  latestSampleTime: option<timestamp_>,
  @ocaml.doc("<p>The version of the model.</p>") @as("ModelVersion") modelVersion: option<version>,
  @ocaml.doc("<p>The name of the model.</p>") @as("ModelName") modelName: option<modelName>,
}
type models = array<model>
@ocaml.doc("<p>SageMaker Edge Manager dataplane service for communicating with active agents.</p>")
module GetDeviceRegistration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the fleet that the device belongs to.</p>") @as("DeviceFleetName")
    deviceFleetName: deviceFleetName,
    @ocaml.doc("<p>The unique name of the device you want to get the registration status from.</p>")
    @as("DeviceName")
    deviceName: deviceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.</p>"
    )
    @as("CacheTTL")
    cacheTTL: option<cacheTTLSeconds>,
    @ocaml.doc(
      "<p>Describes if the device is currently registered with SageMaker Edge Manager.</p>"
    )
    @as("DeviceRegistration")
    deviceRegistration: option<deviceRegistration>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "GetDeviceRegistrationCommand"
  let make = (~deviceFleetName, ~deviceName, ()) => new({deviceFleetName, deviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SendHeartbeat = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the fleet that the device belongs to.</p>") @as("DeviceFleetName")
    deviceFleetName: deviceFleetName,
    @ocaml.doc("<p>The unique name of the device.</p>") @as("DeviceName") deviceName: deviceName,
    @ocaml.doc("<p>Returns the version of the agent.</p>") @as("AgentVersion")
    agentVersion: version,
    @ocaml.doc("<p>Returns a list of models deployed on the the device.</p>") @as("Models")
    models: option<models>,
    @ocaml.doc(
      "<p>For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.</p>"
    )
    @as("AgentMetrics")
    agentMetrics: option<edgeMetrics>,
  }
  type response = {.}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "SendHeartbeatCommand"
  let make = (~deviceFleetName, ~deviceName, ~agentVersion, ~models=?, ~agentMetrics=?, ()) =>
    new({deviceFleetName, deviceName, agentVersion, models, agentMetrics})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
