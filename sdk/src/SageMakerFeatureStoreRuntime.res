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
external createClient: unit => awsServiceClient = "SageMakerFeatureStoreRuntimeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type valueAsString = string
type message = string
type featureName = string
type featureGroupName = string
@ocaml.doc("<p>The value associated with a feature.</p>")
type featureValue = {
  @ocaml.doc("<p>The value associated with a feature, in string format. Note that features types can be
         String, Integral, or Fractional. This value represents all three types as a string.</p>")
  @as("ValueAsString")
  valueAsString: valueAsString,
  @ocaml.doc("<p>The name of a feature that a feature value corresponds to.</p>") @as("FeatureName")
  featureName: featureName,
}
type featureNames = array<featureName>
type record = array<featureValue>
@ocaml.doc("<p>Contains all data plane API operations and data types for the Amazon SageMaker Feature
         Store. Use this API to put, delete, and retrieve (get) features from a feature
         store.</p>
         <p>Use the following operations to configure your <code>OnlineStore</code> and
            <code>OfflineStore</code> features, and to create and manage feature groups:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html\">CreateFeatureGroup</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html\">DeleteFeatureGroup</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html\">DescribeFeatureGroup</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html\">ListFeatureGroups</a>
               </p>
            </li>
         </ul>")
module DeleteRecord = {
  type t
  type request = {
    @ocaml.doc("<p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be
         used to query data at a certain point in time.</p>")
    @as("EventTime")
    eventTime: valueAsString,
    @ocaml.doc("<p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in
         string format. </p>")
    @as("RecordIdentifierValueAsString")
    recordIdentifierValueAsString: valueAsString,
    @ocaml.doc("<p>The name of the feature group to delete the record from. </p>")
    @as("FeatureGroupName")
    featureGroupName: featureGroupName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteRecordCommand"
  let make = (~eventTime, ~recordIdentifierValueAsString, ~featureGroupName, ()) =>
    new({
      eventTime: eventTime,
      recordIdentifierValueAsString: recordIdentifierValueAsString,
      featureGroupName: featureGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRecord = {
  type t
  type request = {
    @ocaml.doc("<p>List of FeatureValues to be inserted. This will be a full over-write. If you only want
         to update few of the feature values, do the following:</p>
         <ul>
            <li>
               <p>Use <code>GetRecord</code> to retrieve the latest record.</p>
            </li>
            <li>
               <p>Update the record returned from <code>GetRecord</code>. </p>
            </li>
            <li>
               <p>Use <code>PutRecord</code> to update feature values.</p>
            </li>
         </ul>")
    @as("Record")
    record: record,
    @ocaml.doc("<p>The name of the feature group that you want to insert the record into.</p>")
    @as("FeatureGroupName")
    featureGroupName: featureGroupName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "PutRecordCommand"
  let make = (~record, ~featureGroupName, ()) =>
    new({record: record, featureGroupName: featureGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetRecord = {
  type t
  type request = {
    @ocaml.doc("<p>List of names of Features to be retrieved. If not specified, the latest value for all
         the Features are returned.</p>")
    @as("FeatureNames")
    featureNames: option<featureNames>,
    @ocaml.doc("<p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies
         the record in the <code>FeatureGroup</code>. </p>")
    @as("RecordIdentifierValueAsString")
    recordIdentifierValueAsString: valueAsString,
    @ocaml.doc("<p>The name of the feature group in which you want to put the records.</p>")
    @as("FeatureGroupName")
    featureGroupName: featureGroupName,
  }
  type response = {
    @ocaml.doc("<p>The record you requested. A list of <code>FeatureValues</code>.</p>")
    @as("Record")
    record: option<record>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "GetRecordCommand"
  let make = (~recordIdentifierValueAsString, ~featureGroupName, ~featureNames=?, ()) =>
    new({
      featureNames: featureNames,
      recordIdentifierValueAsString: recordIdentifierValueAsString,
      featureGroupName: featureGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
