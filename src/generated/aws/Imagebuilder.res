type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type versionNumber = string
type uri = string
type timezone = string
type tagValue = string
type tagKey = string
type snsTopicArn = string
type restrictedInteger = int;
type resourcePolicyDocument = string
type resourceName = string
type platform = [@as("Linux") #Linux | @as("Windows") #Windows]
type pipelineStatus = [@as("ENABLED") #ENABLED | @as("DISABLED") #DISABLED]
type pipelineExecutionStartCondition = [@as("EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE") #EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE | @as("EXPRESSION_MATCH_ONLY") #EXPRESSION_MATCH_ONLY]
type paginationToken = string
type ownership = [@as("Amazon") #Amazon | @as("Shared") #Shared | @as("Self") #Self]
type osVersion = string
type nullableBoolean = bool;
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
type imageTestsTimeoutMinutes = int;
type imageStatus = [@as("DELETED") #DELETED | @as("DEPRECATED") #DEPRECATED | @as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("AVAILABLE") #AVAILABLE | @as("INTEGRATING") #INTEGRATING | @as("DISTRIBUTING") #DISTRIBUTING | @as("TESTING") #TESTING | @as("BUILDING") #BUILDING | @as("CREATING") #CREATING | @as("PENDING") #PENDING]
type imageRecipeArn = string
type imagePipelineArn = string
type imageBuilderArn = string
type imageBuildVersionArn = string
type filterValue = string
type filterName = string
type errorMessage = string
type emptyString = string
type ebsVolumeType = [@as("st1") #st1 | @as("sc1") #sc1 | @as("gp3") #gp3 | @as("gp2") #gp2 | @as("io2") #io2 | @as("io1") #io1 | @as("standard") #standard]
type ebsVolumeSizeInteger = int;
type ebsIopsInteger = int;
type dockerFileTemplate = string
type distributionTimeoutMinutes = int;
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
type amazonawsBoolean = bool;
type arn = string
type amiNameString = string
type accountId = string
type targetContainerRepository = {
@as("repositoryName") repositoryName: option<nonEmptyString>,
@as("service") service: option<containerRepositoryService>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
type schedule = {
@as("pipelineExecutionStartCondition") pipelineExecutionStartCondition: pipelineExecutionStartCondition,
@as("timezone") timezone: timezone,
@as("scheduleExpression") scheduleExpression: nonEmptyString
}
type s3Logs = {
@as("s3KeyPrefix") s3KeyPrefix: nonEmptyString,
@as("s3BucketName") s3BucketName: nonEmptyString
}
type resourceTagMap = Js.Dict.t< tagValue>
type regionList = array<nonEmptyString>
type osVersionList = array<osVersion>
type licenseConfigurationArnList = array<licenseConfigurationArn>
type launchTemplateConfiguration = {
@as("setDefaultVersion") setDefaultVersion: amazonawsBoolean,
@as("accountId") accountId: accountId,
@as("launchTemplateId") launchTemplateId: option<launchTemplateId>
}
type instanceTypeList = array<instanceType>
type imageVersion = {
@as("dateCreated") dateCreated: dateTime,
@as("owner") owner: nonEmptyString,
@as("osVersion") osVersion: osVersion,
@as("platform") platform: platform,
@as("version") version: versionNumber,
@as("type") type_: imageType,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type imageTestsConfiguration = {
@as("timeoutMinutes") timeoutMinutes: imageTestsTimeoutMinutes,
@as("imageTestsEnabled") imageTestsEnabled: nullableBoolean
}
type imageState = {
@as("reason") reason: nonEmptyString,
@as("status") status: imageStatus
}
type imagePackage = {
@as("packageVersion") packageVersion: nonEmptyString,
@as("packageName") packageName: nonEmptyString
}
type filterValues = array<filterValue>
type ebsInstanceBlockDeviceSpecification = {
@as("volumeType") volumeType: ebsVolumeType,
@as("volumeSize") volumeSize: ebsVolumeSizeInteger,
@as("snapshotId") snapshotId: nonEmptyString,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("iops") iops: ebsIopsInteger,
@as("deleteOnTermination") deleteOnTermination: nullableBoolean,
@as("encrypted") encrypted: nullableBoolean
}
type componentConfiguration = {
@as("componentArn") componentArn: option<componentVersionArnOrBuildVersionArn>
}
type accountList = array<accountId>
type logging = {
@as("s3Logs") s3Logs: s3Logs
}
type launchTemplateConfigurationList = array<launchTemplateConfiguration>
type launchPermissionConfiguration = {
@as("userGroups") userGroups: stringList,
@as("userIds") userIds: accountList
}
type instanceBlockDeviceMapping = {
@as("noDevice") noDevice: emptyString,
@as("virtualName") virtualName: nonEmptyString,
@as("ebs") ebs: ebsInstanceBlockDeviceSpecification,
@as("deviceName") deviceName: nonEmptyString
}
type infrastructureConfigurationSummary = {
@as("instanceProfileName") instanceProfileName: instanceProfileNameType,
@as("instanceTypes") instanceTypes: instanceTypeList,
@as("tags") tags: tagMap,
@as("resourceTags") resourceTags: resourceTagMap,
@as("dateUpdated") dateUpdated: dateTime,
@as("dateCreated") dateCreated: dateTime,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type imageVersionList = array<imageVersion>
type imageRecipeSummary = {
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("parentImage") parentImage: nonEmptyString,
@as("owner") owner: nonEmptyString,
@as("platform") platform: platform,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type imagePipeline = {
@as("tags") tags: tagMap,
@as("dateNextRun") dateNextRun: dateTime,
@as("dateLastRun") dateLastRun: dateTime,
@as("dateUpdated") dateUpdated: dateTime,
@as("dateCreated") dateCreated: dateTime,
@as("status") status: pipelineStatus,
@as("schedule") schedule: schedule,
@as("imageTestsConfiguration") imageTestsConfiguration: imageTestsConfiguration,
@as("distributionConfigurationArn") distributionConfigurationArn: arn,
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: arn,
@as("containerRecipeArn") containerRecipeArn: arn,
@as("imageRecipeArn") imageRecipeArn: arn,
@as("enhancedImageMetadataEnabled") enhancedImageMetadataEnabled: nullableBoolean,
@as("platform") platform: platform,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type imagePackageList = array<imagePackage>
type filter = {
@as("values") values: filterValues,
@as("name") name: filterName
}
type distributionConfigurationSummary = {
@as("regions") regions: regionList,
@as("tags") tags: tagMap,
@as("dateUpdated") dateUpdated: dateTime,
@as("dateCreated") dateCreated: dateTime,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type containerRecipeSummary = {
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("parentImage") parentImage: nonEmptyString,
@as("owner") owner: nonEmptyString,
@as("platform") platform: platform,
@as("name") name: resourceName,
@as("containerType") containerType: containerType,
@as("arn") arn: imageBuilderArn
}
type containerDistributionConfiguration = {
@as("targetRepository") targetRepository: option<targetContainerRepository>,
@as("containerTags") containerTags: stringList,
@as("description") description: nonEmptyString
}
type container = {
@as("imageUris") imageUris: stringList,
@as("region") region: nonEmptyString
}
type componentVersion = {
@as("dateCreated") dateCreated: dateTime,
@as("owner") owner: nonEmptyString,
@as("type") type_: componentType,
@as("supportedOsVersions") supportedOsVersions: osVersionList,
@as("platform") platform: platform,
@as("description") description: nonEmptyString,
@as("version") version: versionNumber,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type componentSummary = {
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("changeDescription") changeDescription: nonEmptyString,
@as("description") description: nonEmptyString,
@as("owner") owner: nonEmptyString,
@as("type") type_: componentType,
@as("supportedOsVersions") supportedOsVersions: osVersionList,
@as("platform") platform: platform,
@as("version") version: versionNumber,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type componentConfigurationList = array<componentConfiguration>
type component = {
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("encrypted") encrypted: nullableBoolean,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("data") data: componentData,
@as("owner") owner: nonEmptyString,
@as("supportedOsVersions") supportedOsVersions: osVersionList,
@as("platform") platform: platform,
@as("type") type_: componentType,
@as("changeDescription") changeDescription: nonEmptyString,
@as("description") description: nonEmptyString,
@as("version") version: versionNumber,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type ami = {
@as("accountId") accountId: nonEmptyString,
@as("state") state: imageState,
@as("description") description: nonEmptyString,
@as("name") name: nonEmptyString,
@as("image") image: nonEmptyString,
@as("region") region: nonEmptyString
}
type instanceBlockDeviceMappings = array<instanceBlockDeviceMapping>
type infrastructureConfigurationSummaryList = array<infrastructureConfigurationSummary>
type infrastructureConfiguration = {
@as("tags") tags: tagMap,
@as("resourceTags") resourceTags: resourceTagMap,
@as("dateUpdated") dateUpdated: dateTime,
@as("dateCreated") dateCreated: dateTime,
@as("snsTopicArn") snsTopicArn: nonEmptyString,
@as("terminateInstanceOnFailure") terminateInstanceOnFailure: nullableBoolean,
@as("keyPair") keyPair: nonEmptyString,
@as("logging") logging: logging,
@as("subnetId") subnetId: nonEmptyString,
@as("securityGroupIds") securityGroupIds: securityGroupIds,
@as("instanceProfileName") instanceProfileName: instanceProfileNameType,
@as("instanceTypes") instanceTypes: instanceTypeList,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
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
@as("launchPermission") launchPermission: launchPermissionConfiguration,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("amiTags") amiTags: tagMap,
@as("targetAccountIds") targetAccountIds: accountList,
@as("description") description: nonEmptyString,
@as("name") name: amiNameString
}
type outputResources = {
@as("containers") containers: containerList,
@as("amis") amis: amiList
}
type instanceConfiguration = {
@as("blockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappings,
@as("image") image: nonEmptyString
}
type imageRecipe = {
@as("workingDirectory") workingDirectory: nonEmptyString,
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("blockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappings,
@as("parentImage") parentImage: nonEmptyString,
@as("components") components: componentConfigurationList,
@as("version") version: versionNumber,
@as("owner") owner: nonEmptyString,
@as("platform") platform: platform,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("type") type_: imageType,
@as("arn") arn: imageBuilderArn
}
type distribution = {
@as("launchTemplateConfigurations") launchTemplateConfigurations: launchTemplateConfigurationList,
@as("licenseConfigurationArns") licenseConfigurationArns: licenseConfigurationArnList,
@as("containerDistributionConfiguration") containerDistributionConfiguration: containerDistributionConfiguration,
@as("amiDistributionConfiguration") amiDistributionConfiguration: amiDistributionConfiguration,
@as("region") region: option<nonEmptyString>
}
type imageSummary = {
@as("tags") tags: tagMap,
@as("outputResources") outputResources: outputResources,
@as("dateCreated") dateCreated: dateTime,
@as("owner") owner: nonEmptyString,
@as("state") state: imageState,
@as("osVersion") osVersion: osVersion,
@as("platform") platform: platform,
@as("version") version: versionNumber,
@as("type") type_: imageType,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type distributionList = array<distribution>
type containerRecipe = {
@as("targetRepository") targetRepository: targetContainerRepository,
@as("workingDirectory") workingDirectory: nonEmptyString,
@as("tags") tags: tagMap,
@as("dateCreated") dateCreated: dateTime,
@as("parentImage") parentImage: nonEmptyString,
@as("encrypted") encrypted: nullableBoolean,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("dockerfileTemplateData") dockerfileTemplateData: dockerFileTemplate,
@as("instanceConfiguration") instanceConfiguration: instanceConfiguration,
@as("components") components: componentConfigurationList,
@as("version") version: versionNumber,
@as("owner") owner: nonEmptyString,
@as("platform") platform: platform,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("containerType") containerType: containerType,
@as("arn") arn: imageBuilderArn
}
type imageSummaryList = array<imageSummary>
type distributionConfiguration = {
@as("tags") tags: tagMap,
@as("dateUpdated") dateUpdated: dateTime,
@as("dateCreated") dateCreated: dateTime,
@as("timeoutMinutes") timeoutMinutes: option<distributionTimeoutMinutes>,
@as("distributions") distributions: distributionList,
@as("description") description: nonEmptyString,
@as("name") name: resourceName,
@as("arn") arn: imageBuilderArn
}
type image = {
@as("tags") tags: tagMap,
@as("outputResources") outputResources: outputResources,
@as("dateCreated") dateCreated: dateTime,
@as("imageTestsConfiguration") imageTestsConfiguration: imageTestsConfiguration,
@as("distributionConfiguration") distributionConfiguration: distributionConfiguration,
@as("infrastructureConfiguration") infrastructureConfiguration: infrastructureConfiguration,
@as("sourcePipelineArn") sourcePipelineArn: arn,
@as("sourcePipelineName") sourcePipelineName: resourceName,
@as("containerRecipe") containerRecipe: containerRecipe,
@as("imageRecipe") imageRecipe: imageRecipe,
@as("state") state: imageState,
@as("osVersion") osVersion: osVersion,
@as("enhancedImageMetadataEnabled") enhancedImageMetadataEnabled: nullableBoolean,
@as("platform") platform: platform,
@as("version") version: versionNumber,
@as("name") name: resourceName,
@as("type") type_: imageType,
@as("arn") arn: imageBuilderArn
}
type clientType;
@module("@aws-sdk/client-imagebuilder") @new external createClient: unit => clientType = "ImagebuilderClient";
module StartImagePipelineExecution = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("imagePipelineArn") imagePipelineArn: option<imagePipelineArn>
}
  type response = {
@as("imageBuildVersionArn") imageBuildVersionArn: imageBuildVersionArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "StartImagePipelineExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutImageRecipePolicy = {
  type t;
  type request = {
@as("policy") policy: option<resourcePolicyDocument>,
@as("imageRecipeArn") imageRecipeArn: option<imageRecipeArn>
}
  type response = {
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "PutImageRecipePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutImagePolicy = {
  type t;
  type request = {
@as("policy") policy: option<resourcePolicyDocument>,
@as("imageArn") imageArn: option<imageBuildVersionArn>
}
  type response = {
@as("imageArn") imageArn: imageBuildVersionArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "PutImagePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutContainerRecipePolicy = {
  type t;
  type request = {
@as("policy") policy: option<resourcePolicyDocument>,
@as("containerRecipeArn") containerRecipeArn: option<containerRecipeArn>
}
  type response = {
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "PutContainerRecipePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutComponentPolicy = {
  type t;
  type request = {
@as("policy") policy: option<resourcePolicyDocument>,
@as("componentArn") componentArn: option<componentBuildVersionArn>
}
  type response = {
@as("componentArn") componentArn: componentBuildVersionArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "PutComponentPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImageRecipePolicy = {
  type t;
  type request = {
@as("imageRecipeArn") imageRecipeArn: option<imageRecipeArn>
}
  type response = {
@as("policy") policy: resourcePolicyDocument,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetImageRecipePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImagePolicy = {
  type t;
  type request = {
@as("imageArn") imageArn: option<imageBuildVersionArn>
}
  type response = {
@as("policy") policy: resourcePolicyDocument,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetImagePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerRecipePolicy = {
  type t;
  type request = {
@as("containerRecipeArn") containerRecipeArn: option<containerRecipeArn>
}
  type response = {
@as("policy") policy: resourcePolicyDocument,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetContainerRecipePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComponentPolicy = {
  type t;
  type request = {
@as("componentArn") componentArn: option<componentBuildVersionArn>
}
  type response = {
@as("policy") policy: resourcePolicyDocument,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetComponentPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInfrastructureConfiguration = {
  type t;
  type request = {
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>
}
  type response = {
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: infrastructureConfigurationArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteInfrastructureConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImageRecipe = {
  type t;
  type request = {
@as("imageRecipeArn") imageRecipeArn: option<imageRecipeArn>
}
  type response = {
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteImageRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImagePipeline = {
  type t;
  type request = {
@as("imagePipelineArn") imagePipelineArn: option<imagePipelineArn>
}
  type response = {
@as("imagePipelineArn") imagePipelineArn: imagePipelineArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteImagePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteImage = {
  type t;
  type request = {
@as("imageBuildVersionArn") imageBuildVersionArn: option<imageBuildVersionArn>
}
  type response = {
@as("imageBuildVersionArn") imageBuildVersionArn: imageBuildVersionArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDistributionConfiguration = {
  type t;
  type request = {
@as("distributionConfigurationArn") distributionConfigurationArn: option<distributionConfigurationArn>
}
  type response = {
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteDistributionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerRecipe = {
  type t;
  type request = {
@as("containerRecipeArn") containerRecipeArn: option<containerRecipeArn>
}
  type response = {
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteContainerRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteComponent = {
  type t;
  type request = {
@as("componentBuildVersionArn") componentBuildVersionArn: option<componentBuildVersionArn>
}
  type response = {
@as("componentBuildVersionArn") componentBuildVersionArn: componentBuildVersionArn,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "DeleteComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelImageCreation = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("imageBuildVersionArn") imageBuildVersionArn: option<imageBuildVersionArn>
}
  type response = {
@as("imageBuildVersionArn") imageBuildVersionArn: imageBuildVersionArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CancelImageCreationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateImagePipeline = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("status") status: pipelineStatus,
@as("schedule") schedule: schedule,
@as("enhancedImageMetadataEnabled") enhancedImageMetadataEnabled: nullableBoolean,
@as("imageTestsConfiguration") imageTestsConfiguration: imageTestsConfiguration,
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn,
@as("description") description: nonEmptyString,
@as("imagePipelineArn") imagePipelineArn: option<imagePipelineArn>
}
  type response = {
@as("imagePipelineArn") imagePipelineArn: imagePipelineArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "UpdateImagePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<imageBuilderArn>
}
  type response = unit
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<imageBuilderArn>
}
  type response = unit
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<imageBuilderArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportComponent = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("uri") uri: uri,
@as("data") data: nonEmptyString,
@as("platform") platform: option<platform>,
@as("format") format: option<componentFormat>,
@as("type") type_: option<componentType>,
@as("changeDescription") changeDescription: nonEmptyString,
@as("description") description: nonEmptyString,
@as("semanticVersion") semanticVersion: option<versionNumber>,
@as("name") name: option<resourceName>
}
  type response = {
@as("componentBuildVersionArn") componentBuildVersionArn: componentBuildVersionArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ImportComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImagePipeline = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("status") status: pipelineStatus,
@as("schedule") schedule: schedule,
@as("enhancedImageMetadataEnabled") enhancedImageMetadataEnabled: nullableBoolean,
@as("imageTestsConfiguration") imageTestsConfiguration: imageTestsConfiguration,
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn,
@as("description") description: nonEmptyString,
@as("name") name: option<resourceName>
}
  type response = {
@as("imagePipelineArn") imagePipelineArn: imagePipelineArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateImagePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImage = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("enhancedImageMetadataEnabled") enhancedImageMetadataEnabled: nullableBoolean,
@as("imageTestsConfiguration") imageTestsConfiguration: imageTestsConfiguration,
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn
}
  type response = {
@as("imageBuildVersionArn") imageBuildVersionArn: imageBuildVersionArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComponent = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("uri") uri: uri,
@as("data") data: inlineComponentData,
@as("supportedOsVersions") supportedOsVersions: osVersionList,
@as("platform") platform: option<platform>,
@as("changeDescription") changeDescription: nonEmptyString,
@as("description") description: nonEmptyString,
@as("semanticVersion") semanticVersion: option<versionNumber>,
@as("name") name: option<resourceName>
}
  type response = {
@as("componentBuildVersionArn") componentBuildVersionArn: componentBuildVersionArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInfrastructureConfiguration = {
  type t;
  type request = {
@as("resourceTags") resourceTags: resourceTagMap,
@as("clientToken") clientToken: option<clientToken>,
@as("snsTopicArn") snsTopicArn: snsTopicArn,
@as("terminateInstanceOnFailure") terminateInstanceOnFailure: nullableBoolean,
@as("keyPair") keyPair: nonEmptyString,
@as("logging") logging: logging,
@as("subnetId") subnetId: nonEmptyString,
@as("securityGroupIds") securityGroupIds: securityGroupIds,
@as("instanceProfileName") instanceProfileName: option<instanceProfileNameType>,
@as("instanceTypes") instanceTypes: instanceTypeList,
@as("description") description: nonEmptyString,
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>
}
  type response = {
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: infrastructureConfigurationArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "UpdateInfrastructureConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImagePackages = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("imageBuildVersionArn") imageBuildVersionArn: option<imageBuildVersionArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imagePackageList") imagePackageList: imagePackageList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImagePackagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImagePipeline = {
  type t;
  type request = {
@as("imagePipelineArn") imagePipelineArn: option<imagePipelineArn>
}
  type response = {
@as("imagePipeline") imagePipeline: imagePipeline,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetImagePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComponent = {
  type t;
  type request = {
@as("componentBuildVersionArn") componentBuildVersionArn: option<componentVersionArnOrBuildVersionArn>
}
  type response = {
@as("component") component: component,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetComponentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInfrastructureConfiguration = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("resourceTags") resourceTags: resourceTagMap,
@as("snsTopicArn") snsTopicArn: snsTopicArn,
@as("terminateInstanceOnFailure") terminateInstanceOnFailure: nullableBoolean,
@as("keyPair") keyPair: nonEmptyString,
@as("logging") logging: logging,
@as("subnetId") subnetId: nonEmptyString,
@as("securityGroupIds") securityGroupIds: securityGroupIds,
@as("instanceProfileName") instanceProfileName: option<instanceProfileNameType>,
@as("instanceTypes") instanceTypes: instanceTypeList,
@as("description") description: nonEmptyString,
@as("name") name: option<resourceName>
}
  type response = {
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: infrastructureConfigurationArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateInfrastructureConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInfrastructureConfigurations = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("infrastructureConfigurationSummaryList") infrastructureConfigurationSummaryList: infrastructureConfigurationSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListInfrastructureConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImages = {
  type t;
  type request = {
@as("includeDeprecated") includeDeprecated: nullableBoolean,
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("byName") byName: amazonawsBoolean,
@as("filters") filters: filterList,
@as("owner") owner: ownership
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imageVersionList") imageVersionList: imageVersionList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImageRecipes = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList,
@as("owner") owner: ownership
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imageRecipeSummaryList") imageRecipeSummaryList: imageRecipeSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImageRecipesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImagePipelines = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imagePipelineList") imagePipelineList: imagePipelineList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImagePipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionConfigurations = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("distributionConfigurationSummaryList") distributionConfigurationSummaryList: distributionConfigurationSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListDistributionConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContainerRecipes = {
  type t;
  type request = {
@as("nextToken") nextToken: nonEmptyString,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList,
@as("owner") owner: ownership
}
  type response = {
@as("nextToken") nextToken: nonEmptyString,
@as("containerRecipeSummaryList") containerRecipeSummaryList: containerRecipeSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListContainerRecipesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComponents = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("byName") byName: amazonawsBoolean,
@as("filters") filters: filterList,
@as("owner") owner: ownership
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("componentVersionList") componentVersionList: componentVersionList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListComponentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListComponentBuildVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("componentVersionArn") componentVersionArn: option<componentVersionArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("componentSummaryList") componentSummaryList: componentSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListComponentBuildVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInfrastructureConfiguration = {
  type t;
  type request = {
@as("infrastructureConfigurationArn") infrastructureConfigurationArn: option<infrastructureConfigurationArn>
}
  type response = {
@as("infrastructureConfiguration") infrastructureConfiguration: infrastructureConfiguration,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetInfrastructureConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateImageRecipe = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("workingDirectory") workingDirectory: nonEmptyString,
@as("tags") tags: tagMap,
@as("blockDeviceMappings") blockDeviceMappings: instanceBlockDeviceMappings,
@as("parentImage") parentImage: option<nonEmptyString>,
@as("components") components: option<componentConfigurationList>,
@as("semanticVersion") semanticVersion: option<versionNumber>,
@as("description") description: nonEmptyString,
@as("name") name: option<resourceName>
}
  type response = {
@as("imageRecipeArn") imageRecipeArn: imageRecipeArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateImageRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImageRecipe = {
  type t;
  type request = {
@as("imageRecipeArn") imageRecipeArn: option<imageRecipeArn>
}
  type response = {
@as("imageRecipe") imageRecipe: imageRecipe,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetImageRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContainerRecipe = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("kmsKeyId") kmsKeyId: nonEmptyString,
@as("targetRepository") targetRepository: option<targetContainerRepository>,
@as("workingDirectory") workingDirectory: nonEmptyString,
@as("tags") tags: tagMap,
@as("parentImage") parentImage: option<nonEmptyString>,
@as("imageOsVersionOverride") imageOsVersionOverride: nonEmptyString,
@as("platformOverride") platformOverride: platform,
@as("dockerfileTemplateUri") dockerfileTemplateUri: uri,
@as("dockerfileTemplateData") dockerfileTemplateData: inlineDockerFileTemplate,
@as("instanceConfiguration") instanceConfiguration: instanceConfiguration,
@as("components") components: option<componentConfigurationList>,
@as("semanticVersion") semanticVersion: option<versionNumber>,
@as("description") description: nonEmptyString,
@as("name") name: option<resourceName>,
@as("containerType") containerType: option<containerType>
}
  type response = {
@as("containerRecipeArn") containerRecipeArn: containerRecipeArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateContainerRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDistributionConfiguration = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("distributions") distributions: option<distributionList>,
@as("description") description: nonEmptyString,
@as("distributionConfigurationArn") distributionConfigurationArn: option<distributionConfigurationArn>
}
  type response = {
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "UpdateDistributionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerRecipe = {
  type t;
  type request = {
@as("containerRecipeArn") containerRecipeArn: option<containerRecipeArn>
}
  type response = {
@as("containerRecipe") containerRecipe: containerRecipe,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetContainerRecipeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDistributionConfiguration = {
  type t;
  type request = {
@as("clientToken") clientToken: option<clientToken>,
@as("tags") tags: tagMap,
@as("distributions") distributions: option<distributionList>,
@as("description") description: nonEmptyString,
@as("name") name: option<resourceName>
}
  type response = {
@as("distributionConfigurationArn") distributionConfigurationArn: distributionConfigurationArn,
@as("clientToken") clientToken: clientToken,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "CreateDistributionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImagePipelineImages = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList,
@as("imagePipelineArn") imagePipelineArn: option<imagePipelineArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imageSummaryList") imageSummaryList: imageSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImagePipelineImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListImageBuildVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: restrictedInteger,
@as("filters") filters: filterList,
@as("imageVersionArn") imageVersionArn: option<imageVersionArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("imageSummaryList") imageSummaryList: imageSummaryList,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "ListImageBuildVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributionConfiguration = {
  type t;
  type request = {
@as("distributionConfigurationArn") distributionConfigurationArn: option<distributionConfigurationArn>
}
  type response = {
@as("distributionConfiguration") distributionConfiguration: distributionConfiguration,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetDistributionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetImage = {
  type t;
  type request = {
@as("imageBuildVersionArn") imageBuildVersionArn: option<imageVersionArnOrBuildVersionArn>
}
  type response = {
@as("image") image: image,
@as("requestId") requestId: nonEmptyString
}
  @module("@aws-sdk/client-imagebuilder") @new external new_: (request) => t = "GetImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
