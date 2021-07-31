type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timeUnit = [@as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY]
type schemaElement = [@as("RESOURCES") #RESOURCES]
type s3Prefix = string
type s3Bucket = string
type reportVersioning = [@as("OVERWRITE_REPORT") #OVERWRITE_REPORT | @as("CREATE_NEW_REPORT") #CREATE_NEW_REPORT]
type reportName = string
type reportFormat = [@as("Parquet") #Parquet | @as("textORcsv") #textORcsv]
type refreshClosedReports = bool;
type maxResults = int;
type genericString = string
type errorMessage = string
type deleteResponseMessage = string
type compressionFormat = [@as("Parquet") #Parquet | @as("GZIP") #GZIP | @as("ZIP") #ZIP]
type billingViewArn = string
type additionalArtifact = [@as("ATHENA") #ATHENA | @as("QUICKSIGHT") #QUICKSIGHT | @as("REDSHIFT") #REDSHIFT]
type aWSRegion = [@as("cn-northwest-1") #cn_northwest_1 | @as("cn-north-1") #cn_north_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-2") #us_east_2 | @as("us-east-1") #us_east_1 | @as("sa-east-1") #sa_east_1 | @as("me-south-1") #me_south_1 | @as("eu-south-1") #eu_south_1 | @as("eu-north-1") #eu_north_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("eu-central-1") #eu_central_1 | @as("ca-central-1") #ca_central_1 | @as("ap-northeast-3") #ap_northeast_3 | @as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("ap-south-1") #ap_south_1 | @as("ap-east-1") #ap_east_1 | @as("af-south-1") #af_south_1]
type schemaElementList = array<schemaElement>
type additionalArtifactList = array<additionalArtifact>
type reportDefinition = {
@as("BillingViewArn") billingViewArn: billingViewArn,
@as("ReportVersioning") reportVersioning: reportVersioning,
@as("RefreshClosedReports") refreshClosedReports: refreshClosedReports,
@as("AdditionalArtifacts") additionalArtifacts: additionalArtifactList,
@as("S3Region") s3Region: option<aWSRegion>,
@as("S3Prefix") s3Prefix: option<s3Prefix>,
@as("S3Bucket") s3Bucket: option<s3Bucket>,
@as("AdditionalSchemaElements") additionalSchemaElements: option<schemaElementList>,
@as("Compression") compression: option<compressionFormat>,
@as("Format") format: option<reportFormat>,
@as("TimeUnit") timeUnit: option<timeUnit>,
@as("ReportName") reportName: option<reportName>
}
type reportDefinitionList = array<reportDefinition>
type clientType;
@module("@aws-sdk/client-cur") @new external createClient: unit => clientType = "CostandUsageReportServiceClient";
module DeleteReportDefinition = {
  type t;
  type request = {
@as("ReportName") reportName: reportName
}
  type response = {
@as("ResponseMessage") responseMessage: deleteResponseMessage
}
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "DeleteReportDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutReportDefinition = {
  type t;
  type request = {
@as("ReportDefinition") reportDefinition: option<reportDefinition>
}
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "PutReportDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReportDefinition = {
  type t;
  type request = {
@as("ReportDefinition") reportDefinition: option<reportDefinition>,
@as("ReportName") reportName: option<reportName>
}
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "ModifyReportDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReportDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("ReportDefinitions") reportDefinitions: reportDefinitionList
}
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "DescribeReportDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
