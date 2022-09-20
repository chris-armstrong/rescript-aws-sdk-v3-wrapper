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
type valueType = [@as("DATE") #DATE]
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
  | @as("TITLE") #TITLE
  | @as("MERGED_CELL") #MERGED_CELL
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
type entityType = [@as("COLUMN_HEADER") #COLUMN_HEADER | @as("VALUE") #VALUE | @as("KEY") #KEY]
type contentClassifier = [
  | @as("FreeOfAdultContent") #FreeOfAdultContent
  | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation
]
type clientRequestToken = string
type blockType = [
  | @as("TITLE") #TITLE
  | @as("MERGED_CELL") #MERGED_CELL
  | @as("SELECTION_ELEMENT") #SELECTION_ELEMENT
  | @as("CELL") #CELL
  | @as("TABLE") #TABLE
  | @as("WORD") #WORD
  | @as("LINE") #LINE
  | @as("PAGE") #PAGE
  | @as("KEY_VALUE_SET") #KEY_VALUE_SET
]
@ocaml.doc("<p>The S3 bucket name and file name that identifies the document.</p>
         <p>The AWS Region for the S3 bucket that contains the document must match the Region that
         you use for Amazon Textract operations.</p>
      
         <p>For Amazon Textract to process a file in an S3 bucket, the user must have
         permission to access the S3 bucket and file.
         
      </p>")
type s3Object = {
  @ocaml.doc("<p>If the bucket has versioning enabled, you can specify the object version. </p>")
  @as("Version")
  version: option<s3ObjectVersion>,
  @ocaml.doc("<p>The file name of the input document. Synchronous operations can use image files that are
         in JPEG or PNG format. Asynchronous operations also support PDF and TIFF format files.</p>")
  @as("Name")
  name: option<s3ObjectName>,
  @ocaml.doc("<p>The name of the S3 bucket. Note that the # character is not valid in the file
         name.</p>")
  @as("Bucket")
  bucket: option<s3Bucket>,
}
@ocaml.doc("<p>The X and Y coordinates of a point on a document page. The X and Y
         values that are returned are ratios of the overall document page size. For example, if the
         input document is 700 x 200 and the operation returns X=0.5 and Y=0.25, then the point is
         at the (350,50) pixel coordinate on the document page.</p>
      
         <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned
         by <a>DetectDocumentText</a>. <code>Polygon</code> represents a fine-grained
         polygon around detected text. For more information, see Geometry in the Amazon Textract
         Developer Guide. </p>")
type point = {
  @ocaml.doc("<p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>") @as("Y")
  y: option<float_>,
  @ocaml.doc("<p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>") @as("X")
  x: option<float_>,
}
type pages = array<uinteger>
@ocaml.doc("<p>Sets whether or not your output will go to a user created bucket. Used to set the name
         of the bucket, and the prefix on the output file.</p>
         <p>
            <code>OutputConfig</code> is an optional parameter which lets you adjust where your output will be placed. 
         By default, Amazon Textract will store the results internally and can only be accessed by the Get 
         API operations. With OutputConfig enabled, you can set the name of the bucket the output will be 
         sent to and the file prefix of the results where you can download your results. Additionally, you 
         can set the <code>KMSKeyID</code> parameter to a customer master key (CMK) to encrypt your output. Without this
         parameter set Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
         <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
         is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
         the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\"> Managing AI services opt-out policy. </a>
         </p>
         <p>For more information on data privacy,
         see the <a href=\"https://aws.amazon.com/compliance/data-privacy-faq/\">Data Privacy
            FAQ</a>.</p>")
type outputConfig = {
  @ocaml.doc("<p>The prefix of the object key that the output will be saved to. When not enabled, the
         prefix will be “textract_output\".</p>")
  @as("S3Prefix")
  s3Prefix: option<s3ObjectName>,
  @ocaml.doc("<p>The name of the bucket your output will go to.</p>") @as("S3Bucket")
  s3Bucket: s3Bucket,
}
@ocaml.doc("<p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of
         an asynchronous document operation, such as <a>StartDocumentTextDetection</a>. </p>")
type notificationChannel = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. </p>"
  )
  @as("RoleArn")
  roleArn: roleArn,
  @ocaml.doc("<p>The Amazon SNS topic that Amazon Textract posts the completion status to.</p>")
  @as("SNSTopicArn")
  snstopicArn: snstopicArn,
}
@ocaml.doc("<p>Contains information relating to dates in a document, including the type
         of value, and the value.</p>")
type normalizedValue = {
  @ocaml.doc("<p>The normalized type of the value detected. In this case, DATE.</p>")
  @as("ValueType")
  valueType: option<valueType>,
  @ocaml.doc("<p>The value of the date, written as Year-Month-DayTHour:Minute:Second.</p>")
  @as("Value")
  value: option<string_>,
}
type idList = array<nonEmptyString>
type humanLoopActivationReasons = array<humanLoopActivationReason>
type featureTypes = array<featureType>
@ocaml.doc("<p>An object used to store information about the Type detected by Amazon Textract.</p>")
type expenseType = {
  @ocaml.doc("<p>The confidence of accuracy, as a percentage.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The word or line of text detected by Amazon Textract.</p>") @as("Text")
  text: option<string_>,
}
type entityTypes = array<entityType>
@ocaml.doc("<p>Information about the input document.</p>")
type documentMetadata = {
  @ocaml.doc("<p>The number of pages that are detected in the document.</p>") @as("Pages")
  pages: option<uinteger>,
}
type contentClassifiers = array<contentClassifier>
@ocaml.doc("<p>The bounding box around the detected page, text, key-value pair, table, table cell, or
         selection element on a document page. The <code>left</code> (x-coordinate) and
            <code>top</code> (y-coordinate) are coordinates that represent the top and left sides of
         the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p>
         <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall
         document page size. For example, if the input image is 700 x 200 pixels, and the top-left
         coordinate of the bounding box is 350 x 50 pixels, the API returns a <code>left</code>
         value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p>
         <p>The <code>width</code> and <code>height</code> values represent the dimensions of the
         bounding box as a ratio of the overall document page dimension. For example, if the
         document page size is 700 x 200 pixels, and the bounding box width is 70 pixels, the width
         returned is 0.1. </p>")
type boundingBox = {
  @ocaml.doc("<p>The top coordinate of the bounding box as a ratio of overall document page
         height.</p>")
  @as("Top")
  top: option<float_>,
  @ocaml.doc("<p>The left coordinate of the bounding box as a ratio of overall document page
         width.</p>")
  @as("Left")
  left: option<float_>,
  @ocaml.doc("<p>The height of the bounding box as a ratio of the overall document page
         height.</p>")
  @as("Height")
  height: option<float_>,
  @ocaml.doc("<p>The width of the bounding box as a ratio of the overall document page
         width.</p>")
  @as("Width")
  width: option<float_>,
}
@ocaml.doc(
  "<p>A warning about an issue that occurred during asynchronous text analysis (<a>StartDocumentAnalysis</a>) or asynchronous document text detection (<a>StartDocumentTextDetection</a>). </p>"
)
type warning = {
  @ocaml.doc("<p>A list of the pages that the warning applies to.</p>") @as("Pages")
  pages: option<pages>,
  @ocaml.doc("<p>The error code for the warning.</p>") @as("ErrorCode")
  errorCode: option<errorCode>,
}
@ocaml.doc("<p>Information about how blocks are related to each other. A <code>Block</code> object
         contains 0 or more <code>Relation</code> objects in a list, <code>Relationships</code>. For
         more information, see <a>Block</a>.</p>
         <p>The <code>Type</code> element provides the type of the relationship for all blocks in
         the <code>IDs</code> array. </p>")
type relationship = {
  @ocaml.doc("<p>An
         array of IDs for related blocks. You can get the type of the relationship from the
            <code>Type</code> element.</p>")
  @as("Ids")
  ids: option<idList>,
  @ocaml.doc("<p>The type of relationship that the blocks in the IDs array have with the current block.
         The relationship can be <code>VALUE</code> or <code>CHILD</code>. A relationship of type
         VALUE is a list that contains the ID of the VALUE block that's associated with the KEY of a
         key-value pair. A relationship of type CHILD is a list of IDs that identify WORD blocks in
         the case of lines Cell blocks in the case of Tables, and WORD blocks in the case of
         Selection Elements.</p>")
  @as("Type")
  type_: option<relationshipType>,
}
type polygon = array<point>
@ocaml.doc("<p>Allows you to set attributes of the image. Currently, you can declare an image as free
         of personally identifiable information and adult content. </p>")
type humanLoopDataAttributes = {
  @ocaml.doc("<p>Sets whether the input image is free of personally identifiable information or adult
         content.</p>")
  @as("ContentClassifiers")
  contentClassifiers: option<contentClassifiers>,
}
@ocaml.doc("<p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the
         input did not trigger human review.</p>")
type humanLoopActivationOutput = {
  @ocaml.doc("<p>Shows the result of condition evaluations, including those conditions which activated a
         human review.</p>")
  @as("HumanLoopActivationConditionsEvaluationResults")
  humanLoopActivationConditionsEvaluationResults: option<
    synthesizedJsonHumanLoopActivationConditionsEvaluationResults,
  >,
  @ocaml.doc("<p>Shows if and why human review was needed.</p>") @as("HumanLoopActivationReasons")
  humanLoopActivationReasons: option<humanLoopActivationReasons>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>") @as("HumanLoopArn")
  humanLoopArn: option<humanLoopArn>,
}
@ocaml.doc("<p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous
         operations such as <a>StartDocumentTextDetection</a>.</p>
         <p>The input document can be an image file in JPEG or PNG format. It can also be a file in
         PDF format.</p>")
type documentLocation = {
  @ocaml.doc("<p>The Amazon S3 bucket that contains the input document.</p>") @as("S3Object")
  s3Object: option<s3Object>,
}
@ocaml.doc("<p>The input document, either as bytes or as an S3 object.</p>
         <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
         property. For example, you would use the <code>Bytes</code> property to pass a document
         loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
         property must be base64 encoded. Your code might not need to encode document file bytes if
         you're using an AWS SDK to call Amazon Textract API operations. </p>
         <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
            <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
         encoded.</p>
         <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
         Region that you use for Amazon Textract operations.</p>
         <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
         the Bytes property isn't supported. You must first upload the document to an Amazon S3
         bucket, and then call the operation using the S3Object property.</p>
      
         <p>For Amazon Textract to process an S3 object, the user must have permission
         to access the S3 object. </p>")
type document = {
  @ocaml.doc("<p>Identifies an S3 object as the document source. The maximum size of a document that's
         stored in an S3 bucket is 5 MB.</p>")
  @as("S3Object")
  s3Object: option<s3Object>,
  @ocaml.doc("<p>A blob of base64-encoded document bytes. The maximum size of a document that's provided
         in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format.</p>
         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
         image bytes passed using the <code>Bytes</code> field. </p>")
  @as("Bytes")
  bytes: option<imageBlob>,
}
@ocaml.doc("<p>Used to contain the information detected by an AnalyzeID operation.</p>")
type analyzeIDDetections = {
  @ocaml.doc("<p>The confidence score of the detected text.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Only returned for dates, returns the type of value detected and the date
         written in a more machine readable way.</p>")
  @as("NormalizedValue")
  normalizedValue: option<normalizedValue>,
  @ocaml.doc("<p>Text of either the normalized field or value associated with it.</p>") @as("Text")
  text: string_,
}
type warnings = array<warning>
type relationshipList = array<relationship>
@ocaml.doc("<p>Structure containing both the normalized type of the extracted information
         and the text associated with it. These are extracted as Type and Value respectively.</p>")
type identityDocumentField = {
  @as("ValueDetection") valueDetection: option<analyzeIDDetections>,
  @as("Type") type_: option<analyzeIDDetections>,
}
@ocaml.doc("<p>Sets up the human review workflow the document will be sent to if one of the conditions
         is met. You can also set certain attributes of the image before review. </p>")
type humanLoopConfig = {
  @ocaml.doc("<p>Sets attributes of the input data.</p>") @as("DataAttributes")
  dataAttributes: option<humanLoopDataAttributes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the flow definition.</p>")
  @as("FlowDefinitionArn")
  flowDefinitionArn: flowDefinitionArn,
  @ocaml.doc("<p>The name of the human workflow used for this image. This should be kept unique within a
         region.</p>")
  @as("HumanLoopName")
  humanLoopName: humanLoopName,
}
@ocaml.doc("<p>Information about where the following items are located on a document page: detected
         page, text, key-value pairs, tables, table cells, and selection elements.</p>")
type geometry = {
  @ocaml.doc("<p>Within the bounding box, a fine-grained polygon around the recognized item.</p>")
  @as("Polygon")
  polygon: option<polygon>,
  @ocaml.doc("<p>An axis-aligned coarse representation of the location of the recognized item on the
         document page.</p>")
  @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
type documentPages = array<document>
type identityDocumentFieldList = array<identityDocumentField>
@ocaml.doc(
  "<p>An object used to store information about the Value or Label detected by Amazon Textract.</p>"
)
type expenseDetection = {
  @ocaml.doc("<p>The confidence in detection, as a percentage</p>") @as("Confidence")
  confidence: option<percent>,
  @as("Geometry") geometry: option<geometry>,
  @ocaml.doc("<p>The word or line of text recognized by Amazon Textract</p>") @as("Text")
  text: option<string_>,
}
@ocaml.doc("<p>A <code>Block</code> represents items that are recognized in a document within a group
         of pixels close to each other. The information returned in a <code>Block</code> object
         depends on the type of operation. In text detection for documents (for example <a>DetectDocumentText</a>), you get information about the detected words and lines
         of text. In text analysis (for example <a>AnalyzeDocument</a>), you can also get
         information about the fields, tables, and selection elements that are detected in the
         document.</p>
         <p>An array of <code>Block</code> objects is returned by both synchronous and asynchronous
         operations. In synchronous operations, such as <a>DetectDocumentText</a>, the
         array of <code>Block</code> objects is the entire set of results. In asynchronous
         operations, such as <a>GetDocumentAnalysis</a>, the array is returned over one
         or more responses.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html\">How Amazon Textract Works</a>.</p>")
type block = {
  @ocaml.doc("<p>The page on which a block was detected. <code>Page</code> is returned by asynchronous
         operations. Page values greater than 1 are only returned for multipage documents that are
         in PDF or TIFF format. A scanned image (JPEG/PNG), even if it contains multiple document pages, is
         considered to be a single-page document. The value of <code>Page</code> is always 1.
         Synchronous operations don't return <code>Page</code> because every input document is
         considered to be a single-page document.</p>")
  @as("Page")
  page: option<uinteger>,
  @ocaml.doc("<p>The selection status of a selection element, such as an option button or check box.
      </p>")
  @as("SelectionStatus")
  selectionStatus: option<selectionStatus>,
  @ocaml.doc("<p>The type of entity. The following can be returned:</p>
         <ul>
            <li>
               <p>
                  <i>KEY</i> - An identifier for a field on the document.</p>
            </li>
            <li>
               <p>
                  <i>VALUE</i> - The field text.</p>
            </li>
         </ul>
         <p>
            <code>EntityTypes</code> isn't returned by <code>DetectDocumentText</code> and
            <code>GetDocumentTextDetection</code>.</p>")
  @as("EntityTypes")
  entityTypes: option<entityTypes>,
  @ocaml.doc("<p>A list of child blocks of the current block. For example, a LINE object has child blocks
         for each WORD block that's part of the line of text. There aren't Relationship objects in
         the list for relationships that don't exist, such as when the current block has no child
         blocks. The list size can be the following:</p>
         <ul>
            <li>
               <p>0 - The block has no child blocks.</p>
            </li>
            <li>
               <p>1 - The block has child blocks.</p>
            </li>
         </ul>")
  @as("Relationships")
  relationships: option<relationshipList>,
  @ocaml.doc("<p>The identifier for the recognized text. The identifier is only unique for a single
         operation. </p>")
  @as("Id")
  id: option<nonEmptyString>,
  @ocaml.doc("<p>The location of the recognized text on the image. It includes an axis-aligned, coarse
         bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial
         information. </p>")
  @as("Geometry")
  geometry: option<geometry>,
  @ocaml.doc("<p>The number of columns that a table cell spans. Currently this value is always 1, even if
         the number of columns spanned is greater than 1. <code>ColumnSpan</code> isn't returned by
            <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>. </p>")
  @as("ColumnSpan")
  columnSpan: option<uinteger>,
  @ocaml.doc("<p>The number of rows that a table cell spans. Currently this value is always 1, even if
         the number of rows spanned is greater than 1. <code>RowSpan</code> isn't returned by
            <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>")
  @as("RowSpan")
  rowSpan: option<uinteger>,
  @ocaml.doc("<p>The column in which a table cell appears. The first column position is 1.
            <code>ColumnIndex</code> isn't returned by <code>DetectDocumentText</code> and
            <code>GetDocumentTextDetection</code>.</p>")
  @as("ColumnIndex")
  columnIndex: option<uinteger>,
  @ocaml.doc("<p>The row in which a table cell is located. The first row position is 1.
            <code>RowIndex</code> isn't returned by <code>DetectDocumentText</code> and
            <code>GetDocumentTextDetection</code>.</p>")
  @as("RowIndex")
  rowIndex: option<uinteger>,
  @ocaml.doc("<p>The kind of text that Amazon Textract has detected. Can check for handwritten text and
         printed text.</p>")
  @as("TextType")
  textType: option<textType>,
  @ocaml.doc("<p>The word or line of text that's recognized by Amazon Textract. </p>") @as("Text")
  text: option<string_>,
  @ocaml.doc("<p>The confidence score that Amazon Textract has in the accuracy of the recognized text and
         the accuracy of the geometry points around the recognized text.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The type of text item that's recognized. In operations for text detection, the following
         types are returned:</p>
         <ul>
            <li>
               <p>
                  <i>PAGE</i> - Contains a list of the LINE <code>Block</code> objects
               that are detected on a document page.</p>
            </li>
            <li>
               <p>
                  <i>WORD</i> - A word detected on a document page. A word is one or
               more ISO basic Latin script characters that aren't separated by spaces.</p>
            </li>
            <li>
               <p>
                  <i>LINE</i> - A string of tab-delimited, contiguous words that are
               detected on a document page.</p>
            </li>
         </ul>
         <p>In text analysis operations, the following types are returned:</p>
         <ul>
            <li>
               <p>
                  <i>PAGE</i> - Contains a list of child <code>Block</code> objects
               that are detected on a document page.</p>
            </li>
            <li>
               <p>
                  <i>KEY_VALUE_SET</i> - Stores the KEY and VALUE <code>Block</code>
               objects for linked text that's detected on a document page. Use the
                  <code>EntityType</code> field to determine if a KEY_VALUE_SET object is a KEY
                  <code>Block</code> object or a VALUE <code>Block</code> object. </p>
            </li>
            <li>
               <p>
                  <i>WORD</i> - A word that's detected on a document page. A word is
               one or more ISO basic Latin script characters that aren't separated by spaces.</p>
            </li>
            <li>
               <p>
                  <i>LINE</i> - A string of tab-delimited, contiguous words that are
               detected on a document page.</p>
            </li>
            <li>
               <p>
                  <i>TABLE</i> - A table that's detected on a document page. A table
               is grid-based information with two or more rows or columns, with a cell span of one
               row and one column each. </p>
            </li>
            <li>
               <p>
                  <i>CELL</i> - A cell within a detected table. The cell is the parent
               of the block that contains the text in the cell.</p>
            </li>
            <li>
               <p>
                  <i>SELECTION_ELEMENT</i> - A selection element such as an option
               button (radio button) or a check box that's detected on a document page. Use the
               value of <code>SelectionStatus</code> to determine the status of the selection
               element.</p>
            </li>
         </ul>")
  @as("BlockType")
  blockType: option<blockType>,
}
@ocaml.doc("<p>The structure that lists each document processed in an AnalyzeID operation.</p>")
type identityDocument = {
  @ocaml.doc("<p>The structure used to record information extracted from identity documents.
         Contains both normalized field and value of the extracted text.</p>")
  @as("IdentityDocumentFields")
  identityDocumentFields: option<identityDocumentFieldList>,
  @ocaml.doc("<p>Denotes the placement of a document in the IdentityDocument list. The first document
         is marked 1, the second 2 and so on.</p>")
  @as("DocumentIndex")
  documentIndex: option<uinteger>,
}
@ocaml.doc("<p>Breakdown of detected information, seperated into 
         the catagories Type, LabelDetection, and ValueDetection</p>")
type expenseField = {
  @ocaml.doc("<p>The page number the value was detected on.</p>") @as("PageNumber")
  pageNumber: option<uinteger>,
  @ocaml.doc("<p>The value of a detected element. Present in explicit and implicit elements.</p>")
  @as("ValueDetection")
  valueDetection: option<expenseDetection>,
  @ocaml.doc("<p>The explicitly stated label of a detected element.</p>") @as("LabelDetection")
  labelDetection: option<expenseDetection>,
  @ocaml.doc(
    "<p>The implied label of a detected element. Present alongside LabelDetection for explicit elements.</p>"
  )
  @as("Type")
  type_: option<expenseType>,
}
type blockList = array<block>
type identityDocumentList = array<identityDocument>
type expenseFieldList = array<expenseField>
@ocaml.doc(
  "<p>A structure that holds information about the different lines found in a document's tables.</p>"
)
type lineItemFields = {
  @ocaml.doc("<p>ExpenseFields used to show information from detected lines on a table.</p>")
  @as("LineItemExpenseFields")
  lineItemExpenseFields: option<expenseFieldList>,
}
type lineItemList = array<lineItemFields>
@ocaml.doc(
  "<p>A grouping of tables which contain LineItems, with each table identified by the table's <code>LineItemGroupIndex</code>.</p>"
)
type lineItemGroup = {
  @ocaml.doc("<p>The breakdown of information on a particular line of a table. </p>")
  @as("LineItems")
  lineItems: option<lineItemList>,
  @ocaml.doc(
    "<p>The number used to identify a specific table in a document. The first table encountered will have a LineItemGroupIndex of 1, the second 2, etc.</p>"
  )
  @as("LineItemGroupIndex")
  lineItemGroupIndex: option<uinteger>,
}
type lineItemGroupList = array<lineItemGroup>
@ocaml.doc("<p>The structure holding all the information returned by AnalyzeExpense</p>")
type expenseDocument = {
  @ocaml.doc(
    "<p>Information detected on each table of a document, seperated into <code>LineItems</code>.</p>"
  )
  @as("LineItemGroups")
  lineItemGroups: option<lineItemGroupList>,
  @ocaml.doc("<p>Any information found outside of a table by Amazon Textract.</p>")
  @as("SummaryFields")
  summaryFields: option<expenseFieldList>,
  @ocaml.doc("<p>Denotes which invoice or receipt in the document the information is coming from. 
      First document will be 1, the second 2, and so on.</p>")
  @as("ExpenseIndex")
  expenseIndex: option<uinteger>,
}
type expenseDocumentList = array<expenseDocument>
@ocaml.doc("<p>Amazon Textract detects and analyzes text in documents and converts it
         into machine-readable text. This is the API reference documentation for
         Amazon Textract.</p>")
module StartExpenseAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS key used to encrypt the inference results. This can be 
   in either Key ID or Key Alias format. When a KMS key is provided, the 
   KMS key will be used for server-side encryption of the objects in the 
   customer bucket. When this parameter is not enabled, the result will 
   be encrypted server side,using SSE-S3.</p>")
    @as("KMSKeyId")
    kmskeyId: option<kmskeyId>,
    @ocaml.doc("<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will
   save the results internally to be accessed by the <code>GetExpenseAnalysis</code>
   operation.</p>")
    @as("OutputConfig")
    outputConfig: option<outputConfig>,
    @ocaml.doc("<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
   operation to. </p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>An identifier you specify that's included in the completion notification published
   to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
   document that the completion notification corresponds to (such as a tax form or a
   receipt).</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. 
   Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. 
   For more information, see <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>
         </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The location of the document to be processed.</p>") @as("DocumentLocation")
    documentLocation: documentLocation,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "StartExpenseAnalysisCommand"
  let make = (
    ~documentLocation,
    ~kmskeyId=?,
    ~outputConfig=?,
    ~notificationChannel=?,
    ~jobTag=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({kmskeyId, outputConfig, notificationChannel, jobTag, clientRequestToken, documentLocation})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartDocumentTextDetection = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS key used to encrypt the inference results. This can be 
         in either Key ID or Key Alias format. When a KMS key is provided, the 
         KMS key will be used for server-side encryption of the objects in the 
         customer bucket. When this parameter is not enabled, the result will 
         be encrypted server side,using SSE-S3.</p>")
    @as("KMSKeyId")
    kmskeyId: option<kmskeyId>,
    @ocaml.doc("<p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will
         save the results internally to be accessed with the GetDocumentTextDetection operation.</p>")
    @as("OutputConfig")
    outputConfig: option<outputConfig>,
    @ocaml.doc("<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
         operation to. </p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>An identifier that you specify that's included in the completion notification published
         to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
         document that the completion notification corresponds to (such as a tax form or a
         receipt).</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The idempotent token that's used to identify the start request. If you use the same
         token with multiple <code>StartDocumentTextDetection</code> requests, the same
            <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
         job from being accidentally started more than once. For more information, see
         <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The location of the document to be processed.</p>") @as("DocumentLocation")
    documentLocation: documentLocation,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the text detection job for the document. Use <code>JobId</code> to
         identify the job in a subsequent call to <code>GetDocumentTextDetection</code>.
         A <code>JobId</code> value is only valid for 7 days.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "StartDocumentTextDetectionCommand"
  let make = (
    ~documentLocation,
    ~kmskeyId=?,
    ~outputConfig=?,
    ~notificationChannel=?,
    ~jobTag=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({kmskeyId, outputConfig, notificationChannel, jobTag, clientRequestToken, documentLocation})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartDocumentAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS key used to encrypt the inference results. This can be 
         in either Key ID or Key Alias format. When a KMS key is provided, the 
         KMS key will be used for server-side encryption of the objects in the 
         customer bucket. When this parameter is not enabled, the result will 
         be encrypted server side,using SSE-S3.</p>")
    @as("KMSKeyId")
    kmskeyId: option<kmskeyId>,
    @ocaml.doc("<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
         the results internally to be accessed by the GetDocumentAnalysis operation.</p>")
    @as("OutputConfig")
    outputConfig: option<outputConfig>,
    @ocaml.doc("<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
         operation to. </p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>An identifier that you specify that's included in the completion notification published
         to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
         document that the completion notification corresponds to (such as a tax form or a
         receipt).</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The idempotent token that you use to identify the start request. If you use the same
         token with multiple <code>StartDocumentAnalysis</code> requests, the same
            <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
         job from being accidentally started more than once. For more information, see
         <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>A list of the types of analysis to perform. Add TABLES to the list to return information
         about the tables that are detected in the input document. Add FORMS to return detected
         form data. To perform both types of analysis, add TABLES
         and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
         included in the response (including text that isn't related to the value of
            <code>FeatureTypes</code>). </p>")
    @as("FeatureTypes")
    featureTypes: featureTypes,
    @ocaml.doc("<p>The location of the document to be processed.</p>") @as("DocumentLocation")
    documentLocation: documentLocation,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the document text detection job. Use <code>JobId</code> to identify
         the job in a subsequent call to <code>GetDocumentAnalysis</code>. A <code>JobId</code> value 
         is only valid for 7 days.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "StartDocumentAnalysisCommand"
  let make = (
    ~featureTypes,
    ~documentLocation,
    ~kmskeyId=?,
    ~outputConfig=?,
    ~notificationChannel=?,
    ~jobTag=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      kmskeyId,
      outputConfig,
      notificationChannel,
      jobTag,
      clientRequestToken,
      featureTypes,
      documentLocation,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDocumentTextDetection = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
         token in the response. You can use this pagination token to retrieve the next set of blocks.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can
         specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is
         returned. The default value is 1,000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
         <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("DetectDocumentTextModelVersion")
    detectDocumentTextModelVersion: option<string_>,
    @ocaml.doc(
      "<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>A list of warnings that occurred during the text-detection operation for the
         document.</p>")
    @as("Warnings")
    warnings: option<warnings>,
    @ocaml.doc("<p>The results of the text-detection operation.</p>") @as("Blocks")
    blocks: option<blockList>,
    @ocaml.doc("<p>If the response is truncated, Amazon Textract returns this token. You can use this token in
         the subsequent request to retrieve the next set of text-detection results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The current status of the text detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
         returned in every page of paginated responses from an Amazon Textract video operation.</p>")
    @as("DocumentMetadata")
    documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new
  external new: request => t = "GetDocumentTextDetectionCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDocumentAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
         token in the response. You can use this pagination token to retrieve the next set of blocks.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value that you
         can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results
         is returned. The default value is 1,000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from
         <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("AnalyzeDocumentModelVersion")
    analyzeDocumentModelVersion: option<string_>,
    @ocaml.doc(
      "<p>Returns if the detection job could not be completed. Contains explanation for what error occured.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>A list of warnings that occurred during the document-analysis operation.</p>")
    @as("Warnings")
    warnings: option<warnings>,
    @ocaml.doc("<p>The results of the text-analysis operation.</p>") @as("Blocks")
    blocks: option<blockList>,
    @ocaml.doc("<p>If the response is truncated, Amazon Textract returns this token. You can use this token in
         the subsequent request to retrieve the next set of text detection results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The current status of the text detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
         returned in every page of paginated responses from an Amazon Textract video operation.</p>")
    @as("DocumentMetadata")
    documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "GetDocumentAnalysisCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DetectDocumentText = {
  type t
  type request = {
    @ocaml.doc("<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
         to call Amazon Textract operations, you can't pass image bytes. The document must be an image 
      in JPEG or PNG format.</p>
         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
         image bytes that are passed using the <code>Bytes</code> field. </p>")
    @as("Document")
    document: document,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("DetectDocumentTextModelVersion")
    detectDocumentTextModelVersion: option<string_>,
    @ocaml.doc("<p>An array of <code>Block</code> objects that contain the text that's detected in the
         document.</p>")
    @as("Blocks")
    blocks: option<blockList>,
    @ocaml.doc("<p>Metadata about the document. It contains the number of pages that are detected in the
         document.</p>")
    @as("DocumentMetadata")
    documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "DetectDocumentTextCommand"
  let make = (~document, ()) => new({document: document})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AnalyzeDocument = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Sets the configuration for the human in the loop workflow for analyzing documents.</p>"
    )
    @as("HumanLoopConfig")
    humanLoopConfig: option<humanLoopConfig>,
    @ocaml.doc("<p>A list of the types of analysis to perform. Add TABLES to the list to return information
         about the tables that are detected in the input document. Add FORMS to return detected form data. 
         To perform both types of analysis, add TABLES and FORMS to
            <code>FeatureTypes</code>. All lines and words detected in the document are included in
         the response (including text that isn't related to the value of <code>FeatureTypes</code>). </p>")
    @as("FeatureTypes")
    featureTypes: featureTypes,
    @ocaml.doc("<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
         to call Amazon Textract operations, you can't pass image bytes. The document must be an image 
         in JPEG or PNG format.</p>
         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
         image bytes that are passed using the <code>Bytes</code> field. </p>")
    @as("Document")
    document: document,
  }
  type response = {
    @ocaml.doc("<p>The version of the model used to analyze the document.</p>")
    @as("AnalyzeDocumentModelVersion")
    analyzeDocumentModelVersion: option<string_>,
    @ocaml.doc("<p>Shows the results of the human in the loop evaluation.</p>")
    @as("HumanLoopActivationOutput")
    humanLoopActivationOutput: option<humanLoopActivationOutput>,
    @ocaml.doc("<p>The items that are detected and analyzed by <code>AnalyzeDocument</code>.</p>")
    @as("Blocks")
    blocks: option<blockList>,
    @ocaml.doc("<p>Metadata about the analyzed document. An example is the number of pages.</p>")
    @as("DocumentMetadata")
    documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "AnalyzeDocumentCommand"
  let make = (~featureTypes, ~document, ~humanLoopConfig=?, ()) =>
    new({humanLoopConfig, featureTypes, document})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AnalyzeID = {
  type t
  type request = {
    @ocaml.doc("<p>The document being passed to AnalyzeID.</p>") @as("DocumentPages")
    documentPages: documentPages,
  }
  type response = {
    @ocaml.doc("<p>The version of the AnalyzeIdentity API being used to process documents.</p>")
    @as("AnalyzeIDModelVersion")
    analyzeIDModelVersion: option<string_>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
    @ocaml.doc("<p>The list of documents processed by AnalyzeID. Includes a number denoting their
         place in the list and the response structure for the document.</p>")
    @as("IdentityDocuments")
    identityDocuments: option<identityDocumentList>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "AnalyzeIDCommand"
  let make = (~documentPages, ()) => new({documentPages: documentPages})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetExpenseAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
   token in the response. You can use this pagination token to retrieve the next set of blocks.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can
   specify is 20. If you specify a value greater than 20, a maximum of 20 results is
   returned. The default value is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The current model version of AnalyzeExpense.</p>")
    @as("AnalyzeExpenseModelVersion")
    analyzeExpenseModelVersion: option<string_>,
    @ocaml.doc(
      "<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>A list of warnings that occurred during the text-detection operation for the
   document.</p>")
    @as("Warnings")
    warnings: option<warnings>,
    @ocaml.doc("<p>The expenses detected by Amazon Textract.</p>") @as("ExpenseDocuments")
    expenseDocuments: option<expenseDocumentList>,
    @ocaml.doc("<p>If the response is truncated, Amazon Textract returns this token. You can use this token in
   the subsequent request to retrieve the next set of text-detection results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The current status of the text detection job.</p>") @as("JobStatus")
    jobStatus: option<jobStatus>,
    @ocaml.doc("<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
   returned in every page of paginated responses from an Amazon Textract operation.</p>")
    @as("DocumentMetadata")
    documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "GetExpenseAnalysisCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AnalyzeExpense = {
  type t
  type request = {@as("Document") document: document}
  type response = {
    @ocaml.doc("<p>The expenses detected by Amazon Textract.</p>") @as("ExpenseDocuments")
    expenseDocuments: option<expenseDocumentList>,
    @as("DocumentMetadata") documentMetadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-textract") @new external new: request => t = "AnalyzeExpenseCommand"
  let make = (~document, ()) => new({document: document})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
