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
type long = float
type token = string
type timestamp_ = Js.Date.t;
type s3Prefix = string
type s3Key = string
type s3BucketRegion = [@as("af-south-1") #AfSouth1 | @as("eu-south-1") #EuSouth1 | @as("me-south-1") #MeSouth1 | @as("ap-east-1") #ApEast1]
type s3Bucket = string
type reportId = string
type reportFrequency = [@as("ALL") #ALL | @as("DAILY") #DAILY | @as("MONTHLY") #MONTHLY]
type reportDescription = string
type integer_ = int
type importId = string
type format = [@as("PARQUET") #PARQUET | @as("CSV") #CSV]
type errorMessage = string
type sourceS3Location = {
region: option<s3BucketRegion>,
key: s3Key,
bucket: s3Bucket
}
type s3Location = {
prefix: s3Prefix,
bucket: s3Bucket
}
type reportDefinition = {
lastUpdatedAt: option<timestamp_>,
createdAt: option<timestamp_>,
destinationS3Location: option<s3Location>,
format: option<format>,
reportFrequency: option<reportFrequency>,
reportDescription: option<reportDescription>,
reportId: option<reportId>
}
type reportDefinitionList = array<reportDefinition>
type awsServiceClient;
@module("@aws-sdk/client-application-cost-profiler") @new external createClient: unit => awsServiceClient = "ApplicationCostProfilerClient";
module DeleteReportDefinition = {
  type t;
  type request = {
reportId: reportId
}
  type response = {
reportId: option<reportId>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "DeleteReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateReportDefinition = {
  type t;
  type request = {
destinationS3Location: s3Location,
format: format,
reportFrequency: reportFrequency,
reportDescription: reportDescription,
reportId: reportId
}
  type response = {
reportId: option<reportId>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "UpdateReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutReportDefinition = {
  type t;
  type request = {
destinationS3Location: s3Location,
format: format,
reportFrequency: reportFrequency,
reportDescription: reportDescription,
reportId: reportId
}
  type response = {
reportId: option<reportId>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "PutReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportApplicationUsage = {
  type t;
  type request = {
sourceS3Location: sourceS3Location
}
  type response = {
importId: importId
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "ImportApplicationUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetReportDefinition = {
  type t;
  type request = {
reportId: reportId
}
  type response = {
lastUpdated: timestamp_,
createdAt: timestamp_,
destinationS3Location: s3Location,
format: format,
reportFrequency: reportFrequency,
reportDescription: reportDescription,
reportId: reportId
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "GetReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReportDefinitions = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>
}
  type response = {
nextToken: option<token>,
reportDefinitions: option<reportDefinitionList>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (request) => t = "ListReportDefinitionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
