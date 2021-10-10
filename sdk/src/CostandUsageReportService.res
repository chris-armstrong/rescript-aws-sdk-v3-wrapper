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
@ocaml.doc("<p>The length of time covered by the report. </p>")
type timeUnit = [@as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY | @as("HOURLY") #HOURLY]
@ocaml.doc("<p>Whether or not AWS includes resource IDs in the report. </p>")
type schemaElement = [@as("RESOURCES") #RESOURCES]
@ocaml.doc("<p>The prefix that AWS adds to the report name when AWS delivers the report. Your prefix
        can't include spaces.</p>")
type s3Prefix = string
@ocaml.doc("<p>The S3 bucket where AWS delivers the report.</p>") type s3Bucket = string
type reportVersioning = [
  | @as("OVERWRITE_REPORT") #OVERWRITE_REPORT
  | @as("CREATE_NEW_REPORT") #CREATE_NEW_REPORT
]
@ocaml.doc("<p>The name of the report that you want to create. The name must be unique,
        is case sensitive, and can't include spaces. </p>")
type reportName = string
@ocaml.doc("<p>The format that AWS saves the report in.</p>")
type reportFormat = [@as("Parquet") #Parquet | @as("textORcsv") #TextORcsv]
type refreshClosedReports = bool
@ocaml.doc("<p>The maximum number of results that AWS returns for the operation.</p>")
type maxResults = int
@ocaml.doc("<p>A generic string.</p>") type genericString = string
@ocaml.doc("<p>A message to show the detail of the exception.</p>") type errorMessage = string
@ocaml.doc("<p>Whether the deletion was successful or not.</p>") type deleteResponseMessage = string
@ocaml.doc("<p>The compression format that AWS uses for the report.</p>")
type compressionFormat = [@as("Parquet") #Parquet | @as("GZIP") #GZIP | @as("ZIP") #ZIP]
type billingViewArn = string
@ocaml.doc("<p>The types of manifest that you want AWS to create for this report.</p>")
type additionalArtifact = [
  | @as("ATHENA") #ATHENA
  | @as("QUICKSIGHT") #QUICKSIGHT
  | @as("REDSHIFT") #REDSHIFT
]
@ocaml.doc("<p>The region of the S3 bucket that AWS delivers the report into.</p>")
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
@ocaml.doc(
  "<p>A list of strings that indicate the content that is included in the report, such as service or usage type.</p>"
)
type schemaElementList = array<schemaElement>
@ocaml.doc("<p>A list of additional artifacts.</p>")
type additionalArtifactList = array<additionalArtifact>
@ocaml.doc("<p>The definition of AWS Cost and Usage Report. You can specify the report name, 
         time unit, report format, compression format, S3 bucket, additional artifacts, and schema 
         elements in the definition.
    </p>")
type reportDefinition = {
  @ocaml.doc("<p>
      The Amazon resource name of the billing view. You can get this value by using the billing view service public APIs.
    </p>")
  @as("BillingViewArn")
  billingViewArn: option<billingViewArn>,
  @ocaml.doc("<p>Whether you want Amazon Web Services to overwrite the previous version of each report or 
         to deliver the report in addition to the previous versions.</p>")
  @as("ReportVersioning")
  reportVersioning: option<reportVersioning>,
  @ocaml.doc("<p>Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to 
      previous months. These charges can include refunds, credits, or support fees.</p>")
  @as("RefreshClosedReports")
  refreshClosedReports: option<refreshClosedReports>,
  @ocaml.doc(
    "<p>A list of manifests that you want Amazon Web Services to create for this report.</p>"
  )
  @as("AdditionalArtifacts")
  additionalArtifacts: option<additionalArtifactList>,
  @as("S3Region") s3Region: awsregion,
  @as("S3Prefix") s3Prefix: s3Prefix,
  @as("S3Bucket") s3Bucket: s3Bucket,
  @ocaml.doc(
    "<p>A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs. </p>"
  )
  @as("AdditionalSchemaElements")
  additionalSchemaElements: schemaElementList,
  @as("Compression") compression: compressionFormat,
  @as("Format") format: reportFormat,
  @as("TimeUnit") timeUnit: timeUnit,
  @as("ReportName") reportName: reportName,
}
@ocaml.doc("<p>A list of report definitions.</p>")
type reportDefinitionList = array<reportDefinition>
@ocaml.doc("<p>The AWS Cost and Usage Report API enables you to programmatically create, query, and delete 
        AWS Cost and Usage report definitions.</p>
         <p>AWS Cost and Usage reports track the monthly AWS costs and usage 
   associated with your AWS account.
    
        The report contains line items for each unique combination of AWS product,
        usage type, and operation that your AWS account uses. 
        
        You can configure the AWS Cost and Usage report to show only the data that you want, using the
        AWS Cost and Usage API.</p>

         <p>Service Endpoint</p>
         <p>The AWS Cost and Usage Report API provides the following endpoint:</p>
         <ul>
            <li>
               <p>cur.us-east-1.amazonaws.com</p>
            </li>
         </ul>")
module DeleteReportDefinition = {
  type t
  @ocaml.doc("<p>Deletes the specified report.</p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>"
    )
    @as("ReportName")
    reportName: option<reportName>,
  }
  @ocaml.doc("<p>If the action is successful, the service sends back an HTTP 200 response.</p>")
  type response = {@as("ResponseMessage") responseMessage: option<deleteResponseMessage>}
  @module("@aws-sdk/client-cur") @new external new: request => t = "DeleteReportDefinitionCommand"
  let make = (~reportName=?, ()) => new({reportName: reportName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutReportDefinition = {
  type t
  @ocaml.doc("<p>Creates a Cost and Usage Report.</p>")
  type request = {
    @ocaml.doc("<p>Represents the output of the PutReportDefinition operation. The content consists of the detailed 
      metadata and data file information. </p>")
    @as("ReportDefinition")
    reportDefinition: reportDefinition,
  }

  @module("@aws-sdk/client-cur") @new external new: request => t = "PutReportDefinitionCommand"
  let make = (~reportDefinition, ()) => new({reportDefinition: reportDefinition})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyReportDefinition = {
  type t
  type request = {
    @as("ReportDefinition") reportDefinition: reportDefinition,
    @as("ReportName") reportName: reportName,
  }

  @module("@aws-sdk/client-cur") @new external new: request => t = "ModifyReportDefinitionCommand"
  let make = (~reportDefinition, ~reportName, ()) =>
    new({reportDefinition: reportDefinition, reportName: reportName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeReportDefinitions = {
  type t
  @ocaml.doc("<p>Requests a list of AWS Cost and Usage reports owned by the account.</p>")
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>If the action is successful, the service sends back an HTTP 200 response.</p>")
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>A list of AWS Cost and Usage reports owned by the account.</p>")
    @as("ReportDefinitions")
    reportDefinitions: option<reportDefinitionList>,
  }
  @module("@aws-sdk/client-cur") @new
  external new: request => t = "DescribeReportDefinitionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
