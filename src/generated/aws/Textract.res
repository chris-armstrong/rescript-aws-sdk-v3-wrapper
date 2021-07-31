type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-textract") @new
external createClient: unit => awsServiceClient = "TextractClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uinteger = int
type textType = [@as("PRINTED") #PRINTED | @as("HANDWRITING") #HANDWRITING]
type synthesizedJsonHumanLoopActivationConditionsEvaluationResults = string
type string_ = string
type statusMessage = string
type selectionStatus = [@as("NOT_SELECTED") #NOT_SELECTED | @as("SELECTED") #SELECTED]
type snstopicArn = string
type s3ObjectVersion = string
type s3ObjectName = string
type s3Bucket = string
type roleArn = string
type relationshipType = [
  | @as("COMPLEX_FEATURES") #COMPLEX_FEATURES
  | @as("CHILD") #CHILD
  | @as("VALUE") #VALUE
]
type percent = float
type paginationToken = string
type nonEmptyString = string
type maxResults = int
type kmskeyId = string
type jobTag = string
type jobStatus = [
  | @as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type jobId = string
type imageBlob = NodeJs.Buffer.t
type humanLoopName = string
type humanLoopArn = string
type humanLoopActivationReason = string
type flowDefinitionArn = string
type float_ = float
type featureType = [@as("FORMS") #FORMS | @as("TABLES") #TABLES]
type errorCode = string
type entityType = [@as("VALUE") #VALUE | @as("KEY") #KEY]
type contentClassifier = [
  | @as("FreeOfAdultContent") #FreeOfAdultContent
  | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation
]
type clientRequestToken = string
type blockType = [
  | @as("SELECTION_ELEMENT") #SELECTION_ELEMENT
  | @as("CELL") #CELL
  | @as("TABLE") #TABLE
  | @as("WORD") #WORD
  | @as("LINE") #LINE
  | @as("PAGE") #PAGE
  | @as("KEY_VALUE_SET") #KEY_VALUE_SET
]
type s3Object = {
  @as("Version") version: option<s3ObjectVersion>,
  @as("Name") name: option<s3ObjectName>,
  @as("Bucket") bucket: option<s3Bucket>,
}
type point = {
  @as("Y") y: option<float_>,
  @as("X") x: option<float_>,
}
type pages = array<uinteger>
type outputConfig = {
  @as("S3Prefix") s3Prefix: option<s3ObjectName>,
  @as("S3Bucket") s3Bucket: s3Bucket,
}
type notificationChannel = {
  @as("RoleArn") roleArn: roleArn,
  @as("SNSTopicArn") snstopicArn: snstopicArn,
}
type idList = array<nonEmptyString>
type humanLoopActivationReasons = array<humanLoopActivationReason>
type featureTypes = array<featureType>
type entityTypes = array<entityType>
type documentMetadata = {@as("Pages") pages: option<uinteger>}
type contentClassifiers = array<contentClassifier>
type boundingBox = {
  @as("Top") top: option<float_>,
  @as("Left") left: option<float_>,
  @as("Height") height: option<float_>,
  @as("Width") width: option<float_>,
}
type warning = {
  @as("Pages") pages: option<pages>,
  @as("ErrorCode") errorCode: option<errorCode>,
}
type relationship = {
  @as("Ids") ids: option<idList>,
  @as("Type") type_: option<relationshipType>,
}
type polygon = array<point>
type humanLoopDataAttributes = {
  @as("ContentClassifiers") contentClassifiers: option<contentClassifiers>,
}
type humanLoopActivationOutput = {
  @as("HumanLoopActivationConditionsEvaluationResults")
  humanLoopActivationConditionsEvaluationResults: option<
    synthesizedJsonHumanLoopActivationConditionsEvaluationResults,
  >,
  @as("HumanLoopActivationReasons") humanLoopActivationReasons: option<humanLoopActivationReasons>,
  @as("HumanLoopArn") humanLoopArn: option<humanLoopArn>,
}
type documentLocation = {@as("S3Object") s3Object: option<s3Object>}
type document = {
  @as("S3Object") s3Object: option<s3Object>,
  @as("Bytes") bytes: option<imageBlob>,
}
type warnings = array<warning>
type relationshipList = array<relationship>
type humanLoopConfig = {
  @as("DataAttributes") dataAttributes: option<humanLoopDataAttributes>,
  @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
  @as("HumanLoopName") humanLoopName: humanLoopName,
}
type geometry = {
  @as("Polygon") polygon: option<polygon>,
  @as("BoundingBox") boundingBox: option<boundingBox>,
}
type block = {
  @as("Page") page: option<uinteger>,
  @as("SelectionStatus") selectionStatus: option<selectionStatus>,
  @as("EntityTypes") entityTypes: option<entityTypes>,
  @as("Relationships") relationships: option<relationshipList>,
  @as("Id") id: option<nonEmptyString>,
  @as("Geometry") geometry: option<geometry>,
  @as("ColumnSpan") columnSpan: option<uinteger>,
  @as("RowSpan") rowSpan: option<uinteger>,
  @as("ColumnIndex") columnIndex: option<uinteger>,
  @as("RowIndex") rowIndex: option<uinteger>,
  @as("TextType") textType: option<textType>,
  @as("Text") text: option<string_>,
  @as("Confidence") confidence: option<percent>,
  @as("BlockType") blockType: option<blockType>,
}
type blockList = array<block>

module StartDocumentTextDetection = {
  type t
  type request = {
    @as("KMSKeyId") kmskeyId: option<kmskeyId>,
    @as("OutputConfig") outputConfig: option<outputConfig>,
    @as("NotificationChannel") notificationChannel: option<notificationChannel>,
    @as("JobTag") jobTag: option<jobTag>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("DocumentLocation") documentLocation: documentLocation,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "StartDocumentTextDetectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDocumentAnalysis = {
  type t
  type request = {
    @as("KMSKeyId") kmskeyId: option<kmskeyId>,
    @as("OutputConfig") outputConfig: option<outputConfig>,
    @as("NotificationChannel") notificationChannel: option<notificationChannel>,
    @as("JobTag") jobTag: option<jobTag>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("FeatureTypes") featureTypes: featureTypes,
    @as("DocumentLocation") documentLocation: documentLocation,
  }
  type response = {@as("JobId") jobId: option<jobId>}
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "StartDocumentAnalysisCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentTextDetection = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("JobId") jobId: jobId,
  }
  type response = {
    @as("DetectDocumentTextModelVersion") detectDocumentTextModelVersion: option<string_>,
    @as("StatusMessage") statusMessage: option<statusMessage>,
    @as("Warnings") warnings: option<warnings>,
    @as("Blocks") blocks: option<blockList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("JobStatus") jobStatus: option<jobStatus>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "GetDocumentTextDetectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocumentAnalysis = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("JobId") jobId: jobId,
  }
  type response = {
    @as("AnalyzeDocumentModelVersion") analyzeDocumentModelVersion: option<string_>,
    @as("StatusMessage") statusMessage: option<statusMessage>,
    @as("Warnings") warnings: option<warnings>,
    @as("Blocks") blocks: option<blockList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("JobStatus") jobStatus: option<jobStatus>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "GetDocumentAnalysisCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectDocumentText = {
  type t
  type request = {@as("Document") document: document}
  type response = {
    @as("DetectDocumentTextModelVersion") detectDocumentTextModelVersion: option<string_>,
    @as("Blocks") blocks: option<blockList>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "DetectDocumentTextCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AnalyzeDocument = {
  type t
  type request = {
    @as("HumanLoopConfig") humanLoopConfig: option<humanLoopConfig>,
    @as("FeatureTypes") featureTypes: featureTypes,
    @as("Document") document: document,
  }
  type response = {
    @as("AnalyzeDocumentModelVersion") analyzeDocumentModelVersion: option<string_>,
    @as("HumanLoopActivationOutput") humanLoopActivationOutput: option<humanLoopActivationOutput>,
    @as("Blocks") blocks: option<blockList>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "AnalyzeDocumentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
