type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-imagebuilder") @new
external createClient: unit => awsServiceClient = "ImagebuilderClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type versionNumber = string
type uri = string
type timezone = string
type tagValue = string
type tagKey = string
type snsTopicArn = string
type restrictedInteger = int
type resourcePolicyDocument = string
type resourceName = string
type platform = [@as("Linux") #Linux | @as("Windows") #Windows]
type pipelineStatus = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type pipelineExecutionStartCondition = [
  | @as("EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE")
  #EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
  | @as("EXPRESSION_MATCH_ONLY") #EXPRESSION_MATCH_ONLY
]
type paginationToken = string
type ownership = [@as("Amazon") #Amazon | @as("Shared") #Shared | @as("Self") #Self]
type osVersion = string
type nullableBoolean = bool
type nonEmptyString = string
type licenseConfigurationArn = string
type launchTemplateId = string
type instanceType = string
type instanceProfileNameType = string
type inlineDockerFileTemplate = string
type inlineComponentData = string
type infrastructureConfigurationArn = string
type imageVersionArnOrBuildVersionArn = string
type imageVersionArn = string
type imageType = [@as("DOCKER") #DOCKER | @as("AMI") #AMI]
type imageTestsTimeoutMinutes = int
type imageStatus = [
  | @as("DELETED") #DELETED
  | @as("DEPRECATED") #DEPRECATED
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("AVAILABLE") #AVAILABLE
  | @as("INTEGRATING") #INTEGRATING
  | @as("DISTRIBUTING") #DISTRIBUTING
  | @as("TESTING") #TESTING
  | @as("BUILDING") #BUILDING
  | @as("CREATING") #CREATING
  | @as("PENDING") #PENDING
]
type imageRecipeArn = string
type imagePipelineArn = string
type imageBuilderArn = string
type imageBuildVersionArn = string
type filterValue = string
type filterName = string
type errorMessage = string
type emptyString = string
type ebsVolumeType = [
  | @as("st1") #St1
  | @as("sc1") #Sc1
  | @as("gp3") #Gp3
  | @as("gp2") #Gp2
  | @as("io2") #Io2
  | @as("io1") #Io1
  | @as("standard") #Standard
]
type ebsVolumeSizeInteger = int
type ebsIopsInteger = int
type dockerFileTemplate = string
type distributionTimeoutMinutes = int
type distributionConfigurationArn = string
type dateTime = string
type containerType = [@as("DOCKER") #DOCKER]
type containerRepositoryService = [@as("ECR") #ECR]
type containerRecipeArn = string
type componentVersionArnOrBuildVersionArn = string
type componentVersionArn = string
type componentType = [@as("TEST") #TEST | @as("BUILD") #BUILD]
type componentFormat = [@as("SHELL") #SHELL]
type componentData = string
type componentBuildVersionArn = string
type clientToken = string
type boolean_ = bool
type arn = string
type amiNameString = string
type accountId = string
type targetContainerRepository = {
  repositoryName: nonEmptyString,
  service: containerRepositoryService,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
type schedule = {
  pipelineExecutionStartCondition: option<pipelineExecutionStartCondition>,
  timezone: option<timezone>,
  scheduleExpression: option<nonEmptyString>,
}
type s3Logs = {
  s3KeyPrefix: option<nonEmptyString>,
  s3BucketName: option<nonEmptyString>,
}
type resourceTagMap = Js.Dict.t<tagValue>
type regionList = array<nonEmptyString>
type osVersionList = array<osVersion>
type licenseConfigurationArnList = array<licenseConfigurationArn>
type launchTemplateConfiguration = {
  setDefaultVersion: option<boolean_>,
  accountId: option<accountId>,
  launchTemplateId: launchTemplateId,
}
type instanceTypeList = array<instanceType>
type imageVersion = {
  dateCreated: option<dateTime>,
  owner: option<nonEmptyString>,
  osVersion: option<osVersion>,
  platform: option<platform>,
  version: option<versionNumber>,
  @as("type") type_: option<imageType>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type imageTestsConfiguration = {
  timeoutMinutes: option<imageTestsTimeoutMinutes>,
  imageTestsEnabled: option<nullableBoolean>,
}
type imageState = {
  reason: option<nonEmptyString>,
  status: option<imageStatus>,
}
type imagePackage = {
  packageVersion: option<nonEmptyString>,
  packageName: option<nonEmptyString>,
}
type filterValues = array<filterValue>
type ebsInstanceBlockDeviceSpecification = {
  volumeType: option<ebsVolumeType>,
  volumeSize: option<ebsVolumeSizeInteger>,
  snapshotId: option<nonEmptyString>,
  kmsKeyId: option<nonEmptyString>,
  iops: option<ebsIopsInteger>,
  deleteOnTermination: option<nullableBoolean>,
  encrypted: option<nullableBoolean>,
}
type componentConfiguration = {componentArn: componentVersionArnOrBuildVersionArn}
type accountList = array<accountId>
type logging = {s3Logs: option<s3Logs>}
type launchTemplateConfigurationList = array<launchTemplateConfiguration>
type launchPermissionConfiguration = {
  userGroups: option<stringList>,
  userIds: option<accountList>,
}
type instanceBlockDeviceMapping = {
  noDevice: option<emptyString>,
  virtualName: option<nonEmptyString>,
  ebs: option<ebsInstanceBlockDeviceSpecification>,
  deviceName: option<nonEmptyString>,
}
type infrastructureConfigurationSummary = {
  instanceProfileName: option<instanceProfileNameType>,
  instanceTypes: option<instanceTypeList>,
  tags: option<tagMap>,
  resourceTags: option<resourceTagMap>,
  dateUpdated: option<dateTime>,
  dateCreated: option<dateTime>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type imageVersionList = array<imageVersion>
type imageRecipeSummary = {
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  parentImage: option<nonEmptyString>,
  owner: option<nonEmptyString>,
  platform: option<platform>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type imagePipeline = {
  tags: option<tagMap>,
  dateNextRun: option<dateTime>,
  dateLastRun: option<dateTime>,
  dateUpdated: option<dateTime>,
  dateCreated: option<dateTime>,
  status: option<pipelineStatus>,
  schedule: option<schedule>,
  imageTestsConfiguration: option<imageTestsConfiguration>,
  distributionConfigurationArn: option<arn>,
  infrastructureConfigurationArn: option<arn>,
  containerRecipeArn: option<arn>,
  imageRecipeArn: option<arn>,
  enhancedImageMetadataEnabled: option<nullableBoolean>,
  platform: option<platform>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type imagePackageList = array<imagePackage>
type filter = {
  values: option<filterValues>,
  name: option<filterName>,
}
type distributionConfigurationSummary = {
  regions: option<regionList>,
  tags: option<tagMap>,
  dateUpdated: option<dateTime>,
  dateCreated: option<dateTime>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type containerRecipeSummary = {
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  parentImage: option<nonEmptyString>,
  owner: option<nonEmptyString>,
  platform: option<platform>,
  name: option<resourceName>,
  containerType: option<containerType>,
  arn: option<imageBuilderArn>,
}
type containerDistributionConfiguration = {
  targetRepository: targetContainerRepository,
  containerTags: option<stringList>,
  description: option<nonEmptyString>,
}
type container = {
  imageUris: option<stringList>,
  region: option<nonEmptyString>,
}
type componentVersion = {
  dateCreated: option<dateTime>,
  owner: option<nonEmptyString>,
  @as("type") type_: option<componentType>,
  supportedOsVersions: option<osVersionList>,
  platform: option<platform>,
  description: option<nonEmptyString>,
  version: option<versionNumber>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type componentSummary = {
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  changeDescription: option<nonEmptyString>,
  description: option<nonEmptyString>,
  owner: option<nonEmptyString>,
  @as("type") type_: option<componentType>,
  supportedOsVersions: option<osVersionList>,
  platform: option<platform>,
  version: option<versionNumber>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type componentConfigurationList = array<componentConfiguration>
type component = {
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  encrypted: option<nullableBoolean>,
  kmsKeyId: option<nonEmptyString>,
  data: option<componentData>,
  owner: option<nonEmptyString>,
  supportedOsVersions: option<osVersionList>,
  platform: option<platform>,
  @as("type") type_: option<componentType>,
  changeDescription: option<nonEmptyString>,
  description: option<nonEmptyString>,
  version: option<versionNumber>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type ami = {
  accountId: option<nonEmptyString>,
  state: option<imageState>,
  description: option<nonEmptyString>,
  name: option<nonEmptyString>,
  image: option<nonEmptyString>,
  region: option<nonEmptyString>,
}
type instanceBlockDeviceMappings = array<instanceBlockDeviceMapping>
type infrastructureConfigurationSummaryList = array<infrastructureConfigurationSummary>
type infrastructureConfiguration = {
  tags: option<tagMap>,
  resourceTags: option<resourceTagMap>,
  dateUpdated: option<dateTime>,
  dateCreated: option<dateTime>,
  snsTopicArn: option<nonEmptyString>,
  terminateInstanceOnFailure: option<nullableBoolean>,
  keyPair: option<nonEmptyString>,
  logging: option<logging>,
  subnetId: option<nonEmptyString>,
  securityGroupIds: option<securityGroupIds>,
  instanceProfileName: option<instanceProfileNameType>,
  instanceTypes: option<instanceTypeList>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type imageRecipeSummaryList = array<imageRecipeSummary>
type imagePipelineList = array<imagePipeline>
type filterList = array<filter>
type distributionConfigurationSummaryList = array<distributionConfigurationSummary>
type containerRecipeSummaryList = array<containerRecipeSummary>
type containerList = array<container>
type componentVersionList = array<componentVersion>
type componentSummaryList = array<componentSummary>
type amiList = array<ami>
type amiDistributionConfiguration = {
  launchPermission: option<launchPermissionConfiguration>,
  kmsKeyId: option<nonEmptyString>,
  amiTags: option<tagMap>,
  targetAccountIds: option<accountList>,
  description: option<nonEmptyString>,
  name: option<amiNameString>,
}
type outputResources = {
  containers: option<containerList>,
  amis: option<amiList>,
}
type instanceConfiguration = {
  blockDeviceMappings: option<instanceBlockDeviceMappings>,
  image: option<nonEmptyString>,
}
type imageRecipe = {
  workingDirectory: option<nonEmptyString>,
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  blockDeviceMappings: option<instanceBlockDeviceMappings>,
  parentImage: option<nonEmptyString>,
  components: option<componentConfigurationList>,
  version: option<versionNumber>,
  owner: option<nonEmptyString>,
  platform: option<platform>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  @as("type") type_: option<imageType>,
  arn: option<imageBuilderArn>,
}
type distribution = {
  launchTemplateConfigurations: option<launchTemplateConfigurationList>,
  licenseConfigurationArns: option<licenseConfigurationArnList>,
  containerDistributionConfiguration: option<containerDistributionConfiguration>,
  amiDistributionConfiguration: option<amiDistributionConfiguration>,
  region: nonEmptyString,
}
type imageSummary = {
  tags: option<tagMap>,
  outputResources: option<outputResources>,
  dateCreated: option<dateTime>,
  owner: option<nonEmptyString>,
  state: option<imageState>,
  osVersion: option<osVersion>,
  platform: option<platform>,
  version: option<versionNumber>,
  @as("type") type_: option<imageType>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type distributionList = array<distribution>
type containerRecipe = {
  targetRepository: option<targetContainerRepository>,
  workingDirectory: option<nonEmptyString>,
  tags: option<tagMap>,
  dateCreated: option<dateTime>,
  parentImage: option<nonEmptyString>,
  encrypted: option<nullableBoolean>,
  kmsKeyId: option<nonEmptyString>,
  dockerfileTemplateData: option<dockerFileTemplate>,
  instanceConfiguration: option<instanceConfiguration>,
  components: option<componentConfigurationList>,
  version: option<versionNumber>,
  owner: option<nonEmptyString>,
  platform: option<platform>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  containerType: option<containerType>,
  arn: option<imageBuilderArn>,
}
type imageSummaryList = array<imageSummary>
type distributionConfiguration = {
  tags: option<tagMap>,
  dateUpdated: option<dateTime>,
  dateCreated: option<dateTime>,
  timeoutMinutes: distributionTimeoutMinutes,
  distributions: option<distributionList>,
  description: option<nonEmptyString>,
  name: option<resourceName>,
  arn: option<imageBuilderArn>,
}
type image = {
  tags: option<tagMap>,
  outputResources: option<outputResources>,
  dateCreated: option<dateTime>,
  imageTestsConfiguration: option<imageTestsConfiguration>,
  distributionConfiguration: option<distributionConfiguration>,
  infrastructureConfiguration: option<infrastructureConfiguration>,
  sourcePipelineArn: option<arn>,
  sourcePipelineName: option<resourceName>,
  containerRecipe: option<containerRecipe>,
  imageRecipe: option<imageRecipe>,
  state: option<imageState>,
  osVersion: option<osVersion>,
  enhancedImageMetadataEnabled: option<nullableBoolean>,
  platform: option<platform>,
  version: option<versionNumber>,
  name: option<resourceName>,
  @as("type") type_: option<imageType>,
  arn: option<imageBuilderArn>,
}

module StartImagePipelineExecution = {
  type t
  type request = {
    clientToken: clientToken,
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    imageBuildVersionArn: option<imageBuildVersionArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "StartImagePipelineExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImageRecipePolicy = {
  type t
  type request = {
    policy: resourcePolicyDocument,
    imageRecipeArn: imageRecipeArn,
  }
  type response = {
    imageRecipeArn: option<imageRecipeArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutImageRecipePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImagePolicy = {
  type t
  type request = {
    policy: resourcePolicyDocument,
    imageArn: imageBuildVersionArn,
  }
  type response = {
    imageArn: option<imageBuildVersionArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "PutImagePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutContainerRecipePolicy = {
  type t
  type request = {
    policy: resourcePolicyDocument,
    containerRecipeArn: containerRecipeArn,
  }
  type response = {
    containerRecipeArn: option<containerRecipeArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutContainerRecipePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutComponentPolicy = {
  type t
  type request = {
    policy: resourcePolicyDocument,
    componentArn: componentBuildVersionArn,
  }
  type response = {
    componentArn: option<componentBuildVersionArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutComponentPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImageRecipePolicy = {
  type t
  type request = {imageRecipeArn: imageRecipeArn}
  type response = {
    policy: option<resourcePolicyDocument>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetImageRecipePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImagePolicy = {
  type t
  type request = {imageArn: imageBuildVersionArn}
  type response = {
    policy: option<resourcePolicyDocument>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImagePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerRecipePolicy = {
  type t
  type request = {containerRecipeArn: containerRecipeArn}
  type response = {
    policy: option<resourcePolicyDocument>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetContainerRecipePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComponentPolicy = {
  type t
  type request = {componentArn: componentBuildVersionArn}
  type response = {
    policy: option<resourcePolicyDocument>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetComponentPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInfrastructureConfiguration = {
  type t
  type request = {infrastructureConfigurationArn: infrastructureConfigurationArn}
  type response = {
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteInfrastructureConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImageRecipe = {
  type t
  type request = {imageRecipeArn: imageRecipeArn}
  type response = {
    imageRecipeArn: option<imageRecipeArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteImageRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImagePipeline = {
  type t
  type request = {imagePipelineArn: imagePipelineArn}
  type response = {
    imagePipelineArn: option<imagePipelineArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteImagePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImage = {
  type t
  type request = {imageBuildVersionArn: imageBuildVersionArn}
  type response = {
    imageBuildVersionArn: option<imageBuildVersionArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "DeleteImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDistributionConfiguration = {
  type t
  type request = {distributionConfigurationArn: distributionConfigurationArn}
  type response = {
    distributionConfigurationArn: option<distributionConfigurationArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteDistributionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContainerRecipe = {
  type t
  type request = {containerRecipeArn: containerRecipeArn}
  type response = {
    containerRecipeArn: option<containerRecipeArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteContainerRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteComponent = {
  type t
  type request = {componentBuildVersionArn: componentBuildVersionArn}
  type response = {
    componentBuildVersionArn: option<componentBuildVersionArn>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "DeleteComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelImageCreation = {
  type t
  type request = {
    clientToken: clientToken,
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    imageBuildVersionArn: option<imageBuildVersionArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CancelImageCreationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateImagePipeline = {
  type t
  type request = {
    clientToken: clientToken,
    status: option<pipelineStatus>,
    schedule: option<schedule>,
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    imageTestsConfiguration: option<imageTestsConfiguration>,
    distributionConfigurationArn: option<distributionConfigurationArn>,
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    containerRecipeArn: option<containerRecipeArn>,
    imageRecipeArn: option<imageRecipeArn>,
    description: option<nonEmptyString>,
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    imagePipelineArn: option<imagePipelineArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateImagePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: imageBuilderArn,
  }
  type response = unit
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: imageBuilderArn,
  }
  type response = unit
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: imageBuilderArn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportComponent = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    kmsKeyId: option<nonEmptyString>,
    uri: option<uri>,
    data: option<nonEmptyString>,
    platform: platform,
    format: componentFormat,
    @as("type") type_: componentType,
    changeDescription: option<nonEmptyString>,
    description: option<nonEmptyString>,
    semanticVersion: versionNumber,
    name: resourceName,
  }
  type response = {
    componentBuildVersionArn: option<componentBuildVersionArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ImportComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImagePipeline = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    status: option<pipelineStatus>,
    schedule: option<schedule>,
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    imageTestsConfiguration: option<imageTestsConfiguration>,
    distributionConfigurationArn: option<distributionConfigurationArn>,
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    containerRecipeArn: option<containerRecipeArn>,
    imageRecipeArn: option<imageRecipeArn>,
    description: option<nonEmptyString>,
    name: resourceName,
  }
  type response = {
    imagePipelineArn: option<imagePipelineArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateImagePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImage = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    imageTestsConfiguration: option<imageTestsConfiguration>,
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    distributionConfigurationArn: option<distributionConfigurationArn>,
    containerRecipeArn: option<containerRecipeArn>,
    imageRecipeArn: option<imageRecipeArn>,
  }
  type response = {
    imageBuildVersionArn: option<imageBuildVersionArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "CreateImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComponent = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    kmsKeyId: option<nonEmptyString>,
    uri: option<uri>,
    data: option<inlineComponentData>,
    supportedOsVersions: option<osVersionList>,
    platform: platform,
    changeDescription: option<nonEmptyString>,
    description: option<nonEmptyString>,
    semanticVersion: versionNumber,
    name: resourceName,
  }
  type response = {
    componentBuildVersionArn: option<componentBuildVersionArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "CreateComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInfrastructureConfiguration = {
  type t
  type request = {
    resourceTags: option<resourceTagMap>,
    clientToken: clientToken,
    snsTopicArn: option<snsTopicArn>,
    terminateInstanceOnFailure: option<nullableBoolean>,
    keyPair: option<nonEmptyString>,
    logging: option<logging>,
    subnetId: option<nonEmptyString>,
    securityGroupIds: option<securityGroupIds>,
    instanceProfileName: instanceProfileNameType,
    instanceTypes: option<instanceTypeList>,
    description: option<nonEmptyString>,
    infrastructureConfigurationArn: infrastructureConfigurationArn,
  }
  type response = {
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateInfrastructureConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePackages = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    imagePackageList: option<imagePackageList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePackagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImagePipeline = {
  type t
  type request = {imagePipelineArn: imagePipelineArn}
  type response = {
    imagePipeline: option<imagePipeline>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetImagePipelineCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComponent = {
  type t
  type request = {componentBuildVersionArn: componentVersionArnOrBuildVersionArn}
  type response = {
    component: option<component>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetComponentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInfrastructureConfiguration = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    resourceTags: option<resourceTagMap>,
    snsTopicArn: option<snsTopicArn>,
    terminateInstanceOnFailure: option<nullableBoolean>,
    keyPair: option<nonEmptyString>,
    logging: option<logging>,
    subnetId: option<nonEmptyString>,
    securityGroupIds: option<securityGroupIds>,
    instanceProfileName: instanceProfileNameType,
    instanceTypes: option<instanceTypeList>,
    description: option<nonEmptyString>,
    name: resourceName,
  }
  type response = {
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateInfrastructureConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInfrastructureConfigurations = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    infrastructureConfigurationSummaryList: option<infrastructureConfigurationSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListInfrastructureConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImages = {
  type t
  type request = {
    includeDeprecated: option<nullableBoolean>,
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    byName: option<boolean_>,
    filters: option<filterList>,
    owner: option<ownership>,
  }
  type response = {
    nextToken: option<paginationToken>,
    imageVersionList: option<imageVersionList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ListImagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImageRecipes = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
    owner: option<ownership>,
  }
  type response = {
    nextToken: option<paginationToken>,
    imageRecipeSummaryList: option<imageRecipeSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImageRecipesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePipelines = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    imagePipelineList: option<imagePipelineList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePipelinesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionConfigurations = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
  }
  type response = {
    nextToken: option<paginationToken>,
    distributionConfigurationSummaryList: option<distributionConfigurationSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListDistributionConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContainerRecipes = {
  type t
  type request = {
    nextToken: option<nonEmptyString>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
    owner: option<ownership>,
  }
  type response = {
    nextToken: option<nonEmptyString>,
    containerRecipeSummaryList: option<containerRecipeSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListContainerRecipesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponents = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    byName: option<boolean_>,
    filters: option<filterList>,
    owner: option<ownership>,
  }
  type response = {
    nextToken: option<paginationToken>,
    componentVersionList: option<componentVersionList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ListComponentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponentBuildVersions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    componentVersionArn: componentVersionArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    componentSummaryList: option<componentSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListComponentBuildVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInfrastructureConfiguration = {
  type t
  type request = {infrastructureConfigurationArn: infrastructureConfigurationArn}
  type response = {
    infrastructureConfiguration: option<infrastructureConfiguration>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetInfrastructureConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImageRecipe = {
  type t
  type request = {
    clientToken: clientToken,
    workingDirectory: option<nonEmptyString>,
    tags: option<tagMap>,
    blockDeviceMappings: option<instanceBlockDeviceMappings>,
    parentImage: nonEmptyString,
    components: componentConfigurationList,
    semanticVersion: versionNumber,
    description: option<nonEmptyString>,
    name: resourceName,
  }
  type response = {
    imageRecipeArn: option<imageRecipeArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateImageRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImageRecipe = {
  type t
  type request = {imageRecipeArn: imageRecipeArn}
  type response = {
    imageRecipe: option<imageRecipe>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImageRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainerRecipe = {
  type t
  type request = {
    clientToken: clientToken,
    kmsKeyId: option<nonEmptyString>,
    targetRepository: targetContainerRepository,
    workingDirectory: option<nonEmptyString>,
    tags: option<tagMap>,
    parentImage: nonEmptyString,
    imageOsVersionOverride: option<nonEmptyString>,
    platformOverride: option<platform>,
    dockerfileTemplateUri: option<uri>,
    dockerfileTemplateData: option<inlineDockerFileTemplate>,
    instanceConfiguration: option<instanceConfiguration>,
    components: componentConfigurationList,
    semanticVersion: versionNumber,
    description: option<nonEmptyString>,
    name: resourceName,
    containerType: containerType,
  }
  type response = {
    containerRecipeArn: option<containerRecipeArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateContainerRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistributionConfiguration = {
  type t
  type request = {
    clientToken: clientToken,
    distributions: distributionList,
    description: option<nonEmptyString>,
    distributionConfigurationArn: distributionConfigurationArn,
  }
  type response = {
    distributionConfigurationArn: option<distributionConfigurationArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateDistributionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerRecipe = {
  type t
  type request = {containerRecipeArn: containerRecipeArn}
  type response = {
    containerRecipe: option<containerRecipe>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetContainerRecipeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistributionConfiguration = {
  type t
  type request = {
    clientToken: clientToken,
    tags: option<tagMap>,
    distributions: distributionList,
    description: option<nonEmptyString>,
    name: resourceName,
  }
  type response = {
    distributionConfigurationArn: option<distributionConfigurationArn>,
    clientToken: option<clientToken>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateDistributionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePipelineImages = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    imageSummaryList: option<imageSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePipelineImagesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImageBuildVersions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<restrictedInteger>,
    filters: option<filterList>,
    imageVersionArn: imageVersionArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    imageSummaryList: option<imageSummaryList>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImageBuildVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionConfiguration = {
  type t
  type request = {distributionConfigurationArn: distributionConfigurationArn}
  type response = {
    distributionConfiguration: option<distributionConfiguration>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetDistributionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImage = {
  type t
  type request = {imageBuildVersionArn: imageVersionArnOrBuildVersionArn}
  type response = {
    image: option<image>,
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
