type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type videoJobStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type versionName = string
type url = string
type uLong = float;
type uInteger = int;
type amazonawsTimestamp = float;
type timecode = string
type textTypes = [@as("WORD") #WORD | @as("LINE") #LINE]
type technicalCueType = [@as("BlackFrames") #BlackFrames | @as("EndCredits") #EndCredits | @as("ColorBars") #ColorBars]
type tagValue = string
type tagKey = string
type synthesizedJsonHumanLoopActivationConditionsEvaluationResults = string
type amazonawsString = string
type streamProcessorStatus = [@as("STOPPING") #STOPPING | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("STOPPED") #STOPPED]
type streamProcessorName = string
type streamProcessorArn = string
type statusMessage = string
type segmentType = [@as("SHOT") #SHOT | @as("TECHNICAL_CUE") #TECHNICAL_CUE]
type segmentConfidence = float;
type sNSTopicArn = string
type s3ObjectVersion = string
type s3ObjectName = string
type s3KeyPrefix = string
type s3Bucket = string
type roleArn = string
type resourceArn = string
type rekognitionUniqueId = string
type reason = [@as("LOW_FACE_QUALITY") #LOW_FACE_QUALITY | @as("SMALL_BOUNDING_BOX") #SMALL_BOUNDING_BOX | @as("LOW_CONFIDENCE") #LOW_CONFIDENCE | @as("LOW_SHARPNESS") #LOW_SHARPNESS | @as("LOW_BRIGHTNESS") #LOW_BRIGHTNESS | @as("EXTREME_POSE") #EXTREME_POSE | @as("EXCEEDS_MAX_FACES") #EXCEEDS_MAX_FACES]
type qualityFilter = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("AUTO") #AUTO | @as("NONE") #NONE]
type protectiveEquipmentType = [@as("HEAD_COVER") #HEAD_COVER | @as("HAND_COVER") #HAND_COVER | @as("FACE_COVER") #FACE_COVER]
type projectsPageSize = int;
type projectVersionsPageSize = int;
type projectVersionStatus = [@as("DELETING") #DELETING | @as("STOPPED") #STOPPED | @as("STOPPING") #STOPPING | @as("FAILED") #FAILED | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("TRAINING_FAILED") #TRAINING_FAILED | @as("TRAINING_COMPLETED") #TRAINING_COMPLETED | @as("TRAINING_IN_PROGRESS") #TRAINING_IN_PROGRESS]
type projectVersionArn = string
type projectStatus = [@as("DELETING") #DELETING | @as("CREATED") #CREATED | @as("CREATING") #CREATING]
type projectName = string
type projectArn = string
type personTrackingSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("INDEX") #INDEX]
type personIndex = float;
type percent = float;
type paginationToken = string
type pageSize = int;
type orientationCorrection = [@as("ROTATE_270") #ROTATE_270 | @as("ROTATE_180") #ROTATE_180 | @as("ROTATE_90") #ROTATE_90 | @as("ROTATE_0") #ROTATE_0]
type maxResults = int;
type maxFacesToIndex = int;
type maxFaces = int;
type landmarkType = [@as("upperJawlineRight") #upperJawlineRight | @as("midJawlineRight") #midJawlineRight | @as("chinBottom") #chinBottom | @as("midJawlineLeft") #midJawlineLeft | @as("upperJawlineLeft") #upperJawlineLeft | @as("rightPupil") #rightPupil | @as("leftPupil") #leftPupil | @as("mouthDown") #mouthDown | @as("mouthUp") #mouthUp | @as("noseRight") #noseRight | @as("noseLeft") #noseLeft | @as("rightEyeDown") #rightEyeDown | @as("rightEyeUp") #rightEyeUp | @as("rightEyeRight") #rightEyeRight | @as("rightEyeLeft") #rightEyeLeft | @as("leftEyeDown") #leftEyeDown | @as("leftEyeUp") #leftEyeUp | @as("leftEyeRight") #leftEyeRight | @as("leftEyeLeft") #leftEyeLeft | @as("rightEyeBrowUp") #rightEyeBrowUp | @as("rightEyeBrowRight") #rightEyeBrowRight | @as("rightEyeBrowLeft") #rightEyeBrowLeft | @as("leftEyeBrowUp") #leftEyeBrowUp | @as("leftEyeBrowRight") #leftEyeBrowRight | @as("leftEyeBrowLeft") #leftEyeBrowLeft | @as("mouthRight") #mouthRight | @as("mouthLeft") #mouthLeft | @as("nose") #nose | @as("eyeRight") #eyeRight | @as("eyeLeft") #eyeLeft]
type labelDetectionSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("NAME") #NAME]
type kmsKeyId = string
type kinesisVideoArn = string
type kinesisDataArn = string
type jobTag = string
type jobId = string
type inferenceUnits = int;
type imageId = string
type imageBlob = NodeJs.Buffer.t;
type humanLoopName = string
type humanLoopArn = string
type humanLoopActivationReason = string
type genderType = [@as("Female") #Female | @as("Male") #Male]
type flowDefinitionArn = string
type amazonawsFloat = float;
type faceSearchSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("INDEX") #INDEX]
type faceId = string
type faceAttributes = [@as("ALL") #ALL | @as("DEFAULT") #DEFAULT]
type externalImageId = string
type extendedPaginationToken = string
type emotionName = [@as("FEAR") #FEAR | @as("UNKNOWN") #UNKNOWN | @as("CALM") #CALM | @as("SURPRISED") #SURPRISED | @as("DISGUSTED") #DISGUSTED | @as("CONFUSED") #CONFUSED | @as("ANGRY") #ANGRY | @as("SAD") #SAD | @as("HAPPY") #HAPPY]
type degree = float;
type dateTime = Js.Date.t;
type contentModerationSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("NAME") #NAME]
type contentClassifier = [@as("FreeOfAdultContent") #FreeOfAdultContent | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation]
type collectionId = string
type clientRequestToken = string
type celebrityRecognitionSortBy = [@as("TIMESTAMP") #TIMESTAMP | @as("ID") #ID]
type boundingBoxWidth = float;
type boundingBoxHeight = float;
type amazonawsBoolean = bool;
type bodyPart = [@as("RIGHT_HAND") #RIGHT_HAND | @as("LEFT_HAND") #LEFT_HAND | @as("HEAD") #HEAD | @as("FACE") #FACE]
type attribute = [@as("ALL") #ALL | @as("DEFAULT") #DEFAULT]
type videoMetadata = {
@as("FrameWidth") frameWidth: uLong,
@as("FrameHeight") frameHeight: uLong,
@as("FrameRate") frameRate: amazonawsFloat,
@as("Format") format: amazonawsString,
@as("DurationMillis") durationMillis: uLong,
@as("Codec") codec: amazonawsString
}
type versionNames = array<versionName>
type urls = array<url>
type technicalCueSegment = {
@as("Confidence") confidence: segmentConfidence,
@as("Type") type_: technicalCueType
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type sunglasses = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type streamProcessor = {
@as("Status") status: streamProcessorStatus,
@as("Name") name: streamProcessorName
}
type startTechnicalCueDetectionFilter = {
@as("MinSegmentConfidence") minSegmentConfidence: segmentConfidence
}
type startShotDetectionFilter = {
@as("MinSegmentConfidence") minSegmentConfidence: segmentConfidence
}
type smile = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type shotSegment = {
@as("Confidence") confidence: segmentConfidence,
@as("Index") index: uLong
}
type segmentTypes = array<segmentType>
type segmentTypeInfo = {
@as("ModelVersion") modelVersion: amazonawsString,
@as("Type") type_: segmentType
}
type s3Object = {
@as("Version") version: s3ObjectVersion,
@as("Name") name: s3ObjectName,
@as("Bucket") bucket: s3Bucket
}
type reasons = array<reason>
type protectiveEquipmentTypes = array<protectiveEquipmentType>
type protectiveEquipmentPersonIds = array<uInteger>
type projectDescription = {
@as("Status") status: projectStatus,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("ProjectArn") projectArn: projectArn
}
type pose = {
@as("Pitch") pitch: degree,
@as("Yaw") yaw: degree,
@as("Roll") roll: degree
}
type point = {
@as("Y") y: amazonawsFloat,
@as("X") x: amazonawsFloat
}
type parent = {
@as("Name") name: amazonawsString
}
type outputConfig = {
@as("S3KeyPrefix") s3KeyPrefix: s3KeyPrefix,
@as("S3Bucket") s3Bucket: s3Bucket
}
type notificationChannel = {
@as("RoleArn") roleArn: option<roleArn>,
@as("SNSTopicArn") sNSTopicArn: option<sNSTopicArn>
}
type mustache = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type mouthOpen = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type moderationLabel = {
@as("ParentName") parentName: amazonawsString,
@as("Name") name: amazonawsString,
@as("Confidence") confidence: percent
}
type landmark = {
@as("Y") y: amazonawsFloat,
@as("X") x: amazonawsFloat,
@as("Type") type_: landmarkType
}
type kinesisVideoStream = {
@as("Arn") arn: kinesisVideoArn
}
type kinesisDataStream = {
@as("Arn") arn: kinesisDataArn
}
type imageQuality = {
@as("Sharpness") sharpness: amazonawsFloat,
@as("Brightness") brightness: amazonawsFloat
}
type humanLoopActivationReasons = array<humanLoopActivationReason>
type gender = {
@as("Confidence") confidence: percent,
@as("Value") value: genderType
}
type faceSearchSettings = {
@as("FaceMatchThreshold") faceMatchThreshold: percent,
@as("CollectionId") collectionId: collectionId
}
type faceModelVersionList = array<amazonawsString>
type faceIdList = array<faceId>
type eyeglasses = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type eyeOpen = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type emotion = {
@as("Confidence") confidence: percent,
@as("Type") type_: emotionName
}
type detectionFilter = {
@as("MinBoundingBoxWidth") minBoundingBoxWidth: boundingBoxWidth,
@as("MinBoundingBoxHeight") minBoundingBoxHeight: boundingBoxHeight,
@as("MinConfidence") minConfidence: percent
}
type coversBodyPart = {
@as("Value") value: amazonawsBoolean,
@as("Confidence") confidence: percent
}
type contentClassifiers = array<contentClassifier>
type collectionIdList = array<collectionId>
type boundingBox = {
@as("Top") top: amazonawsFloat,
@as("Left") left: amazonawsFloat,
@as("Height") height: amazonawsFloat,
@as("Width") width: amazonawsFloat
}
type beard = {
@as("Confidence") confidence: percent,
@as("Value") value: amazonawsBoolean
}
type audioMetadata = {
@as("NumberOfChannels") numberOfChannels: uLong,
@as("SampleRate") sampleRate: uLong,
@as("DurationMillis") durationMillis: uLong,
@as("Codec") codec: amazonawsString
}
type attributes = array<attribute>
type ageRange = {
@as("High") high: uInteger,
@as("Low") low: uInteger
}
type videoMetadataList = array<videoMetadata>
type video = {
@as("S3Object") s3Object: s3Object
}
type summary = {
@as("S3Object") s3Object: s3Object
}
type streamProcessorSettings = {
@as("FaceSearch") faceSearch: faceSearchSettings
}
type streamProcessorOutput = {
@as("KinesisDataStream") kinesisDataStream: kinesisDataStream
}
type streamProcessorList = array<streamProcessor>
type streamProcessorInput = {
@as("KinesisVideoStream") kinesisVideoStream: kinesisVideoStream
}
type startSegmentDetectionFilters = {
@as("ShotFilter") shotFilter: startShotDetectionFilter,
@as("TechnicalCueFilter") technicalCueFilter: startTechnicalCueDetectionFilter
}
type segmentTypesInfo = array<segmentTypeInfo>
type segmentDetection = {
@as("ShotSegment") shotSegment: shotSegment,
@as("TechnicalCueSegment") technicalCueSegment: technicalCueSegment,
@as("DurationSMPTE") durationSMPTE: timecode,
@as("EndTimecodeSMPTE") endTimecodeSMPTE: timecode,
@as("StartTimecodeSMPTE") startTimecodeSMPTE: timecode,
@as("DurationMillis") durationMillis: uLong,
@as("EndTimestampMillis") endTimestampMillis: amazonawsTimestamp,
@as("StartTimestampMillis") startTimestampMillis: amazonawsTimestamp,
@as("Type") type_: segmentType
}
type regionOfInterest = {
@as("BoundingBox") boundingBox: boundingBox
}
type protectiveEquipmentSummary = {
@as("PersonsIndeterminate") personsIndeterminate: protectiveEquipmentPersonIds,
@as("PersonsWithoutRequiredEquipment") personsWithoutRequiredEquipment: protectiveEquipmentPersonIds,
@as("PersonsWithRequiredEquipment") personsWithRequiredEquipment: protectiveEquipmentPersonIds
}
type protectiveEquipmentSummarizationAttributes = {
@as("RequiredEquipmentTypes") requiredEquipmentTypes: option<protectiveEquipmentTypes>,
@as("MinConfidence") minConfidence: option<percent>
}
type projectDescriptions = array<projectDescription>
type polygon = array<point>
type parents = array<parent>
type moderationLabels = array<moderationLabel>
type landmarks = array<landmark>
type instance = {
@as("Confidence") confidence: percent,
@as("BoundingBox") boundingBox: boundingBox
}
type image = {
@as("S3Object") s3Object: s3Object,
@as("Bytes") bytes: imageBlob
}
type humanLoopDataAttributes = {
@as("ContentClassifiers") contentClassifiers: contentClassifiers
}
type humanLoopActivationOutput = {
@as("HumanLoopActivationConditionsEvaluationResults") humanLoopActivationConditionsEvaluationResults: synthesizedJsonHumanLoopActivationConditionsEvaluationResults,
@as("HumanLoopActivationReasons") humanLoopActivationReasons: humanLoopActivationReasons,
@as("HumanLoopArn") humanLoopArn: humanLoopArn
}
type groundTruthManifest = {
@as("S3Object") s3Object: s3Object
}
type face = {
@as("Confidence") confidence: percent,
@as("ExternalImageId") externalImageId: externalImageId,
@as("ImageId") imageId: imageId,
@as("BoundingBox") boundingBox: boundingBox,
@as("FaceId") faceId: faceId
}
type equipmentDetection = {
@as("CoversBodyPart") coversBodyPart: coversBodyPart,
@as("Type") type_: protectiveEquipmentType,
@as("Confidence") confidence: percent,
@as("BoundingBox") boundingBox: boundingBox
}
type emotions = array<emotion>
type contentModerationDetection = {
@as("ModerationLabel") moderationLabel: moderationLabel,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type comparedSourceImageFace = {
@as("Confidence") confidence: percent,
@as("BoundingBox") boundingBox: boundingBox
}
type audioMetadataList = array<audioMetadata>
type segmentDetections = array<segmentDetection>
type regionsOfInterest = array<regionOfInterest>
type instances = array<instance>
type humanLoopConfig = {
@as("DataAttributes") dataAttributes: humanLoopDataAttributes,
@as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
type geometry = {
@as("Polygon") polygon: polygon,
@as("BoundingBox") boundingBox: boundingBox
}
type faceMatch = {
@as("Face") face: face,
@as("Similarity") similarity: percent
}
type faceList = array<face>
type faceDetail = {
@as("Confidence") confidence: percent,
@as("Quality") quality: imageQuality,
@as("Pose") pose: pose,
@as("Landmarks") landmarks: landmarks,
@as("Emotions") emotions: emotions,
@as("MouthOpen") mouthOpen: mouthOpen,
@as("EyesOpen") eyesOpen: eyeOpen,
@as("Mustache") mustache: mustache,
@as("Beard") beard: beard,
@as("Gender") gender: gender,
@as("Sunglasses") sunglasses: sunglasses,
@as("Eyeglasses") eyeglasses: eyeglasses,
@as("Smile") smile: smile,
@as("AgeRange") ageRange: ageRange,
@as("BoundingBox") boundingBox: boundingBox
}
type evaluationResult = {
@as("Summary") summary: summary,
@as("F1Score") f1Score: amazonawsFloat
}
type equipmentDetections = array<equipmentDetection>
type contentModerationDetections = array<contentModerationDetection>
type comparedFace = {
@as("Quality") quality: imageQuality,
@as("Pose") pose: pose,
@as("Landmarks") landmarks: landmarks,
@as("Confidence") confidence: percent,
@as("BoundingBox") boundingBox: boundingBox
}
type asset = {
@as("GroundTruthManifest") groundTruthManifest: groundTruthManifest
}
type unindexedFace = {
@as("FaceDetail") faceDetail: faceDetail,
@as("Reasons") reasons: reasons
}
type textDetection = {
@as("Geometry") geometry: geometry,
@as("Confidence") confidence: percent,
@as("ParentId") parentId: uInteger,
@as("Id") id: uInteger,
@as("Type") type_: textTypes,
@as("DetectedText") detectedText: amazonawsString
}
type startTextDetectionFilters = {
@as("RegionsOfInterest") regionsOfInterest: regionsOfInterest,
@as("WordFilter") wordFilter: detectionFilter
}
type protectiveEquipmentBodyPart = {
@as("EquipmentDetections") equipmentDetections: equipmentDetections,
@as("Confidence") confidence: percent,
@as("Name") name: bodyPart
}
type personDetail = {
@as("Face") face: faceDetail,
@as("BoundingBox") boundingBox: boundingBox,
@as("Index") index: personIndex
}
type label = {
@as("Parents") parents: parents,
@as("Instances") instances: instances,
@as("Confidence") confidence: percent,
@as("Name") name: amazonawsString
}
type faceRecord = {
@as("FaceDetail") faceDetail: faceDetail,
@as("Face") face: face
}
type faceMatchList = array<faceMatch>
type faceDetection = {
@as("Face") face: faceDetail,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type faceDetailList = array<faceDetail>
type detectTextFilters = {
@as("RegionsOfInterest") regionsOfInterest: regionsOfInterest,
@as("WordFilter") wordFilter: detectionFilter
}
type customLabel = {
@as("Geometry") geometry: geometry,
@as("Confidence") confidence: percent,
@as("Name") name: amazonawsString
}
type comparedFaceList = array<comparedFace>
type compareFacesUnmatchList = array<comparedFace>
type compareFacesMatch = {
@as("Face") face: comparedFace,
@as("Similarity") similarity: percent
}
type celebrityDetail = {
@as("Face") face: faceDetail,
@as("BoundingBox") boundingBox: boundingBox,
@as("Confidence") confidence: percent,
@as("Id") id: rekognitionUniqueId,
@as("Name") name: amazonawsString,
@as("Urls") urls: urls
}
type celebrity = {
@as("MatchConfidence") matchConfidence: percent,
@as("Face") face: comparedFace,
@as("Id") id: rekognitionUniqueId,
@as("Name") name: amazonawsString,
@as("Urls") urls: urls
}
type assets = array<asset>
type validationData = {
@as("Assets") assets: assets
}
type unindexedFaces = array<unindexedFace>
type trainingData = {
@as("Assets") assets: assets
}
type textDetectionResult = {
@as("TextDetection") textDetection: textDetection,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type textDetectionList = array<textDetection>
type testingData = {
@as("AutoCreate") autoCreate: amazonawsBoolean,
@as("Assets") assets: assets
}
type personMatch = {
@as("FaceMatches") faceMatches: faceMatchList,
@as("Person") person: personDetail,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type personDetection = {
@as("Person") person: personDetail,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type labels = array<label>
type labelDetection = {
@as("Label") label: label,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type faceRecordList = array<faceRecord>
type faceDetections = array<faceDetection>
type customLabels = array<customLabel>
type compareFacesMatchList = array<compareFacesMatch>
type celebrityRecognition = {
@as("Celebrity") celebrity: celebrityDetail,
@as("Timestamp") timestamp: amazonawsTimestamp
}
type celebrityList = array<celebrity>
type bodyParts = array<protectiveEquipmentBodyPart>
type trainingDataResult = {
@as("Validation") validation: validationData,
@as("Output") output: trainingData,
@as("Input") input: trainingData
}
type textDetectionResults = array<textDetectionResult>
type testingDataResult = {
@as("Validation") validation: validationData,
@as("Output") output: testingData,
@as("Input") input: testingData
}
type protectiveEquipmentPerson = {
@as("Id") id: uInteger,
@as("Confidence") confidence: percent,
@as("BoundingBox") boundingBox: boundingBox,
@as("BodyParts") bodyParts: bodyParts
}
type personMatches = array<personMatch>
type personDetections = array<personDetection>
type labelDetections = array<labelDetection>
type celebrityRecognitions = array<celebrityRecognition>
type protectiveEquipmentPersons = array<protectiveEquipmentPerson>
type projectVersionDescription = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("ManifestSummary") manifestSummary: groundTruthManifest,
@as("EvaluationResult") evaluationResult: evaluationResult,
@as("TestingDataResult") testingDataResult: testingDataResult,
@as("TrainingDataResult") trainingDataResult: trainingDataResult,
@as("OutputConfig") outputConfig: outputConfig,
@as("TrainingEndTimestamp") trainingEndTimestamp: dateTime,
@as("BillableTrainingTimeInSeconds") billableTrainingTimeInSeconds: uLong,
@as("StatusMessage") statusMessage: statusMessage,
@as("Status") status: projectVersionStatus,
@as("MinInferenceUnits") minInferenceUnits: inferenceUnits,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
type projectVersionDescriptions = array<projectVersionDescription>
type clientType;
@module("@aws-sdk/client-rekognition") @new external createClient: unit => clientType = "RekognitionClient";
module StopStreamProcessor = {
  type t;
  type request = {
@as("Name") name: option<streamProcessorName>
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StopStreamProcessorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopProjectVersion = {
  type t;
  type request = {
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
  type response = {
@as("Status") status: projectVersionStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StopProjectVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartStreamProcessor = {
  type t;
  type request = {
@as("Name") name: option<streamProcessorName>
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartStreamProcessorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartProjectVersion = {
  type t;
  type request = {
@as("MinInferenceUnits") minInferenceUnits: option<inferenceUnits>,
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
  type response = {
@as("Status") status: projectVersionStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartProjectVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCollection = {
  type t;
  type request = {
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("CollectionARN") collectionARN: amazonawsString,
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("FaceCount") faceCount: uLong
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DescribeCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamProcessor = {
  type t;
  type request = {
@as("Name") name: option<streamProcessorName>
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DeleteStreamProcessorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProjectVersion = {
  type t;
  type request = {
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
  type response = {
@as("Status") status: projectVersionStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DeleteProjectVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("ProjectArn") projectArn: option<projectArn>
}
  type response = {
@as("Status") status: projectStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCollection = {
  type t;
  type request = {
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("StatusCode") statusCode: uInteger
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DeleteCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("ProjectName") projectName: option<projectName>
}
  type response = {
@as("ProjectArn") projectArn: projectArn
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCollections = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("FaceModelVersions") faceModelVersions: faceModelVersionList,
@as("NextToken") nextToken: paginationToken,
@as("CollectionIds") collectionIds: collectionIdList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "ListCollectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCelebrityInfo = {
  type t;
  type request = {
@as("Id") id: option<rekognitionUniqueId>
}
  type response = {
@as("Name") name: amazonawsString,
@as("Urls") urls: urls
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetCelebrityInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFaces = {
  type t;
  type request = {
@as("FaceIds") faceIds: option<faceIdList>,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("DeletedFaces") deletedFaces: faceIdList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DeleteFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCollection = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("CollectionArn") collectionArn: amazonawsString,
@as("StatusCode") statusCode: uInteger
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "CreateCollectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSegmentDetection = {
  type t;
  type request = {
@as("SegmentTypes") segmentTypes: option<segmentTypes>,
@as("Filters") filters: startSegmentDetectionFilters,
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartSegmentDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartPersonTracking = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartPersonTrackingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartLabelDetection = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("MinConfidence") minConfidence: percent,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartLabelDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFaceSearch = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("CollectionId") collectionId: option<collectionId>,
@as("FaceMatchThreshold") faceMatchThreshold: percent,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartFaceSearchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFaceDetection = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("FaceAttributes") faceAttributes: faceAttributes,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartFaceDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartContentModeration = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("MinConfidence") minConfidence: percent,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartContentModerationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCelebrityRecognition = {
  type t;
  type request = {
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartCelebrityRecognitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamProcessors = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("StreamProcessors") streamProcessors: streamProcessorList,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "ListStreamProcessorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStreamProcessor = {
  type t;
  type request = {
@as("Name") name: option<streamProcessorName>
}
  type response = {
@as("Settings") settings: streamProcessorSettings,
@as("RoleArn") roleArn: roleArn,
@as("Output") output: streamProcessorOutput,
@as("Input") input: streamProcessorInput,
@as("LastUpdateTimestamp") lastUpdateTimestamp: dateTime,
@as("CreationTimestamp") creationTimestamp: dateTime,
@as("StatusMessage") statusMessage: amazonawsString,
@as("Status") status: streamProcessorStatus,
@as("StreamProcessorArn") streamProcessorArn: streamProcessorArn,
@as("Name") name: streamProcessorName
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DescribeStreamProcessorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProjects = {
  type t;
  type request = {
@as("MaxResults") maxResults: projectsPageSize,
@as("NextToken") nextToken: extendedPaginationToken
}
  type response = {
@as("NextToken") nextToken: extendedPaginationToken,
@as("ProjectDescriptions") projectDescriptions: projectDescriptions
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DescribeProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamProcessor = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("RoleArn") roleArn: option<roleArn>,
@as("Settings") settings: option<streamProcessorSettings>,
@as("Name") name: option<streamProcessorName>,
@as("Output") output: option<streamProcessorOutput>,
@as("Input") input: option<streamProcessorInput>
}
  type response = {
@as("StreamProcessorArn") streamProcessorArn: streamProcessorArn
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "CreateStreamProcessorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFaces = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: paginationToken,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("Faces") faces: faceList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "ListFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSegmentDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("SelectedSegmentTypes") selectedSegmentTypes: segmentTypesInfo,
@as("Segments") segments: segmentDetections,
@as("NextToken") nextToken: paginationToken,
@as("AudioMetadata") audioMetadata: audioMetadataList,
@as("VideoMetadata") videoMetadata: videoMetadataList,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetSegmentDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContentModeration = {
  type t;
  type request = {
@as("SortBy") sortBy: contentModerationSortBy,
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("ModerationModelVersion") moderationModelVersion: amazonawsString,
@as("NextToken") nextToken: paginationToken,
@as("ModerationLabels") moderationLabels: contentModerationDetections,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetContentModerationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectModerationLabels = {
  type t;
  type request = {
@as("HumanLoopConfig") humanLoopConfig: humanLoopConfig,
@as("MinConfidence") minConfidence: percent,
@as("Image") image: option<image>
}
  type response = {
@as("HumanLoopActivationOutput") humanLoopActivationOutput: humanLoopActivationOutput,
@as("ModerationModelVersion") moderationModelVersion: amazonawsString,
@as("ModerationLabels") moderationLabels: moderationLabels
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectModerationLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTextDetection = {
  type t;
  type request = {
@as("Filters") filters: startTextDetectionFilters,
@as("JobTag") jobTag: jobTag,
@as("NotificationChannel") notificationChannel: notificationChannel,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Video") video: option<video>
}
  type response = {
@as("JobId") jobId: jobId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "StartTextDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchFacesByImage = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: qualityFilter,
@as("FaceMatchThreshold") faceMatchThreshold: percent,
@as("MaxFaces") maxFaces: maxFaces,
@as("Image") image: option<image>,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("FaceMatches") faceMatches: faceMatchList,
@as("SearchedFaceConfidence") searchedFaceConfidence: percent,
@as("SearchedFaceBoundingBox") searchedFaceBoundingBox: boundingBox
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "SearchFacesByImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchFaces = {
  type t;
  type request = {
@as("FaceMatchThreshold") faceMatchThreshold: percent,
@as("MaxFaces") maxFaces: maxFaces,
@as("FaceId") faceId: option<faceId>,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("FaceMatches") faceMatches: faceMatchList,
@as("SearchedFaceId") searchedFaceId: faceId
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "SearchFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectFaces = {
  type t;
  type request = {
@as("Attributes") attributes: attributes,
@as("Image") image: option<image>
}
  type response = {
@as("OrientationCorrection") orientationCorrection: orientationCorrection,
@as("FaceDetails") faceDetails: faceDetailList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RecognizeCelebrities = {
  type t;
  type request = {
@as("Image") image: option<image>
}
  type response = {
@as("OrientationCorrection") orientationCorrection: orientationCorrection,
@as("UnrecognizedFaces") unrecognizedFaces: comparedFaceList,
@as("CelebrityFaces") celebrityFaces: celebrityList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "RecognizeCelebritiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module IndexFaces = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: qualityFilter,
@as("MaxFaces") maxFaces: maxFacesToIndex,
@as("DetectionAttributes") detectionAttributes: attributes,
@as("ExternalImageId") externalImageId: externalImageId,
@as("Image") image: option<image>,
@as("CollectionId") collectionId: option<collectionId>
}
  type response = {
@as("UnindexedFaces") unindexedFaces: unindexedFaces,
@as("FaceModelVersion") faceModelVersion: amazonawsString,
@as("OrientationCorrection") orientationCorrection: orientationCorrection,
@as("FaceRecords") faceRecords: faceRecordList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "IndexFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFaceDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("Faces") faces: faceDetections,
@as("NextToken") nextToken: paginationToken,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetFaceDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectText = {
  type t;
  type request = {
@as("Filters") filters: detectTextFilters,
@as("Image") image: option<image>
}
  type response = {
@as("TextModelVersion") textModelVersion: amazonawsString,
@as("TextDetections") textDetections: textDetectionList
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectTextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectLabels = {
  type t;
  type request = {
@as("MinConfidence") minConfidence: percent,
@as("MaxLabels") maxLabels: uInteger,
@as("Image") image: option<image>
}
  type response = {
@as("LabelModelVersion") labelModelVersion: amazonawsString,
@as("OrientationCorrection") orientationCorrection: orientationCorrection,
@as("Labels") labels: labels
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectCustomLabels = {
  type t;
  type request = {
@as("MinConfidence") minConfidence: percent,
@as("MaxResults") maxResults: uInteger,
@as("Image") image: option<image>,
@as("ProjectVersionArn") projectVersionArn: option<projectVersionArn>
}
  type response = {
@as("CustomLabels") customLabels: customLabels
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectCustomLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProjectVersion = {
  type t;
  type request = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Tags") tags: tagMap,
@as("TestingData") testingData: option<testingData>,
@as("TrainingData") trainingData: option<trainingData>,
@as("OutputConfig") outputConfig: option<outputConfig>,
@as("VersionName") versionName: option<versionName>,
@as("ProjectArn") projectArn: option<projectArn>
}
  type response = {
@as("ProjectVersionArn") projectVersionArn: projectVersionArn
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "CreateProjectVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompareFaces = {
  type t;
  type request = {
@as("QualityFilter") qualityFilter: qualityFilter,
@as("SimilarityThreshold") similarityThreshold: percent,
@as("TargetImage") targetImage: option<image>,
@as("SourceImage") sourceImage: option<image>
}
  type response = {
@as("TargetImageOrientationCorrection") targetImageOrientationCorrection: orientationCorrection,
@as("SourceImageOrientationCorrection") sourceImageOrientationCorrection: orientationCorrection,
@as("UnmatchedFaces") unmatchedFaces: compareFacesUnmatchList,
@as("FaceMatches") faceMatches: compareFacesMatchList,
@as("SourceImageFace") sourceImageFace: comparedSourceImageFace
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "CompareFacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTextDetection = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("TextModelVersion") textModelVersion: amazonawsString,
@as("NextToken") nextToken: paginationToken,
@as("TextDetections") textDetections: textDetectionResults,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetTextDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPersonTracking = {
  type t;
  type request = {
@as("SortBy") sortBy: personTrackingSortBy,
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("Persons") persons: personDetections,
@as("NextToken") nextToken: paginationToken,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetPersonTrackingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLabelDetection = {
  type t;
  type request = {
@as("SortBy") sortBy: labelDetectionSortBy,
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("LabelModelVersion") labelModelVersion: amazonawsString,
@as("Labels") labels: labelDetections,
@as("NextToken") nextToken: paginationToken,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetLabelDetectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFaceSearch = {
  type t;
  type request = {
@as("SortBy") sortBy: faceSearchSortBy,
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("Persons") persons: personMatches,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("NextToken") nextToken: paginationToken,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetFaceSearchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCelebrityRecognition = {
  type t;
  type request = {
@as("SortBy") sortBy: celebrityRecognitionSortBy,
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: maxResults,
@as("JobId") jobId: option<jobId>
}
  type response = {
@as("Celebrities") celebrities: celebrityRecognitions,
@as("NextToken") nextToken: paginationToken,
@as("VideoMetadata") videoMetadata: videoMetadata,
@as("StatusMessage") statusMessage: statusMessage,
@as("JobStatus") jobStatus: videoJobStatus
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "GetCelebrityRecognitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetectProtectiveEquipment = {
  type t;
  type request = {
@as("SummarizationAttributes") summarizationAttributes: protectiveEquipmentSummarizationAttributes,
@as("Image") image: option<image>
}
  type response = {
@as("Summary") summary: protectiveEquipmentSummary,
@as("Persons") persons: protectiveEquipmentPersons,
@as("ProtectiveEquipmentModelVersion") protectiveEquipmentModelVersion: amazonawsString
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DetectProtectiveEquipmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProjectVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: projectVersionsPageSize,
@as("NextToken") nextToken: extendedPaginationToken,
@as("VersionNames") versionNames: versionNames,
@as("ProjectArn") projectArn: option<projectArn>
}
  type response = {
@as("NextToken") nextToken: extendedPaginationToken,
@as("ProjectVersionDescriptions") projectVersionDescriptions: projectVersionDescriptions
}
  @module("@aws-sdk/client-rekognition") @new external new_: (Js.Promise.t<request>) => t = "DescribeProjectVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
