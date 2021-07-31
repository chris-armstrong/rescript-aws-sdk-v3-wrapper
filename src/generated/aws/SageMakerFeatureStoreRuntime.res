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
type valueAsString = string
type message = string
type featureName = string
type featureGroupName = string
type featureValue = {
@as("ValueAsString") valueAsString: valueAsString,
@as("FeatureName") featureName: featureName
}
type featureNames = array<featureName>
type record = array<featureValue>
type awsServiceClient;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => awsServiceClient = "SageMakerFeatureStoreRuntimeClient";
module DeleteRecord = {
  type t;
  type request = {
@as("EventTime") eventTime: valueAsString,
@as("RecordIdentifierValueAsString") recordIdentifierValueAsString: valueAsString,
@as("FeatureGroupName") featureGroupName: featureGroupName
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "DeleteRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("Record") record: record,
@as("FeatureGroupName") featureGroupName: featureGroupName
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "PutRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetRecord = {
  type t;
  type request = {
@as("FeatureNames") featureNames: option<featureNames>,
@as("RecordIdentifierValueAsString") recordIdentifierValueAsString: valueAsString,
@as("FeatureGroupName") featureGroupName: featureGroupName
}
  type response = {
@as("Record") record: option<record>
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (request) => t = "GetRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
