type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uInteger = int;
type textType = [@as("PRINTED") #PRINTED | @as("HANDWRITING") #HANDWRITING]
type synthesizedJsonHumanLoopActivationConditionsEvaluationResults = string
type amazonawsString = string
type statusMessage = string
type selectionStatus = [@as("NOT_SELECTED") #NOT_SELECTED | @as("SELECTED") #SELECTED]
type sNSTopicArn = string
type s3ObjectVersion = string
type s3ObjectName = string
type s3Bucket = string
type roleArn = string
type relationshipType = [@as("COMPLEX_FEATURES") #COMPLEX_FEATURES | @as("CHILD") #CHILD | @as("VALUE") #VALUE]
type percent = float;
type paginationToken = string
type nonEmptyString = string
type maxResults = int;
type kMSKeyId = string
type jobTag = string
type jobStatus = [@as("PARTIAL_SUCCESS") #PARTIAL_SUCCESS | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type jobId = string
type imageBlob = NodeJs.Buffer.t;
type humanLoopName = string
type humanLoopArn = string
type humanLoopActivationReason = string
type flowDefinitionArn = string
type amazonawsFloat = float;
type featureType = [@as("FORMS") #FORMS | @as("TABLES") #TABLES]
type errorCode = string
type entityType = [@as("VALUE") #VALUE | @as("KEY") #KEY]
type contentClassifier = [@as("FreeOfAdultContent") #FreeOfAdultContent | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation]
type clientRequestToken = string
type blockType = [@as("SELECTION_ELEMENT") #SELECTION_ELEMENT | @as("CELL") #CELL | @as("TABLE") #TABLE | @as("WORD") #WORD | @as("LINE") #LINE | @as("PAGE") #PAGE | @as("KEY_VALUE_SET") #KEY_VALUE_SET]
type s3Object = {
@as("Version") version: s3ObjectVersion,
@as("Name") name: s3ObjectName,
@as("Bucket") bucket: s3Bucket
}
type point = {
@as("Y") y: amazonawsFloat,
@as("X") x: amazonawsFloat
}
type pages = array<uInteger>
type outputConfig = {
@as("S3Prefix") s3Prefix: s3ObjectName,
@as("S3Bucket") s3Bucket: option<s3Bucket>
}
type notificationChannel = {
@as("RoleArn") roleArn: option<roleArn>,
@as("SNSTopicArn") sNSTopicArn: option<sNSTopicArn>
}
type idList = array<nonEmptyString>
type humanLoopActivationReasons = array<humanLoopActivationReason>
type featureTypes = array<featureType>
type entityTypes = array<entityType>
type documentMetadata = {
@as("Pages") pages: uInteger
}
type contentClassifiers = array<contentClassifier>
type boundingBox = {
@as("Top") top: amazonawsFloat,
@as("Left") left: amazonawsFloat,
@as("Height") height: amazonawsFloat,
@as("Width") width: amazonawsFloat
}
type warning = {
@as("Pages") pages: pages,
@as("ErrorCode") errorCode: errorCode
}
type relationship = {
@as("Ids") ids: idList,
@as("Type") type_: relationshipType
}
type polygon = array<point>
type humanLoopDataAttributes = {
@as("ContentClassifiers") contentClassifiers: contentClassifiers
}
type humanLoopActivationOutput = {
@as("HumanLoopActivationConditionsEvaluationResults") humanLoopActivationConditionsEvaluationResults: synthesizedJsonHumanLoopActivationConditionsEvaluationResults,
@as("HumanLoopActivationReasons") humanLoopActivationReasons: humanLoopActivationReasons,
@as("HumanLoopArn") humanLoopArn: humanLoopArn
}
type documentLocation = {
@as("S3Object") s3Object: s3Object
}
type document = {
@as("S3Object") s3Object: s3Object,
@as("Bytes") bytes: imageBlob
}
type warnings = array<warning>
type relationshipList = array<relationship>
type humanLoopConfig = {
@as("DataAttributes") dataAttributes: humanLoopDataAttributes,
@as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
type geometry = {
@as("Polygon") polygon: polygon,
@as("BoundingBox") boundingBox: boundingBox
}
type block = {
@as("Page") page: uInteger,
@as("SelectionStatus") selectionStatus: selectionStatus,
@as("EntityTypes") entityTypes: entityTypes,
@as("Relationships") relationships: relationshipList,
@as("Id") id: nonEmptyString,
@as("Geometry") geometry: geometry,
@as("ColumnSpan") columnSpan: uInteger,
@as("RowSpan") rowSpan: uInteger,
@as("ColumnIndex") columnIndex: uInteger,
@as("RowIndex") rowIndex: uInteger,
@as("TextType") textType: textType,
@as("Text") text: amazonawsString,
@as("Confidence") confidence: percent,
@as("BlockType") blockType: blockType
}
type blockList = array<block>
type clientType;
@module("@aws-sdk/client-textract") @new external createClient: unit => clientType = "TextractClient";
module StartDocumentTextDetection = {
  type t;
  type request = {
@as("KMSKeyId") kMSKeyId: kMSKeyId,
@as("OutputConfig") outputConfig: outputConfig,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("JobTag") jobTag: jobTag,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("DocumentLocation") documentLocation: option<documentLocation>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "StartDocumentTextDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDocumentAnalysis = {
  type t;
  type request = {
@as("KMSKeyId") kMSKeyId: kMSKeyId,
@as("OutputConfig") outputConfig: outputConfig,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("JobTag") jobTag: jobTag,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("FeatureTypes") featureTypes: option<featureTypes>,
@as("DocumentLocation") documentLocation: option<documentLocation>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "StartDocumentAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentTextDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("DetectDocumentTextModelVersion") detectDocumentTextModelVersion: amazonawsString,
@as("StatusMessage") statusMessage: statusMessage,
@as("Warnings") warnings: warnings,
@as("Blocks") blocks: blockList,
@as("NextToken") nextToken: paginationToken,
@as("JobStatus") jobStatus: jobStatus,
@as("DocumentMetadata") documentMetadata: documentMetadata
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentTextDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentAnalysis = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("AnalyzeDocumentModelVersion") analyzeDocumentModelVersion: amazonawsString,
@as("StatusMessage") statusMessage: statusMessage,
@as("Warnings") warnings: warnings,
@as("Blocks") blocks: blockList,
@as("NextToken") nextToken: paginationToken,
@as("JobStatus") jobStatus: jobStatus,
@as("DocumentMetadata") documentMetadata: documentMetadata
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "GetDocumentAnalysisCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectDocumentText = {
  type t;
  type request = {
@as("Document") document: option<document>
}
  type response = {
@as("DetectDocumentTextModelVersion") detectDocumentTextModelVersion: amazonawsString,
@as("Blocks") blocks: blockList,
@as("DocumentMetadata") documentMetadata: documentMetadata
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "DetectDocumentTextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AnalyzeDocument = {
  type t;
  type request = {
@as("HumanLoopConfig") humanLoopConfig: humanLoopConfig,
@as("FeatureTypes") featureTypes: option<featureTypes>,
@as("Document") document: option<document>
}
  type response = {
@as("AnalyzeDocumentModelVersion") analyzeDocumentModelVersion: amazonawsString,
@as("HumanLoopActivationOutput") humanLoopActivationOutput: humanLoopActivationOutput,
@as("Blocks") blocks: blockList,
@as("DocumentMetadata") documentMetadata: documentMetadata
}
  @module("@aws-sdk/client-textract") @new external new_: (Js.Promise.t<request>) => t = "AnalyzeDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
