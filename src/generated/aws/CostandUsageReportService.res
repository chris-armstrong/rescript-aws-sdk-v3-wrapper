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
type timeUnit = [@as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY]
type schemaElement = [@as("RESOURCES") #RESOURCES]
type s3Prefix = string
type s3Bucket = string
type reportVersioning = [@as("OVERWRITE_REPORT") #OVERWRITEREPORT | @as("CREATE_NEW_REPORT") #CREATENEWREPORT]
type reportName = string
type reportFormat = [@as("Parquet") #Parquet | @as("textORcsv") #TextORcsv]
type refreshClosedReports = bool
type maxResults = int
type genericString = string
type errorMessage = string
type deleteResponseMessage = string
type compressionFormat = [@as("Parquet") #Parquet | @as("GZIP") #GZIP | @as("ZIP") #ZIP]
type billingViewArn = string
type additionalArtifact = [@as("ATHENA") #ATHENA | @as("QUICKSIGHT") #QUICKSIGHT | @as("REDSHIFT") #REDSHIFT]
type awsregion = [@as("cn-northwest-1") #CnNorthwest1 | @as("cn-north-1") #CnNorth1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-2") #UsEast2 | @as("us-east-1") #UsEast1 | @as("sa-east-1") #SaEast1 | @as("me-south-1") #MeSouth1 | @as("eu-south-1") #EuSouth1 | @as("eu-north-1") #EuNorth1 | @as("eu-west-3") #EuWest3 | @as("eu-west-2") #EuWest2 | @as("eu-west-1") #EuWest1 | @as("eu-central-1") #EuCentral1 | @as("ca-central-1") #CaCentral1 | @as("ap-northeast-3") #ApNortheast3 | @as("ap-northeast-2") #ApNortheast2 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("ap-south-1") #ApSouth1 | @as("ap-east-1") #ApEast1 | @as("af-south-1") #AfSouth1]
type schemaElementList = array<schemaElement>
type additionalArtifactList = array<additionalArtifact>
type reportDefinition = {
@as("BillingViewArn") billingViewArn: option<billingViewArn>,
@as("ReportVersioning") reportVersioning: option<reportVersioning>,
@as("RefreshClosedReports") refreshClosedReports: option<refreshClosedReports>,
@as("AdditionalArtifacts") additionalArtifacts: option<additionalArtifactList>,
@as("S3Region") s3Region: awsregion,
@as("S3Prefix") s3Prefix: s3Prefix,
@as("S3Bucket") s3Bucket: s3Bucket,
@as("AdditionalSchemaElements") additionalSchemaElements: schemaElementList,
@as("Compression") compression: compressionFormat,
@as("Format") format: reportFormat,
@as("TimeUnit") timeUnit: timeUnit,
@as("ReportName") reportName: reportName
}
type reportDefinitionList = array<reportDefinition>
type awsServiceClient;
@module("@aws-sdk/client-cur") @new external createClient: unit => awsServiceClient = "CostandUsageReportServiceClient";
module DeleteReportDefinition = {
  type t;
  type request = {
@as("ReportName") reportName: option<reportName>
}
  type response = {
@as("ResponseMessage") responseMessage: option<deleteResponseMessage>
}
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "DeleteReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutReportDefinition = {
  type t;
  type request = {
@as("ReportDefinition") reportDefinition: reportDefinition
}
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "PutReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyReportDefinition = {
  type t;
  type request = {
@as("ReportDefinition") reportDefinition: reportDefinition,
@as("ReportName") reportName: reportName
}
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "ModifyReportDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReportDefinitions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
@as("ReportDefinitions") reportDefinitions: option<reportDefinitionList>
}
  @module("@aws-sdk/client-cur") @new external new_: (request) => t = "DescribeReportDefinitionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
