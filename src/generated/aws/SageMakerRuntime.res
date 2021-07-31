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
external createClient: unit => awsServiceClient = "SageMakerRuntimeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type targetVariantHeader = string
type targetModelHeader = string
type targetContainerHostnameHeader = string
type statusCode = int
type message = string
type logStreamArn = string
type inferenceId = string
type header = string
type endpointName = string
type customAttributesHeader = string
type bodyBlob = NodeJs.Buffer.t

module InvokeEndpoint = {
  type t
  type request = {
    @as("InferenceId") inferenceId: option<inferenceId>,
    @as("TargetContainerHostname") targetContainerHostname: option<targetContainerHostnameHeader>,
    @as("TargetVariant") targetVariant: option<targetVariantHeader>,
    @as("TargetModel") targetModel: option<targetModelHeader>,
    @as("CustomAttributes") customAttributes: option<customAttributesHeader>,
    @as("Accept") accept: option<header>,
    @as("ContentType") contentType: option<header>,
    @as("Body") body: bodyBlob,
    @as("EndpointName") endpointName: endpointName,
  }
  type response = {
    @as("CustomAttributes") customAttributes: option<customAttributesHeader>,
    @as("InvokedProductionVariant") invokedProductionVariant: option<header>,
    @as("ContentType") contentType: option<header>,
    @as("Body") body: bodyBlob,
  }
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "InvokeEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
