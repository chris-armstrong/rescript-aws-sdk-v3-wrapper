type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type token = string
type amazonawsTimestamp = Js.Date.t;
type s3Prefix = string
type s3Key = string
type s3BucketRegion = [@as("af-south-1") #af_south_1 | @as("eu-south-1") #eu_south_1 | @as("me-south-1") #me_south_1 | @as("ap-east-1") #ap_east_1]
type s3Bucket = string
type reportId = string
type reportFrequency = [@as("ALL") #ALL | @as("DAILY") #DAILY | @as("MONTHLY") #MONTHLY]
type reportDescription = string
type amazonawsInteger = int;
type importId = string
type format = [@as("PARQUET") #PARQUET | @as("CSV") #CSV]
type errorMessage = string
type sourceS3Location = {
@as("region") region: s3BucketRegion,
@as("key") key: option<s3Key>,
@as("bucket") bucket: option<s3Bucket>
}
type s3Location = {
@as("prefix") prefix: option<s3Prefix>,
@as("bucket") bucket: option<s3Bucket>
}
type reportDefinition = {
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("destinationS3Location") destinationS3Location: s3Location,
@as("format") format: format,
@as("reportFrequency") reportFrequency: reportFrequency,
@as("reportDescription") reportDescription: reportDescription,
@as("reportId") reportId: reportId
}
type reportDefinitionList = array<reportDefinition>
type clientType;
@module("@aws-sdk/client-application-cost-profiler") @new external createClient: unit => clientType = "ApplicationCostProfilerClient";
module DeleteReportDefinition = {
  type t;
  type request = {
@as("reportId") reportId: option<reportId>
}
  type response = {
@as("reportId") reportId: reportId
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "DeleteReportDefinitionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateReportDefinition = {
  type t;
  type request = {
@as("destinationS3Location") destinationS3Location: option<s3Location>,
@as("format") format: option<format>,
@as("reportFrequency") reportFrequency: option<reportFrequency>,
@as("reportDescription") reportDescription: option<reportDescription>,
@as("reportId") reportId: option<reportId>
}
  type response = {
@as("reportId") reportId: reportId
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "UpdateReportDefinitionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutReportDefinition = {
  type t;
  type request = {
@as("destinationS3Location") destinationS3Location: option<s3Location>,
@as("format") format: option<format>,
@as("reportFrequency") reportFrequency: option<reportFrequency>,
@as("reportDescription") reportDescription: option<reportDescription>,
@as("reportId") reportId: option<reportId>
}
  type response = {
@as("reportId") reportId: reportId
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "PutReportDefinitionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportApplicationUsage = {
  type t;
  type request = {
@as("sourceS3Location") sourceS3Location: option<sourceS3Location>
}
  type response = {
@as("importId") importId: option<importId>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "ImportApplicationUsageCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReportDefinition = {
  type t;
  type request = {
@as("reportId") reportId: option<reportId>
}
  type response = {
@as("lastUpdated") lastUpdated: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("destinationS3Location") destinationS3Location: option<s3Location>,
@as("format") format: option<format>,
@as("reportFrequency") reportFrequency: option<reportFrequency>,
@as("reportDescription") reportDescription: option<reportDescription>,
@as("reportId") reportId: option<reportId>
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "GetReportDefinitionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReportDefinitions = {
  type t;
  type request = {
@as("maxResults") maxResults: amazonawsInteger,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("reportDefinitions") reportDefinitions: reportDefinitionList
}
  @module("@aws-sdk/client-application-cost-profiler") @new external new_: (Js.Promise.t<request>) => t = "ListReportDefinitionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
