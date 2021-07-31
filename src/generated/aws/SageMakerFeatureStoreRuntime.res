type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type valueAsString = string
type message = string
type featureName = string
type featureGroupName = string
type featureValue = {
@as("ValueAsString") valueAsString: option<valueAsString>,
@as("FeatureName") featureName: option<featureName>
}
type featureNames = array<featureName>
type record = array<featureValue>
type clientType;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => clientType = "SageMakerFeatureStoreRuntimeClient";
module DeleteRecord = {
  type t;
  type request = {
@as("EventTime") eventTime: option<valueAsString>,
@as("RecordIdentifierValueAsString") recordIdentifierValueAsString: option<valueAsString>,
@as("FeatureGroupName") featureGroupName: option<featureGroupName>
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "DeleteRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("Record") record: option<record>,
@as("FeatureGroupName") featureGroupName: option<featureGroupName>
}
  
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "PutRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetRecord = {
  type t;
  type request = {
@as("FeatureNames") featureNames: featureNames,
@as("RecordIdentifierValueAsString") recordIdentifierValueAsString: option<valueAsString>,
@as("FeatureGroupName") featureGroupName: option<featureGroupName>
}
  type response = {
@as("Record") record: record
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "GetRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
