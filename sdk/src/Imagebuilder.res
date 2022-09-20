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
type userDataOverride = string
type uri = string
type timezone = string
type targetResourceCount = int
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
type organizationalUnitArn = string
type organizationArn = string
type nullableBoolean = bool
type nonEmptyString = string
type maxParallelLaunches = int
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
type httpTokens = string
type httpPutResponseHopLimit = int
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
type ebsVolumeThroughput = int
type ebsVolumeSizeInteger = int
type ebsIopsInteger = int
type dockerFileTemplate = string
type distributionTimeoutMinutes = int
type distributionConfigurationArn = string
type diskImageFormat = [@as("VHD") #VHD | @as("RAW") #RAW | @as("VMDK") #VMDK]
type dateTime = string
type containerType = [@as("DOCKER") #DOCKER]
type containerRepositoryService = [@as("ECR") #ECR]
type containerRecipeArn = string
type componentVersionArnOrBuildVersionArn = string
type componentVersionArn = string
type componentType = [@as("TEST") #TEST | @as("BUILD") #BUILD]
type componentStatus = [@as("DEPRECATED") #DEPRECATED]
type componentParameterValue = string
type componentParameterType = string
type componentParameterName = string
type componentParameterDescription = string
type componentFormat = [@as("SHELL") #SHELL]
type componentData = string
type componentBuildVersionArn = string
type clientToken = string
type buildType = [
  | @as("IMPORT") #IMPORT
  | @as("SCHEDULED") #SCHEDULED
  | @as("USER_INITIATED") #USER_INITIATED
]
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
@ocaml.doc("<p>Contains settings for the Systems Manager agent on your build instance.</p>")
type systemsManagerAgent = {
  @ocaml.doc("<p>Controls whether the Systems Manager agent is removed from your final build image, prior to creating 
			the new AMI. If this is set to true, then the agent is removed from the final image. If it's 
			set to false, then the agent is left in, so that it is included in the new AMI. The default 
			value is false.</p>")
  uninstallAfterBuild: option<nullableBoolean>,
}
type stringList = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
@ocaml.doc(
  "<p>A schedule configures how often and when a pipeline will automatically create a new image.</p>"
)
type schedule = {
  @ocaml.doc("<p>The condition configures when the pipeline should trigger a new image build. When the
			<code>pipelineExecutionStartCondition</code> is set to
			<code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code>, and you use semantic version
			filters on the base image or components in your image recipe, EC2 Image Builder will build a
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
  @ocaml.doc("<p>The Amazon S3 path to the bucket where the logs are stored.</p>")
  s3KeyPrefix: option<nonEmptyString>,
  @ocaml.doc("<p>The S3 bucket in which to store the logs.</p>")
  s3BucketName: option<nonEmptyString>,
}
@ocaml.doc("<p>Properties that configure export from your build instance 
			to a compatible file format for your VM.</p>")
type s3ExportConfiguration = {
  @ocaml.doc(
    "<p>The Amazon S3 path for the bucket where the output disk images for your VM are stored.</p>"
  )
  s3Prefix: option<nonEmptyString>,
  @ocaml.doc("<p>The S3 bucket in which to store the output disk images for your VM.</p>")
  s3Bucket: nonEmptyString,
  @ocaml.doc("<p>Export the updated image to one of the following supported disk 
			image formats:</p>
		       <ul>
            <li>
				           <p>
                  <b>Virtual Hard Disk (VHD)</b> – 
					Compatible with Citrix Xen and Microsoft Hyper-V virtualization products.</p>
			         </li>
            <li>
				           <p>
                  <b>Stream-optimized ESX Virtual Machine Disk 
					(VMDK)</b> – Compatible with VMware ESX and 
					VMware vSphere versions 4, 5, and 6.</p>
			         </li>
            <li>
				           <p>
                  <b>Raw</b> – Raw format.</p>
			         </li>
         </ul>")
  diskImageFormat: diskImageFormat,
  @ocaml.doc("<p>The name of the role that grants VM Import/Export permission to 
			export images to your S3 bucket.</p>")
  roleName: nonEmptyString,
}
type resourceTagMap = Js.Dict.t<tagValue>
type regionList = array<nonEmptyString>
type osVersionList = array<osVersion>
type organizationalUnitArnList = array<organizationalUnitArn>
type organizationArnList = array<organizationArn>
type licenseConfigurationArnList = array<licenseConfigurationArn>
@ocaml.doc("<p>Identifies an Amazon EC2 launch template to use for a specific account.</p>")
type launchTemplateConfiguration = {
  @ocaml.doc(
    "<p>Set the specified Amazon EC2 launch template as the default launch template for the specified account.</p>"
  )
  setDefaultVersion: option<boolean_>,
  @ocaml.doc("<p>The account ID that this configuration applies to.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>Identifies the Amazon EC2 launch template to use.</p>")
  launchTemplateId: launchTemplateId,
}
type instanceTypeList = array<instanceType>
@ocaml.doc("<p>The instance metadata options that apply to the HTTP requests that 
			pipeline builds use to launch EC2 build and test instances. For more 
			information about instance metadata options, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html\">Configure 
				the instance metadata options</a> in the <i>
               <i>Amazon EC2 User Guide</i>
            </i> 
			for Linux instances, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html\">Configure 
				the instance metadata options</a> in the <i>
               <i>Amazon EC2 Windows Guide</i>
            </i> 
			for Windows instances.</p>")
type instanceMetadataOptions = {
  @ocaml.doc("<p>Limit the number of hops that an instance metadata request can traverse to reach its
			destination.</p>")
  httpPutResponseHopLimit: option<httpPutResponseHopLimit>,
  @ocaml.doc("<p>Indicates whether a signed token header is required for instance metadata retrieval requests. 
			The values affect the response as follows:</p>
		       <ul>
            <li>
				           <p>
                  <b>required</b> – When you retrieve the 
					IAM role credentials, version 2.0 credentials are returned in all cases.</p>
			         </li>
            <li>
				           <p>
                  <b>optional</b> – You can include a signed token header
					in your request to retrieve instance metadata, or you can leave it out. If you
					include it, version 2.0 credentials are returned for the IAM role. Otherwise,
					version 1.0 credentials are returned.</p>
			         </li>
         </ul>
		       <p>The default setting is <b>optional</b>.</p>")
  httpTokens: option<httpTokens>,
}
@ocaml.doc("<p>The defining characteristics of a specific version of an Image Builder image.</p>")
type imageVersion = {
  @ocaml.doc("<p>Indicates the type of build that created this image. The build can be initiated  
			in the following ways:</p>
		       <ul>
            <li>
				           <p>
                  <b>USER_INITIATED</b> – A manual 
					pipeline build request.</p>
			         </li>
            <li>
				           <p>
                  <b>SCHEDULED</b> – A pipeline build 
					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
			         </li>
            <li>
				           <p>
                  <b>IMPORT</b> – A VM import created 
					the image to use as the base image for the recipe.</p>
			         </li>
         </ul>")
  buildType: option<buildType>,
  @ocaml.doc(
    "<p>The date on which this specific version of the Image Builder image was created.</p>"
  )
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The owner of the image version.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The operating system version of the Amazon EC2 build instance. For example, Amazon Linux 2, Ubuntu 18, or
			Microsoft Windows Server 2019.</p>")
  osVersion: option<osVersion>,
  @ocaml.doc("<p>The platform of the image version, for example \"Windows\" or \"Linux\".</p>")
  platform: option<platform>,
  @ocaml.doc("<p>Details for a specific version of an Image Builder image. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
  version: option<versionNumber>,
  @ocaml.doc("<p>Specifies whether this image is an AMI or a container image.</p>") @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The name of this specific version of an Image Builder image.</p>")
  name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a specific version of an Image Builder image.</p>
		       <note>
			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
	at the level that applies to that object as follows:</p> 
	           <ol>
               <li>
			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
		             </li>
               <li>
			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
		             </li>
               <li>
			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
		             </li>
            </ol>
		       </note>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>Configure image tests for your pipeline build. Tests run after building 
			the image, to verify that the AMI or container image is valid before 
			distributing it.</p>")
type imageTestsConfiguration = {
  @ocaml.doc("<p>The maximum time in minutes that tests are permitted to run.</p>")
  timeoutMinutes: option<imageTestsTimeoutMinutes>,
  @ocaml.doc("<p>Determines if tests should run after building the image. Image Builder defaults 
			to enable tests to run following the image build, before image distribution.</p>")
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
@ocaml.doc("<p>Configuration settings for creating and managing pre-provisioned snapshots 
			for a fast-launch enabled Windows AMI.</p>")
type fastLaunchSnapshotConfiguration = {
  @ocaml.doc("<p>The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled 
			Windows AMI.</p>")
  targetResourceCount: option<targetResourceCount>,
}
@ocaml.doc("<p>Identifies the launch template that the associated Windows AMI uses for 
			launching an instance when faster launching is enabled.</p>
		       <note>
			         <p>You can specify either the <code>launchTemplateName</code> or the 
				<code>launchTemplateId</code>, but not both.</p>
		       </note>")
type fastLaunchLaunchTemplateSpecification = {
  @ocaml.doc(
    "<p>The version of the launch template to use for faster launching for a Windows AMI.</p>"
  )
  launchTemplateVersion: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The name of the launch template to use for faster launching for a Windows AMI.</p>"
  )
  launchTemplateName: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the launch template to use for faster launching for a Windows AMI.</p>")
  launchTemplateId: option<launchTemplateId>,
}
@ocaml.doc("<p>Amazon EBS-specific block device mapping specifications.</p>")
type ebsInstanceBlockDeviceSpecification = {
  @ocaml.doc("<p>
            <b>For GP3 volumes only</b> – 
			The throughput in MiB/s that the volume supports. </p>")
  throughput: option<ebsVolumeThroughput>,
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
@ocaml.doc("<p>A group of fields that describe the current status of components 
			that are no longer active.</p>")
type componentState = {
  @ocaml.doc("<p>Describes how or why the component changed state.</p>")
  reason: option<nonEmptyString>,
  @ocaml.doc("<p>The current state of the component.</p>") status: option<componentStatus>,
}
type componentParameterValueList = array<componentParameterValue>
type accountList = array<accountId>
@ocaml.doc("<p>Logging configuration defines where Image Builder uploads your logs.</p>")
type logging = {@ocaml.doc("<p>The Amazon S3 logging configuration.</p>") s3Logs: option<s3Logs>}
type launchTemplateConfigurationList = array<launchTemplateConfiguration>
@ocaml.doc("<p>Describes the configuration for a launch permission. The launch permission modification 
			request is sent to the <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">Amazon EC2 ModifyImageAttribute</a> 
			API on behalf of the user for each Region they have selected to distribute the AMI. To make an AMI public, 
			set the launch permission authorized accounts to <code>all</code>. See the examples for making an AMI 
			public at <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">Amazon EC2 ModifyImageAttribute</a>.</p>")
type launchPermissionConfiguration = {
  @ocaml.doc("<p>The ARN for an Organizations organizational unit (OU) that you want to share your AMI with. For more 
			information about key concepts for Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html\">Organizations terminology and concepts</a>.</p>")
  organizationalUnitArns: option<organizationalUnitArnList>,
  @ocaml.doc("<p>The ARN for an Amazon Web Services Organization that you want to share your AMI with. For more information, see 
			<a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html\">What is Organizations?</a>.</p>")
  organizationArns: option<organizationArnList>,
  @ocaml.doc("<p>The name of the group.</p>") userGroups: option<stringList>,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") userIds: option<accountList>,
}
@ocaml.doc("<p>Defines block device mappings for the instance used to configure your image.</p>")
type instanceBlockDeviceMapping = {
  @ocaml.doc("<p>Use to remove a mapping from the base image.</p>") noDevice: option<emptyString>,
  @ocaml.doc("<p>Use to manage instance ephemeral devices.</p>")
  virtualName: option<nonEmptyString>,
  @ocaml.doc("<p>Use to manage Amazon EBS-specific configuration for this mapping.</p>")
  ebs: option<ebsInstanceBlockDeviceSpecification>,
  @ocaml.doc("<p>The device to which these mappings apply.</p>") deviceName: option<nonEmptyString>,
}
@ocaml.doc("<p>The infrastructure used when building Amazon EC2 AMIs.</p>")
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
  @ocaml.doc("<p>The base image of the image recipe.</p>") parentImage: option<nonEmptyString>,
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
@ocaml.doc("<p>Define and configure faster launching for output Windows AMIs.</p>")
type fastLaunchConfiguration = {
  @ocaml.doc("<p>The owner account ID for the fast-launch enabled Windows AMI.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The launch template that the fast-launch enabled Windows AMI uses when it 
			launches Windows instances to create pre-provisioned snapshots.</p>")
  launchTemplate: option<fastLaunchLaunchTemplateSpecification>,
  @ocaml.doc("<p>The maximum number of parallel instances that are launched for creating 
			resources.</p>")
  maxParallelLaunches: option<maxParallelLaunches>,
  @ocaml.doc("<p>Configuration settings for managing the number of snapshots that are 
			created from pre-provisioned instances for the Windows AMI when faster 
			launching is enabled.</p>")
  snapshotConfiguration: option<fastLaunchSnapshotConfiguration>,
  @ocaml.doc("<p>A Boolean that represents the current state of faster launching for the 
			Windows AMI. Set to <code>true</code> to start using Windows faster launching, or 
			<code>false</code> to stop using it.</p>")
  enabled: boolean_,
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
  @ocaml.doc("<p>The base image for the container recipe.</p>") parentImage: option<nonEmptyString>,
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
@ocaml.doc(
  "<p>The defining characteristics of a specific version of an Amazon Web Services TOE component.</p>"
)
type componentVersion = {
  @ocaml.doc("<p>The date that the component was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The owner of the component.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image or only
			to test it.</p>")
  @as("type")
  type_: option<componentType>,
  @ocaml.doc("<p>he operating system (OS) version supported by the component. If the OS information is
			available, a prefix match is performed against the base image OS version during image recipe
			creation.</p>")
  supportedOsVersions: option<osVersionList>,
  @ocaml.doc("<p>The platform of the component.</p>") platform: option<platform>,
  @ocaml.doc("<p>The description of the component.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The semantic version of the component.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
  version: option<versionNumber>,
  @ocaml.doc("<p>The name of the component.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>
		       <note>
			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
	at the level that applies to that object as follows:</p> 
	           <ol>
               <li>
			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
		             </li>
               <li>
			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
		             </li>
               <li>
			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
		             </li>
            </ol>
		       </note>")
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
  @ocaml.doc("<p>Describes the current status of the component.</p>") state: option<componentState>,
  @ocaml.doc("<p>The operating system (OS) version supported by the component. If the OS information is
			available, a prefix match is performed against the base image OS version during image recipe
			creation.</p>")
  supportedOsVersions: option<osVersionList>,
  @ocaml.doc("<p>The platform of the component.</p>") platform: option<platform>,
  @ocaml.doc("<p>The version of the component.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The name of the component.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc(
  "<p>Defines a parameter that is used to provide configuration details for the component.</p>"
)
type componentParameterDetail = {
  @ocaml.doc("<p>Describes this parameter.</p>") description: option<componentParameterDescription>,
  @ocaml.doc("<p>The default value of this parameter if no input is provided.</p>")
  defaultValue: option<componentParameterValueList>,
  @ocaml.doc(
    "<p>The type of input this parameter provides. The currently supported value is \"string\".</p>"
  )
  @as("type")
  type_: componentParameterType,
  @ocaml.doc("<p>The name of this input parameter.</p>") name: componentParameterName,
}
@ocaml.doc("<p>Contains a key/value pair that sets the named component parameter.</p>")
type componentParameter = {
  @ocaml.doc("<p>Sets the value for the named component parameter.</p>")
  value: componentParameterValueList,
  @ocaml.doc("<p>The name of the component parameter to set.</p>") name: componentParameterName,
}
@ocaml.doc("<p> Details of an Amazon EC2 AMI.</p>")
type ami = {
  @ocaml.doc("<p>The account ID of the owner of the AMI.</p>") accountId: option<nonEmptyString>,
  state: option<imageState>,
  @ocaml.doc(
    "<p>The description of the Amazon EC2 AMI. Minimum and maximum length are in characters.</p>"
  )
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Amazon EC2 AMI.</p>") name: option<nonEmptyString>,
  @ocaml.doc("<p>The AMI ID of the Amazon EC2 AMI.</p>") image: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Web Services Region of the Amazon EC2 AMI.</p>")
  region: option<nonEmptyString>,
}
@ocaml.doc("<p>In addition to your infrastruction configuration, these settings provide an extra layer of
			control over your build instances. For instances where Image Builder installs the Systems Manager agent,
			you can choose whether to keep it for the AMI that you create. You can also specify commands 
			to run on launch for all of your build instances.</p>")
type additionalInstanceConfiguration = {
  @ocaml.doc("<p>Use this property to provide commands or a command script to run when you launch 
			your build instance.</p>
		       <p>The userDataOverride property replaces any commands that Image Builder might have added to ensure
			that Systems Manager is installed on your Linux build instance. If you override the user data,
			make sure that you add commands to install Systems Manager, if it is not pre-installed on your
			base image.</p>
		       <note>
			         <p>The user data is always base 64 encoded. For example, the 
				following commands are encoded as <code>IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$</code>:</p>
			
			         <p>
               <i>#!/bin/bash</i>
            </p>
			         <p>mkdir -p /var/bb/</p>
			         <p>touch /var</p>
		       </note>")
  userDataOverride: option<userDataOverride>,
  @ocaml.doc("<p>Contains settings for the Systems Manager agent on your build instance.</p>")
  systemsManagerAgent: option<systemsManagerAgent>,
}
type instanceBlockDeviceMappings = array<instanceBlockDeviceMapping>
type infrastructureConfigurationSummaryList = array<infrastructureConfigurationSummary>
@ocaml.doc("<p>Details of the infrastructure configuration.</p>")
type infrastructureConfiguration = {
  @ocaml.doc("<p>The tags of the infrastructure configuration.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The instance metadata option settings for the infrastructure configuration.</p>")
  instanceMetadataOptions: option<instanceMetadataOptions>,
  @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
  resourceTags: option<resourceTagMap>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was last updated.</p>")
  dateUpdated: option<dateTime>,
  @ocaml.doc("<p>The date on which the infrastructure configuration was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
		       <note>
			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
				account that the Image Builder service runs under.</p>
		       </note>")
  snsTopicArn: option<nonEmptyString>,
  @ocaml.doc("<p>The terminate instance on failure configuration of the infrastructure
			configuration.</p>")
  terminateInstanceOnFailure: option<nullableBoolean>,
  @ocaml.doc("<p>The Amazon EC2 key pair of the infrastructure configuration.</p>")
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
type fastLaunchConfigurationList = array<fastLaunchConfiguration>
type distributionConfigurationSummaryList = array<distributionConfigurationSummary>
type containerRecipeSummaryList = array<containerRecipeSummary>
type containerList = array<container>
type componentVersionList = array<componentVersion>
type componentSummaryList = array<componentSummary>
type componentParameterList = array<componentParameter>
type componentParameterDetailList = array<componentParameterDetail>
type amiList = array<ami>
@ocaml.doc("<p> Define and configure the output AMIs of the pipeline.</p>")
type amiDistributionConfiguration = {
  @ocaml.doc("<p> Launch permissions can be used to configure which Amazon Web Services accounts can use the AMI to launch
			instances.</p>")
  launchPermission: option<launchPermissionConfiguration>,
  @ocaml.doc("<p>The KMS key identifier used to encrypt the distributed image.</p>")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>The tags to apply to AMIs distributed to this Region.</p>")
  amiTags: option<tagMap>,
  @ocaml.doc("<p>The ID of an account to which you want to distribute an image.</p>")
  targetAccountIds: option<accountList>,
  @ocaml.doc(
    "<p>The description of the AMI distribution configuration. Minimum and maximum length are in characters.</p>"
  )
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the output AMI.</p>") name: option<amiNameString>,
}
@ocaml.doc("<p>The resources produced by this image.</p>")
type outputResources = {
  @ocaml.doc(
    "<p>Container images that the pipeline has generated and stored in the output repository.</p>"
  )
  containers: option<containerList>,
  @ocaml.doc("<p>The Amazon EC2 AMIs created by this image.</p>") amis: option<amiList>,
}
@ocaml.doc("<p>Defines a custom base AMI and block device mapping configurations of an instance 
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
@ocaml.doc("<p> Defines the settings for a specific Region.</p>")
type distribution = {
  @ocaml.doc("<p>The Windows faster-launching configurations to use for AMI distribution.</p>")
  fastLaunchConfigurations: option<fastLaunchConfigurationList>,
  @ocaml.doc("<p>Configure export settings to deliver disk images created from your image build, 
			using a file format that is compatible with your VMs in that Region.</p>")
  s3ExportConfiguration: option<s3ExportConfiguration>,
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
@ocaml.doc("<p> Configuration details of the component.</p>")
type componentConfiguration = {
  @ocaml.doc(
    "<p>A group of parameter settings that are used to configure the component for a specific recipe.</p>"
  )
  parameters: option<componentParameterList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the component.</p>")
  componentArn: componentVersionArnOrBuildVersionArn,
}
@ocaml.doc("<p>A detailed view of a component.</p>")
type component = {
  @ocaml.doc("<p>The tags associated with the component.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date that the component was created.</p>") dateCreated: option<dateTime>,
  @ocaml.doc("<p>The encryption status of the component.</p>") encrypted: option<nullableBoolean>,
  @ocaml.doc("<p>The KMS key identifier used to encrypt the component.</p>")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Component data contains the YAML document content for the component.</p>")
  data: option<componentData>,
  @ocaml.doc("<p>The owner of the component.</p>") owner: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Contains parameter details for each of the parameters that are defined for the component.</p>"
  )
  parameters: option<componentParameterDetailList>,
  @ocaml.doc("<p>Describes the current status of the component. This is used for 
			components that are no longer active.</p>")
  state: option<componentState>,
  @ocaml.doc("<p>The operating system (OS) version supported by the component. If the OS information is
			available, a prefix match is performed against the base image OS version during image recipe
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
@ocaml.doc("<p>An image summary.</p>")
type imageSummary = {
  @ocaml.doc("<p>Indicates the type of build that created this image. The build can be initiated  
			in the following ways:</p>
		       <ul>
            <li>
				           <p>
                  <b>USER_INITIATED</b> – A manual 
					pipeline build request.</p>
			         </li>
            <li>
				           <p>
                  <b>SCHEDULED</b> – A pipeline build 
					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
			         </li>
            <li>
				           <p>
                  <b>IMPORT</b> – A VM import created 
					the image to use as the base image for the recipe.</p>
			         </li>
         </ul>")
  buildType: option<buildType>,
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
type componentConfigurationList = array<componentConfiguration>
type imageSummaryList = array<imageSummary>
@ocaml.doc("<p>An image recipe.</p>")
type imageRecipe = {
  @ocaml.doc("<p>Before you create a new AMI, Image Builder launches temporary Amazon EC2 instances to 
			build and test your image configuration. Instance configuration adds a layer 
			of control over those instances. You can define settings and add scripts to 
			run when an instance is launched from your AMI.</p>")
  additionalInstanceConfiguration: option<additionalInstanceConfiguration>,
  @ocaml.doc("<p>The working directory to be used during build and test workflows.</p>")
  workingDirectory: option<nonEmptyString>,
  @ocaml.doc("<p>The tags of the image recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date on which this image recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The block device mappings to apply when creating images from this recipe.</p>")
  blockDeviceMappings: option<instanceBlockDeviceMappings>,
  @ocaml.doc("<p>The base image of the image recipe.</p>") parentImage: option<nonEmptyString>,
  @ocaml.doc("<p>The components of the image recipe.</p>")
  components: option<componentConfigurationList>,
  @ocaml.doc("<p>The version of the image recipe.</p>") version: option<versionNumber>,
  @ocaml.doc("<p>The owner of the image recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The platform of the image recipe.</p>") platform: option<platform>,
  @ocaml.doc("<p>The description of the image recipe.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the image recipe.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies which type of image is created by the recipe - an AMI or a 
			container image.</p>")
  @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image recipe.</p>")
  arn: option<imageBuilderArn>,
}
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
@ocaml.doc("<p>A container recipe.</p>")
type containerRecipe = {
  @ocaml.doc("<p>The destination repository for the container image.</p>")
  targetRepository: option<targetContainerRepository>,
  @ocaml.doc("<p>The working directory for use during build and test workflows.</p>")
  workingDirectory: option<nonEmptyString>,
  @ocaml.doc("<p>Tags that are attached to the container recipe.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The date when this container recipe was created.</p>")
  dateCreated: option<dateTime>,
  @ocaml.doc("<p>The base image for the container recipe.</p>") parentImage: option<nonEmptyString>,
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
  @ocaml.doc("<p>The semantic version of the container recipe.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
  version: option<versionNumber>,
  @ocaml.doc("<p>The owner of the container recipe.</p>") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The system platform for the container, such as Windows or Linux.</p>")
  platform: option<platform>,
  @ocaml.doc("<p>The description of the container recipe.</p>") description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the container recipe.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies the type of container, such as Docker.</p>")
  containerType: option<containerType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container recipe.</p>
		       <note>
			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
	at the level that applies to that object as follows:</p> 
	           <ol>
               <li>
			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
		             </li>
               <li>
			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
		             </li>
               <li>
			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
		             </li>
            </ol>
		       </note>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>An Image Builder image. You must specify exactly one recipe for the image – either 
			a container recipe (<code>containerRecipe</code>), which creates a container 
			image, or an image recipe (<code>imageRecipe</code>), which creates an AMI.</p>")
type image = {
  @ocaml.doc("<p>Indicates the type of build that created this image. The build can be initiated  
			in the following ways:</p>
		       <ul>
            <li>
				           <p>
                  <b>USER_INITIATED</b> – A manual 
					pipeline build request.</p>
			         </li>
            <li>
				           <p>
                  <b>SCHEDULED</b> – A pipeline build 
					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
			         </li>
            <li>
				           <p>
                  <b>IMPORT</b> – A VM import created 
					the image to use as the base image for the recipe.</p>
			         </li>
         </ul>")
  buildType: option<buildType>,
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
  @ocaml.doc("<p>The recipe that is used to create an Image Builder container image.</p>")
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
  @ocaml.doc("<p>The semantic version of the image.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
  version: option<versionNumber>,
  @ocaml.doc("<p>The name of the image.</p>") name: option<resourceName>,
  @ocaml.doc("<p>Specifies whether this is an AMI or container image.</p>") @as("type")
  type_: option<imageType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the image.</p>
		       <note>
			         <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
	at the level that applies to that object as follows:</p> 
	           <ol>
               <li>
			               <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
		             </li>
               <li>
			               <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
		             </li>
               <li>
			               <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
		             </li>
            </ol>
		       </note>")
  arn: option<imageBuilderArn>,
}
@ocaml.doc("<p>EC2 Image Builder is a fully managed Amazon Web Services service that makes it easier to automate the 
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
  let make = (~clientToken, ~imagePipelineArn, ()) => new({clientToken, imagePipelineArn})
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
  let make = (~policy, ~imageRecipeArn, ()) => new({policy, imageRecipeArn})
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
  let make = (~policy, ~imageArn, ()) => new({policy, imageArn})
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
  let make = (~policy, ~containerRecipeArn, ()) => new({policy, containerRecipeArn})
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
  let make = (~policy, ~componentArn, ()) => new({policy, componentArn})
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
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Image Builder image resource to delete.</p>"
    )
    imageBuildVersionArn: imageBuildVersionArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Image Builder image resource that was deleted.</p>"
    )
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
    @ocaml.doc("<p>Unique, case-sensitive identifier you provide to ensure
       idempotency of the request. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a> 
       in the <i>Amazon EC2 API Reference</i>.</p>")
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
    @ocaml.doc("<p>The idempotency token that was used for this request.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new
  external new: request => t = "CancelImageCreationCommand"
  let make = (~clientToken, ~imageBuildVersionArn, ()) => new({clientToken, imageBuildVersionArn})
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
      clientToken,
      status,
      schedule,
      enhancedImageMetadataEnabled,
      imageTestsConfiguration,
      distributionConfigurationArn,
      infrastructureConfigurationArn,
      containerRecipeArn,
      imageRecipeArn,
      description,
      imagePipelineArn,
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
  type response = {.}
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>")
    resourceArn: imageBuilderArn,
  }
  type response = {.}
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
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
module ImportVmImage = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, case-sensitive identifier you provide to ensure
       idempotency of the request. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Ensuring idempotency</a> 
       in the <i>Amazon EC2 API Reference</i>.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>Tags that are attached to the import resources.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The <code>importTaskId</code> (API) or <code>ImportTaskId</code> (CLI) from the 
			Amazon EC2 VM import process. Image Builder retrieves information from the import process to pull 
			in the AMI that is created from the VM source as the base image for your recipe.</p>")
    vmImportTaskId: nonEmptyString,
    @ocaml.doc("<p>The operating system version for the imported VM.</p>")
    osVersion: option<osVersion>,
    @ocaml.doc("<p>The operating system platform for the imported VM.</p>") platform: platform,
    @ocaml.doc("<p>The description for the base image that is created by the import process.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The semantic version to attach to the base image that was created during the 
			import process. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
		       </note>")
    semanticVersion: versionNumber,
    @ocaml.doc("<p>The name of the base image that is created by the import process.</p>")
    name: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The idempotency token that was used for this request.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AMI that was created during the VM 
			import process. This AMI is used as the base image for the recipe that 
			imported the VM.</p>")
    imageArn: option<arn>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ImportVmImageCommand"
  let make = (
    ~clientToken,
    ~vmImportTaskId,
    ~platform,
    ~semanticVersion,
    ~name,
    ~tags=?,
    ~osVersion=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken,
      tags,
      vmImportTaskId,
      osVersion,
      platform,
      description,
      semanticVersion,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportComponent = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token of the component.</p>") clientToken: clientToken,
    @ocaml.doc("<p>The tags of the component.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ID of the KMS key that should be used to encrypt this component.</p>")
    kmsKeyId: option<nonEmptyString>,
    @ocaml.doc("<p>The uri of the component. Must be an Amazon S3 URL and the requester must have permission to
			access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your service
			quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the
			component.</p>")
    uri: option<uri>,
    @ocaml.doc("<p>The data of the component. Used to specify the data inline. Either <code>data</code> or
			<code>uri</code> can be used to specify the data within the component.</p>")
    data: option<nonEmptyString>,
    @ocaml.doc("<p>The platform of the component.</p>") platform: platform,
    @ocaml.doc("<p>The format of the resource that you want to import as a component.</p>")
    format: componentFormat,
    @ocaml.doc("<p>The type of the component denotes whether the component is used to build the image, or only
			to test it.</p>")
    @as("type")
    type_: componentType,
    @ocaml.doc("<p>The change description of the component. Describes what change has been made in this
			version, or what makes this version different from other versions of this component.</p>")
    changeDescription: option<nonEmptyString>,
    @ocaml.doc("<p>The description of the component. Describes the contents of the component.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The semantic version of the component. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
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
      clientToken,
      tags,
      kmsKeyId,
      uri,
      data,
      platform,
      format,
      type_,
      changeDescription,
      description,
      semanticVersion,
      name,
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
      clientToken,
      tags,
      status,
      schedule,
      enhancedImageMetadataEnabled,
      imageTestsConfiguration,
      distributionConfigurationArn,
      infrastructureConfigurationArn,
      containerRecipeArn,
      imageRecipeArn,
      description,
      name,
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
      clientToken,
      tags,
      enhancedImageMetadataEnabled,
      imageTestsConfiguration,
      infrastructureConfigurationArn,
      distributionConfigurationArn,
      containerRecipeArn,
      imageRecipeArn,
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
    @ocaml.doc("<p>The <code>uri</code> of a YAML component document file. This must be an S3 URL 
			(<code>s3://bucket/key</code>), and the requester must have permission to access 
			the S3 bucket it points to. If you use Amazon S3, you can specify component content 
			up to your service quota.</p>
		       <p>Alternatively, you can specify the YAML document inline, using the component 
			<code>data</code> property. You cannot specify both properties.</p>")
    uri: option<uri>,
    @ocaml.doc("<p>Component <code>data</code> contains inline YAML document content for the component. 
			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in 
			Amazon S3. However, you cannot specify both properties.</p>")
    data: option<inlineComponentData>,
    @ocaml.doc("<p> The operating system (OS) version supported by the component. If the OS information is
			available, a prefix match is performed against the base image OS version during image recipe
			creation.</p>")
    supportedOsVersions: option<osVersionList>,
    @ocaml.doc("<p>The platform of the component.</p>") platform: platform,
    @ocaml.doc("<p>The change description of the component. Describes what change has been made in this
			version, or what makes this version different from other versions of this component.</p>")
    changeDescription: option<nonEmptyString>,
    @ocaml.doc("<p>The description of the component. Describes the contents of the component.</p>")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The semantic version of the component. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
		       </note>")
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
      clientToken,
      tags,
      kmsKeyId,
      uri,
      data,
      supportedOsVersions,
      platform,
      changeDescription,
      description,
      semanticVersion,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateInfrastructureConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The instance metadata options that you can set for the HTTP requests that pipeline builds
			use to launch EC2 build and test instances. For more information about instance metadata
			options, see one of the following links:</p>
		       <ul>
            <li>
				           <p>
                  <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html\">Configure 
					the instance metadata options</a> in the <i>
                     <i>Amazon EC2 User Guide</i>
                  </i> 
					for Linux instances.</p>
			         </li>
            <li>
				           <p>
                  <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html\">Configure 
					the instance metadata options</a> in the <i>
                     <i>Amazon EC2 Windows Guide</i>
                  </i> 
					for Windows instances.</p>
			         </li>
         </ul>")
    instanceMetadataOptions: option<instanceMetadataOptions>,
    @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
    resourceTags: option<resourceTagMap>,
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
		       <note>
			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
				account that the Image Builder service runs under.</p>
		       </note>")
    snsTopicArn: option<snsTopicArn>,
    @ocaml.doc("<p>The terminate instance on failure setting of the infrastructure configuration. Set to
			false if you want Image Builder to retain the instance used to configure your AMI if the build
			or test phase of your workflow fails.</p>")
    terminateInstanceOnFailure: option<nullableBoolean>,
    @ocaml.doc("<p>The key pair of the infrastructure configuration. You can use this to log on to and debug
			the instance used to create your image.</p>")
    keyPair: option<nonEmptyString>,
    @ocaml.doc("<p>The logging configuration of the infrastructure configuration.</p>")
    logging: option<logging>,
    @ocaml.doc(
      "<p>The subnet ID to place the instance used to customize your Amazon EC2 AMI in.</p>"
    )
    subnetId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>"
    )
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc(
      "<p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>"
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
    ~instanceMetadataOptions=?,
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
      instanceMetadataOptions,
      resourceTags,
      clientToken,
      snsTopicArn,
      terminateInstanceOnFailure,
      keyPair,
      logging,
      subnetId,
      securityGroupIds,
      instanceProfileName,
      instanceTypes,
      description,
      infrastructureConfigurationArn,
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
    new({nextToken, maxResults, imageBuildVersionArn})
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
module CreateInfrastructureConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>The tags of the infrastructure configuration.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The instance metadata options that you can set for the HTTP requests that 
			pipeline builds use to launch EC2 build and test instances.</p>")
    instanceMetadataOptions: option<instanceMetadataOptions>,
    @ocaml.doc("<p>The tags attached to the resource created by Image Builder.</p>")
    resourceTags: option<resourceTagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event notifications.</p>
		       <note>
			         <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
				account that the Image Builder service runs under.</p>
		       </note>")
    snsTopicArn: option<snsTopicArn>,
    @ocaml.doc("<p>The terminate instance on failure setting of the infrastructure configuration. Set to
			false if you want Image Builder to retain the instance used to configure your AMI if the build
			or test phase of your workflow fails.</p>")
    terminateInstanceOnFailure: option<nullableBoolean>,
    @ocaml.doc("<p>The key pair of the infrastructure configuration. You can use this to log on to and debug
			the instance used to create your image.</p>")
    keyPair: option<nonEmptyString>,
    @ocaml.doc("<p>The logging configuration of the infrastructure configuration.</p>")
    logging: option<logging>,
    @ocaml.doc(
      "<p>The subnet ID in which to place the instance used to customize your Amazon EC2 AMI.</p>"
    )
    subnetId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The security group IDs to associate with the instance used to customize your Amazon EC2 AMI.</p>"
    )
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc(
      "<p>The instance profile to associate with the instance used to customize your Amazon EC2 AMI.</p>"
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
    ~instanceMetadataOptions=?,
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
      clientToken,
      tags,
      instanceMetadataOptions,
      resourceTags,
      snsTopicArn,
      terminateInstanceOnFailure,
      keyPair,
      logging,
      subnetId,
      securityGroupIds,
      instanceProfileName,
      instanceTypes,
      description,
      name,
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
    @ocaml.doc("<p>You can filter on <code>name</code> to streamline results.</p>")
    filters: option<filterList>,
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
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>osVersion</code>
               </p>
            </li>
            <li>
               <p>
                  <code>platform</code>
               </p>
            </li>
            <li>
               <p>
                  <code>type</code>
               </p>
            </li>
            <li>
               <p>
                  <code>version</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
    @ocaml.doc("<p>The list of image semantic versions.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
	to specify the most recent versions or nodes when selecting the base image or components for your 
	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
	wildcards.</p>
		       </note>")
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
  ) => new({includeDeprecated, nextToken, maxResults, byName, filters, owner})
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>parentImage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>platform</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
    new({nextToken, maxResults, filters, owner})
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>description</code>
               </p>
            </li>
            <li>
               <p>
                  <code>distributionConfigurationArn</code>
               </p>
            </li>
            <li>
               <p>
                  <code>imageRecipeArn</code>
               </p>
            </li>
            <li>
               <p>
                  <code>infrastructureConfigurationArn</code>
               </p>
            </li>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>status</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
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
    @ocaml.doc("<p>You can filter on <code>name</code> to streamline results.</p>")
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
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>containerType</code>
               </p>
            </li>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>parentImage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>platform</code>
               </p>
            </li>
         </ul>")
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
    new({nextToken, maxResults, filters, owner})
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
    @ocaml.doc("<p>Returns the list of component build versions for the specified name.</p>")
    byName: option<boolean_>,
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>description</code>
               </p>
            </li>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>platform</code>
               </p>
            </li>
            <li>
               <p>
                  <code>supportedOsVersion</code>
               </p>
            </li>
            <li>
               <p>
                  <code>type</code>
               </p>
            </li>
            <li>
               <p>
                  <code>version</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
    @ocaml.doc("<p>The list of component semantic versions.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
		       </note>")
    componentVersionList: option<componentVersionList>,
    @ocaml.doc("<p>The request ID that uniquely identifies this request.</p>")
    requestId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-imagebuilder") @new external new: request => t = "ListComponentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~byName=?, ~filters=?, ~owner=?, ()) =>
    new({nextToken, maxResults, byName, filters, owner})
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
    new({nextToken, maxResults, componentVersionArn})
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
    new({clientToken, distributions, description, distributionConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateImageRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token used to make this request idempotent.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>Specify additional settings and launch scripts for your build instances.</p>")
    additionalInstanceConfiguration: option<additionalInstanceConfiguration>,
    @ocaml.doc("<p>The working directory used during build and test workflows.</p>")
    workingDirectory: option<nonEmptyString>,
    @ocaml.doc("<p> The tags of the image recipe.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The block device mappings of the image recipe.</p>")
    blockDeviceMappings: option<instanceBlockDeviceMappings>,
    @ocaml.doc("<p>The base image of the image recipe. The value of the string can be the ARN of the base 
			image or an AMI ID. The format for the ARN follows this example: 
			<code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x</code>. 
			You can provide the specific version that you want to use, or you can use a wildcard in 
			all of the fields. If you enter an AMI ID for the string value, you must have access to the AMI, 
			and the AMI must be in the same Region in which you are using Image Builder.</p>")
    parentImage: nonEmptyString,
    @ocaml.doc("<p>The components of the image recipe.</p>") components: componentConfigurationList,
    @ocaml.doc("<p>The semantic version of the image recipe. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
		       </note>")
    semanticVersion: versionNumber,
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
    ~additionalInstanceConfiguration=?,
    ~workingDirectory=?,
    ~tags=?,
    ~blockDeviceMappings=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken,
      additionalInstanceConfiguration,
      workingDirectory,
      tags,
      blockDeviceMappings,
      parentImage,
      components,
      semanticVersion,
      description,
      name,
    })
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
    new({clientToken, tags, distributions, description, name})
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
    @ocaml.doc("<p>The base image for the container recipe.</p>") parentImage: nonEmptyString,
    @ocaml.doc("<p>Specifies the operating system version for the base image.</p>")
    imageOsVersionOverride: option<nonEmptyString>,
    @ocaml.doc("<p>Specifies the operating system platform when you use a custom base image.</p>")
    platformOverride: option<platform>,
    @ocaml.doc(
      "<p>The Amazon S3 URI for the Dockerfile that will be used to build your container image.</p>"
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
    @ocaml.doc("<p>The semantic version of the container recipe. This version follows the semantic version syntax.</p>
		       <note>
			         <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
	You can assign values for the first three, and can filter on all of them.</p>
			         <p>
               <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
	build number to the fourth node.</p>
			         <p>
               <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
	a date, such as 2021.01.01.</p>
		       </note>")
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
      clientToken,
      kmsKeyId,
      targetRepository,
      workingDirectory,
      tags,
      parentImage,
      imageOsVersionOverride,
      platformOverride,
      dockerfileTemplateUri,
      dockerfileTemplateData,
      instanceConfiguration,
      components,
      semanticVersion,
      description,
      name,
      containerType,
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>version</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
    new({nextToken, maxResults, filters, imagePipelineArn})
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
    @ocaml.doc("<p>Use the following filters to streamline results:</p>
		       <ul>
            <li>
               <p>
                  <code>name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>osVersion</code>
               </p>
            </li>
            <li>
               <p>
                  <code>platform</code>
               </p>
            </li>
            <li>
               <p>
                  <code>type</code>
               </p>
            </li>
            <li>
               <p>
                  <code>version</code>
               </p>
            </li>
         </ul>")
    filters: option<filterList>,
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
    new({nextToken, maxResults, filters, imageVersionArn})
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
