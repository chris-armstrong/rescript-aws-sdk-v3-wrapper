type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-healthlake") @new
external createClient: unit => awsServiceClient = "HealthLakeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type s3Uri = string
type preloadDataType = [@as("SYNTHEA") #SYNTHEA]
type nextToken = string
type message = string
type maxResultsInteger = int
type jobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type jobName = string
type jobId = string
type iamRoleArn = string
type fhirversion = [@as("R4") #R4]
type encryptionKeyID = string
type datastoreStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type datastoreName = string
type datastoreId = string
type datastoreArn = string
type cmkType = [
  | @as("AWS_OWNED_KMS_KEY") #AWS_OWNED_KMS_KEY
  | @as("CUSTOMER_MANAGED_KMS_KEY") #CUSTOMER_MANAGED_KMS_KEY
]
type clientTokenString = string
type boundedLengthString = string
type amazonResourceName = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
            A tag is a label consisting of a user-defined key and value. The form for tags is {\"Key\", \"Value\"}
         </p>")
type tag = {
  @ocaml.doc("<p>
            The value portion of tag. Tag values are case sensitive.
         </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>
            The key portion of a tag. Tag keys are case sensitive.
         </p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>
            The configuration of the S3 bucket for either an import or export job. This includes assigning permissions for access.
         </p>")
type s3Configuration = {
  @ocaml.doc("<p>
            The KMS key ID used to access the S3 bucket.
         </p>")
  @as("KmsKeyId")
  kmsKeyId: encryptionKeyID,
  @ocaml.doc("<p>
            The S3Uri is the user specified S3 location of the FHIR data to be imported into Amazon HealthLake.
         </p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc(
  "<p> The input properties for the preloaded Data Store. Only data preloaded from Synthea is supported.</p>"
)
type preloadDataConfig = {
  @ocaml.doc("<p>The type of preloaded data. Only Synthea preloaded data is supported.</p>")
  @as("PreloadDataType")
  preloadDataType: preloadDataType,
}
@ocaml.doc("<p>
            The customer-managed-key(CMK) used when creating a Data Store. If a customer owned key is not specified, an AWS owned key will be used for encryption. 
         </p>")
type kmsEncryptionConfig = {
  @ocaml.doc("<p>
            The KMS encryption key id/alias used to encrypt the Data Store contents at rest.
         </p>")
  @as("KmsKeyId")
  kmsKeyId: option<encryptionKeyID>,
  @ocaml.doc("<p>
            The type of customer-managed-key(CMK) used for encyrption. The two types of supported CMKs are customer owned CMKs and AWS owned CMKs.
         </p>")
  @as("CmkType")
  cmkType: cmkType,
}
@ocaml.doc("<p> The input properties for an import job.</p>")
type inputDataConfig = {
  @ocaml.doc(
    "<p>The S3Uri is the user specified S3 location of the FHIR data to be imported into Amazon HealthLake. </p>"
  )
  @as("S3Uri")
  s3Uri: option<s3Uri>,
}
module InputDataConfig = {
  type t = S3Uri(s3Uri)
  exception InputDataConfigUnspecified
  let classify = value =>
    switch value {
    | {s3Uri: Some(x)} => S3Uri(x)
    | _ => raise(InputDataConfigUnspecified)
    }

  let make = value =>
    switch value {
    | S3Uri(x) => {s3Uri: Some(x)}
    }
}
@ocaml.doc("<p>The filters applied to Data Store query.</p>")
type datastoreFilter = {
  @ocaml.doc("<p>A filter that allows the user to set cutoff dates for records. All Data Stores created
         after the specified date will be included in the results.</p>")
  @as("CreatedAfter")
  createdAfter: option<timestamp_>,
  @ocaml.doc("<p>A filter that allows the user to set cutoff dates for records. All Data Stores created
         before the specified date will be included in the results. </p>")
  @as("CreatedBefore")
  createdBefore: option<timestamp_>,
  @ocaml.doc("<p>Allows the user to filter Data Store results by status.</p>")
  @as("DatastoreStatus")
  datastoreStatus: option<datastoreStatus>,
  @ocaml.doc("<p>Allows the user to filter Data Store results by name.</p>") @as("DatastoreName")
  datastoreName: option<datastoreName>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>
            The server-side encryption key configuration for a customer provided encryption key.
         </p>")
type sseConfiguration = {
  @ocaml.doc("<p>
            The KMS encryption configuration used to provide details for data encryption.
         </p>")
  @as("KmsEncryptionConfig")
  kmsEncryptionConfig: kmsEncryptionConfig,
}
@ocaml.doc(
  "<p>The output data configuration that was supplied when the export job was created.</p>"
)
type outputDataConfig = {
  @ocaml.doc("<p>
            The output data configuration that was supplied when the export job was created.
         </p>")
  @as("S3Configuration")
  s3Configuration: option<s3Configuration>,
}
module OutputDataConfig = {
  type t = S3Configuration(s3Configuration)
  exception OutputDataConfigUnspecified
  let classify = value =>
    switch value {
    | {s3Configuration: Some(x)} => S3Configuration(x)
    | _ => raise(OutputDataConfigUnspecified)
    }

  let make = value =>
    switch value {
    | S3Configuration(x) => {s3Configuration: Some(x)}
    }
}
@ocaml.doc(
  "<p>Displays the properties of the import job, including the ID, Arn, Name, and the status of the Data Store.</p>"
)
type importJobProperties = {
  @ocaml.doc(
    "<p>An explanation of any errors that may have occurred during the FHIR import job. </p>"
  )
  @as("Message")
  message: option<message>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access to your input data.</p>"
  )
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @as("JobOutputDataConfig") jobOutputDataConfig: option<outputDataConfig>,
  @ocaml.doc(
    "<p>The input data configuration that was supplied when the Import job was created.</p>"
  )
  @as("InputDataConfig")
  inputDataConfig: inputDataConfig,
  @ocaml.doc("<p>The datastore id used when the Import job was created. </p>") @as("DatastoreId")
  datastoreId: datastoreId,
  @ocaml.doc("<p>The time that the Import job was completed.</p>") @as("EndTime")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The time that the Import job was submitted for processing.</p>") @as("SubmitTime")
  submitTime: timestamp_,
  @ocaml.doc(
    "<p>The job status for an Import job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, FAILED.</p>"
  )
  @as("JobStatus")
  jobStatus: jobStatus,
  @ocaml.doc("<p>The user-generated name for an Import job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The AWS-generated id number for the Import job.</p>") @as("JobId") jobId: jobId,
}
@ocaml.doc(
  "<p>The properties of a FHIR export job, including the ID, ARN, name, and the status of the job.</p>"
)
type exportJobProperties = {
  @ocaml.doc("<p>An explanation of any errors that may have occurred during the export job.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>The Amazon Resource Name used during the initiation of the job.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc(
    "<p>The output data configuration that was supplied when the export job was created.</p>"
  )
  @as("OutputDataConfig")
  outputDataConfig: outputDataConfig,
  @ocaml.doc(
    "<p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>"
  )
  @as("DatastoreId")
  datastoreId: datastoreId,
  @ocaml.doc("<p>The time an export job completed.</p>") @as("EndTime") endTime: option<timestamp_>,
  @ocaml.doc("<p>The time an export job was initiated.</p>") @as("SubmitTime")
  submitTime: timestamp_,
  @ocaml.doc(
    "<p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>"
  )
  @as("JobStatus")
  jobStatus: jobStatus,
  @ocaml.doc("<p>The user generated name for an export job.</p>") @as("JobName")
  jobName: option<jobName>,
  @ocaml.doc("<p>The AWS generated ID for an export job.</p>") @as("JobId") jobId: jobId,
}
@ocaml.doc(
  "<p>Displays the properties of the Data Store, including the ID, Arn, name, and the status of the Data Store.</p>"
)
type datastoreProperties = {
  @ocaml.doc(
    "<p>The preloaded data configuration for the Data Store. Only data preloaded from Synthea is supported.</p>"
  )
  @as("PreloadDataConfig")
  preloadDataConfig: option<preloadDataConfig>,
  @ocaml.doc("<p>
            The server-side encryption key configuration for a customer provided encryption key (CMK).
         </p>")
  @as("SseConfiguration")
  sseConfiguration: option<sseConfiguration>,
  @ocaml.doc(
    "<p>The AWS endpoint for the Data Store. Each Data Store will have it's own endpoint with Data Store ID in the endpoint URL.</p>"
  )
  @as("DatastoreEndpoint")
  datastoreEndpoint: string_,
  @ocaml.doc("<p>The FHIR version. Only R4 version data is supported.</p>")
  @as("DatastoreTypeVersion")
  datastoreTypeVersion: fhirversion,
  @ocaml.doc("<p>The time that a Data Store was created. </p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc(
    "<p>The status of the Data Store. Possible statuses are 'CREATING', 'ACTIVE', 'DELETING', or 'DELETED'.</p>"
  )
  @as("DatastoreStatus")
  datastoreStatus: datastoreStatus,
  @ocaml.doc("<p>The user-generated name for the Data Store.</p>") @as("DatastoreName")
  datastoreName: option<datastoreName>,
  @ocaml.doc("<p>The Amazon Resource Name used in the creation of the Data Store.</p>")
  @as("DatastoreArn")
  datastoreArn: datastoreArn,
  @ocaml.doc("<p>The AWS-generated ID number for the Data Store.</p>") @as("DatastoreId")
  datastoreId: datastoreId,
}
type importJobPropertiesList = array<importJobProperties>
type exportJobPropertiesList = array<exportJobProperties>
type datastorePropertiesList = array<datastoreProperties>
@ocaml.doc("<p>Amazon HealthLake is a HIPAA eligibile service that allows customers to store,
         transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.</p>")
module DeleteFHIRDatastore = {
  type t
  type request = {
    @ocaml.doc("<p> The AWS-generated ID for the Data Store to be deleted.</p>") @as("DatastoreId")
    datastoreId: option<datastoreId>,
  }
  type response = {
    @ocaml.doc("<p>The AWS endpoint for the Data Store the user has requested to be deleted.</p>")
    @as("DatastoreEndpoint")
    datastoreEndpoint: boundedLengthString,
    @ocaml.doc("<p>The status of the Data Store that the user has requested to be deleted. 
      </p>")
    @as("DatastoreStatus")
    datastoreStatus: datastoreStatus,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.</p>"
    )
    @as("DatastoreArn")
    datastoreArn: datastoreArn,
    @ocaml.doc("<p>The AWS-generated ID for the Data Store to be deleted.</p>") @as("DatastoreId")
    datastoreId: datastoreId,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "DeleteFHIRDatastoreCommand"
  let make = (~datastoreId=?, ()) => new({datastoreId: datastoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The keys for the tags to be removed from the Healthlake Data Store.
         </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
            \"The Amazon Resource Name(ARN) of the Data Store for which tags are being removed
         </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-healthlake") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The user specified key and value pair tags being added to a Data Store.
         </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>
            The Amazon Resource Name(ARN)that gives Amazon HealthLake access to the Data Store which tags are being added to.
         </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-healthlake") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartFHIRImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>Optional user provided token used for ensuring idempotency.</p>")
    @as("ClientToken")
    clientToken: clientTokenString,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.</p>"
    )
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The AWS-generated Data Store ID.</p>") @as("DatastoreId")
    datastoreId: datastoreId,
    @as("JobOutputDataConfig") jobOutputDataConfig: outputDataConfig,
    @ocaml.doc(
      "<p>The input properties of the FHIR Import job in the StartFHIRImport job request.</p>"
    )
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The name of the FHIR Import job in the StartFHIRImport job request.</p>")
    @as("JobName")
    jobName: option<jobName>,
  }
  type response = {
    @ocaml.doc("<p>The AWS-generated Data Store ID.</p>") @as("DatastoreId")
    datastoreId: option<datastoreId>,
    @ocaml.doc("<p>The status of an import job.</p>") @as("JobStatus") jobStatus: jobStatus,
    @ocaml.doc("<p>The AWS-generated job ID.</p>") @as("JobId") jobId: jobId,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "StartFHIRImportJobCommand"
  let make = (
    ~clientToken,
    ~dataAccessRoleArn,
    ~datastoreId,
    ~jobOutputDataConfig,
    ~inputDataConfig,
    ~jobName=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      dataAccessRoleArn: dataAccessRoleArn,
      datastoreId: datastoreId,
      jobOutputDataConfig: jobOutputDataConfig,
      inputDataConfig: inputDataConfig,
      jobName: jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFHIRExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>An optional user provided token used for ensuring idempotency.</p>")
    @as("ClientToken")
    clientToken: clientTokenString,
    @ocaml.doc("<p>The Amazon Resource Name used during the initiation of the job.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc(
      "<p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>"
    )
    @as("DatastoreId")
    datastoreId: datastoreId,
    @ocaml.doc(
      "<p>The output data configuration that was supplied when the export job was created.</p>"
    )
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>The user generated name for an export job.</p>") @as("JobName")
    jobName: option<jobName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>"
    )
    @as("DatastoreId")
    datastoreId: option<datastoreId>,
    @ocaml.doc(
      "<p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>"
    )
    @as("JobStatus")
    jobStatus: jobStatus,
    @ocaml.doc("<p>The AWS generated ID for an export job.</p>") @as("JobId") jobId: jobId,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "StartFHIRExportJobCommand"
  let make = (~clientToken, ~dataAccessRoleArn, ~datastoreId, ~outputDataConfig, ~jobName=?, ()) =>
    new({
      clientToken: clientToken,
      dataAccessRoleArn: dataAccessRoleArn,
      datastoreId: datastoreId,
      outputDataConfig: outputDataConfig,
      jobName: jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The Amazon Resource Name(ARN) of the Data Store for which tags are being added.
         </p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>
            Returns a list of tags associated with a Data Store.
         </p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFHIRDatastore = {
  type t
  type request = {
    @ocaml.doc("<p>
            Resource tags that are applied to a Data Store when it is created. 
         </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Optional user provided token used for ensuring idempotency.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenString>,
    @ocaml.doc("<p>Optional parameter to preload data upon creation of the Data Store. Currently, the only
         supported preloaded data is synthetic data generated from Synthea.</p>")
    @as("PreloadDataConfig")
    preloadDataConfig: option<preloadDataConfig>,
    @ocaml.doc("<p>
            The server-side encryption key configuration for a customer provided encryption key specified for creating a Data Store. 
         </p>")
    @as("SseConfiguration")
    sseConfiguration: option<sseConfiguration>,
    @ocaml.doc("<p>The FHIR version of the Data Store. The only supported version is R4.</p>")
    @as("DatastoreTypeVersion")
    datastoreTypeVersion: fhirversion,
    @ocaml.doc("<p>The user generated name for the Data Store.</p>") @as("DatastoreName")
    datastoreName: option<datastoreName>,
  }
  type response = {
    @ocaml.doc("<p>The AWS endpoint for the created Data Store. For preview, only US-east-1 endpoints are
         supported.</p>")
    @as("DatastoreEndpoint")
    datastoreEndpoint: boundedLengthString,
    @ocaml.doc("<p>The status of the FHIR Data Store. Possible statuses are ‘CREATING’, ‘ACTIVE’, ‘DELETING’,
         ‘DELETED’.</p>")
    @as("DatastoreStatus")
    datastoreStatus: datastoreStatus,
    @ocaml.doc("<p>The datastore ARN is generated during the creation of the Data Store and can be found in
         the output from the initial Data Store creation call.</p>")
    @as("DatastoreArn")
    datastoreArn: datastoreArn,
    @ocaml.doc("<p>The AWS-generated Data Store id. This id is in the output from the initial Data Store
         creation call.</p>")
    @as("DatastoreId")
    datastoreId: datastoreId,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "CreateFHIRDatastoreCommand"
  let make = (
    ~datastoreTypeVersion,
    ~tags=?,
    ~clientToken=?,
    ~preloadDataConfig=?,
    ~sseConfiguration=?,
    ~datastoreName=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      preloadDataConfig: preloadDataConfig,
      sseConfiguration: sseConfiguration,
      datastoreTypeVersion: datastoreTypeVersion,
      datastoreName: datastoreName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFHIRImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS-generated job ID.</p>") @as("JobId") jobId: jobId,
    @ocaml.doc("<p>The AWS-generated ID of the Data Store.</p>") @as("DatastoreId")
    datastoreId: datastoreId,
  }
  type response = {
    @ocaml.doc(
      "<p>The properties of the Import job request, including the ID, ARN, name, and the status of the job.</p>"
    )
    @as("ImportJobProperties")
    importJobProperties: importJobProperties,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "DescribeFHIRImportJobCommand"
  let make = (~jobId, ~datastoreId, ()) => new({jobId: jobId, datastoreId: datastoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFHIRExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS generated ID for an export job.</p>") @as("JobId") jobId: jobId,
    @ocaml.doc(
      "<p>The AWS generated ID for the Data Store from which files are being exported from for an export job.</p>"
    )
    @as("DatastoreId")
    datastoreId: datastoreId,
  }
  type response = {
    @ocaml.doc(
      "<p>Displays the properties of the export job, including the ID, Arn, Name, and the status of the job. </p>"
    )
    @as("ExportJobProperties")
    exportJobProperties: exportJobProperties,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "DescribeFHIRExportJobCommand"
  let make = (~jobId, ~datastoreId, ()) => new({jobId: jobId, datastoreId: datastoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFHIRDatastore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The AWS-generated Data Store id. This is part of the ‘CreateFHIRDatastore’ output.</p>"
    )
    @as("DatastoreId")
    datastoreId: option<datastoreId>,
  }
  type response = {
    @ocaml.doc("<p>All properties associated with a Data Store, including the Data Store ID, Data Store ARN,
         Data Store name, Data Store status, created at, Data Store type version, and Data Store
         endpoint.</p>")
    @as("DatastoreProperties")
    datastoreProperties: datastoreProperties,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "DescribeFHIRDatastoreCommand"
  let make = (~datastoreId=?, ()) => new({datastoreId: datastoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFHIRImportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter limits the response to FHIR import jobs submitted after a user specified date.
         </p>")
    @as("SubmittedAfter")
    submittedAfter: option<timestamp_>,
    @ocaml.doc("<p>
            This parameter limits the response to FHIR import jobs submitted before a user specified date.
         </p>")
    @as("SubmittedBefore")
    submittedBefore: option<timestamp_>,
    @ocaml.doc("<p>
            This parameter limits the response to the import job with the specified job status.
         </p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>
            This parameter limits the response to the import job with the specified job name.
         </p>")
    @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>
            This parameter limits the number of results returned for a ListFHIRImportJobs to a maximum quantity specified by the user.
         </p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>
            A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
         </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            This parameter limits the response to the import job with the specified Data Store ID.
         </p>")
    @as("DatastoreId")
    datastoreId: datastoreId,
  }
  type response = {
    @ocaml.doc("<p>
            A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
         </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            The properties of a listed FHIR import jobs, including the ID, ARN, name, and the status of the job.
         </p>")
    @as("ImportJobPropertiesList")
    importJobPropertiesList: importJobPropertiesList,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "ListFHIRImportJobsCommand"
  let make = (
    ~datastoreId,
    ~submittedAfter=?,
    ~submittedBefore=?,
    ~jobStatus=?,
    ~jobName=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      submittedAfter: submittedAfter,
      submittedBefore: submittedBefore,
      jobStatus: jobStatus,
      jobName: jobName,
      maxResults: maxResults,
      nextToken: nextToken,
      datastoreId: datastoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFHIRExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>
            This parameter limits the response to FHIR export jobs submitted after a user specified date. 
         </p>")
    @as("SubmittedAfter")
    submittedAfter: option<timestamp_>,
    @ocaml.doc("<p>
            This parameter limits the response to FHIR export jobs submitted before a user specified date. 
         </p>")
    @as("SubmittedBefore")
    submittedBefore: option<timestamp_>,
    @ocaml.doc("<p>
            This parameter limits the response to the export jobs with the specified job status. 
         </p>")
    @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>
            This parameter limits the response to the export job with the specified job name.
         </p>")
    @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>
            This parameter limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user. 
         </p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>
            A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query. 
         </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            This parameter limits the response to the export job with the specified Data Store ID. 
         </p>")
    @as("DatastoreId")
    datastoreId: datastoreId,
  }
  type response = {
    @ocaml.doc("<p>
            A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query.
         </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            The properties of listed FHIR export jobs, including the ID, ARN, name, and the status of the job.
         </p>")
    @as("ExportJobPropertiesList")
    exportJobPropertiesList: exportJobPropertiesList,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "ListFHIRExportJobsCommand"
  let make = (
    ~datastoreId,
    ~submittedAfter=?,
    ~submittedBefore=?,
    ~jobStatus=?,
    ~jobName=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      submittedAfter: submittedAfter,
      submittedBefore: submittedBefore,
      jobStatus: jobStatus,
      jobName: jobName,
      maxResults: maxResults,
      nextToken: nextToken,
      datastoreId: datastoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFHIRDatastores = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of Data Stores returned in a single page of a
         ListFHIRDatastoresRequest call.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsInteger>,
    @ocaml.doc("<p>Fetches the next page of Data Stores when results are paginated.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Lists all filters associated with a FHIR Data Store request.</p>") @as("Filter")
    filter: option<datastoreFilter>,
  }
  type response = {
    @ocaml.doc("<p>Pagination token that can be used to retrieve the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>All properties associated with the listed Data Stores.</p>")
    @as("DatastorePropertiesList")
    datastorePropertiesList: datastorePropertiesList,
  }
  @module("@aws-sdk/client-healthlake") @new
  external new: request => t = "ListFHIRDatastoresCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
