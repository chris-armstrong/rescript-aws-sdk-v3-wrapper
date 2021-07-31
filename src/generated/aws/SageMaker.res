type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sagemaker") @new
external createClient: unit => awsServiceClient = "SageMakerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workteamName = string
type workteamArn = string
type workforceName = string
type workforceArn = string
type waitIntervalInSeconds = int
type vpcId = string
type volumeSizeInGB = int
type versionedArnOrName = string
type variantWeight = float
type variantPropertyType = [
  | @as("DataCaptureConfig") #DataCaptureConfig
  | @as("DesiredWeight") #DesiredWeight
  | @as("DesiredInstanceCount") #DesiredInstanceCount
]
type variantName = string
type userProfileStatus = [
  | @as("Delete_Failed") #Delete_Failed
  | @as("Update_Failed") #Update_Failed
  | @as("Updating") #Updating
  | @as("Pending") #Pending
  | @as("InService") #InService
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
]
type userProfileSortKey = [
  | @as("LastModifiedTime") #LastModifiedTime
  | @as("CreationTime") #CreationTime
]
type userProfileName = string
type userProfileArn = string
type url = string
type trialSourceArn = string
type trialComponentStatusMessage = string
type trialComponentSourceArn = string
type trialComponentPrimaryStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type trialComponentKey64 = string
type trialComponentKey256 = string
type trialComponentArtifactValue = string
type trialComponentArn = string
type trialArn = string
type transformJobStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type transformJobName = string
type transformJobArn = string
type transformInstanceType = [
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
]
type transformInstanceCount = int
type transformEnvironmentValue = string
type transformEnvironmentKey = string
type trainingTimeInSeconds = int
type trainingJobStatusCounter = int
type trainingJobStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type trainingJobSortByOptions = [
  | @as("FinalObjectiveMetricValue") #FinalObjectiveMetricValue
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type trainingJobName = string
type trainingJobEarlyStoppingType = [@as("Auto") #Auto | @as("Off") #Off]
type trainingJobArn = string
type trainingInstanceType = [
  | @as("ml.c5n.18xlarge") #Ml_C5n_18xlarge
  | @as("ml.c5n.9xlarge") #Ml_C5n_9xlarge
  | @as("ml.c5n.4xlarge") #Ml_C5n_4xlarge
  | @as("ml.c5n.2xlarge") #Ml_C5n_2xlarge
  | @as("ml.c5n.xlarge") #Ml_C5n_Xlarge
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.p4d.24xlarge") #Ml_P4d_24xlarge
  | @as("ml.p3dn.24xlarge") #Ml_P3dn_24xlarge
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.g4dn.16xlarge") #Ml_G4dn_16xlarge
  | @as("ml.g4dn.12xlarge") #Ml_G4dn_12xlarge
  | @as("ml.g4dn.8xlarge") #Ml_G4dn_8xlarge
  | @as("ml.g4dn.4xlarge") #Ml_G4dn_4xlarge
  | @as("ml.g4dn.2xlarge") #Ml_G4dn_2xlarge
  | @as("ml.g4dn.xlarge") #Ml_G4dn_Xlarge
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
]
type trainingInstanceCount = int
type trainingInputMode = [@as("File") #File | @as("Pipe") #Pipe]
type trainingEnvironmentValue = string
type trainingEnvironmentKey = string
type trafficRoutingConfigType = [@as("CANARY") #CANARY | @as("ALL_AT_ONCE") #ALL_AT_ONCE]
type timestamp_ = Js.Date.t
type thingName = string
type terminationWaitInSeconds = int
type tenthFractionsOfACent = int
type templateUrl = string
type templateContentSha256 = string
type templateContent = string
type taskTitle = string
type taskTimeLimitInSeconds = int
type taskKeyword = string
type taskInput = string
type taskDescription = string
type taskCount = int
type taskAvailabilityLifetimeInSeconds = int
type targetPlatformOs = [@as("LINUX") #LINUX | @as("ANDROID") #ANDROID]
type targetPlatformArch = [
  | @as("ARM_EABIHF") #ARM_EABIHF
  | @as("ARM_EABI") #ARM_EABI
  | @as("ARM64") #ARM64
  | @as("X86") #X86
  | @as("X86_64") #X86_64
]
type targetPlatformAccelerator = [
  | @as("NVIDIA") #NVIDIA
  | @as("MALI") #MALI
  | @as("INTEL_GRAPHICS") #INTEL_GRAPHICS
]
type targetObjectiveMetricValue = float
type targetDevice = [
  | @as("jacinto_tda4vm") #Jacinto_Tda4vm
  | @as("coreml") #Coreml
  | @as("x86_win64") #X86_Win64
  | @as("x86_win32") #X86_Win32
  | @as("amba_cv22") #Amba_Cv22
  | @as("sitara_am57x") #Sitara_Am57x
  | @as("qcs603") #Qcs603
  | @as("qcs605") #Qcs605
  | @as("sbe_c") #Sbe_C
  | @as("aisage") #Aisage
  | @as("rk3288") #Rk3288
  | @as("rk3399") #Rk3399
  | @as("deeplens") #Deeplens
  | @as("imx8qm") #Imx8qm
  | @as("rasp3b") #Rasp3b
  | @as("jetson_xavier") #Jetson_Xavier
  | @as("jetson_nano") #Jetson_Nano
  | @as("jetson_tx2") #Jetson_Tx2
  | @as("jetson_tx1") #Jetson_Tx1
  | @as("ml_eia2") #Ml_Eia2
  | @as("ml_inf1") #Ml_Inf1
  | @as("ml_g4dn") #Ml_G4dn
  | @as("ml_p3") #Ml_P3
  | @as("ml_p2") #Ml_P2
  | @as("ml_c5") #Ml_C5
  | @as("ml_c4") #Ml_C4
  | @as("ml_m5") #Ml_M5
  | @as("ml_m4") #Ml_M4
  | @as("lambda") #Lambda
]
type targetAttributeName = string
type tagValue = string
type tagKey = string
type tableName = string
type synthesizedJsonHumanLoopActivationConditions = string
type success = bool
type subnetId = string
type stringParameterValue = string
type string64 = string
type string256 = string
type string2048 = string
type string200 = string
type string1024 = string
type string_ = string
type stepStatus = [
  | @as("Succeeded") #Succeeded
  | @as("Failed") #Failed
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Executing") #Executing
  | @as("Starting") #Starting
]
type stepName = string
type statusMessage = string
type statusDetails = string
type splitType = [
  | @as("TFRecord") #TFRecord
  | @as("RecordIO") #RecordIO
  | @as("Line") #Line
  | @as("None") #None
]
type sourceUri = string
type sourceType = string
type sortTrialsBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type sortTrialComponentsBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type sortPipelinesBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type sortPipelineExecutionsBy = [
  | @as("PipelineExecutionArn") #PipelineExecutionArn
  | @as("CreationTime") #CreationTime
]
type sortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type sortExperimentsBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type sortContextsBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type sortBy = [@as("Status") #Status | @as("CreationTime") #CreationTime | @as("Name") #Name]
type sortAssociationsBy = [
  | @as("CreationTime") #CreationTime
  | @as("DestinationType") #DestinationType
  | @as("SourceType") #SourceType
  | @as("DestinationArn") #DestinationArn
  | @as("SourceArn") #SourceArn
]
type sortArtifactsBy = [@as("CreationTime") #CreationTime]
type sortActionsBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type snsTopicArn = string
type singleSignOnUserIdentifier = string
type sessionExpirationDurationInSeconds = int
type serviceCatalogEntityId = string
type seed = float
type securityGroupId = string
type secretArn = string
type secondaryStatus = [
  | @as("Restarting") #Restarting
  | @as("Updating") #Updating
  | @as("MaxWaitTimeExceeded") #MaxWaitTimeExceeded
  | @as("Interrupted") #Interrupted
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("MaxRuntimeExceeded") #MaxRuntimeExceeded
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Uploading") #Uploading
  | @as("Training") #Training
  | @as("DownloadingTrainingImage") #DownloadingTrainingImage
  | @as("Downloading") #Downloading
  | @as("PreparingTrainingStack") #PreparingTrainingStack
  | @as("LaunchingMLInstances") #LaunchingMLInstances
  | @as("Starting") #Starting
]
type searchSortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type scheduleStatus = [
  | @as("Stopped") #Stopped
  | @as("Scheduled") #Scheduled
  | @as("Failed") #Failed
  | @as("Pending") #Pending
]
type scheduleExpression = string
type samplingPercentage = int
type sagemakerServicecatalogStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type s3Uri = string
type s3DataType = [
  | @as("AugmentedManifestFile") #AugmentedManifestFile
  | @as("S3Prefix") #S3Prefix
  | @as("ManifestFile") #ManifestFile
]
type s3DataDistribution = [
  | @as("ShardedByS3Key") #ShardedByS3Key
  | @as("FullyReplicated") #FullyReplicated
]
type ruleEvaluationStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Error") #Error
  | @as("IssuesFound") #IssuesFound
  | @as("NoIssuesFound") #NoIssuesFound
  | @as("InProgress") #InProgress
]
type ruleConfigurationName = string
type rootAccess = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type roleArn = string
type retentionType = [@as("Delete") #Delete | @as("Retain") #Retain]
type responseMIMEType = string
type resourceType = [
  | @as("FeatureGroup") #FeatureGroup
  | @as("PipelineExecution") #PipelineExecution
  | @as("Pipeline") #Pipeline
  | @as("ModelPackageGroup") #ModelPackageGroup
  | @as("ModelPackage") #ModelPackage
  | @as("Endpoint") #Endpoint
  | @as("ExperimentTrialComponent") #ExperimentTrialComponent
  | @as("ExperimentTrial") #ExperimentTrial
  | @as("Experiment") #Experiment
  | @as("TrainingJob") #TrainingJob
]
type resourcePropertyName = string
type resourceId = string
type resourceArn = string
type repositoryCredentialsProviderArn = string
type repositoryAccessMode = [@as("Vpc") #Vpc | @as("Platform") #Platform]
type redshiftUserName = string
type redshiftResultFormat = [@as("CSV") #CSV | @as("PARQUET") #PARQUET]
type redshiftResultCompressionType = [
  | @as("SNAPPY") #SNAPPY
  | @as("ZSTD") #ZSTD
  | @as("BZIP2") #BZIP2
  | @as("GZIP") #GZIP
  | @as("None") #None
]
type redshiftQueryString = string
type redshiftDatabase = string
type redshiftClusterId = string
type recordWrapper = [@as("RecordIO") #RecordIO | @as("None") #None]
type provisioningParameterValue = string
type provisioningParameterKey = string
type provisionedProductStatusMessage = string
type propertyNameHint = string
type projectStatus = [
  | @as("DeleteCompleted") #DeleteCompleted
  | @as("DeleteFailed") #DeleteFailed
  | @as("DeleteInProgress") #DeleteInProgress
  | @as("CreateFailed") #CreateFailed
  | @as("CreateCompleted") #CreateCompleted
  | @as("CreateInProgress") #CreateInProgress
  | @as("Pending") #Pending
]
type projectSortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type projectSortBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type projectId = string
type projectEntityName = string
type projectArn = string
type profilingStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type profilingIntervalInMilliseconds = float
type productionVariantInstanceType = [
  | @as("ml.inf1.24xlarge") #Ml_Inf1_24xlarge
  | @as("ml.inf1.6xlarge") #Ml_Inf1_6xlarge
  | @as("ml.inf1.2xlarge") #Ml_Inf1_2xlarge
  | @as("ml.inf1.xlarge") #Ml_Inf1_Xlarge
  | @as("ml.r5d.24xlarge") #Ml_R5d_24xlarge
  | @as("ml.r5d.12xlarge") #Ml_R5d_12xlarge
  | @as("ml.r5d.4xlarge") #Ml_R5d_4xlarge
  | @as("ml.r5d.2xlarge") #Ml_R5d_2xlarge
  | @as("ml.r5d.xlarge") #Ml_R5d_Xlarge
  | @as("ml.r5d.large") #Ml_R5d_Large
  | @as("ml.r5.24xlarge") #Ml_R5_24xlarge
  | @as("ml.r5.12xlarge") #Ml_R5_12xlarge
  | @as("ml.r5.4xlarge") #Ml_R5_4xlarge
  | @as("ml.r5.2xlarge") #Ml_R5_2xlarge
  | @as("ml.r5.xlarge") #Ml_R5_Xlarge
  | @as("ml.r5.large") #Ml_R5_Large
  | @as("ml.g4dn.16xlarge") #Ml_G4dn_16xlarge
  | @as("ml.g4dn.12xlarge") #Ml_G4dn_12xlarge
  | @as("ml.g4dn.8xlarge") #Ml_G4dn_8xlarge
  | @as("ml.g4dn.4xlarge") #Ml_G4dn_4xlarge
  | @as("ml.g4dn.2xlarge") #Ml_G4dn_2xlarge
  | @as("ml.g4dn.xlarge") #Ml_G4dn_Xlarge
  | @as("ml.c5d.18xlarge") #Ml_C5d_18xlarge
  | @as("ml.c5d.9xlarge") #Ml_C5d_9xlarge
  | @as("ml.c5d.4xlarge") #Ml_C5d_4xlarge
  | @as("ml.c5d.2xlarge") #Ml_C5d_2xlarge
  | @as("ml.c5d.xlarge") #Ml_C5d_Xlarge
  | @as("ml.c5d.large") #Ml_C5d_Large
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.c5.large") #Ml_C5_Large
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.c4.large") #Ml_C4_Large
  | @as("ml.m5d.24xlarge") #Ml_M5d_24xlarge
  | @as("ml.m5d.12xlarge") #Ml_M5d_12xlarge
  | @as("ml.m5d.4xlarge") #Ml_M5d_4xlarge
  | @as("ml.m5d.2xlarge") #Ml_M5d_2xlarge
  | @as("ml.m5d.xlarge") #Ml_M5d_Xlarge
  | @as("ml.m5d.large") #Ml_M5d_Large
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
  | @as("ml.t2.2xlarge") #Ml_T2_2xlarge
  | @as("ml.t2.xlarge") #Ml_T2_Xlarge
  | @as("ml.t2.large") #Ml_T2_Large
  | @as("ml.t2.medium") #Ml_T2_Medium
]
type productionVariantAcceleratorType = [
  | @as("ml.eia2.xlarge") #Ml_Eia2_Xlarge
  | @as("ml.eia2.large") #Ml_Eia2_Large
  | @as("ml.eia2.medium") #Ml_Eia2_Medium
  | @as("ml.eia1.xlarge") #Ml_Eia1_Xlarge
  | @as("ml.eia1.large") #Ml_Eia1_Large
  | @as("ml.eia1.medium") #Ml_Eia1_Medium
]
type productId = string
type processingVolumeSizeInGB = int
type processingS3UploadMode = [@as("EndOfJob") #EndOfJob | @as("Continuous") #Continuous]
type processingS3InputMode = [@as("File") #File | @as("Pipe") #Pipe]
type processingS3DataType = [@as("S3Prefix") #S3Prefix | @as("ManifestFile") #ManifestFile]
type processingS3DataDistributionType = [
  | @as("ShardedByS3Key") #ShardedByS3Key
  | @as("FullyReplicated") #FullyReplicated
]
type processingS3CompressionType = [@as("Gzip") #Gzip | @as("None") #None]
type processingMaxRuntimeInSeconds = int
type processingLocalPath = string
type processingJobStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type processingJobName = string
type processingJobArn = string
type processingInstanceType = [
  | @as("ml.r5.24xlarge") #Ml_R5_24xlarge
  | @as("ml.r5.16xlarge") #Ml_R5_16xlarge
  | @as("ml.r5.12xlarge") #Ml_R5_12xlarge
  | @as("ml.r5.8xlarge") #Ml_R5_8xlarge
  | @as("ml.r5.4xlarge") #Ml_R5_4xlarge
  | @as("ml.r5.2xlarge") #Ml_R5_2xlarge
  | @as("ml.r5.xlarge") #Ml_R5_Xlarge
  | @as("ml.r5.large") #Ml_R5_Large
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
  | @as("ml.t3.2xlarge") #Ml_T3_2xlarge
  | @as("ml.t3.xlarge") #Ml_T3_Xlarge
  | @as("ml.t3.large") #Ml_T3_Large
  | @as("ml.t3.medium") #Ml_T3_Medium
]
type processingInstanceCount = int
type processingEnvironmentValue = string
type processingEnvironmentKey = string
type problemType = [
  | @as("Regression") #Regression
  | @as("MulticlassClassification") #MulticlassClassification
  | @as("BinaryClassification") #BinaryClassification
]
type probabilityThresholdAttribute = float
type presignedDomainUrl = string
type policyString = string
type pipelineStatus = [@as("Active") #Active]
type pipelineParameterName = string
type pipelineName = string
type pipelineExecutionStatus = [
  | @as("Succeeded") #Succeeded
  | @as("Failed") #Failed
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Executing") #Executing
]
type pipelineExecutionName = string
type pipelineExecutionDescription = string
type pipelineExecutionArn = string
type pipelineDescription = string
type pipelineDefinition = string
type pipelineArn = string
type parameterValue = string
type parameterType = [
  | @as("FreeText") #FreeText
  | @as("Categorical") #Categorical
  | @as("Continuous") #Continuous
  | @as("Integer") #Integer
]
type parameterName = string
type parameterKey = string
type paginationToken = string
type orderKey = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type optionalVolumeSizeInGB = int
type optionalInteger = int
type optionalDouble = float
type operator = [
  | @as("In") #In
  | @as("NotExists") #NotExists
  | @as("Exists") #Exists
  | @as("Contains") #Contains
  | @as("LessThanOrEqualTo") #LessThanOrEqualTo
  | @as("LessThan") #LessThan
  | @as("GreaterThanOrEqualTo") #GreaterThanOrEqualTo
  | @as("GreaterThan") #GreaterThan
  | @as("NotEquals") #NotEquals
  | @as("Equals") #Equals
]
type oidcEndpoint = string
type offlineStoreStatusValue = [
  | @as("Disabled") #Disabled
  | @as("Blocked") #Blocked
  | @as("Active") #Active
]
type objectiveStatusCounter = int
type objectiveStatus = [
  | @as("Failed") #Failed
  | @as("Pending") #Pending
  | @as("Succeeded") #Succeeded
]
type numberOfHumanWorkersPerDataObject = int
type notificationTopicArn = string
type notebookOutputOption = [@as("Disabled") #Disabled | @as("Allowed") #Allowed]
type notebookInstanceVolumeSizeInGB = int
type notebookInstanceUrl = string
type notebookInstanceStatus = [
  | @as("Updating") #Updating
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("InService") #InService
  | @as("Pending") #Pending
]
type notebookInstanceSortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type notebookInstanceSortKey = [
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type notebookInstanceNameContains = string
type notebookInstanceName = string
type notebookInstanceLifecycleConfigSortOrder = [
  | @as("Descending") #Descending
  | @as("Ascending") #Ascending
]
type notebookInstanceLifecycleConfigSortKey = [
  | @as("LastModifiedTime") #LastModifiedTime
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type notebookInstanceLifecycleConfigNameContains = string
type notebookInstanceLifecycleConfigName = string
type notebookInstanceLifecycleConfigContent = string
type notebookInstanceLifecycleConfigArn = string
type notebookInstanceArn = string
type notebookInstanceAcceleratorType = [
  | @as("ml.eia2.xlarge") #Ml_Eia2_Xlarge
  | @as("ml.eia2.large") #Ml_Eia2_Large
  | @as("ml.eia2.medium") #Ml_Eia2_Medium
  | @as("ml.eia1.xlarge") #Ml_Eia1_Xlarge
  | @as("ml.eia1.large") #Ml_Eia1_Large
  | @as("ml.eia1.medium") #Ml_Eia1_Medium
]
type nextToken = string
type networkInterfaceId = string
type nameContains = string
type mountPath = string
type monitoringType = [
  | @as("ModelExplainability") #ModelExplainability
  | @as("ModelBias") #ModelBias
  | @as("ModelQuality") #ModelQuality
  | @as("DataQuality") #DataQuality
]
type monitoringTimeOffsetString = string
type monitoringScheduleSortKey = [
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type monitoringScheduleName = string
type monitoringScheduleArn = string
type monitoringS3Uri = string
type monitoringProblemType = [
  | @as("Regression") #Regression
  | @as("MulticlassClassification") #MulticlassClassification
  | @as("BinaryClassification") #BinaryClassification
]
type monitoringMaxRuntimeInSeconds = int
type monitoringJobDefinitionSortKey = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type monitoringJobDefinitionName = string
type monitoringJobDefinitionArn = string
type monitoringExecutionSortKey = [
  | @as("Status") #Status
  | @as("ScheduledTime") #ScheduledTime
  | @as("CreationTime") #CreationTime
]
type modelSortKey = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type modelPackageVersion = int
type modelPackageType = [
  | @as("Both") #Both
  | @as("Unversioned") #Unversioned
  | @as("Versioned") #Versioned
]
type modelPackageStatus = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type modelPackageSortBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type modelPackageGroupStatus = [
  | @as("DeleteFailed") #DeleteFailed
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type modelPackageGroupSortBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type modelPackageGroupArn = string
type modelPackageArn = string
type modelNameContains = string
type modelName = string
type modelCacheSetting = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type modelArn = string
type modelApprovalStatus = [
  | @as("PendingManualApproval") #PendingManualApproval
  | @as("Rejected") #Rejected
  | @as("Approved") #Approved
]
type metricValue = float
type metricRegex = string
type metricName = string
type metadataPropertyValue = string
type mediaType = string
type maximumRetryAttempts = int
type maximumExecutionTimeoutInSeconds = int
type maxWaitTimeInSeconds = int
type maxRuntimePerTrainingJobInSeconds = int
type maxRuntimeInSeconds = int
type maxResults = int
type maxPercentageOfInputDatasetLabeled = int
type maxPayloadInMB = int
type maxParallelTrainingJobs = int
type maxNumberOfTrainingJobs = int
type maxHumanLabeledObjectCount = int
type maxConcurrentTransforms = int
type maxConcurrentTaskCount = int
type maxCandidates = int
type maxAutoMLJobRuntimeInSeconds = int
type long = float
type listWorkteamsSortByOptions = [@as("CreateDate") #CreateDate | @as("Name") #Name]
type listWorkforcesSortByOptions = [@as("CreateDate") #CreateDate | @as("Name") #Name]
type listTagsMaxResults = int
type listMaxResults = int
type listLabelingJobsForWorkteamSortByOptions = [@as("CreationTime") #CreationTime]
type listEdgePackagingJobsSortBy = [
  | @as("STATUS") #STATUS
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATION_TIME") #CREATION_TIME
  | @as("MODEL_NAME") #MODEL_NAME
  | @as("NAME") #NAME
]
type listDeviceFleetsSortBy = [
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATION_TIME") #CREATION_TIME
  | @as("NAME") #NAME
]
type listCompilationJobsSortBy = [
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type lastModifiedTime = Js.Date.t
type lambdaFunctionArn = string
type labelingJobStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("Initializing") #Initializing
]
type labelingJobName = string
type labelingJobArn = string
type labelingJobAlgorithmSpecificationArn = string
type labelCounter = int
type labelAttributeName = string
type kmsKeyId = string
type kernelName = string
type kernelDisplayName = string
type jsonPath = string
type jsonContentType = string
type joinSource = [@as("None") #None | @as("Input") #Input]
type jobReferenceCodeContains = string
type jobReferenceCode = string
type iotRoleAlias = string
type invocationsTimeoutInSeconds = int
type invocationsMaxRetries = int
type integer_ = int
type instanceType = [
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.p2.16xlarge") #Ml_P2_16xlarge
  | @as("ml.p2.8xlarge") #Ml_P2_8xlarge
  | @as("ml.p2.xlarge") #Ml_P2_Xlarge
  | @as("ml.c5d.18xlarge") #Ml_C5d_18xlarge
  | @as("ml.c5d.9xlarge") #Ml_C5d_9xlarge
  | @as("ml.c5d.4xlarge") #Ml_C5d_4xlarge
  | @as("ml.c5d.2xlarge") #Ml_C5d_2xlarge
  | @as("ml.c5d.xlarge") #Ml_C5d_Xlarge
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.c4.8xlarge") #Ml_C4_8xlarge
  | @as("ml.c4.4xlarge") #Ml_C4_4xlarge
  | @as("ml.c4.2xlarge") #Ml_C4_2xlarge
  | @as("ml.c4.xlarge") #Ml_C4_Xlarge
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m4.16xlarge") #Ml_M4_16xlarge
  | @as("ml.m4.10xlarge") #Ml_M4_10xlarge
  | @as("ml.m4.4xlarge") #Ml_M4_4xlarge
  | @as("ml.m4.2xlarge") #Ml_M4_2xlarge
  | @as("ml.m4.xlarge") #Ml_M4_Xlarge
  | @as("ml.t3.2xlarge") #Ml_T3_2xlarge
  | @as("ml.t3.xlarge") #Ml_T3_Xlarge
  | @as("ml.t3.large") #Ml_T3_Large
  | @as("ml.t3.medium") #Ml_T3_Medium
  | @as("ml.t2.2xlarge") #Ml_T2_2xlarge
  | @as("ml.t2.xlarge") #Ml_T2_Xlarge
  | @as("ml.t2.large") #Ml_T2_Large
  | @as("ml.t2.medium") #Ml_T2_Medium
]
type inputMode = [@as("File") #File | @as("Pipe") #Pipe]
type inferenceExecutionMode = [@as("Direct") #Direct | @as("Serial") #Serial]
type imageVersionStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type imageVersionSortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type imageVersionSortBy = [
  | @as("VERSION") #VERSION
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATION_TIME") #CREATION_TIME
]
type imageVersionNumber = int
type imageVersionArn = string
type imageUri = string
type imageStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATING") #UPDATING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type imageSortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type imageSortBy = [
  | @as("IMAGE_NAME") #IMAGE_NAME
  | @as("LAST_MODIFIED_TIME") #LAST_MODIFIED_TIME
  | @as("CREATION_TIME") #CREATION_TIME
]
type imageNameContains = string
type imageName = string
type imageDisplayName = string
type imageDigest = string
type imageDescription = string
type imageDeleteProperty = string
type imageContainerImage = string
type imageBaseImage = string
type imageArn = string
type idempotencyToken = string
type hyperParameterValue = string
type hyperParameterTuningJobWarmStartType = [
  | @as("TransferLearning") #TransferLearning
  | @as("IdenticalDataAndAlgorithm") #IdenticalDataAndAlgorithm
]
type hyperParameterTuningJobStrategyType = [@as("Random") #Random | @as("Bayesian") #Bayesian]
type hyperParameterTuningJobStatus = [
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Completed") #Completed
]
type hyperParameterTuningJobSortByOptions = [
  | @as("CreationTime") #CreationTime
  | @as("Status") #Status
  | @as("Name") #Name
]
type hyperParameterTuningJobObjectiveType = [@as("Minimize") #Minimize | @as("Maximize") #Maximize]
type hyperParameterTuningJobName = string
type hyperParameterTuningJobArn = string
type hyperParameterTrainingJobDefinitionName = string
type hyperParameterScalingType = [
  | @as("ReverseLogarithmic") #ReverseLogarithmic
  | @as("Logarithmic") #Logarithmic
  | @as("Linear") #Linear
  | @as("Auto") #Auto
]
type hyperParameterKey = string
type humanTaskUiStatus = [@as("Deleting") #Deleting | @as("Active") #Active]
type humanTaskUiName = string
type humanTaskUiArn = string
type group = string
type gitConfigUrl = string
type generateCandidateDefinitionsOnly = bool
type frameworkVersion = string
type framework = [
  | @as("SKLEARN") #SKLEARN
  | @as("DARKNET") #DARKNET
  | @as("TFLITE") #TFLITE
  | @as("XGBOOST") #XGBOOST
  | @as("PYTORCH") #PYTORCH
  | @as("ONNX") #ONNX
  | @as("MXNET") #MXNET
  | @as("KERAS") #KERAS
  | @as("TENSORFLOW") #TENSORFLOW
]
type flowDefinitionTaskTitle = string
type flowDefinitionTaskTimeLimitInSeconds = int
type flowDefinitionTaskKeyword = string
type flowDefinitionTaskDescription = string
type flowDefinitionTaskCount = int
type flowDefinitionTaskAvailabilityLifetimeInSeconds = int
type flowDefinitionStatus = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Active") #Active
  | @as("Initializing") #Initializing
]
type flowDefinitionName = string
type flowDefinitionArn = string
type float_ = float
type filterValue = string
type fileSystemType = [@as("FSxLustre") #FSxLustre | @as("EFS") #EFS]
type fileSystemId = string
type fileSystemAccessMode = [@as("ro") #Ro | @as("rw") #Rw]
type featureType = [
  | @as("String") #String
  | @as("Fractional") #Fractional
  | @as("Integral") #Integral
]
type featureName = string
type featureGroupStatus = [
  | @as("DeleteFailed") #DeleteFailed
  | @as("Deleting") #Deleting
  | @as("CreateFailed") #CreateFailed
  | @as("Created") #Created
  | @as("Creating") #Creating
]
type featureGroupSortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type featureGroupSortBy = [
  | @as("CreationTime") #CreationTime
  | @as("OfflineStoreStatus") #OfflineStoreStatus
  | @as("FeatureGroupStatus") #FeatureGroupStatus
  | @as("Name") #Name
]
type featureGroupNameContains = string
type featureGroupName = string
type featureGroupMaxResults = int
type featureGroupArn = string
type failureReason = string
type explainabilityLocation = string
type expiresInSeconds = int
type experimentSourceArn = string
type experimentEntityName = string
type experimentDescription = string
type experimentArn = string
type exitMessage = string
type executionStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("CompletedWithViolations") #CompletedWithViolations
  | @as("Completed") #Completed
  | @as("Pending") #Pending
]
type environmentValue = string
type environmentKey = string
type entityName = string
type entityDescription = string
type endpointStatus = [
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
  | @as("InService") #InService
  | @as("RollingBack") #RollingBack
  | @as("SystemUpdating") #SystemUpdating
  | @as("Updating") #Updating
  | @as("Creating") #Creating
  | @as("OutOfService") #OutOfService
]
type endpointSortKey = [
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type endpointNameContains = string
type endpointName = string
type endpointConfigSortKey = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type endpointConfigNameContains = string
type endpointConfigName = string
type endpointConfigArn = string
type endpointArn = string
type enableCapture = bool
type efsUid = string
type edgeVersion = string
type edgePackagingJobStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("INPROGRESS") #INPROGRESS
  | @as("STARTING") #STARTING
]
type edgePackagingJobArn = string
type doubleParameterValue = float
type domainStatus = [
  | @as("Delete_Failed") #Delete_Failed
  | @as("Update_Failed") #Update_Failed
  | @as("Updating") #Updating
  | @as("Pending") #Pending
  | @as("InService") #InService
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
]
type domainName = string
type domainId = string
type domainArn = string
type dollars = int
type disassociateNotebookInstanceLifecycleConfig = bool
type disassociateNotebookInstanceAcceleratorTypes = bool
type disassociateDefaultCodeRepository = bool
type disassociateAdditionalCodeRepositories = bool
type disableProfiler = bool
type directoryPath = string
type directInternetAccess = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type deviceName = string
type deviceFleetDescription = string
type deviceFleetArn = string
type deviceDescription = string
type deviceArn = string
type detailedModelPackageStatus = [
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("NotStarted") #NotStarted
]
type detailedAlgorithmStatus = [
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("NotStarted") #NotStarted
]
type destinationS3Uri = string
type description = string
type defaultUid = int
type defaultGid = int
type database = string
type dataInputConfig = string
type dataExplorationNotebookLocation = string
type dataDistributionType = [
  | @as("ShardedByS3Key") #ShardedByS3Key
  | @as("FullyReplicated") #FullyReplicated
]
type csvContentType = string
type creationTime = Js.Date.t
type contextArn = string
type contentType = string
type contentDigest = string
type contentClassifier = [
  | @as("FreeOfAdultContent") #FreeOfAdultContent
  | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation
]
type containerMode = [@as("MultiModel") #MultiModel | @as("SingleModel") #SingleModel]
type containerImage = string
type containerHostname = string
type containerEntrypointString = string
type containerArgument = string
type configValue = string
type configKey = string
type conditionOutcome = [@as("False") #False | @as("True") #True]
type compressionType = [@as("Gzip") #Gzip | @as("None") #None]
type compilerOptions = string
type compilationJobStatus = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("INPROGRESS") #INPROGRESS
]
type compilationJobArn = string
type collectionName = string
type cognitoUserPool = string
type cognitoUserGroup = string
type codeRepositorySortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type codeRepositorySortBy = [
  | @as("LastModifiedTime") #LastModifiedTime
  | @as("CreationTime") #CreationTime
  | @as("Name") #Name
]
type codeRepositoryNameOrUrl = string
type codeRepositoryNameContains = string
type codeRepositoryContains = string
type codeRepositoryArn = string
type clientToken = string
type clientSecret = string
type clientId = string
type cidr = string
type channelName = string
type certifyForMarketplace = bool
type cents = int
type catalog = string
type captureStatus = [@as("Stopped") #Stopped | @as("Started") #Started]
type captureMode = [@as("Output") #Output | @as("Input") #Input]
type capacitySizeValue = int
type capacitySizeType = [
  | @as("CAPACITY_PERCENT") #CAPACITY_PERCENT
  | @as("INSTANCE_COUNT") #INSTANCE_COUNT
]
type candidateStepType = [
  | @as("AWS::SageMaker::ProcessingJob") #AWS_SageMaker_ProcessingJob
  | @as("AWS::SageMaker::TransformJob") #AWS_SageMaker_TransformJob
  | @as("AWS::SageMaker::TrainingJob") #AWS_SageMaker_TrainingJob
]
type candidateStepName = string
type candidateStepArn = string
type candidateStatus = [
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Completed") #Completed
]
type candidateSortBy = [
  | @as("FinalObjectiveMetricValue") #FinalObjectiveMetricValue
  | @as("Status") #Status
  | @as("CreationTime") #CreationTime
]
type candidateName = string
type candidateDefinitionNotebookLocation = string
type branch = string
type booleanOperator = [@as("Or") #Or | @as("And") #And]
type boolean_ = bool
type blockedReason = string
type billableTimeInSeconds = int
type batchStrategy = [@as("SingleRecord") #SingleRecord | @as("MultiRecord") #MultiRecord]
type awsManagedHumanLoopRequestSource = [
  | @as("AWS/Textract/AnalyzeDocument/Forms/V1") #AWS_Textract_AnalyzeDocument_Forms_V1
  | @as("AWS/Rekognition/DetectModerationLabels/Image/V3")
  #AWS_Rekognition_DetectModerationLabels_Image_V3
]
type autoMLSortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type autoMLSortBy = [@as("Status") #Status | @as("CreationTime") #CreationTime | @as("Name") #Name]
type autoMLS3DataType = [@as("S3Prefix") #S3Prefix | @as("ManifestFile") #ManifestFile]
type autoMLNameContains = string
type autoMLMetricEnum = [
  | @as("AUC") #AUC
  | @as("F1macro") #F1macro
  | @as("F1") #F1
  | @as("MSE") #MSE
  | @as("Accuracy") #Accuracy
]
type autoMLMaxResults = int
type autoMLJobStatus = [
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Completed") #Completed
]
type autoMLJobSecondaryStatus = [
  | @as("ModelDeploymentError") #ModelDeploymentError
  | @as("DeployingModel") #DeployingModel
  | @as("ExplainabilityError") #ExplainabilityError
  | @as("Completed") #Completed
  | @as("GeneratingExplainabilityReport") #GeneratingExplainabilityReport
  | @as("CandidateDefinitionsGenerated") #CandidateDefinitionsGenerated
  | @as("Stopping") #Stopping
  | @as("MaxAutoMLJobRuntimeReached") #MaxAutoMLJobRuntimeReached
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("MaxCandidatesReached") #MaxCandidatesReached
  | @as("ModelTuning") #ModelTuning
  | @as("FeatureEngineering") #FeatureEngineering
  | @as("AnalyzingData") #AnalyzingData
  | @as("Starting") #Starting
]
type autoMLJobObjectiveType = [@as("Minimize") #Minimize | @as("Maximize") #Maximize]
type autoMLJobName = string
type autoMLJobArn = string
type autoMLFailureReason = string
type autoGenerateEndpointName = bool
type authMode = [@as("IAM") #IAM | @as("SSO") #SSO]
type attributeName = string
type athenaWorkGroup = string
type athenaResultFormat = [
  | @as("TEXTFILE") #TEXTFILE
  | @as("JSON") #JSON
  | @as("AVRO") #AVRO
  | @as("ORC") #ORC
  | @as("PARQUET") #PARQUET
]
type athenaResultCompressionType = [@as("ZLIB") #ZLIB | @as("SNAPPY") #SNAPPY | @as("GZIP") #GZIP]
type athenaQueryString = string
type athenaDatabase = string
type athenaCatalog = string
type associationEntityArn = string
type associationEdgeType = [
  | @as("Produced") #Produced
  | @as("DerivedFrom") #DerivedFrom
  | @as("AssociatedWith") #AssociatedWith
  | @as("ContributedTo") #ContributedTo
]
type assemblyType = [@as("Line") #Line | @as("None") #None]
type artifactSourceIdType = [
  | @as("Custom") #Custom
  | @as("S3Version") #S3Version
  | @as("S3ETag") #S3ETag
  | @as("MD5Hash") #MD5Hash
]
type artifactDigest = string
type artifactArn = string
type arnOrName = string
type approvalDescription = string
type appType = [
  | @as("TensorBoard") #TensorBoard
  | @as("KernelGateway") #KernelGateway
  | @as("JupyterServer") #JupyterServer
]
type appStatus = [
  | @as("Pending") #Pending
  | @as("InService") #InService
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
  | @as("Deleted") #Deleted
]
type appSortKey = [@as("CreationTime") #CreationTime]
type appNetworkAccessType = [
  | @as("VpcOnly") #VpcOnly
  | @as("PublicInternetOnly") #PublicInternetOnly
]
type appName = string
type appManaged = bool
type appInstanceType = [
  | @as("ml.g4dn.16xlarge") #Ml_G4dn_16xlarge
  | @as("ml.g4dn.12xlarge") #Ml_G4dn_12xlarge
  | @as("ml.g4dn.8xlarge") #Ml_G4dn_8xlarge
  | @as("ml.g4dn.4xlarge") #Ml_G4dn_4xlarge
  | @as("ml.g4dn.2xlarge") #Ml_G4dn_2xlarge
  | @as("ml.g4dn.xlarge") #Ml_G4dn_Xlarge
  | @as("ml.p3.16xlarge") #Ml_P3_16xlarge
  | @as("ml.p3.8xlarge") #Ml_P3_8xlarge
  | @as("ml.p3.2xlarge") #Ml_P3_2xlarge
  | @as("ml.c5.24xlarge") #Ml_C5_24xlarge
  | @as("ml.c5.18xlarge") #Ml_C5_18xlarge
  | @as("ml.c5.12xlarge") #Ml_C5_12xlarge
  | @as("ml.c5.9xlarge") #Ml_C5_9xlarge
  | @as("ml.c5.4xlarge") #Ml_C5_4xlarge
  | @as("ml.c5.2xlarge") #Ml_C5_2xlarge
  | @as("ml.c5.xlarge") #Ml_C5_Xlarge
  | @as("ml.c5.large") #Ml_C5_Large
  | @as("ml.m5.24xlarge") #Ml_M5_24xlarge
  | @as("ml.m5.16xlarge") #Ml_M5_16xlarge
  | @as("ml.m5.12xlarge") #Ml_M5_12xlarge
  | @as("ml.m5.8xlarge") #Ml_M5_8xlarge
  | @as("ml.m5.4xlarge") #Ml_M5_4xlarge
  | @as("ml.m5.2xlarge") #Ml_M5_2xlarge
  | @as("ml.m5.xlarge") #Ml_M5_Xlarge
  | @as("ml.m5.large") #Ml_M5_Large
  | @as("ml.t3.2xlarge") #Ml_T3_2xlarge
  | @as("ml.t3.xlarge") #Ml_T3_Xlarge
  | @as("ml.t3.large") #Ml_T3_Large
  | @as("ml.t3.medium") #Ml_T3_Medium
  | @as("ml.t3.small") #Ml_T3_Small
  | @as("ml.t3.micro") #Ml_T3_Micro
  | @as("system") #System
]
type appImageConfigSortKey = [
  | @as("Name") #Name
  | @as("LastModifiedTime") #LastModifiedTime
  | @as("CreationTime") #CreationTime
]
type appImageConfigName = string
type appImageConfigArn = string
type appArn = string
type algorithmStatus = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type algorithmSortBy = [@as("CreationTime") #CreationTime | @as("Name") #Name]
type algorithmImage = string
type algorithmArn = string
type alarmName = string
type actionStatus = [
  | @as("Stopped") #Stopped
  | @as("Stopping") #Stopping
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
  | @as("Unknown") #Unknown
]
type actionArn = string
type accountId = string
type accept = string
type vpcSecurityGroupIds = array<securityGroupId>
type variantProperty = {@as("VariantPropertyType") variantPropertyType: variantPropertyType}
type userProfileDetails = {
  @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("Status") status: option<userProfileStatus>,
  @as("UserProfileName") userProfileName: option<userProfileName>,
  @as("DomainId") domainId: option<domainId>,
}
type userContext = {
  @as("DomainId") domainId: option<string_>,
  @as("UserProfileName") userProfileName: option<string_>,
  @as("UserProfileArn") userProfileArn: option<string_>,
}
type uiTemplateInfo = {
  @as("ContentSha256") contentSha256: option<templateContentSha256>,
  @as("Url") url: option<templateUrl>,
}
type uiTemplate = {@as("Content") content: templateContent}
type uiConfig = {
  @as("HumanTaskUiArn") humanTaskUiArn: option<humanTaskUiArn>,
  @as("UiTemplateS3Uri") uiTemplateS3Uri: option<s3Uri>,
}
type usd = {
  @as("TenthFractionsOfACent") tenthFractionsOfACent: option<tenthFractionsOfACent>,
  @as("Cents") cents: option<cents>,
  @as("Dollars") dollars: option<dollars>,
}
type tuningJobCompletionCriteria = {
  @as("TargetObjectiveMetricValue") targetObjectiveMetricValue: targetObjectiveMetricValue,
}
type trialSource = {
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceArn") sourceArn: trialSourceArn,
}
type trialComponentStatus = {
  @as("Message") message: option<trialComponentStatusMessage>,
  @as("PrimaryStatus") primaryStatus: option<trialComponentPrimaryStatus>,
}
type trialComponentSource = {
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceArn") sourceArn: trialComponentSourceArn,
}
type trialComponentParameterValue = {
  @as("NumberValue") numberValue: option<doubleParameterValue>,
  @as("StringValue") stringValue: option<stringParameterValue>,
}
type trialComponentMetricSummary = {
  @as("StdDev") stdDev: option<optionalDouble>,
  @as("Avg") avg: option<optionalDouble>,
  @as("Count") count: option<optionalInteger>,
  @as("Last") last: option<optionalDouble>,
  @as("Min") min: option<optionalDouble>,
  @as("Max") max: option<optionalDouble>,
  @as("TimeStamp") timeStamp: option<timestamp_>,
  @as("SourceArn") sourceArn: option<trialComponentSourceArn>,
  @as("MetricName") metricName: option<metricName>,
}
type trialComponentArtifact = {
  @as("Value") value: trialComponentArtifactValue,
  @as("MediaType") mediaType: option<mediaType>,
}
type transformS3DataSource = {
  @as("S3Uri") s3Uri: s3Uri,
  @as("S3DataType") s3DataType: s3DataType,
}
type transformResources = {
  @as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
  @as("InstanceCount") instanceCount: transformInstanceCount,
  @as("InstanceType") instanceType: transformInstanceType,
}
type transformOutput = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("AssembleWith") assembleWith: option<assemblyType>,
  @as("Accept") accept: option<accept>,
  @as("S3OutputPath") s3OutputPath: s3Uri,
}
type transformJobSummary = {
  @as("FailureReason") failureReason: option<failureReason>,
  @as("TransformJobStatus") transformJobStatus: transformJobStatus,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("TransformEndTime") transformEndTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("TransformJobArn") transformJobArn: transformJobArn,
  @as("TransformJobName") transformJobName: transformJobName,
}
type transformJobStepMetadata = {@as("Arn") arn: option<transformJobArn>}
type transformInstanceTypes = array<transformInstanceType>
type transformEnvironmentMap = Js.Dict.t<transformEnvironmentValue>
type trainingJobSummary = {
  @as("TrainingJobStatus") trainingJobStatus: trainingJobStatus,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("TrainingEndTime") trainingEndTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("TrainingJobArn") trainingJobArn: trainingJobArn,
  @as("TrainingJobName") trainingJobName: trainingJobName,
}
type trainingJobStepMetadata = {@as("Arn") arn: option<trainingJobArn>}
type trainingJobStatusCounters = {
  @as("Stopped") stopped: option<trainingJobStatusCounter>,
  @as("NonRetryableError") nonRetryableError: option<trainingJobStatusCounter>,
  @as("RetryableError") retryableError: option<trainingJobStatusCounter>,
  @as("InProgress") inProgress: option<trainingJobStatusCounter>,
  @as("Completed") completed: option<trainingJobStatusCounter>,
}
type trainingInstanceTypes = array<trainingInstanceType>
type trainingEnvironmentMap = Js.Dict.t<trainingEnvironmentValue>
type tensorBoardOutputConfig = {
  @as("S3OutputPath") s3OutputPath: s3Uri,
  @as("LocalPath") localPath: option<directoryPath>,
}
type taskKeywords = array<taskKeyword>
type targetPlatform = {
  @as("Accelerator") accelerator: option<targetPlatformAccelerator>,
  @as("Arch") arch: targetPlatformArch,
  @as("Os") os: targetPlatformOs,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subscribedWorkteam = {
  @as("ListingId") listingId: option<string_>,
  @as("MarketplaceDescription") marketplaceDescription: option<string200>,
  @as("SellerName") sellerName: option<string_>,
  @as("MarketplaceTitle") marketplaceTitle: option<string200>,
  @as("WorkteamArn") workteamArn: workteamArn,
}
type subnets = array<subnetId>
type stoppingCondition = {
  @as("MaxWaitTimeInSeconds") maxWaitTimeInSeconds: option<maxWaitTimeInSeconds>,
  @as("MaxRuntimeInSeconds") maxRuntimeInSeconds: option<maxRuntimeInSeconds>,
}
type sourceAlgorithm = {
  @as("AlgorithmName") algorithmName: arnOrName,
  @as("ModelDataUrl") modelDataUrl: option<url>,
}
type shuffleConfig = {@as("Seed") seed: seed}
type sharingSettings = {
  @as("S3KmsKeyId") s3KmsKeyId: option<kmsKeyId>,
  @as("S3OutputPath") s3OutputPath: option<s3Uri>,
  @as("NotebookOutputOption") notebookOutputOption: option<notebookOutputOption>,
}
type serviceCatalogProvisionedProductDetails = {
  @as("ProvisionedProductStatusMessage")
  provisionedProductStatusMessage: option<provisionedProductStatusMessage>,
  @as("ProvisionedProductId") provisionedProductId: option<serviceCatalogEntityId>,
}
type securityGroupIds = array<securityGroupId>
type secondaryStatusTransition = {
  @as("StatusMessage") statusMessage: option<statusMessage>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: timestamp_,
  @as("Status") status: secondaryStatus,
}
type scheduleConfig = {@as("ScheduleExpression") scheduleExpression: scheduleExpression}
type s3StorageConfig = {
  @as("ResolvedOutputS3Uri") resolvedOutputS3Uri: option<s3Uri>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("S3Uri") s3Uri: s3Uri,
}
type ruleParameters = Js.Dict.t<configValue>
type retryStrategy = {@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttempts}
type retentionPolicy = {@as("HomeEfsFileSystem") homeEfsFileSystem: option<retentionType>}
type responseMIMETypes = array<responseMIMEType>
type resourceSpec = {
  @as("InstanceType") instanceType: option<appInstanceType>,
  @as("SageMakerImageVersionArn") sageMakerImageVersionArn: option<imageVersionArn>,
  @as("SageMakerImageArn") sageMakerImageArn: option<imageArn>,
}
type resourceLimits = {
  @as("MaxParallelTrainingJobs") maxParallelTrainingJobs: maxParallelTrainingJobs,
  @as("MaxNumberOfTrainingJobs") maxNumberOfTrainingJobs: maxNumberOfTrainingJobs,
}
type resourceConfig = {
  @as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
  @as("VolumeSizeInGB") volumeSizeInGB: volumeSizeInGB,
  @as("InstanceCount") instanceCount: trainingInstanceCount,
  @as("InstanceType") instanceType: trainingInstanceType,
}
type repositoryAuthConfig = {
  @as("RepositoryCredentialsProviderArn")
  repositoryCredentialsProviderArn: repositoryCredentialsProviderArn,
}
type renderingError = {
  @as("Message") message: string_,
  @as("Code") code: string_,
}
type renderableTask = {@as("Input") input: taskInput}
type registerModelStepMetadata = {@as("Arn") arn: option<string256>}
type redshiftDatasetDefinition = {
  @as("OutputCompression") outputCompression: option<redshiftResultCompressionType>,
  @as("OutputFormat") outputFormat: redshiftResultFormat,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("OutputS3Uri") outputS3Uri: s3Uri,
  @as("ClusterRoleArn") clusterRoleArn: roleArn,
  @as("QueryString") queryString: redshiftQueryString,
  @as("DbUser") dbUser: redshiftUserName,
  @as("Database") database: redshiftDatabase,
  @as("ClusterId") clusterId: redshiftClusterId,
}
type realtimeInferenceInstanceTypes = array<productionVariantInstanceType>
type provisioningParameter = {
  @as("Value") value: option<provisioningParameterValue>,
  @as("Key") key: option<provisioningParameterKey>,
}
type propertyNameSuggestion = {@as("PropertyName") propertyName: option<resourcePropertyName>}
type propertyNameQuery = {@as("PropertyNameHint") propertyNameHint: propertyNameHint}
type projectSummary = {
  @as("ProjectStatus") projectStatus: projectStatus,
  @as("CreationTime") creationTime: timestamp_,
  @as("ProjectId") projectId: projectId,
  @as("ProjectArn") projectArn: projectArn,
  @as("ProjectDescription") projectDescription: option<entityDescription>,
  @as("ProjectName") projectName: projectEntityName,
}
type profilingParameters = Js.Dict.t<configValue>
type profilerRuleEvaluationStatus = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("StatusDetails") statusDetails: option<statusDetails>,
  @as("RuleEvaluationStatus") ruleEvaluationStatus: option<ruleEvaluationStatus>,
  @as("RuleEvaluationJobArn") ruleEvaluationJobArn: option<processingJobArn>,
  @as("RuleConfigurationName") ruleConfigurationName: option<ruleConfigurationName>,
}
type productionVariantCoreDumpConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("DestinationS3Uri") destinationS3Uri: destinationS3Uri,
}
type productListings = array<string_>
type processingStoppingCondition = {
  @as("MaxRuntimeInSeconds") maxRuntimeInSeconds: processingMaxRuntimeInSeconds,
}
type processingS3Output = {
  @as("S3UploadMode") s3UploadMode: processingS3UploadMode,
  @as("LocalPath") localPath: processingLocalPath,
  @as("S3Uri") s3Uri: s3Uri,
}
type processingS3Input = {
  @as("S3CompressionType") s3CompressionType: option<processingS3CompressionType>,
  @as("S3DataDistributionType") s3DataDistributionType: option<processingS3DataDistributionType>,
  @as("S3InputMode") s3InputMode: option<processingS3InputMode>,
  @as("S3DataType") s3DataType: processingS3DataType,
  @as("LocalPath") localPath: option<processingLocalPath>,
  @as("S3Uri") s3Uri: s3Uri,
}
type processingJobSummary = {
  @as("ExitMessage") exitMessage: option<exitMessage>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("ProcessingJobStatus") processingJobStatus: processingJobStatus,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("ProcessingEndTime") processingEndTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("ProcessingJobArn") processingJobArn: processingJobArn,
  @as("ProcessingJobName") processingJobName: processingJobName,
}
type processingJobStepMetadata = {@as("Arn") arn: option<processingJobArn>}
type processingFeatureStoreOutput = {@as("FeatureGroupName") featureGroupName: featureGroupName}
type processingEnvironmentMap = Js.Dict.t<processingEnvironmentValue>
type processingClusterConfig = {
  @as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
  @as("VolumeSizeInGB") volumeSizeInGB: processingVolumeSizeInGB,
  @as("InstanceType") instanceType: processingInstanceType,
  @as("InstanceCount") instanceCount: processingInstanceCount,
}
type pipelineSummary = {
  @as("LastExecutionTime") lastExecutionTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("PipelineDescription") pipelineDescription: option<pipelineDescription>,
  @as("PipelineDisplayName") pipelineDisplayName: option<pipelineName>,
  @as("PipelineName") pipelineName: option<pipelineName>,
  @as("PipelineArn") pipelineArn: option<pipelineArn>,
}
type pipelineExecutionSummary = {
  @as("PipelineExecutionDisplayName") pipelineExecutionDisplayName: option<pipelineExecutionName>,
  @as("PipelineExecutionDescription")
  pipelineExecutionDescription: option<pipelineExecutionDescription>,
  @as("PipelineExecutionStatus") pipelineExecutionStatus: option<pipelineExecutionStatus>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>,
}
type parentHyperParameterTuningJob = {
  @as("HyperParameterTuningJobName")
  hyperParameterTuningJobName: option<hyperParameterTuningJobName>,
}
type parent = {
  @as("ExperimentName") experimentName: option<experimentEntityName>,
  @as("TrialName") trialName: option<experimentEntityName>,
}
type parameterValues = array<parameterValue>
type parameter = {
  @as("Value") value: string1024,
  @as("Name") name: pipelineParameterName,
}
type outputDataConfig = {
  @as("S3OutputPath") s3OutputPath: s3Uri,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
}
type onlineStoreSecurityConfig = {@as("KmsKeyId") kmsKeyId: option<kmsKeyId>}
type oidcConfigForResponse = {
  @as("JwksUri") jwksUri: option<oidcEndpoint>,
  @as("LogoutEndpoint") logoutEndpoint: option<oidcEndpoint>,
  @as("UserInfoEndpoint") userInfoEndpoint: option<oidcEndpoint>,
  @as("TokenEndpoint") tokenEndpoint: option<oidcEndpoint>,
  @as("AuthorizationEndpoint") authorizationEndpoint: option<oidcEndpoint>,
  @as("Issuer") issuer: option<oidcEndpoint>,
  @as("ClientId") clientId: option<clientId>,
}
type oidcConfig = {
  @as("JwksUri") jwksUri: oidcEndpoint,
  @as("LogoutEndpoint") logoutEndpoint: oidcEndpoint,
  @as("UserInfoEndpoint") userInfoEndpoint: oidcEndpoint,
  @as("TokenEndpoint") tokenEndpoint: oidcEndpoint,
  @as("AuthorizationEndpoint") authorizationEndpoint: oidcEndpoint,
  @as("Issuer") issuer: oidcEndpoint,
  @as("ClientSecret") clientSecret: clientSecret,
  @as("ClientId") clientId: clientId,
}
type offlineStoreStatus = {
  @as("BlockedReason") blockedReason: option<blockedReason>,
  @as("Status") status: offlineStoreStatusValue,
}
type objectiveStatusCounters = {
  @as("Failed") failed: option<objectiveStatusCounter>,
  @as("Pending") pending: option<objectiveStatusCounter>,
  @as("Succeeded") succeeded: option<objectiveStatusCounter>,
}
type notificationConfiguration = {
  @as("NotificationTopicArn") notificationTopicArn: option<notificationTopicArn>,
}
type notebookInstanceLifecycleHook = {
  @as("Content") content: option<notebookInstanceLifecycleConfigContent>,
}
type notebookInstanceLifecycleConfigSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("NotebookInstanceLifecycleConfigArn")
  notebookInstanceLifecycleConfigArn: notebookInstanceLifecycleConfigArn,
  @as("NotebookInstanceLifecycleConfigName")
  notebookInstanceLifecycleConfigName: notebookInstanceLifecycleConfigName,
}
type notebookInstanceAcceleratorTypes = array<notebookInstanceAcceleratorType>
type multiModelConfig = {@as("ModelCacheSetting") modelCacheSetting: option<modelCacheSetting>}
type monitoringStoppingCondition = {
  @as("MaxRuntimeInSeconds") maxRuntimeInSeconds: monitoringMaxRuntimeInSeconds,
}
type monitoringStatisticsResource = {@as("S3Uri") s3Uri: option<s3Uri>}
type monitoringScheduleSummary = {
  @as("MonitoringType") monitoringType: option<monitoringType>,
  @as("MonitoringJobDefinitionName")
  monitoringJobDefinitionName: option<monitoringJobDefinitionName>,
  @as("EndpointName") endpointName: option<endpointName>,
  @as("MonitoringScheduleStatus") monitoringScheduleStatus: scheduleStatus,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreationTime") creationTime: timestamp_,
  @as("MonitoringScheduleArn") monitoringScheduleArn: monitoringScheduleArn,
  @as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName,
}
type monitoringS3Output = {
  @as("S3UploadMode") s3UploadMode: option<processingS3UploadMode>,
  @as("LocalPath") localPath: processingLocalPath,
  @as("S3Uri") s3Uri: monitoringS3Uri,
}
type monitoringJobDefinitionSummary = {
  @as("EndpointName") endpointName: endpointName,
  @as("CreationTime") creationTime: timestamp_,
  @as("MonitoringJobDefinitionArn") monitoringJobDefinitionArn: monitoringJobDefinitionArn,
  @as("MonitoringJobDefinitionName") monitoringJobDefinitionName: monitoringJobDefinitionName,
}
type monitoringGroundTruthS3Input = {@as("S3Uri") s3Uri: option<monitoringS3Uri>}
type monitoringExecutionSummary = {
  @as("MonitoringType") monitoringType: option<monitoringType>,
  @as("MonitoringJobDefinitionName")
  monitoringJobDefinitionName: option<monitoringJobDefinitionName>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("EndpointName") endpointName: option<endpointName>,
  @as("ProcessingJobArn") processingJobArn: option<processingJobArn>,
  @as("MonitoringExecutionStatus") monitoringExecutionStatus: executionStatus,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreationTime") creationTime: timestamp_,
  @as("ScheduledTime") scheduledTime: timestamp_,
  @as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName,
}
type monitoringEnvironmentMap = Js.Dict.t<processingEnvironmentValue>
type monitoringContainerArguments = array<containerArgument>
type monitoringConstraintsResource = {@as("S3Uri") s3Uri: option<s3Uri>}
type monitoringClusterConfig = {
  @as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
  @as("VolumeSizeInGB") volumeSizeInGB: processingVolumeSizeInGB,
  @as("InstanceType") instanceType: processingInstanceType,
  @as("InstanceCount") instanceCount: processingInstanceCount,
}
type modelSummary = {
  @as("CreationTime") creationTime: timestamp_,
  @as("ModelArn") modelArn: modelArn,
  @as("ModelName") modelName: modelName,
}
type modelStepMetadata = {@as("Arn") arn: option<string256>}
type modelPackageSummary = {
  @as("ModelApprovalStatus") modelApprovalStatus: option<modelApprovalStatus>,
  @as("ModelPackageStatus") modelPackageStatus: modelPackageStatus,
  @as("CreationTime") creationTime: creationTime,
  @as("ModelPackageDescription") modelPackageDescription: option<entityDescription>,
  @as("ModelPackageArn") modelPackageArn: modelPackageArn,
  @as("ModelPackageVersion") modelPackageVersion: option<modelPackageVersion>,
  @as("ModelPackageGroupName") modelPackageGroupName: option<entityName>,
  @as("ModelPackageName") modelPackageName: entityName,
}
type modelPackageStatusItem = {
  @as("FailureReason") failureReason: option<string_>,
  @as("Status") status: detailedModelPackageStatus,
  @as("Name") name: entityName,
}
type modelPackageGroupSummary = {
  @as("ModelPackageGroupStatus") modelPackageGroupStatus: modelPackageGroupStatus,
  @as("CreationTime") creationTime: creationTime,
  @as("ModelPackageGroupDescription") modelPackageGroupDescription: option<entityDescription>,
  @as("ModelPackageGroupArn") modelPackageGroupArn: modelPackageGroupArn,
  @as("ModelPackageGroupName") modelPackageGroupName: entityName,
}
type modelPackageContainerDefinition = {
  @as("ProductId") productId: option<productId>,
  @as("ModelDataUrl") modelDataUrl: option<url>,
  @as("ImageDigest") imageDigest: option<imageDigest>,
  @as("Image") image: containerImage,
  @as("ContainerHostname") containerHostname: option<containerHostname>,
}
type modelDigests = {@as("ArtifactDigest") artifactDigest: option<artifactDigest>}
type modelDeployResult = {@as("EndpointName") endpointName: option<endpointName>}
type modelDeployConfig = {
  @as("EndpointName") endpointName: option<endpointName>,
  @as("AutoGenerateEndpointName") autoGenerateEndpointName: option<autoGenerateEndpointName>,
}
type modelClientConfig = {
  @as("InvocationsMaxRetries") invocationsMaxRetries: option<invocationsMaxRetries>,
  @as("InvocationsTimeoutInSeconds")
  invocationsTimeoutInSeconds: option<invocationsTimeoutInSeconds>,
}
type modelArtifacts = {@as("S3ModelArtifacts") s3ModelArtifacts: s3Uri}
type metricsSource = {
  @as("S3Uri") s3Uri: s3Uri,
  @as("ContentDigest") contentDigest: option<contentDigest>,
  @as("ContentType") contentType: contentType,
}
type metricDefinition = {
  @as("Regex") regex: metricRegex,
  @as("Name") name: metricName,
}
type metricData = {
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Value") value: option<float_>,
  @as("MetricName") metricName: option<metricName>,
}
type metadataProperties = {
  @as("ProjectId") projectId: option<metadataPropertyValue>,
  @as("GeneratedBy") generatedBy: option<metadataPropertyValue>,
  @as("Repository") repository: option<metadataPropertyValue>,
  @as("CommitId") commitId: option<metadataPropertyValue>,
}
type listTrialComponentKey256 = array<trialComponentKey256>
type listLineageEntityParameterKey = array<stringParameterValue>
type lineageEntityParameters = Js.Dict.t<stringParameterValue>
type labelingJobStoppingConditions = {
  @as("MaxPercentageOfInputDatasetLabeled")
  maxPercentageOfInputDatasetLabeled: option<maxPercentageOfInputDatasetLabeled>,
  @as("MaxHumanLabeledObjectCount") maxHumanLabeledObjectCount: option<maxHumanLabeledObjectCount>,
}
type labelingJobSnsDataSource = {@as("SnsTopicArn") snsTopicArn: snsTopicArn}
type labelingJobS3DataSource = {@as("ManifestS3Uri") manifestS3Uri: s3Uri}
type labelingJobResourceConfig = {@as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>}
type labelingJobOutputConfig = {
  @as("SnsTopicArn") snsTopicArn: option<snsTopicArn>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("S3OutputPath") s3OutputPath: s3Uri,
}
type labelingJobOutput = {
  @as("FinalActiveLearningModelArn") finalActiveLearningModelArn: option<modelArn>,
  @as("OutputDatasetS3Uri") outputDatasetS3Uri: s3Uri,
}
type labelCountersForWorkteam = {
  @as("Total") total: option<labelCounter>,
  @as("PendingHuman") pendingHuman: option<labelCounter>,
  @as("HumanLabeled") humanLabeled: option<labelCounter>,
}
type labelCounters = {
  @as("Unlabeled") unlabeled: option<labelCounter>,
  @as("FailedNonRetryableError") failedNonRetryableError: option<labelCounter>,
  @as("MachineLabeled") machineLabeled: option<labelCounter>,
  @as("HumanLabeled") humanLabeled: option<labelCounter>,
  @as("TotalLabeled") totalLabeled: option<labelCounter>,
}
type kernelSpec = {
  @as("DisplayName") displayName: option<kernelDisplayName>,
  @as("Name") name: kernelName,
}
type jsonContentTypes = array<jsonContentType>
type integerParameterRangeSpecification = {
  @as("MaxValue") maxValue: parameterValue,
  @as("MinValue") minValue: parameterValue,
}
type integerParameterRange = {
  @as("ScalingType") scalingType: option<hyperParameterScalingType>,
  @as("MaxValue") maxValue: parameterValue,
  @as("MinValue") minValue: parameterValue,
  @as("Name") name: parameterKey,
}
type inputModes = array<trainingInputMode>
type inputConfig = {
  @as("FrameworkVersion") frameworkVersion: option<frameworkVersion>,
  @as("Framework") framework: framework,
  @as("DataInputConfig") dataInputConfig: dataInputConfig,
  @as("S3Uri") s3Uri: s3Uri,
}
type inferenceExecutionConfig = {@as("Mode") mode: inferenceExecutionMode}
type imageVersion = {
  @as("Version") version: imageVersionNumber,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("ImageVersionStatus") imageVersionStatus: imageVersionStatus,
  @as("ImageVersionArn") imageVersionArn: imageVersionArn,
  @as("ImageArn") imageArn: imageArn,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CreationTime") creationTime: timestamp_,
}
type imageDeletePropertyList = array<imageDeleteProperty>
type image = {
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("ImageStatus") imageStatus: imageStatus,
  @as("ImageName") imageName: imageName,
  @as("ImageArn") imageArn: imageArn,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("DisplayName") displayName: option<imageDisplayName>,
  @as("Description") description: option<imageDescription>,
  @as("CreationTime") creationTime: timestamp_,
}
type hyperParameters = Js.Dict.t<hyperParameterValue>
type hyperParameterTuningJobObjective = {
  @as("MetricName") metricName: metricName,
  @as("Type") type_: hyperParameterTuningJobObjectiveType,
}
type humanTaskUiSummary = {
  @as("CreationTime") creationTime: timestamp_,
  @as("HumanTaskUiArn") humanTaskUiArn: humanTaskUiArn,
  @as("HumanTaskUiName") humanTaskUiName: humanTaskUiName,
}
type humanLoopRequestSource = {
  @as("AwsManagedHumanLoopRequestSource")
  awsManagedHumanLoopRequestSource: awsManagedHumanLoopRequestSource,
}
type humanLoopActivationConditionsConfig = {
  @as("HumanLoopActivationConditions")
  humanLoopActivationConditions: synthesizedJsonHumanLoopActivationConditions,
}
type hookParameters = Js.Dict.t<configValue>
type groups = array<group>
type gitConfigForUpdate = {@as("SecretArn") secretArn: option<secretArn>}
type gitConfig = {
  @as("SecretArn") secretArn: option<secretArn>,
  @as("Branch") branch: option<branch>,
  @as("RepositoryUrl") repositoryUrl: gitConfigUrl,
}
type flowDefinitionTaskKeywords = array<flowDefinitionTaskKeyword>
type flowDefinitionSummary = {
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CreationTime") creationTime: timestamp_,
  @as("FlowDefinitionStatus") flowDefinitionStatus: flowDefinitionStatus,
  @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
  @as("FlowDefinitionName") flowDefinitionName: flowDefinitionName,
}
type flowDefinitionOutputConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("S3OutputPath") s3OutputPath: s3Uri,
}
type finalHyperParameterTuningJobObjectiveMetric = {
  @as("Value") value: metricValue,
  @as("MetricName") metricName: metricName,
  @as("Type") type_: option<hyperParameterTuningJobObjectiveType>,
}
type finalAutoMLJobObjectiveMetric = {
  @as("Value") value: metricValue,
  @as("MetricName") metricName: autoMLMetricEnum,
  @as("Type") type_: option<autoMLJobObjectiveType>,
}
type filter = {
  @as("Value") value: option<filterValue>,
  @as("Operator") operator: option<operator>,
  @as("Name") name: resourcePropertyName,
}
type fileSystemDataSource = {
  @as("DirectoryPath") directoryPath: directoryPath,
  @as("FileSystemType") fileSystemType: fileSystemType,
  @as("FileSystemAccessMode") fileSystemAccessMode: fileSystemAccessMode,
  @as("FileSystemId") fileSystemId: fileSystemId,
}
type fileSystemConfig = {
  @as("DefaultGid") defaultGid: option<defaultGid>,
  @as("DefaultUid") defaultUid: option<defaultUid>,
  @as("MountPath") mountPath: option<mountPath>,
}
type featureDefinition = {
  @as("FeatureType") featureType: option<featureType>,
  @as("FeatureName") featureName: option<featureName>,
}
type experimentSource = {
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceArn") sourceArn: experimentSourceArn,
}
type experimentConfig = {
  @as("TrialComponentDisplayName") trialComponentDisplayName: option<experimentEntityName>,
  @as("TrialName") trialName: option<experimentEntityName>,
  @as("ExperimentName") experimentName: option<experimentEntityName>,
}
type environmentMap = Js.Dict.t<environmentValue>
type endpointSummary = {
  @as("EndpointStatus") endpointStatus: endpointStatus,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreationTime") creationTime: timestamp_,
  @as("EndpointArn") endpointArn: endpointArn,
  @as("EndpointName") endpointName: endpointName,
}
type endpointInput = {
  @as("EndTimeOffset") endTimeOffset: option<monitoringTimeOffsetString>,
  @as("StartTimeOffset") startTimeOffset: option<monitoringTimeOffsetString>,
  @as("ProbabilityThresholdAttribute")
  probabilityThresholdAttribute: option<probabilityThresholdAttribute>,
  @as("ProbabilityAttribute") probabilityAttribute: option<string_>,
  @as("InferenceAttribute") inferenceAttribute: option<string_>,
  @as("FeaturesAttribute") featuresAttribute: option<string_>,
  @as("S3DataDistributionType") s3DataDistributionType: option<processingS3DataDistributionType>,
  @as("S3InputMode") s3InputMode: option<processingS3InputMode>,
  @as("LocalPath") localPath: processingLocalPath,
  @as("EndpointName") endpointName: endpointName,
}
type endpointConfigSummary = {
  @as("CreationTime") creationTime: timestamp_,
  @as("EndpointConfigArn") endpointConfigArn: endpointConfigArn,
  @as("EndpointConfigName") endpointConfigName: endpointConfigName,
}
type edgePackagingJobSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ModelVersion") modelVersion: option<edgeVersion>,
  @as("ModelName") modelName: option<entityName>,
  @as("CompilationJobName") compilationJobName: option<entityName>,
  @as("EdgePackagingJobStatus") edgePackagingJobStatus: edgePackagingJobStatus,
  @as("EdgePackagingJobName") edgePackagingJobName: entityName,
  @as("EdgePackagingJobArn") edgePackagingJobArn: edgePackagingJobArn,
}
type edgeOutputConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("S3OutputLocation") s3OutputLocation: s3Uri,
}
type edgeModelSummary = {
  @as("ModelVersion") modelVersion: edgeVersion,
  @as("ModelName") modelName: entityName,
}
type edgeModelStat = {
  @as("SamplingDeviceCount") samplingDeviceCount: long,
  @as("ActiveDeviceCount") activeDeviceCount: long,
  @as("ConnectedDeviceCount") connectedDeviceCount: long,
  @as("OfflineDeviceCount") offlineDeviceCount: long,
  @as("ModelVersion") modelVersion: edgeVersion,
  @as("ModelName") modelName: entityName,
}
type edgeModel = {
  @as("LatestInference") latestInference: option<timestamp_>,
  @as("LatestSampleTime") latestSampleTime: option<timestamp_>,
  @as("ModelVersion") modelVersion: edgeVersion,
  @as("ModelName") modelName: entityName,
}
type domainDetails = {
  @as("Url") url: option<string1024>,
  @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("Status") status: option<domainStatus>,
  @as("DomainName") domainName: option<domainName>,
  @as("DomainId") domainId: option<domainId>,
  @as("DomainArn") domainArn: option<domainArn>,
}
type deviceStats = {
  @as("RegisteredDeviceCount") registeredDeviceCount: long,
  @as("ConnectedDeviceCount") connectedDeviceCount: long,
}
type deviceNames = array<deviceName>
type deviceFleetSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("DeviceFleetName") deviceFleetName: entityName,
  @as("DeviceFleetArn") deviceFleetArn: deviceFleetArn,
}
type device = {
  @as("IotThingName") iotThingName: option<thingName>,
  @as("Description") description: option<deviceDescription>,
  @as("DeviceName") deviceName: deviceName,
}
type desiredWeightAndCapacity = {
  @as("DesiredInstanceCount") desiredInstanceCount: option<taskCount>,
  @as("DesiredWeight") desiredWeight: option<variantWeight>,
  @as("VariantName") variantName: variantName,
}
type deployedImage = {
  @as("ResolutionTime") resolutionTime: option<timestamp_>,
  @as("ResolvedImage") resolvedImage: option<containerImage>,
  @as("SpecifiedImage") specifiedImage: option<containerImage>,
}
type debugRuleEvaluationStatus = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("StatusDetails") statusDetails: option<statusDetails>,
  @as("RuleEvaluationStatus") ruleEvaluationStatus: option<ruleEvaluationStatus>,
  @as("RuleEvaluationJobArn") ruleEvaluationJobArn: option<processingJobArn>,
  @as("RuleConfigurationName") ruleConfigurationName: option<ruleConfigurationName>,
}
type dataProcessing = {
  @as("JoinSource") joinSource: option<joinSource>,
  @as("OutputFilter") outputFilter: option<jsonPath>,
  @as("InputFilter") inputFilter: option<jsonPath>,
}
type dataCatalogConfig = {
  @as("Database") database: database,
  @as("Catalog") catalog: catalog,
  @as("TableName") tableName: tableName,
}
type dataCaptureConfigSummary = {
  @as("KmsKeyId") kmsKeyId: kmsKeyId,
  @as("DestinationS3Uri") destinationS3Uri: destinationS3Uri,
  @as("CurrentSamplingPercentage") currentSamplingPercentage: samplingPercentage,
  @as("CaptureStatus") captureStatus: captureStatus,
  @as("EnableCapture") enableCapture: enableCapture,
}
type customImage = {
  @as("AppImageConfigName") appImageConfigName: appImageConfigName,
  @as("ImageVersionNumber") imageVersionNumber: option<imageVersionNumber>,
  @as("ImageName") imageName: imageName,
}
type csvContentTypes = array<csvContentType>
type continuousParameterRangeSpecification = {
  @as("MaxValue") maxValue: parameterValue,
  @as("MinValue") minValue: parameterValue,
}
type continuousParameterRange = {
  @as("ScalingType") scalingType: option<hyperParameterScalingType>,
  @as("MaxValue") maxValue: parameterValue,
  @as("MinValue") minValue: parameterValue,
  @as("Name") name: parameterKey,
}
type contextSource = {
  @as("SourceId") sourceId: option<string256>,
  @as("SourceType") sourceType: option<string256>,
  @as("SourceUri") sourceUri: string2048,
}
type contentTypes = array<contentType>
type contentClassifiers = array<contentClassifier>
type containerEntrypoint = array<containerEntrypointString>
type containerArguments = array<containerArgument>
type conditionStepMetadata = {@as("Outcome") outcome: option<conditionOutcome>}
type compressionTypes = array<compressionType>
type compilationJobSummary = {
  @as("CompilationJobStatus") compilationJobStatus: compilationJobStatus,
  @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
  @as("CompilationTargetPlatformAccelerator")
  compilationTargetPlatformAccelerator: option<targetPlatformAccelerator>,
  @as("CompilationTargetPlatformArch") compilationTargetPlatformArch: option<targetPlatformArch>,
  @as("CompilationTargetPlatformOs") compilationTargetPlatformOs: option<targetPlatformOs>,
  @as("CompilationTargetDevice") compilationTargetDevice: option<targetDevice>,
  @as("CompilationEndTime") compilationEndTime: option<timestamp_>,
  @as("CompilationStartTime") compilationStartTime: option<timestamp_>,
  @as("CreationTime") creationTime: creationTime,
  @as("CompilationJobArn") compilationJobArn: compilationJobArn,
  @as("CompilationJobName") compilationJobName: entityName,
}
type collectionParameters = Js.Dict.t<configValue>
type cognitoMemberDefinition = {
  @as("ClientId") clientId: clientId,
  @as("UserGroup") userGroup: cognitoUserGroup,
  @as("UserPool") userPool: cognitoUserPool,
}
type cognitoConfig = {
  @as("ClientId") clientId: clientId,
  @as("UserPool") userPool: cognitoUserPool,
}
type cidrs = array<cidr>
type checkpointConfig = {
  @as("LocalPath") localPath: option<directoryPath>,
  @as("S3Uri") s3Uri: s3Uri,
}
type captureOption = {@as("CaptureMode") captureMode: captureMode}
type capacitySize = {
  @as("Value") value: capacitySizeValue,
  @as("Type") type_: capacitySizeType,
}
type candidateArtifactLocations = {@as("Explainability") explainability: explainabilityLocation}
type cacheHitResult = {
  @as("SourcePipelineExecutionArn") sourcePipelineExecutionArn: option<pipelineExecutionArn>,
}
type autoMLS3DataSource = {
  @as("S3Uri") s3Uri: s3Uri,
  @as("S3DataType") s3DataType: autoMLS3DataType,
}
type autoMLPartialFailureReason = {
  @as("PartialFailureMessage") partialFailureMessage: option<autoMLFailureReason>,
}
type autoMLOutputDataConfig = {
  @as("S3OutputPath") s3OutputPath: s3Uri,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
}
type autoMLJobObjective = {@as("MetricName") metricName: autoMLMetricEnum}
type autoMLJobCompletionCriteria = {
  @as("MaxAutoMLJobRuntimeInSeconds")
  maxAutoMLJobRuntimeInSeconds: option<maxAutoMLJobRuntimeInSeconds>,
  @as("MaxRuntimePerTrainingJobInSeconds")
  maxRuntimePerTrainingJobInSeconds: option<maxRuntimePerTrainingJobInSeconds>,
  @as("MaxCandidates") maxCandidates: option<maxCandidates>,
}
type autoMLJobArtifacts = {
  @as("DataExplorationNotebookLocation")
  dataExplorationNotebookLocation: option<dataExplorationNotebookLocation>,
  @as("CandidateDefinitionNotebookLocation")
  candidateDefinitionNotebookLocation: option<candidateDefinitionNotebookLocation>,
}
type autoMLCandidateStep = {
  @as("CandidateStepName") candidateStepName: candidateStepName,
  @as("CandidateStepArn") candidateStepArn: candidateStepArn,
  @as("CandidateStepType") candidateStepType: candidateStepType,
}
type attributeNames = array<attributeName>
type athenaDatasetDefinition = {
  @as("OutputCompression") outputCompression: option<athenaResultCompressionType>,
  @as("OutputFormat") outputFormat: athenaResultFormat,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("OutputS3Uri") outputS3Uri: s3Uri,
  @as("WorkGroup") workGroup: option<athenaWorkGroup>,
  @as("QueryString") queryString: athenaQueryString,
  @as("Database") database: athenaDatabase,
  @as("Catalog") catalog: athenaCatalog,
}
type artifactSourceType = {
  @as("Value") value: string256,
  @as("SourceIdType") sourceIdType: artifactSourceIdType,
}
type appDetails = {
  @as("CreationTime") creationTime: option<creationTime>,
  @as("Status") status: option<appStatus>,
  @as("AppName") appName: option<appName>,
  @as("AppType") appType: option<appType>,
  @as("UserProfileName") userProfileName: option<userProfileName>,
  @as("DomainId") domainId: option<domainId>,
}
type annotationConsolidationConfig = {
  @as("AnnotationConsolidationLambdaArn") annotationConsolidationLambdaArn: lambdaFunctionArn,
}
type algorithmSummary = {
  @as("AlgorithmStatus") algorithmStatus: algorithmStatus,
  @as("CreationTime") creationTime: creationTime,
  @as("AlgorithmDescription") algorithmDescription: option<entityDescription>,
  @as("AlgorithmArn") algorithmArn: algorithmArn,
  @as("AlgorithmName") algorithmName: entityName,
}
type algorithmStatusItem = {
  @as("FailureReason") failureReason: option<string_>,
  @as("Status") status: detailedAlgorithmStatus,
  @as("Name") name: entityName,
}
type alarm = {@as("AlarmName") alarmName: option<alarmName>}
type agentVersion = {
  @as("AgentCount") agentCount: long,
  @as("Version") version: edgeVersion,
}
type additionalCodeRepositoryNamesOrUrls = array<codeRepositoryNameOrUrl>
type actionSource = {
  @as("SourceId") sourceId: option<string256>,
  @as("SourceType") sourceType: option<string256>,
  @as("SourceUri") sourceUri: string2048,
}
type vpcConfig = {
  @as("Subnets") subnets: subnets,
  @as("SecurityGroupIds") securityGroupIds: vpcSecurityGroupIds,
}
type variantPropertyList = array<variantProperty>
type userProfileList = array<userProfileDetails>
type trialSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("TrialSource") trialSource: option<trialSource>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("TrialName") trialName: option<experimentEntityName>,
  @as("TrialArn") trialArn: option<trialArn>,
}
type trialComponentSummary = {
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("Status") status: option<trialComponentStatus>,
  @as("TrialComponentSource") trialComponentSource: option<trialComponentSource>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
  @as("TrialComponentName") trialComponentName: option<experimentEntityName>,
}
type trialComponentSimpleSummary = {
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("TrialComponentSource") trialComponentSource: option<trialComponentSource>,
  @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
  @as("TrialComponentName") trialComponentName: option<experimentEntityName>,
}
type trialComponentParameters = Js.Dict.t<trialComponentParameterValue>
type trialComponentMetricSummaries = array<trialComponentMetricSummary>
type trialComponentArtifacts = Js.Dict.t<trialComponentArtifact>
type transformJobSummaries = array<transformJobSummary>
type transformDataSource = {@as("S3DataSource") s3DataSource: transformS3DataSource}
type trainingJobSummaries = array<trainingJobSummary>
type trafficRoutingConfig = {
  @as("CanarySize") canarySize: option<capacitySize>,
  @as("WaitIntervalInSeconds") waitIntervalInSeconds: waitIntervalInSeconds,
  @as("Type") type_: trafficRoutingConfigType,
}
type tensorBoardAppSettings = {@as("DefaultResourceSpec") defaultResourceSpec: option<resourceSpec>}
type tagList_ = array<tag>
type suggestionQuery = {@as("PropertyNameQuery") propertyNameQuery: option<propertyNameQuery>}
type subscribedWorkteams = array<subscribedWorkteam>
type sourceIpConfig = {@as("Cidrs") cidrs: cidrs}
type sourceAlgorithmList = array<sourceAlgorithm>
type secondaryStatusTransitions = array<secondaryStatusTransition>
type s3DataSource = {
  @as("AttributeNames") attributeNames: option<attributeNames>,
  @as("S3DataDistributionType") s3DataDistributionType: option<s3DataDistribution>,
  @as("S3Uri") s3Uri: s3Uri,
  @as("S3DataType") s3DataType: s3DataType,
}
type resolvedAttributes = {
  @as("CompletionCriteria") completionCriteria: option<autoMLJobCompletionCriteria>,
  @as("ProblemType") problemType: option<problemType>,
  @as("AutoMLJobObjective") autoMLJobObjective: option<autoMLJobObjective>,
}
type renderingErrorList = array<renderingError>
type publicWorkforceTaskPrice = {@as("AmountInUsd") amountInUsd: option<usd>}
type provisioningParameters = array<provisioningParameter>
type propertyNameSuggestionList = array<propertyNameSuggestion>
type projectSummaryList = array<projectSummary>
type profilerRuleEvaluationStatuses = array<profilerRuleEvaluationStatus>
type profilerRuleConfiguration = {
  @as("RuleParameters") ruleParameters: option<ruleParameters>,
  @as("VolumeSizeInGB") volumeSizeInGB: option<optionalVolumeSizeInGB>,
  @as("InstanceType") instanceType: option<processingInstanceType>,
  @as("RuleEvaluatorImage") ruleEvaluatorImage: algorithmImage,
  @as("S3OutputPath") s3OutputPath: option<s3Uri>,
  @as("LocalPath") localPath: option<directoryPath>,
  @as("RuleConfigurationName") ruleConfigurationName: ruleConfigurationName,
}
type profilerConfigForUpdate = {
  @as("DisableProfiler") disableProfiler: option<disableProfiler>,
  @as("ProfilingParameters") profilingParameters: option<profilingParameters>,
  @as("ProfilingIntervalInMilliseconds")
  profilingIntervalInMilliseconds: option<profilingIntervalInMilliseconds>,
  @as("S3OutputPath") s3OutputPath: option<s3Uri>,
}
type profilerConfig = {
  @as("ProfilingParameters") profilingParameters: option<profilingParameters>,
  @as("ProfilingIntervalInMilliseconds")
  profilingIntervalInMilliseconds: option<profilingIntervalInMilliseconds>,
  @as("S3OutputPath") s3OutputPath: s3Uri,
}
type productionVariant = {
  @as("CoreDumpConfig") coreDumpConfig: option<productionVariantCoreDumpConfig>,
  @as("AcceleratorType") acceleratorType: option<productionVariantAcceleratorType>,
  @as("InitialVariantWeight") initialVariantWeight: option<variantWeight>,
  @as("InstanceType") instanceType: productionVariantInstanceType,
  @as("InitialInstanceCount") initialInstanceCount: taskCount,
  @as("ModelName") modelName: modelName,
  @as("VariantName") variantName: variantName,
}
type processingResources = {@as("ClusterConfig") clusterConfig: processingClusterConfig}
type processingOutput = {
  @as("AppManaged") appManaged: option<appManaged>,
  @as("FeatureStoreOutput") featureStoreOutput: option<processingFeatureStoreOutput>,
  @as("S3Output") s3Output: option<processingS3Output>,
  @as("OutputName") outputName: string_,
}
type processingJobSummaries = array<processingJobSummary>
type pipelineSummaryList = array<pipelineSummary>
type pipelineExecutionSummaryList = array<pipelineExecutionSummary>
type pipelineExecutionStepMetadata = {
  @as("Condition") condition: option<conditionStepMetadata>,
  @as("RegisterModel") registerModel: option<registerModelStepMetadata>,
  @as("Model") model: option<modelStepMetadata>,
  @as("TransformJob") transformJob: option<transformJobStepMetadata>,
  @as("ProcessingJob") processingJob: option<processingJobStepMetadata>,
  @as("TrainingJob") trainingJob: option<trainingJobStepMetadata>,
}
type parents = array<parent>
type parentHyperParameterTuningJobs = array<parentHyperParameterTuningJob>
type parameterList = array<parameter>
type outputConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("CompilerOptions") compilerOptions: option<compilerOptions>,
  @as("TargetPlatform") targetPlatform: option<targetPlatform>,
  @as("TargetDevice") targetDevice: option<targetDevice>,
  @as("S3OutputLocation") s3OutputLocation: s3Uri,
}
type onlineStoreConfig = {
  @as("EnableOnlineStore") enableOnlineStore: option<boolean_>,
  @as("SecurityConfig") securityConfig: option<onlineStoreSecurityConfig>,
}
type oidcMemberDefinition = {@as("Groups") groups: groups}
type offlineStoreConfig = {
  @as("DataCatalogConfig") dataCatalogConfig: option<dataCatalogConfig>,
  @as("DisableGlueTableCreation") disableGlueTableCreation: option<boolean_>,
  @as("S3StorageConfig") s3StorageConfig: s3StorageConfig,
}
type notebookInstanceSummary = {
  @as("AdditionalCodeRepositories")
  additionalCodeRepositories: option<additionalCodeRepositoryNamesOrUrls>,
  @as("DefaultCodeRepository") defaultCodeRepository: option<codeRepositoryNameOrUrl>,
  @as("NotebookInstanceLifecycleConfigName")
  notebookInstanceLifecycleConfigName: option<notebookInstanceLifecycleConfigName>,
  @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("InstanceType") instanceType: option<instanceType>,
  @as("Url") url: option<notebookInstanceUrl>,
  @as("NotebookInstanceStatus") notebookInstanceStatus: option<notebookInstanceStatus>,
  @as("NotebookInstanceArn") notebookInstanceArn: notebookInstanceArn,
  @as("NotebookInstanceName") notebookInstanceName: notebookInstanceName,
}
type notebookInstanceLifecycleConfigSummaryList = array<notebookInstanceLifecycleConfigSummary>
type notebookInstanceLifecycleConfigList = array<notebookInstanceLifecycleHook>
type monitoringScheduleSummaryList = array<monitoringScheduleSummary>
type monitoringResources = {@as("ClusterConfig") clusterConfig: monitoringClusterConfig}
type monitoringOutput = {@as("S3Output") s3Output: monitoringS3Output}
type monitoringJobDefinitionSummaryList = array<monitoringJobDefinitionSummary>
type monitoringInput = {@as("EndpointInput") endpointInput: endpointInput}
type monitoringExecutionSummaryList = array<monitoringExecutionSummary>
type monitoringBaselineConfig = {
  @as("StatisticsResource") statisticsResource: option<monitoringStatisticsResource>,
  @as("ConstraintsResource") constraintsResource: option<monitoringConstraintsResource>,
  @as("BaseliningJobName") baseliningJobName: option<processingJobName>,
}
type monitoringAppSpecification = {
  @as("PostAnalyticsProcessorSourceUri") postAnalyticsProcessorSourceUri: option<s3Uri>,
  @as("RecordPreprocessorSourceUri") recordPreprocessorSourceUri: option<s3Uri>,
  @as("ContainerArguments") containerArguments: option<monitoringContainerArguments>,
  @as("ContainerEntrypoint") containerEntrypoint: option<containerEntrypoint>,
  @as("ImageUri") imageUri: imageUri,
}
type modelSummaryList = array<modelSummary>
type modelQualityJobInput = {
  @as("GroundTruthS3Input") groundTruthS3Input: monitoringGroundTruthS3Input,
  @as("EndpointInput") endpointInput: endpointInput,
}
type modelQualityBaselineConfig = {
  @as("ConstraintsResource") constraintsResource: option<monitoringConstraintsResource>,
  @as("BaseliningJobName") baseliningJobName: option<processingJobName>,
}
type modelQualityAppSpecification = {
  @as("Environment") environment: option<monitoringEnvironmentMap>,
  @as("ProblemType") problemType: option<monitoringProblemType>,
  @as("PostAnalyticsProcessorSourceUri") postAnalyticsProcessorSourceUri: option<s3Uri>,
  @as("RecordPreprocessorSourceUri") recordPreprocessorSourceUri: option<s3Uri>,
  @as("ContainerArguments") containerArguments: option<monitoringContainerArguments>,
  @as("ContainerEntrypoint") containerEntrypoint: option<containerEntrypoint>,
  @as("ImageUri") imageUri: imageUri,
}
type modelQuality = {
  @as("Constraints") constraints: option<metricsSource>,
  @as("Statistics") statistics: option<metricsSource>,
}
type modelPackageSummaryList = array<modelPackageSummary>
type modelPackageStatusItemList = array<modelPackageStatusItem>
type modelPackageGroupSummaryList = array<modelPackageGroupSummary>
type modelPackageContainerDefinitionList = array<modelPackageContainerDefinition>
type modelExplainabilityJobInput = {@as("EndpointInput") endpointInput: endpointInput}
type modelExplainabilityBaselineConfig = {
  @as("ConstraintsResource") constraintsResource: option<monitoringConstraintsResource>,
  @as("BaseliningJobName") baseliningJobName: option<processingJobName>,
}
type modelExplainabilityAppSpecification = {
  @as("Environment") environment: option<monitoringEnvironmentMap>,
  @as("ConfigUri") configUri: s3Uri,
  @as("ImageUri") imageUri: imageUri,
}
type modelDataQuality = {
  @as("Constraints") constraints: option<metricsSource>,
  @as("Statistics") statistics: option<metricsSource>,
}
type modelBiasJobInput = {
  @as("GroundTruthS3Input") groundTruthS3Input: monitoringGroundTruthS3Input,
  @as("EndpointInput") endpointInput: endpointInput,
}
type modelBiasBaselineConfig = {
  @as("ConstraintsResource") constraintsResource: option<monitoringConstraintsResource>,
  @as("BaseliningJobName") baseliningJobName: option<processingJobName>,
}
type modelBiasAppSpecification = {
  @as("Environment") environment: option<monitoringEnvironmentMap>,
  @as("ConfigUri") configUri: s3Uri,
  @as("ImageUri") imageUri: imageUri,
}
type metricDefinitionList = array<metricDefinition>
type labelingJobForWorkteamSummary = {
  @as("NumberOfHumanWorkersPerDataObject")
  numberOfHumanWorkersPerDataObject: option<numberOfHumanWorkersPerDataObject>,
  @as("LabelCounters") labelCounters: option<labelCountersForWorkteam>,
  @as("CreationTime") creationTime: timestamp_,
  @as("WorkRequesterAccountId") workRequesterAccountId: accountId,
  @as("JobReferenceCode") jobReferenceCode: jobReferenceCode,
  @as("LabelingJobName") labelingJobName: option<labelingJobName>,
}
type labelingJobDataSource = {
  @as("SnsDataSource") snsDataSource: option<labelingJobSnsDataSource>,
  @as("S3DataSource") s3DataSource: option<labelingJobS3DataSource>,
}
type labelingJobDataAttributes = {
  @as("ContentClassifiers") contentClassifiers: option<contentClassifiers>,
}
type labelingJobAlgorithmsConfig = {
  @as("LabelingJobResourceConfig") labelingJobResourceConfig: option<labelingJobResourceConfig>,
  @as("InitialActiveLearningModelArn") initialActiveLearningModelArn: option<modelArn>,
  @as("LabelingJobAlgorithmSpecificationArn")
  labelingJobAlgorithmSpecificationArn: labelingJobAlgorithmSpecificationArn,
}
type kernelSpecs = array<kernelSpec>
type jupyterServerAppSettings = {
  @as("DefaultResourceSpec") defaultResourceSpec: option<resourceSpec>,
}
type integerParameterRanges = array<integerParameterRange>
type images = array<image>
type imageVersions = array<imageVersion>
type imageConfig = {
  @as("RepositoryAuthConfig") repositoryAuthConfig: option<repositoryAuthConfig>,
  @as("RepositoryAccessMode") repositoryAccessMode: repositoryAccessMode,
}
type hyperParameterTuningJobSummary = {
  @as("ResourceLimits") resourceLimits: option<resourceLimits>,
  @as("ObjectiveStatusCounters") objectiveStatusCounters: objectiveStatusCounters,
  @as("TrainingJobStatusCounters") trainingJobStatusCounters: trainingJobStatusCounters,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("HyperParameterTuningEndTime") hyperParameterTuningEndTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("Strategy") strategy: hyperParameterTuningJobStrategyType,
  @as("HyperParameterTuningJobStatus") hyperParameterTuningJobStatus: hyperParameterTuningJobStatus,
  @as("HyperParameterTuningJobArn") hyperParameterTuningJobArn: hyperParameterTuningJobArn,
  @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
}
type hyperParameterTuningJobObjectives = array<hyperParameterTuningJobObjective>
type hyperParameterTrainingJobSummary = {
  @as("ObjectiveStatus") objectiveStatus: option<objectiveStatus>,
  @as("FinalHyperParameterTuningJobObjectiveMetric")
  finalHyperParameterTuningJobObjectiveMetric: option<finalHyperParameterTuningJobObjectiveMetric>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("TunedHyperParameters") tunedHyperParameters: hyperParameters,
  @as("TrainingJobStatus") trainingJobStatus: trainingJobStatus,
  @as("TrainingEndTime") trainingEndTime: option<timestamp_>,
  @as("TrainingStartTime") trainingStartTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("TuningJobName") tuningJobName: option<hyperParameterTuningJobName>,
  @as("TrainingJobArn") trainingJobArn: trainingJobArn,
  @as("TrainingJobName") trainingJobName: trainingJobName,
  @as("TrainingJobDefinitionName")
  trainingJobDefinitionName: option<hyperParameterTrainingJobDefinitionName>,
}
type humanTaskUiSummaries = array<humanTaskUiSummary>
type humanLoopActivationConfig = {
  @as("HumanLoopActivationConditionsConfig")
  humanLoopActivationConditionsConfig: humanLoopActivationConditionsConfig,
}
type flowDefinitionSummaries = array<flowDefinitionSummary>
type finalMetricDataList = array<metricData>
type filterList = array<filter>
type featureGroupSummary = {
  @as("OfflineStoreStatus") offlineStoreStatus: option<offlineStoreStatus>,
  @as("FeatureGroupStatus") featureGroupStatus: option<featureGroupStatus>,
  @as("CreationTime") creationTime: timestamp_,
  @as("FeatureGroupArn") featureGroupArn: featureGroupArn,
  @as("FeatureGroupName") featureGroupName: featureGroupName,
}
type featureDefinitions = array<featureDefinition>
type explainability = {@as("Report") report: option<metricsSource>}
type experimentSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ExperimentSource") experimentSource: option<experimentSource>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("ExperimentName") experimentName: option<experimentEntityName>,
  @as("ExperimentArn") experimentArn: option<experimentArn>,
}
type endpointSummaryList = array<endpointSummary>
type endpointConfigSummaryList = array<endpointConfigSummary>
type edgePackagingJobSummaries = array<edgePackagingJobSummary>
type edgeModels = array<edgeModel>
type edgeModelSummaries = array<edgeModelSummary>
type edgeModelStats = array<edgeModelStat>
type domainList = array<domainDetails>
type devices = array<device>
type deviceFleetSummaries = array<deviceFleetSummary>
type desiredWeightAndCapacityList = array<desiredWeightAndCapacity>
type deployedImages = array<deployedImage>
type debugRuleEvaluationStatuses = array<debugRuleEvaluationStatus>
type debugRuleConfiguration = {
  @as("RuleParameters") ruleParameters: option<ruleParameters>,
  @as("VolumeSizeInGB") volumeSizeInGB: option<optionalVolumeSizeInGB>,
  @as("InstanceType") instanceType: option<processingInstanceType>,
  @as("RuleEvaluatorImage") ruleEvaluatorImage: algorithmImage,
  @as("S3OutputPath") s3OutputPath: option<s3Uri>,
  @as("LocalPath") localPath: option<directoryPath>,
  @as("RuleConfigurationName") ruleConfigurationName: ruleConfigurationName,
}
type datasetDefinition = {
  @as("InputMode") inputMode: option<inputMode>,
  @as("DataDistributionType") dataDistributionType: option<dataDistributionType>,
  @as("LocalPath") localPath: option<processingLocalPath>,
  @as("RedshiftDatasetDefinition") redshiftDatasetDefinition: option<redshiftDatasetDefinition>,
  @as("AthenaDatasetDefinition") athenaDatasetDefinition: option<athenaDatasetDefinition>,
}
type dataQualityJobInput = {@as("EndpointInput") endpointInput: endpointInput}
type dataQualityBaselineConfig = {
  @as("StatisticsResource") statisticsResource: option<monitoringStatisticsResource>,
  @as("ConstraintsResource") constraintsResource: option<monitoringConstraintsResource>,
  @as("BaseliningJobName") baseliningJobName: option<processingJobName>,
}
type dataQualityAppSpecification = {
  @as("Environment") environment: option<monitoringEnvironmentMap>,
  @as("PostAnalyticsProcessorSourceUri") postAnalyticsProcessorSourceUri: option<s3Uri>,
  @as("RecordPreprocessorSourceUri") recordPreprocessorSourceUri: option<s3Uri>,
  @as("ContainerArguments") containerArguments: option<monitoringContainerArguments>,
  @as("ContainerEntrypoint") containerEntrypoint: option<containerEntrypoint>,
  @as("ImageUri") imageUri: imageUri,
}
type customImages = array<customImage>
type continuousParameterRanges = array<continuousParameterRange>
type contextSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ContextType") contextType: option<string256>,
  @as("Source") source: option<contextSource>,
  @as("ContextName") contextName: option<experimentEntityName>,
  @as("ContextArn") contextArn: option<contextArn>,
}
type compilationJobSummaries = array<compilationJobSummary>
type collectionConfiguration = {
  @as("CollectionParameters") collectionParameters: option<collectionParameters>,
  @as("CollectionName") collectionName: option<collectionName>,
}
type codeRepositorySummary = {
  @as("GitConfig") gitConfig: option<gitConfig>,
  @as("LastModifiedTime") lastModifiedTime: lastModifiedTime,
  @as("CreationTime") creationTime: creationTime,
  @as("CodeRepositoryArn") codeRepositoryArn: codeRepositoryArn,
  @as("CodeRepositoryName") codeRepositoryName: entityName,
}
type channelSpecification = {
  @as("SupportedInputModes") supportedInputModes: inputModes,
  @as("SupportedCompressionTypes") supportedCompressionTypes: option<compressionTypes>,
  @as("SupportedContentTypes") supportedContentTypes: contentTypes,
  @as("IsRequired") isRequired: option<boolean_>,
  @as("Description") description: option<entityDescription>,
  @as("Name") name: channelName,
}
type categoricalParameterRangeSpecification = {@as("Values") values: parameterValues}
type categoricalParameterRange = {
  @as("Values") values: parameterValues,
  @as("Name") name: parameterKey,
}
type captureOptionList = array<captureOption>
type captureContentTypeHeader = {
  @as("JsonContentTypes") jsonContentTypes: option<jsonContentTypes>,
  @as("CsvContentTypes") csvContentTypes: option<csvContentTypes>,
}
type candidateSteps = array<autoMLCandidateStep>
type candidateProperties = {
  @as("CandidateArtifactLocations") candidateArtifactLocations: option<candidateArtifactLocations>,
}
type bias = {@as("Report") report: option<metricsSource>}
type autoMLPartialFailureReasons = array<autoMLPartialFailureReason>
type autoMLDataSource = {@as("S3DataSource") s3DataSource: autoMLS3DataSource}
type autoMLContainerDefinition = {
  @as("Environment") environment: option<environmentMap>,
  @as("ModelDataUrl") modelDataUrl: url,
  @as("Image") image: containerImage,
}
type associationSummary = {
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("DestinationName") destinationName: option<experimentEntityName>,
  @as("SourceName") sourceName: option<experimentEntityName>,
  @as("AssociationType") associationType: option<associationEdgeType>,
  @as("DestinationType") destinationType: option<string256>,
  @as("SourceType") sourceType: option<string256>,
  @as("DestinationArn") destinationArn: option<associationEntityArn>,
  @as("SourceArn") sourceArn: option<associationEntityArn>,
}
type artifactSourceTypes = array<artifactSourceType>
type appSpecification = {
  @as("ContainerArguments") containerArguments: option<containerArguments>,
  @as("ContainerEntrypoint") containerEntrypoint: option<containerEntrypoint>,
  @as("ImageUri") imageUri: imageUri,
}
type appList = array<appDetails>
type algorithmSummaryList = array<algorithmSummary>
type algorithmStatusItemList = array<algorithmStatusItem>
type alarmList = array<alarm>
type agentVersions = array<agentVersion>
type actionSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Status") status: option<actionStatus>,
  @as("ActionType") actionType: option<string64>,
  @as("Source") source: option<actionSource>,
  @as("ActionName") actionName: option<experimentEntityName>,
  @as("ActionArn") actionArn: option<actionArn>,
}
type workforce = {
  @as("CreateDate") createDate: option<timestamp_>,
  @as("OidcConfig") oidcConfig: option<oidcConfigForResponse>,
  @as("CognitoConfig") cognitoConfig: option<cognitoConfig>,
  @as("SubDomain") subDomain: option<string_>,
  @as("SourceIpConfig") sourceIpConfig: option<sourceIpConfig>,
  @as("LastUpdatedDate") lastUpdatedDate: option<timestamp_>,
  @as("WorkforceArn") workforceArn: workforceArn,
  @as("WorkforceName") workforceName: workforceName,
}
type trialSummaries = array<trialSummary>
type trialComponentSummaries = array<trialComponentSummary>
type trialComponentSimpleSummaries = array<trialComponentSimpleSummary>
type transformInput = {
  @as("SplitType") splitType: option<splitType>,
  @as("CompressionType") compressionType: option<compressionType>,
  @as("ContentType") contentType: option<contentType>,
  @as("DataSource") dataSource: transformDataSource,
}
type sourceAlgorithmSpecification = {@as("SourceAlgorithms") sourceAlgorithms: sourceAlgorithmList}
type serviceCatalogProvisioningDetails = {
  @as("ProvisioningParameters") provisioningParameters: option<provisioningParameters>,
  @as("PathId") pathId: option<serviceCatalogEntityId>,
  @as("ProvisioningArtifactId") provisioningArtifactId: serviceCatalogEntityId,
  @as("ProductId") productId: serviceCatalogEntityId,
}
type profilerRuleConfigurations = array<profilerRuleConfiguration>
type productionVariantSummary = {
  @as("DesiredInstanceCount") desiredInstanceCount: option<taskCount>,
  @as("CurrentInstanceCount") currentInstanceCount: option<taskCount>,
  @as("DesiredWeight") desiredWeight: option<variantWeight>,
  @as("CurrentWeight") currentWeight: option<variantWeight>,
  @as("DeployedImages") deployedImages: option<deployedImages>,
  @as("VariantName") variantName: variantName,
}
type productionVariantList = array<productionVariant>
type processingOutputs = array<processingOutput>
type processingInput = {
  @as("DatasetDefinition") datasetDefinition: option<datasetDefinition>,
  @as("S3Input") s3Input: option<processingS3Input>,
  @as("AppManaged") appManaged: option<appManaged>,
  @as("InputName") inputName: string_,
}
type pipelineExecutionStep = {
  @as("Metadata") metadata: option<pipelineExecutionStepMetadata>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CacheHitResult") cacheHitResult: option<cacheHitResult>,
  @as("StepStatus") stepStatus: option<stepStatus>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("StepName") stepName: option<stepName>,
}
type pipelineExecution = {
  @as("PipelineParameters") pipelineParameters: option<parameterList>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("PipelineExecutionDescription")
  pipelineExecutionDescription: option<pipelineExecutionDescription>,
  @as("PipelineExecutionStatus") pipelineExecutionStatus: option<pipelineExecutionStatus>,
  @as("PipelineExecutionDisplayName") pipelineExecutionDisplayName: option<pipelineExecutionName>,
  @as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>,
  @as("PipelineArn") pipelineArn: option<pipelineArn>,
}
type pipeline = {
  @as("Tags") tags: option<tagList_>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("LastRunTime") lastRunTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("PipelineStatus") pipelineStatus: option<pipelineStatus>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("PipelineDescription") pipelineDescription: option<pipelineDescription>,
  @as("PipelineDisplayName") pipelineDisplayName: option<pipelineName>,
  @as("PipelineName") pipelineName: option<pipelineName>,
  @as("PipelineArn") pipelineArn: option<pipelineArn>,
}
type parameterRange = {
  @as("CategoricalParameterRangeSpecification")
  categoricalParameterRangeSpecification: option<categoricalParameterRangeSpecification>,
  @as("ContinuousParameterRangeSpecification")
  continuousParameterRangeSpecification: option<continuousParameterRangeSpecification>,
  @as("IntegerParameterRangeSpecification")
  integerParameterRangeSpecification: option<integerParameterRangeSpecification>,
}
type notebookInstanceSummaryList = array<notebookInstanceSummary>
type networkConfig = {
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
  @as("EnableInterContainerTrafficEncryption")
  enableInterContainerTrafficEncryption: option<boolean_>,
}
type nestedFilters = {
  @as("Filters") filters: filterList,
  @as("NestedPropertyName") nestedPropertyName: resourcePropertyName,
}
type monitoringOutputs = array<monitoringOutput>
type monitoringNetworkConfig = {
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
  @as("EnableInterContainerTrafficEncryption")
  enableInterContainerTrafficEncryption: option<boolean_>,
}
type monitoringInputs = array<monitoringInput>
type modelPackageStatusDetails = {
  @as("ImageScanStatuses") imageScanStatuses: option<modelPackageStatusItemList>,
  @as("ValidationStatuses") validationStatuses: modelPackageStatusItemList,
}
type modelPackageGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("ModelPackageGroupStatus") modelPackageGroupStatus: option<modelPackageGroupStatus>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("ModelPackageGroupDescription") modelPackageGroupDescription: option<entityDescription>,
  @as("ModelPackageGroupArn") modelPackageGroupArn: option<modelPackageGroupArn>,
  @as("ModelPackageGroupName") modelPackageGroupName: option<entityName>,
}
type modelMetrics = {
  @as("Explainability") explainability: option<explainability>,
  @as("Bias") bias: option<bias>,
  @as("ModelDataQuality") modelDataQuality: option<modelDataQuality>,
  @as("ModelQuality") modelQuality: option<modelQuality>,
}
type memberDefinition = {
  @as("OidcMemberDefinition") oidcMemberDefinition: option<oidcMemberDefinition>,
  @as("CognitoMemberDefinition") cognitoMemberDefinition: option<cognitoMemberDefinition>,
}
type labelingJobInputConfig = {
  @as("DataAttributes") dataAttributes: option<labelingJobDataAttributes>,
  @as("DataSource") dataSource: labelingJobDataSource,
}
type labelingJobForWorkteamSummaryList = array<labelingJobForWorkteamSummary>
type kernelGatewayImageConfig = {
  @as("FileSystemConfig") fileSystemConfig: option<fileSystemConfig>,
  @as("KernelSpecs") kernelSpecs: kernelSpecs,
}
type kernelGatewayAppSettings = {
  @as("CustomImages") customImages: option<customImages>,
  @as("DefaultResourceSpec") defaultResourceSpec: option<resourceSpec>,
}
type inferenceSpecification = {
  @as("SupportedResponseMIMETypes") supportedResponseMIMETypes: responseMIMETypes,
  @as("SupportedContentTypes") supportedContentTypes: contentTypes,
  @as("SupportedRealtimeInferenceInstanceTypes")
  supportedRealtimeInferenceInstanceTypes: option<realtimeInferenceInstanceTypes>,
  @as("SupportedTransformInstanceTypes")
  supportedTransformInstanceTypes: option<transformInstanceTypes>,
  @as("Containers") containers: modelPackageContainerDefinitionList,
}
type hyperParameterTuningJobWarmStartConfig = {
  @as("WarmStartType") warmStartType: hyperParameterTuningJobWarmStartType,
  @as("ParentHyperParameterTuningJobs")
  parentHyperParameterTuningJobs: parentHyperParameterTuningJobs,
}
type hyperParameterTuningJobSummaries = array<hyperParameterTuningJobSummary>
type hyperParameterTrainingJobSummaries = array<hyperParameterTrainingJobSummary>
type hyperParameterAlgorithmSpecification = {
  @as("MetricDefinitions") metricDefinitions: option<metricDefinitionList>,
  @as("AlgorithmName") algorithmName: option<arnOrName>,
  @as("TrainingInputMode") trainingInputMode: trainingInputMode,
  @as("TrainingImage") trainingImage: option<algorithmImage>,
}
type humanTaskConfig = {
  @as("PublicWorkforceTaskPrice") publicWorkforceTaskPrice: option<publicWorkforceTaskPrice>,
  @as("AnnotationConsolidationConfig") annotationConsolidationConfig: annotationConsolidationConfig,
  @as("MaxConcurrentTaskCount") maxConcurrentTaskCount: option<maxConcurrentTaskCount>,
  @as("TaskAvailabilityLifetimeInSeconds")
  taskAvailabilityLifetimeInSeconds: option<taskAvailabilityLifetimeInSeconds>,
  @as("TaskTimeLimitInSeconds") taskTimeLimitInSeconds: taskTimeLimitInSeconds,
  @as("NumberOfHumanWorkersPerDataObject")
  numberOfHumanWorkersPerDataObject: numberOfHumanWorkersPerDataObject,
  @as("TaskDescription") taskDescription: taskDescription,
  @as("TaskTitle") taskTitle: taskTitle,
  @as("TaskKeywords") taskKeywords: option<taskKeywords>,
  @as("PreHumanTaskLambdaArn") preHumanTaskLambdaArn: lambdaFunctionArn,
  @as("UiConfig") uiConfig: uiConfig,
  @as("WorkteamArn") workteamArn: workteamArn,
}
type humanLoopConfig = {
  @as("PublicWorkforceTaskPrice") publicWorkforceTaskPrice: option<publicWorkforceTaskPrice>,
  @as("TaskKeywords") taskKeywords: option<flowDefinitionTaskKeywords>,
  @as("TaskTimeLimitInSeconds")
  taskTimeLimitInSeconds: option<flowDefinitionTaskTimeLimitInSeconds>,
  @as("TaskAvailabilityLifetimeInSeconds")
  taskAvailabilityLifetimeInSeconds: option<flowDefinitionTaskAvailabilityLifetimeInSeconds>,
  @as("TaskCount") taskCount: flowDefinitionTaskCount,
  @as("TaskDescription") taskDescription: flowDefinitionTaskDescription,
  @as("TaskTitle") taskTitle: flowDefinitionTaskTitle,
  @as("HumanTaskUiArn") humanTaskUiArn: humanTaskUiArn,
  @as("WorkteamArn") workteamArn: workteamArn,
}
type featureGroupSummaries = array<featureGroupSummary>
type featureGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("Description") description: option<description>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("OfflineStoreStatus") offlineStoreStatus: option<offlineStoreStatus>,
  @as("FeatureGroupStatus") featureGroupStatus: option<featureGroupStatus>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("OfflineStoreConfig") offlineStoreConfig: option<offlineStoreConfig>,
  @as("OnlineStoreConfig") onlineStoreConfig: option<onlineStoreConfig>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("FeatureDefinitions") featureDefinitions: option<featureDefinitions>,
  @as("EventTimeFeatureName") eventTimeFeatureName: option<featureName>,
  @as("RecordIdentifierFeatureName") recordIdentifierFeatureName: option<featureName>,
  @as("FeatureGroupName") featureGroupName: option<featureGroupName>,
  @as("FeatureGroupArn") featureGroupArn: option<featureGroupArn>,
}
type experimentSummaries = array<experimentSummary>
type experiment = {
  @as("Tags") tags: option<tagList_>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Description") description: option<experimentDescription>,
  @as("Source") source: option<experimentSource>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("ExperimentArn") experimentArn: option<experimentArn>,
  @as("ExperimentName") experimentName: option<experimentEntityName>,
}
type deviceSummary = {
  @as("Models") models: option<edgeModelSummaries>,
  @as("LatestHeartbeat") latestHeartbeat: option<timestamp_>,
  @as("RegistrationTime") registrationTime: option<timestamp_>,
  @as("IotThingName") iotThingName: option<thingName>,
  @as("DeviceFleetName") deviceFleetName: option<entityName>,
  @as("Description") description: option<deviceDescription>,
  @as("DeviceArn") deviceArn: deviceArn,
  @as("DeviceName") deviceName: entityName,
}
type debugRuleConfigurations = array<debugRuleConfiguration>
type dataSource = {
  @as("FileSystemDataSource") fileSystemDataSource: option<fileSystemDataSource>,
  @as("S3DataSource") s3DataSource: option<s3DataSource>,
}
type dataCaptureConfig = {
  @as("CaptureContentTypeHeader") captureContentTypeHeader: option<captureContentTypeHeader>,
  @as("CaptureOptions") captureOptions: captureOptionList,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("DestinationS3Uri") destinationS3Uri: destinationS3Uri,
  @as("InitialSamplingPercentage") initialSamplingPercentage: samplingPercentage,
  @as("EnableCapture") enableCapture: option<enableCapture>,
}
type contextSummaries = array<contextSummary>
type containerDefinition = {
  @as("MultiModelConfig") multiModelConfig: option<multiModelConfig>,
  @as("ModelPackageName") modelPackageName: option<versionedArnOrName>,
  @as("Environment") environment: option<environmentMap>,
  @as("ModelDataUrl") modelDataUrl: option<url>,
  @as("Mode") mode: option<containerMode>,
  @as("ImageConfig") imageConfig: option<imageConfig>,
  @as("Image") image: option<containerImage>,
  @as("ContainerHostname") containerHostname: option<containerHostname>,
}
type collectionConfigurations = array<collectionConfiguration>
type codeRepositorySummaryList = array<codeRepositorySummary>
type channelSpecifications = array<channelSpecification>
type categoricalParameterRanges = array<categoricalParameterRange>
type blueGreenUpdatePolicy = {
  @as("MaximumExecutionTimeoutInSeconds")
  maximumExecutionTimeoutInSeconds: option<maximumExecutionTimeoutInSeconds>,
  @as("TerminationWaitInSeconds") terminationWaitInSeconds: option<terminationWaitInSeconds>,
  @as("TrafficRoutingConfiguration") trafficRoutingConfiguration: trafficRoutingConfig,
}
type autoRollbackConfig = {@as("Alarms") alarms: option<alarmList>}
type autoMLSecurityConfig = {
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("EnableInterContainerTrafficEncryption")
  enableInterContainerTrafficEncryption: option<boolean_>,
  @as("VolumeKmsKeyId") volumeKmsKeyId: option<kmsKeyId>,
}
type autoMLJobSummary = {
  @as("PartialFailureReasons") partialFailureReasons: option<autoMLPartialFailureReasons>,
  @as("FailureReason") failureReason: option<autoMLFailureReason>,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("EndTime") endTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("AutoMLJobSecondaryStatus") autoMLJobSecondaryStatus: autoMLJobSecondaryStatus,
  @as("AutoMLJobStatus") autoMLJobStatus: autoMLJobStatus,
  @as("AutoMLJobArn") autoMLJobArn: autoMLJobArn,
  @as("AutoMLJobName") autoMLJobName: autoMLJobName,
}
type autoMLContainerDefinitions = array<autoMLContainerDefinition>
type autoMLChannel = {
  @as("TargetAttributeName") targetAttributeName: targetAttributeName,
  @as("CompressionType") compressionType: option<compressionType>,
  @as("DataSource") dataSource: autoMLDataSource,
}
type associationSummaries = array<associationSummary>
type artifactSource = {
  @as("SourceTypes") sourceTypes: option<artifactSourceTypes>,
  @as("SourceUri") sourceUri: string2048,
}
type algorithmStatusDetails = {
  @as("ImageScanStatuses") imageScanStatuses: option<algorithmStatusItemList>,
  @as("ValidationStatuses") validationStatuses: option<algorithmStatusItemList>,
}
type algorithmSpecification = {
  @as("EnableSageMakerMetricsTimeSeries") enableSageMakerMetricsTimeSeries: option<boolean_>,
  @as("MetricDefinitions") metricDefinitions: option<metricDefinitionList>,
  @as("TrainingInputMode") trainingInputMode: trainingInputMode,
  @as("AlgorithmName") algorithmName: option<arnOrName>,
  @as("TrainingImage") trainingImage: option<algorithmImage>,
}
type actionSummaries = array<actionSummary>
type workforces = array<workforce>
type userSettings = {
  @as("TensorBoardAppSettings") tensorBoardAppSettings: option<tensorBoardAppSettings>,
  @as("KernelGatewayAppSettings") kernelGatewayAppSettings: option<kernelGatewayAppSettings>,
  @as("JupyterServerAppSettings") jupyterServerAppSettings: option<jupyterServerAppSettings>,
  @as("SharingSettings") sharingSettings: option<sharingSettings>,
  @as("SecurityGroups") securityGroups: option<securityGroupIds>,
  @as("ExecutionRole") executionRole: option<roleArn>,
}
type trial = {
  @as("TrialComponentSummaries") trialComponentSummaries: option<trialComponentSimpleSummaries>,
  @as("Tags") tags: option<tagList_>,
  @as("MetadataProperties") metadataProperties: option<metadataProperties>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("Source") source: option<trialSource>,
  @as("ExperimentName") experimentName: option<experimentEntityName>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("TrialArn") trialArn: option<trialArn>,
  @as("TrialName") trialName: option<experimentEntityName>,
}
type transformJobDefinition = {
  @as("TransformResources") transformResources: transformResources,
  @as("TransformOutput") transformOutput: transformOutput,
  @as("TransformInput") transformInput: transformInput,
  @as("Environment") environment: option<transformEnvironmentMap>,
  @as("BatchStrategy") batchStrategy: option<batchStrategy>,
  @as("MaxPayloadInMB") maxPayloadInMB: option<maxPayloadInMB>,
  @as("MaxConcurrentTransforms") maxConcurrentTransforms: option<maxConcurrentTransforms>,
}
type transformJob = {
  @as("Tags") tags: option<tagList_>,
  @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
  @as("DataProcessing") dataProcessing: option<dataProcessing>,
  @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
  @as("LabelingJobArn") labelingJobArn: option<labelingJobArn>,
  @as("TransformEndTime") transformEndTime: option<timestamp_>,
  @as("TransformStartTime") transformStartTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("TransformResources") transformResources: option<transformResources>,
  @as("TransformOutput") transformOutput: option<transformOutput>,
  @as("TransformInput") transformInput: option<transformInput>,
  @as("Environment") environment: option<transformEnvironmentMap>,
  @as("BatchStrategy") batchStrategy: option<batchStrategy>,
  @as("MaxPayloadInMB") maxPayloadInMB: option<maxPayloadInMB>,
  @as("ModelClientConfig") modelClientConfig: option<modelClientConfig>,
  @as("MaxConcurrentTransforms") maxConcurrentTransforms: option<maxConcurrentTransforms>,
  @as("ModelName") modelName: option<modelName>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("TransformJobStatus") transformJobStatus: option<transformJobStatus>,
  @as("TransformJobArn") transformJobArn: option<transformJobArn>,
  @as("TransformJobName") transformJobName: option<transformJobName>,
}
type productionVariantSummaryList = array<productionVariantSummary>
type processingOutputConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("Outputs") outputs: processingOutputs,
}
type processingInputs = array<processingInput>
type pipelineExecutionStepList = array<pipelineExecutionStep>
type parameterRanges = {
  @as("CategoricalParameterRanges") categoricalParameterRanges: option<categoricalParameterRanges>,
  @as("ContinuousParameterRanges") continuousParameterRanges: option<continuousParameterRanges>,
  @as("IntegerParameterRanges") integerParameterRanges: option<integerParameterRanges>,
}
type nestedFiltersList = array<nestedFilters>
type monitoringOutputConfig = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("MonitoringOutputs") monitoringOutputs: monitoringOutputs,
}
type memberDefinitions = array<memberDefinition>
type labelingJobSummary = {
  @as("InputConfig") inputConfig: option<labelingJobInputConfig>,
  @as("LabelingJobOutput") labelingJobOutput: option<labelingJobOutput>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("AnnotationConsolidationLambdaArn")
  annotationConsolidationLambdaArn: option<lambdaFunctionArn>,
  @as("PreHumanTaskLambdaArn") preHumanTaskLambdaArn: lambdaFunctionArn,
  @as("WorkteamArn") workteamArn: workteamArn,
  @as("LabelCounters") labelCounters: labelCounters,
  @as("LabelingJobStatus") labelingJobStatus: labelingJobStatus,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreationTime") creationTime: timestamp_,
  @as("LabelingJobArn") labelingJobArn: labelingJobArn,
  @as("LabelingJobName") labelingJobName: labelingJobName,
}
type hyperParameterSpecification = {
  @as("DefaultValue") defaultValue: option<hyperParameterValue>,
  @as("IsRequired") isRequired: option<boolean_>,
  @as("IsTunable") isTunable: option<boolean_>,
  @as("Range") range: option<parameterRange>,
  @as("Type") type_: parameterType,
  @as("Description") description: option<entityDescription>,
  @as("Name") name: parameterName,
}
type deviceSummaries = array<deviceSummary>
type deploymentConfig = {
  @as("AutoRollbackConfiguration") autoRollbackConfiguration: option<autoRollbackConfig>,
  @as("BlueGreenUpdatePolicy") blueGreenUpdatePolicy: blueGreenUpdatePolicy,
}
type debugHookConfig = {
  @as("CollectionConfigurations") collectionConfigurations: option<collectionConfigurations>,
  @as("HookParameters") hookParameters: option<hookParameters>,
  @as("S3OutputPath") s3OutputPath: s3Uri,
  @as("LocalPath") localPath: option<directoryPath>,
}
type containerDefinitionList = array<containerDefinition>
type channel = {
  @as("ShuffleConfig") shuffleConfig: option<shuffleConfig>,
  @as("InputMode") inputMode: option<trainingInputMode>,
  @as("RecordWrapperType") recordWrapperType: option<recordWrapper>,
  @as("CompressionType") compressionType: option<compressionType>,
  @as("ContentType") contentType: option<contentType>,
  @as("DataSource") dataSource: dataSource,
  @as("ChannelName") channelName: channelName,
}
type autoMLJobSummaries = array<autoMLJobSummary>
type autoMLJobConfig = {
  @as("SecurityConfig") securityConfig: option<autoMLSecurityConfig>,
  @as("CompletionCriteria") completionCriteria: option<autoMLJobCompletionCriteria>,
}
type autoMLInputDataConfig = array<autoMLChannel>
type autoMLCandidate = {
  @as("CandidateProperties") candidateProperties: option<candidateProperties>,
  @as("FailureReason") failureReason: option<autoMLFailureReason>,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("EndTime") endTime: option<timestamp_>,
  @as("CreationTime") creationTime: timestamp_,
  @as("InferenceContainers") inferenceContainers: option<autoMLContainerDefinitions>,
  @as("CandidateStatus") candidateStatus: candidateStatus,
  @as("CandidateSteps") candidateSteps: candidateSteps,
  @as("ObjectiveStatus") objectiveStatus: objectiveStatus,
  @as("FinalAutoMLJobObjectiveMetric")
  finalAutoMLJobObjectiveMetric: option<finalAutoMLJobObjectiveMetric>,
  @as("CandidateName") candidateName: candidateName,
}
type artifactSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("ArtifactType") artifactType: option<string256>,
  @as("Source") source: option<artifactSource>,
  @as("ArtifactName") artifactName: option<experimentEntityName>,
  @as("ArtifactArn") artifactArn: option<artifactArn>,
}
type appImageConfigDetails = {
  @as("KernelGatewayImageConfig") kernelGatewayImageConfig: option<kernelGatewayImageConfig>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("AppImageConfigName") appImageConfigName: option<appImageConfigName>,
  @as("AppImageConfigArn") appImageConfigArn: option<appImageConfigArn>,
}
type workteam = {
  @as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
  @as("LastUpdatedDate") lastUpdatedDate: option<timestamp_>,
  @as("CreateDate") createDate: option<timestamp_>,
  @as("SubDomain") subDomain: option<string_>,
  @as("Description") description: string200,
  @as("ProductListingIds") productListingIds: option<productListings>,
  @as("WorkforceArn") workforceArn: option<workforceArn>,
  @as("WorkteamArn") workteamArn: workteamArn,
  @as("MemberDefinitions") memberDefinitions: memberDefinitions,
  @as("WorkteamName") workteamName: workteamName,
}
type processingJob = {
  @as("Tags") tags: option<tagList_>,
  @as("TrainingJobArn") trainingJobArn: option<trainingJobArn>,
  @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
  @as("MonitoringScheduleArn") monitoringScheduleArn: option<monitoringScheduleArn>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("ProcessingStartTime") processingStartTime: option<timestamp_>,
  @as("ProcessingEndTime") processingEndTime: option<timestamp_>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("ExitMessage") exitMessage: option<exitMessage>,
  @as("ProcessingJobStatus") processingJobStatus: option<processingJobStatus>,
  @as("ProcessingJobArn") processingJobArn: option<processingJobArn>,
  @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("NetworkConfig") networkConfig: option<networkConfig>,
  @as("Environment") environment: option<processingEnvironmentMap>,
  @as("AppSpecification") appSpecification: option<appSpecification>,
  @as("StoppingCondition") stoppingCondition: option<processingStoppingCondition>,
  @as("ProcessingResources") processingResources: option<processingResources>,
  @as("ProcessingJobName") processingJobName: option<processingJobName>,
  @as("ProcessingOutputConfig") processingOutputConfig: option<processingOutputConfig>,
  @as("ProcessingInputs") processingInputs: option<processingInputs>,
}
type monitoringJobDefinition = {
  @as("RoleArn") roleArn: roleArn,
  @as("NetworkConfig") networkConfig: option<networkConfig>,
  @as("Environment") environment: option<monitoringEnvironmentMap>,
  @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
  @as("MonitoringAppSpecification") monitoringAppSpecification: monitoringAppSpecification,
  @as("MonitoringResources") monitoringResources: monitoringResources,
  @as("MonitoringOutputConfig") monitoringOutputConfig: monitoringOutputConfig,
  @as("MonitoringInputs") monitoringInputs: monitoringInputs,
  @as("BaselineConfig") baselineConfig: option<monitoringBaselineConfig>,
}
type modelPackageValidationProfile = {
  @as("TransformJobDefinition") transformJobDefinition: transformJobDefinition,
  @as("ProfileName") profileName: entityName,
}
type labelingJobSummaryList = array<labelingJobSummary>
type inputDataConfig = array<channel>
type hyperParameterTuningJobConfig = {
  @as("TuningJobCompletionCriteria")
  tuningJobCompletionCriteria: option<tuningJobCompletionCriteria>,
  @as("TrainingJobEarlyStoppingType")
  trainingJobEarlyStoppingType: option<trainingJobEarlyStoppingType>,
  @as("ParameterRanges") parameterRanges: option<parameterRanges>,
  @as("ResourceLimits") resourceLimits: resourceLimits,
  @as("HyperParameterTuningJobObjective")
  hyperParameterTuningJobObjective: option<hyperParameterTuningJobObjective>,
  @as("Strategy") strategy: hyperParameterTuningJobStrategyType,
}
type hyperParameterSpecifications = array<hyperParameterSpecification>
type autoMLCandidates = array<autoMLCandidate>
type artifactSummaries = array<artifactSummary>
type appImageConfigList = array<appImageConfigDetails>
type workteams = array<workteam>
type trainingSpecification = {
  @as("SupportedTuningJobObjectiveMetrics")
  supportedTuningJobObjectiveMetrics: option<hyperParameterTuningJobObjectives>,
  @as("TrainingChannels") trainingChannels: channelSpecifications,
  @as("MetricDefinitions") metricDefinitions: option<metricDefinitionList>,
  @as("SupportsDistributedTraining") supportsDistributedTraining: option<boolean_>,
  @as("SupportedTrainingInstanceTypes") supportedTrainingInstanceTypes: trainingInstanceTypes,
  @as("SupportedHyperParameters") supportedHyperParameters: option<hyperParameterSpecifications>,
  @as("TrainingImageDigest") trainingImageDigest: option<imageDigest>,
  @as("TrainingImage") trainingImage: containerImage,
}
type trainingJobDefinition = {
  @as("StoppingCondition") stoppingCondition: stoppingCondition,
  @as("ResourceConfig") resourceConfig: resourceConfig,
  @as("OutputDataConfig") outputDataConfig: outputDataConfig,
  @as("InputDataConfig") inputDataConfig: inputDataConfig,
  @as("HyperParameters") hyperParameters: option<hyperParameters>,
  @as("TrainingInputMode") trainingInputMode: trainingInputMode,
}
type trainingJob = {
  @as("Tags") tags: option<tagList_>,
  @as("RetryStrategy") retryStrategy: option<retryStrategy>,
  @as("Environment") environment: option<trainingEnvironmentMap>,
  @as("DebugRuleEvaluationStatuses")
  debugRuleEvaluationStatuses: option<debugRuleEvaluationStatuses>,
  @as("TensorBoardOutputConfig") tensorBoardOutputConfig: option<tensorBoardOutputConfig>,
  @as("DebugRuleConfigurations") debugRuleConfigurations: option<debugRuleConfigurations>,
  @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
  @as("DebugHookConfig") debugHookConfig: option<debugHookConfig>,
  @as("BillableTimeInSeconds") billableTimeInSeconds: option<billableTimeInSeconds>,
  @as("TrainingTimeInSeconds") trainingTimeInSeconds: option<trainingTimeInSeconds>,
  @as("CheckpointConfig") checkpointConfig: option<checkpointConfig>,
  @as("EnableManagedSpotTraining") enableManagedSpotTraining: option<boolean_>,
  @as("EnableInterContainerTrafficEncryption")
  enableInterContainerTrafficEncryption: option<boolean_>,
  @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
  @as("FinalMetricDataList") finalMetricDataList: option<finalMetricDataList>,
  @as("SecondaryStatusTransitions") secondaryStatusTransitions: option<secondaryStatusTransitions>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("TrainingEndTime") trainingEndTime: option<timestamp_>,
  @as("TrainingStartTime") trainingStartTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("StoppingCondition") stoppingCondition: option<stoppingCondition>,
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("ResourceConfig") resourceConfig: option<resourceConfig>,
  @as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("RoleArn") roleArn: option<roleArn>,
  @as("AlgorithmSpecification") algorithmSpecification: option<algorithmSpecification>,
  @as("HyperParameters") hyperParameters: option<hyperParameters>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("SecondaryStatus") secondaryStatus: option<secondaryStatus>,
  @as("TrainingJobStatus") trainingJobStatus: option<trainingJobStatus>,
  @as("ModelArtifacts") modelArtifacts: option<modelArtifacts>,
  @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
  @as("LabelingJobArn") labelingJobArn: option<labelingJobArn>,
  @as("TuningJobArn") tuningJobArn: option<hyperParameterTuningJobArn>,
  @as("TrainingJobArn") trainingJobArn: option<trainingJobArn>,
  @as("TrainingJobName") trainingJobName: option<trainingJobName>,
}
type monitoringScheduleConfig = {
  @as("MonitoringType") monitoringType: option<monitoringType>,
  @as("MonitoringJobDefinitionName")
  monitoringJobDefinitionName: option<monitoringJobDefinitionName>,
  @as("MonitoringJobDefinition") monitoringJobDefinition: option<monitoringJobDefinition>,
  @as("ScheduleConfig") scheduleConfig: option<scheduleConfig>,
}
type modelPackageValidationProfiles = array<modelPackageValidationProfile>
type hyperParameterTrainingJobDefinition = {
  @as("RetryStrategy") retryStrategy: option<retryStrategy>,
  @as("CheckpointConfig") checkpointConfig: option<checkpointConfig>,
  @as("EnableManagedSpotTraining") enableManagedSpotTraining: option<boolean_>,
  @as("EnableInterContainerTrafficEncryption")
  enableInterContainerTrafficEncryption: option<boolean_>,
  @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
  @as("StoppingCondition") stoppingCondition: stoppingCondition,
  @as("ResourceConfig") resourceConfig: resourceConfig,
  @as("OutputDataConfig") outputDataConfig: outputDataConfig,
  @as("VpcConfig") vpcConfig: option<vpcConfig>,
  @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
  @as("RoleArn") roleArn: roleArn,
  @as("AlgorithmSpecification") algorithmSpecification: hyperParameterAlgorithmSpecification,
  @as("StaticHyperParameters") staticHyperParameters: option<hyperParameters>,
  @as("HyperParameterRanges") hyperParameterRanges: option<parameterRanges>,
  @as("TuningObjective") tuningObjective: option<hyperParameterTuningJobObjective>,
  @as("DefinitionName") definitionName: option<hyperParameterTrainingJobDefinitionName>,
}
type trialComponentSourceDetail = {
  @as("TransformJob") transformJob: option<transformJob>,
  @as("ProcessingJob") processingJob: option<processingJob>,
  @as("TrainingJob") trainingJob: option<trainingJob>,
  @as("SourceArn") sourceArn: option<trialComponentSourceArn>,
}
type monitoringSchedule = {
  @as("Tags") tags: option<tagList_>,
  @as("LastMonitoringExecutionSummary")
  lastMonitoringExecutionSummary: option<monitoringExecutionSummary>,
  @as("EndpointName") endpointName: option<endpointName>,
  @as("MonitoringScheduleConfig") monitoringScheduleConfig: option<monitoringScheduleConfig>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("MonitoringType") monitoringType: option<monitoringType>,
  @as("MonitoringScheduleStatus") monitoringScheduleStatus: option<scheduleStatus>,
  @as("MonitoringScheduleName") monitoringScheduleName: option<monitoringScheduleName>,
  @as("MonitoringScheduleArn") monitoringScheduleArn: option<monitoringScheduleArn>,
}
type modelPackageValidationSpecification = {
  @as("ValidationProfiles") validationProfiles: modelPackageValidationProfiles,
  @as("ValidationRole") validationRole: roleArn,
}
type hyperParameterTrainingJobDefinitions = array<hyperParameterTrainingJobDefinition>
type algorithmValidationProfile = {
  @as("TransformJobDefinition") transformJobDefinition: option<transformJobDefinition>,
  @as("TrainingJobDefinition") trainingJobDefinition: trainingJobDefinition,
  @as("ProfileName") profileName: entityName,
}
type trialComponent = {
  @as("Parents") parents: option<parents>,
  @as("Tags") tags: option<tagList_>,
  @as("SourceDetail") sourceDetail: option<trialComponentSourceDetail>,
  @as("MetadataProperties") metadataProperties: option<metadataProperties>,
  @as("Metrics") metrics: option<trialComponentMetricSummaries>,
  @as("OutputArtifacts") outputArtifacts: option<trialComponentArtifacts>,
  @as("InputArtifacts") inputArtifacts: option<trialComponentArtifacts>,
  @as("Parameters") parameters: option<trialComponentParameters>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("EndTime") endTime: option<timestamp_>,
  @as("StartTime") startTime: option<timestamp_>,
  @as("Status") status: option<trialComponentStatus>,
  @as("Source") source: option<trialComponentSource>,
  @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
  @as("DisplayName") displayName: option<experimentEntityName>,
  @as("TrialComponentName") trialComponentName: option<experimentEntityName>,
}
type monitoringScheduleList = array<monitoringSchedule>
type modelPackage = {
  @as("Tags") tags: option<tagList_>,
  @as("ApprovalDescription") approvalDescription: option<approvalDescription>,
  @as("LastModifiedBy") lastModifiedBy: option<userContext>,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("ModelMetrics") modelMetrics: option<modelMetrics>,
  @as("MetadataProperties") metadataProperties: option<metadataProperties>,
  @as("CreatedBy") createdBy: option<userContext>,
  @as("ModelApprovalStatus") modelApprovalStatus: option<modelApprovalStatus>,
  @as("CertifyForMarketplace") certifyForMarketplace: option<certifyForMarketplace>,
  @as("ModelPackageStatusDetails") modelPackageStatusDetails: option<modelPackageStatusDetails>,
  @as("ModelPackageStatus") modelPackageStatus: option<modelPackageStatus>,
  @as("ValidationSpecification")
  validationSpecification: option<modelPackageValidationSpecification>,
  @as("SourceAlgorithmSpecification")
  sourceAlgorithmSpecification: option<sourceAlgorithmSpecification>,
  @as("InferenceSpecification") inferenceSpecification: option<inferenceSpecification>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("ModelPackageDescription") modelPackageDescription: option<entityDescription>,
  @as("ModelPackageArn") modelPackageArn: option<modelPackageArn>,
  @as("ModelPackageVersion") modelPackageVersion: option<modelPackageVersion>,
  @as("ModelPackageGroupName") modelPackageGroupName: option<entityName>,
  @as("ModelPackageName") modelPackageName: option<entityName>,
}
type algorithmValidationProfiles = array<algorithmValidationProfile>
type endpoint = {
  @as("Tags") tags: option<tagList_>,
  @as("MonitoringSchedules") monitoringSchedules: option<monitoringScheduleList>,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreationTime") creationTime: timestamp_,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("EndpointStatus") endpointStatus: endpointStatus,
  @as("DataCaptureConfig") dataCaptureConfig: option<dataCaptureConfigSummary>,
  @as("ProductionVariants") productionVariants: option<productionVariantSummaryList>,
  @as("EndpointConfigName") endpointConfigName: endpointConfigName,
  @as("EndpointArn") endpointArn: endpointArn,
  @as("EndpointName") endpointName: endpointName,
}
type algorithmValidationSpecification = {
  @as("ValidationProfiles") validationProfiles: algorithmValidationProfiles,
  @as("ValidationRole") validationRole: roleArn,
}
type searchRecord = {
  @as("FeatureGroup") featureGroup: option<featureGroup>,
  @as("PipelineExecution") pipelineExecution: option<pipelineExecution>,
  @as("Pipeline") pipeline: option<pipeline>,
  @as("ModelPackageGroup") modelPackageGroup: option<modelPackageGroup>,
  @as("ModelPackage") modelPackage: option<modelPackage>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("TrialComponent") trialComponent: option<trialComponent>,
  @as("Trial") trial: option<trial>,
  @as("Experiment") experiment: option<experiment>,
  @as("TrainingJob") trainingJob: option<trainingJob>,
}
type searchResultsList = array<searchRecord>
type rec searchExpression = {
  @as("Operator") operator: option<booleanOperator>,
  @as("SubExpressions") subExpressions: option<searchExpressionList>,
  @as("NestedFilters") nestedFilters: option<nestedFiltersList>,
  @as("Filters") filters: option<filterList>,
}
and searchExpressionList = array<searchExpression>

module EnableSagemakerServicecatalogPortfolio = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "EnableSagemakerServicecatalogPortfolioCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableSagemakerServicecatalogPortfolio = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DisableSagemakerServicecatalogPortfolioCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTrial = {
  type t
  type request = {
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialName") trialName: experimentEntityName,
  }
  type response = {@as("TrialArn") trialArn: option<trialArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateTrialCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePipelineExecution = {
  type t
  type request = {
    @as("PipelineExecutionDisplayName") pipelineExecutionDisplayName: option<pipelineExecutionName>,
    @as("PipelineExecutionDescription")
    pipelineExecutionDescription: option<pipelineExecutionDescription>,
    @as("PipelineExecutionArn") pipelineExecutionArn: pipelineExecutionArn,
  }
  type response = {@as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdatePipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePipeline = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("PipelineDescription") pipelineDescription: option<pipelineDescription>,
    @as("PipelineDefinition") pipelineDefinition: option<pipelineDefinition>,
    @as("PipelineDisplayName") pipelineDisplayName: option<pipelineName>,
    @as("PipelineName") pipelineName: pipelineName,
  }
  type response = {@as("PipelineArn") pipelineArn: option<pipelineArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdatePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateModelPackage = {
  type t
  type request = {
    @as("ApprovalDescription") approvalDescription: option<approvalDescription>,
    @as("ModelApprovalStatus") modelApprovalStatus: modelApprovalStatus,
    @as("ModelPackageArn") modelPackageArn: modelPackageArn,
  }
  type response = {@as("ModelPackageArn") modelPackageArn: modelPackageArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateModelPackageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExperiment = {
  type t
  type request = {
    @as("Description") description: option<experimentDescription>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("ExperimentName") experimentName: experimentEntityName,
  }
  type response = {@as("ExperimentArn") experimentArn: option<experimentArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopTransformJob = {
  type t
  type request = {@as("TransformJobName") transformJobName: transformJobName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopTransformJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopTrainingJob = {
  type t
  type request = {@as("TrainingJobName") trainingJobName: trainingJobName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopTrainingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopProcessingJob = {
  type t
  type request = {@as("ProcessingJobName") processingJobName: processingJobName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopProcessingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopPipelineExecution = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: idempotencyToken,
    @as("PipelineExecutionArn") pipelineExecutionArn: pipelineExecutionArn,
  }
  type response = {@as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StopPipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopNotebookInstance = {
  type t
  type request = {@as("NotebookInstanceName") notebookInstanceName: notebookInstanceName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StopNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopMonitoringSchedule = {
  type t
  type request = {@as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StopMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopLabelingJob = {
  type t
  type request = {@as("LabelingJobName") labelingJobName: labelingJobName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopLabelingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopHyperParameterTuningJob = {
  type t
  type request = {
    @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
  }

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StopHyperParameterTuningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopEdgePackagingJob = {
  type t
  type request = {@as("EdgePackagingJobName") edgePackagingJobName: entityName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StopEdgePackagingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopCompilationJob = {
  type t
  type request = {@as("CompilationJobName") compilationJobName: entityName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopCompilationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopAutoMLJob = {
  type t
  type request = {@as("AutoMLJobName") autoMLJobName: autoMLJobName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopAutoMLJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartNotebookInstance = {
  type t
  type request = {@as("NotebookInstanceName") notebookInstanceName: notebookInstanceName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StartNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartMonitoringSchedule = {
  type t
  type request = {@as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StartMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutModelPackageGroupPolicy = {
  type t
  type request = {
    @as("ResourcePolicy") resourcePolicy: policyString,
    @as("ModelPackageGroupName") modelPackageGroupName: entityName,
  }
  type response = {@as("ModelPackageGroupArn") modelPackageGroupArn: modelPackageGroupArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "PutModelPackageGroupPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSagemakerServicecatalogPortfolioStatus = {
  type t
  type request = unit
  type response = {@as("Status") status: option<sagemakerServicecatalogStatus>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "GetSagemakerServicecatalogPortfolioStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetModelPackageGroupPolicy = {
  type t
  type request = {@as("ModelPackageGroupName") modelPackageGroupName: entityName}
  type response = {@as("ResourcePolicy") resourcePolicy: policyString}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "GetModelPackageGroupPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTrialComponent = {
  type t
  type request = {
    @as("TrialName") trialName: experimentEntityName,
    @as("TrialComponentName") trialComponentName: experimentEntityName,
  }
  type response = {
    @as("TrialArn") trialArn: option<trialArn>,
    @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DisassociateTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePipelineDefinitionForExecution = {
  type t
  type request = {@as("PipelineExecutionArn") pipelineExecutionArn: pipelineExecutionArn}
  type response = {
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("PipelineDefinition") pipelineDefinition: option<pipelineDefinition>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribePipelineDefinitionForExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImageVersion = {
  type t
  type request = {
    @as("Version") version: option<imageVersionNumber>,
    @as("ImageName") imageName: imageName,
  }
  type response = {
    @as("Version") version: option<imageVersionNumber>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("ImageVersionStatus") imageVersionStatus: option<imageVersionStatus>,
    @as("ImageVersionArn") imageVersionArn: option<imageVersionArn>,
    @as("ImageArn") imageArn: option<imageArn>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("ContainerImage") containerImage: option<imageContainerImage>,
    @as("BaseImage") baseImage: option<imageBaseImage>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeImageVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeImage = {
  type t
  type request = {@as("ImageName") imageName: imageName}
  type response = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("ImageStatus") imageStatus: option<imageStatus>,
    @as("ImageName") imageName: option<imageName>,
    @as("ImageArn") imageArn: option<imageArn>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("DisplayName") displayName: option<imageDisplayName>,
    @as("Description") description: option<imageDescription>,
    @as("CreationTime") creationTime: option<timestamp_>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkteam = {
  type t
  type request = {@as("WorkteamName") workteamName: workteamName}
  type response = {@as("Success") success: success}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkforce = {
  type t
  type request = {@as("WorkforceName") workforceName: workforceName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteWorkforceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserProfile = {
  type t
  type request = {
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteUserProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTrialComponent = {
  type t
  type request = {@as("TrialComponentName") trialComponentName: experimentEntityName}
  type response = {@as("TrialComponentArn") trialComponentArn: option<trialComponentArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrial = {
  type t
  type request = {@as("TrialName") trialName: experimentEntityName}
  type response = {@as("TrialArn") trialArn: option<trialArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteTrialCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {@as("ProjectName") projectName: projectEntityName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePipeline = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: idempotencyToken,
    @as("PipelineName") pipelineName: pipelineName,
  }
  type response = {@as("PipelineArn") pipelineArn: option<pipelineArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeletePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNotebookInstanceLifecycleConfig = {
  type t
  type request = {
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: notebookInstanceLifecycleConfigName,
  }

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteNotebookInstanceLifecycleConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNotebookInstance = {
  type t
  type request = {@as("NotebookInstanceName") notebookInstanceName: notebookInstanceName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMonitoringSchedule = {
  type t
  type request = {@as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelQualityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteModelQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelPackageGroupPolicy = {
  type t
  type request = {@as("ModelPackageGroupName") modelPackageGroupName: entityName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteModelPackageGroupPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelPackageGroup = {
  type t
  type request = {@as("ModelPackageGroupName") modelPackageGroupName: arnOrName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteModelPackageGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelPackage = {
  type t
  type request = {@as("ModelPackageName") modelPackageName: versionedArnOrName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteModelPackageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelExplainabilityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteModelExplainabilityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModelBiasJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteModelBiasJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteModel = {
  type t
  type request = {@as("ModelName") modelName: modelName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteImageVersion = {
  type t
  type request = {
    @as("Version") version: imageVersionNumber,
    @as("ImageName") imageName: imageName,
  }
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteImageVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImage = {
  type t
  type request = {@as("ImageName") imageName: imageName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHumanTaskUi = {
  type t
  type request = {@as("HumanTaskUiName") humanTaskUiName: humanTaskUiName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteHumanTaskUiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFlowDefinition = {
  type t
  type request = {@as("FlowDefinitionName") flowDefinitionName: flowDefinitionName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteFlowDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFeatureGroup = {
  type t
  type request = {@as("FeatureGroupName") featureGroupName: featureGroupName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteFeatureGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteExperiment = {
  type t
  type request = {@as("ExperimentName") experimentName: experimentEntityName}
  type response = {@as("ExperimentArn") experimentArn: option<experimentArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEndpointConfig = {
  type t
  type request = {@as("EndpointConfigName") endpointConfigName: endpointConfigName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteEndpointConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEndpoint = {
  type t
  type request = {@as("EndpointName") endpointName: endpointName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeviceFleet = {
  type t
  type request = {@as("DeviceFleetName") deviceFleetName: entityName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteDeviceFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataQualityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteDataQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContext = {
  type t
  type request = {@as("ContextName") contextName: experimentEntityName}
  type response = {@as("ContextArn") contextArn: option<contextArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteContextCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCodeRepository = {
  type t
  type request = {@as("CodeRepositoryName") codeRepositoryName: entityName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteCodeRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssociation = {
  type t
  type request = {
    @as("DestinationArn") destinationArn: associationEntityArn,
    @as("SourceArn") sourceArn: associationEntityArn,
  }
  type response = {
    @as("DestinationArn") destinationArn: option<associationEntityArn>,
    @as("SourceArn") sourceArn: option<associationEntityArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAppImageConfig = {
  type t
  type request = {@as("AppImageConfigName") appImageConfigName: appImageConfigName}

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DeleteAppImageConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApp = {
  type t
  type request = {
    @as("AppName") appName: appName,
    @as("AppType") appType: appType,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlgorithm = {
  type t
  type request = {@as("AlgorithmName") algorithmName: entityName}

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteAlgorithmCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAction = {
  type t
  type request = {@as("ActionName") actionName: experimentEntityName}
  type response = {@as("ActionArn") actionArn: option<actionArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePresignedNotebookInstanceUrl = {
  type t
  type request = {
    @as("SessionExpirationDurationInSeconds")
    sessionExpirationDurationInSeconds: option<sessionExpirationDurationInSeconds>,
    @as("NotebookInstanceName") notebookInstanceName: notebookInstanceName,
  }
  type response = {@as("AuthorizedUrl") authorizedUrl: option<notebookInstanceUrl>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreatePresignedNotebookInstanceUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePresignedDomainUrl = {
  type t
  type request = {
    @as("ExpiresInSeconds") expiresInSeconds: option<expiresInSeconds>,
    @as("SessionExpirationDurationInSeconds")
    sessionExpirationDurationInSeconds: option<sessionExpirationDurationInSeconds>,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {@as("AuthorizedUrl") authorizedUrl: option<presignedDomainUrl>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreatePresignedDomainUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImageVersion = {
  type t
  type request = {
    @as("ImageName") imageName: imageName,
    @as("ClientToken") clientToken: clientToken,
    @as("BaseImage") baseImage: imageBaseImage,
  }
  type response = {@as("ImageVersionArn") imageVersionArn: option<imageVersionArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateImageVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTrialComponent = {
  type t
  type request = {
    @as("TrialName") trialName: experimentEntityName,
    @as("TrialComponentName") trialComponentName: experimentEntityName,
  }
  type response = {
    @as("TrialArn") trialArn: option<trialArn>,
    @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "AssociateTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddAssociation = {
  type t
  type request = {
    @as("AssociationType") associationType: option<associationEdgeType>,
    @as("DestinationArn") destinationArn: associationEntityArn,
    @as("SourceArn") sourceArn: associationEntityArn,
  }
  type response = {
    @as("DestinationArn") destinationArn: option<associationEntityArn>,
    @as("SourceArn") sourceArn: option<associationEntityArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "AddAssociationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNotebookInstance = {
  type t
  type request = {
    @as("RootAccess") rootAccess: option<rootAccess>,
    @as("DisassociateAdditionalCodeRepositories")
    disassociateAdditionalCodeRepositories: option<disassociateAdditionalCodeRepositories>,
    @as("DisassociateDefaultCodeRepository")
    disassociateDefaultCodeRepository: option<disassociateDefaultCodeRepository>,
    @as("DisassociateAcceleratorTypes")
    disassociateAcceleratorTypes: option<disassociateNotebookInstanceAcceleratorTypes>,
    @as("AcceleratorTypes") acceleratorTypes: option<notebookInstanceAcceleratorTypes>,
    @as("AdditionalCodeRepositories")
    additionalCodeRepositories: option<additionalCodeRepositoryNamesOrUrls>,
    @as("DefaultCodeRepository") defaultCodeRepository: option<codeRepositoryNameOrUrl>,
    @as("VolumeSizeInGB") volumeSizeInGB: option<notebookInstanceVolumeSizeInGB>,
    @as("DisassociateLifecycleConfig")
    disassociateLifecycleConfig: option<disassociateNotebookInstanceLifecycleConfig>,
    @as("LifecycleConfigName") lifecycleConfigName: option<notebookInstanceLifecycleConfigName>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("InstanceType") instanceType: option<instanceType>,
    @as("NotebookInstanceName") notebookInstanceName: notebookInstanceName,
  }
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateImage = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("ImageName") imageName: imageName,
    @as("DisplayName") displayName: option<imageDisplayName>,
    @as("Description") description: option<imageDescription>,
    @as("DeleteProperties") deleteProperties: option<imageDeletePropertyList>,
  }
  type response = {@as("ImageArn") imageArn: option<imageArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeviceFleet = {
  type t
  type request = {
    @as("OutputConfig") outputConfig: edgeOutputConfig,
    @as("Description") description: option<deviceFleetDescription>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateDeviceFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateContext = {
  type t
  type request = {
    @as("PropertiesToRemove") propertiesToRemove: option<listLineageEntityParameterKey>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Description") description: option<experimentDescription>,
    @as("ContextName") contextName: experimentEntityName,
  }
  type response = {@as("ContextArn") contextArn: option<contextArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateContextCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCodeRepository = {
  type t
  type request = {
    @as("GitConfig") gitConfig: option<gitConfigForUpdate>,
    @as("CodeRepositoryName") codeRepositoryName: entityName,
  }
  type response = {@as("CodeRepositoryArn") codeRepositoryArn: codeRepositoryArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateCodeRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateArtifact = {
  type t
  type request = {
    @as("PropertiesToRemove") propertiesToRemove: option<listLineageEntityParameterKey>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("ArtifactName") artifactName: option<experimentEntityName>,
    @as("ArtifactArn") artifactArn: artifactArn,
  }
  type response = {@as("ArtifactArn") artifactArn: option<artifactArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAction = {
  type t
  type request = {
    @as("PropertiesToRemove") propertiesToRemove: option<listLineageEntityParameterKey>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Status") status: option<actionStatus>,
    @as("Description") description: option<experimentDescription>,
    @as("ActionName") actionName: experimentEntityName,
  }
  type response = {@as("ActionArn") actionArn: option<actionArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrial = {
  type t
  type request = {@as("TrialName") trialName: experimentEntityName}
  type response = {
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("Source") source: option<trialSource>,
    @as("ExperimentName") experimentName: option<experimentEntityName>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialArn") trialArn: option<trialArn>,
    @as("TrialName") trialName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeTrialCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSubscribedWorkteam = {
  type t
  type request = {@as("WorkteamArn") workteamArn: workteamArn}
  type response = {@as("SubscribedWorkteam") subscribedWorkteam: subscribedWorkteam}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeSubscribedWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePipelineExecution = {
  type t
  type request = {@as("PipelineExecutionArn") pipelineExecutionArn: pipelineExecutionArn}
  type response = {
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("PipelineExecutionDescription")
    pipelineExecutionDescription: option<pipelineExecutionDescription>,
    @as("PipelineExecutionStatus") pipelineExecutionStatus: option<pipelineExecutionStatus>,
    @as("PipelineExecutionDisplayName") pipelineExecutionDisplayName: option<pipelineExecutionName>,
    @as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>,
    @as("PipelineArn") pipelineArn: option<pipelineArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribePipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePipeline = {
  type t
  type request = {@as("PipelineName") pipelineName: pipelineName}
  type response = {
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("LastRunTime") lastRunTime: option<timestamp_>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("PipelineStatus") pipelineStatus: option<pipelineStatus>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("PipelineDescription") pipelineDescription: option<pipelineDescription>,
    @as("PipelineDefinition") pipelineDefinition: option<pipelineDefinition>,
    @as("PipelineDisplayName") pipelineDisplayName: option<pipelineName>,
    @as("PipelineName") pipelineName: option<pipelineName>,
    @as("PipelineArn") pipelineArn: option<pipelineArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotebookInstance = {
  type t
  type request = {@as("NotebookInstanceName") notebookInstanceName: notebookInstanceName}
  type response = {
    @as("RootAccess") rootAccess: option<rootAccess>,
    @as("AdditionalCodeRepositories")
    additionalCodeRepositories: option<additionalCodeRepositoryNamesOrUrls>,
    @as("DefaultCodeRepository") defaultCodeRepository: option<codeRepositoryNameOrUrl>,
    @as("AcceleratorTypes") acceleratorTypes: option<notebookInstanceAcceleratorTypes>,
    @as("VolumeSizeInGB") volumeSizeInGB: option<notebookInstanceVolumeSizeInGB>,
    @as("DirectInternetAccess") directInternetAccess: option<directInternetAccess>,
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: option<notebookInstanceLifecycleConfigName>,
    @as("CreationTime") creationTime: option<creationTime>,
    @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
    @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("SecurityGroups") securityGroups: option<securityGroupIds>,
    @as("SubnetId") subnetId: option<subnetId>,
    @as("InstanceType") instanceType: option<instanceType>,
    @as("Url") url: option<notebookInstanceUrl>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("NotebookInstanceStatus") notebookInstanceStatus: option<notebookInstanceStatus>,
    @as("NotebookInstanceName") notebookInstanceName: option<notebookInstanceName>,
    @as("NotebookInstanceArn") notebookInstanceArn: option<notebookInstanceArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelPackageGroup = {
  type t
  type request = {@as("ModelPackageGroupName") modelPackageGroupName: arnOrName}
  type response = {
    @as("ModelPackageGroupStatus") modelPackageGroupStatus: modelPackageGroupStatus,
    @as("CreatedBy") createdBy: userContext,
    @as("CreationTime") creationTime: creationTime,
    @as("ModelPackageGroupDescription") modelPackageGroupDescription: option<entityDescription>,
    @as("ModelPackageGroupArn") modelPackageGroupArn: modelPackageGroupArn,
    @as("ModelPackageGroupName") modelPackageGroupName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeModelPackageGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHumanTaskUi = {
  type t
  type request = {@as("HumanTaskUiName") humanTaskUiName: humanTaskUiName}
  type response = {
    @as("UiTemplate") uiTemplate: uiTemplateInfo,
    @as("CreationTime") creationTime: timestamp_,
    @as("HumanTaskUiStatus") humanTaskUiStatus: option<humanTaskUiStatus>,
    @as("HumanTaskUiName") humanTaskUiName: humanTaskUiName,
    @as("HumanTaskUiArn") humanTaskUiArn: humanTaskUiArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeHumanTaskUiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExperiment = {
  type t
  type request = {@as("ExperimentName") experimentName: experimentEntityName}
  type response = {
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("Description") description: option<experimentDescription>,
    @as("Source") source: option<experimentSource>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("ExperimentArn") experimentArn: option<experimentArn>,
    @as("ExperimentName") experimentName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEdgePackagingJob = {
  type t
  type request = {@as("EdgePackagingJobName") edgePackagingJobName: entityName}
  type response = {
    @as("ModelSignature") modelSignature: option<string_>,
    @as("ModelArtifact") modelArtifact: option<s3Uri>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("EdgePackagingJobStatusMessage") edgePackagingJobStatusMessage: option<string_>,
    @as("EdgePackagingJobStatus") edgePackagingJobStatus: edgePackagingJobStatus,
    @as("ResourceKey") resourceKey: option<kmsKeyId>,
    @as("OutputConfig") outputConfig: option<edgeOutputConfig>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("ModelVersion") modelVersion: option<edgeVersion>,
    @as("ModelName") modelName: option<entityName>,
    @as("CompilationJobName") compilationJobName: option<entityName>,
    @as("EdgePackagingJobName") edgePackagingJobName: entityName,
    @as("EdgePackagingJobArn") edgePackagingJobArn: edgePackagingJobArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeEdgePackagingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeviceFleet = {
  type t
  type request = {@as("DeviceFleetName") deviceFleetName: entityName}
  type response = {
    @as("IotRoleAlias") iotRoleAlias: option<iotRoleAlias>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("LastModifiedTime") lastModifiedTime: timestamp_,
    @as("CreationTime") creationTime: timestamp_,
    @as("Description") description: option<deviceFleetDescription>,
    @as("OutputConfig") outputConfig: edgeOutputConfig,
    @as("DeviceFleetArn") deviceFleetArn: deviceFleetArn,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeDeviceFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContext = {
  type t
  type request = {@as("ContextName") contextName: experimentEntityName}
  type response = {
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Description") description: option<experimentDescription>,
    @as("ContextType") contextType: option<string256>,
    @as("Source") source: option<contextSource>,
    @as("ContextArn") contextArn: option<contextArn>,
    @as("ContextName") contextName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeContextCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCodeRepository = {
  type t
  type request = {@as("CodeRepositoryName") codeRepositoryName: entityName}
  type response = {
    @as("GitConfig") gitConfig: option<gitConfig>,
    @as("LastModifiedTime") lastModifiedTime: lastModifiedTime,
    @as("CreationTime") creationTime: creationTime,
    @as("CodeRepositoryArn") codeRepositoryArn: codeRepositoryArn,
    @as("CodeRepositoryName") codeRepositoryName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeCodeRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApp = {
  type t
  type request = {
    @as("AppName") appName: appName,
    @as("AppType") appType: appType,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {
    @as("ResourceSpec") resourceSpec: option<resourceSpec>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("CreationTime") creationTime: option<creationTime>,
    @as("LastUserActivityTimestamp") lastUserActivityTimestamp: option<timestamp_>,
    @as("LastHealthCheckTimestamp") lastHealthCheckTimestamp: option<timestamp_>,
    @as("Status") status: option<appStatus>,
    @as("UserProfileName") userProfileName: option<userProfileName>,
    @as("DomainId") domainId: option<domainId>,
    @as("AppName") appName: option<appName>,
    @as("AppType") appType: option<appType>,
    @as("AppArn") appArn: option<appArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAction = {
  type t
  type request = {@as("ActionName") actionName: experimentEntityName}
  type response = {
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Status") status: option<actionStatus>,
    @as("Description") description: option<experimentDescription>,
    @as("ActionType") actionType: option<string256>,
    @as("Source") source: option<actionSource>,
    @as("ActionArn") actionArn: option<actionArn>,
    @as("ActionName") actionName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterDevices = {
  type t
  type request = {
    @as("DeviceNames") deviceNames: deviceNames,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeregisterDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  type request = {
    @as("RetentionPolicy") retentionPolicy: option<retentionPolicy>,
    @as("DomainId") domainId: domainId,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteDomainCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateTrialComponent = {
  type t
  type request = {
    @as("OutputArtifactsToRemove") outputArtifactsToRemove: option<listTrialComponentKey256>,
    @as("OutputArtifacts") outputArtifacts: option<trialComponentArtifacts>,
    @as("InputArtifactsToRemove") inputArtifactsToRemove: option<listTrialComponentKey256>,
    @as("InputArtifacts") inputArtifacts: option<trialComponentArtifacts>,
    @as("ParametersToRemove") parametersToRemove: option<listTrialComponentKey256>,
    @as("Parameters") parameters: option<trialComponentParameters>,
    @as("EndTime") endTime: option<timestamp_>,
    @as("StartTime") startTime: option<timestamp_>,
    @as("Status") status: option<trialComponentStatus>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialComponentName") trialComponentName: experimentEntityName,
  }
  type response = {@as("TrialComponentArn") trialComponentArn: option<trialComponentArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNotebookInstanceLifecycleConfig = {
  type t
  type request = {
    @as("OnStart") onStart: option<notebookInstanceLifecycleConfigList>,
    @as("OnCreate") onCreate: option<notebookInstanceLifecycleConfigList>,
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: notebookInstanceLifecycleConfigName,
  }
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateNotebookInstanceLifecycleConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpointWeightsAndCapacities = {
  type t
  type request = {
    @as("DesiredWeightsAndCapacities") desiredWeightsAndCapacities: desiredWeightAndCapacityList,
    @as("EndpointName") endpointName: endpointName,
  }
  type response = {@as("EndpointArn") endpointArn: endpointArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateEndpointWeightsAndCapacitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevices = {
  type t
  type request = {
    @as("Devices") devices: devices,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartPipelineExecution = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: idempotencyToken,
    @as("PipelineExecutionDescription")
    pipelineExecutionDescription: option<pipelineExecutionDescription>,
    @as("PipelineParameters") pipelineParameters: option<parameterList>,
    @as("PipelineExecutionDisplayName") pipelineExecutionDisplayName: option<pipelineExecutionName>,
    @as("PipelineName") pipelineName: pipelineName,
  }
  type response = {@as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "StartPipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RenderUiTemplate = {
  type t
  type request = {
    @as("HumanTaskUiArn") humanTaskUiArn: option<humanTaskUiArn>,
    @as("RoleArn") roleArn: roleArn,
    @as("Task") task: renderableTask,
    @as("UiTemplate") uiTemplate: option<uiTemplate>,
  }
  type response = {
    @as("Errors") errors: renderingErrorList,
    @as("RenderedContent") renderedContent: string_,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "RenderUiTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDevices = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Devices") devices: devices,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "RegisterDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListUserProfiles = {
  type t
  type request = {
    @as("UserProfileNameContains") userProfileNameContains: option<userProfileName>,
    @as("DomainIdEquals") domainIdEquals: option<domainId>,
    @as("SortBy") sortBy: option<userProfileSortKey>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("UserProfiles") userProfiles: option<userProfileList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListUserProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTransformJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortBy>,
    @as("StatusEquals") statusEquals: option<transformJobStatus>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TransformJobSummaries") transformJobSummaries: transformJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListTransformJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrainingJobs = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortBy>,
    @as("StatusEquals") statusEquals: option<trainingJobStatus>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TrainingJobSummaries") trainingJobSummaries: trainingJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListTrainingJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listTagsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSubscribedWorkteams = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<workteamName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("SubscribedWorkteams") subscribedWorkteams: subscribedWorkteams,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListSubscribedWorkteamsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<projectSortOrder>,
    @as("SortBy") sortBy: option<projectSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<projectEntityName>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ProjectSummaryList") projectSummaryList: projectSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListProjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProcessingJobs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortBy>,
    @as("StatusEquals") statusEquals: option<processingJobStatus>,
    @as("NameContains") nameContains: option<string_>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ProcessingJobSummaries") processingJobSummaries: processingJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListProcessingJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelines = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortPipelinesBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("PipelineNamePrefix") pipelineNamePrefix: option<pipelineName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineSummaries") pipelineSummaries: option<pipelineSummaryList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListPipelinesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelineParametersForExecution = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineExecutionArn") pipelineExecutionArn: pipelineExecutionArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineParameters") pipelineParameters: option<parameterList>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListPipelineParametersForExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelineExecutions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortPipelineExecutionsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("PipelineName") pipelineName: pipelineName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineExecutionSummaries")
    pipelineExecutionSummaries: option<pipelineExecutionSummaryList>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListPipelineExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotebookInstanceLifecycleConfigs = {
  type t
  type request = {
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<lastModifiedTime>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<lastModifiedTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("NameContains") nameContains: option<notebookInstanceLifecycleConfigNameContains>,
    @as("SortOrder") sortOrder: option<notebookInstanceLifecycleConfigSortOrder>,
    @as("SortBy") sortBy: option<notebookInstanceLifecycleConfigSortKey>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NotebookInstanceLifecycleConfigs")
    notebookInstanceLifecycleConfigs: option<notebookInstanceLifecycleConfigSummaryList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListNotebookInstanceLifecycleConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMonitoringSchedules = {
  type t
  type request = {
    @as("MonitoringTypeEquals") monitoringTypeEquals: option<monitoringType>,
    @as("MonitoringJobDefinitionName")
    monitoringJobDefinitionName: option<monitoringJobDefinitionName>,
    @as("StatusEquals") statusEquals: option<scheduleStatus>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringScheduleSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MonitoringScheduleSummaries") monitoringScheduleSummaries: monitoringScheduleSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListMonitoringSchedulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMonitoringExecutions = {
  type t
  type request = {
    @as("MonitoringTypeEquals") monitoringTypeEquals: option<monitoringType>,
    @as("MonitoringJobDefinitionName")
    monitoringJobDefinitionName: option<monitoringJobDefinitionName>,
    @as("StatusEquals") statusEquals: option<executionStatus>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("ScheduledTimeAfter") scheduledTimeAfter: option<timestamp_>,
    @as("ScheduledTimeBefore") scheduledTimeBefore: option<timestamp_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringExecutionSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
    @as("MonitoringScheduleName") monitoringScheduleName: option<monitoringScheduleName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MonitoringExecutionSummaries")
    monitoringExecutionSummaries: monitoringExecutionSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListMonitoringExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModels = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<modelNameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("SortOrder") sortOrder: option<orderKey>,
    @as("SortBy") sortBy: option<modelSortKey>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Models") models: modelSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListModelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModelQualityJobDefinitions = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringJobDefinitionSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JobDefinitionSummaries") jobDefinitionSummaries: monitoringJobDefinitionSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListModelQualityJobDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModelPackages = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<modelPackageSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ModelPackageType") modelPackageType: option<modelPackageType>,
    @as("ModelPackageGroupName") modelPackageGroupName: option<arnOrName>,
    @as("ModelApprovalStatus") modelApprovalStatus: option<modelApprovalStatus>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ModelPackageSummaryList") modelPackageSummaryList: modelPackageSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListModelPackagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModelPackageGroups = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<modelPackageGroupSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ModelPackageGroupSummaryList") modelPackageGroupSummaryList: modelPackageGroupSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListModelPackageGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModelExplainabilityJobDefinitions = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringJobDefinitionSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JobDefinitionSummaries") jobDefinitionSummaries: monitoringJobDefinitionSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListModelExplainabilityJobDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListModelBiasJobDefinitions = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringJobDefinitionSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JobDefinitionSummaries") jobDefinitionSummaries: monitoringJobDefinitionSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListModelBiasJobDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImages = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<imageSortOrder>,
    @as("SortBy") sortBy: option<imageSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<imageNameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Images") images: option<images>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListImagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImageVersions = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<imageVersionSortOrder>,
    @as("SortBy") sortBy: option<imageVersionSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("ImageName") imageName: imageName,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ImageVersions") imageVersions: option<imageVersions>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListImageVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHumanTaskUis = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("HumanTaskUiSummaries") humanTaskUiSummaries: humanTaskUiSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListHumanTaskUisCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFlowDefinitions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("FlowDefinitionSummaries") flowDefinitionSummaries: flowDefinitionSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListFlowDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpoints = {
  type t
  type request = {
    @as("StatusEquals") statusEquals: option<endpointStatus>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<endpointNameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("SortOrder") sortOrder: option<orderKey>,
    @as("SortBy") sortBy: option<endpointSortKey>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Endpoints") endpoints: endpointSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListEndpointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEndpointConfigs = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<endpointConfigNameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("SortOrder") sortOrder: option<orderKey>,
    @as("SortBy") sortBy: option<endpointConfigSortKey>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("EndpointConfigs") endpointConfigs: endpointConfigSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListEndpointConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEdgePackagingJobs = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listEdgePackagingJobsSortBy>,
    @as("StatusEquals") statusEquals: option<edgePackagingJobStatus>,
    @as("ModelNameContains") modelNameContains: option<nameContains>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("MaxResults") maxResults: option<listMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("EdgePackagingJobSummaries") edgePackagingJobSummaries: edgePackagingJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListEdgePackagingJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Domains") domains: option<domainList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListDomainsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceFleets = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listDeviceFleetsSortBy>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("MaxResults") maxResults: option<listMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DeviceFleetSummaries") deviceFleetSummaries: deviceFleetSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListDeviceFleetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataQualityJobDefinitions = {
  type t
  type request = {
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<monitoringJobDefinitionSortKey>,
    @as("EndpointName") endpointName: option<endpointName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("JobDefinitionSummaries") jobDefinitionSummaries: monitoringJobDefinitionSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListDataQualityJobDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCompilationJobs = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listCompilationJobsSortBy>,
    @as("StatusEquals") statusEquals: option<compilationJobStatus>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<lastModifiedTime>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<lastModifiedTime>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("CompilationJobSummaries") compilationJobSummaries: compilationJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListCompilationJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApps = {
  type t
  type request = {
    @as("UserProfileNameEquals") userProfileNameEquals: option<userProfileName>,
    @as("DomainIdEquals") domainIdEquals: option<domainId>,
    @as("SortBy") sortBy: option<appSortKey>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Apps") apps: option<appList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListAppsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAlgorithms = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<algorithmSortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AlgorithmSummaryList") algorithmSummaryList: algorithmSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListAlgorithmsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSearchSuggestions = {
  type t
  type request = {
    @as("SuggestionQuery") suggestionQuery: option<suggestionQuery>,
    @as("Resource") resource: resourceType,
  }
  type response = {
    @as("PropertyNameSuggestions") propertyNameSuggestions: option<propertyNameSuggestionList>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "GetSearchSuggestionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceFleetReport = {
  type t
  type request = {@as("DeviceFleetName") deviceFleetName: entityName}
  type response = {
    @as("ModelStats") modelStats: option<edgeModelStats>,
    @as("AgentVersions") agentVersions: option<agentVersions>,
    @as("DeviceStats") deviceStats: option<deviceStats>,
    @as("ReportGenerated") reportGenerated: option<timestamp_>,
    @as("Description") description: option<deviceFleetDescription>,
    @as("OutputConfig") outputConfig: option<edgeOutputConfig>,
    @as("DeviceFleetName") deviceFleetName: entityName,
    @as("DeviceFleetArn") deviceFleetArn: deviceFleetArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "GetDeviceFleetReportCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrialComponent = {
  type t
  type request = {@as("TrialComponentName") trialComponentName: experimentEntityName}
  type response = {
    @as("Metrics") metrics: option<trialComponentMetricSummaries>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("OutputArtifacts") outputArtifacts: option<trialComponentArtifacts>,
    @as("InputArtifacts") inputArtifacts: option<trialComponentArtifacts>,
    @as("Parameters") parameters: option<trialComponentParameters>,
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("EndTime") endTime: option<timestamp_>,
    @as("StartTime") startTime: option<timestamp_>,
    @as("Status") status: option<trialComponentStatus>,
    @as("Source") source: option<trialComponentSource>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialComponentArn") trialComponentArn: option<trialComponentArn>,
    @as("TrialComponentName") trialComponentName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotebookInstanceLifecycleConfig = {
  type t
  type request = {
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: notebookInstanceLifecycleConfigName,
  }
  type response = {
    @as("CreationTime") creationTime: option<creationTime>,
    @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
    @as("OnStart") onStart: option<notebookInstanceLifecycleConfigList>,
    @as("OnCreate") onCreate: option<notebookInstanceLifecycleConfigList>,
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: option<notebookInstanceLifecycleConfigName>,
    @as("NotebookInstanceLifecycleConfigArn")
    notebookInstanceLifecycleConfigArn: option<notebookInstanceLifecycleConfigArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeNotebookInstanceLifecycleConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFeatureGroup = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("FeatureGroupName") featureGroupName: featureGroupName,
  }
  type response = {
    @as("NextToken") nextToken: nextToken,
    @as("Description") description: option<description>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("OfflineStoreStatus") offlineStoreStatus: option<offlineStoreStatus>,
    @as("FeatureGroupStatus") featureGroupStatus: option<featureGroupStatus>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("OfflineStoreConfig") offlineStoreConfig: option<offlineStoreConfig>,
    @as("OnlineStoreConfig") onlineStoreConfig: option<onlineStoreConfig>,
    @as("CreationTime") creationTime: creationTime,
    @as("FeatureDefinitions") featureDefinitions: featureDefinitions,
    @as("EventTimeFeatureName") eventTimeFeatureName: featureName,
    @as("RecordIdentifierFeatureName") recordIdentifierFeatureName: featureName,
    @as("FeatureGroupName") featureGroupName: featureGroupName,
    @as("FeatureGroupArn") featureGroupArn: featureGroupArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeFeatureGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDevice = {
  type t
  type request = {
    @as("DeviceFleetName") deviceFleetName: entityName,
    @as("DeviceName") deviceName: entityName,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxModels") maxModels: option<integer_>,
    @as("Models") models: option<edgeModels>,
    @as("LatestHeartbeat") latestHeartbeat: option<timestamp_>,
    @as("RegistrationTime") registrationTime: timestamp_,
    @as("IotThingName") iotThingName: option<thingName>,
    @as("DeviceFleetName") deviceFleetName: entityName,
    @as("Description") description: option<deviceDescription>,
    @as("DeviceName") deviceName: entityName,
    @as("DeviceArn") deviceArn: option<deviceArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCompilationJob = {
  type t
  type request = {@as("CompilationJobName") compilationJobName: entityName}
  type response = {
    @as("OutputConfig") outputConfig: outputConfig,
    @as("InputConfig") inputConfig: inputConfig,
    @as("RoleArn") roleArn: roleArn,
    @as("ModelDigests") modelDigests: option<modelDigests>,
    @as("ModelArtifacts") modelArtifacts: modelArtifacts,
    @as("FailureReason") failureReason: failureReason,
    @as("LastModifiedTime") lastModifiedTime: lastModifiedTime,
    @as("CreationTime") creationTime: creationTime,
    @as("StoppingCondition") stoppingCondition: stoppingCondition,
    @as("CompilationEndTime") compilationEndTime: option<timestamp_>,
    @as("CompilationStartTime") compilationStartTime: option<timestamp_>,
    @as("CompilationJobStatus") compilationJobStatus: compilationJobStatus,
    @as("CompilationJobArn") compilationJobArn: compilationJobArn,
    @as("CompilationJobName") compilationJobName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeCompilationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkforce = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("WorkforceName") workforceName: workforceName,
    @as("SourceIpConfig") sourceIpConfig: option<sourceIpConfig>,
    @as("OidcConfig") oidcConfig: option<oidcConfig>,
    @as("CognitoConfig") cognitoConfig: option<cognitoConfig>,
  }
  type response = {@as("WorkforceArn") workforceArn: workforceArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateWorkforceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrialComponent = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("OutputArtifacts") outputArtifacts: option<trialComponentArtifacts>,
    @as("InputArtifacts") inputArtifacts: option<trialComponentArtifacts>,
    @as("Parameters") parameters: option<trialComponentParameters>,
    @as("EndTime") endTime: option<timestamp_>,
    @as("StartTime") startTime: option<timestamp_>,
    @as("Status") status: option<trialComponentStatus>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialComponentName") trialComponentName: experimentEntityName,
  }
  type response = {@as("TrialComponentArn") trialComponentArn: option<trialComponentArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateTrialComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrial = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("ExperimentName") experimentName: experimentEntityName,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("TrialName") trialName: experimentEntityName,
  }
  type response = {@as("TrialArn") trialArn: option<trialArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateTrialCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePipeline = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("ClientRequestToken") clientRequestToken: idempotencyToken,
    @as("PipelineDescription") pipelineDescription: option<pipelineDescription>,
    @as("PipelineDefinition") pipelineDefinition: pipelineDefinition,
    @as("PipelineDisplayName") pipelineDisplayName: option<pipelineName>,
    @as("PipelineName") pipelineName: pipelineName,
  }
  type response = {@as("PipelineArn") pipelineArn: option<pipelineArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreatePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNotebookInstanceLifecycleConfig = {
  type t
  type request = {
    @as("OnStart") onStart: option<notebookInstanceLifecycleConfigList>,
    @as("OnCreate") onCreate: option<notebookInstanceLifecycleConfigList>,
    @as("NotebookInstanceLifecycleConfigName")
    notebookInstanceLifecycleConfigName: notebookInstanceLifecycleConfigName,
  }
  type response = {
    @as("NotebookInstanceLifecycleConfigArn")
    notebookInstanceLifecycleConfigArn: option<notebookInstanceLifecycleConfigArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateNotebookInstanceLifecycleConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNotebookInstance = {
  type t
  type request = {
    @as("RootAccess") rootAccess: option<rootAccess>,
    @as("AdditionalCodeRepositories")
    additionalCodeRepositories: option<additionalCodeRepositoryNamesOrUrls>,
    @as("DefaultCodeRepository") defaultCodeRepository: option<codeRepositoryNameOrUrl>,
    @as("AcceleratorTypes") acceleratorTypes: option<notebookInstanceAcceleratorTypes>,
    @as("VolumeSizeInGB") volumeSizeInGB: option<notebookInstanceVolumeSizeInGB>,
    @as("DirectInternetAccess") directInternetAccess: option<directInternetAccess>,
    @as("LifecycleConfigName") lifecycleConfigName: option<notebookInstanceLifecycleConfigName>,
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("RoleArn") roleArn: roleArn,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
    @as("SubnetId") subnetId: option<subnetId>,
    @as("InstanceType") instanceType: instanceType,
    @as("NotebookInstanceName") notebookInstanceName: notebookInstanceName,
  }
  type response = {@as("NotebookInstanceArn") notebookInstanceArn: option<notebookInstanceArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateNotebookInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelPackageGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ModelPackageGroupDescription") modelPackageGroupDescription: option<entityDescription>,
    @as("ModelPackageGroupName") modelPackageGroupName: entityName,
  }
  type response = {@as("ModelPackageGroupArn") modelPackageGroupArn: modelPackageGroupArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateModelPackageGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImage = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("ImageName") imageName: imageName,
    @as("DisplayName") displayName: option<imageDisplayName>,
    @as("Description") description: option<imageDescription>,
  }
  type response = {@as("ImageArn") imageArn: option<imageArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHumanTaskUi = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("UiTemplate") uiTemplate: uiTemplate,
    @as("HumanTaskUiName") humanTaskUiName: humanTaskUiName,
  }
  type response = {@as("HumanTaskUiArn") humanTaskUiArn: humanTaskUiArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateHumanTaskUiCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFeatureGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<description>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("OfflineStoreConfig") offlineStoreConfig: option<offlineStoreConfig>,
    @as("OnlineStoreConfig") onlineStoreConfig: option<onlineStoreConfig>,
    @as("FeatureDefinitions") featureDefinitions: featureDefinitions,
    @as("EventTimeFeatureName") eventTimeFeatureName: featureName,
    @as("RecordIdentifierFeatureName") recordIdentifierFeatureName: featureName,
    @as("FeatureGroupName") featureGroupName: featureGroupName,
  }
  type response = {@as("FeatureGroupArn") featureGroupArn: featureGroupArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateFeatureGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExperiment = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<experimentDescription>,
    @as("DisplayName") displayName: option<experimentEntityName>,
    @as("ExperimentName") experimentName: experimentEntityName,
  }
  type response = {@as("ExperimentArn") experimentArn: option<experimentArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpoint = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("EndpointConfigName") endpointConfigName: endpointConfigName,
    @as("EndpointName") endpointName: endpointName,
  }
  type response = {@as("EndpointArn") endpointArn: endpointArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEdgePackagingJob = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ResourceKey") resourceKey: option<kmsKeyId>,
    @as("OutputConfig") outputConfig: edgeOutputConfig,
    @as("RoleArn") roleArn: roleArn,
    @as("ModelVersion") modelVersion: edgeVersion,
    @as("ModelName") modelName: entityName,
    @as("CompilationJobName") compilationJobName: entityName,
    @as("EdgePackagingJobName") edgePackagingJobName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateEdgePackagingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateDeviceFleet = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("OutputConfig") outputConfig: edgeOutputConfig,
    @as("Description") description: option<deviceFleetDescription>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("DeviceFleetName") deviceFleetName: entityName,
  }

  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateDeviceFleetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateContext = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Description") description: option<experimentDescription>,
    @as("ContextType") contextType: string256,
    @as("Source") source: contextSource,
    @as("ContextName") contextName: experimentEntityName,
  }
  type response = {@as("ContextArn") contextArn: option<contextArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateContextCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCompilationJob = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: stoppingCondition,
    @as("OutputConfig") outputConfig: outputConfig,
    @as("InputConfig") inputConfig: inputConfig,
    @as("RoleArn") roleArn: roleArn,
    @as("CompilationJobName") compilationJobName: entityName,
  }
  type response = {@as("CompilationJobArn") compilationJobArn: compilationJobArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateCompilationJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCodeRepository = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("GitConfig") gitConfig: gitConfig,
    @as("CodeRepositoryName") codeRepositoryName: entityName,
  }
  type response = {@as("CodeRepositoryArn") codeRepositoryArn: codeRepositoryArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateCodeRepositoryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  type request = {
    @as("ResourceSpec") resourceSpec: option<resourceSpec>,
    @as("Tags") tags: option<tagList_>,
    @as("AppName") appName: appName,
    @as("AppType") appType: appType,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {@as("AppArn") appArn: option<appArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateAppCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAction = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("Status") status: option<actionStatus>,
    @as("Description") description: option<experimentDescription>,
    @as("ActionType") actionType: string256,
    @as("Source") source: actionSource,
    @as("ActionName") actionName: experimentEntityName,
  }
  type response = {@as("ActionArn") actionArn: option<actionArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "AddTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkforce = {
  type t
  type request = {
    @as("OidcConfig") oidcConfig: option<oidcConfig>,
    @as("SourceIpConfig") sourceIpConfig: option<sourceIpConfig>,
    @as("WorkforceName") workforceName: workforceName,
  }
  type response = {@as("Workforce") workforce: workforce}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateWorkforceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTrainingJob = {
  type t
  type request = {
    @as("ProfilerRuleConfigurations")
    profilerRuleConfigurations: option<profilerRuleConfigurations>,
    @as("ProfilerConfig") profilerConfig: option<profilerConfigForUpdate>,
    @as("TrainingJobName") trainingJobName: trainingJobName,
  }
  type response = {@as("TrainingJobArn") trainingJobArn: trainingJobArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateTrainingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAppImageConfig = {
  type t
  type request = {
    @as("KernelGatewayImageConfig") kernelGatewayImageConfig: option<kernelGatewayImageConfig>,
    @as("AppImageConfigName") appImageConfigName: appImageConfigName,
  }
  type response = {@as("AppImageConfigArn") appImageConfigArn: option<appImageConfigArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateAppImageConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrials = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortTrialsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("TrialComponentName") trialComponentName: option<experimentEntityName>,
    @as("ExperimentName") experimentName: option<experimentEntityName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TrialSummaries") trialSummaries: option<trialSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListTrialsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrialComponents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortTrialComponentsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("SourceArn") sourceArn: option<string256>,
    @as("TrialName") trialName: option<experimentEntityName>,
    @as("ExperimentName") experimentName: option<experimentEntityName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TrialComponentSummaries") trialComponentSummaries: option<trialComponentSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListTrialComponentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrainingJobsForHyperParameterTuningJob = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<trainingJobSortByOptions>,
    @as("StatusEquals") statusEquals: option<trainingJobStatus>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TrainingJobSummaries") trainingJobSummaries: hyperParameterTrainingJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListTrainingJobsForHyperParameterTuningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotebookInstances = {
  type t
  type request = {
    @as("AdditionalCodeRepositoryEquals")
    additionalCodeRepositoryEquals: option<codeRepositoryNameOrUrl>,
    @as("DefaultCodeRepositoryContains")
    defaultCodeRepositoryContains: option<codeRepositoryContains>,
    @as("NotebookInstanceLifecycleConfigNameContains")
    notebookInstanceLifecycleConfigNameContains: option<notebookInstanceLifecycleConfigName>,
    @as("StatusEquals") statusEquals: option<notebookInstanceStatus>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<lastModifiedTime>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<lastModifiedTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("NameContains") nameContains: option<notebookInstanceNameContains>,
    @as("SortOrder") sortOrder: option<notebookInstanceSortOrder>,
    @as("SortBy") sortBy: option<notebookInstanceSortKey>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NotebookInstances") notebookInstances: option<notebookInstanceSummaryList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListNotebookInstancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLabelingJobsForWorkteam = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listLabelingJobsForWorkteamSortByOptions>,
    @as("JobReferenceCodeContains") jobReferenceCodeContains: option<jobReferenceCodeContains>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("WorkteamArn") workteamArn: workteamArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LabelingJobSummaryList") labelingJobSummaryList: labelingJobForWorkteamSummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListLabelingJobsForWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHyperParameterTuningJobs = {
  type t
  type request = {
    @as("StatusEquals") statusEquals: option<hyperParameterTuningJobStatus>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<hyperParameterTuningJobSortByOptions>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("HyperParameterTuningJobSummaries")
    hyperParameterTuningJobSummaries: hyperParameterTuningJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListHyperParameterTuningJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFeatureGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<featureGroupMaxResults>,
    @as("SortBy") sortBy: option<featureGroupSortBy>,
    @as("SortOrder") sortOrder: option<featureGroupSortOrder>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
    @as("OfflineStoreStatusEquals") offlineStoreStatusEquals: option<offlineStoreStatusValue>,
    @as("FeatureGroupStatusEquals") featureGroupStatusEquals: option<featureGroupStatus>,
    @as("NameContains") nameContains: option<featureGroupNameContains>,
  }
  type response = {
    @as("NextToken") nextToken: nextToken,
    @as("FeatureGroupSummaries") featureGroupSummaries: featureGroupSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListFeatureGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExperiments = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortExperimentsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ExperimentSummaries") experimentSummaries: option<experimentSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListExperimentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContexts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortContextsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("ContextType") contextType: option<string256>,
    @as("SourceUri") sourceUri: option<sourceUri>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ContextSummaries") contextSummaries: option<contextSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListContextsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCodeRepositories = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<codeRepositorySortOrder>,
    @as("SortBy") sortBy: option<codeRepositorySortBy>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<codeRepositoryNameContains>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<creationTime>,
    @as("CreationTimeAfter") creationTimeAfter: option<creationTime>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("CodeRepositorySummaryList") codeRepositorySummaryList: codeRepositorySummaryList,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListCodeRepositoriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociations = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortAssociationsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("AssociationType") associationType: option<associationEdgeType>,
    @as("DestinationType") destinationType: option<string256>,
    @as("SourceType") sourceType: option<string256>,
    @as("DestinationArn") destinationArn: option<associationEntityArn>,
    @as("SourceArn") sourceArn: option<associationEntityArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AssociationSummaries") associationSummaries: option<associationSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListAssociationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortActionsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("ActionType") actionType: option<string256>,
    @as("SourceUri") sourceUri: option<sourceUri>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ActionSummaries") actionSummaries: option<actionSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkforce = {
  type t
  type request = {@as("WorkforceName") workforceName: workforceName}
  type response = {@as("Workforce") workforce: workforce}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeWorkforceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTransformJob = {
  type t
  type request = {@as("TransformJobName") transformJobName: transformJobName}
  type response = {
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("DataProcessing") dataProcessing: option<dataProcessing>,
    @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
    @as("LabelingJobArn") labelingJobArn: option<labelingJobArn>,
    @as("TransformEndTime") transformEndTime: option<timestamp_>,
    @as("TransformStartTime") transformStartTime: option<timestamp_>,
    @as("CreationTime") creationTime: timestamp_,
    @as("TransformResources") transformResources: transformResources,
    @as("TransformOutput") transformOutput: option<transformOutput>,
    @as("TransformInput") transformInput: transformInput,
    @as("Environment") environment: option<transformEnvironmentMap>,
    @as("BatchStrategy") batchStrategy: option<batchStrategy>,
    @as("MaxPayloadInMB") maxPayloadInMB: option<maxPayloadInMB>,
    @as("ModelClientConfig") modelClientConfig: option<modelClientConfig>,
    @as("MaxConcurrentTransforms") maxConcurrentTransforms: option<maxConcurrentTransforms>,
    @as("ModelName") modelName: modelName,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("TransformJobStatus") transformJobStatus: transformJobStatus,
    @as("TransformJobArn") transformJobArn: transformJobArn,
    @as("TransformJobName") transformJobName: transformJobName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeTransformJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {@as("ProjectName") projectName: projectEntityName}
  type response = {
    @as("CreationTime") creationTime: timestamp_,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("ProjectStatus") projectStatus: projectStatus,
    @as("ServiceCatalogProvisionedProductDetails")
    serviceCatalogProvisionedProductDetails: option<serviceCatalogProvisionedProductDetails>,
    @as("ServiceCatalogProvisioningDetails")
    serviceCatalogProvisioningDetails: serviceCatalogProvisioningDetails,
    @as("ProjectDescription") projectDescription: option<entityDescription>,
    @as("ProjectId") projectId: projectId,
    @as("ProjectName") projectName: projectEntityName,
    @as("ProjectArn") projectArn: projectArn,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLabelingJob = {
  type t
  type request = {@as("LabelingJobName") labelingJobName: labelingJobName}
  type response = {
    @as("LabelingJobOutput") labelingJobOutput: option<labelingJobOutput>,
    @as("Tags") tags: option<tagList_>,
    @as("HumanTaskConfig") humanTaskConfig: humanTaskConfig,
    @as("LabelingJobAlgorithmsConfig")
    labelingJobAlgorithmsConfig: option<labelingJobAlgorithmsConfig>,
    @as("StoppingConditions") stoppingConditions: option<labelingJobStoppingConditions>,
    @as("LabelCategoryConfigS3Uri") labelCategoryConfigS3Uri: option<s3Uri>,
    @as("RoleArn") roleArn: roleArn,
    @as("OutputConfig") outputConfig: labelingJobOutputConfig,
    @as("InputConfig") inputConfig: labelingJobInputConfig,
    @as("LabelAttributeName") labelAttributeName: option<labelAttributeName>,
    @as("LabelingJobArn") labelingJobArn: labelingJobArn,
    @as("LabelingJobName") labelingJobName: labelingJobName,
    @as("JobReferenceCode") jobReferenceCode: jobReferenceCode,
    @as("LastModifiedTime") lastModifiedTime: timestamp_,
    @as("CreationTime") creationTime: timestamp_,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("LabelCounters") labelCounters: labelCounters,
    @as("LabelingJobStatus") labelingJobStatus: labelingJobStatus,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeLabelingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFlowDefinition = {
  type t
  type request = {@as("FlowDefinitionName") flowDefinitionName: flowDefinitionName}
  type response = {
    @as("FailureReason") failureReason: option<failureReason>,
    @as("RoleArn") roleArn: roleArn,
    @as("OutputConfig") outputConfig: flowDefinitionOutputConfig,
    @as("HumanLoopConfig") humanLoopConfig: humanLoopConfig,
    @as("HumanLoopActivationConfig") humanLoopActivationConfig: option<humanLoopActivationConfig>,
    @as("HumanLoopRequestSource") humanLoopRequestSource: option<humanLoopRequestSource>,
    @as("CreationTime") creationTime: timestamp_,
    @as("FlowDefinitionStatus") flowDefinitionStatus: flowDefinitionStatus,
    @as("FlowDefinitionName") flowDefinitionName: flowDefinitionName,
    @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeFlowDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointConfig = {
  type t
  type request = {@as("EndpointConfigName") endpointConfigName: endpointConfigName}
  type response = {
    @as("CreationTime") creationTime: timestamp_,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("DataCaptureConfig") dataCaptureConfig: option<dataCaptureConfig>,
    @as("ProductionVariants") productionVariants: productionVariantList,
    @as("EndpointConfigArn") endpointConfigArn: endpointConfigArn,
    @as("EndpointConfigName") endpointConfigName: endpointConfigName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeEndpointConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeArtifact = {
  type t
  type request = {@as("ArtifactArn") artifactArn: artifactArn}
  type response = {
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("ArtifactType") artifactType: option<string256>,
    @as("Source") source: option<artifactSource>,
    @as("ArtifactArn") artifactArn: option<artifactArn>,
    @as("ArtifactName") artifactName: option<experimentEntityName>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAppImageConfig = {
  type t
  type request = {@as("AppImageConfigName") appImageConfigName: appImageConfigName}
  type response = {
    @as("KernelGatewayImageConfig") kernelGatewayImageConfig: option<kernelGatewayImageConfig>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("CreationTime") creationTime: option<timestamp_>,
    @as("AppImageConfigName") appImageConfigName: option<appImageConfigName>,
    @as("AppImageConfigArn") appImageConfigArn: option<appImageConfigArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeAppImageConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteArtifact = {
  type t
  type request = {
    @as("Source") source: option<artifactSource>,
    @as("ArtifactArn") artifactArn: option<artifactArn>,
  }
  type response = {@as("ArtifactArn") artifactArn: option<artifactArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTransformJob = {
  type t
  type request = {
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("Tags") tags: option<tagList_>,
    @as("DataProcessing") dataProcessing: option<dataProcessing>,
    @as("TransformResources") transformResources: transformResources,
    @as("TransformOutput") transformOutput: transformOutput,
    @as("TransformInput") transformInput: transformInput,
    @as("Environment") environment: option<transformEnvironmentMap>,
    @as("BatchStrategy") batchStrategy: option<batchStrategy>,
    @as("MaxPayloadInMB") maxPayloadInMB: option<maxPayloadInMB>,
    @as("ModelClientConfig") modelClientConfig: option<modelClientConfig>,
    @as("MaxConcurrentTransforms") maxConcurrentTransforms: option<maxConcurrentTransforms>,
    @as("ModelName") modelName: modelName,
    @as("TransformJobName") transformJobName: transformJobName,
  }
  type response = {@as("TransformJobArn") transformJobArn: transformJobArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateTransformJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ServiceCatalogProvisioningDetails")
    serviceCatalogProvisioningDetails: serviceCatalogProvisioningDetails,
    @as("ProjectDescription") projectDescription: option<entityDescription>,
    @as("ProjectName") projectName: projectEntityName,
  }
  type response = {
    @as("ProjectId") projectId: projectId,
    @as("ProjectArn") projectArn: projectArn,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLabelingJob = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("HumanTaskConfig") humanTaskConfig: humanTaskConfig,
    @as("LabelingJobAlgorithmsConfig")
    labelingJobAlgorithmsConfig: option<labelingJobAlgorithmsConfig>,
    @as("StoppingConditions") stoppingConditions: option<labelingJobStoppingConditions>,
    @as("LabelCategoryConfigS3Uri") labelCategoryConfigS3Uri: option<s3Uri>,
    @as("RoleArn") roleArn: roleArn,
    @as("OutputConfig") outputConfig: labelingJobOutputConfig,
    @as("InputConfig") inputConfig: labelingJobInputConfig,
    @as("LabelAttributeName") labelAttributeName: labelAttributeName,
    @as("LabelingJobName") labelingJobName: labelingJobName,
  }
  type response = {@as("LabelingJobArn") labelingJobArn: labelingJobArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateLabelingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFlowDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("OutputConfig") outputConfig: flowDefinitionOutputConfig,
    @as("HumanLoopConfig") humanLoopConfig: humanLoopConfig,
    @as("HumanLoopActivationConfig") humanLoopActivationConfig: option<humanLoopActivationConfig>,
    @as("HumanLoopRequestSource") humanLoopRequestSource: option<humanLoopRequestSource>,
    @as("FlowDefinitionName") flowDefinitionName: flowDefinitionName,
  }
  type response = {@as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateFlowDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpointConfig = {
  type t
  type request = {
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Tags") tags: option<tagList_>,
    @as("DataCaptureConfig") dataCaptureConfig: option<dataCaptureConfig>,
    @as("ProductionVariants") productionVariants: productionVariantList,
    @as("EndpointConfigName") endpointConfigName: endpointConfigName,
  }
  type response = {@as("EndpointConfigArn") endpointConfigArn: endpointConfigArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateEndpointConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateArtifact = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("Properties") properties: option<lineageEntityParameters>,
    @as("ArtifactType") artifactType: string256,
    @as("Source") source: artifactSource,
    @as("ArtifactName") artifactName: option<experimentEntityName>,
  }
  type response = {@as("ArtifactArn") artifactArn: option<artifactArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateArtifactCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppImageConfig = {
  type t
  type request = {
    @as("KernelGatewayImageConfig") kernelGatewayImageConfig: option<kernelGatewayImageConfig>,
    @as("Tags") tags: option<tagList_>,
    @as("AppImageConfigName") appImageConfigName: appImageConfigName,
  }
  type response = {@as("AppImageConfigArn") appImageConfigArn: option<appImageConfigArn>}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateAppImageConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUserProfile = {
  type t
  type request = {
    @as("UserSettings") userSettings: option<userSettings>,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {@as("UserProfileArn") userProfileArn: option<userProfileArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateUserProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEndpoint = {
  type t
  type request = {
    @as("DeploymentConfig") deploymentConfig: option<deploymentConfig>,
    @as("ExcludeRetainedVariantProperties")
    excludeRetainedVariantProperties: option<variantPropertyList>,
    @as("RetainAllVariantProperties") retainAllVariantProperties: option<boolean_>,
    @as("EndpointConfigName") endpointConfigName: endpointConfigName,
    @as("EndpointName") endpointName: endpointName,
  }
  type response = {@as("EndpointArn") endpointArn: endpointArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomain = {
  type t
  type request = {
    @as("DefaultUserSettings") defaultUserSettings: option<userSettings>,
    @as("DomainId") domainId: domainId,
  }
  type response = {@as("DomainArn") domainArn: option<domainArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateDomainCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkforces = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<workforceName>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listWorkforcesSortByOptions>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Workforces") workforces: workforces,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListWorkforcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPipelineExecutionSteps = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineExecutionArn") pipelineExecutionArn: option<pipelineExecutionArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("PipelineExecutionSteps") pipelineExecutionSteps: option<pipelineExecutionStepList>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListPipelineExecutionStepsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevices = {
  type t
  type request = {
    @as("DeviceFleetName") deviceFleetName: option<entityName>,
    @as("ModelName") modelName: option<entityName>,
    @as("LatestHeartbeatAfter") latestHeartbeatAfter: option<timestamp_>,
    @as("MaxResults") maxResults: option<listMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DeviceSummaries") deviceSummaries: deviceSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAutoMLJobs = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<autoMLMaxResults>,
    @as("SortBy") sortBy: option<autoMLSortBy>,
    @as("SortOrder") sortOrder: option<autoMLSortOrder>,
    @as("StatusEquals") statusEquals: option<autoMLJobStatus>,
    @as("NameContains") nameContains: option<autoMLNameContains>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AutoMLJobSummaries") autoMLJobSummaries: autoMLJobSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListAutoMLJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUserProfile = {
  type t
  type request = {
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {
    @as("UserSettings") userSettings: option<userSettings>,
    @as("SingleSignOnUserValue") singleSignOnUserValue: option<string256>,
    @as("SingleSignOnUserIdentifier")
    singleSignOnUserIdentifier: option<singleSignOnUserIdentifier>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("CreationTime") creationTime: option<creationTime>,
    @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
    @as("Status") status: option<userProfileStatus>,
    @as("HomeEfsFileSystemUid") homeEfsFileSystemUid: option<efsUid>,
    @as("UserProfileName") userProfileName: option<userProfileName>,
    @as("UserProfileArn") userProfileArn: option<userProfileArn>,
    @as("DomainId") domainId: option<domainId>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeUserProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProcessingJob = {
  type t
  type request = {@as("ProcessingJobName") processingJobName: processingJobName}
  type response = {
    @as("TrainingJobArn") trainingJobArn: option<trainingJobArn>,
    @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
    @as("MonitoringScheduleArn") monitoringScheduleArn: option<monitoringScheduleArn>,
    @as("CreationTime") creationTime: timestamp_,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("ProcessingStartTime") processingStartTime: option<timestamp_>,
    @as("ProcessingEndTime") processingEndTime: option<timestamp_>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("ExitMessage") exitMessage: option<exitMessage>,
    @as("ProcessingJobStatus") processingJobStatus: processingJobStatus,
    @as("ProcessingJobArn") processingJobArn: processingJobArn,
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("NetworkConfig") networkConfig: option<networkConfig>,
    @as("Environment") environment: option<processingEnvironmentMap>,
    @as("AppSpecification") appSpecification: appSpecification,
    @as("StoppingCondition") stoppingCondition: option<processingStoppingCondition>,
    @as("ProcessingResources") processingResources: processingResources,
    @as("ProcessingJobName") processingJobName: processingJobName,
    @as("ProcessingOutputConfig") processingOutputConfig: option<processingOutputConfig>,
    @as("ProcessingInputs") processingInputs: option<processingInputs>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeProcessingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelQualityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}
  type response = {
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelQualityJobOutputConfig") modelQualityJobOutputConfig: monitoringOutputConfig,
    @as("ModelQualityJobInput") modelQualityJobInput: modelQualityJobInput,
    @as("ModelQualityAppSpecification") modelQualityAppSpecification: modelQualityAppSpecification,
    @as("ModelQualityBaselineConfig")
    modelQualityBaselineConfig: option<modelQualityBaselineConfig>,
    @as("CreationTime") creationTime: timestamp_,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
    @as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeModelQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelExplainabilityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}
  type response = {
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelExplainabilityJobOutputConfig")
    modelExplainabilityJobOutputConfig: monitoringOutputConfig,
    @as("ModelExplainabilityJobInput") modelExplainabilityJobInput: modelExplainabilityJobInput,
    @as("ModelExplainabilityAppSpecification")
    modelExplainabilityAppSpecification: modelExplainabilityAppSpecification,
    @as("ModelExplainabilityBaselineConfig")
    modelExplainabilityBaselineConfig: option<modelExplainabilityBaselineConfig>,
    @as("CreationTime") creationTime: timestamp_,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
    @as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeModelExplainabilityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelBiasJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}
  type response = {
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelBiasJobOutputConfig") modelBiasJobOutputConfig: monitoringOutputConfig,
    @as("ModelBiasJobInput") modelBiasJobInput: modelBiasJobInput,
    @as("ModelBiasAppSpecification") modelBiasAppSpecification: modelBiasAppSpecification,
    @as("ModelBiasBaselineConfig") modelBiasBaselineConfig: option<modelBiasBaselineConfig>,
    @as("CreationTime") creationTime: timestamp_,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
    @as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeModelBiasJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModel = {
  type t
  type request = {@as("ModelName") modelName: modelName}
  type response = {
    @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
    @as("ModelArn") modelArn: modelArn,
    @as("CreationTime") creationTime: timestamp_,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("ExecutionRoleArn") executionRoleArn: roleArn,
    @as("InferenceExecutionConfig") inferenceExecutionConfig: option<inferenceExecutionConfig>,
    @as("Containers") containers: option<containerDefinitionList>,
    @as("PrimaryContainer") primaryContainer: option<containerDefinition>,
    @as("ModelName") modelName: modelName,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoint = {
  type t
  type request = {@as("EndpointName") endpointName: endpointName}
  type response = {
    @as("LastDeploymentConfig") lastDeploymentConfig: option<deploymentConfig>,
    @as("LastModifiedTime") lastModifiedTime: timestamp_,
    @as("CreationTime") creationTime: timestamp_,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("EndpointStatus") endpointStatus: endpointStatus,
    @as("DataCaptureConfig") dataCaptureConfig: option<dataCaptureConfigSummary>,
    @as("ProductionVariants") productionVariants: option<productionVariantSummaryList>,
    @as("EndpointConfigName") endpointConfigName: endpointConfigName,
    @as("EndpointArn") endpointArn: endpointArn,
    @as("EndpointName") endpointName: endpointName,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  type request = {@as("DomainId") domainId: domainId}
  type response = {
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("VpcId") vpcId: option<vpcId>,
    @as("Url") url: option<string1024>,
    @as("SubnetIds") subnetIds: option<subnets>,
    @as("HomeEfsFileSystemKmsKeyId") homeEfsFileSystemKmsKeyId: option<kmsKeyId>,
    @as("AppNetworkAccessType") appNetworkAccessType: option<appNetworkAccessType>,
    @as("DefaultUserSettings") defaultUserSettings: option<userSettings>,
    @as("AuthMode") authMode: option<authMode>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("LastModifiedTime") lastModifiedTime: option<lastModifiedTime>,
    @as("CreationTime") creationTime: option<creationTime>,
    @as("Status") status: option<domainStatus>,
    @as("SingleSignOnManagedApplicationInstanceId")
    singleSignOnManagedApplicationInstanceId: option<string256>,
    @as("HomeEfsFileSystemId") homeEfsFileSystemId: option<resourceId>,
    @as("DomainName") domainName: option<domainName>,
    @as("DomainId") domainId: option<domainId>,
    @as("DomainArn") domainArn: option<domainArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeDomainCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataQualityJobDefinition = {
  type t
  type request = {@as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName}
  type response = {
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("DataQualityJobOutputConfig") dataQualityJobOutputConfig: monitoringOutputConfig,
    @as("DataQualityJobInput") dataQualityJobInput: dataQualityJobInput,
    @as("DataQualityAppSpecification") dataQualityAppSpecification: dataQualityAppSpecification,
    @as("DataQualityBaselineConfig") dataQualityBaselineConfig: option<dataQualityBaselineConfig>,
    @as("CreationTime") creationTime: timestamp_,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
    @as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeDataQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutoMLJob = {
  type t
  type request = {@as("AutoMLJobName") autoMLJobName: autoMLJobName}
  type response = {
    @as("ModelDeployResult") modelDeployResult: option<modelDeployResult>,
    @as("ModelDeployConfig") modelDeployConfig: option<modelDeployConfig>,
    @as("ResolvedAttributes") resolvedAttributes: option<resolvedAttributes>,
    @as("AutoMLJobArtifacts") autoMLJobArtifacts: option<autoMLJobArtifacts>,
    @as("GenerateCandidateDefinitionsOnly")
    generateCandidateDefinitionsOnly: option<generateCandidateDefinitionsOnly>,
    @as("AutoMLJobSecondaryStatus") autoMLJobSecondaryStatus: autoMLJobSecondaryStatus,
    @as("AutoMLJobStatus") autoMLJobStatus: autoMLJobStatus,
    @as("BestCandidate") bestCandidate: option<autoMLCandidate>,
    @as("PartialFailureReasons") partialFailureReasons: option<autoMLPartialFailureReasons>,
    @as("FailureReason") failureReason: option<autoMLFailureReason>,
    @as("LastModifiedTime") lastModifiedTime: timestamp_,
    @as("EndTime") endTime: option<timestamp_>,
    @as("CreationTime") creationTime: timestamp_,
    @as("AutoMLJobConfig") autoMLJobConfig: option<autoMLJobConfig>,
    @as("ProblemType") problemType: option<problemType>,
    @as("AutoMLJobObjective") autoMLJobObjective: option<autoMLJobObjective>,
    @as("RoleArn") roleArn: roleArn,
    @as("OutputDataConfig") outputDataConfig: autoMLOutputDataConfig,
    @as("InputDataConfig") inputDataConfig: autoMLInputDataConfig,
    @as("AutoMLJobArn") autoMLJobArn: autoMLJobArn,
    @as("AutoMLJobName") autoMLJobName: autoMLJobName,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeAutoMLJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkteam = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
    @as("Description") description: string200,
    @as("MemberDefinitions") memberDefinitions: memberDefinitions,
    @as("WorkforceName") workforceName: option<workforceName>,
    @as("WorkteamName") workteamName: workteamName,
  }
  type response = {@as("WorkteamArn") workteamArn: option<workteamArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUserProfile = {
  type t
  type request = {
    @as("UserSettings") userSettings: option<userSettings>,
    @as("Tags") tags: option<tagList_>,
    @as("SingleSignOnUserValue") singleSignOnUserValue: option<string256>,
    @as("SingleSignOnUserIdentifier")
    singleSignOnUserIdentifier: option<singleSignOnUserIdentifier>,
    @as("UserProfileName") userProfileName: userProfileName,
    @as("DomainId") domainId: domainId,
  }
  type response = {@as("UserProfileArn") userProfileArn: option<userProfileArn>}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateUserProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProcessingJob = {
  type t
  type request = {
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<networkConfig>,
    @as("Environment") environment: option<processingEnvironmentMap>,
    @as("AppSpecification") appSpecification: appSpecification,
    @as("StoppingCondition") stoppingCondition: option<processingStoppingCondition>,
    @as("ProcessingResources") processingResources: processingResources,
    @as("ProcessingJobName") processingJobName: processingJobName,
    @as("ProcessingOutputConfig") processingOutputConfig: option<processingOutputConfig>,
    @as("ProcessingInputs") processingInputs: option<processingInputs>,
  }
  type response = {@as("ProcessingJobArn") processingJobArn: processingJobArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateProcessingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelQualityJobDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelQualityJobOutputConfig") modelQualityJobOutputConfig: monitoringOutputConfig,
    @as("ModelQualityJobInput") modelQualityJobInput: modelQualityJobInput,
    @as("ModelQualityAppSpecification") modelQualityAppSpecification: modelQualityAppSpecification,
    @as("ModelQualityBaselineConfig")
    modelQualityBaselineConfig: option<modelQualityBaselineConfig>,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
  }
  type response = {@as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateModelQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelExplainabilityJobDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelExplainabilityJobOutputConfig")
    modelExplainabilityJobOutputConfig: monitoringOutputConfig,
    @as("ModelExplainabilityJobInput") modelExplainabilityJobInput: modelExplainabilityJobInput,
    @as("ModelExplainabilityAppSpecification")
    modelExplainabilityAppSpecification: modelExplainabilityAppSpecification,
    @as("ModelExplainabilityBaselineConfig")
    modelExplainabilityBaselineConfig: option<modelExplainabilityBaselineConfig>,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
  }
  type response = {@as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateModelExplainabilityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelBiasJobDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("ModelBiasJobOutputConfig") modelBiasJobOutputConfig: monitoringOutputConfig,
    @as("ModelBiasJobInput") modelBiasJobInput: modelBiasJobInput,
    @as("ModelBiasAppSpecification") modelBiasAppSpecification: modelBiasAppSpecification,
    @as("ModelBiasBaselineConfig") modelBiasBaselineConfig: option<modelBiasBaselineConfig>,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
  }
  type response = {@as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateModelBiasJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModel = {
  type t
  type request = {
    @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("Tags") tags: option<tagList_>,
    @as("ExecutionRoleArn") executionRoleArn: roleArn,
    @as("InferenceExecutionConfig") inferenceExecutionConfig: option<inferenceExecutionConfig>,
    @as("Containers") containers: option<containerDefinitionList>,
    @as("PrimaryContainer") primaryContainer: option<containerDefinition>,
    @as("ModelName") modelName: modelName,
  }
  type response = {@as("ModelArn") modelArn: modelArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateModelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("HomeEfsFileSystemKmsKeyId") homeEfsFileSystemKmsKeyId: option<kmsKeyId>,
    @as("AppNetworkAccessType") appNetworkAccessType: option<appNetworkAccessType>,
    @as("Tags") tags: option<tagList_>,
    @as("VpcId") vpcId: vpcId,
    @as("SubnetIds") subnetIds: subnets,
    @as("DefaultUserSettings") defaultUserSettings: userSettings,
    @as("AuthMode") authMode: authMode,
    @as("DomainName") domainName: domainName,
  }
  type response = {
    @as("Url") url: option<string1024>,
    @as("DomainArn") domainArn: option<domainArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateDomainCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataQualityJobDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: option<monitoringStoppingCondition>,
    @as("RoleArn") roleArn: roleArn,
    @as("NetworkConfig") networkConfig: option<monitoringNetworkConfig>,
    @as("JobResources") jobResources: monitoringResources,
    @as("DataQualityJobOutputConfig") dataQualityJobOutputConfig: monitoringOutputConfig,
    @as("DataQualityJobInput") dataQualityJobInput: dataQualityJobInput,
    @as("DataQualityAppSpecification") dataQualityAppSpecification: dataQualityAppSpecification,
    @as("DataQualityBaselineConfig") dataQualityBaselineConfig: option<dataQualityBaselineConfig>,
    @as("JobDefinitionName") jobDefinitionName: monitoringJobDefinitionName,
  }
  type response = {@as("JobDefinitionArn") jobDefinitionArn: monitoringJobDefinitionArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateDataQualityJobDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAutoMLJob = {
  type t
  type request = {
    @as("ModelDeployConfig") modelDeployConfig: option<modelDeployConfig>,
    @as("Tags") tags: option<tagList_>,
    @as("GenerateCandidateDefinitionsOnly")
    generateCandidateDefinitionsOnly: option<generateCandidateDefinitionsOnly>,
    @as("RoleArn") roleArn: roleArn,
    @as("AutoMLJobConfig") autoMLJobConfig: option<autoMLJobConfig>,
    @as("AutoMLJobObjective") autoMLJobObjective: option<autoMLJobObjective>,
    @as("ProblemType") problemType: option<problemType>,
    @as("OutputDataConfig") outputDataConfig: autoMLOutputDataConfig,
    @as("InputDataConfig") inputDataConfig: autoMLInputDataConfig,
    @as("AutoMLJobName") autoMLJobName: autoMLJobName,
  }
  type response = {@as("AutoMLJobArn") autoMLJobArn: autoMLJobArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateAutoMLJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkteam = {
  type t
  type request = {
    @as("NotificationConfiguration") notificationConfiguration: option<notificationConfiguration>,
    @as("Description") description: option<string200>,
    @as("MemberDefinitions") memberDefinitions: option<memberDefinitions>,
    @as("WorkteamName") workteamName: workteamName,
  }
  type response = {@as("Workteam") workteam: workteam}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "UpdateWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLabelingJobs = {
  type t
  type request = {
    @as("StatusEquals") statusEquals: option<labelingJobStatus>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortBy>,
    @as("NameContains") nameContains: option<nameContains>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LastModifiedTimeBefore") lastModifiedTimeBefore: option<timestamp_>,
    @as("LastModifiedTimeAfter") lastModifiedTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LabelingJobSummaryList") labelingJobSummaryList: option<labelingJobSummaryList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListLabelingJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCandidatesForAutoMLJob = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<autoMLMaxResults>,
    @as("SortBy") sortBy: option<candidateSortBy>,
    @as("SortOrder") sortOrder: option<autoMLSortOrder>,
    @as("CandidateNameEquals") candidateNameEquals: option<candidateName>,
    @as("StatusEquals") statusEquals: option<candidateStatus>,
    @as("AutoMLJobName") autoMLJobName: autoMLJobName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Candidates") candidates: autoMLCandidates,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListCandidatesForAutoMLJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArtifacts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<sortArtifactsBy>,
    @as("CreatedBefore") createdBefore: option<timestamp_>,
    @as("CreatedAfter") createdAfter: option<timestamp_>,
    @as("ArtifactType") artifactType: option<string256>,
    @as("SourceUri") sourceUri: option<sourceUri>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ArtifactSummaries") artifactSummaries: option<artifactSummaries>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListArtifactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppImageConfigs = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<appImageConfigSortKey>,
    @as("ModifiedTimeAfter") modifiedTimeAfter: option<timestamp_>,
    @as("ModifiedTimeBefore") modifiedTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("NameContains") nameContains: option<appImageConfigName>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("AppImageConfigs") appImageConfigs: option<appImageConfigList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "ListAppImageConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkteam = {
  type t
  type request = {@as("WorkteamName") workteamName: workteamName}
  type response = {@as("Workteam") workteam: workteam}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeWorkteamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrainingJob = {
  type t
  type request = {@as("TrainingJobName") trainingJobName: trainingJobName}
  type response = {
    @as("Environment") environment: option<trainingEnvironmentMap>,
    @as("RetryStrategy") retryStrategy: option<retryStrategy>,
    @as("ProfilingStatus") profilingStatus: option<profilingStatus>,
    @as("ProfilerRuleEvaluationStatuses")
    profilerRuleEvaluationStatuses: option<profilerRuleEvaluationStatuses>,
    @as("ProfilerRuleConfigurations")
    profilerRuleConfigurations: option<profilerRuleConfigurations>,
    @as("ProfilerConfig") profilerConfig: option<profilerConfig>,
    @as("DebugRuleEvaluationStatuses")
    debugRuleEvaluationStatuses: option<debugRuleEvaluationStatuses>,
    @as("TensorBoardOutputConfig") tensorBoardOutputConfig: option<tensorBoardOutputConfig>,
    @as("DebugRuleConfigurations") debugRuleConfigurations: option<debugRuleConfigurations>,
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("DebugHookConfig") debugHookConfig: option<debugHookConfig>,
    @as("BillableTimeInSeconds") billableTimeInSeconds: option<billableTimeInSeconds>,
    @as("TrainingTimeInSeconds") trainingTimeInSeconds: option<trainingTimeInSeconds>,
    @as("CheckpointConfig") checkpointConfig: option<checkpointConfig>,
    @as("EnableManagedSpotTraining") enableManagedSpotTraining: option<boolean_>,
    @as("EnableInterContainerTrafficEncryption")
    enableInterContainerTrafficEncryption: option<boolean_>,
    @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
    @as("FinalMetricDataList") finalMetricDataList: option<finalMetricDataList>,
    @as("SecondaryStatusTransitions")
    secondaryStatusTransitions: option<secondaryStatusTransitions>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("TrainingEndTime") trainingEndTime: option<timestamp_>,
    @as("TrainingStartTime") trainingStartTime: option<timestamp_>,
    @as("CreationTime") creationTime: timestamp_,
    @as("StoppingCondition") stoppingCondition: stoppingCondition,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("ResourceConfig") resourceConfig: resourceConfig,
    @as("OutputDataConfig") outputDataConfig: option<outputDataConfig>,
    @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
    @as("RoleArn") roleArn: option<roleArn>,
    @as("AlgorithmSpecification") algorithmSpecification: algorithmSpecification,
    @as("HyperParameters") hyperParameters: option<hyperParameters>,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("SecondaryStatus") secondaryStatus: secondaryStatus,
    @as("TrainingJobStatus") trainingJobStatus: trainingJobStatus,
    @as("ModelArtifacts") modelArtifacts: modelArtifacts,
    @as("AutoMLJobArn") autoMLJobArn: option<autoMLJobArn>,
    @as("LabelingJobArn") labelingJobArn: option<labelingJobArn>,
    @as("TuningJobArn") tuningJobArn: option<hyperParameterTuningJobArn>,
    @as("TrainingJobArn") trainingJobArn: trainingJobArn,
    @as("TrainingJobName") trainingJobName: trainingJobName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeTrainingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrainingJob = {
  type t
  type request = {
    @as("RetryStrategy") retryStrategy: option<retryStrategy>,
    @as("Environment") environment: option<trainingEnvironmentMap>,
    @as("ProfilerRuleConfigurations")
    profilerRuleConfigurations: option<profilerRuleConfigurations>,
    @as("ProfilerConfig") profilerConfig: option<profilerConfig>,
    @as("ExperimentConfig") experimentConfig: option<experimentConfig>,
    @as("TensorBoardOutputConfig") tensorBoardOutputConfig: option<tensorBoardOutputConfig>,
    @as("DebugRuleConfigurations") debugRuleConfigurations: option<debugRuleConfigurations>,
    @as("DebugHookConfig") debugHookConfig: option<debugHookConfig>,
    @as("CheckpointConfig") checkpointConfig: option<checkpointConfig>,
    @as("EnableManagedSpotTraining") enableManagedSpotTraining: option<boolean_>,
    @as("EnableInterContainerTrafficEncryption")
    enableInterContainerTrafficEncryption: option<boolean_>,
    @as("EnableNetworkIsolation") enableNetworkIsolation: option<boolean_>,
    @as("Tags") tags: option<tagList_>,
    @as("StoppingCondition") stoppingCondition: stoppingCondition,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("ResourceConfig") resourceConfig: resourceConfig,
    @as("OutputDataConfig") outputDataConfig: outputDataConfig,
    @as("InputDataConfig") inputDataConfig: option<inputDataConfig>,
    @as("RoleArn") roleArn: roleArn,
    @as("AlgorithmSpecification") algorithmSpecification: algorithmSpecification,
    @as("HyperParameters") hyperParameters: option<hyperParameters>,
    @as("TrainingJobName") trainingJobName: trainingJobName,
  }
  type response = {@as("TrainingJobArn") trainingJobArn: trainingJobArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateTrainingJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMonitoringSchedule = {
  type t
  type request = {
    @as("MonitoringScheduleConfig") monitoringScheduleConfig: monitoringScheduleConfig,
    @as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName,
  }
  type response = {@as("MonitoringScheduleArn") monitoringScheduleArn: monitoringScheduleArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "UpdateMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkteams = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("NameContains") nameContains: option<workteamName>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("SortBy") sortBy: option<listWorkteamsSortByOptions>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Workteams") workteams: workteams,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListWorkteamsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMonitoringSchedule = {
  type t
  type request = {@as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName}
  type response = {
    @as("LastMonitoringExecutionSummary")
    lastMonitoringExecutionSummary: option<monitoringExecutionSummary>,
    @as("EndpointName") endpointName: option<endpointName>,
    @as("MonitoringScheduleConfig") monitoringScheduleConfig: monitoringScheduleConfig,
    @as("LastModifiedTime") lastModifiedTime: timestamp_,
    @as("CreationTime") creationTime: timestamp_,
    @as("FailureReason") failureReason: option<failureReason>,
    @as("MonitoringType") monitoringType: option<monitoringType>,
    @as("MonitoringScheduleStatus") monitoringScheduleStatus: scheduleStatus,
    @as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName,
    @as("MonitoringScheduleArn") monitoringScheduleArn: monitoringScheduleArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMonitoringSchedule = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("MonitoringScheduleConfig") monitoringScheduleConfig: monitoringScheduleConfig,
    @as("MonitoringScheduleName") monitoringScheduleName: monitoringScheduleName,
  }
  type response = {@as("MonitoringScheduleArn") monitoringScheduleArn: monitoringScheduleArn}
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateMonitoringScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeModelPackage = {
  type t
  type request = {@as("ModelPackageName") modelPackageName: versionedArnOrName}
  type response = {
    @as("ApprovalDescription") approvalDescription: option<approvalDescription>,
    @as("LastModifiedBy") lastModifiedBy: option<userContext>,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("ModelMetrics") modelMetrics: option<modelMetrics>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("CreatedBy") createdBy: option<userContext>,
    @as("ModelApprovalStatus") modelApprovalStatus: option<modelApprovalStatus>,
    @as("CertifyForMarketplace") certifyForMarketplace: option<certifyForMarketplace>,
    @as("ModelPackageStatusDetails") modelPackageStatusDetails: modelPackageStatusDetails,
    @as("ModelPackageStatus") modelPackageStatus: modelPackageStatus,
    @as("ValidationSpecification")
    validationSpecification: option<modelPackageValidationSpecification>,
    @as("SourceAlgorithmSpecification")
    sourceAlgorithmSpecification: option<sourceAlgorithmSpecification>,
    @as("InferenceSpecification") inferenceSpecification: option<inferenceSpecification>,
    @as("CreationTime") creationTime: creationTime,
    @as("ModelPackageDescription") modelPackageDescription: option<entityDescription>,
    @as("ModelPackageArn") modelPackageArn: modelPackageArn,
    @as("ModelPackageVersion") modelPackageVersion: option<modelPackageVersion>,
    @as("ModelPackageGroupName") modelPackageGroupName: option<entityName>,
    @as("ModelPackageName") modelPackageName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeModelPackageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHyperParameterTuningJob = {
  type t
  type request = {
    @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
  }
  type response = {
    @as("FailureReason") failureReason: option<failureReason>,
    @as("WarmStartConfig") warmStartConfig: option<hyperParameterTuningJobWarmStartConfig>,
    @as("OverallBestTrainingJob") overallBestTrainingJob: option<hyperParameterTrainingJobSummary>,
    @as("BestTrainingJob") bestTrainingJob: option<hyperParameterTrainingJobSummary>,
    @as("ObjectiveStatusCounters") objectiveStatusCounters: objectiveStatusCounters,
    @as("TrainingJobStatusCounters") trainingJobStatusCounters: trainingJobStatusCounters,
    @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
    @as("HyperParameterTuningEndTime") hyperParameterTuningEndTime: option<timestamp_>,
    @as("CreationTime") creationTime: timestamp_,
    @as("HyperParameterTuningJobStatus")
    hyperParameterTuningJobStatus: hyperParameterTuningJobStatus,
    @as("TrainingJobDefinitions")
    trainingJobDefinitions: option<hyperParameterTrainingJobDefinitions>,
    @as("TrainingJobDefinition") trainingJobDefinition: option<hyperParameterTrainingJobDefinition>,
    @as("HyperParameterTuningJobConfig")
    hyperParameterTuningJobConfig: hyperParameterTuningJobConfig,
    @as("HyperParameterTuningJobArn") hyperParameterTuningJobArn: hyperParameterTuningJobArn,
    @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "DescribeHyperParameterTuningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateModelPackage = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("ModelMetrics") modelMetrics: option<modelMetrics>,
    @as("MetadataProperties") metadataProperties: option<metadataProperties>,
    @as("ModelApprovalStatus") modelApprovalStatus: option<modelApprovalStatus>,
    @as("Tags") tags: option<tagList_>,
    @as("CertifyForMarketplace") certifyForMarketplace: option<certifyForMarketplace>,
    @as("SourceAlgorithmSpecification")
    sourceAlgorithmSpecification: option<sourceAlgorithmSpecification>,
    @as("ValidationSpecification")
    validationSpecification: option<modelPackageValidationSpecification>,
    @as("InferenceSpecification") inferenceSpecification: option<inferenceSpecification>,
    @as("ModelPackageDescription") modelPackageDescription: option<entityDescription>,
    @as("ModelPackageGroupName") modelPackageGroupName: option<entityName>,
    @as("ModelPackageName") modelPackageName: option<entityName>,
  }
  type response = {@as("ModelPackageArn") modelPackageArn: modelPackageArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateModelPackageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHyperParameterTuningJob = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("WarmStartConfig") warmStartConfig: option<hyperParameterTuningJobWarmStartConfig>,
    @as("TrainingJobDefinitions")
    trainingJobDefinitions: option<hyperParameterTrainingJobDefinitions>,
    @as("TrainingJobDefinition") trainingJobDefinition: option<hyperParameterTrainingJobDefinition>,
    @as("HyperParameterTuningJobConfig")
    hyperParameterTuningJobConfig: hyperParameterTuningJobConfig,
    @as("HyperParameterTuningJobName") hyperParameterTuningJobName: hyperParameterTuningJobName,
  }
  type response = {
    @as("HyperParameterTuningJobArn") hyperParameterTuningJobArn: hyperParameterTuningJobArn,
  }
  @module("@aws-sdk/client-sagemaker") @new
  external new: request => t = "CreateHyperParameterTuningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlgorithm = {
  type t
  type request = {@as("AlgorithmName") algorithmName: arnOrName}
  type response = {
    @as("CertifyForMarketplace") certifyForMarketplace: option<certifyForMarketplace>,
    @as("ProductId") productId: option<productId>,
    @as("AlgorithmStatusDetails") algorithmStatusDetails: algorithmStatusDetails,
    @as("AlgorithmStatus") algorithmStatus: algorithmStatus,
    @as("ValidationSpecification")
    validationSpecification: option<algorithmValidationSpecification>,
    @as("InferenceSpecification") inferenceSpecification: option<inferenceSpecification>,
    @as("TrainingSpecification") trainingSpecification: trainingSpecification,
    @as("CreationTime") creationTime: creationTime,
    @as("AlgorithmDescription") algorithmDescription: option<entityDescription>,
    @as("AlgorithmArn") algorithmArn: algorithmArn,
    @as("AlgorithmName") algorithmName: entityName,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeAlgorithmCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlgorithm = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("CertifyForMarketplace") certifyForMarketplace: option<certifyForMarketplace>,
    @as("ValidationSpecification")
    validationSpecification: option<algorithmValidationSpecification>,
    @as("InferenceSpecification") inferenceSpecification: option<inferenceSpecification>,
    @as("TrainingSpecification") trainingSpecification: trainingSpecification,
    @as("AlgorithmDescription") algorithmDescription: option<entityDescription>,
    @as("AlgorithmName") algorithmName: entityName,
  }
  type response = {@as("AlgorithmArn") algorithmArn: algorithmArn}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "CreateAlgorithmCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Search = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<searchSortOrder>,
    @as("SortBy") sortBy: option<resourcePropertyName>,
    @as("SearchExpression") searchExpression: option<searchExpression>,
    @as("Resource") resource: resourceType,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Results") results: option<searchResultsList>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "SearchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
