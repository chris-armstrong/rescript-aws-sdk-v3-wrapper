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
@ocaml.doc("<p>The container repository where the output container image is stored.</p>")
type targetContainerRepository = {
  @ocaml.doc(
    "<p>The name of the container repository where the output container image is stored. This name is prefixed by the repository location.</p>"
  )
  repositoryName: nonEmptyString,
  @ocaml.doc("<p>Specifies the service in which this image was registered.</p>")
  service: containerRepositoryService,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
@ocaml.doc(
  "<p>A schedule configures how often and when a pipeline will automatically create a new image.</p>"
)
type schedule = {
  @ocaml.doc("<p>The condition configures when the pipeline should trigger a new image build. When the
        <code>pipelineExecutionStartCondition</code> is set to
        <code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code>, and you use semantic version
      filters on the source image or components in your image recipe, EC2 Image Builder will build a
      new image only when there are new versions of the image or components in your recipe that
      match the semantic version filter. When it is set to <code>EXPRESSION_MATCH_ONLY</code>, it
      will build a new image every time the CRON expression matches the current time. For semantic
      version syntax, see <a href=\"https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html\">CreateComponent</a> in the <i> EC2 Image Builder API
      Reference</i>.</p>")
  pipelineExecutionStartCondition: option<pipelineExecutionStartCondition>,
  @ocaml.doc("<p>The timezone that applies to the scheduling expression. For example, \"Etc/UTC\", 
      \"America/Los_Angeles\" in the <a href=\"https://www.joda.org/joda-time/timezones.html\">IANA 
        timezone format</a>. If not specified this defaults to UTC.</p>")
  timezone: option<timezone>,
  @ocaml.doc("<p>The cron expression determines how often EC2 Image Builder evaluates your
        <code>pipelineExecutionStartCondition</code>.</p>
         <p>For information on how to format a cron expression in Image Builder, see <a href=\"https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html\">Use cron
        expressions in EC2 Image Builder</a>.</p>")
  scheduleExpression: option<nonEmptyString>,
}
@ocaml.doc("<p>Amazon S3 logging configuration.</p>")
type s3Logs = {
  @ocaml.doc("<p>The Amazon S3 path in which to store the logs.</p>")
  s3KeyPrefix: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon S3 bucket in which to store the logs.</p>")
  s3BucketName: option<nonEmptyString>,
}
type resourceTagMap = Js.Dict.t<tagValue>
type regionList = array<nonEmptyString>
type osVersionList = array<osVersion>
type licenseConfigurationArnList = array<licenseConfigurationArn>
@ocaml.doc("<p>Identifies an EC2 launch template to use for a specific account.</p>")
type launchTemplateConfiguration = {
  @ocaml.doc(
    "<p>Set the specified EC2 launch template as the default launch template for the specified account.</p>"
  )
  setDefaultVersion: option<boolean_>,
  @ocaml.doc("<p>The account ID that this configuration applies to.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>Identifies the EC2 launch template to use.</p>")
  launchTemplateId: launchTemplateId,
}
type instanceTypeList = array<instanceType>
@ocaml.doc("<p>An image semantic version.</p>")
type imageVersion = {
  @ocaml.doc("<p>The date at which this image semantic version was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The owner of the image semantic version.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or
      Microsoft Windows Server 2019.</p>")
  osVersion: option<osVersion>,
  @ocaml.doc("<p>The platform of the image semantic version.</p>") platform: option<platform>,
  @ocaml.doc("<p>The semantic version of the image semantic version.</p>")
  version: option<versionNumber>,
  @ocaml.doc("<p>Specifies whether this is an AMI or container image.</p>") @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The name of the image semantic version.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image semantic version.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>Image tests configuration.</p>")
type imageTestsConfiguration = {
  @ocaml.doc("<p>The maximum time in minutes that tests are permitted to run.</p>")
  timeoutMinutes: option<imageTestsTimeoutMinutes>,
  @ocaml.doc("<p>Defines if tests should be executed when building this image.</p>")
  imageTestsEnabled: option<nullableBoolean>,
}
@ocaml.doc("<p> Image state shows the image status and the reason for that status.</p>")
type imageState = {
  @ocaml.doc("<p>The reason for the image's status.</p>") reason: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the image.</p>") status: option<imageStatus>,
}
@ocaml.doc("<p>Represents a package installed on an Image Builder image.</p>")
type imagePackage = {
  @ocaml.doc(
    "<p>The version of the package as reported to the operating system package manager.</p>"
  )
  packageVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the package as reported to the operating system package manager.</p>")
  packageName: option<nonEmptyString>,
}
type filterValues = array<filterValue>
@ocaml.doc("<p>Amazon EBS-specific block device mapping specifications.</p>")
type ebsInstanceBlockDeviceSpecification = {
  @ocaml.doc("<p>Use to override the device's volume type.</p>") volumeType: option<ebsVolumeType>,
  @ocaml.doc("<p>Use to override the device's volume size.</p>")
  volumeSize: option<ebsVolumeSizeInteger>,
  @ocaml.doc("<p>The snapshot that defines the device contents.</p>")
  snapshotId: option<nonEmptyString>,
  @ocaml.doc("<p>Use to configure the KMS key to use when encrypting the device.</p>")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Use to configure device IOPS.</p>") iops: option<ebsIopsInteger>,
  @ocaml.doc("<p>Use to configure delete on termination of the associated device.</p>")
  deleteOnTermination: option<nullableBoolean>,
  @ocaml.doc("<p>Use to configure device encryption.</p>") encrypted: option<nullableBoolean>,
}
@ocaml.doc("<p> Configuration details of the component.</p>")
type componentConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  componentArn: componentVersionArnOrBuildVersionArn,
}
type accountList = array<accountId>
@ocaml.doc("<p>Logging configuration defines where Image Builder uploads your logs.</p>")
type logging = {@ocaml.doc("<p>The Amazon S3 logging configuration.</p>") s3Logs: option<s3Logs>}
type launchTemplateConfigurationList = array<launchTemplateConfiguration>
@ocaml.doc("<p>Describes the configuration for a launch permission. The launch permission modification request is sent to the 
      <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">EC2 ModifyImageAttribute</a> 
      API on behalf of the user for each Region they have selected to distribute the AMI. To make an AMI public, 
      set the launch permission authorized accounts to <code>all</code>. See the examples for making an AMI public at 
      <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">EC2 ModifyImageAttribute</a>.</p>")
type launchPermissionConfiguration = {
  @ocaml.doc("<p>The name of the group.</p>") userGroups: option<stringList>,
  @ocaml.doc("<p>The AWS account ID.</p>") userIds: option<accountList>,
}
@ocaml.doc("<p>Defines block device mappings for the instance used to configure your image.</p>")
type instanceBlockDeviceMapping = {
  @ocaml.doc("<p>Use to remove a mapping from the parent image.</p>") noDevice: option<emptyString>,
  @ocaml.doc("<p>Use to manage instance ephemeral devices.</p>")
  virtualName: option<nonEmptyString>,
  @ocaml.doc("<p>Use to manage Amazon EBS-specific configuration for this mapping.</p>")
  ebs: option<ebsInstanceBlockDeviceSpecification>,
  @ocaml.doc("<p>The device to which these mappings apply.</p>") deviceName: option<nonEmptyString>,
}
@ocaml.doc("<p>The infrastructure used when building EC2 AMIs.</p>")
type infrastructureConfigurationSummary = {
  @ocaml.doc("<p>The instance profile of the infrastructure configuration.</p>")
  instanceProfileName: option<instanceProfileNameType>,
  @ocaml.doc("<p>The instance types of the infrastructure configuration.</p>")
  instanceTypes: option<instanceTypeList>,
  @ocaml.doc("<p>The tags of the infrastructure configuration.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The tags attached to the image created by Image Builder.</p>")
  resourceTags: option<resourceTagMap>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was last updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The description of the infrastructure configuration.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the infrastructure configuration.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>")
  arn: option<imageBuilderArn>,
}
type imageVersionList = array<imageVersion>
@ocaml.doc("<p>A summary of an image recipe.</p>")
type imageRecipeSummary = {
  @ocaml.doc("<p>The tags of the image recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date on which this image recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The parent image of the image recipe.</p>") parentImage: option<nonEmptyString>,
  @ocaml.doc("<p>The owner of the image recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The platform of the image recipe.</p>") platform: option<platform>,
  @ocaml.doc("<p>The name of the image recipe.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>Details of an image pipeline.</p>")
type imagePipeline = {
  @ocaml.doc("<p>The tags of this image pipeline.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date on which this image pipeline will next be run.</p>")
  dateNextRun: option<dateTime>,
  @ocaml.doc("<p>The date on which this image pipeline was last run.</p>")
  dateLastRun: option<dateTime>,
  @ocaml.doc("<p>The date on which this image pipeline was last updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which this image pipeline was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The status of the image pipeline.</p>") status: option<pipelineStatus>,
  @ocaml.doc("<p>The schedule of the image pipeline.</p>") schedule: option<schedule>,
  @ocaml.doc("<p>The image tests configuration of the image pipeline.</p>")
  imageTestsConfiguration: option<imageTestsConfiguration>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration associated with this
      image pipeline.</p>")
  distributionConfigurationArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration associated with this
      image pipeline.</p>")
  infrastructureConfigurationArn: option<arn>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the container recipe that is used for this pipeline.</p>"
  )
  containerRecipeArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe associated with this image
      pipeline.</p>")
  imageRecipeArn: option<arn>,
  @ocaml.doc("<p> Collects additional information about the image being created, including the operating
      system (OS) version and package list. This information is used to enhance the overall
      experience of using EC2 Image Builder. Enabled by default.</p>")
  enhancedImageMetadataEnabled: option<nullableBoolean>,
  @ocaml.doc("<p>The platform of the image pipeline.</p>") platform: option<platform>,
  @ocaml.doc("<p>The description of the image pipeline.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the image pipeline.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image pipeline.</p>")
  arn: option<imageBuilderArn>,
}
type imagePackageList = array<imagePackage>
@ocaml.doc("<p>A filter name and value pair that is used to return a more specific list of results from a
      list operation. Filters can be used to match a set of resources by specific criteria, such as
      tags, attributes, or IDs.</p>")
type filter = {
  @ocaml.doc("<p>The filter values. Filter values are case-sensitive.</p>")
  values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter. Filter names are case-sensitive.</p>")
  name: option<filterName>,
}
@ocaml.doc("<p>A high-level overview of a distribution configuration.</p>")
type distributionConfigurationSummary = {
  @ocaml.doc("<p>A list of Regions where the container image is distributed to.</p>")
  regions: option<regionList>,
  @ocaml.doc("<p>The tags associated with the distribution configuration.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The date on which the distribution configuration was updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which the distribution configuration was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The description of the distribution configuration.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the distribution configuration.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>A summary of a container recipe</p>")
type containerRecipeSummary = {
  @ocaml.doc("<p>Tags that are attached to the container recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date when this container recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The source image for the container recipe.</p>")
  parentImage: option<nonEmptyString>,
  @ocaml.doc("<p>The owner of the container recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The system platform for the container, such as Windows or Linux.</p>")
  platform: option<platform>,
  @ocaml.doc("<p>The name of the container recipe.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies the type of container, such as \"Docker\".</p>")
  containerType: option<containerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc(
  "<p>Container distribution settings for encryption, licensing, and sharing in a specific Region.</p>"
)
type containerDistributionConfiguration = {
  @ocaml.doc("<p>The destination repository for the container distribution configuration.</p>")
  targetRepository: targetContainerRepository,
  @ocaml.doc("<p>Tags that are attached to the container distribution configuration.</p>")
  containerTags: option<stringList>,
  @ocaml.doc("<p>The description of the container distribution configuration.</p>")
  description: option<nonEmptyString>,
}
@ocaml.doc("<p>A container encapsulates the runtime environment for an application.</p>")
type container = {
  @ocaml.doc("<p>A list of URIs for containers created in the context Region.</p>")
  imageUris: option<stringList>,
  @ocaml.doc(
    "<p>Containers and container images are Region-specific. This is the Region context for the container.</p>"
  )
  region: option<nonEmptyString>,
}
@ocaml.doc("<p>A high-level overview of a component semantic version.</p>")
type componentVersion = {
  @ocaml.doc("<p>The date that the component was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The owner of the component.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image or only
      to test it.</p>")
  @as("type")
  type_: option<componentType>,
  @ocaml.doc("<p>he operating system (OS) version supported by the component. If the OS information is
      available, a prefix match is performed against the parent image OS version during image recipe
      creation.</p>")
  supportedOsVersions: option<osVersionList>,
  @ocaml.doc("<p>The platform of the component.</p>") platform: option<platform>,
  @ocaml.doc("<p>The description of the component.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The semantic version of the component.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The name of the component.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>A high-level summary of a component.</p>")
type componentSummary = {
  @ocaml.doc("<p>The tags associated with the component.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date that the component was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The change description of the component.</p>")
  changeDescription: option<nonEmptyString>,
  @ocaml.doc("<p>The description of the component.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The owner of the component.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image or only
      to test it.</p>")
  @as("type")
  type_: option<componentType>,
  @ocaml.doc("<p>The operating system (OS) version supported by the component. If the OS information is
      available, a prefix match is performed against the parent image OS version during image recipe
      creation.</p>")
  supportedOsVersions: option<osVersionList>,
  @ocaml.doc("<p>The platform of the component.</p>") platform: option<platform>,
  @ocaml.doc("<p>The version of the component.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The name of the component.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  arn: option<imageBuilderArn>,
}
type componentConfigurationList = array<componentConfiguration>
@ocaml.doc("<p>A detailed view of a component.</p>")
type component = {
  @ocaml.doc("<p>The tags associated with the component.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date that the component was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The encryption status of the component.</p>") encrypted: option<nullableBoolean>,
  @ocaml.doc("<p>The KMS key identifier used to encrypt the component.</p>")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>The data of the component.</p>") data: option<componentData>,
  @ocaml.doc("<p>The owner of the component.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The operating system (OS) version supported by the component. If the OS information is
      available, a prefix match is performed against the parent image OS version during image recipe
      creation.</p>")
  supportedOsVersions: option<osVersionList>,
  @ocaml.doc("<p>The platform of the component.</p>") platform: option<platform>,
  @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image or only
      to test it.</p>")
  @as("type")
  type_: option<componentType>,
  @ocaml.doc("<p>The change description of the component.</p>")
  changeDescription: option<nonEmptyString>,
  @ocaml.doc("<p>The description of the component.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the component.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The name of the component.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p> Details of an EC2 AMI.</p>")
type ami = {
  @ocaml.doc("<p>The account ID of the owner of the AMI.</p>") accountId: option<nonEmptyString>,
  state: option<imageState>,
  @ocaml.doc("<p>The description of the EC2 AMI. Minimum and maximum length are in characters.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the EC2 AMI.</p>") name: option<nonEmptyString>,
  @ocaml.doc("<p>The AMI ID of the EC2 AMI.</p>") image: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS Region of the EC2 AMI.</p>") region: option<nonEmptyString>,
}
type instanceBlockDeviceMappings = array<instanceBlockDeviceMapping>
type infrastructureConfigurationSummaryList = array<infrastructureConfigurationSummary>
@ocaml.doc("<p>Details of the infrastructure configuration.</p>")
type infrastructureConfiguration = {
  @ocaml.doc("<p>The tags of the infrastructure configuration.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
  resourceTags: option<resourceTagMap>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was last updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The SNS topic Amazon Resource Name (ARN) of the infrastructure configuration.</p>")
  snsTopicArn: option<nonEmptyString>,
  @ocaml.doc("<p>The terminate instance on failure configuration of the infrastructure
      configuration.</p>")
  terminateInstanceOnFailure: option<nullableBoolean>,
  @ocaml.doc("<p>The EC2 key pair of the infrastructure configuration.</p>")
  keyPair: option<nonEmptyString>,
  @ocaml.doc("<p>The logging configuration of the infrastructure configuration.</p>")
  logging: option<logging>,
  @ocaml.doc("<p>The subnet ID of the infrastructure configuration.</p>")
  subnetId: option<nonEmptyString>,
  @ocaml.doc("<p>The security group IDs of the infrastructure configuration.</p>")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>The instance profile of the infrastructure configuration.</p>")
  instanceProfileName: option<instanceProfileNameType>,
  @ocaml.doc("<p>The instance types of the infrastructure configuration.</p>")
  instanceTypes: option<instanceTypeList>,
  @ocaml.doc("<p>The description of the infrastructure configuration.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the infrastructure configuration.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>")
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
@ocaml.doc("<p> Define and configure the output AMIs of the pipeline.</p>")
type amiDistributionConfiguration = {
  @ocaml.doc("<p> Launch permissions can be used to configure which AWS accounts can use the AMI to launch
      instances.</p>")
  launchPermission: option<launchPermissionConfiguration>,
  @ocaml.doc("<p>The KMS key identifier used to encrypt the distributed image.</p>")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>The tags to apply to AMIs distributed to this Region.</p>")
  amiTags: option<tagMap>,
  @ocaml.doc("<p>The ID of an account to which you want to distribute an image.</p>")
  targetAccountIds: option<accountList>,
  @ocaml.doc(
    "<p>The description of the distribution configuration. Minimum and maximum length are in characters.</p>"
  )
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the distribution configuration.</p>") name: option<amiNameString>,
}
@ocaml.doc("<p>The resources produced by this image.</p>")
type outputResources = {
  @ocaml.doc(
    "<p>Container images that the pipeline has generated and stored in the output repository.</p>"
  )
  containers: option<containerList>,
  @ocaml.doc("<p>The EC2 AMIs created by this image.</p>") amis: option<amiList>,
}
@ocaml.doc("<p>Defines a custom source AMI and block device mapping configurations of an instance 
      used for building and testing container images.</p>")
type instanceConfiguration = {
  @ocaml.doc(
    "<p>Defines the block devices to attach for building an instance from this Image Builder AMI.</p>"
  )
  blockDeviceMappings: option<instanceBlockDeviceMappings>,
  @ocaml.doc("<p>The AMI ID to use as the base image for a container build and test instance. If not specified, 
      Image Builder will use the appropriate ECS-optimized AMI as a base image.</p>")
  image: option<nonEmptyString>,
}
@ocaml.doc("<p>An image recipe.</p>")
type imageRecipe = {
  @ocaml.doc("<p>The working directory to be used during build and test workflows.</p>")
  workingDirectory: option<nonEmptyString>,
  @ocaml.doc("<p>The tags of the image recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date on which this image recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The block device mappings to apply when creating images from this recipe.</p>")
  blockDeviceMappings: option<instanceBlockDeviceMappings>,
  @ocaml.doc("<p>The parent image of the image recipe.</p>") parentImage: option<nonEmptyString>,
  @ocaml.doc("<p>The components of the image recipe.</p>")
  components: option<componentConfigurationList>,
  @ocaml.doc("<p>The version of the image recipe.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The owner of the image recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The platform of the image recipe.</p>") platform: option<platform>,
  @ocaml.doc("<p>The description of the image recipe.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the image recipe.</p>") name: option<resourceName>,
  @ocaml.doc(
    "<p>Specifies which type of image is created by the recipe - an AMI or a container image.</p>"
  )
  @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p> Defines the settings for a specific Region.</p>")
type distribution = {
  @ocaml.doc("<p>A group of launchTemplateConfiguration settings that apply to image distribution 
      for specified accounts.</p>")
  launchTemplateConfigurations: option<launchTemplateConfigurationList>,
  @ocaml.doc("<p>The License Manager Configuration to associate with the AMI in the specified
      Region.</p>")
  licenseConfigurationArns: option<licenseConfigurationArnList>,
  @ocaml.doc("<p>Container distribution settings for encryption, licensing, and sharing 
      in a specific Region.</p>")
  containerDistributionConfiguration: option<containerDistributionConfiguration>,
  @ocaml.doc("<p>The specific AMI settings; for example, launch permissions or AMI tags.</p>")
  amiDistributionConfiguration: option<amiDistributionConfiguration>,
  @ocaml.doc("<p>The target Region.</p>") region: nonEmptyString,
}
@ocaml.doc("<p>An image summary.</p>")
type imageSummary = {
  @ocaml.doc("<p>The tags of the image.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The output resources produced when creating this image.</p>")
  outputResources: option<outputResources>,
  @ocaml.doc("<p>The date on which this image was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The owner of the image.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The state of the image.</p>") state: option<imageState>,
  @ocaml.doc("<p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or
      Microsoft Windows Server 2019.</p>")
  osVersion: option<osVersion>,
  @ocaml.doc("<p>The platform of the image.</p>") platform: option<platform>,
  @ocaml.doc("<p>The version of the image.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>Specifies whether this is an AMI or container image.</p>") @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The name of the image.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image.</p>") arn: option<imageBuilderArn>,
}
type distributionList = array<distribution>
@ocaml.doc("<p>A container recipe.</p>")
type containerRecipe = {
  @ocaml.doc("<p>The destination repository for the container image.</p>")
  targetRepository: option<targetContainerRepository>,
  @ocaml.doc("<p>The working directory for use during build and test workflows.</p>")
  workingDirectory: option<nonEmptyString>,
  @ocaml.doc("<p>Tags that are attached to the container recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date when this container recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The source image for the container recipe.</p>")
  parentImage: option<nonEmptyString>,
  @ocaml.doc("<p>A flag that indicates if the target container is encrypted.</p>")
  encrypted: option<nullableBoolean>,
  @ocaml.doc(
    "<p>Identifies which KMS key is used to encrypt the container image for distribution to the target Region.</p>"
  )
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Dockerfiles are text documents that are used to build Docker containers, and ensure that they contain all of the elements required by the application running inside. The template data consists of contextual variables where Image Builder places build information or scripts, based on your container image recipe.</p>"
  )
  dockerfileTemplateData: option<dockerFileTemplate>,
  @ocaml.doc(
    "<p>A group of options that can be used to configure an instance for building and testing container images.</p>"
  )
  instanceConfiguration: option<instanceConfiguration>,
  @ocaml.doc("<p>Components for build and test that are included in the container recipe.</p>")
  components: option<componentConfigurationList>,
  @ocaml.doc("<p>The semantic version of the container recipe (<major>.<minor>.<patch>).</p>")
  version: option<versionNumber>,
  @ocaml.doc("<p>The owner of the container recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The system platform for the container, such as Windows or Linux.</p>")
  platform: option<platform>,
  @ocaml.doc("<p>The description of the container recipe.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the container recipe.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies the type of container, such as Docker.</p>")
  containerType: option<containerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe.</p>")
  arn: option<imageBuilderArn>,
}
type imageSummaryList = array<imageSummary>
@ocaml.doc("<p>A distribution configuration.</p>")
type distributionConfiguration = {
  @ocaml.doc("<p>The tags of the distribution configuration.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date on which this distribution configuration was last updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which this distribution configuration was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The maximum duration in minutes for this distribution configuration.</p>")
  timeoutMinutes: distributionTimeoutMinutes,
  @ocaml.doc("<p>The distribution objects that apply Region-specific 
      settings for the deployment of the image to targeted Regions.</p>")
  distributions: option<distributionList>,
  @ocaml.doc("<p>The description of the distribution configuration.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the distribution configuration.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>An image build version.</p>")
type image = {
  @ocaml.doc("<p>The tags of the image.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The output resources produced when creating this image.</p>")
  outputResources: option<outputResources>,
  @ocaml.doc("<p>The date on which this image was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The image tests configuration used when creating this image.</p>")
  imageTestsConfiguration: option<imageTestsConfiguration>,
  @ocaml.doc("<p>The distribution configuration used when creating this image.</p>")
  distributionConfiguration: option<distributionConfiguration>,
  @ocaml.doc("<p>The infrastructure used when creating this image.</p>")
  infrastructureConfiguration: option<infrastructureConfiguration>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image pipeline that created this image.</p>")
  sourcePipelineArn: option<arn>,
  @ocaml.doc("<p>The name of the image pipeline that created this image.</p>")
  sourcePipelineName: option<resourceName>,
  @ocaml.doc("<p>The container recipe used to create the container image type.</p>")
  containerRecipe: option<containerRecipe>,
  @ocaml.doc("<p>The image recipe used when creating the image.</p>")
  imageRecipe: option<imageRecipe>,
  @ocaml.doc("<p>The state of the image.</p>") state: option<imageState>,
  @ocaml.doc("<p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or
      Microsoft Windows Server 2019.</p>")
  osVersion: option<osVersion>,
  @ocaml.doc("<p> Collects additional information about the image being created, including the operating
      system (OS) version and package list. This information is used to enhance the overall
      experience of using EC2 Image Builder. Enabled by default.</p>")
  enhancedImageMetadataEnabled: option<nullableBoolean>,
  @ocaml.doc("<p>The platform of the image.</p>") platform: option<platform>,
  @ocaml.doc("<p>The semantic version of the image.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The name of the image.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies whether this is an AMI or container image.</p>") @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image.</p>") arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>EC2 Image Builder is a fully managed AWS service that makes it easier to automate the 
      creation, management, and deployment of customized, secure, and up-to-date \"golden\" server 
      images that are pre-installed and pre-configured with software and settings to meet specific
      IT standards.</p>")
module StartImagePipelineExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually invoke.</p>"
    )
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image that was created by this request.</p>"
    )
    imageBuildVersionArn: option<imageBuildVersionArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "StartImagePipelineExecutionCommand"
  let make = (~clientToken, ~imagePipelineArn, ()) =>
    new({clientToken: clientToken, imagePipelineArn: imagePipelineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImageRecipePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to apply.</p>") policy: resourcePolicyDocument,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied to.</p>"
    )
    imageRecipeArn: imageRecipeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image recipe that this policy was applied to.</p>"
    )
    imageRecipeArn: option<imageRecipeArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutImageRecipePolicyCommand"
  let make = (~policy, ~imageRecipeArn, ()) => new({policy: policy, imageRecipeArn: imageRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutImagePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to apply.</p>") policy: resourcePolicyDocument,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image that this policy should be applied to.</p>"
    )
    imageArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image that this policy was applied to.</p>"
    )
    imageArn: option<imageBuildVersionArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "PutImagePolicyCommand"
  let make = (~policy, ~imageArn, ()) => new({policy: policy, imageArn: imageArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutContainerRecipePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to apply to the container recipe.</p>")
    policy: resourcePolicyDocument,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the container recipe that this policy should be applied to.</p>"
    )
    containerRecipeArn: containerRecipeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the container recipe that this policy was applied to.</p>"
    )
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutContainerRecipePolicyCommand"
  let make = (~policy, ~containerRecipeArn, ()) =>
    new({policy: policy, containerRecipeArn: containerRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutComponentPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The policy to apply.</p>") policy: resourcePolicyDocument,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the component that this policy should be applied to.</p>"
    )
    componentArn: componentBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the component that this policy was applied to.</p>"
    )
    componentArn: option<componentBuildVersionArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "PutComponentPolicyCommand"
  let make = (~policy, ~componentArn, ()) => new({policy: policy, componentArn: componentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImageRecipePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to retrieve.</p>"
    )
    imageRecipeArn: imageRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The image recipe policy object.</p>") policy: option<resourcePolicyDocument>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetImageRecipePolicyCommand"
  let make = (~imageRecipeArn, ()) => new({imageRecipeArn: imageRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImagePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>"
    )
    imageArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The image policy object.</p>") policy: option<resourcePolicyDocument>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImagePolicyCommand"
  let make = (~imageArn, ()) => new({imageArn: imageArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerRecipePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the container recipe for the policy being requested.</p>"
    )
    containerRecipeArn: containerRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The container recipe policy object that is returned.</p>")
    policy: option<resourcePolicyDocument>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetContainerRecipePolicyCommand"
  let make = (~containerRecipeArn, ()) => new({containerRecipeArn: containerRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComponentPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the component whose policy you want to retrieve.</p>"
    )
    componentArn: componentBuildVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The component policy.</p>") policy: option<resourcePolicyDocument>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetComponentPolicyCommand"
  let make = (~componentArn, ()) => new({componentArn: componentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInfrastructureConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>"
    )
    infrastructureConfigurationArn: infrastructureConfigurationArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was deleted.</p>"
    )
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteInfrastructureConfigurationCommand"
  let make = (~infrastructureConfigurationArn, ()) =>
    new({infrastructureConfigurationArn: infrastructureConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImageRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe to delete.</p>")
    imageRecipeArn: imageRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe that was deleted.</p>")
    imageRecipeArn: option<imageRecipeArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteImageRecipeCommand"
  let make = (~imageRecipeArn, ()) => new({imageRecipeArn: imageRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImagePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>")
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image pipeline that was deleted.</p>")
    imagePipelineArn: option<imagePipelineArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteImagePipelineCommand"
  let make = (~imagePipelineArn, ()) => new({imagePipelineArn: imagePipelineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteImage = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image to delete.</p>")
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image that was deleted.</p>")
    imageBuildVersionArn: option<imageBuildVersionArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "DeleteImageCommand"
  let make = (~imageBuildVersionArn, ()) => new({imageBuildVersionArn: imageBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDistributionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>")
    distributionConfigurationArn: distributionConfigurationArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the distribution configuration that was deleted.</p>"
    )
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteDistributionConfigurationCommand"
  let make = (~distributionConfigurationArn, ()) =>
    new({distributionConfigurationArn: distributionConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContainerRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>")
    containerRecipeArn: containerRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe that was deleted.</p>")
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "DeleteContainerRecipeCommand"
  let make = (~containerRecipeArn, ()) => new({containerRecipeArn: containerRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component build version to delete.</p>")
    componentBuildVersionArn: componentBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the component build version that was deleted.</p>"
    )
    componentBuildVersionArn: option<componentBuildVersionArn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "DeleteComponentCommand"
  let make = (~componentBuildVersionArn, ()) =>
    new({componentBuildVersionArn: componentBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelImageCreation = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image whose creation you want to cancel.</p>"
    )
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image whose creation has been cancelled.</p>"
    )
    imageBuildVersionArn: option<imageBuildVersionArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CancelImageCreationCommand"
  let make = (~clientToken, ~imageBuildVersionArn, ()) =>
    new({clientToken: clientToken, imageBuildVersionArn: imageBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateImagePipeline = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The status of the image pipeline.</p>") status: option<pipelineStatus>,
    @ocaml.doc("<p>The schedule of the image pipeline.</p>") schedule: option<schedule>,
    @ocaml.doc("<p> Collects additional information about the image being created, including the operating
      system (OS) version and package list. This information is used to enhance the overall
      experience of using EC2 Image Builder. Enabled by default.</p>")
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    @ocaml.doc("<p>The image test configuration of the image pipeline.</p>")
    imageTestsConfiguration: option<imageTestsConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to
      configure and distribute images updated by this image pipeline.</p>")
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
      build images updated by this image pipeline.</p>")
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container pipeline to update.</p>")
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
      updated by this image pipeline.</p>")
    imageRecipeArn: option<imageRecipeArn>,
    @ocaml.doc("<p>The description of the image pipeline.</p>") description: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>"
    )
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image pipeline that was updated by this request.</p>"
    )
    imagePipelineArn: option<imagePipelineArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateImagePipelineCommand"
  let make = (
    ~clientToken,
    ~infrastructureConfigurationArn,
    ~imagePipelineArn,
    ~status=?,
    ~schedule=?,
    ~enhancedImageMetadataEnabled=?,
    ~imageTestsConfiguration=?,
    ~distributionConfigurationArn=?,
    ~containerRecipeArn=?,
    ~imageRecipeArn=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      status: status,
      schedule: schedule,
      enhancedImageMetadataEnabled: enhancedImageMetadataEnabled,
      imageTestsConfiguration: imageTestsConfiguration,
      distributionConfigurationArn: distributionConfigurationArn,
      infrastructureConfigurationArn: infrastructureConfigurationArn,
      containerRecipeArn: containerRecipeArn,
      imageRecipeArn: imageRecipeArn,
      description: description,
      imagePipelineArn: imagePipelineArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>")
    resourceArn: imageBuilderArn,
  }

  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>")
    resourceArn: imageBuilderArn,
  }

  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>"
    )
    resourceArn: imageBuilderArn,
  }
  type response = {@ocaml.doc("<p>The tags for the specified resource.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token of the component.</p>") clientToken: clientToken,
    @ocaml.doc("<p>The tags of the component.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ID of the KMS key that should be used to encrypt this component.</p>")
    kmsKeyId: option<nonEmptyString>,
    @ocaml.doc("<p>The uri of the component. Must be an S3 URL and the requester must have permission to
      access the S3 bucket. If you use S3, you can specify component content up to your service
      quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the
      component.</p>")
    uri: option<uri>,
    @ocaml.doc("<p>The data of the component. Used to specify the data inline. Either <code>data</code> or
        <code>uri</code> can be used to specify the data within the component.</p>")
    data: option<nonEmptyString>,
    @ocaml.doc("<p>The platform of the component.</p>") platform: platform,
    @ocaml.doc("<p>The format of the resource that you want to import as a component.</p>")
    format: componentFormat,
    @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image or only
      to test it.</p>")
    @as("type")
    type_: componentType,
    @ocaml.doc("<p>The change description of the component. Describes what change has been made in this
      version, or what makes this version different from other versions of this component.</p>")
    changeDescription: option<nonEmptyString>,
    @ocaml.doc("<p>The description of the component. Describes the contents of the component.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The semantic version of the component. This version follows the semantic version syntax.
      For example, major.minor.patch. This could be versioned like software (2.0.1) or like a date
      (2019.12.01).</p>")
    semanticVersion: versionNumber,
    @ocaml.doc("<p> The name of the component.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the imported component.</p>")
    componentBuildVersionArn: option<componentBuildVersionArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ImportComponentCommand"
  let make = (
    ~clientToken,
    ~platform,
    ~format,
    ~type_,
    ~semanticVersion,
    ~name,
    ~tags=?,
    ~kmsKeyId=?,
    ~uri=?,
    ~data=?,
    ~changeDescription=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      kmsKeyId: kmsKeyId,
      uri: uri,
      data: data,
      platform: platform,
      format: format,
      type_: type_,
      changeDescription: changeDescription,
      description: description,
      semanticVersion: semanticVersion,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImagePipeline = {
  type t
  type request = {
    @ocaml.doc("<p> The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p> The tags of the image pipeline.</p>") tags: option<tagMap>,
    @ocaml.doc("<p> The status of the image pipeline.</p>") status: option<pipelineStatus>,
    @ocaml.doc("<p> The schedule of the image pipeline.</p>") schedule: option<schedule>,
    @ocaml.doc("<p> Collects additional information about the image being created, including the operating
      system (OS) version and package list. This information is used to enhance the overall
      experience of using EC2 Image Builder. Enabled by default.</p>")
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    @ocaml.doc("<p> The image test configuration of the image pipeline.</p>")
    imageTestsConfiguration: option<imageTestsConfiguration>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the distribution configuration that will be used to
      configure and distribute images created by this image pipeline.</p>")
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to
      build images created by this image pipeline.</p>")
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the container recipe that is used to configure images created by this container pipeline.</p>"
    )
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the image recipe that will be used to configure images
      created by this image pipeline.</p>")
    imageRecipeArn: option<imageRecipeArn>,
    @ocaml.doc("<p> The description of the image pipeline.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p> The name of the image pipeline.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p> The Amazon Resource Name (ARN) of the image pipeline that was created by this request.</p>"
    )
    imagePipelineArn: option<imagePipelineArn>,
    @ocaml.doc("<p> The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p> The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateImagePipelineCommand"
  let make = (
    ~clientToken,
    ~infrastructureConfigurationArn,
    ~name,
    ~tags=?,
    ~status=?,
    ~schedule=?,
    ~enhancedImageMetadataEnabled=?,
    ~imageTestsConfiguration=?,
    ~distributionConfigurationArn=?,
    ~containerRecipeArn=?,
    ~imageRecipeArn=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      status: status,
      schedule: schedule,
      enhancedImageMetadataEnabled: enhancedImageMetadataEnabled,
      imageTestsConfiguration: imageTestsConfiguration,
      distributionConfigurationArn: distributionConfigurationArn,
      infrastructureConfigurationArn: infrastructureConfigurationArn,
      containerRecipeArn: containerRecipeArn,
      imageRecipeArn: imageRecipeArn,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImage = {
  type t
  type request = {
    @ocaml.doc("<p> The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p> The tags of the image.</p>") tags: option<tagMap>,
    @ocaml.doc("<p> Collects additional information about the image being created, including the operating
      system (OS) version and package list. This information is used to enhance the overall
      experience of using EC2 Image Builder. Enabled by default.</p>")
    enhancedImageMetadataEnabled: option<nullableBoolean>,
    @ocaml.doc("<p> The image tests configuration of the image.</p>")
    imageTestsConfiguration: option<imageTestsConfiguration>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
      environment in which your image will be built and tested.</p>")
    infrastructureConfigurationArn: infrastructureConfigurationArn,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the distribution configuration that defines and
      configures the outputs of your pipeline.</p>")
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the container recipe that defines how images are configured and tested.</p>"
    )
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the image recipe that defines how images are
      configured, tested, and assessed.</p>")
    imageRecipeArn: option<imageRecipeArn>,
  }
  type response = {
    @ocaml.doc(
      "<p> The Amazon Resource Name (ARN) of the image that was created by this request.</p>"
    )
    imageBuildVersionArn: option<imageBuildVersionArn>,
    @ocaml.doc("<p> The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p> The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "CreateImageCommand"
  let make = (
    ~clientToken,
    ~infrastructureConfigurationArn,
    ~tags=?,
    ~enhancedImageMetadataEnabled=?,
    ~imageTestsConfiguration=?,
    ~distributionConfigurationArn=?,
    ~containerRecipeArn=?,
    ~imageRecipeArn=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      enhancedImageMetadataEnabled: enhancedImageMetadataEnabled,
      imageTestsConfiguration: imageTestsConfiguration,
      infrastructureConfigurationArn: infrastructureConfigurationArn,
      distributionConfigurationArn: distributionConfigurationArn,
      containerRecipeArn: containerRecipeArn,
      imageRecipeArn: imageRecipeArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token of the component.</p>") clientToken: clientToken,
    @ocaml.doc("<p>The tags of the component.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ID of the KMS key that should be used to encrypt this component.</p>")
    kmsKeyId: option<nonEmptyString>,
    @ocaml.doc("<p>The uri of the component. Must be an S3 URL and the requester must have permission to
      access the S3 bucket. If you use S3, you can specify component content up to your service
      quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the
      component.</p>")
    uri: option<uri>,
    @ocaml.doc("<p>The data of the component. Used to specify the data inline. Either <code>data</code> or
      <code>uri</code> can be used to specify the data within the component.</p>")
    data: option<inlineComponentData>,
    @ocaml.doc("<p> The operating system (OS) version supported by the component. If the OS information is
      available, a prefix match is performed against the parent image OS version during image recipe
      creation.</p>")
    supportedOsVersions: option<osVersionList>,
    @ocaml.doc("<p>The platform of the component.</p>") platform: platform,
    @ocaml.doc("<p>The change description of the component. Describes what change has been made in this
      version, or what makes this version different from other versions of this component.</p>")
    changeDescription: option<nonEmptyString>,
    @ocaml.doc("<p>The description of the component. Describes the contents of the component.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The semantic version of the component. This version follows the semantic version syntax.
      For example, major.minor.patch. This could be versioned like software (2.0.1) or like a date
      (2019.12.01).</p>")
    semanticVersion: versionNumber,
    @ocaml.doc("<p>The name of the component.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the component that was created by this request.</p>"
    )
    componentBuildVersionArn: option<componentBuildVersionArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "CreateComponentCommand"
  let make = (
    ~clientToken,
    ~platform,
    ~semanticVersion,
    ~name,
    ~tags=?,
    ~kmsKeyId=?,
    ~uri=?,
    ~data=?,
    ~supportedOsVersions=?,
    ~changeDescription=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      kmsKeyId: kmsKeyId,
      uri: uri,
      data: data,
      supportedOsVersions: supportedOsVersions,
      platform: platform,
      changeDescription: changeDescription,
      description: description,
      semanticVersion: semanticVersion,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInfrastructureConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
    resourceTags: option<resourceTagMap>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The SNS topic on which to send image build events.</p>")
    snsTopicArn: option<snsTopicArn>,
    @ocaml.doc("<p>The terminate instance on failure setting of the infrastructure configuration. Set to
      false if you want Image Builder to retain the instance used to configure your AMI if the build
      or test phase of your workflow fails.</p>")
    terminateInstanceOnFailure: option<nullableBoolean>,
    @ocaml.doc("<p>The key pair of the infrastructure configuration. This can be used to log on to and debug
      the instance used to create your image.</p>")
    keyPair: option<nonEmptyString>,
    @ocaml.doc("<p>The logging configuration of the infrastructure configuration.</p>")
    logging: option<logging>,
    @ocaml.doc("<p>The subnet ID to place the instance used to customize your EC2 AMI in.</p>")
    subnetId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The security group IDs to associate with the instance used to customize your EC2 AMI.</p>"
    )
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc(
      "<p>The instance profile to associate with the instance used to customize your EC2 AMI.</p>"
    )
    instanceProfileName: instanceProfileNameType,
    @ocaml.doc("<p>The instance types of the infrastructure configuration. You can specify one or more
      instance types to use for this build. The service will pick one of these instance types based
      on availability.</p>")
    instanceTypes: option<instanceTypeList>,
    @ocaml.doc("<p>The description of the infrastructure configuration.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
      update.</p>")
    infrastructureConfigurationArn: infrastructureConfigurationArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was updated by
      this request.</p>")
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateInfrastructureConfigurationCommand"
  let make = (
    ~clientToken,
    ~instanceProfileName,
    ~infrastructureConfigurationArn,
    ~resourceTags=?,
    ~snsTopicArn=?,
    ~terminateInstanceOnFailure=?,
    ~keyPair=?,
    ~logging=?,
    ~subnetId=?,
    ~securityGroupIds=?,
    ~instanceTypes=?,
    ~description=?,
    (),
  ) =>
    new({
      resourceTags: resourceTags,
      clientToken: clientToken,
      snsTopicArn: snsTopicArn,
      terminateInstanceOnFailure: terminateInstanceOnFailure,
      keyPair: keyPair,
      logging: logging,
      subnetId: subnetId,
      securityGroupIds: securityGroupIds,
      instanceProfileName: instanceProfileName,
      instanceTypes: instanceTypes,
      description: description,
      infrastructureConfigurationArn: infrastructureConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePackages = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The maxiumum number of results to return from the ListImagePackages request.</p>"
    )
    maxResults: option<restrictedInteger>,
    @ocaml.doc(
      "<p>Filter results for the ListImagePackages request by the Image Build Version ARN</p>"
    )
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of Image Packages returned in the response.</p>")
    imagePackageList: option<imagePackageList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePackagesCommand"
  let make = (~imageBuildVersionArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, imageBuildVersionArn: imageBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImagePipeline = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>"
    )
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    @ocaml.doc("<p>The image pipeline object.</p>") imagePipeline: option<imagePipeline>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetImagePipelineCommand"
  let make = (~imagePipelineArn, ()) => new({imagePipelineArn: imagePipelineArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component that you want to retrieve. Regex requires
      \"/\\d+$\" suffix.</p>")
    componentBuildVersionArn: componentVersionArnOrBuildVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The component object associated with the specified ARN.</p>")
    component: option<component>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetComponentCommand"
  let make = (~componentBuildVersionArn, ()) =>
    new({componentBuildVersionArn: componentBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInfrastructureConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The tags of the infrastructure configuration.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
    resourceTags: option<resourceTagMap>,
    @ocaml.doc("<p>The SNS topic on which to send image build events.</p>")
    snsTopicArn: option<snsTopicArn>,
    @ocaml.doc("<p>The terminate instance on failure setting of the infrastructure configuration. Set to
      false if you want Image Builder to retain the instance used to configure your AMI if the build
      or test phase of your workflow fails.</p>")
    terminateInstanceOnFailure: option<nullableBoolean>,
    @ocaml.doc("<p>The key pair of the infrastructure configuration. This can be used to log on to and debug
      the instance used to create your image.</p>")
    keyPair: option<nonEmptyString>,
    @ocaml.doc("<p>The logging configuration of the infrastructure configuration.</p>")
    logging: option<logging>,
    @ocaml.doc(
      "<p>The subnet ID in which to place the instance used to customize your EC2 AMI.</p>"
    )
    subnetId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The security group IDs to associate with the instance used to customize your EC2 AMI.</p>"
    )
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc(
      "<p>The instance profile to associate with the instance used to customize your EC2 AMI.</p>"
    )
    instanceProfileName: instanceProfileNameType,
    @ocaml.doc("<p>The instance types of the infrastructure configuration. You can specify one or more
      instance types to use for this build. The service will pick one of these instance types based
      on availability.</p>")
    instanceTypes: option<instanceTypeList>,
    @ocaml.doc("<p>The description of the infrastructure configuration.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The name of the infrastructure configuration.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was created by
      this request.</p>")
    infrastructureConfigurationArn: option<infrastructureConfigurationArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateInfrastructureConfigurationCommand"
  let make = (
    ~clientToken,
    ~instanceProfileName,
    ~name,
    ~tags=?,
    ~resourceTags=?,
    ~snsTopicArn=?,
    ~terminateInstanceOnFailure=?,
    ~keyPair=?,
    ~logging=?,
    ~subnetId=?,
    ~securityGroupIds=?,
    ~instanceTypes=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      resourceTags: resourceTags,
      snsTopicArn: snsTopicArn,
      terminateInstanceOnFailure: terminateInstanceOnFailure,
      keyPair: keyPair,
      logging: logging,
      subnetId: subnetId,
      securityGroupIds: securityGroupIds,
      instanceProfileName: instanceProfileName,
      instanceTypes: instanceTypes,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInfrastructureConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of infrastructure configurations.</p>")
    infrastructureConfigurationSummaryList: option<infrastructureConfigurationSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListInfrastructureConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImages = {
  type t
  type request = {
    @ocaml.doc("<p>Includes deprecated images in the response list.</p>")
    includeDeprecated: option<nullableBoolean>,
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>Requests a list of images with a specific recipe name.</p>")
    byName: option<boolean_>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
    @ocaml.doc("<p>The owner defines which images you want to list. By default, this request will only show
      images owned by your account. You can use this field to specify if you want to view images
      owned by yourself, by Amazon, or those images that have been shared with you by other
      customers.</p>")
    owner: option<ownership>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of image semantic versions.</p>")
    imageVersionList: option<imageVersionList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ListImagesCommand"
  let make = (
    ~includeDeprecated=?,
    ~nextToken=?,
    ~maxResults=?,
    ~byName=?,
    ~filters=?,
    ~owner=?,
    (),
  ) =>
    new({
      includeDeprecated: includeDeprecated,
      nextToken: nextToken,
      maxResults: maxResults,
      byName: byName,
      filters: filters,
      owner: owner,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImageRecipes = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
    @ocaml.doc("<p>The owner defines which image recipes you want to list. By default, this request will only
      show image recipes owned by your account. You can use this field to specify if you want to
      view image recipes owned by yourself, by Amazon, or those image recipes that have been shared
      with you by other customers.</p>")
    owner: option<ownership>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of image pipelines.</p>")
    imageRecipeSummaryList: option<imageRecipeSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImageRecipesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~owner=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, owner: owner})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePipelines = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of image pipelines.</p>") imagePipelineList: option<imagePipelineList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePipelinesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>
         <ul>
            <li>
               <p>
                  <code>name</code> - The name of this distribution configuration.</p>
            </li>
         </ul>")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of distributions.</p>")
    distributionConfigurationSummaryList: option<distributionConfigurationSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListDistributionConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContainerRecipes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Provides a token for pagination, which determines where to begin the next set of results when the current set reaches the maximum for one request.</p>"
    )
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>The maximum number of results to return in the list.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc(
      "<p>Request filters that are used to narrow the list of container images that are returned.</p>"
    )
    filters: option<filterList>,
    @ocaml.doc(
      "<p>Returns container recipes belonging to the specified owner, that have been shared with you. You can omit this field to return container recipes belonging to your account.</p>"
    )
    owner: option<ownership>,
  }
  type response = {
    @ocaml.doc(
      "<p>The next token field is used for paginated responses. When this is not empty, there are additional container recipes that the service has not included in this response. Use this token with the next request to retrieve additional list items.</p>"
    )
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>The list of container recipes returned for the request.</p>")
    containerRecipeSummaryList: option<containerRecipeSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListContainerRecipesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~owner=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, owner: owner})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponents = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc(
      "<p>Returns the list of component build versions for the specified semantic version.</p>"
    )
    byName: option<boolean_>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
    @ocaml.doc("<p>The owner defines which components you want to list. By default, this request will only
      show components owned by your account. You can use this field to specify if you want to view
      components owned by yourself, by Amazon, or those components that have been shared with you by
      other customers.</p>")
    owner: option<ownership>,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of component semantic versions.</p>")
    componentVersionList: option<componentVersionList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ListComponentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~byName=?, ~filters=?, ~owner=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      byName: byName,
      filters: filters,
      owner: owner,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponentBuildVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc(
      "<p>The component version Amazon Resource Name (ARN) whose versions you want to list.</p>"
    )
    componentVersionArn: componentVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of component summaries for the specified semantic version.</p>")
    componentSummaryList: option<componentSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListComponentBuildVersionsCommand"
  let make = (~componentVersionArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, componentVersionArn: componentVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInfrastructureConfiguration = {
  type t
  @ocaml.doc("<p> GetInfrastructureConfiguration request object.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
      retrieve.</p>")
    infrastructureConfigurationArn: infrastructureConfigurationArn,
  }
  @ocaml.doc("<p>GetInfrastructureConfiguration response object.</p>")
  type response = {
    @ocaml.doc("<p>The infrastructure configuration object.</p>")
    infrastructureConfiguration: option<infrastructureConfiguration>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetInfrastructureConfigurationCommand"
  let make = (~infrastructureConfigurationArn, ()) =>
    new({infrastructureConfigurationArn: infrastructureConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateImageRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The working directory to be used during build and test workflows.</p>")
    workingDirectory: option<nonEmptyString>,
    @ocaml.doc("<p> The tags of the image recipe.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The block device mappings of the image recipe.</p>")
    blockDeviceMappings: option<instanceBlockDeviceMappings>,
    @ocaml.doc("<p>The parent image of the image recipe. The value of the string can be the ARN of the parent
      image or an AMI ID. The format for the ARN follows this example:
        <code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x</code>.
      You can provide the specific version that you want to use, or you can use a wildcard in all of
      the fields. If you enter an AMI ID for the string value, you must have access to the AMI, and
      the AMI must be in the same Region in which you are using Image Builder.</p>")
    parentImage: nonEmptyString,
    @ocaml.doc("<p>The components of the image recipe.</p>") components: componentConfigurationList,
    @ocaml.doc("<p>The semantic version of the image recipe.</p>") semanticVersion: versionNumber,
    @ocaml.doc("<p> The description of the image recipe.</p>") description: option<nonEmptyString>,
    @ocaml.doc("<p> The name of the image recipe.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image recipe that was created by this request.</p>"
    )
    imageRecipeArn: option<imageRecipeArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateImageRecipeCommand"
  let make = (
    ~clientToken,
    ~parentImage,
    ~components,
    ~semanticVersion,
    ~name,
    ~workingDirectory=?,
    ~tags=?,
    ~blockDeviceMappings=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      workingDirectory: workingDirectory,
      tags: tags,
      blockDeviceMappings: blockDeviceMappings,
      parentImage: parentImage,
      components: components,
      semanticVersion: semanticVersion,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImageRecipe = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve.</p>"
    )
    imageRecipeArn: imageRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The image recipe object.</p>") imageRecipe: option<imageRecipe>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImageRecipeCommand"
  let make = (~imageRecipeArn, ()) => new({imageRecipeArn: imageRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainerRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The client token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>Identifies which KMS key is used to encrypt the container image.</p>")
    kmsKeyId: option<nonEmptyString>,
    @ocaml.doc("<p>The destination repository for the container image.</p>")
    targetRepository: targetContainerRepository,
    @ocaml.doc("<p>The working directory for use during build and test workflows.</p>")
    workingDirectory: option<nonEmptyString>,
    @ocaml.doc("<p>Tags that are attached to the container recipe.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The source image for the container recipe.</p>") parentImage: nonEmptyString,
    @ocaml.doc("<p>Specifies the operating system version for the source image.</p>")
    imageOsVersionOverride: option<nonEmptyString>,
    @ocaml.doc("<p>Specifies the operating system platform when you use a custom source image.</p>")
    platformOverride: option<platform>,
    @ocaml.doc(
      "<p>The S3 URI for the Dockerfile that will be used to build your container image.</p>"
    )
    dockerfileTemplateUri: option<uri>,
    @ocaml.doc("<p>The Dockerfile template used to build your image as an inline data blob.</p>")
    dockerfileTemplateData: option<inlineDockerFileTemplate>,
    @ocaml.doc(
      "<p>A group of options that can be used to configure an instance for building and testing container images.</p>"
    )
    instanceConfiguration: option<instanceConfiguration>,
    @ocaml.doc("<p>Components for build and test that are included in the container recipe.</p>")
    components: componentConfigurationList,
    @ocaml.doc("<p>The semantic version of the container recipe (<major>.<minor>.<patch>).</p>")
    semanticVersion: versionNumber,
    @ocaml.doc("<p>The description of the container recipe.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The name of the container recipe.</p>") name: resourceName,
    @ocaml.doc("<p>The type of container to create.</p>") containerType: containerType,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns the Amazon Resource Name (ARN) of the container recipe that the request created.</p>"
    )
    containerRecipeArn: option<containerRecipeArn>,
    @ocaml.doc("<p>The client token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateContainerRecipeCommand"
  let make = (
    ~clientToken,
    ~targetRepository,
    ~parentImage,
    ~components,
    ~semanticVersion,
    ~name,
    ~containerType,
    ~kmsKeyId=?,
    ~workingDirectory=?,
    ~tags=?,
    ~imageOsVersionOverride=?,
    ~platformOverride=?,
    ~dockerfileTemplateUri=?,
    ~dockerfileTemplateData=?,
    ~instanceConfiguration=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      kmsKeyId: kmsKeyId,
      targetRepository: targetRepository,
      workingDirectory: workingDirectory,
      tags: tags,
      parentImage: parentImage,
      imageOsVersionOverride: imageOsVersionOverride,
      platformOverride: platformOverride,
      dockerfileTemplateUri: dockerfileTemplateUri,
      dockerfileTemplateData: dockerfileTemplateData,
      instanceConfiguration: instanceConfiguration,
      components: components,
      semanticVersion: semanticVersion,
      description: description,
      name: name,
      containerType: containerType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistributionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token of the distribution configuration.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The distributions of the distribution configuration.</p>")
    distributions: distributionList,
    @ocaml.doc("<p>The description of the distribution configuration.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the distribution configuration that you want to update.</p>"
    )
    distributionConfigurationArn: distributionConfigurationArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration that was updated by this
      request.</p>")
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "UpdateDistributionConfigurationCommand"
  let make = (~clientToken, ~distributions, ~distributionConfigurationArn, ~description=?, ()) =>
    new({
      clientToken: clientToken,
      distributions: distributions,
      description: description,
      distributionConfigurationArn: distributionConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe to retrieve.</p>")
    containerRecipeArn: containerRecipeArn,
  }
  type response = {
    @ocaml.doc("<p>The container recipe object that is returned.</p>")
    containerRecipe: option<containerRecipe>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetContainerRecipeCommand"
  let make = (~containerRecipeArn, ()) => new({containerRecipeArn: containerRecipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistributionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p> The idempotency token of the distribution configuration.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p> The tags of the distribution configuration.</p>") tags: option<tagMap>,
    @ocaml.doc("<p> The distributions of the distribution configuration.</p>")
    distributions: distributionList,
    @ocaml.doc("<p> The description of the distribution configuration.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p> The name of the distribution configuration.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the distribution configuration that was created by this
      request.</p>")
    distributionConfigurationArn: option<distributionConfigurationArn>,
    @ocaml.doc("<p> The idempotency token used to make this request idempotent.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p> The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CreateDistributionConfigurationCommand"
  let make = (~clientToken, ~distributions, ~name, ~tags=?, ~description=?, ()) =>
    new({
      clientToken: clientToken,
      tags: tags,
      distributions: distributions,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImagePipelineImages = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to view.</p>"
    )
    imagePipelineArn: imagePipelineArn,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of images built by this pipeline.</p>")
    imageSummaryList: option<imageSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImagePipelineImagesCommand"
  let make = (~imagePipelineArn, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      imagePipelineArn: imagePipelineArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListImageBuildVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating. This is the NextToken from a previously
      truncated response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum items to return in a request.</p>")
    maxResults: option<restrictedInteger>,
    @ocaml.doc("<p>The filters.</p>") filters: option<filterList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the image whose build versions you want to retrieve.</p>"
    )
    imageVersionArn: imageVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The next token used for paginated responses. When this is not empty, there are additional
      elements that the service has not included in this request. Use this token with the next
      request to retrieve additional objects.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The list of image build versions.</p>")
    imageSummaryList: option<imageSummaryList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "ListImageBuildVersionsCommand"
  let make = (~imageVersionArn, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      imageVersionArn: imageVersionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
      retrieve.</p>")
    distributionConfigurationArn: distributionConfigurationArn,
  }
  type response = {
    @ocaml.doc("<p>The distribution configuration object.</p>")
    distributionConfiguration: option<distributionConfiguration>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "GetDistributionConfigurationCommand"
  let make = (~distributionConfigurationArn, ()) =>
    new({distributionConfigurationArn: distributionConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetImage = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image that you want to retrieve.</p>")
    imageBuildVersionArn: imageVersionArnOrBuildVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The image object.</p>") image: option<image>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "GetImageCommand"
  let make = (~imageBuildVersionArn, ()) => new({imageBuildVersionArn: imageBuildVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
