type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type targetVariantHeader = string
type targetModelHeader = string
type targetContainerHostnameHeader = string
type statusCode = int;
type message = string
type logStreamArn = string
type inferenceId = string
type header = string
type endpointName = string
type customAttributesHeader = string
type bodyBlob = NodeJs.Buffer.t;
type clientType;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => clientType = "SageMakerRuntimeClient";
module InvokeEndpoint = {
  type t;
  type request = {
@as("InferenceId") inferenceId: inferenceId,
@as("TargetContainerHostname") targetContainerHostname: targetContainerHostnameHeader,
@as("TargetVariant") targetVariant: targetVariantHeader,
@as("TargetModel") targetModel: targetModelHeader,
@as("CustomAttributes") customAttributes: customAttributesHeader,
@as("Accept") accept: header,
@as("ContentType") contentType: header,
@as("Body") body: option<bodyBlob>,
@as("EndpointName") endpointName: option<endpointName>
}
  type response = {
@as("CustomAttributes") customAttributes: customAttributesHeader,
@as("InvokedProductionVariant") invokedProductionVariant: header,
@as("ContentType") contentType: header,
@as("Body") body: option<bodyBlob>
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "InvokeEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
