type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type long = float
type videoJobStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #INPROGRESS]
type versionName = string
type url = string
type ulong = float
type uinteger = int
type timestamp_ = float
type timecode = string
type textTypes = [@as("WORD") #WORD | @as("LINE") #LINE]
type technicalCueType = [@as("BlackFrames") #BlackFrames | @as("EndCredits") #EndCredits | @as("ColorBars") #ColorBars]
type tagValue = string
type tagKey = string
type synthesizedJsonHumanLoopActivationConditionsEvaluationResults = string
type string_ = string
type streamProcessorStatus = [@as("STOPPING") #STOPPING | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("STOPPED") #STOPPED]
type streamProcessorName = string
type streamProcessorArn = string
type statusMessage = string
type segmentType = [@as("SHOT") #SHOT | @as("TECHNICAL_CUE") #TECHNICALCUE]
type segmentConfidence = float
type snstopicArn = string
type s3ObjectVersion = string
type s3ObjectName = string
type s3KeyPrefix = string
type s3Bucket = string
type roleArn = string
type resourceArn = string
type rekognitionUniqueId = string
type reason = [@as("LOW_FACE_QUALITY") #LOWFACEQUALITY | @as("SMALL_BOUNDING_BOX") #SMALLBOUNDINGBOX | @as("LOW_CONFIDENCE") #LOWCONFIDENCE | @as("LOW_SHARPNESS") #LOWSHARPNESS | @as("LOW_BRIGHTNESS") #LOWBRIGHTNESS | @as("EXTREME_POSE") #EXTREMEPOSE | @as("EXCEEDS_MAX_FACES") #EXCEEDSMAXFACES]
type qualityFilter = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("AUTO") #AUTO | @as("NONE") #NONE]
type protectiveEquipmentType = [@as("HEAD_COVER") #HEADCOVER | @as("HAND_COVER") #HANDCOVER | @as("FACE_COVER") #FACECOVER]
type projectsPageSize = int
type projectVersionsPageSize = int
type projectVersionStatus = [@as("DELETING") #DELETING | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("TRAINING_FAILED") #TRAININGFAILED | @as("TRAINING_COMPLETED") #TRAININGCOMPLETED | @as("TRAINING_IN_PROGRESS") #TRAININGINPROGRESS]
type projectVersionArn = string
type projectStatus = [@as("DELETING") #DELETING | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type projectName = string
type projectArn = string
type personTrackingSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("INDEX") #INDEX]
type personIndex = float
type percent = float
type paginationToken = string
type pageSize = int
type orientationCorrection = [@as("ROTATE_270") #ROTATE270 | @as("ROTATE_180") #ROTATE180 | @as("ROTATE_90") #ROTATE90 | @as("ROTATE_0") #ROTATE0]
type maxResults = int
type maxFacesToIndex = int
type maxFaces = int
type landmarkType = [@as("upperJawlineRight") #UpperJawlineRight | @as("midJawlineRight") #MidJawlineRight | @as("chinBottom") #ChinBottom | @as("midJawlineLeft") #MidJawlineLeft | @as("upperJawlineLeft") #UpperJawlineLeft | @as("rightPupil") #RightPupil | @as("leftPupil") #LeftPupil | @as("mouthDown") #MouthDown | @as("mouthUp") #MouthUp | @as("noseRight") #NoseRight | @as("noseLeft") #NoseLeft | @as("rightEyeDown") #RightEyeDown | @as("rightEyeUp") #RightEyeUp | @as("rightEyeRight") #RightEyeRight | @as("rightEyeLeft") #RightEyeLeft | @as("leftEyeDown") #LeftEyeDown | @as("leftEyeUp") #LeftEyeUp | @as("leftEyeRight") #LeftEyeRight | @as("leftEyeLeft") #LeftEyeLeft | @as("rightEyeBrowUp") #RightEyeBrowUp | @as("rightEyeBrowRight") #RightEyeBrowRight | @as("rightEyeBrowLeft") #RightEyeBrowLeft | @as("leftEyeBrowUp") #LeftEyeBrowUp | @as("leftEyeBrowRight") #LeftEyeBrowRight | @as("leftEyeBrowLeft") #LeftEyeBrowLeft | @as("mouthRight") #MouthRight | @as("mouthLeft") #MouthLeft | @as("nose") #Nose | @as("eyeRight") #EyeRight | @as("eyeLeft") #EyeLeft]
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
type emotionName = [@as("FEAR") #FEAR | @as("UNKNOWN") #UNKNOWN | @as("CALM") #CALM | @as("SURPRISED") #SURPRISED | @as("DISGUSTED") #DISGUSTED | @as("CONFUSED") #CONFUSED | @as("ANGRY") #ANGRY | @as("SAD") #SAD | @as("HAPPY") #HAPPY]
type degree = float
type dateTime = Js.Date.t;
type contentModerationSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("NAME") #NAME]
type contentClassifier = [@as("FreeOfAdultContent") #FreeOfAdultContent | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation]
type collectionId = string
type clientRequestToken = string
type celebrityRecognitionSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("ID") #ID]
type boundingBoxWidth = float
type boundingBoxHeight = float
type boolean_ = bool
type bodyPart = [@as("RIGHT_HAND") #RIGHTHAND | @as("LEFT_HAND") #LEFTHAND | @as("HEAD") #HEAD | @as("FACE") #FACE]
type attribute = [@as("ALL") #ALL | @as("DEFAULT") #DEFAULT]
type videoMetadata = {
@as("FrameWidth") frameWidth: option<ulong>,
@as("FrameHeight") frameHeight: option<ulong>,
@as("FrameRate") frameRate: option<float_>,
@as("Format") format: option<string_>,
@as("DurationMillis") durationMillis: option<ulong>,
@as("Codec") codec: option<string_>
}
type versionNames = array<versionName>
type urls = array<url>
type technicalCueSegment = {
@as("Confidence") confidence: option<segmentConfidence>,
@as("Type") type_: option<technicalCueType>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type sunglasses = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type streamProcessor = {
@as("Status") status: option<streamProcessorStatus>,
@as("Name") name: option<streamProcessorName>
}
type startTechnicalCueDetectionFilter = {
@as("MinSegmentConfidence") minSegmentConfidence: option<segmentConfidence>
}
type startShotDetectionFilter = {
@as("MinSegmentConfidence") minSegmentConfidence: option<segmentConfidence>
}
type smile = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type shotSegment = {
@as("Confidence") confidence: option<segmentConfidence>,
@as("Index") index: option<ulong>
}
type segmentTypes = array<segmentType>
type segmentTypeInfo = {
@as("ModelVersion") modelVersion: option<string_>,
@as("Type") type_: option<segmentType>
}
type s3Object = {
@as("Version") version: option<s3ObjectVersion>,
@as("Name") name: option<s3ObjectName>,
@as("Bucket") bucket: option<s3Bucket>
}
type reasons = array<reason>
type protectiveEquipmentTypes = array<protectiveEquipmentType>
type protectiveEquipmentPersonIds = array<uinteger>
type projectDescription = {
@as("Status") status: option<projectStatus>,
@as("CreationTimestamp") creationTimestamp: option<dateTime>,
@as("ProjectArn") projectArn: option<projectArn>
}
type pose = {
@as("Pitch") pitch: option<degree>,
@as("Yaw") yaw: option<degree>,
@as("Roll") roll: option<degree>
}
type point = {
@as("Y") y: option<float_>,
@as("X") x: option<float_>
}
type parent = {
@as("Name") name: option<string_>
}
type outputConfig = {
@as("S3KeyPrefix") s3KeyPrefix: option<s3KeyPrefix>,
@as("S3Bucket") s3Bucket: option<s3Bucket>
}
type notificationChannel = {
@as("RoleArn") roleArn: roleArn,
@as("SNSTopicArn") snstopicArn: snstopicArn
}
type mustache = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type mouthOpen = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type moderationLabel = {
@as("ParentName") parentName: option<string_>,
@as("Name") name: option<string_>,
@as("Confidence") confidence: option<percent>
}
type landmark = {
@as("Y") y: option<float_>,
@as("X") x: option<float_>,
@as("Type") type_: option<landmarkType>
}
type kinesisVideoStream = {
@as("Arn") arn: option<kinesisVideoArn>
}
type kinesisDataStream = {
@as("Arn") arn: option<kinesisDataArn>
}
type imageQuality = {
@as("Sharpness") sharpness: option<float_>,
@as("Brightness") brightness: option<float_>
}
type humanLoopActivationReasons = array<humanLoopActivationReason>
type gender = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<genderType>
}
type faceSearchSettings = {
@as("FaceMatchThreshold") faceMatchThreshold: option<percent>,
@as("CollectionId") collectionId: option<collectionId>
}
type faceModelVersionList = array<string_>
type faceIdList = array<faceId>
type eyeglasses = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type eyeOpen = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type emotion = {
@as("Confidence") confidence: option<percent>,
@as("Type") type_: option<emotionName>
}
type detectionFilter = {
@as("MinBoundingBoxWidth") minBoundingBoxWidth: option<boundingBoxWidth>,
@as("MinBoundingBoxHeight") minBoundingBoxHeight: option<boundingBoxHeight>,
@as("MinConfidence") minConfidence: option<percent>
}
type coversBodyPart = {
@as("Value") value: option<boolean_>,
@as("Confidence") confidence: option<percent>
}
type contentClassifiers = array<contentClassifier>
type collectionIdList = array<collectionId>
type boundingBox = {
@as("Top") top: option<float_>,
@as("Left") left: option<float_>,
@as("Height") height: option<float_>,
@as("Width") width: option<float_>
}
type beard = {
@as("Confidence") confidence: option<percent>,
@as("Value") value: option<boolean_>
}
type audioMetadata = {
@as("NumberOfChannels") numberOfChannels: option<ulong>,
@as("SampleRate") sampleRate: option<ulong>,
@as("DurationMillis") durationMillis: option<ulong>,
@as("Codec") codec: option<string_>
}
type attributes = array<attribute>
type ageRange = {
@as("High") high: option<uinteger>,
@as("Low") low: option<uinteger>
}
type videoMetadataList = array<videoMetadata>
type video = {
@as("S3Object") s3Object: option<s3Object>
}
type summary = {
@as("S3Object") s3Object: option<s3Object>
}
type streamProcessorSettings = {
@as("FaceSearch") faceSearch: option<faceSearchSettings>
}
type streamProcessorOutput = {
@as("KinesisDataStream") kinesisDataStream: option<kinesisDataStream>
}
type streamProcessorList = array<streamProcessor>
type streamProcessorInput = {
@as("KinesisVideoStream") kinesisVideoStream: option<kinesisVideoStream>
}
type startSegmentDetectionFilters = {
@as("ShotFilter") shotFilter: option<startShotDetectionFilter>,
@as("TechnicalCueFilter") technicalCueFilter: option<startTechnicalCueDetectionFilter>
}
type segmentTypesInfo = array<segmentTypeInfo>
type segmentDetection = {
@as("ShotSegment") shotSegment: option<shotSegment>,
@as("TechnicalCueSegment") technicalCueSegment: option<technicalCueSegment>,
@as("DurationSMPTE") durationSMPTE: option<timecode>,
@as("EndTimecodeSMPTE") endTimecodeSMPTE: option<timecode>,
@as("StartTimecodeSMPTE") startTimecodeSMPTE: option<timecode>,
@as("DurationMillis") durationMillis: option<ulong>,
@as("EndTimestampMillis") endTimestampMillis: option<timestamp_>,
@as("StartTimestampMillis") startTimestampMillis: option<timestamp_>,
@as("Type") type_: option<segmentType>
}
type regionOfInterest = {
@as("BoundingBox") boundingBox: option<boundingBox>
}
type protectiveEquipmentSummary = {
@as("PersonsIndeterminate") personsIndeterminate: option<protectiveEquipmentPersonIds>,
@as("PersonsWithoutRequiredEquipment") personsWithoutRequiredEquipment: option<protectiveEquipmentPersonIds>,
@as("PersonsWithRequiredEquipment") personsWithRequiredEquipment: option<protectiveEquipmentPersonIds>
}
type protectiveEquipmentSummarizationAttributes = {
@as("RequiredEquipmentTypes") requiredEquipmentTypes: protectiveEquipmentTypes,
@as("MinConfidence") minConfidence: percent
}
type projectDescriptions = array<projectDescription>
type polygon = array<point>
type parents = array<parent>
type moderationLabels = array<moderationLabel>
type landmarks = array<landmark>
type instance = {
@as("Confidence") confidence: option<percent>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type image = {
@as("S3Object") s3Object: option<s3Object>,
@as("Bytes") bytes: option<imageBlob>
}
type humanLoopDataAttributes = {
@as("ContentClassifiers") contentClassifiers: option<contentClassifiers>
}
type humanLoopActivationOutput = {
@as("HumanLoopActivationConditionsEvaluationResults") humanLoopActivationConditionsEvaluationResults: option<synthesizedJsonHumanLoopActivationConditionsEvaluationResults>,
@as("HumanLoopActivationReasons") humanLoopActivationReasons: option<humanLoopActivationReasons>,
@as("HumanLoopArn") humanLoopArn: option<humanLoopArn>
}
type groundTruthManifest = {
@as("S3Object") s3Object: option<s3Object>
}
type face = {
@as("Confidence") confidence: option<percent>,
@as("ExternalImageId") externalImageId: option<externalImageId>,
@as("ImageId") imageId: option<imageId>,
@as("BoundingBox") boundingBox: option<boundingBox>,
@as("FaceId") faceId: option<faceId>
}
type equipmentDetection = {
@as("CoversBodyPart") coversBodyPart: option<coversBodyPart>,
@as("Type") type_: option<protectiveEquipmentType>,
@as("Confidence") confidence: option<percent>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type emotions = array<emotion>
type contentModerationDetection = {
@as("ModerationLabel") moderationLabel: option<moderationLabel>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type comparedSourceImageFace = {
@as("Confidence") confidence: option<percent>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type audioMetadataList = array<audioMetadata>
type segmentDetections = array<segmentDetection>
type regionsOfInterest = array<regionOfInterest>
type instances = array<instance>
type humanLoopConfig = {
@as("DataAttributes") dataAttributes: option<humanLoopDataAttributes>,
@as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
@as("HumanLoopName") humanLoopName: humanLoopName
}
type geometry = {
@as("Polygon") polygon: option<polygon>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type faceMatch = {
@as("Face") face: option<face>,
@as("Similarity") similarity: option<percent>
}
type faceList = array<face>
type faceDetail = {
@as("Confidence") confidence: option<percent>,
@as("Quality") quality: option<imageQuality>,
@as("Pose") pose: option<pose>,
@as("Landmarks") landmarks: option<landmarks>,
@as("Emotions") emotions: option<emotions>,
@as("MouthOpen") mouthOpen: option<mouthOpen>,
@as("EyesOpen") eyesOpen: option<eyeOpen>,
@as("Mustache") mustache: option<mustache>,
@as("Beard") beard: option<beard>,
@as("Gender") gender: option<gender>,
@as("Sunglasses") sunglasses: option<sunglasses>,
@as("Eyeglasses") eyeglasses: option<eyeglasses>,
@as("Smile") smile: option<smile>,
@as("AgeRange") ageRange: option<ageRange>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type evaluationResult = {
@as("Summary") summary: option<summary>,
@as("F1Score") f1Score: option<float_>
}
type equipmentDetections = array<equipmentDetection>
type contentModerationDetections = array<contentModerationDetection>
type comparedFace = {
@as("Quality") quality: option<imageQuality>,
@as("Pose") pose: option<pose>,
@as("Landmarks") landmarks: option<landmarks>,
@as("Confidence") confidence: option<percent>,
@as("BoundingBox") boundingBox: option<boundingBox>
}
type asset = {
@as("GroundTruthManifest") groundTruthManifest: option<groundTruthManifest>
}
type unindexedFace = {
@as("FaceDetail") faceDetail: option<faceDetail>,
@as("Reasons") reasons: option<reasons>
}
type textDetection = {
@as("Geometry") geometry: option<geometry>,
@as("Confidence") confidence: option<percent>,
@as("ParentId") parentId: option<uinteger>,
@as("Id") id: option<uinteger>,
@as("Type") type_: option<textTypes>,
@as("DetectedText") detectedText: option<string_>
}
type startTextDetectionFilters = {
@as("RegionsOfInterest") regionsOfInterest: option<regionsOfInterest>,
@as("WordFilter") wordFilter: option<detectionFilter>
}
type protectiveEquipmentBodyPart = {
@as("EquipmentDetections") equipmentDetections: option<equipmentDetections>,
@as("Confidence") confidence: option<percent>,
@as("Name") name: option<bodyPart>
}
type personDetail = {
@as("Face") face: option<faceDetail>,
@as("BoundingBox") boundingBox: option<boundingBox>,
@as("Index") index: option<personIndex>
}
type label = {
@as("Parents") parents: option<parents>,
@as("Instances") instances: option<instances>,
@as("Confidence") confidence: option<percent>,
@as("Name") name: option<string_>
}
type faceRecord = {
@as("FaceDetail") faceDetail: option<faceDetail>,
@as("Face") face: option<face>
}
type faceMatchList = array<faceMatch>
type faceDetection = {
@as("Face") face: option<faceDetail>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type faceDetailList = array<faceDetail>
type detectTextFilters = {
@as("RegionsOfInterest") regionsOfInterest: option<regionsOfInterest>,
@as("WordFilter") wordFilter: option<detectionFilter>
}
type customLabel = {
@as("Geometry") geometry: option<geometry>,
@as("Confidence") confidence: option<percent>,
@as("Name") name: option<string_>
}
type comparedFaceList = array<comparedFace>
type compareFacesUnmatchList = array<comparedFace>
type compareFacesMatch = {
@as("Face") face: option<comparedFace>,
@as("Similarity") similarity: option<percent>
}
type celebrityDetail = {
@as("Face") face: option<faceDetail>,
@as("BoundingBox") boundingBox: option<boundingBox>,
@as("Confidence") confidence: option<percent>,
@as("Id") id: option<rekognitionUniqueId>,
@as("Name") name: option<string_>,
@as("Urls") urls: option<urls>
}
type celebrity = {
@as("MatchConfidence") matchConfidence: option<percent>,
@as("Face") face: option<comparedFace>,
@as("Id") id: option<rekognitionUniqueId>,
@as("Name") name: option<string_>,
@as("Urls") urls: option<urls>
}
type assets = array<asset>
type validationData = {
@as("Assets") assets: option<assets>
}
type unindexedFaces = array<unindexedFace>
type trainingData = {
@as("Assets") assets: option<assets>
}
type textDetectionResult = {
@as("TextDetection") textDetection: option<textDetection>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type textDetectionList = array<textDetection>
type testingData = {
@as("AutoCreate") autoCreate: option<boolean_>,
@as("Assets") assets: option<assets>
}
type personMatch = {
@as("FaceMatches") faceMatches: option<faceMatchList>,
@as("Person") person: option<personDetail>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type personDetection = {
@as("Person") person: option<personDetail>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type labels = array<label>
type labelDetection = {
@as("Label") label: option<label>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type faceRecordList = array<faceRecord>
type faceDetections = array<faceDetection>
type customLabels = array<customLabel>
type compareFacesMatchList = array<compareFacesMatch>
type celebrityRecognition = {
@as("Celebrity") celebrity: option<celebrityDetail>,
@as("Timestamp") timestamp_: option<timestamp_>
}
type celebrityList = array<celebrity>
type bodyParts = array<protectiveEquipmentBodyPart>
type trainingDataResult = {
@as("Validation") validation: option<validationData>,
@as("Output") output: option<trainingData>,
@as("Input") input: option<trainingData>
}
type textDetectionResults = array<textDetectionResult>
type testingDataResult = {
@as("Validation") validation: option<validationData>,
@as("Output") output: option<testingData>,
@as("Input") input: option<testingData>
}
type protectiveEquipmentPerson = {
@as("Id") id: option<uinteger>,
@as("Confidence") confidence: option<percent>,
@as("BoundingBox") boundingBox: option<boundingBox>,
@as("BodyParts") bodyParts: option<bodyParts>
}
type personMatches = array<personMatch>
type personDetections = array<personDetection>
type labelDetections = array<labelDetection>
type celebrityRecognitions = array<celebrityRecognition>
type protectiveEquipmentPersons = array<protectiveEquipmentPerson>
type projectVersionDescription = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("ManifestSummary") manifestSummary: option<groundTruthManifest>,
@as("EvaluationResult") evaluationResult: option<evaluationResult>,
@as("TestingDataResult") testingDataResult: option<testingDataResult>,
@as("TrainingDataResult") trainingDataResult: option<trainingDataResult>,
@as("OutputConfig") outputConfig: option<outputConfig>,
@as("TrainingEndTimestamp") trainingEndTimestamp: option<dateTime>,
@as("BillableTrainingTimeInSeconds") billableTrainingTimeInSeconds: option<ulong>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Status") status: option<projectVersionStatus>,
@as("MinInferenceUnits") minInferenceUnits: option<inferenceUnits>,
@as("CreationTimestamp") creationTimestamp: option<dateTime>,
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
type projectVersionDescriptions = array<projectVersionDescription>
type awsServiceClient;
@module("@aws-sdk/client-rekognition") @new external createClient: unit => awsServiceClient = "RekognitionClient";
module StopStreamProcessor = {
  type t;
  type request = {
@as("Name") name: streamProcessorName
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StopStreamProcessorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopProjectVersion = {
  type t;
  type request = {
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
  type response = {
@as("Status") status: option<projectVersionStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StopProjectVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartStreamProcessor = {
  type t;
  type request = {
@as("Name") name: streamProcessorName
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartStreamProcessorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartProjectVersion = {
  type t;
  type request = {
@as("MinInferenceUnits") minInferenceUnits: inferenceUnits,
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
  type response = {
@as("Status") status: option<projectVersionStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartProjectVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCollection = {
  type t;
  type request = {
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("CreationTimestamp") creationTimestamp: option<dateTime>,
@as("CollectionARN") collectionARN: option<string_>,
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("FaceCount") faceCount: option<ulong>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DescribeCollectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamProcessor = {
  type t;
  type request = {
@as("Name") name: streamProcessorName
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DeleteStreamProcessorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProjectVersion = {
  type t;
  type request = {
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
  type response = {
@as("Status") status: option<projectVersionStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DeleteProjectVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("ProjectArn") projectArn: projectArn
}
  type response = {
@as("Status") status: option<projectStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCollection = {
  type t;
  type request = {
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("StatusCode") statusCode: option<uinteger>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DeleteCollectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("ProjectName") projectName: projectName
}
  type response = {
@as("ProjectArn") projectArn: option<projectArn>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCollections = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("FaceModelVersions") faceModelVersions: option<faceModelVersionList>,
@as("NextToken") nextToken: option<paginationToken>,
@as("CollectionIds") collectionIds: option<collectionIdList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "ListCollectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCelebrityInfo = {
  type t;
  type request = {
@as("Id") id: rekognitionUniqueId
}
  type response = {
@as("Name") name: option<string_>,
@as("Urls") urls: option<urls>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetCelebrityInfoCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFaces = {
  type t;
  type request = {
@as("FaceIds") faceIds: faceIdList,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("DeletedFaces") deletedFaces: option<faceIdList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DeleteFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCollection = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("CollectionArn") collectionArn: option<string_>,
@as("StatusCode") statusCode: option<uinteger>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "CreateCollectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSegmentDetection = {
  type t;
  type request = {
@as("SegmentTypes") segmentTypes: segmentTypes,
@as("Filters") filters: option<startSegmentDetectionFilters>,
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartSegmentDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartPersonTracking = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartPersonTrackingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartLabelDetection = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("MinConfidence") minConfidence: option<percent>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartLabelDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartFaceSearch = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("CollectionId") collectionId: collectionId,
@as("FaceMatchThreshold") faceMatchThreshold: option<percent>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartFaceSearchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartFaceDetection = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("FaceAttributes") faceAttributes: option<faceAttributes>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartFaceDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartContentModeration = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("MinConfidence") minConfidence: option<percent>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartContentModerationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartCelebrityRecognition = {
  type t;
  type request = {
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartCelebrityRecognitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStreamProcessors = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("StreamProcessors") streamProcessors: option<streamProcessorList>,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "ListStreamProcessorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamProcessor = {
  type t;
  type request = {
@as("Name") name: streamProcessorName
}
  type response = {
@as("Settings") settings: option<streamProcessorSettings>,
@as("RoleArn") roleArn: option<roleArn>,
@as("Output") output: option<streamProcessorOutput>,
@as("Input") input: option<streamProcessorInput>,
@as("LastUpdateTimestamp") lastUpdateTimestamp: option<dateTime>,
@as("CreationTimestamp") creationTimestamp: option<dateTime>,
@as("StatusMessage") statusMessage: option<string_>,
@as("Status") status: option<streamProcessorStatus>,
@as("StreamProcessorArn") streamProcessorArn: option<streamProcessorArn>,
@as("Name") name: option<streamProcessorName>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DescribeStreamProcessorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProjects = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<projectsPageSize>,
@as("NextToken") nextToken: option<extendedPaginationToken>
}
  type response = {
@as("NextToken") nextToken: option<extendedPaginationToken>,
@as("ProjectDescriptions") projectDescriptions: option<projectDescriptions>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DescribeProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStreamProcessor = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("RoleArn") roleArn: roleArn,
@as("Settings") settings: streamProcessorSettings,
@as("Name") name: streamProcessorName,
@as("Output") output: streamProcessorOutput,
@as("Input") input: streamProcessorInput
}
  type response = {
@as("StreamProcessorArn") streamProcessorArn: option<streamProcessorArn>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "CreateStreamProcessorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFaces = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<paginationToken>,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("NextToken") nextToken: option<string_>,
@as("Faces") faces: option<faceList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "ListFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSegmentDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("SelectedSegmentTypes") selectedSegmentTypes: option<segmentTypesInfo>,
@as("Segments") segments: option<segmentDetections>,
@as("NextToken") nextToken: option<paginationToken>,
@as("AudioMetadata") audioMetadata: option<audioMetadataList>,
@as("VideoMetadata") videoMetadata: option<videoMetadataList>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetSegmentDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContentModeration = {
  type t;
  type request = {
@as("SortBy") sortBy: option<contentModerationSortBy>,
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("ModerationModelVersion") moderationModelVersion: option<string_>,
@as("NextToken") nextToken: option<paginationToken>,
@as("ModerationLabels") moderationLabels: option<contentModerationDetections>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetContentModerationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectModerationLabels = {
  type t;
  type request = {
@as("HumanLoopConfig") humanLoopConfig: option<humanLoopConfig>,
@as("MinConfidence") minConfidence: option<percent>,
@as("Image") image: image
}
  type response = {
@as("HumanLoopActivationOutput") humanLoopActivationOutput: option<humanLoopActivationOutput>,
@as("ModerationModelVersion") moderationModelVersion: option<string_>,
@as("ModerationLabels") moderationLabels: option<moderationLabels>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectModerationLabelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTextDetection = {
  type t;
  type request = {
@as("Filters") filters: option<startTextDetectionFilters>,
@as("JobTag") jobTag: option<jobTag>,
@as("NotificationChannel") notificationChannel: option<notificationChannel>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Video") video: video
}
  type response = {
@as("JobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "StartTextDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchFacesByImage = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: option<qualityFilter>,
@as("FaceMatchThreshold") faceMatchThreshold: option<percent>,
@as("MaxFaces") maxFaces: option<maxFaces>,
@as("Image") image: image,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("FaceMatches") faceMatches: option<faceMatchList>,
@as("SearchedFaceConfidence") searchedFaceConfidence: option<percent>,
@as("SearchedFaceBoundingBox") searchedFaceBoundingBox: option<boundingBox>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "SearchFacesByImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchFaces = {
  type t;
  type request = {
@as("FaceMatchThreshold") faceMatchThreshold: option<percent>,
@as("MaxFaces") maxFaces: option<maxFaces>,
@as("FaceId") faceId: faceId,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("FaceMatches") faceMatches: option<faceMatchList>,
@as("SearchedFaceId") searchedFaceId: option<faceId>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "SearchFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectFaces = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributes>,
@as("Image") image: image
}
  type response = {
@as("OrientationCorrection") orientationCorrection: option<orientationCorrection>,
@as("FaceDetails") faceDetails: option<faceDetailList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RecognizeCelebrities = {
  type t;
  type request = {
@as("Image") image: image
}
  type response = {
@as("OrientationCorrection") orientationCorrection: option<orientationCorrection>,
@as("UnrecognizedFaces") unrecognizedFaces: option<comparedFaceList>,
@as("CelebrityFaces") celebrityFaces: option<celebrityList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "RecognizeCelebritiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module IndexFaces = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: option<qualityFilter>,
@as("MaxFaces") maxFaces: option<maxFacesToIndex>,
@as("DetectionAttributes") detectionAttributes: option<attributes>,
@as("ExternalImageId") externalImageId: option<externalImageId>,
@as("Image") image: image,
@as("CollectionId") collectionId: collectionId
}
  type response = {
@as("UnindexedFaces") unindexedFaces: option<unindexedFaces>,
@as("FaceModelVersion") faceModelVersion: option<string_>,
@as("OrientationCorrection") orientationCorrection: option<orientationCorrection>,
@as("FaceRecords") faceRecords: option<faceRecordList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "IndexFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFaceDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("Faces") faces: option<faceDetections>,
@as("NextToken") nextToken: option<paginationToken>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetFaceDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectText = {
  type t;
  type request = {
@as("Filters") filters: option<detectTextFilters>,
@as("Image") image: image
}
  type response = {
@as("TextModelVersion") textModelVersion: option<string_>,
@as("TextDetections") textDetections: option<textDetectionList>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectTextCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectLabels = {
  type t;
  type request = {
@as("MinConfidence") minConfidence: option<percent>,
@as("MaxLabels") maxLabels: option<uinteger>,
@as("Image") image: image
}
  type response = {
@as("LabelModelVersion") labelModelVersion: option<string_>,
@as("OrientationCorrection") orientationCorrection: option<orientationCorrection>,
@as("Labels") labels: option<labels>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectLabelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectCustomLabels = {
  type t;
  type request = {
@as("MinConfidence") minConfidence: option<percent>,
@as("MaxResults") maxResults: option<uinteger>,
@as("Image") image: image,
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
  type response = {
@as("CustomLabels") customLabels: option<customLabels>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectCustomLabelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProjectVersion = {
  type t;
  type request = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("Tags") tags: option<tagMap>,
@as("TestingData") testingData: testingData,
@as("TrainingData") trainingData: trainingData,
@as("OutputConfig") outputConfig: outputConfig,
@as("VersionName") versionName: versionName,
@as("ProjectArn") projectArn: projectArn
}
  type response = {
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "CreateProjectVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CompareFaces = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: option<qualityFilter>,
@as("SimilarityThreshold") similarityThreshold: option<percent>,
@as("TargetImage") targetImage: image,
@as("SourceImage") sourceImage: image
}
  type response = {
@as("TargetImageOrientationCorrection") targetImageOrientationCorrection: option<orientationCorrection>,
@as("SourceImageOrientationCorrection") sourceImageOrientationCorrection: option<orientationCorrection>,
@as("UnmatchedFaces") unmatchedFaces: option<compareFacesUnmatchList>,
@as("FaceMatches") faceMatches: option<compareFacesMatchList>,
@as("SourceImageFace") sourceImageFace: option<comparedSourceImageFace>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "CompareFacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTextDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("TextModelVersion") textModelVersion: option<string_>,
@as("NextToken") nextToken: option<paginationToken>,
@as("TextDetections") textDetections: option<textDetectionResults>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetTextDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPersonTracking = {
  type t;
  type request = {
@as("SortBy") sortBy: option<personTrackingSortBy>,
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("Persons") persons: option<personDetections>,
@as("NextToken") nextToken: option<paginationToken>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetPersonTrackingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLabelDetection = {
  type t;
  type request = {
@as("SortBy") sortBy: option<labelDetectionSortBy>,
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("LabelModelVersion") labelModelVersion: option<string_>,
@as("Labels") labels: option<labelDetections>,
@as("NextToken") nextToken: option<paginationToken>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetLabelDetectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFaceSearch = {
  type t;
  type request = {
@as("SortBy") sortBy: option<faceSearchSortBy>,
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("Persons") persons: option<personMatches>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("NextToken") nextToken: option<paginationToken>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetFaceSearchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCelebrityRecognition = {
  type t;
  type request = {
@as("SortBy") sortBy: option<celebrityRecognitionSortBy>,
@as("NextToken") nextToken: option<paginationToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("JobId") jobId: jobId
}
  type response = {
@as("Celebrities") celebrities: option<celebrityRecognitions>,
@as("NextToken") nextToken: option<paginationToken>,
@as("VideoMetadata") videoMetadata: option<videoMetadata>,
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("JobStatus") jobStatus: option<videoJobStatus>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "GetCelebrityRecognitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetectProtectiveEquipment = {
  type t;
  type request = {
@as("SummarizationAttributes") summarizationAttributes: option<protectiveEquipmentSummarizationAttributes>,
@as("Image") image: image
}
  type response = {
@as("Summary") summary: option<protectiveEquipmentSummary>,
@as("Persons") persons: option<protectiveEquipmentPersons>,
@as("ProtectiveEquipmentModelVersion") protectiveEquipmentModelVersion: option<string_>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DetectProtectiveEquipmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProjectVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<projectVersionsPageSize>,
@as("NextToken") nextToken: option<extendedPaginationToken>,
@as("VersionNames") versionNames: option<versionNames>,
@as("ProjectArn") projectArn: projectArn
}
  type response = {
@as("NextToken") nextToken: option<extendedPaginationToken>,
@as("ProjectVersionDescriptions") projectVersionDescriptions: option<projectVersionDescriptions>
}
  @module("@aws-sdk/client-rekognition") @new external new_: (request) => t = "DescribeProjectVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
