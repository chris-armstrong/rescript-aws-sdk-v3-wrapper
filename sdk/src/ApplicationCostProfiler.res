type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-application-cost-profiler") @new
external createClient: unit => awsServiceClient = "ApplicationCostProfilerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
type timestamp_ = Js.Date.t
type s3Prefix = string
type s3Key = string
type s3BucketRegion = [
  | @as("af-south-1") #Af_South_1
  | @as("eu-south-1") #Eu_South_1
  | @as("me-south-1") #Me_South_1
  | @as("ap-east-1") #Ap_East_1
]
type s3Bucket = string
type reportId = string
type reportFrequency = [@as("ALL") #ALL | @as("DAILY") #DAILY | @as("MONTHLY") #MONTHLY]
type reportDescription = string
type integer_ = int
type importId = string
type format = [@as("PARQUET") #PARQUET | @as("CSV") #CSV]
type errorMessage = string
@ocaml.doc("<p>Represents the Amazon Simple Storage Service (Amazon S3) location where usage data is read
      from.</p>")
type sourceS3Location = {
  @ocaml.doc("<p>Region of the bucket. Only required for Regions that are disabled by default.
        For more infomration about Regions that are disabled by default, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable\">
          Enabling a Region</a> in the <i>AWS General Reference guide</i>.</p>")
  region: option<s3BucketRegion>,
  @ocaml.doc("<p>Key of the object.</p>") key: s3Key,
  @ocaml.doc("<p>Name of the bucket.</p>") bucket: s3Bucket,
}
@ocaml.doc("<p>Represents the Amazon Simple Storage Service (Amazon S3) location where AWS Application Cost Profiler
      reports are generated and then written to.</p>")
type s3Location = {
  @ocaml.doc("<p>Prefix for the location to write to.</p>") prefix: s3Prefix,
  @ocaml.doc("<p>Name of the S3 bucket.</p>") bucket: s3Bucket,
}
@ocaml.doc("<p>The configuration of a report in AWS Application Cost Profiler.</p>")
type reportDefinition = {
  @ocaml.doc("<p>Timestamp (milliseconds) when this report definition was last updated.</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>Timestamp (milliseconds) when this report definition was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.</p>"
  )
  destinationS3Location: option<s3Location>,
  @ocaml.doc("<p>The format used for the generated reports.</p>") format: option<format>,
  @ocaml.doc("<p>The cadence at which the report is generated.</p>")
  reportFrequency: option<reportFrequency>,
  @ocaml.doc("<p>Description of the report</p>") reportDescription: option<reportDescription>,
  @ocaml.doc("<p>The ID of the report.</p>") reportId: option<reportId>,
}
type reportDefinitionList = array<reportDefinition>
@ocaml.doc("<p>This reference provides descriptions of the AWS Application Cost Profiler API.</p>
         <p>The AWS Application Cost Profiler API provides programmatic access to view, create, update, and delete
      application cost report definitions, as well as to import your usage data into the Application Cost Profiler
      service.</p>
         <p>For more information about using this service, see the <a href=\"https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html\">AWS Application Cost
        Profiler User Guide</a>.</p>")
module DeleteReportDefinition = {
  type t
  type request = {@ocaml.doc("<p>Required. ID of the report to delete.</p>") reportId: reportId}
  type response = {
    @ocaml.doc("<p>ID of the report that was deleted.</p>") reportId: option<reportId>,
  }
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "DeleteReportDefinitionCommand"
  let make = (~reportId, ()) => new({reportId: reportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateReportDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
      report.</p>")
    destinationS3Location: s3Location,
    @ocaml.doc("<p>Required. The format to use for the generated report.</p>") format: format,
    @ocaml.doc("<p>Required. The cadence to generate the report.</p>")
    reportFrequency: reportFrequency,
    @ocaml.doc("<p>Required. Description of the report.</p>") reportDescription: reportDescription,
    @ocaml.doc("<p>Required. ID of the report to update.</p>") reportId: reportId,
  }
  type response = {@ocaml.doc("<p>ID of the report.</p>") reportId: option<reportId>}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "UpdateReportDefinitionCommand"
  let make = (
    ~destinationS3Location,
    ~format,
    ~reportFrequency,
    ~reportDescription,
    ~reportId,
    (),
  ) => new({destinationS3Location, format, reportFrequency, reportDescription, reportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutReportDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
      report.</p>")
    destinationS3Location: s3Location,
    @ocaml.doc("<p>Required. The format to use for the generated report.</p>") format: format,
    @ocaml.doc("<p>Required. The cadence to generate the report.</p>")
    reportFrequency: reportFrequency,
    @ocaml.doc("<p>Required. Description of the report.</p>") reportDescription: reportDescription,
    @ocaml.doc("<p>Required. ID of the report. You can choose any valid string matching the pattern for the
      ID.</p>")
    reportId: reportId,
  }
  type response = {@ocaml.doc("<p>ID of the report.</p>") reportId: option<reportId>}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "PutReportDefinitionCommand"
  let make = (
    ~destinationS3Location,
    ~format,
    ~reportFrequency,
    ~reportDescription,
    ~reportId,
    (),
  ) => new({destinationS3Location, format, reportFrequency, reportDescription, reportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportApplicationUsage = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon S3 location to import application usage data from.</p>")
    sourceS3Location: sourceS3Location,
  }
  type response = {@ocaml.doc("<p>ID of the import request.</p>") importId: importId}
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "ImportApplicationUsageCommand"
  let make = (~sourceS3Location, ()) => new({sourceS3Location: sourceS3Location})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetReportDefinition = {
  type t
  type request = {@ocaml.doc("<p>ID of the report to retrieve.</p>") reportId: reportId}
  type response = {
    @ocaml.doc("<p>Timestamp (milliseconds) when this report definition was last updated.</p>")
    lastUpdated: timestamp_,
    @ocaml.doc("<p>Timestamp (milliseconds) when this report definition was created.</p>")
    createdAt: timestamp_,
    @ocaml.doc(
      "<p>Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.</p>"
    )
    destinationS3Location: s3Location,
    @ocaml.doc("<p>Format of the generated report.</p>") format: format,
    @ocaml.doc("<p>Cadence used to generate the report.</p>") reportFrequency: reportFrequency,
    @ocaml.doc("<p>Description of the report.</p>") reportDescription: reportDescription,
    @ocaml.doc("<p>ID of the report retrieved.</p>") reportId: reportId,
  }
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "GetReportDefinitionCommand"
  let make = (~reportId, ()) => new({reportId: reportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListReportDefinitions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") maxResults: option<integer_>,
    @ocaml.doc("<p>The token value from a previous call to access the next page of results.</p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc(
      "<p>The value of the next token, if it exists. Null if there are no more results.</p>"
    )
    nextToken: option<token>,
    @ocaml.doc("<p>The retrieved reports.</p>") reportDefinitions: option<reportDefinitionList>,
  }
  @module("@aws-sdk/client-application-cost-profiler") @new
  external new: request => t = "ListReportDefinitionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
