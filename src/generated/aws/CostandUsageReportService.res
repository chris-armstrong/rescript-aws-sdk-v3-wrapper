type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cur") @new
external createClient: unit => awsServiceClient = "CostandUsageReportServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timeUnit = [@as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY]
type schemaElement = [@as("RESOURCES") #RESOURCES]
type s3Prefix = string
type s3Bucket = string
type reportVersioning = [
  | @as("OVERWRITE_REPORT") #OVERWRITE_REPORT
  | @as("CREATE_NEW_REPORT") #CREATE_NEW_REPORT
]
type reportName = string
type reportFormat = [@as("Parquet") #Parquet | @as("textORcsv") #TextORcsv]
type refreshClosedReports = bool
type maxResults = int
type genericString = string
type errorMessage = string
type deleteResponseMessage = string
type compressionFormat = [@as("Parquet") #Parquet | @as("GZIP") #GZIP | @as("ZIP") #ZIP]
type billingViewArn = string
type additionalArtifact = [
  | @as("ATHENA") #ATHENA
  | @as("QUICKSIGHT") #QUICKSIGHT
  | @as("REDSHIFT") #REDSHIFT
]
type awsregion = [
  | @as("cn-northwest-1") #Cn_Northwest_1
  | @as("cn-north-1") #Cn_North_1
  | @as("us-west-2") #Us_West_2
  | @as("us-west-1") #Us_West_1
  | @as("us-east-2") #Us_East_2
  | @as("us-east-1") #Us_East_1
  | @as("sa-east-1") #Sa_East_1
  | @as("me-south-1") #Me_South_1
  | @as("eu-south-1") #Eu_South_1
  | @as("eu-north-1") #Eu_North_1
  | @as("eu-west-3") #Eu_West_3
  | @as("eu-west-2") #Eu_West_2
  | @as("eu-west-1") #Eu_West_1
  | @as("eu-central-1") #Eu_Central_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("ap-northeast-3") #Ap_Northeast_3
  | @as("ap-northeast-2") #Ap_Northeast_2
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-southeast-1") #Ap_Southeast_1
  | @as("ap-south-1") #Ap_South_1
  | @as("ap-east-1") #Ap_East_1
  | @as("af-south-1") #Af_South_1
]
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
  @as("ReportName") reportName: reportName,
}
type reportDefinitionList = array<reportDefinition>

module DeleteReportDefinition = {
  type t
  type request = {@as("ReportName") reportName: option<reportName>}
  type response = {@as("ResponseMessage") responseMessage: option<deleteResponseMessage>}
  @module("@aws-sdk/client-cur") @new external new_: request => t = "DeleteReportDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutReportDefinition = {
  type t
  type request = {@as("ReportDefinition") reportDefinition: reportDefinition}
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: request => t = "PutReportDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyReportDefinition = {
  type t
  type request = {
    @as("ReportDefinition") reportDefinition: reportDefinition,
    @as("ReportName") reportName: reportName,
  }
  type response = unit
  @module("@aws-sdk/client-cur") @new external new_: request => t = "ModifyReportDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReportDefinitions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @as("ReportDefinitions") reportDefinitions: option<reportDefinitionList>,
  }
  @module("@aws-sdk/client-cur") @new
  external new_: request => t = "DescribeReportDefinitionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
