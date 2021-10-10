type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rekognition") @new
external createClient: unit => awsServiceClient = "RekognitionClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type videoJobStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type versionName = string
type url = string
type ulong = float
type uinteger = int
type timestamp_ = float
type timecode = string
type textTypes = [@as("WORD") #WORD | @as("LINE") #LINE]
type technicalCueType = [
  | @as("BlackFrames") #BlackFrames
  | @as("EndCredits") #EndCredits
  | @as("ColorBars") #ColorBars
]
type tagValue = string
type tagKey = string
type synthesizedJsonHumanLoopActivationConditionsEvaluationResults = string
type string_ = string
type streamProcessorStatus = [
  | @as("STOPPING") #STOPPING
  | @as("FAILED") #FAILED
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("STOPPED") #STOPPED
]
type streamProcessorName = string
type streamProcessorArn = string
type statusMessage = string
type segmentType = [@as("SHOT") #SHOT | @as("TECHNICAL_CUE") #TECHNICAL_CUE]
type segmentConfidence = float
type snstopicArn = string
type s3ObjectVersion = string
type s3ObjectName = string
type s3KeyPrefix = string
type s3Bucket = string
type roleArn = string
type resourceArn = string
type rekognitionUniqueId = string
type reason = [
  | @as("LOW_FACE_QUALITY") #LOW_FACE_QUALITY
  | @as("SMALL_BOUNDING_BOX") #SMALL_BOUNDING_BOX
  | @as("LOW_CONFIDENCE") #LOW_CONFIDENCE
  | @as("LOW_SHARPNESS") #LOW_SHARPNESS
  | @as("LOW_BRIGHTNESS") #LOW_BRIGHTNESS
  | @as("EXTREME_POSE") #EXTREME_POSE
  | @as("EXCEEDS_MAX_FACES") #EXCEEDS_MAX_FACES
]
type qualityFilter = [
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("AUTO") #AUTO
  | @as("NONE") #NONE
]
type protectiveEquipmentType = [
  | @as("HEAD_COVER") #HEAD_COVER
  | @as("HAND_COVER") #HAND_COVER
  | @as("FACE_COVER") #FACE_COVER
]
type projectsPageSize = int
type projectVersionsPageSize = int
type projectVersionStatus = [
  | @as("DELETING") #DELETING
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("FAILED") #FAILED
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("TRAINING_FAILED") #TRAINING_FAILED
  | @as("TRAINING_COMPLETED") #TRAINING_COMPLETED
  | @as("TRAINING_IN_PROGRESS") #TRAINING_IN_PROGRESS
]
type projectVersionArn = string
type projectStatus = [
  | @as("DELETING") #DELETING
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type projectName = string
type projectArn = string
type personTrackingSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("INDEX") #INDEX]
type personIndex = float
type percent = float
type paginationToken = string
type pageSize = int
type orientationCorrection = [
  | @as("ROTATE_270") #ROTATE_270
  | @as("ROTATE_180") #ROTATE_180
  | @as("ROTATE_90") #ROTATE_90
  | @as("ROTATE_0") #ROTATE_0
]
type maxResults = int
type maxFacesToIndex = int
type maxFaces = int
type landmarkType = [
  | @as("upperJawlineRight") #UpperJawlineRight
  | @as("midJawlineRight") #MidJawlineRight
  | @as("chinBottom") #ChinBottom
  | @as("midJawlineLeft") #MidJawlineLeft
  | @as("upperJawlineLeft") #UpperJawlineLeft
  | @as("rightPupil") #RightPupil
  | @as("leftPupil") #LeftPupil
  | @as("mouthDown") #MouthDown
  | @as("mouthUp") #MouthUp
  | @as("noseRight") #NoseRight
  | @as("noseLeft") #NoseLeft
  | @as("rightEyeDown") #RightEyeDown
  | @as("rightEyeUp") #RightEyeUp
  | @as("rightEyeRight") #RightEyeRight
  | @as("rightEyeLeft") #RightEyeLeft
  | @as("leftEyeDown") #LeftEyeDown
  | @as("leftEyeUp") #LeftEyeUp
  | @as("leftEyeRight") #LeftEyeRight
  | @as("leftEyeLeft") #LeftEyeLeft
  | @as("rightEyeBrowUp") #RightEyeBrowUp
  | @as("rightEyeBrowRight") #RightEyeBrowRight
  | @as("rightEyeBrowLeft") #RightEyeBrowLeft
  | @as("leftEyeBrowUp") #LeftEyeBrowUp
  | @as("leftEyeBrowRight") #LeftEyeBrowRight
  | @as("leftEyeBrowLeft") #LeftEyeBrowLeft
  | @as("mouthRight") #MouthRight
  | @as("mouthLeft") #MouthLeft
  | @as("nose") #Nose
  | @as("eyeRight") #EyeRight
  | @as("eyeLeft") #EyeLeft
]
type labelDetectionSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("NAME") #NAME]
type kmsKeyId = string
type kinesisVideoArn = string
type kinesisDataArn = string
type jobTag = string
type jobId = string
type inferenceUnits = int
type imageId = string
type imageBlob = NodeJs.Buffer.t
type humanLoopName = string
type humanLoopArn = string
type humanLoopActivationReason = string
type genderType = [@as("Female") #Female | @as("Male") #Male]
type flowDefinitionArn = string
type float_ = float
type faceSearchSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("INDEX") #INDEX]
type faceId = string
type faceAttributes = [@as("ALL") #ALL | @as("DEFAULT") #DEFAULT]
type externalImageId = string
type extendedPaginationToken = string
type emotionName = [
  | @as("FEAR") #FEAR
  | @as("UNKNOWN") #UNKNOWN
  | @as("CALM") #CALM
  | @as("SURPRISED") #SURPRISED
  | @as("DISGUSTED") #DISGUSTED
  | @as("CONFUSED") #CONFUSED
  | @as("ANGRY") #ANGRY
  | @as("SAD") #SAD
  | @as("HAPPY") #HAPPY
]
type degree = float
type dateTime = Js.Date.t
type contentModerationSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("NAME") #NAME]
type contentClassifier = [
  | @as("FreeOfAdultContent") #FreeOfAdultContent
  | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation
]
type collectionId = string
type clientRequestToken = string
type celebrityRecognitionSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("ID") #ID]
type boundingBoxWidth = float
type boundingBoxHeight = float
type boolean_ = bool
type bodyPart = [
  | @as("RIGHT_HAND") #RIGHT_HAND
  | @as("LEFT_HAND") #LEFT_HAND
  | @as("HEAD") #HEAD
  | @as("FACE") #FACE
]
type attribute = [@as("ALL") #ALL | @as("DEFAULT") #DEFAULT]
@ocaml.doc("<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in
            every page of paginated responses from a Amazon Rekognition video operation.</p>")
type videoMetadata = {
  @ocaml.doc("<p>Horizontal pixel dimension of the video.</p>") @as("FrameWidth")
  frameWidth: option<ulong>,
  @ocaml.doc("<p>Vertical pixel dimension of the video.</p>") @as("FrameHeight")
  frameHeight: option<ulong>,
  @ocaml.doc("<p>Number of frames per second in the video.</p>") @as("FrameRate")
  frameRate: option<float_>,
  @ocaml.doc("<p>Format of the analyzed video. Possible values are MP4, MOV and AVI. </p>")
  @as("Format")
  format: option<string_>,
  @ocaml.doc("<p>Length of the video in milliseconds.</p>") @as("DurationMillis")
  durationMillis: option<ulong>,
  @ocaml.doc("<p>Type of compression used in the analyzed video. </p>") @as("Codec")
  codec: option<string_>,
}
type versionNames = array<versionName>
type urls = array<url>
@ocaml.doc(
  "<p>Information about a technical cue segment. For more information, see <a>SegmentDetection</a>.</p>"
)
type technicalCueSegment = {
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>"
  )
  @as("Confidence")
  confidence: option<segmentConfidence>,
  @ocaml.doc("<p>The type of the technical cue.</p>") @as("Type") type_: option<technicalCueType>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Indicates whether or not the face is wearing sunglasses, and the confidence level in
      the determination.</p>")
type sunglasses = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the face is wearing sunglasses or not.</p>")
  @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>An object that recognizes faces in a streaming video. An Amazon Rekognition stream processor is created by a call to <a>CreateStreamProcessor</a>.  The request
        parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts.

        </p>")
type streamProcessor = {
  @ocaml.doc("<p>Current status of the Amazon Rekognition stream processor.</p>") @as("Status")
  status: option<streamProcessorStatus>,
  @ocaml.doc("<p>Name of the Amazon Rekognition stream processor. </p>") @as("Name")
  name: option<streamProcessorName>,
}
@ocaml.doc("<p>Filters for the technical segments returned by <a>GetSegmentDetection</a>. For more information,
      see <a>StartSegmentDetectionFilters</a>.</p>")
type startTechnicalCueDetectionFilter = {
  @ocaml.doc("<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence
      represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.
      100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level
      lower than this specified value.</p>
         <p>If you don't specify <code>MinSegmentConfidence</code>, <code>GetSegmentDetection</code> returns 
      segments with confidence values greater than or equal to 50 percent.</p>")
  @as("MinSegmentConfidence")
  minSegmentConfidence: option<segmentConfidence>,
}
@ocaml.doc("<p>Filters for the shot detection segments returned by <code>GetSegmentDetection</code>. 
      For more information, see <a>StartSegmentDetectionFilters</a>.</p>")
type startShotDetectionFilter = {
  @ocaml.doc("<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence
      represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.
      100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level
      lower than this specified value.</p>
         <p>If you don't specify <code>MinSegmentConfidence</code>, the <code>GetSegmentDetection</code> returns 
        segments with confidence values greater than or equal to 50 percent.</p>")
  @as("MinSegmentConfidence")
  minSegmentConfidence: option<segmentConfidence>,
}
@ocaml.doc("<p>Indicates whether or not the face is smiling, and the confidence level in the
      determination.</p>")
type smile = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the face is smiling or not.</p>") @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>Information about a shot detection segment detected in a video. For more information, 
      see <a>SegmentDetection</a>.</p>")
type shotSegment = {
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>"
  )
  @as("Confidence")
  confidence: option<segmentConfidence>,
  @ocaml.doc("<p>An Identifier for a shot detection segment detected in a video. </p>") @as("Index")
  index: option<ulong>,
}
type segmentTypes = array<segmentType>
@ocaml.doc("<p>Information about the type of a segment requested in a call to <a>StartSegmentDetection</a>.
      An array of <code>SegmentTypeInfo</code> objects is returned  by the response from <a>GetSegmentDetection</a>.</p>")
type segmentTypeInfo = {
  @ocaml.doc("<p>The version of the model used to detect segments.</p>") @as("ModelVersion")
  modelVersion: option<string_>,
  @ocaml.doc("<p>The type of a segment (technical cue or shot detection).</p>") @as("Type")
  type_: option<segmentType>,
}
@ocaml.doc("<p>Provides the S3 bucket name and object name.</p>
         <p>The region for the S3 bucket containing the S3 object must match the region you use for
      Amazon Rekognition operations.</p>
      
         <p>For Amazon Rekognition to process an S3 object, the user must have permission to
      access the S3 object. For more information, see Resource-Based Policies in the Amazon Rekognition
      Developer Guide. </p>")
type s3Object = {
  @ocaml.doc("<p>If the bucket is versioning enabled, you can specify the object version. </p>")
  @as("Version")
  version: option<s3ObjectVersion>,
  @ocaml.doc("<p>S3 object key name.</p>") @as("Name") name: option<s3ObjectName>,
  @ocaml.doc("<p>Name of the S3 bucket.</p>") @as("Bucket") bucket: option<s3Bucket>,
}
type reasons = array<reason>
type protectiveEquipmentTypes = array<protectiveEquipmentType>
type protectiveEquipmentPersonIds = array<uinteger>
@ocaml.doc("<p>A description of a Amazon Rekognition Custom Labels project.</p>")
type projectDescription = {
  @ocaml.doc("<p>The current status of the project.</p>") @as("Status")
  status: option<projectStatus>,
  @ocaml.doc("<p>The Unix timestamp for the date and time that the project was created.</p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>") @as("ProjectArn")
  projectArn: option<projectArn>,
}
@ocaml.doc("<p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>")
type pose = {
  @ocaml.doc("<p>Value representing the face rotation on the pitch axis.</p>") @as("Pitch")
  pitch: option<degree>,
  @ocaml.doc("<p>Value representing the face rotation on the yaw axis.</p>") @as("Yaw")
  yaw: option<degree>,
  @ocaml.doc("<p>Value representing the face rotation on the roll axis.</p>") @as("Roll")
  roll: option<degree>,
}
@ocaml.doc("<p>The X and Y coordinates of a point on an image. The X and Y values returned are ratios
      of the overall image size. For example, if the input image is 700x200 and the 
      operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p>
      
         <p>An array of <code>Point</code> objects,
      <code>Polygon</code>, is returned by <a>DetectText</a> and by <a>DetectCustomLabels</a>. <code>Polygon</code>
      represents a fine-grained polygon around a detected item. For more information, see Geometry in the
      Amazon Rekognition Developer Guide. </p>")
type point = {
  @ocaml.doc("<p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>") @as("Y")
  y: option<float_>,
  @ocaml.doc("<p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>") @as("X")
  x: option<float_>,
}
@ocaml.doc("<p>A parent label for a label. A label can have 0, 1, or more parents. </p>")
type parent = {@ocaml.doc("<p>The name of the parent label.</p>") @as("Name") name: option<string_>}
@ocaml.doc("<p>The S3 bucket and folder location where training output is placed.</p>")
type outputConfig = {
  @ocaml.doc("<p>The prefix applied to the training output files. </p>") @as("S3KeyPrefix")
  s3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The S3 bucket where training output is placed.</p>") @as("S3Bucket")
  s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see
            <a>api-video</a>.</p>")
type notificationChannel = {
  @ocaml.doc(
    "<p>The ARN of an IAM role that gives Amazon Rekognition publishing permissions to the Amazon SNS topic. </p>"
  )
  @as("RoleArn")
  roleArn: roleArn,
  @ocaml.doc(
    "<p>The Amazon SNS topic to which Amazon Rekognition to posts the completion status.</p>"
  )
  @as("SNSTopicArn")
  snstopicArn: snstopicArn,
}
@ocaml.doc("<p>Indicates whether or not the face has a mustache, and the confidence level in the
      determination.</p>")
type mustache = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the face has mustache or not.</p>")
  @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>Indicates whether or not the mouth on the face is open, and the confidence level in the
      determination.</p>")
type mouthOpen = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the mouth on the face is open or not.</p>")
  @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>Provides information about a single type of unsafe content found in an image or video. Each type of
      moderated content has a label within a hierarchical taxonomy. For more information, see
      Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>")
type moderationLabel = {
  @ocaml.doc("<p>The name for the parent label. Labels at the top level of the hierarchy have the parent
      label <code>\"\"</code>.</p>")
  @as("ParentName")
  parentName: option<string_>,
  @ocaml.doc("<p>The label name for the type of unsafe content detected in the image.</p>")
  @as("Name")
  name: option<string_>,
  @ocaml.doc("<p>Specifies the confidence that Amazon Rekognition has that the label has been correctly
      identified.</p>
         <p>If you don't specify the <code>MinConfidence</code> parameter in the call to
        <code>DetectModerationLabels</code>, the operation returns labels with a confidence value
      greater than or equal to 50 percent.</p>")
  @as("Confidence")
  confidence: option<percent>,
}
@ocaml.doc("<p>Indicates the location of the landmark on the face.</p>")
type landmark = {
  @ocaml.doc("<p>The y-coordinate of the landmark expressed as a ratio of the height of the image. 
      The y-coordinate is measured from the top of the image.  
      For example, if the image height is 200 pixels and the y-coordinate of the landmark is at 50 pixels, this value is 0.25.</p>")
  @as("Y")
  y: option<float_>,
  @ocaml.doc("<p>The x-coordinate of the landmark expressed as a ratio of the width of the image. 
      The x-coordinate is measured from the left-side of the image. 
      For example, if the image is 700 pixels wide and the x-coordinate of the landmark is at 350 pixels, this value is 0.5. </p>")
  @as("X")
  x: option<float_>,
  @ocaml.doc("<p>Type of landmark.</p>") @as("Type") type_: option<landmarkType>,
}
@ocaml.doc("<p>Kinesis video stream stream that provides the source streaming video for a Amazon Rekognition Video stream processor. For more information, see
            CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>")
type kinesisVideoStream = {
  @ocaml.doc("<p>ARN of the Kinesis video stream stream that streams the source video.</p>")
  @as("Arn")
  arn: option<kinesisVideoArn>,
}
@ocaml.doc("<p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see
            CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>")
type kinesisDataStream = {
  @ocaml.doc("<p>ARN of the output Amazon Kinesis Data Streams stream.</p>") @as("Arn")
  arn: option<kinesisDataArn>,
}
@ocaml.doc("<p>Identifies face image brightness and sharpness. </p>")
type imageQuality = {
  @ocaml.doc("<p>Value representing sharpness of the face. The service returns a value between 0 and 100
      (inclusive). A higher value indicates a sharper face image.</p>")
  @as("Sharpness")
  sharpness: option<float_>,
  @ocaml.doc("<p>Value representing brightness of the face. The service returns a value between 0 and
      100 (inclusive). A higher value indicates a brighter face image.</p>")
  @as("Brightness")
  brightness: option<float_>,
}
type humanLoopActivationReasons = array<humanLoopActivationReason>
@ocaml.doc("<p>The predicted gender of a detected face. 
          </p>
 
    
         <p>Amazon Rekognition makes gender binary (male/female) predictions based on the physical appearance
      of a face in a particular image. This kind of prediction is not designed to categorize a person’s gender
      identity, and you shouldn't use Amazon Rekognition to make such a determination. For example, a male actor
      wearing a long-haired wig and earrings for a role might be predicted as female.</p>
    
         <p>Using Amazon Rekognition to make gender binary predictions is best suited for use cases where aggregate gender distribution statistics need to be 
      analyzed without identifying specific users. For example, the percentage of female users compared to male users on a social media platform. </p>
    
         <p>We don't recommend using gender binary predictions to make decisions that impact  an individual's rights, privacy, or access to services.</p>")
type gender = {
  @ocaml.doc("<p>Level of confidence in the prediction.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The predicted gender of the face.</p>") @as("Value") value: option<genderType>,
}
@ocaml.doc("<p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request
        parameter for <a>CreateStreamProcessor</a>.</p>")
type faceSearchSettings = {
  @ocaml.doc("<p>Minimum face match confidence score that must be met to return a result for a recognized face. Default is 80.
        0 is the lowest confidence. 100 is the highest confidence.</p>")
  @as("FaceMatchThreshold")
  faceMatchThreshold: option<percent>,
  @ocaml.doc("<p>The ID of a collection that contains faces that you want to search for.</p>")
  @as("CollectionId")
  collectionId: option<collectionId>,
}
type faceModelVersionList = array<string_>
type faceIdList = array<faceId>
@ocaml.doc("<p>Indicates whether or not the face is wearing eye glasses, and the confidence level in
      the determination.</p>")
type eyeglasses = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the face is wearing eye glasses or not.</p>")
  @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>Indicates whether or not the eyes on the face are open, and the confidence level in the
      determination.</p>")
type eyeOpen = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the eyes on the face are open.</p>")
  @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>The emotions that appear to be expressed on the face, and the confidence level in the determination. 
      The API is only making a determination of the physical appearance of a person's face. It is not a determination
      of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have
      a sad face might not be sad emotionally.</p>")
type emotion = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Type of emotion detected.</p>") @as("Type") type_: option<emotionName>,
}
@ocaml.doc(
  "<p>A set of parameters that allow you to filter out certain results from your returned results.</p>"
)
type detectionFilter = {
  @ocaml.doc("<p>Sets the minimum width of the word bounding box. Words with bounding boxes widths lesser than 
      this value will be excluded from the result. Value is relative to the video frame width.</p>")
  @as("MinBoundingBoxWidth")
  minBoundingBoxWidth: option<boundingBoxWidth>,
  @ocaml.doc("<p>Sets the minimum height of the word bounding box. Words with bounding box heights lesser than 
      this value will be excluded from the result. Value is relative to the video frame height.</p>")
  @as("MinBoundingBoxHeight")
  minBoundingBoxHeight: option<boundingBoxHeight>,
  @ocaml.doc("<p>Sets the confidence of word detection. Words with detection confidence below this will be excluded 
      from the result. Values should be between 50 and 100 as Text in Video will not return any result below 
      50.</p>")
  @as("MinConfidence")
  minConfidence: option<percent>,
}
@ocaml.doc("<p>Information about an item of Personal Protective Equipment covering a corresponding body part. For more 
         information, see <a>DetectProtectiveEquipment</a>.</p>")
type coversBodyPart = {
  @ocaml.doc("<p>True if the PPE covers the corresponding body part, otherwise false.</p>")
  @as("Value")
  value: option<boolean_>,
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition has in the value of <code>Value</code>.</p>"
  )
  @as("Confidence")
  confidence: option<percent>,
}
type contentClassifiers = array<contentClassifier>
type collectionIdList = array<collectionId>
@ocaml.doc("<p>Identifies the bounding box around the label, face, text or personal protective equipment.
      The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and
      left sides of the bounding box. Note that the upper-left corner of the image is the origin
      (0,0). </p>
         <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall
      image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of
      the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700)
      and a <code>top</code> value of 0.25 (50/200).</p>
         <p>The <code>width</code> and <code>height</code> values represent the dimensions of the
      bounding box as a ratio of the overall image dimension. For example, if the input image is
      700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p>
         <note>
            <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is
        able to detect a face that is at the image edge and is only partially visible, the service
        can return coordinates that are outside the image bounds and, depending on the image edge,
        you might get negative values or values greater than 1 for the <code>left</code> or
          <code>top</code> values. </p>
         </note>")
type boundingBox = {
  @ocaml.doc("<p>Top coordinate of the bounding box as a ratio of overall image height.</p>")
  @as("Top")
  top: option<float_>,
  @ocaml.doc("<p>Left coordinate of the bounding box as a ratio of overall image width.</p>")
  @as("Left")
  left: option<float_>,
  @ocaml.doc("<p>Height of the bounding box as a ratio of the overall image height.</p>")
  @as("Height")
  height: option<float_>,
  @ocaml.doc("<p>Width of the bounding box as a ratio of the overall image width.</p>") @as("Width")
  width: option<float_>,
}
@ocaml.doc("<p>Indicates whether or not the face has a beard, and the confidence level in the
      determination.</p>")
type beard = {
  @ocaml.doc("<p>Level of confidence in the determination.</p>") @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Boolean value that indicates whether the face has beard or not.</p>") @as("Value")
  value: option<boolean_>,
}
@ocaml.doc("<p>Metadata information about an audio stream. An array of <code>AudioMetadata</code> objects
      for the audio streams found in a stored video is returned by <a>GetSegmentDetection</a>. </p>")
type audioMetadata = {
  @ocaml.doc("<p>The number of audio channels in the segment.</p>") @as("NumberOfChannels")
  numberOfChannels: option<ulong>,
  @ocaml.doc("<p>The sample rate for the audio stream.</p>") @as("SampleRate")
  sampleRate: option<ulong>,
  @ocaml.doc("<p>The duration of the audio stream in milliseconds.</p>") @as("DurationMillis")
  durationMillis: option<ulong>,
  @ocaml.doc("<p>The audio codec used to encode or decode the audio stream. </p>") @as("Codec")
  codec: option<string_>,
}
type attributes = array<attribute>
@ocaml.doc("<p>Structure containing the estimated age range, in years, for a face.</p>
         <p>Amazon Rekognition estimates an age range for faces detected in the input image. Estimated age
      ranges can overlap. A face of a 5-year-old might have an estimated range of 4-6, while the
      face of a 6-year-old might have an estimated range of 4-8.</p>")
type ageRange = {
  @ocaml.doc("<p>The highest estimated age.</p>") @as("High") high: option<uinteger>,
  @ocaml.doc("<p>The lowest estimated age.</p>") @as("Low") low: option<uinteger>,
}
type videoMetadataList = array<videoMetadata>
@ocaml.doc("<p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
            specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>")
type video = {
  @ocaml.doc("<p>The Amazon S3 bucket name and file name for the video.</p>") @as("S3Object")
  s3Object: option<s3Object>,
}
@ocaml.doc("<p>The S3 bucket that contains the training summary. The training summary includes
         aggregated evaluation metrics for the entire testing dataset and metrics for each 
         individual label.  </p>
         <p>You get the training summary S3 bucket location by calling <a>DescribeProjectVersions</a>.
         </p>")
type summary = {@as("S3Object") s3Object: option<s3Object>}
@ocaml.doc(
  "<p>Input parameters used to recognize faces in a streaming video analyzed by a Amazon Rekognition stream processor.</p>"
)
type streamProcessorSettings = {
  @ocaml.doc("<p>Face search settings to use on a streaming video. </p>") @as("FaceSearch")
  faceSearch: option<faceSearchSettings>,
}
@ocaml.doc("<p>Information about the Amazon Kinesis Data Streams stream to which a Amazon Rekognition Video stream processor streams the results of a video analysis. For more
           information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>")
type streamProcessorOutput = {
  @ocaml.doc(
    "<p>The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results.</p>"
  )
  @as("KinesisDataStream")
  kinesisDataStream: option<kinesisDataStream>,
}
type streamProcessorList = array<streamProcessor>
@ocaml.doc("<p>Information about the source streaming video. </p>")
type streamProcessorInput = {
  @ocaml.doc("<p>The Kinesis video stream input stream for the source streaming video.</p>")
  @as("KinesisVideoStream")
  kinesisVideoStream: option<kinesisVideoStream>,
}
@ocaml.doc("<p>Filters applied to the technical cue or shot detection segments. 
      For more information, see <a>StartSegmentDetection</a>.
    </p>")
type startSegmentDetectionFilters = {
  @ocaml.doc("<p>Filters that are specific to shot detections.</p>") @as("ShotFilter")
  shotFilter: option<startShotDetectionFilter>,
  @ocaml.doc("<p>Filters that are specific to technical cues.</p>") @as("TechnicalCueFilter")
  technicalCueFilter: option<startTechnicalCueDetectionFilter>,
}
type segmentTypesInfo = array<segmentTypeInfo>
@ocaml.doc("<p>A technical cue or shot detection segment detected in a video. An array
    of <code>SegmentDetection</code> objects containing all segments detected in a stored video
      is returned by <a>GetSegmentDetection</a>.
    </p>")
type segmentDetection = {
  @ocaml.doc(
    "<p>If the segment is a shot detection, contains information about the shot detection.</p>"
  )
  @as("ShotSegment")
  shotSegment: option<shotSegment>,
  @ocaml.doc(
    "<p>If the segment is a technical cue, contains information about the technical cue.</p>"
  )
  @as("TechnicalCueSegment")
  technicalCueSegment: option<technicalCueSegment>,
  @ocaml.doc("<p>The duration of the timecode for the detected segment in SMPTE format.</p>")
  @as("DurationSMPTE")
  durationSMPTE: option<timecode>,
  @ocaml.doc("<p>The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment. 
      <code>EndTimecode</code> is in <i>HH:MM:SS:fr</i> format
      (and <i>;fr</i> for drop frame-rates).</p>")
  @as("EndTimecodeSMPTE")
  endTimecodeSMPTE: option<timecode>,
  @ocaml.doc("<p>The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment.
      <code>StartTimecode</code> is in <i>HH:MM:SS:fr</i> format
      (and <i>;fr</i> for drop frame-rates). </p>")
  @as("StartTimecodeSMPTE")
  startTimecodeSMPTE: option<timecode>,
  @ocaml.doc("<p>The duration of the detected segment in milliseconds. </p>") @as("DurationMillis")
  durationMillis: option<ulong>,
  @ocaml.doc("<p>The end time of the detected segment, in milliseconds, from the start of the video.
    This value is rounded down.</p>")
  @as("EndTimestampMillis")
  endTimestampMillis: option<timestamp_>,
  @ocaml.doc("<p>The start time of the detected segment in milliseconds from the start of the video. This value
      is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of
      100 millis.</p>")
  @as("StartTimestampMillis")
  startTimestampMillis: option<timestamp_>,
  @ocaml.doc(
    "<p>The type of the  segment. Valid values are <code>TECHNICAL_CUE</code> and <code>SHOT</code>.</p>"
  )
  @as("Type")
  type_: option<segmentType>,
}
@ocaml.doc("<p>Specifies a location within the frame that Rekognition checks for text. Uses a <code>BoundingBox</code>
      object to set a region of the screen.</p>
         <p>A word is included in the region if the word is more than half in that region. If there is more than
      one region, the word will be compared with all regions of the screen. Any word more than half in a region
      is kept in the results.</p>")
type regionOfInterest = {
  @ocaml.doc("<p>The box representing a region of interest on screen.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
@ocaml.doc("<p>Summary information for required items of personal protective equipment (PPE) detected on persons by a call
         to <a>DetectProtectiveEquipment</a>. You specify the required type of PPE in
         the <code>SummarizationAttributes</code>
         (<a>ProtectiveEquipmentSummarizationAttributes</a>) input parameter.
         The summary includes which persons were detected wearing the required personal protective equipment
         (<code>PersonsWithRequiredEquipment</code>),
         which persons were detected as not wearing the required PPE (<code>PersonsWithoutRequiredEquipment</code>), 
         and the persons in which a determination
         could not be made (<code>PersonsIndeterminate</code>).</p>
         <p>To get a total for each category, use the size of the field array. For example, 
         to find out how many people were detected as wearing the specified PPE,
         use the size of the <code>PersonsWithRequiredEquipment</code> array.  
         If you want to find out more about a person, such as the 
         location (<a>BoundingBox</a>) of the person on the image, use the person ID in each array element. 
         Each person ID matches the ID field of a <a>ProtectiveEquipmentPerson</a> object returned
         in the <code>Persons</code> array by <code>DetectProtectiveEquipment</code>.</p>")
type protectiveEquipmentSummary = {
  @ocaml.doc("<p>An array of IDs for persons where it was not possible to determine if they are wearing personal protective equipment.
      </p>")
  @as("PersonsIndeterminate")
  personsIndeterminate: option<protectiveEquipmentPersonIds>,
  @ocaml.doc("<p>An array of IDs for persons who are not wearing all of the types of PPE specified in the <code>RequiredEquipmentTypes</code> field of
         the detected personal protective equipment.
      </p>")
  @as("PersonsWithoutRequiredEquipment")
  personsWithoutRequiredEquipment: option<protectiveEquipmentPersonIds>,
  @ocaml.doc("<p>An array of IDs for persons who are wearing detected personal protective equipment.
      </p>")
  @as("PersonsWithRequiredEquipment")
  personsWithRequiredEquipment: option<protectiveEquipmentPersonIds>,
}
@ocaml.doc("<p>Specifies summary attributes to return from a call to <a>DetectProtectiveEquipment</a>.
         You can specify which types of PPE to summarize. You can also specify a minimum confidence value for detections.
         Summary information is returned in the <code>Summary</code> (<a>ProtectiveEquipmentSummary</a>) field of the response from 
         <code>DetectProtectiveEquipment</code>.
         The summary includes which persons in an image were detected wearing the requested types of person protective equipment (PPE), which persons
         were detected as not wearing PPE, and the persons in which a determination could not be made. For more information, 
         see <a>ProtectiveEquipmentSummary</a>.</p>")
type protectiveEquipmentSummarizationAttributes = {
  @ocaml.doc("<p>An array of personal protective equipment types for which you want summary information. 
         If a person is detected wearing a required requipment type, the person's ID is added to the
         <code>PersonsWithRequiredEquipment</code> array field returned in <a>ProtectiveEquipmentSummary</a>
         by <code>DetectProtectiveEquipment</code>.  </p>")
  @as("RequiredEquipmentTypes")
  requiredEquipmentTypes: protectiveEquipmentTypes,
  @ocaml.doc("<p>The minimum confidence level for which you want summary information. 
         The confidence level applies to person detection, body part detection, equipment detection, and body part coverage.
         Amazon Rekognition doesn't return summary information with a confidence than this specified value. There isn't a
         default value.</p>
         <p>Specify a <code>MinConfidence</code> value that is between 50-100% as <code>DetectProtectiveEquipment</code>
         returns predictions only where the detection confidence is between 50% - 100%.  
         If you specify a value that is less than 50%, the results are the same specifying a value of 50%.</p>
         <p> 
      </p>")
  @as("MinConfidence")
  minConfidence: percent,
}
type projectDescriptions = array<projectDescription>
type polygon = array<point>
type parents = array<parent>
type moderationLabels = array<moderationLabel>
type landmarks = array<landmark>
@ocaml.doc("<p>An instance of a label returned by Amazon Rekognition Image (<a>DetectLabels</a>)
      or by Amazon Rekognition Video (<a>GetLabelDetection</a>).</p>")
type instance = {
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition has in the accuracy of the bounding box.</p>"
  )
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The position of the label instance on the image.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
@ocaml.doc("<p>Provides the input image either as bytes or an S3 object.</p>
         <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code>
      property. For example, you would use the <code>Bytes</code> property to pass an image loaded
      from a local file system. Image bytes passed by using the <code>Bytes</code> property must be
      base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to
      call Amazon Rekognition API operations. </p>
      
         <p>For more information, see Analyzing an Image Loaded from a Local File System 
      in the Amazon Rekognition Developer Guide.</p>
         <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the
        <code>S3Object</code> property. Images stored in an S3 bucket do not need to be
      base64-encoded.</p>
         <p>The region for the S3 bucket containing the S3 object must match the region you use for
      Amazon Rekognition operations.</p>
         <p>If you use the
      AWS
      CLI to call Amazon Rekognition operations, passing image bytes using the Bytes
      property is not supported. You must first upload the image to an Amazon S3 bucket and then
      call the operation using the S3Object property.</p>
      
         <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3
      object. For more information, see Resource Based Policies in the Amazon Rekognition Developer Guide.
    </p>")
type image = {
  @ocaml.doc("<p>Identifies an S3 object as the image source.</p>") @as("S3Object")
  s3Object: option<s3Object>,
  @ocaml.doc("<p>Blob of image bytes up to 5 MBs.</p>") @as("Bytes") bytes: option<imageBlob>,
}
@ocaml.doc("<p>Allows you to set attributes of the image. Currently, you can declare an image as free of
      personally identifiable information.</p>")
type humanLoopDataAttributes = {
  @ocaml.doc("<p>Sets whether the input image is free of personally identifiable information.</p>")
  @as("ContentClassifiers")
  contentClassifiers: option<contentClassifiers>,
}
@ocaml.doc("<p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the input did 
       not trigger human review.</p>")
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
@ocaml.doc("<p>The S3 bucket that contains an Amazon Sagemaker Ground Truth format manifest file. 
</p>")
type groundTruthManifest = {@as("S3Object") s3Object: option<s3Object>}
@ocaml.doc("<p>Describes the face properties such as the bounding box, face ID, image ID of the input
      image, and external image ID that you assigned. </p>")
type face = {
  @ocaml.doc("<p>Confidence level that the bounding box contains a face (and not a different object such
      as a tree).</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Identifier that you assign to all the faces in the input image.</p>")
  @as("ExternalImageId")
  externalImageId: option<externalImageId>,
  @ocaml.doc("<p>Unique identifier that Amazon Rekognition assigns to the input image.</p>")
  @as("ImageId")
  imageId: option<imageId>,
  @ocaml.doc("<p>Bounding box of the face.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
  @ocaml.doc("<p>Unique identifier that Amazon Rekognition assigns to the face.</p>") @as("FaceId")
  faceId: option<faceId>,
}
@ocaml.doc("<p>Information about an item of Personal Protective Equipment (PPE) detected by
         <a>DetectProtectiveEquipment</a>. For more 
         information, see <a>DetectProtectiveEquipment</a>.</p>")
type equipmentDetection = {
  @ocaml.doc("<p>Information about the body part covered by the detected PPE.</p>")
  @as("CoversBodyPart")
  coversBodyPart: option<coversBodyPart>,
  @ocaml.doc("<p>The type of detected PPE.</p>") @as("Type") type_: option<protectiveEquipmentType>,
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition has that the bounding box (<code>BoundingBox</code>) contains an item of PPE.</p>"
  )
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>A bounding box surrounding the item of detected PPE.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
type emotions = array<emotion>
@ocaml.doc("<p>Information about an unsafe content label detection in a stored video.</p>")
type contentModerationDetection = {
  @ocaml.doc("<p>The unsafe content label detected by in the stored video.</p>")
  @as("ModerationLabel")
  moderationLabel: option<moderationLabel>,
  @ocaml.doc(
    "<p>Time, in milliseconds from the beginning of the video, that the unsafe content label was detected.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
@ocaml.doc("<p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target.
      This contains a bounding box for the selected face and confidence level that the bounding box
      contains a face. Note that Amazon Rekognition selects the largest face in the source image for this
      comparison. </p>")
type comparedSourceImageFace = {
  @ocaml.doc("<p>Confidence level that the selected bounding box contains a face.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Bounding box of the face.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
type audioMetadataList = array<audioMetadata>
type segmentDetections = array<segmentDetection>
type regionsOfInterest = array<regionOfInterest>
type instances = array<instance>
@ocaml.doc("<p>Sets up the flow definition the image will be sent to if one of the conditions is met. 
      You can also set certain attributes of the image before review.</p>")
type humanLoopConfig = {
  @ocaml.doc("<p>Sets attributes of the input data.</p>") @as("DataAttributes")
  dataAttributes: option<humanLoopDataAttributes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the flow definition. You can create a flow definition by using the Amazon Sagemaker
      <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateFlowDefinition.html\">CreateFlowDefinition</a>
     Operation. </p>")
  @as("FlowDefinitionArn")
  flowDefinitionArn: flowDefinitionArn,
  @ocaml.doc(
    "<p>The name of the human review used for this image. This should be kept unique within a region.</p>"
  )
  @as("HumanLoopName")
  humanLoopName: humanLoopName,
}
@ocaml.doc("<p>Information about where an object (<a>DetectCustomLabels</a>) or text (<a>DetectText</a>) is located on
      an image.</p>")
type geometry = {
  @ocaml.doc("<p>Within the bounding box, a fine-grained polygon around the detected item.</p>")
  @as("Polygon")
  polygon: option<polygon>,
  @ocaml.doc("<p>An axis-aligned coarse representation of the detected item's location on the
      image.</p>")
  @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
@ocaml.doc("<p>Provides face metadata. In addition, it also provides the confidence in the match of
      this face with the input face.</p>")
type faceMatch = {
  @ocaml.doc("<p>Describes the face properties such as the bounding box, face ID, image ID of the source
      image, and external image ID that you assigned.</p>")
  @as("Face")
  face: option<face>,
  @ocaml.doc("<p>Confidence in the match of this face with the input face.</p>") @as("Similarity")
  similarity: option<percent>,
}
type faceList = array<face>
@ocaml.doc("<p>Structure containing attributes of the face that the algorithm detected.</p>
         <p>A <code>FaceDetail</code> object contains either the default facial attributes or all facial attributes. 
      The default attributes are <code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>.</p>
         <p>
            <a>GetFaceDetection</a> is the only Amazon Rekognition Video stored video operation that can return a <code>FaceDetail</code> object with all attributes. 
      To specify which attributes to return, use the <code>FaceAttributes</code> input parameter for <a>StartFaceDetection</a>.
      The following Amazon Rekognition Video operations return only the default attributes. The corresponding Start operations
        don't have a <code>FaceAttributes</code> input parameter.</p> 
         <ul>
            <li>
               <p>GetCelebrityRecognition</p>
            </li>
            <li>
               <p>GetPersonTracking</p>
            </li>
            <li>
               <p>GetFaceSearch</p>
            </li>
         </ul>
         <p>The Amazon Rekognition Image <a>DetectFaces</a> and <a>IndexFaces</a> operations
      can return all facial attributes. To specify which attributes to return, use the 
      <code>Attributes</code> input parameter for <code>DetectFaces</code>. For <code>IndexFaces</code>, use the
      <code>DetectAttributes</code> input parameter.</p>")
type faceDetail = {
  @ocaml.doc("<p>Confidence level that the bounding box contains a face (and not a different object such
      as a tree). Default attribute.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Identifies image brightness and sharpness. Default attribute.</p>") @as("Quality")
  quality: option<imageQuality>,
  @ocaml.doc(
    "<p>Indicates the pose of the face as determined by its pitch, roll, and yaw. Default attribute.</p>"
  )
  @as("Pose")
  pose: option<pose>,
  @ocaml.doc("<p>Indicates the location of landmarks on the face. Default attribute.</p>")
  @as("Landmarks")
  landmarks: option<landmarks>,
  @ocaml.doc("<p>The emotions that appear to be expressed on the face, and the confidence level in the determination. 
      The API is only making a determination of the physical appearance of a person's face. It is not a determination
      of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have
      a sad face might not be sad emotionally.</p>")
  @as("Emotions")
  emotions: option<emotions>,
  @ocaml.doc("<p>Indicates whether or not the mouth on the face is open, and the confidence level in the
      determination.</p>")
  @as("MouthOpen")
  mouthOpen: option<mouthOpen>,
  @ocaml.doc("<p>Indicates whether or not the eyes on the face are open, and the confidence level in the
      determination.</p>")
  @as("EyesOpen")
  eyesOpen: option<eyeOpen>,
  @ocaml.doc("<p>Indicates whether or not the face has a mustache, and the confidence level in the
      determination.</p>")
  @as("Mustache")
  mustache: option<mustache>,
  @ocaml.doc("<p>Indicates whether or not the face has a beard, and the confidence level in the
      determination.</p>")
  @as("Beard")
  beard: option<beard>,
  @ocaml.doc("<p>The predicted gender of a detected face.
    </p>")
  @as("Gender")
  gender: option<gender>,
  @ocaml.doc("<p>Indicates whether or not the face is wearing sunglasses, and the confidence level in
      the determination.</p>")
  @as("Sunglasses")
  sunglasses: option<sunglasses>,
  @ocaml.doc("<p>Indicates whether or not the face is wearing eye glasses, and the confidence level in
      the determination.</p>")
  @as("Eyeglasses")
  eyeglasses: option<eyeglasses>,
  @ocaml.doc("<p>Indicates whether or not the face is smiling, and the confidence level in the
      determination.</p>")
  @as("Smile")
  smile: option<smile>,
  @ocaml.doc("<p>The estimated age range, in years, for the face. Low represents the lowest estimated
      age and High represents the highest estimated age.</p>")
  @as("AgeRange")
  ageRange: option<ageRange>,
  @ocaml.doc("<p>Bounding box of the face. Default attribute.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
@ocaml.doc("<p>The evaluation results for the training of a model.</p>")
type evaluationResult = {
  @ocaml.doc("<p>The S3 bucket that contains the training summary.</p>") @as("Summary")
  summary: option<summary>,
  @ocaml.doc("<p>The F1 score for the evaluation of all labels. The F1 score metric evaluates the overall precision
         and recall performance of the model as a single value. A higher value indicates better precision
         and recall performance. A lower score indicates that precision, recall, or both are performing poorly.
         
  </p>")
  @as("F1Score")
  f1Score: option<float_>,
}
type equipmentDetections = array<equipmentDetection>
type contentModerationDetections = array<contentModerationDetection>
@ocaml.doc("<p>Provides face metadata for target image faces that are analyzed by
        <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>")
type comparedFace = {
  @ocaml.doc("<p>Identifies face image brightness and sharpness. </p>") @as("Quality")
  quality: option<imageQuality>,
  @ocaml.doc("<p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>")
  @as("Pose")
  pose: option<pose>,
  @ocaml.doc("<p>An array of facial landmarks.</p>") @as("Landmarks") landmarks: option<landmarks>,
  @ocaml.doc("<p>Level of confidence that what the bounding box contains is a face.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>Bounding box of the face.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
}
@ocaml.doc("<p>Assets are the images that you use to train and evaluate a model version. 
         Assets can also contain validation information that you use to debug a failed model training.
         </p>")
type asset = {@as("GroundTruthManifest") groundTruthManifest: option<groundTruthManifest>}
@ocaml.doc("<p>A face that <a>IndexFaces</a> detected, but didn't index. Use the
        <code>Reasons</code> response attribute to determine why a face wasn't indexed.</p>")
type unindexedFace = {
  @ocaml.doc("<p>The
      structure that contains attributes of a face that
      <code>IndexFaces</code>detected, but didn't index. </p>")
  @as("FaceDetail")
  faceDetail: option<faceDetail>,
  @ocaml.doc("<p>An array of reasons that specify why a face wasn't indexed. </p>
         <ul>
            <li>
               <p>EXTREME_POSE - The face is at a pose that can't be detected. For example, the head is turned
          too far away from the camera.</p>
            </li>
            <li>
               <p>EXCEEDS_MAX_FACES - The number of faces detected is already higher than that specified by the 
      <code>MaxFaces</code> input parameter for <code>IndexFaces</code>.</p>
            </li>
            <li>
               <p>LOW_BRIGHTNESS - The image is too dark.</p>
            </li>
            <li>
               <p>LOW_SHARPNESS - The image is too blurry.</p>
            </li>
            <li>
               <p>LOW_CONFIDENCE - The face was detected with a low confidence.</p>
            </li>
            <li>
               <p>SMALL_BOUNDING_BOX - The bounding box around the face is too small.</p>
            </li>
         </ul>")
  @as("Reasons")
  reasons: option<reasons>,
}
@ocaml.doc("<p>Information about a word or line of text detected by <a>DetectText</a>.</p>
         <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the
      image. </p>
         <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line
      and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which
      the word appears. The word <code>Id</code> is also an index for the word within a line of
      words. </p>
      
         <p>For more information, see Detecting Text in the Amazon Rekognition Developer Guide.</p>")
type textDetection = {
  @ocaml.doc("<p>The location of the detected text on the image. Includes an axis aligned coarse
      bounding box surrounding the text and a finer grain polygon for more accurate spatial
      information.</p>")
  @as("Geometry")
  geometry: option<geometry>,
  @ocaml.doc("<p>The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy
      of the geometry points around the detected text.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The Parent identifier for the detected text identified by the value of <code>ID</code>.
      If the type of detected text is <code>LINE</code>, the value of <code>ParentId</code> is
        <code>Null</code>. </p>")
  @as("ParentId")
  parentId: option<uinteger>,
  @ocaml.doc("<p>The identifier for the detected text. The identifier is only unique for a single call
      to <code>DetectText</code>. </p>")
  @as("Id")
  id: option<uinteger>,
  @ocaml.doc("<p>The type of text that was detected.</p>") @as("Type") type_: option<textTypes>,
  @ocaml.doc("<p>The word or line of text recognized by Amazon Rekognition. </p>")
  @as("DetectedText")
  detectedText: option<string_>,
}
@ocaml.doc("<p>Set of optional parameters that let you set the criteria text must meet to be included in your response. 
      <code>WordFilter</code> looks at a word's height, width and minimum confidence. <code>RegionOfInterest</code>
      lets you set a specific region of the screen to look for text in.</p>")
type startTextDetectionFilters = {
  @ocaml.doc("<p>Filter focusing on a certain area of the frame. Uses a <code>BoundingBox</code> object to set the region
      of the screen.</p>")
  @as("RegionsOfInterest")
  regionsOfInterest: option<regionsOfInterest>,
  @ocaml.doc("<p>Filters focusing on qualities of the text, such as confidence or size.</p>")
  @as("WordFilter")
  wordFilter: option<detectionFilter>,
}
@ocaml.doc("<p>Information about a body part detected by <a>DetectProtectiveEquipment</a> that contains PPE.
         An array of <code>ProtectiveEquipmentBodyPart</code> objects is returned for each person detected by 
         <code>DetectProtectiveEquipment</code>. </p>")
type protectiveEquipmentBodyPart = {
  @ocaml.doc("<p>An array of Personal Protective Equipment items detected around a body part.</p>")
  @as("EquipmentDetections")
  equipmentDetections: option<equipmentDetections>,
  @ocaml.doc("<p>The confidence that Amazon Rekognition has in the detection accuracy of the detected body part.
      </p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The detected body part.</p>") @as("Name") name: option<bodyPart>,
}
@ocaml.doc("<p>Details about a person detected in a video analysis request.</p>")
type personDetail = {
  @ocaml.doc("<p>Face details for the detected person.</p>") @as("Face") face: option<faceDetail>,
  @ocaml.doc("<p>Bounding box around the detected person.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
  @ocaml.doc(
    "<p>Identifier for the person detected person within a video. Use to keep track of the person throughout the video. The identifier is not stored by Amazon Rekognition.</p>"
  )
  @as("Index")
  index: option<personIndex>,
}
@ocaml.doc("<p>Structure containing details about the detected label, including the name, detected instances, parent labels, and level of
      confidence.</p>
         <p>
    </p>")
type label = {
  @ocaml.doc("<p>The parent labels for a label. The response includes all ancestor labels.</p>")
  @as("Parents")
  parents: option<parents>,
  @ocaml.doc("<p>If <code>Label</code> represents an object, <code>Instances</code> contains the bounding boxes for each instance of the detected object.
      Bounding boxes are returned for common object labels such as people, cars, furniture, apparel or pets.</p>")
  @as("Instances")
  instances: option<instances>,
  @ocaml.doc("<p>Level of confidence.</p>") @as("Confidence") confidence: option<percent>,
  @ocaml.doc("<p>The name (label) of the object or scene.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Object containing both the face metadata (stored in the backend database), and facial
      attributes that are detected but aren't stored in the database.</p>")
type faceRecord = {
  @ocaml.doc("<p>Structure containing attributes of the face that the algorithm detected.</p>")
  @as("FaceDetail")
  faceDetail: option<faceDetail>,
  @ocaml.doc("<p>Describes the face properties such as the bounding box, face ID, image ID of the input
      image, and external image ID that you assigned. </p>")
  @as("Face")
  face: option<face>,
}
type faceMatchList = array<faceMatch>
@ocaml.doc(
  "<p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>"
)
type faceDetection = {
  @ocaml.doc("<p>The face properties for the detected face.</p>") @as("Face")
  face: option<faceDetail>,
  @ocaml.doc(
    "<p>Time, in milliseconds from the start of the video, that the face was detected.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type faceDetailList = array<faceDetail>
@ocaml.doc("<p>A set of optional parameters that you can use to set the criteria that the text must meet to be included in your response. 
      <code>WordFilter</code> looks at a word’s height, width, and minimum confidence. <code>RegionOfInterest</code>
      lets you set a specific region of the image to look for text in.
      </p>")
type detectTextFilters = {
  @ocaml.doc("<p> A Filter focusing on a certain area of the image. Uses a <code>BoundingBox</code> object to set the region
      of the image.</p>")
  @as("RegionsOfInterest")
  regionsOfInterest: option<regionsOfInterest>,
  @as("WordFilter") wordFilter: option<detectionFilter>,
}
@ocaml.doc("<p>A custom label detected in an image by a call to <a>DetectCustomLabels</a>.</p>")
type customLabel = {
  @ocaml.doc("<p>The location of the detected object on the image that corresponds to the custom label. 
         Includes an axis aligned coarse bounding box surrounding the object and a finer grain polygon
         for more accurate spatial information.</p>")
  @as("Geometry")
  geometry: option<geometry>,
  @ocaml.doc("<p>The confidence that the model has in the detection of the custom label. The 
      range is 0-100. A higher value indicates a higher confidence.</p>")
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The name of the custom label.</p>") @as("Name") name: option<string_>,
}
type comparedFaceList = array<comparedFace>
type compareFacesUnmatchList = array<comparedFace>
@ocaml.doc("<p>Provides information about a face in a target image that matches the source image face
      analyzed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding
      box of the face in the target image. The <code>Similarity</code> property is the confidence
      that the source image face matches the face in the bounding box.</p>")
type compareFacesMatch = {
  @ocaml.doc("<p>Provides face metadata (bounding box and confidence that the bounding box actually
      contains a face).</p>")
  @as("Face")
  face: option<comparedFace>,
  @ocaml.doc("<p>Level of confidence that the faces match.</p>") @as("Similarity")
  similarity: option<percent>,
}
@ocaml.doc("<p>Information about a recognized celebrity.</p>")
type celebrityDetail = {
  @ocaml.doc("<p>Face details for the recognized celebrity.</p>") @as("Face")
  face: option<faceDetail>,
  @ocaml.doc("<p>Bounding box around the body of a celebrity.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
  @ocaml.doc(
    "<p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. </p>"
  )
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>The unique identifier for the celebrity. </p>") @as("Id")
  id: option<rekognitionUniqueId>,
  @ocaml.doc("<p>The name of the celebrity.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>An array of URLs pointing to additional celebrity information. </p>") @as("Urls")
  urls: option<urls>,
}
@ocaml.doc(
  "<p>Provides information about a celebrity recognized by the <a>RecognizeCelebrities</a> operation.</p>"
)
type celebrity = {
  @ocaml.doc("<p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the
      celebrity.</p>")
  @as("MatchConfidence")
  matchConfidence: option<percent>,
  @ocaml.doc("<p>Provides information about the celebrity's face, such as its location on the
      image.</p>")
  @as("Face")
  face: option<comparedFace>,
  @ocaml.doc("<p>A unique identifier for the celebrity. </p>") @as("Id")
  id: option<rekognitionUniqueId>,
  @ocaml.doc("<p>The name of the celebrity.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>An array of URLs pointing to additional information about the celebrity. If there is no
      additional information about the celebrity, this list is empty.</p>")
  @as("Urls")
  urls: option<urls>,
}
type assets = array<asset>
@ocaml.doc("<p>Contains the Amazon S3 bucket location of the validation data for a model training job. </p>
      
         <p>The validation data includes error information for individual 
         JSON lines in the dataset.             
            For more information, see Debugging a Failed Model Training in the
            Amazon Rekognition Custom Labels Developer Guide. </p>
         <p>You get the <code>ValidationData</code> object for the training dataset (<a>TrainingDataResult</a>)
         and the test dataset (<a>TestingDataResult</a>) by calling <a>DescribeProjectVersions</a>. </p>
         <p>The assets array contains a single <a>Asset</a> object. 
         The <a>GroundTruthManifest</a> field of the Asset object contains the S3 bucket location of
         the validation data. 
</p>")
type validationData = {
  @ocaml.doc("<p>The assets that comprise the validation data. </p>") @as("Assets")
  assets: option<assets>,
}
type unindexedFaces = array<unindexedFace>
@ocaml.doc("<p>The dataset used for training.</p>")
type trainingData = {
  @ocaml.doc(
    "<p>A Sagemaker GroundTruth manifest file that contains the training images (assets).</p>"
  )
  @as("Assets")
  assets: option<assets>,
}
@ocaml.doc("<p>Information about text detected in a video. Incudes the detected text, 
        the time in milliseconds from the start of the video that the text was detected, and where it was detected on the screen.</p>")
type textDetectionResult = {
  @ocaml.doc("<p>Details about text detected in a video.</p>") @as("TextDetection")
  textDetection: option<textDetection>,
  @ocaml.doc(
    "<p>The time, in milliseconds from the start of the video, that the text was detected.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type textDetectionList = array<textDetection>
@ocaml.doc("<p>The dataset used for testing. Optionally, if <code>AutoCreate</code> is set,  Amazon Rekognition Custom Labels creates a 
         testing dataset using an 80/20 split of the training dataset.</p>")
type testingData = {
  @ocaml.doc(
    "<p>If specified, Amazon Rekognition Custom Labels creates a testing dataset with an 80/20 split of the training dataset.</p>"
  )
  @as("AutoCreate")
  autoCreate: option<boolean_>,
  @ocaml.doc("<p>The assets used for testing.</p>") @as("Assets") assets: option<assets>,
}
@ocaml.doc("<p>Information about a person whose face matches a face(s) in an Amazon Rekognition collection.
      Includes information about the faces in the Amazon Rekognition collection (<a>FaceMatch</a>), information about the person (<a>PersonDetail</a>),
      and the time stamp for when the person was detected in a video. An array of
        <code>PersonMatch</code> objects is returned by <a>GetFaceSearch</a>. </p>")
type personMatch = {
  @ocaml.doc(
    "<p>Information about the faces in the input collection that match the face of a person in the video.</p>"
  )
  @as("FaceMatches")
  faceMatches: option<faceMatchList>,
  @ocaml.doc("<p>Information about the matched person.</p>") @as("Person")
  person: option<personDetail>,
  @ocaml.doc(
    "<p>The time, in milliseconds from the beginning of the video, that the person was matched in the video.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
@ocaml.doc("<p>Details and path tracking information for a single time a person's path is tracked in a video.
            Amazon Rekognition operations that track people's paths return an array of <code>PersonDetection</code> objects
            with elements for each time a person's path is tracked in a video. </p>
      
         <p>For more information, see GetPersonTracking in the Amazon Rekognition Developer Guide. </p>")
type personDetection = {
  @ocaml.doc("<p>Details about a person whose path was tracked in a video.</p>") @as("Person")
  person: option<personDetail>,
  @ocaml.doc(
    "<p>The time, in milliseconds from the start of the video, that the person's path was tracked.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type labels = array<label>
@ocaml.doc(
  "<p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>"
)
type labelDetection = {
  @ocaml.doc("<p>Details about the detected label.</p>") @as("Label") label: option<label>,
  @ocaml.doc(
    "<p>Time, in milliseconds from the start of the video, that the label was detected.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type faceRecordList = array<faceRecord>
type faceDetections = array<faceDetection>
type customLabels = array<customLabel>
type compareFacesMatchList = array<compareFacesMatch>
@ocaml.doc("<p>Information about a detected celebrity and the time the celebrity was detected in a stored video.
        For more information, see GetCelebrityRecognition in the Amazon Rekognition Developer Guide.</p>")
type celebrityRecognition = {
  @ocaml.doc("<p>Information about a recognized celebrity.</p>") @as("Celebrity")
  celebrity: option<celebrityDetail>,
  @ocaml.doc(
    "<p>The time, in milliseconds from the start of the video, that the celebrity was recognized.</p>"
  )
  @as("Timestamp")
  timestamp_: option<timestamp_>,
}
type celebrityList = array<celebrity>
type bodyParts = array<protectiveEquipmentBodyPart>
@ocaml.doc(
  "<p>Sagemaker Groundtruth format manifest files for the input, output and validation datasets that are used and created during testing.</p>"
)
type trainingDataResult = {
  @ocaml.doc(
    "<p>The location of the data validation manifest. The data validation manifest is created for the training dataset during model training.</p>"
  )
  @as("Validation")
  validation: option<validationData>,
  @ocaml.doc(
    "<p>The images (assets) that were actually trained by Amazon Rekognition Custom Labels. </p>"
  )
  @as("Output")
  output: option<trainingData>,
  @ocaml.doc("<p>The training assets that you supplied for training.</p>") @as("Input")
  input: option<trainingData>,
}
type textDetectionResults = array<textDetectionResult>
@ocaml.doc(
  "<p>Sagemaker Groundtruth format manifest files for the input, output and validation datasets that are used and created during testing.</p>"
)
type testingDataResult = {
  @ocaml.doc(
    "<p>The location of the data validation manifest. The data validation manifest is created for the test dataset during model training.</p>"
  )
  @as("Validation")
  validation: option<validationData>,
  @ocaml.doc("<p>The subset of the dataset that was actually tested. Some images (assets) might not be tested due to 
         file formatting and other issues. </p>")
  @as("Output")
  output: option<testingData>,
  @ocaml.doc("<p>The testing dataset that was supplied for training.</p>") @as("Input")
  input: option<testingData>,
}
@ocaml.doc("<p>A person detected by a call to <a>DetectProtectiveEquipment</a>. The API returns 
         all persons detected in the input
         image in an array of <code>ProtectiveEquipmentPerson</code> objects.</p>")
type protectiveEquipmentPerson = {
  @ocaml.doc("<p>The identifier for the detected person. The identifier is only unique for a single call to
         <code>DetectProtectiveEquipment</code>.</p>")
  @as("Id")
  id: option<uinteger>,
  @ocaml.doc(
    "<p>The confidence that Amazon Rekognition has that the bounding box contains a person.</p>"
  )
  @as("Confidence")
  confidence: option<percent>,
  @ocaml.doc("<p>A bounding box around the detected person.</p>") @as("BoundingBox")
  boundingBox: option<boundingBox>,
  @ocaml.doc(
    "<p>An array of body parts detected on a person's body (including body parts without PPE). </p>"
  )
  @as("BodyParts")
  bodyParts: option<bodyParts>,
}
type personMatches = array<personMatch>
type personDetections = array<personDetection>
type labelDetections = array<labelDetection>
type celebrityRecognitions = array<celebrityRecognition>
type protectiveEquipmentPersons = array<protectiveEquipmentPerson>
@ocaml.doc("<p>The description of a version of a model.</p>")
type projectVersionDescription = {
  @ocaml.doc(
    "<p>The identifer for the AWS Key Management Service (AWS KMS) customer master key that was used to encrypt the model during training. </p>"
  )
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The location of the summary manifest. The summary manifest provides aggregate data validation results for the training
         and test datasets.</p>")
  @as("ManifestSummary")
  manifestSummary: option<groundTruthManifest>,
  @ocaml.doc(
    "<p>The training results. <code>EvaluationResult</code> is only returned if training is successful.</p>"
  )
  @as("EvaluationResult")
  evaluationResult: option<evaluationResult>,
  @ocaml.doc("<p>Contains information about the testing results.</p>") @as("TestingDataResult")
  testingDataResult: option<testingDataResult>,
  @ocaml.doc("<p>Contains information about the training results.</p>") @as("TrainingDataResult")
  trainingDataResult: option<trainingDataResult>,
  @ocaml.doc("<p>The location where training results are saved.</p>") @as("OutputConfig")
  outputConfig: option<outputConfig>,
  @ocaml.doc("<p>The Unix date and time that training of the model ended.</p>")
  @as("TrainingEndTimestamp")
  trainingEndTimestamp: option<dateTime>,
  @ocaml.doc("<p>The duration, in seconds, that the model version has been billed for training. 
      This value is only returned if the model version has been successfully trained.</p>")
  @as("BillableTrainingTimeInSeconds")
  billableTrainingTimeInSeconds: option<ulong>,
  @ocaml.doc("<p>A descriptive message for an error or warning that occurred.</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The current status of the model version.</p>") @as("Status")
  status: option<projectVersionStatus>,
  @ocaml.doc("<p>The minimum number of inference units used by the model. For more information,
      see <a>StartProjectVersion</a>.</p>")
  @as("MinInferenceUnits")
  minInferenceUnits: option<inferenceUnits>,
  @ocaml.doc("<p>The Unix datetime for the date and time that training started.</p>")
  @as("CreationTimestamp")
  creationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model version. </p>")
  @as("ProjectVersionArn")
  projectVersionArn: option<projectVersionArn>,
}
type projectVersionDescriptions = array<projectVersionDescription>
@ocaml.doc("<p>This is the Amazon Rekognition API reference.</p>")
module StopStreamProcessor = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a stream processor created by <a>CreateStreamProcessor</a>.</p>")
    @as("Name")
    name: streamProcessorName,
  }

  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StopStreamProcessorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopProjectVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>
         <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>")
    @as("ProjectVersionArn")
    projectVersionArn: projectVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The current status of the stop operation. </p>") @as("Status")
    status: option<projectVersionStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StopProjectVersionCommand"
  let make = (~projectVersionArn, ()) => new({projectVersionArn: projectVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartStreamProcessor = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stream processor to start processing.</p>") @as("Name")
    name: streamProcessorName,
  }

  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartStreamProcessorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartProjectVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The minimum number of inference units to use. A single
      inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS).
      Use a higher number to increase the TPS throughput of your model. You are charged for the number
      of inference units that you use.
    </p>")
    @as("MinInferenceUnits")
    minInferenceUnits: inferenceUnits,
    @ocaml.doc("<p>The Amazon Resource Name(ARN) of the model version that you want to start.</p>")
    @as("ProjectVersionArn")
    projectVersionArn: projectVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The current running status of the model. </p>") @as("Status")
    status: option<projectVersionStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartProjectVersionCommand"
  let make = (~minInferenceUnits, ~projectVersionArn, ()) =>
    new({minInferenceUnits: minInferenceUnits, projectVersionArn: projectVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCollection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the collection to describe.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc("<p>The number of milliseconds since the Unix epoch time until the creation of the collection.
         The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.</p>")
    @as("CreationTimestamp")
    creationTimestamp: option<dateTime>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the collection.</p>") @as("CollectionARN")
    collectionARN: option<string_>,
    @ocaml.doc("<p>The version of the face model that's used by the collection for face detection.</p>
      
         <p>For more information, see Model Versioning in the 
     Amazon Rekognition Developer Guide.</p>")
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>The number of faces that are indexed into the collection. To index faces into a
         collection, use <a>IndexFaces</a>.</p>")
    @as("FaceCount")
    faceCount: option<ulong>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DescribeCollectionCommand"
  let make = (~collectionId, ()) => new({collectionId: collectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStreamProcessor = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the stream processor you want to delete.</p>") @as("Name")
    name: streamProcessorName,
  }

  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DeleteStreamProcessorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProjectVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>"
    )
    @as("ProjectVersionArn")
    projectVersionArn: projectVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The status of the deletion operation.</p>") @as("Status")
    status: option<projectVersionStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DeleteProjectVersionCommand"
  let make = (~projectVersionArn, ()) => new({projectVersionArn: projectVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project that you want to delete.</p>")
    @as("ProjectArn")
    projectArn: projectArn,
  }
  type response = {
    @ocaml.doc("<p>The current status of the delete project operation.</p>") @as("Status")
    status: option<projectStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DeleteProjectCommand"
  let make = (~projectArn, ()) => new({projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCollection = {
  type t
  type request = {
    @ocaml.doc("<p>ID of the collection to delete.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc("<p>HTTP status code that indicates the result of the operation.</p>")
    @as("StatusCode")
    statusCode: option<uinteger>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DeleteCollectionCommand"
  let make = (~collectionId, ()) => new({collectionId: collectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the project to create.</p>") @as("ProjectName")
    projectName: projectName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new project. You can use the ARN to 
      configure IAM access to the project. </p>")
    @as("ProjectArn")
    projectArn: option<projectArn>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "CreateProjectCommand"
  let make = (~projectName, ()) => new({projectName: projectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of the tags that you want to remove.
    </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
      Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to remove the tags from.
    </p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-rekognition") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
      The key-value tags to assign to the resource.
    </p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>
      Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to assign the tags to.
    </p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-rekognition") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
      Amazon Resource Name (ARN) of the model, collection, or stream processor that contains the tags that you want a list of.
    </p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>
      A list of key-value tags assigned to the resource.
    </p>")
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCollections = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of collection IDs to return. </p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>Pagination token from the previous response.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>Version numbers of the face detection models associated with the collections in the array <code>CollectionIds</code>.
    For example, the value of <code>FaceModelVersions[2]</code> is the version number for the face detection model used
      by the collection in <code>CollectionId[2]</code>.</p>")
    @as("FaceModelVersions")
    faceModelVersions: option<faceModelVersionList>,
    @ocaml.doc("<p>If the result is truncated, the response provides a <code>NextToken</code> that you can
      use in the subsequent request to fetch the next set of collection IDs.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of collection IDs.</p>") @as("CollectionIds")
    collectionIds: option<collectionIdList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "ListCollectionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCelebrityInfo = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation,
   which recognizes celebrities in an image. </p>")
    @as("Id")
    id: rekognitionUniqueId,
  }
  type response = {
    @ocaml.doc("<p>The name of the celebrity.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>An array of URLs pointing to additional celebrity information. </p>") @as("Urls")
    urls: option<urls>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "GetCelebrityInfoCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFaces = {
  type t
  type request = {
    @ocaml.doc("<p>An array of face IDs to delete.</p>") @as("FaceIds") faceIds: faceIdList,
    @ocaml.doc("<p>Collection from which to remove the specific faces.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc("<p>An array of strings (face IDs) of the faces that were deleted.</p>")
    @as("DeletedFaces")
    deletedFaces: option<faceIdList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DeleteFacesCommand"
  let make = (~faceIds, ~collectionId, ()) => new({faceIds: faceIds, collectionId: collectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCollection = {
  type t
  type request = {
    @ocaml.doc("<p>
      A set of tags (key-value pairs) that you want to attach to the collection.
    </p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>ID for the collection that you are creating.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>Version number of the face detection model associated with the collection you are creating.</p>"
    )
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on
      your resources. </p>")
    @as("CollectionArn")
    collectionArn: option<string_>,
    @ocaml.doc("<p>HTTP status code indicating the result of the operation.</p>") @as("StatusCode")
    statusCode: option<uinteger>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "CreateCollectionCommand"
  let make = (~collectionId, ~tags=?, ()) => new({tags: tags, collectionId: collectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSegmentDetection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.</p>"
    )
    @as("SegmentTypes")
    segmentTypes: segmentTypes,
    @ocaml.doc("<p>Filters for technical cue or shot detection.</p>") @as("Filters")
    filters: option<startSegmentDetectionFilters>,
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
      segment detection operation.</p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartSegmentDetection</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @as("Video") video: video,
  }
  type response = {
    @ocaml.doc("<p>Unique identifier for the segment detection job. The <code>JobId</code> is returned from <code>StartSegmentDetection</code>.
    </p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartSegmentDetectionCommand"
  let make = (
    ~segmentTypes,
    ~video,
    ~filters=?,
    ~jobTag=?,
    ~notificationChannel=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      segmentTypes: segmentTypes,
      filters: filters,
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartPersonTracking = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection
        operation to.</p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The video in which you want to detect people. The video must be stored
      in an Amazon S3 bucket.</p>")
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the person detection job. Use <code>JobId</code> to identify the job in
    a subsequent call to <code>GetPersonTracking</code>.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartPersonTrackingCommand"
  let make = (~video, ~jobTag=?, ~notificationChannel=?, ~clientRequestToken=?, ()) =>
    new({
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartLabelDetection = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection
        operation to. </p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence
       represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence.
       100 is the highest confidence.  Amazon Rekognition Video doesn't return any labels with a confidence level
       lower than this specified value.</p>
         <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with confidence
     values greater than or equal to 50 percent.</p>")
    @as("MinConfidence")
    minConfidence: option<percent>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The video in which you want to detect labels. The video must be stored
      in an Amazon S3 bucket.</p>")
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the label detection job. Use <code>JobId</code> to identify the job in
    a subsequent call to <code>GetLabelDetection</code>. </p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartLabelDetectionCommand"
  let make = (
    ~video,
    ~jobTag=?,
    ~notificationChannel=?,
    ~minConfidence=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      minConfidence: minConfidence,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFaceSearch = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc(
      "<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. </p>"
    )
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>ID of the collection that contains the faces you want to search for.</p>")
    @as("CollectionId")
    collectionId: collectionId,
    @ocaml.doc("<p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.
      The default value is 80%.</p>")
    @as("FaceMatchThreshold")
    faceMatchThreshold: option<percent>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>"
    )
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc(
      "<p>The identifier for the search job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetFaceSearch</code>. </p>"
    )
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "StartFaceSearchCommand"
  let make = (
    ~collectionId,
    ~video,
    ~jobTag=?,
    ~notificationChannel=?,
    ~faceMatchThreshold=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      collectionId: collectionId,
      faceMatchThreshold: faceMatchThreshold,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFaceDetection = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The face attributes you want returned.</p>
         <p>
            <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p>
         <p>
            <code>ALL</code> - All facial attributes are returned.</p>")
    @as("FaceAttributes")
    faceAttributes: option<faceAttributes>,
    @ocaml.doc("<p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
         face detection operation.</p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The video in which you want to detect faces. The video must be stored
      in an Amazon S3 bucket.</p>")
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the face detection job. Use <code>JobId</code> to identify the job in
    a subsequent call to <code>GetFaceDetection</code>.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartFaceDetectionCommand"
  let make = (
    ~video,
    ~jobTag=?,
    ~faceAttributes=?,
    ~notificationChannel=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      jobTag: jobTag,
      faceAttributes: faceAttributes,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartContentModeration = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
      unsafe content analysis to.</p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
      <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence
      represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence.
      100 is the highest confidence.  Amazon Rekognition doesn't return any moderated content labels with a confidence level
      lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code>
       returns labels with confidence values greater than or equal to 50 percent.</p>")
    @as("MinConfidence")
    minConfidence: option<percent>,
    @ocaml.doc("<p>The video in which you want to detect unsafe content. The video must be stored
      in an Amazon S3 bucket.</p>")
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the unsafe content analysis job. Use <code>JobId</code> to identify the job in
      a subsequent call to <code>GetContentModeration</code>.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartContentModerationCommand"
  let make = (
    ~video,
    ~jobTag=?,
    ~notificationChannel=?,
    ~clientRequestToken=?,
    ~minConfidence=?,
    (),
  ) =>
    new({
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      minConfidence: minConfidence,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCelebrityRecognition = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
      For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @ocaml.doc("<p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
      celebrity recognition analysis to.</p>")
    @as("NotificationChannel")
    notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple
    <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use
      <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The video in which you want to recognize celebrities. The video must be stored
      in an Amazon S3 bucket.</p>")
    @as("Video")
    video: video,
  }
  type response = {
    @ocaml.doc("<p>The identifier for the celebrity recognition analysis job. Use <code>JobId</code> to identify the job in
      a subsequent call to <code>GetCelebrityRecognition</code>.</p>")
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartCelebrityRecognitionCommand"
  let make = (~video, ~jobTag=?, ~notificationChannel=?, ~clientRequestToken=?, ()) =>
    new({
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamProcessors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video
            returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>List of stream processors that you have created.</p>") @as("StreamProcessors")
    streamProcessors: option<streamProcessorList>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
            request to retrieve the next set of stream processors. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "ListStreamProcessorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStreamProcessor = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the stream processor for which you want information.</p>") @as("Name")
    name: streamProcessorName,
  }
  type response = {
    @ocaml.doc("<p>Face recognition input parameters that are being used by the stream processor.
            Includes the collection to use for face recognition and the face
            attributes to detect.</p>")
    @as("Settings")
    settings: option<streamProcessorSettings>,
    @ocaml.doc("<p>ARN of the IAM role that allows access to the stream processor.</p>")
    @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc(
      "<p>Kinesis data stream to which Amazon Rekognition Video puts the analysis results.</p>"
    )
    @as("Output")
    output: option<streamProcessorOutput>,
    @ocaml.doc("<p>Kinesis video stream that provides the source streaming video.</p>") @as("Input")
    input: option<streamProcessorInput>,
    @ocaml.doc("<p>The time, in Unix format, the stream processor was last updated. For example, when the stream
        processor moves from a running state to a failed state, or when the user starts or stops the stream processor.</p>")
    @as("LastUpdateTimestamp")
    lastUpdateTimestamp: option<dateTime>,
    @ocaml.doc("<p>Date and time the stream processor was created</p>") @as("CreationTimestamp")
    creationTimestamp: option<dateTime>,
    @ocaml.doc("<p>Detailed status message about the stream processor.</p>") @as("StatusMessage")
    statusMessage: option<string_>,
    @ocaml.doc("<p>Current status of the stream processor.</p>") @as("Status")
    status: option<streamProcessorStatus>,
    @ocaml.doc("<p>ARN of the stream processor.</p>") @as("StreamProcessorArn")
    streamProcessorArn: option<streamProcessorArn>,
    @ocaml.doc("<p>Name of the stream processor. </p>") @as("Name")
    name: option<streamProcessorName>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DescribeStreamProcessorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
         If you specify a value greater than 100, a ValidationException
         error occurs. The default value is 100. </p>")
    @as("MaxResults")
    maxResults: option<projectsPageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more
         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination 
         token to retrieve the next set of results. </p>")
    @as("NextToken")
    nextToken: option<extendedPaginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous response was incomplete (because there is more
         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. 
         You can use this pagination token to retrieve the next set of results. </p>")
    @as("NextToken")
    nextToken: option<extendedPaginationToken>,
    @ocaml.doc(
      "<p>A list of project descriptions. The list is sorted by the date and time the projects are created.</p>"
    )
    @as("ProjectDescriptions")
    projectDescriptions: option<projectDescriptions>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DescribeProjectsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamProcessor = {
  type t
  type request = {
    @ocaml.doc("<p>
      A set of tags (key-value pairs) that you want to attach to the stream processor.
    </p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>ARN of the IAM role that allows access to the stream processor.</p>")
    @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>Face recognition input parameters to be used by the stream processor. Includes the collection to use for face recognition and the face
        attributes to detect.</p>")
    @as("Settings")
    settings: streamProcessorSettings,
    @ocaml.doc("<p>An identifier you assign to the stream processor. You can use <code>Name</code> to
            manage the stream processor. For example, you can get the current status of the stream processor by calling <a>DescribeStreamProcessor</a>.
             <code>Name</code> is idempotent.
       </p>")
    @as("Name")
    name: streamProcessorName,
    @ocaml.doc(
      "<p>Kinesis data stream stream to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>.</p>"
    )
    @as("Output")
    output: streamProcessorOutput,
    @ocaml.doc(
      "<p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>.</p>"
    )
    @as("Input")
    input: streamProcessorInput,
  }
  type response = {
    @ocaml.doc("<p>ARN for the newly create stream processor.</p>") @as("StreamProcessorArn")
    streamProcessorArn: option<streamProcessorArn>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "CreateStreamProcessorCommand"
  let make = (~roleArn, ~settings, ~name, ~output, ~input, ~tags=?, ()) =>
    new({
      tags: tags,
      roleArn: roleArn,
      settings: settings,
      name: name,
      output: output,
      input: input,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFaces = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of faces to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve),
      Amazon Rekognition returns a pagination token in the response. You can use this pagination token to
      retrieve the next set of faces.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>ID of the collection from which to list the faces.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>"
    )
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition returns this token that you can use in the
      subsequent request to retrieve the next set of faces.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of <code>Face</code> objects. </p>") @as("Faces")
    faces: option<faceList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "ListFacesCommand"
  let make = (~collectionId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, collectionId: collectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSegmentDetection = {
  type t
  type request = {
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent 
      request to retrieve the next set of text.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Job identifier for the text detection operation for which you want results returned. 
      You get the job identifer from an initial call to <code>StartSegmentDetection</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An array containing the segment types requested in the call to <code>StartSegmentDetection</code>.
    </p>")
    @as("SelectedSegmentTypes")
    selectedSegmentTypes: option<segmentTypesInfo>,
    @ocaml.doc("<p>An array of segments detected in a video.  The array is sorted by the segment types (TECHNICAL_CUE or SHOT) 
      specified in the <code>SegmentTypes</code> input parameter of <code>StartSegmentDetection</code>. Within
      each segment type the array is sorted by timestamp values.</p>")
    @as("Segments")
    segments: option<segmentDetections>,
    @ocaml.doc("<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns 
      a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of 
       objects. There can be multiple audio streams. 
      Each <code>AudioMetadata</code> object contains metadata for a single audio stream.
      Audio information in an <code>AudioMetadata</code> objects includes 
      the audio codec, the number of audio channels, the duration of the audio stream,
      and the sample rate. Audio metadata is returned in each page of information returned
      by <code>GetSegmentDetection</code>.</p>")
    @as("AudioMetadata")
    audioMetadata: option<audioMetadataList>,
    @ocaml.doc("<p>Currently, Amazon Rekognition Video returns a single   object in the
      <code>VideoMetadata</code> array. The object
      contains information about the video stream in the input file that Amazon Rekognition Video chose to analyze.  
      The <code>VideoMetadata</code> object includes the video codec, video format and other information.
      Video metadata is returned in each page of information returned by <code>GetSegmentDetection</code>.</p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadataList>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>Current status of the segment detection job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "GetSegmentDetectionCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContentModeration = {
  type t
  type request = {
    @ocaml.doc("<p>Sort to use for elements in the <code>ModerationLabelDetections</code> array.
       Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
       Use <code>NAME</code> to alphabetically group elements for a label together.
       Within each label group, the array element are sorted by detection confidence.
       The default sort is by <code>TIMESTAMP</code>.</p>")
    @as("SortBy")
    sortBy: option<contentModerationSortBy>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition
        returns a pagination token in the response. You can use this pagination token
        to retrieve the next set of unsafe content labels.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    If you specify a value greater than 1000, a maximum of 1000 results is returned.
    The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The identifier for the unsafe content job. Use <code>JobId</code> to identify the job in
       a subsequent call to <code>GetContentModeration</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc(
      "<p>Version number of the moderation detection model that was used to detect unsafe content.</p>"
    )
    @as("ModerationModelVersion")
    moderationModelVersion: option<string_>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
     request to retrieve the next set of unsafe content labels. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The detected unsafe content labels and the time(s) they were detected.</p>")
    @as("ModerationLabels")
    moderationLabels: option<contentModerationDetections>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code>
     is returned in every page of paginated responses from <code>GetContentModeration</code>. </p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the unsafe content analysis job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "GetContentModerationCommand"
  let make = (~jobId, ~sortBy=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortBy: sortBy, nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectModerationLabels = {
  type t
  type request = {
    @ocaml.doc("<p>Sets up the configuration for human evaluation, including the FlowDefinition
      the image will be sent to.</p>")
    @as("HumanLoopConfig")
    humanLoopConfig: option<humanLoopConfig>,
    @ocaml.doc("<p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
      return any labels with a confidence level lower than this specified value.</p>
         <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with
      confidence values greater than or equal to 50 percent.</p>")
    @as("MinConfidence")
    minConfidence: option<percent>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object.
      If you use the AWS CLI to call Amazon Rekognition operations,
      passing base64-encoded image bytes is not supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>Shows the results of the human in the loop evaluation.</p>")
    @as("HumanLoopActivationOutput")
    humanLoopActivationOutput: option<humanLoopActivationOutput>,
    @ocaml.doc(
      "<p>Version number of the moderation detection model that was used to detect unsafe content.</p>"
    )
    @as("ModerationModelVersion")
    moderationModelVersion: option<string_>,
    @ocaml.doc("<p>Array of detected Moderation labels and the time, in milliseconds from the
      start of the video, they were detected.</p>")
    @as("ModerationLabels")
    moderationLabels: option<moderationLabels>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DetectModerationLabelsCommand"
  let make = (~image, ~humanLoopConfig=?, ~minConfidence=?, ()) =>
    new({humanLoopConfig: humanLoopConfig, minConfidence: minConfidence, image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTextDetection = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Optional parameters that let you set criteria the text must meet to be included in your response.</p>"
    )
    @as("Filters")
    filters: option<startTextDetectionFilters>,
    @ocaml.doc("<p>An identifier returned in the completion status published by your Amazon Simple Notification Service topic.  For example, you can use <code>JobTag</code> to group related jobs
      and identify them in the completion notification.</p>")
    @as("JobTag")
    jobTag: option<jobTag>,
    @as("NotificationChannel") notificationChannel: option<notificationChannel>,
    @ocaml.doc("<p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartTextDetection</code>
      requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job 
        from being accidentaly started more than once.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @as("Video") video: video,
  }
  type response = {
    @ocaml.doc(
      "<p>Identifier for the text detection job.  Use <code>JobId</code> to identify the job in a subsequent call to <code>GetTextDetection</code>.</p>"
    )
    @as("JobId")
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "StartTextDetectionCommand"
  let make = (~video, ~filters=?, ~jobTag=?, ~notificationChannel=?, ~clientRequestToken=?, ()) =>
    new({
      filters: filters,
      jobTag: jobTag,
      notificationChannel: notificationChannel,
      clientRequestToken: clientRequestToken,
      video: video,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchFacesByImage = {
  type t
  type request = {
    @ocaml.doc("<p>A filter that specifies a quality bar for how much filtering is done to identify faces.
      Filtered faces aren't searched for in the collection. If you specify <code>AUTO</code>, Amazon Rekognition 
      chooses the quality bar.  If you specify <code>LOW</code>, 
      <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
      don’t meet the chosen quality bar.  
      
      The quality bar is based on a variety of common use cases. Low-quality
      detections can occur for a number of reasons. Some examples are an object that's misidentified
      as a face, a face that's too blurry, or a face with a
      pose that's too extreme to use. If you specify <code>NONE</code>, no
      filtering is performed.  The default value is <code>NONE</code>.
    </p>
         <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>")
    @as("QualityFilter")
    qualityFilter: option<qualityFilter>,
    @ocaml.doc("<p>(Optional) Specifies the minimum confidence in the face match to return. For example,
      don't return any matches where confidence in matches is less than 70%.
    The default value is 80%.</p>")
    @as("FaceMatchThreshold")
    faceMatchThreshold: option<percent>,
    @ocaml.doc("<p>Maximum number of faces to return. The operation returns the maximum number of faces
      with the highest confidence in the match.</p>")
    @as("MaxFaces")
    maxFaces: option<maxFaces>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object.
      If you use the AWS CLI to call Amazon Rekognition operations,
      passing base64-encoded image bytes is not supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
    @ocaml.doc("<p>ID of the collection to search.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>"
    )
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>An array of faces that match the input face, along with the confidence in the
      match.</p>")
    @as("FaceMatches")
    faceMatches: option<faceMatchList>,
    @ocaml.doc("<p>The level of confidence that the <code>searchedFaceBoundingBox</code>, contains a
      face.</p>")
    @as("SearchedFaceConfidence")
    searchedFaceConfidence: option<percent>,
    @ocaml.doc("<p>The bounding box around the face in the input image that Amazon Rekognition used for the
      search.</p>")
    @as("SearchedFaceBoundingBox")
    searchedFaceBoundingBox: option<boundingBox>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "SearchFacesByImageCommand"
  let make = (~image, ~collectionId, ~qualityFilter=?, ~faceMatchThreshold=?, ~maxFaces=?, ()) =>
    new({
      qualityFilter: qualityFilter,
      faceMatchThreshold: faceMatchThreshold,
      maxFaces: maxFaces,
      image: image,
      collectionId: collectionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchFaces = {
  type t
  type request = {
    @ocaml.doc("<p>Optional value specifying the minimum confidence in the face match to return. For
      example, don't return any matches where confidence in matches is less than 70%. 
      The default value is 80%.
    </p>")
    @as("FaceMatchThreshold")
    faceMatchThreshold: option<percent>,
    @ocaml.doc("<p>Maximum number of faces to return. The operation returns the maximum number of faces
      with the highest confidence in the match.</p>")
    @as("MaxFaces")
    maxFaces: option<maxFaces>,
    @ocaml.doc("<p>ID of a face to find matches for in the collection.</p>") @as("FaceId")
    faceId: faceId,
    @ocaml.doc("<p>ID of the collection the face belongs to.</p>") @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>"
    )
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>An array of faces that matched the input face, along with the confidence in the
      match.</p>")
    @as("FaceMatches")
    faceMatches: option<faceMatchList>,
    @ocaml.doc("<p>ID of the face that was searched for matches in a collection.</p>")
    @as("SearchedFaceId")
    searchedFaceId: option<faceId>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "SearchFacesCommand"
  let make = (~faceId, ~collectionId, ~faceMatchThreshold=?, ~maxFaces=?, ()) =>
    new({
      faceMatchThreshold: faceMatchThreshold,
      maxFaces: maxFaces,
      faceId: faceId,
      collectionId: collectionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectFaces = {
  type t
  type request = {
    @ocaml.doc("<p>An array of facial attributes you want to be returned. This can be the default list of
      attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if
      you specify <code>[\"DEFAULT\"]</code>, the API returns the following subset of facial
      attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
        <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>[\"ALL\"]</code>, all
      facial attributes are returned, but the operation takes longer to complete.</p>
         <p>If you provide both, <code>[\"ALL\", \"DEFAULT\"]</code>, the service uses a logical AND
      operator to determine which attributes to return (in this case, all attributes). </p>")
    @as("Attributes")
    attributes: option<attributes>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
      Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>The value of <code>OrientationCorrection</code> is always null.</p>
         <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
      that includes the image's orientation. Amazon Rekognition uses this orientation information to perform 
      image correction. The bounding box coordinates are translated to represent object locations
      after the orientation information in the Exif metadata is used to correct the image orientation. 
      Images in .png format don't contain Exif metadata.</p>
         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
      .jpeg images without orientation information in the image Exif metadata. The bounding box
      coordinates aren't translated and represent the object locations before the image is rotated.
    </p>")
    @as("OrientationCorrection")
    orientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>Details of each face found in the image. </p>") @as("FaceDetails")
    faceDetails: option<faceDetailList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DetectFacesCommand"
  let make = (~image, ~attributes=?, ()) => new({attributes: attributes, image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RecognizeCelebrities = {
  type t
  type request = {
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
      Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>The orientation of the input image (counterclockwise direction). If your application
      displays the image, you can use this value to correct the orientation. The bounding box
      coordinates returned in <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code>
      represent face locations before the image orientation is corrected. </p>
         <note>
            <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif)
        metadata that includes the image's orientation. If so, and the Exif metadata for the input
        image populates the orientation field, the value of <code>OrientationCorrection</code> is
        null. The <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> bounding box
        coordinates represent face locations after Exif metadata is used to correct the image
        orientation. Images in .png format don't contain Exif metadata. </p>
         </note>")
    @as("OrientationCorrection")
    orientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>Details about each unrecognized face in the image.</p>") @as("UnrecognizedFaces")
    unrecognizedFaces: option<comparedFaceList>,
    @ocaml.doc("<p>Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 64
      celebrities in an image.</p>")
    @as("CelebrityFaces")
    celebrityFaces: option<celebrityList>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "RecognizeCelebritiesCommand"
  let make = (~image, ()) => new({image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module IndexFaces = {
  type t
  type request = {
    @ocaml.doc("<p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    Filtered faces aren't indexed. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality bar.
      If you specify <code>LOW</code>, 
      <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
      don’t meet the chosen quality bar.  The default value is <code>AUTO</code>.
      
      The quality bar is based on a variety of common use cases. Low-quality
      detections can occur for a number of reasons. Some examples are an object that's misidentified
      as a face, a face that's too blurry, or a face with a
      pose that's too extreme to use. If you specify <code>NONE</code>, no
      filtering is performed.
    </p>
         <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>")
    @as("QualityFilter")
    qualityFilter: option<qualityFilter>,
    @ocaml.doc("<p>The maximum number of faces to index. The value of <code>MaxFaces</code> must be greater
      than or equal to 1. <code>IndexFaces</code> returns no more than 100 detected faces in an
      image, even if you specify a larger value for <code>MaxFaces</code>.</p>
         <p>If <code>IndexFaces</code> detects more faces than the value of <code>MaxFaces</code>, the
      faces with the lowest quality are filtered out first. If there are still more faces than the
      value of <code>MaxFaces</code>, the faces with the smallest bounding boxes are filtered out
      (up to the number that's needed to satisfy the value of <code>MaxFaces</code>). Information
      about the unindexed faces is available in the <code>UnindexedFaces</code> array. </p>
         <p>The faces that are returned by <code>IndexFaces</code> are sorted by the largest face
      bounding box size to the smallest size, in descending order.</p>
         <p>
            <code>MaxFaces</code> can be used with a collection associated with any version of 
      the face model.</p>")
    @as("MaxFaces")
    maxFaces: option<maxFacesToIndex>,
    @ocaml.doc("<p>An array of facial attributes that you want to be returned. This can be the default
      list of attributes or all attributes. If you don't specify a value for <code>Attributes</code>
      or if you specify <code>[\"DEFAULT\"]</code>, the API returns the following subset of facial
      attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
        <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>[\"ALL\"]</code>, all
      facial attributes are returned, but the operation takes longer to complete.</p>
         <p>If you provide both, <code>[\"ALL\", \"DEFAULT\"]</code>, the service uses a logical AND
      operator to determine which attributes to return (in this case, all attributes). </p>")
    @as("DetectionAttributes")
    detectionAttributes: option<attributes>,
    @ocaml.doc("<p>The ID you want to assign to all the faces detected in the image.</p>")
    @as("ExternalImageId")
    externalImageId: option<externalImageId>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
      Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
    @ocaml.doc("<p>The ID of an existing collection to which you want to add the faces that are detected
      in the input images.</p>")
    @as("CollectionId")
    collectionId: collectionId,
  }
  type response = {
    @ocaml.doc("<p>An array of faces that were detected in the image but weren't indexed. They weren't
      indexed because the quality filter identified them as low quality, or the
        <code>MaxFaces</code> request parameter filtered them out. To use the quality filter, you
      specify the <code>QualityFilter</code> request parameter.</p>")
    @as("UnindexedFaces")
    unindexedFaces: option<unindexedFaces>,
    @ocaml.doc("<p>The version number of the face detection model that's associated with the input
      collection (<code>CollectionId</code>).</p>")
    @as("FaceModelVersion")
    faceModelVersion: option<string_>,
    @ocaml.doc("<p>If your collection is associated with a face detection model that's later 
      than version 3.0, the value of <code>OrientationCorrection</code>
      is always null and no orientation information is returned.</p>
    
         <p>If your collection is associated with a face detection model that's
      version 3.0 or earlier, the following applies:</p>
         <ul>
            <li>
               <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
        that includes the image's orientation. Amazon Rekognition uses this orientation information to perform 
        image correction - the bounding box coordinates are translated to represent object locations
        after the orientation information in the Exif metadata is used to correct the image orientation. 
        Images in .png format don't contain Exif metadata. The value of <code>OrientationCorrection</code>
        is null.</p>
            </li>
            <li>
               <p>If the image doesn't contain orientation information in its Exif metadata, Amazon Rekognition returns
      an estimated orientation (ROTATE_0, ROTATE_90, ROTATE_180, ROTATE_270). Amazon Rekognition doesn’t perform 
      image correction for images. The bounding box coordinates aren't translated and represent the 
      object locations before the image is rotated.</p>
            </li>
         </ul>
    
    
    
         <p>Bounding box information is returned in the <code>FaceRecords</code> array. You can get the 
    version of the face detection model by calling <a>DescribeCollection</a>. </p>")
    @as("OrientationCorrection")
    orientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>An array of faces detected and added to the collection.
      For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide.
    </p>")
    @as("FaceRecords")
    faceRecords: option<faceRecordList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "IndexFacesCommand"
  let make = (
    ~image,
    ~collectionId,
    ~qualityFilter=?,
    ~maxFaces=?,
    ~detectionAttributes=?,
    ~externalImageId=?,
    (),
  ) =>
    new({
      qualityFilter: qualityFilter,
      maxFaces: maxFaces,
      detectionAttributes: detectionAttributes,
      externalImageId: externalImageId,
      image: image,
      collectionId: collectionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFaceDetection = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination
       token in the response. You can use this pagination token to retrieve the next set of faces.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
       If you specify a value greater than 1000, a maximum of 1000 results is returned.
       The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>"
    )
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An array of faces detected in the video. Each element contains a detected face's details and the time,
       in milliseconds from the start of the video, the face was detected. </p>")
    @as("Faces")
    faces: option<faceDetections>,
    @ocaml.doc(
      "<p>If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. </p>"
    )
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
       every page of paginated responses from a Amazon Rekognition video operation.</p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the face detection job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "GetFaceDetectionCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectText = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Optional parameters that let you set the criteria that the text must meet to be included in your response.</p>"
    )
    @as("Filters")
    filters: option<detectTextFilters>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
      to call Amazon Rekognition operations, you can't pass image bytes. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>The model version used to detect text.</p>") @as("TextModelVersion")
    textModelVersion: option<string_>,
    @ocaml.doc("<p>An array of text that was detected in the input image.</p>")
    @as("TextDetections")
    textDetections: option<textDetectionList>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DetectTextCommand"
  let make = (~image, ~filters=?, ()) => new({filters: filters, image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectLabels = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
      return any labels with confidence lower than this specified value.</p>
         <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a
      confidence values greater than or equal to 55 percent.</p>")
    @as("MinConfidence")
    minConfidence: option<percent>,
    @ocaml.doc("<p>Maximum number of labels you want the service to return in the response. The service
      returns the specified number of highest confidence labels. </p>")
    @as("MaxLabels")
    maxLabels: option<uinteger>,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
      Amazon Rekognition operations, passing image bytes is not supported. Images stored in an S3 Bucket do
    not need to be base64-encoded.</p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>Version number of the label detection model that was used to detect labels.</p>")
    @as("LabelModelVersion")
    labelModelVersion: option<string_>,
    @ocaml.doc("<p>The value of <code>OrientationCorrection</code> is always null.</p>
         <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
      that includes the image's orientation. Amazon Rekognition uses this orientation information to perform 
      image correction. The bounding box coordinates are translated to represent object locations
      after the orientation information in the Exif metadata is used to correct the image orientation. 
      Images in .png format don't contain Exif metadata.</p>
         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
         .jpeg images without orientation information in the image Exif metadata. The bounding box
         coordinates aren't translated and represent the object locations before the image is rotated.
      </p>")
    @as("OrientationCorrection")
    orientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>An array of labels for the real-world objects detected. </p>") @as("Labels")
    labels: option<labels>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "DetectLabelsCommand"
  let make = (~image, ~minConfidence=?, ~maxLabels=?, ()) =>
    new({minConfidence: minConfidence, maxLabels: maxLabels, image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectCustomLabels = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the minimum confidence level for the labels to return. 
         Amazon Rekognition doesn't return any labels with a confidence lower than this specified value. If you specify a
      value of 0, all labels are return, regardless of the default thresholds that the model version applies.</p>")
    @as("MinConfidence")
    minConfidence: option<percent>,
    @ocaml.doc("<p>Maximum number of results you want the service to return in the response. 
         The service returns the specified number of highest confidence labels ranked from highest confidence 
      to lowest.</p>")
    @as("MaxResults")
    maxResults: option<uinteger>,
    @as("Image") image: image,
    @ocaml.doc("<p>The ARN of the model version that you want to use.</p>") @as("ProjectVersionArn")
    projectVersionArn: projectVersionArn,
  }
  type response = {
    @ocaml.doc("<p>An array of custom labels detected in the input image.</p>") @as("CustomLabels")
    customLabels: option<customLabels>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DetectCustomLabelsCommand"
  let make = (~image, ~projectVersionArn, ~minConfidence=?, ~maxResults=?, ()) =>
    new({
      minConfidence: minConfidence,
      maxResults: maxResults,
      image: image,
      projectVersionArn: projectVersionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProjectVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for your AWS Key Management Service (AWS KMS) customer master key (CMK).
         You can supply the Amazon Resource Name (ARN) of your CMK, the ID of your CMK,
         or an alias for your CMK.
         The key is used to encrypt training and test images copied into the service for model training. Your 
         source images are unaffected. The key is also used to encrypt training results and manifest files written
         to the output Amazon S3 bucket (<code>OutputConfig</code>).</p>
         <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted
         using a key that AWS owns and manages.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>
      A set of tags (key-value pairs) that you want to attach to the model.
    </p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The dataset to use for testing.</p>") @as("TestingData")
    testingData: testingData,
    @ocaml.doc("<p>The dataset to use for training. </p>") @as("TrainingData")
    trainingData: trainingData,
    @ocaml.doc("<p>The Amazon S3 location to store the results of training.</p>")
    @as("OutputConfig")
    outputConfig: outputConfig,
    @ocaml.doc("<p>A name for the version of the model. This value must be unique.</p>")
    @as("VersionName")
    versionName: versionName,
    @ocaml.doc("<p>The ARN of the Amazon Rekognition Custom Labels project that 
         manages the model that you want to train.</p>")
    @as("ProjectArn")
    projectArn: projectArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the model version that was created. Use <code>DescribeProjectVersion</code>
         to get the current status of the training operation.</p>")
    @as("ProjectVersionArn")
    projectVersionArn: option<projectVersionArn>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "CreateProjectVersionCommand"
  let make = (
    ~testingData,
    ~trainingData,
    ~outputConfig,
    ~versionName,
    ~projectArn,
    ~kmsKeyId=?,
    ~tags=?,
    (),
  ) =>
    new({
      kmsKeyId: kmsKeyId,
      tags: tags,
      testingData: testingData,
      trainingData: trainingData,
      outputConfig: outputConfig,
      versionName: versionName,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompareFaces = {
  type t
  type request = {
    @ocaml.doc("<p>A filter that specifies a quality bar for how much filtering is done to identify faces.
      Filtered faces aren't compared. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality bar.
      If you specify <code>LOW</code>, 
      <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
      don’t meet the chosen quality bar.
      
      The quality bar is based on a variety of common use cases. Low-quality
      detections can occur for a number of reasons. Some examples are an object that's misidentified
      as a face, a face that's too blurry, or a face with a
      pose that's too extreme to use. If you specify <code>NONE</code>, no
      filtering is performed. The default value is <code>NONE</code>.
    </p>
         <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>")
    @as("QualityFilter")
    qualityFilter: option<qualityFilter>,
    @ocaml.doc("<p>The minimum level of confidence in the face matches that a match must meet to be
      included in the <code>FaceMatches</code> array.</p>")
    @as("SimilarityThreshold")
    similarityThreshold: option<percent>,
    @ocaml.doc("<p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
      call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
    </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("TargetImage")
    targetImage: image,
    @ocaml.doc("<p>The input image as base64-encoded bytes or an S3 object.
      If you use the AWS CLI to call Amazon Rekognition operations,
      passing base64-encoded image bytes is not supported. </p>
         <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
      passed using the <code>Bytes</code> field. 
      For more information, see Images in the Amazon Rekognition developer guide.</p>")
    @as("SourceImage")
    sourceImage: image,
  }
  type response = {
    @ocaml.doc("<p>The value of <code>TargetImageOrientationCorrection</code> is always null.</p>
         <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
      that includes the image's orientation. Amazon Rekognition uses this orientation information to perform 
      image correction. The bounding box coordinates are translated to represent object locations
      after the orientation information in the Exif metadata is used to correct the image orientation. 
      Images in .png format don't contain Exif metadata.</p>
         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
      .jpeg images without orientation information in the image Exif metadata. The bounding box
      coordinates aren't translated and represent the object locations before the image is rotated.
    </p>")
    @as("TargetImageOrientationCorrection")
    targetImageOrientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>The value of <code>SourceImageOrientationCorrection</code> is always null.</p>
         <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
      that includes the image's orientation. Amazon Rekognition uses this orientation information to perform 
      image correction. The bounding box coordinates are translated to represent object locations
      after the orientation information in the Exif metadata is used to correct the image orientation. 
      Images in .png format don't contain Exif metadata.</p>
         <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
      .jpeg images without orientation information in the image Exif metadata. The bounding box
      coordinates aren't translated and represent the object locations before the image is rotated.
    </p>")
    @as("SourceImageOrientationCorrection")
    sourceImageOrientationCorrection: option<orientationCorrection>,
    @ocaml.doc("<p>An array of faces in the target image that did not match the source image
      face.</p>")
    @as("UnmatchedFaces")
    unmatchedFaces: option<compareFacesUnmatchList>,
    @ocaml.doc("<p>An array of faces in the target image that match the source image face. Each
        <code>CompareFacesMatch</code> object provides the bounding box, the confidence level that
      the bounding box contains a face, and the similarity score for the face in the bounding box
      and the face in the source image.</p>")
    @as("FaceMatches")
    faceMatches: option<compareFacesMatchList>,
    @ocaml.doc("<p>The face in the source image that was used for comparison.</p>")
    @as("SourceImageFace")
    sourceImageFace: option<comparedSourceImageFace>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "CompareFacesCommand"
  let make = (~targetImage, ~sourceImage, ~qualityFilter=?, ~similarityThreshold=?, ()) =>
    new({
      qualityFilter: qualityFilter,
      similarityThreshold: similarityThreshold,
      targetImage: targetImage,
      sourceImage: sourceImage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTextDetection = {
  type t
  type request = {
    @ocaml.doc("<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns 
      a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Job identifier for the text detection operation for which you want results returned. 
        You get the job identifer from an initial call to <code>StartTextDetection</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Version number of the text detection model that was used to detect text.</p>")
    @as("TextModelVersion")
    textModelVersion: option<string_>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent 
        request to retrieve the next set of text.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of text detected in the video. Each element contains the detected text, the time in milliseconds
      from the start of the video that the text was detected, and where it was detected on the screen.</p>")
    @as("TextDetections")
    textDetections: option<textDetectionResults>,
    @as("VideoMetadata") videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>Current status of the text detection job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "GetTextDetectionCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPersonTracking = {
  type t
  type request = {
    @ocaml.doc("<p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements
       by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons.
       If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence.
       The default sort is by <code>TIMESTAMP</code>.</p>")
    @as("SortBy")
    sortBy: option<personTrackingSortBy>,
    @ocaml.doc("<p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination
       token in the response. You can use this pagination token to retrieve the next set of persons. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
      If you specify a value greater than 1000, a maximum of 1000 results is returned.
      The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>.
        </p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An array of the persons detected in the video and the time(s) their path was tracked throughout the video.
        An array element will exist for each time a person's path is tracked. </p>")
    @as("Persons")
    persons: option<personDetections>,
    @ocaml.doc(
      "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of persons. </p>"
    )
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
       every page of paginated responses from a Amazon Rekognition Video operation.</p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the person tracking job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "GetPersonTrackingCommand"
  let make = (~jobId, ~sortBy=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortBy: sortBy, nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLabelDetection = {
  type t
  type request = {
    @ocaml.doc("<p>Sort to use for elements in the <code>Labels</code> array.
      Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
      Use <code>NAME</code> to alphabetically group elements for a label together.
      Within each label group, the array element are sorted by detection confidence.
      The default sort is by <code>TIMESTAMP</code>.</p>")
    @as("SortBy")
    sortBy: option<labelDetectionSortBy>,
    @ocaml.doc("<p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination
         token in the response. You can use this pagination token to retrieve the next set of labels. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
       If you specify a value greater than 1000, a maximum of 1000 results is returned.
       The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from
      an initial call to <code>StartlabelDetection</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Version number of the label detection model that was used to detect labels.</p>")
    @as("LabelModelVersion")
    labelModelVersion: option<string_>,
    @ocaml.doc("<p>An array of labels detected in the video. Each element contains the detected label and the time,
        in milliseconds from the start of the video, that the label was detected. </p>")
    @as("Labels")
    labels: option<labelDetections>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request
        to retrieve the next set of labels.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
       every page of paginated responses from a Amazon Rekognition video operation.</p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the label detection job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "GetLabelDetectionCommand"
  let make = (~jobId, ~sortBy=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortBy: sortBy, nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFaceSearch = {
  type t
  type request = {
    @ocaml.doc("<p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time
      that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>")
    @as("SortBy")
    sortBy: option<faceSearchSortBy>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination
      token in the response. You can use this pagination token to retrieve the next set of search results. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
      If you specify a value greater than 1000, a maximum of 1000 results is returned.
      The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>"
    )
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>An array of persons,  <a>PersonMatch</a>,
      in the video whose face(s) match the face(s) in an Amazon Rekognition collection. It also includes time information
       for when persons are matched in the video.
      You specify the input collection in an initial call to <code>StartFaceSearch</code>.
      Each  <code>Persons</code> element includes a time the person was matched,
      face match details (<code>FaceMatches</code>) for matching faces in the collection,
       and person information (<code>Person</code>) for the matched person. </p>")
    @as("Persons")
    persons: option<personMatches>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses
      from a Amazon Rekognition Video operation. </p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of search results. </p>"
    )
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the face search job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new external new: request => t = "GetFaceSearchCommand"
  let make = (~jobId, ~sortBy=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortBy: sortBy, nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCelebrityRecognition = {
  type t
  type request = {
    @ocaml.doc("<p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier,
        specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>")
    @as("SortBy")
    sortBy: option<celebrityRecognitionSortBy>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination
      token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
      If you specify a value greater than 1000, a maximum of 1000 results is returned.
      The default value is 1000.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from
      a call to <code>StartCelebrityRecognition</code>.</p>")
    @as("JobId")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Array of celebrities recognized in the video.</p>") @as("Celebrities")
    celebrities: option<celebrityRecognitions>,
    @ocaml.doc("<p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request
      to retrieve the next set of celebrities.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
      every page of paginated responses from a Amazon Rekognition Video operation.</p>")
    @as("VideoMetadata")
    videoMetadata: option<videoMetadata>,
    @ocaml.doc(
      "<p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<statusMessage>,
    @ocaml.doc("<p>The current status of the celebrity recognition job.</p>") @as("JobStatus")
    jobStatus: option<videoJobStatus>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "GetCelebrityRecognitionCommand"
  let make = (~jobId, ~sortBy=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortBy: sortBy, nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetectProtectiveEquipment = {
  type t
  type request = {
    @ocaml.doc("<p>An array of PPE types that you want to summarize.</p>")
    @as("SummarizationAttributes")
    summarizationAttributes: option<protectiveEquipmentSummarizationAttributes>,
    @ocaml.doc("<p>The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can 
         reference an image stored in an Amazon S3 bucket. </p>")
    @as("Image")
    image: image,
  }
  type response = {
    @ocaml.doc("<p>Summary information for the types of PPE specified in the <code>SummarizationAttributes</code> input
      parameter.</p>")
    @as("Summary")
    summary: option<protectiveEquipmentSummary>,
    @ocaml.doc(
      "<p>An array of persons detected in the image (including persons not wearing PPE).</p>"
    )
    @as("Persons")
    persons: option<protectiveEquipmentPersons>,
    @ocaml.doc(
      "<p>The version number of the PPE detection model used to detect PPE in the image.</p>"
    )
    @as("ProtectiveEquipmentModelVersion")
    protectiveEquipmentModelVersion: option<string_>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DetectProtectiveEquipmentCommand"
  let make = (~image, ~summarizationAttributes=?, ()) =>
    new({summarizationAttributes: summarizationAttributes, image: image})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProjectVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per paginated call. 
          The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException
          error occurs. The default value is 100. </p>")
    @as("MaxResults")
    maxResults: option<projectVersionsPageSize>,
    @ocaml.doc("<p>If the previous response was incomplete (because there is more
           results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. 
           You can use this pagination token to retrieve the next set of results. </p>")
    @as("NextToken")
    nextToken: option<extendedPaginationToken>,
    @ocaml.doc("<p>A list of model version names that you want to describe. You can add up to 10 model version names
         to the list. If you don't specify a value, all model descriptions are returned.  A version name is part of a
         model (ProjectVersion) ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is the version name in the following ARN.
               <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>")
    @as("VersionNames")
    versionNames: option<versionNames>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the project that contains the models you want to describe.</p>"
    )
    @as("ProjectArn")
    projectArn: projectArn,
  }
  type response = {
    @ocaml.doc("<p>If the previous response was incomplete (because there is more
         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. 
         You can use this pagination token to retrieve the next set of results. </p>")
    @as("NextToken")
    nextToken: option<extendedPaginationToken>,
    @ocaml.doc("<p>A list of model descriptions. The list is sorted by the creation date and time of
         the model versions, latest to earliest.</p>")
    @as("ProjectVersionDescriptions")
    projectVersionDescriptions: option<projectVersionDescriptions>,
  }
  @module("@aws-sdk/client-rekognition") @new
  external new: request => t = "DescribeProjectVersionsCommand"
  let make = (~projectArn, ~maxResults=?, ~nextToken=?, ~versionNames=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      versionNames: versionNames,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
