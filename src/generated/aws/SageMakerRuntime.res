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
type awsServiceClient;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => awsServiceClient = "SageMakerRuntimeClient";
module InvokeEndpoint = {
  type t;
  type request = {
@as("InferenceId") inferenceId: option<inferenceId>,
@as("TargetContainerHostname") targetContainerHostname: option<targetContainerHostnameHeader>,
@as("TargetVariant") targetVariant: option<targetVariantHeader>,
@as("TargetModel") targetModel: option<targetModelHeader>,
@as("CustomAttributes") customAttributes: option<customAttributesHeader>,
@as("Accept") accept: option<header>,
@as("ContentType") contentType: option<header>,
@as("Body") body: bodyBlob,
@as("EndpointName") endpointName: endpointName
}
  type response = {
@as("CustomAttributes") customAttributes: option<customAttributesHeader>,
@as("InvokedProductionVariant") invokedProductionVariant: option<header>,
@as("ContentType") contentType: option<header>,
@as("Body") body: bodyBlob
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "InvokeEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
