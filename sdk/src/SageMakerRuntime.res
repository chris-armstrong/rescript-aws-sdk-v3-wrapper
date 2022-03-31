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
type requestTTLSecondsHeader = int
type message = string
type logStreamArn = string
type inputLocationHeader = string
type inferenceId = string
type header = string
type endpointName = string
type customAttributesHeader = string
type bodyBlob = NodeJs.Buffer.t
@ocaml.doc("<p> The Amazon SageMaker runtime API. </p>")
module InvokeEndpointAsync = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Maximum age in seconds a request can be in the queue before it is marked as expired.</p>"
    )
    @as("RequestTTLSeconds")
    requestTTLSeconds: option<requestTTLSecondsHeader>,
    @ocaml.doc("<p>The Amazon S3 URI where the inference request payload is stored.</p>")
    @as("InputLocation")
    inputLocation: inputLocationHeader,
    @ocaml.doc("<p>The identifier for the inference request. Amazon SageMaker will generate an identifier for you 
            if none is specified. </p>")
    @as("InferenceId")
    inferenceId: option<inferenceId>,
    @ocaml.doc("<p>Provides additional information about a request for an inference submitted to 
            a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is 
            forwarded verbatim. You could use this value, for example, to provide an ID that you 
            can use to track a request or to provide other metadata that a service endpoint was 
            programmed to process. The value must consist of no more than 1024 
            visible US-ASCII characters as specified in 
            <a href=\"https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6\">Section 3.3.6. 
                Field Value Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
        
        <p>The code in your model is responsible for setting or updating any custom attributes 
            in the response. If your code does not set this value in the response, an empty 
            value is returned. For example, if a custom attribute represents the trace ID, 
            your model can prepend the custom attribute with <code>Trace ID</code>: in your post-processing function. </p>
        
        <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python SDK. </p>")
    @as("CustomAttributes")
    customAttributes: option<customAttributesHeader>,
    @ocaml.doc("<p>The desired MIME type of the inference in the response.</p>") @as("Accept")
    accept: option<header>,
    @ocaml.doc("<p>The MIME type of the input data in the request body.</p>") @as("ContentType")
    contentType: option<header>,
    @ocaml.doc("<p>The name of the endpoint that you specified when you created the endpoint using 
            the <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html\">
               <code>CreateEndpoint</code>
            </a> API.</p>")
    @as("EndpointName")
    endpointName: endpointName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon S3 URI where the inference response payload is stored.</p>")
    @as("OutputLocation")
    outputLocation: option<header>,
    @ocaml.doc("<p>Identifier for an inference request. This will be the same as the <code>InferenceId</code> specified 
            in the input. Amazon SageMaker will generate an identifier for you if you do not specify one.</p>")
    @as("InferenceId")
    inferenceId: option<header>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "InvokeEndpointAsyncCommand"
  let make = (
    ~inputLocation,
    ~endpointName,
    ~requestTTLSeconds=?,
    ~inferenceId=?,
    ~customAttributes=?,
    ~accept=?,
    ~contentType=?,
    (),
  ) =>
    new({
      requestTTLSeconds: requestTTLSeconds,
      inputLocation: inputLocation,
      inferenceId: inferenceId,
      customAttributes: customAttributes,
      accept: accept,
      contentType: contentType,
      endpointName: endpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InvokeEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>If you provide a value, it is added to the captured data when you enable data capture
            on the endpoint. For information about data capture, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html\">Capture
            Data</a>.</p>")
    @as("InferenceId")
    inferenceId: option<inferenceId>,
    @ocaml.doc("<p>If the endpoint hosts multiple containers and is configured to use direct invocation,
            this parameter specifies the host name of the container to invoke.</p>")
    @as("TargetContainerHostname")
    targetContainerHostname: option<targetContainerHostnameHeader>,
    @ocaml.doc("<p>Specify the production variant to send the inference request to when invoking an
            endpoint that is running two or more variants. Note that this parameter overrides the
            default behavior for the endpoint, which is to distribute the invocation traffic based
            on the variant weights.</p>
        <p>For information about how to use variant targeting to perform a/b testing, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html\">Test models in
                production</a>
         </p>")
    @as("TargetVariant")
    targetVariant: option<targetVariantHeader>,
    @ocaml.doc("<p>The model to request for inference when invoking a multi-model endpoint.</p>")
    @as("TargetModel")
    targetModel: option<targetModelHeader>,
    @ocaml.doc("<p>Provides additional information about a request for an inference submitted to a model
            hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
            forwarded verbatim. You could use this value, for example, to provide an ID that you can
            use to track a request or to provide other metadata that a service endpoint was
            programmed to process. The value must consist of no more than 1024 visible US-ASCII
            characters as specified in <a href=\"https://tools.ietf.org/html/rfc7230#section-3.2.6\">Section 3.3.6. Field Value
                Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
        <p>The code in your model is responsible for setting or updating any custom attributes in
            the response. If your code does not set this value in the response, an empty value is
            returned. For example, if a custom attribute represents the trace ID, your model can
            prepend the custom attribute with <code>Trace ID:</code> in your post-processing
            function.</p>

        <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python
            SDK.</p>")
    @as("CustomAttributes")
    customAttributes: option<customAttributesHeader>,
    @ocaml.doc("<p>The desired MIME type of the inference in the response.</p>") @as("Accept")
    accept: option<header>,
    @ocaml.doc("<p>The MIME type of the input data in the request body.</p>") @as("ContentType")
    contentType: option<header>,
    @ocaml.doc("<p>Provides input data, in the format specified in the <code>ContentType</code>
            request header. Amazon SageMaker passes all of the data in the body to the model. </p>
        <p>For information about the format of the request body, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html\">Common Data
                Formats-Inference</a>.</p>")
    @as("Body")
    body: bodyBlob,
    @ocaml.doc("<p>The name of the endpoint that you specified when you created the endpoint using the
                <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html\">CreateEndpoint</a> API. </p>")
    @as("EndpointName")
    endpointName: endpointName,
  }
  type response = {
    @ocaml.doc("<p>Provides additional information in the response about the inference returned by a
            model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
            forwarded verbatim. You could use this value, for example, to return an ID received in
            the <code>CustomAttributes</code> header of a request or other metadata that a service
            endpoint was programmed to produce. The value must consist of no more than 1024 visible
            US-ASCII characters as specified in <a href=\"https://tools.ietf.org/html/rfc7230#section-3.2.6\">Section 3.3.6. Field Value
                Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer
            wants the custom attribute returned, the model must set the custom attribute to be
            included on the way back. </p>
        <p>The code in your model is responsible for setting or updating any custom attributes in
            the response. If your code does not set this value in the response, an empty value is
            returned. For example, if a custom attribute represents the trace ID, your model can
            prepend the custom attribute with <code>Trace ID:</code> in your post-processing
            function.</p>
        <p>This feature is currently supported in the Amazon Web Services SDKs but not in the Amazon SageMaker Python
            SDK.</p>")
    @as("CustomAttributes")
    customAttributes: option<customAttributesHeader>,
    @ocaml.doc("<p>Identifies the production variant that was invoked.</p>")
    @as("InvokedProductionVariant")
    invokedProductionVariant: option<header>,
    @ocaml.doc("<p>The MIME type of the inference returned in the response body.</p>")
    @as("ContentType")
    contentType: option<header>,
    @ocaml.doc("<p>Includes the inference provided by the model.</p>
        <p>For information about the format of the response body, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html\">Common Data
                Formats-Inference</a>.</p>")
    @as("Body")
    body: bodyBlob,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "InvokeEndpointCommand"
  let make = (
    ~body,
    ~endpointName,
    ~inferenceId=?,
    ~targetContainerHostname=?,
    ~targetVariant=?,
    ~targetModel=?,
    ~customAttributes=?,
    ~accept=?,
    ~contentType=?,
    (),
  ) =>
    new({
      inferenceId: inferenceId,
      targetContainerHostname: targetContainerHostname,
      targetVariant: targetVariant,
      targetModel: targetModel,
      customAttributes: customAttributes,
      accept: accept,
      contentType: contentType,
      body: body,
      endpointName: endpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
