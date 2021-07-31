type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-opsworks") @new
external createClient: unit => awsServiceClient = "OpsWorksClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type volumeType = [@as("standard") #Standard | @as("io1") #Io1 | @as("gp2") #Gp2]
type virtualizationType = [@as("hvm") #Hvm | @as("paravirtual") #Paravirtual]
type validForInMinutes = int
type tagValue = string
type tagKey = string
type switch_ = string
type string_ = string
type stackAttributesKeys = [@as("Color") #Color]
type sourceType = [@as("s3") #S3 | @as("archive") #Archive | @as("svn") #Svn | @as("git") #Git]
type rootDeviceType = [@as("instance-store") #Instance_Store | @as("ebs") #Ebs]
type resourceArn = string
type nextToken = string
type minute = int
type maxResults = int
type layerType = [
  | @as("custom") #Custom
  | @as("monitoring-master") #Monitoring_Master
  | @as("db-master") #Db_Master
  | @as("memcached") #Memcached
  | @as("nodejs-app") #Nodejs_App
  | @as("rails-app") #Rails_App
  | @as("php-app") #Php_App
  | @as("web") #Web
  | @as("lb") #Lb
  | @as("java-app") #Java_App
  | @as("ecs-cluster") #Ecs_Cluster
  | @as("aws-flow-ruby") #Aws_Flow_Ruby
]
type layerAttributesKeys = [
  | @as("JavaAppServerVersion") #JavaAppServerVersion
  | @as("JavaAppServer") #JavaAppServer
  | @as("JvmOptions") #JvmOptions
  | @as("JvmVersion") #JvmVersion
  | @as("Jvm") #Jvm
  | @as("PassengerVersion") #PassengerVersion
  | @as("RailsStack") #RailsStack
  | @as("BundlerVersion") #BundlerVersion
  | @as("ManageBundler") #ManageBundler
  | @as("RubygemsVersion") #RubygemsVersion
  | @as("RubyVersion") #RubyVersion
  | @as("NodejsVersion") #NodejsVersion
  | @as("MemcachedMemory") #MemcachedMemory
  | @as("GangliaPassword") #GangliaPassword
  | @as("GangliaUser") #GangliaUser
  | @as("GangliaUrl") #GangliaUrl
  | @as("MysqlRootPasswordUbiquitous") #MysqlRootPasswordUbiquitous
  | @as("MysqlRootPassword") #MysqlRootPassword
  | @as("HaproxyHealthCheckMethod") #HaproxyHealthCheckMethod
  | @as("HaproxyHealthCheckUrl") #HaproxyHealthCheckUrl
  | @as("HaproxyStatsPassword") #HaproxyStatsPassword
  | @as("HaproxyStatsUser") #HaproxyStatsUser
  | @as("HaproxyStatsUrl") #HaproxyStatsUrl
  | @as("EnableHaproxyStats") #EnableHaproxyStats
  | @as("EcsClusterArn") #EcsClusterArn
]
type integer_ = int
type hour = string
type double = float
type deploymentCommandName = [
  | @as("undeploy") #Undeploy
  | @as("restart") #Restart
  | @as("stop") #Stop
  | @as("start") #Start
  | @as("rollback") #Rollback
  | @as("deploy") #Deploy
  | @as("setup") #Setup
  | @as("configure") #Configure
  | @as("execute_recipes") #Execute_Recipes
  | @as("update_custom_cookbooks") #Update_Custom_Cookbooks
  | @as("update_dependencies") #Update_Dependencies
  | @as("install_dependencies") #Install_Dependencies
]
type dateTime = string
type cloudWatchLogsTimeZone = [@as("UTC") #UTC | @as("LOCAL") #LOCAL]
type cloudWatchLogsInitialPosition = [
  | @as("end_of_file") #End_Of_File
  | @as("start_of_file") #Start_Of_File
]
type cloudWatchLogsEncoding = [
  | @as("utf_8_sig") #Utf_8_Sig
  | @as("utf_8") #Utf_8
  | @as("utf_7") #Utf_7
  | @as("utf_16_le") #Utf_16_Le
  | @as("utf_16_be") #Utf_16_Be
  | @as("utf_16") #Utf_16
  | @as("utf_32_le") #Utf_32_Le
  | @as("utf_32_be") #Utf_32_Be
  | @as("utf_32") #Utf_32
  | @as("shift_jisx0213") #Shift_Jisx0213
  | @as("shift_jis_2004") #Shift_Jis_2004
  | @as("shift_jis") #Shift_Jis
  | @as("ptcp154") #Ptcp154
  | @as("mac_turkish") #Mac_Turkish
  | @as("mac_roman") #Mac_Roman
  | @as("mac_latin2") #Mac_Latin2
  | @as("mac_iceland") #Mac_Iceland
  | @as("mac_greek") #Mac_Greek
  | @as("mac_cyrillic") #Mac_Cyrillic
  | @as("koi8_u") #Koi8_U
  | @as("koi8_r") #Koi8_R
  | @as("johab") #Johab
  | @as("iso8859_16") #Iso8859_16
  | @as("iso8859_15") #Iso8859_15
  | @as("iso8859_14") #Iso8859_14
  | @as("iso8859_13") #Iso8859_13
  | @as("iso8859_10") #Iso8859_10
  | @as("iso8859_9") #Iso8859_9
  | @as("iso8859_8") #Iso8859_8
  | @as("iso8859_7") #Iso8859_7
  | @as("iso8859_6") #Iso8859_6
  | @as("iso8859_5") #Iso8859_5
  | @as("iso8859_4") #Iso8859_4
  | @as("iso8859_3") #Iso8859_3
  | @as("iso8859_2") #Iso8859_2
  | @as("latin_1") #Latin_1
  | @as("iso2022_kr") #Iso2022_Kr
  | @as("iso2022_jp_ext") #Iso2022_Jp_Ext
  | @as("iso2022_jp_3") #Iso2022_Jp_3
  | @as("iso2022_jp_2004") #Iso2022_Jp_2004
  | @as("iso2022_jp_2") #Iso2022_Jp_2
  | @as("iso2022_jp_1") #Iso2022_Jp_1
  | @as("iso2022_jp") #Iso2022_Jp
  | @as("hz") #Hz
  | @as("gb18030") #Gb18030
  | @as("gbk") #Gbk
  | @as("gb2312") #Gb2312
  | @as("euc_kr") #Euc_Kr
  | @as("euc_jisx0213") #Euc_Jisx0213
  | @as("euc_jis_2004") #Euc_Jis_2004
  | @as("euc_jp") #Euc_Jp
  | @as("cp1258") #Cp1258
  | @as("cp1257") #Cp1257
  | @as("cp1256") #Cp1256
  | @as("cp1255") #Cp1255
  | @as("cp1254") #Cp1254
  | @as("cp1253") #Cp1253
  | @as("cp1252") #Cp1252
  | @as("cp1251") #Cp1251
  | @as("cp1250") #Cp1250
  | @as("cp1140") #Cp1140
  | @as("cp1026") #Cp1026
  | @as("cp1006") #Cp1006
  | @as("cp950") #Cp950
  | @as("cp949") #Cp949
  | @as("cp932") #Cp932
  | @as("cp875") #Cp875
  | @as("cp874") #Cp874
  | @as("cp869") #Cp869
  | @as("cp866") #Cp866
  | @as("cp865") #Cp865
  | @as("cp864") #Cp864
  | @as("cp863") #Cp863
  | @as("cp862") #Cp862
  | @as("cp861") #Cp861
  | @as("cp860") #Cp860
  | @as("cp858") #Cp858
  | @as("cp857") #Cp857
  | @as("cp856") #Cp856
  | @as("cp855") #Cp855
  | @as("cp852") #Cp852
  | @as("cp850") #Cp850
  | @as("cp775") #Cp775
  | @as("cp737") #Cp737
  | @as("cp720") #Cp720
  | @as("cp500") #Cp500
  | @as("cp437") #Cp437
  | @as("cp424") #Cp424
  | @as("cp037") #Cp037
  | @as("big5hkscs") #Big5hkscs
  | @as("big5") #Big5
  | @as("ascii") #Ascii
]
type boolean_ = bool
type autoScalingType = [@as("timer") #Timer | @as("load") #Load]
type architecture = [@as("i386") #I386 | @as("x86_64") #X86_64]
type appType = [
  | @as("other") #Other
  | @as("static") #Static
  | @as("nodejs") #Nodejs
  | @as("php") #Php
  | @as("rails") #Rails
  | @as("java") #Java
  | @as("aws-flow-ruby") #Aws_Flow_Ruby
]
type appAttributesKeys = [
  | @as("AwsFlowRubySettings") #AwsFlowRubySettings
  | @as("AutoBundleOnDeploy") #AutoBundleOnDeploy
  | @as("RailsEnv") #RailsEnv
  | @as("DocumentRoot") #DocumentRoot
]
type volumeConfiguration = {
  @as("Encrypted") encrypted: option<boolean_>,
  @as("Iops") iops: option<integer_>,
  @as("VolumeType") volumeType: option<string_>,
  @as("Size") size: integer_,
  @as("NumberOfDisks") numberOfDisks: integer_,
  @as("RaidLevel") raidLevel: option<integer_>,
  @as("MountPoint") mountPoint: string_,
}
type volume = {
  @as("Encrypted") encrypted: option<boolean_>,
  @as("Iops") iops: option<integer_>,
  @as("VolumeType") volumeType: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Region") region: option<string_>,
  @as("MountPoint") mountPoint: option<string_>,
  @as("Device") device: option<string_>,
  @as("Size") size: option<integer_>,
  @as("Status") status: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("RaidArrayId") raidArrayId: option<string_>,
  @as("Name") name: option<string_>,
  @as("Ec2VolumeId") ec2VolumeId: option<string_>,
  @as("VolumeId") volumeId: option<string_>,
}
type userProfile = {
  @as("AllowSelfManagement") allowSelfManagement: option<boolean_>,
  @as("SshPublicKey") sshPublicKey: option<string_>,
  @as("SshUsername") sshUsername: option<string_>,
  @as("Name") name: option<string_>,
  @as("IamUserArn") iamUserArn: option<string_>,
}
type temporaryCredential = {
  @as("InstanceId") instanceId: option<string_>,
  @as("ValidForInMinutes") validForInMinutes: option<integer_>,
  @as("Password") password: option<string_>,
  @as("Username") username: option<string_>,
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type strings = array<string_>
type stackConfigurationManager = {
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
}
type stackAttributes = Js.Dict.t<string_>
type sslConfiguration = {
  @as("Chain") chain: option<string_>,
  @as("PrivateKey") privateKey: string_,
  @as("Certificate") certificate: string_,
}
type source = {
  @as("Revision") revision: option<string_>,
  @as("SshKey") sshKey: option<string_>,
  @as("Password") password: option<string_>,
  @as("Username") username: option<string_>,
  @as("Url") url: option<string_>,
  @as("Type") type_: option<sourceType>,
}
type shutdownEventConfiguration = {
  @as("DelayUntilElbConnectionsDrained") delayUntilElbConnectionsDrained: option<boolean_>,
  @as("ExecutionTimeout") executionTimeout: option<integer_>,
}
type serviceError = {
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("Message") message: option<string_>,
  @as("Type") type_: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("ServiceErrorId") serviceErrorId: option<string_>,
}
type selfUserProfile = {
  @as("SshPublicKey") sshPublicKey: option<string_>,
  @as("SshUsername") sshUsername: option<string_>,
  @as("Name") name: option<string_>,
  @as("IamUserArn") iamUserArn: option<string_>,
}
type reportedOs = {
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
  @as("Family") family: option<string_>,
}
type rdsDbInstance = {
  @as("MissingOnRds") missingOnRds: option<boolean_>,
  @as("StackId") stackId: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("Address") address: option<string_>,
  @as("Region") region: option<string_>,
  @as("DbPassword") dbPassword: option<string_>,
  @as("DbUser") dbUser: option<string_>,
  @as("DbInstanceIdentifier") dbInstanceIdentifier: option<string_>,
  @as("RdsDbInstanceArn") rdsDbInstanceArn: option<string_>,
}
type raidArray = {
  @as("Iops") iops: option<integer_>,
  @as("VolumeType") volumeType: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("MountPoint") mountPoint: option<string_>,
  @as("Device") device: option<string_>,
  @as("Size") size: option<integer_>,
  @as("NumberOfDisks") numberOfDisks: option<integer_>,
  @as("RaidLevel") raidLevel: option<integer_>,
  @as("Name") name: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("RaidArrayId") raidArrayId: option<string_>,
}
type permission = {
  @as("Level") level: option<string_>,
  @as("AllowSudo") allowSudo: option<boolean_>,
  @as("AllowSsh") allowSsh: option<boolean_>,
  @as("IamUserArn") iamUserArn: option<string_>,
  @as("StackId") stackId: option<string_>,
}
type parameters = Js.Dict.t<string_>
type operatingSystemConfigurationManager = {
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
}
type layerAttributes = Js.Dict.t<string_>
type instancesCount = {
  @as("Unassigning") unassigning: option<integer_>,
  @as("Terminating") terminating: option<integer_>,
  @as("Terminated") terminated: option<integer_>,
  @as("Stopping") stopping: option<integer_>,
  @as("Stopped") stopped: option<integer_>,
  @as("StopFailed") stopFailed: option<integer_>,
  @as("StartFailed") startFailed: option<integer_>,
  @as("ShuttingDown") shuttingDown: option<integer_>,
  @as("SetupFailed") setupFailed: option<integer_>,
  @as("RunningSetup") runningSetup: option<integer_>,
  @as("Requested") requested: option<integer_>,
  @as("Registering") registering: option<integer_>,
  @as("Registered") registered: option<integer_>,
  @as("Rebooting") rebooting: option<integer_>,
  @as("Pending") pending: option<integer_>,
  @as("Online") online: option<integer_>,
  @as("Deregistering") deregistering: option<integer_>,
  @as("ConnectionLost") connectionLost: option<integer_>,
  @as("Booting") booting: option<integer_>,
  @as("Assigning") assigning: option<integer_>,
}
type instanceIdentity = {
  @as("Signature") signature: option<string_>,
  @as("Document") document: option<string_>,
}
type environmentVariable = {
  @as("Secure") secure: option<boolean_>,
  @as("Value") value: string_,
  @as("Key") key: string_,
}
type elasticIp = {
  @as("InstanceId") instanceId: option<string_>,
  @as("Region") region: option<string_>,
  @as("Domain") domain: option<string_>,
  @as("Name") name: option<string_>,
  @as("Ip") ip: option<string_>,
}
type ecsCluster = {
  @as("RegisteredAt") registeredAt: option<dateTime>,
  @as("StackId") stackId: option<string_>,
  @as("EcsClusterName") ecsClusterName: option<string_>,
  @as("EcsClusterArn") ecsClusterArn: option<string_>,
}
type ebsBlockDevice = {
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeSize") volumeSize: option<integer_>,
  @as("Iops") iops: option<integer_>,
  @as("SnapshotId") snapshotId: option<string_>,
}
type dataSource = {
  @as("DatabaseName") databaseName: option<string_>,
  @as("Arn") arn: option<string_>,
  @as("Type") type_: option<string_>,
}
type dailyAutoScalingSchedule = Js.Dict.t<switch_>
type command = {
  @as("Type") type_: option<string_>,
  @as("LogUrl") logUrl: option<string_>,
  @as("ExitCode") exitCode: option<integer_>,
  @as("Status") status: option<string_>,
  @as("CompletedAt") completedAt: option<dateTime>,
  @as("AcknowledgedAt") acknowledgedAt: option<dateTime>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("DeploymentId") deploymentId: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("CommandId") commandId: option<string_>,
}
type cloudWatchLogsLogStream = {
  @as("BatchSize") batchSize: option<integer_>,
  @as("BatchCount") batchCount: option<integer_>,
  @as("BufferDuration") bufferDuration: option<integer_>,
  @as("Encoding") encoding: option<cloudWatchLogsEncoding>,
  @as("InitialPosition") initialPosition: option<cloudWatchLogsInitialPosition>,
  @as("MultiLineStartPattern") multiLineStartPattern: option<string_>,
  @as("FileFingerprintLines") fileFingerprintLines: option<string_>,
  @as("File") file: option<string_>,
  @as("TimeZone") timeZone: option<cloudWatchLogsTimeZone>,
  @as("DatetimeFormat") datetimeFormat: option<string_>,
  @as("LogGroupName") logGroupName: option<string_>,
}
type chefConfiguration = {
  @as("BerkshelfVersion") berkshelfVersion: option<string_>,
  @as("ManageBerkshelf") manageBerkshelf: option<boolean_>,
}
type appAttributes = Js.Dict.t<string_>
type weeklyAutoScalingSchedule = {
  @as("Sunday") sunday: option<dailyAutoScalingSchedule>,
  @as("Saturday") saturday: option<dailyAutoScalingSchedule>,
  @as("Friday") friday: option<dailyAutoScalingSchedule>,
  @as("Thursday") thursday: option<dailyAutoScalingSchedule>,
  @as("Wednesday") wednesday: option<dailyAutoScalingSchedule>,
  @as("Tuesday") tuesday: option<dailyAutoScalingSchedule>,
  @as("Monday") monday: option<dailyAutoScalingSchedule>,
}
type volumes = array<volume>
type volumeConfigurations = array<volumeConfiguration>
type userProfiles = array<userProfile>
type stackSummary = {
  @as("InstancesCount") instancesCount: option<instancesCount>,
  @as("AppsCount") appsCount: option<integer_>,
  @as("LayersCount") layersCount: option<integer_>,
  @as("Arn") arn: option<string_>,
  @as("Name") name: option<string_>,
  @as("StackId") stackId: option<string_>,
}
type stack = {
  @as("AgentVersion") agentVersion: option<string_>,
  @as("DefaultRootDeviceType") defaultRootDeviceType: option<rootDeviceType>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("DefaultSshKeyName") defaultSshKeyName: option<string_>,
  @as("CustomCookbooksSource") customCookbooksSource: option<source>,
  @as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: option<boolean_>,
  @as("UseCustomCookbooks") useCustomCookbooks: option<boolean_>,
  @as("ChefConfiguration") chefConfiguration: option<chefConfiguration>,
  @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
  @as("CustomJson") customJson: option<string_>,
  @as("DefaultSubnetId") defaultSubnetId: option<string_>,
  @as("DefaultAvailabilityZone") defaultAvailabilityZone: option<string_>,
  @as("HostnameTheme") hostnameTheme: option<string_>,
  @as("DefaultOs") defaultOs: option<string_>,
  @as("DefaultInstanceProfileArn") defaultInstanceProfileArn: option<string_>,
  @as("ServiceRoleArn") serviceRoleArn: option<string_>,
  @as("Attributes") attributes: option<stackAttributes>,
  @as("VpcId") vpcId: option<string_>,
  @as("Region") region: option<string_>,
  @as("Arn") arn: option<string_>,
  @as("Name") name: option<string_>,
  @as("StackId") stackId: option<string_>,
}
type serviceErrors = array<serviceError>
type recipes = {
  @as("Shutdown") shutdown: option<strings>,
  @as("Undeploy") undeploy: option<strings>,
  @as("Deploy") deploy: option<strings>,
  @as("Configure") configure: option<strings>,
  @as("Setup") setup: option<strings>,
}
type rdsDbInstances = array<rdsDbInstance>
type raidArrays = array<raidArray>
type permissions = array<permission>
type operatingSystemConfigurationManagers = array<operatingSystemConfigurationManager>
type lifecycleEventConfiguration = {@as("Shutdown") shutdown: option<shutdownEventConfiguration>}
type environmentVariables = array<environmentVariable>
type elasticLoadBalancer = {
  @as("Ec2InstanceIds") ec2InstanceIds: option<strings>,
  @as("SubnetIds") subnetIds: option<strings>,
  @as("AvailabilityZones") availabilityZones: option<strings>,
  @as("VpcId") vpcId: option<string_>,
  @as("LayerId") layerId: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("DnsName") dnsName: option<string_>,
  @as("Region") region: option<string_>,
  @as("ElasticLoadBalancerName") elasticLoadBalancerName: option<string_>,
}
type elasticIps = array<elasticIp>
type ecsClusters = array<ecsCluster>
type deploymentCommandArgs = Js.Dict.t<strings>
type dataSources = array<dataSource>
type commands = array<command>
type cloudWatchLogsLogStreams = array<cloudWatchLogsLogStream>
type blockDeviceMapping = {
  @as("Ebs") ebs: option<ebsBlockDevice>,
  @as("VirtualName") virtualName: option<string_>,
  @as("NoDevice") noDevice: option<string_>,
  @as("DeviceName") deviceName: option<string_>,
}
type autoScalingThresholds = {
  @as("Alarms") alarms: option<strings>,
  @as("LoadThreshold") loadThreshold: option<double>,
  @as("MemoryThreshold") memoryThreshold: option<double>,
  @as("CpuThreshold") cpuThreshold: option<double>,
  @as("IgnoreMetricsTime") ignoreMetricsTime: option<minute>,
  @as("ThresholdsWaitTime") thresholdsWaitTime: option<minute>,
  @as("InstanceCount") instanceCount: option<integer_>,
}
type agentVersion = {
  @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
  @as("Version") version: option<string_>,
}
type timeBasedAutoScalingConfiguration = {
  @as("AutoScalingSchedule") autoScalingSchedule: option<weeklyAutoScalingSchedule>,
  @as("InstanceId") instanceId: option<string_>,
}
type stacks = array<stack>
type operatingSystem = {
  @as("Supported") supported: option<boolean_>,
  @as("ReportedVersion") reportedVersion: option<string_>,
  @as("ReportedName") reportedName: option<string_>,
  @as("ConfigurationManagers") configurationManagers: option<operatingSystemConfigurationManagers>,
  @as("Type") type_: option<string_>,
  @as("Id") id: option<string_>,
  @as("Name") name: option<string_>,
}
type loadBasedAutoScalingConfiguration = {
  @as("DownScaling") downScaling: option<autoScalingThresholds>,
  @as("UpScaling") upScaling: option<autoScalingThresholds>,
  @as("Enable") enable: option<boolean_>,
  @as("LayerId") layerId: option<string_>,
}
type elasticLoadBalancers = array<elasticLoadBalancer>
type deploymentCommand = {
  @as("Args") args: option<deploymentCommandArgs>,
  @as("Name") name: deploymentCommandName,
}
type cloudWatchLogsConfiguration = {
  @as("LogStreams") logStreams: option<cloudWatchLogsLogStreams>,
  @as("Enabled") enabled: option<boolean_>,
}
type blockDeviceMappings = array<blockDeviceMapping>
type app = {
  @as("Environment") environment: option<environmentVariables>,
  @as("CreatedAt") createdAt: option<string_>,
  @as("Attributes") attributes: option<appAttributes>,
  @as("SslConfiguration") sslConfiguration: option<sslConfiguration>,
  @as("EnableSsl") enableSsl: option<boolean_>,
  @as("Domains") domains: option<strings>,
  @as("AppSource") appSource: option<source>,
  @as("Type") type_: option<appType>,
  @as("DataSources") dataSources: option<dataSources>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<string_>,
  @as("Shortname") shortname: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("AppId") appId: option<string_>,
}
type agentVersions = array<agentVersion>
type timeBasedAutoScalingConfigurations = array<timeBasedAutoScalingConfiguration>
type operatingSystems = array<operatingSystem>
type loadBasedAutoScalingConfigurations = array<loadBasedAutoScalingConfiguration>
type layer = {
  @as("LifecycleEventConfiguration")
  lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
  @as("UseEbsOptimizedInstances") useEbsOptimizedInstances: option<boolean_>,
  @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("CustomRecipes") customRecipes: option<recipes>,
  @as("DefaultRecipes") defaultRecipes: option<recipes>,
  @as("AutoAssignPublicIps") autoAssignPublicIps: option<boolean_>,
  @as("AutoAssignElasticIps") autoAssignElasticIps: option<boolean_>,
  @as("EnableAutoHealing") enableAutoHealing: option<boolean_>,
  @as("VolumeConfigurations") volumeConfigurations: option<volumeConfigurations>,
  @as("Packages") packages: option<strings>,
  @as("DefaultSecurityGroupNames") defaultSecurityGroupNames: option<strings>,
  @as("CustomSecurityGroupIds") customSecurityGroupIds: option<strings>,
  @as("CustomJson") customJson: option<string_>,
  @as("CustomInstanceProfileArn") customInstanceProfileArn: option<string_>,
  @as("CloudWatchLogsConfiguration")
  cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
  @as("Attributes") attributes: option<layerAttributes>,
  @as("Shortname") shortname: option<string_>,
  @as("Name") name: option<string_>,
  @as("Type") type_: option<layerType>,
  @as("LayerId") layerId: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("Arn") arn: option<string_>,
}
type instance = {
  @as("VirtualizationType") virtualizationType: option<virtualizationType>,
  @as("Tenancy") tenancy: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("Status") status: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("SshKeyName") sshKeyName: option<string_>,
  @as("SshHostRsaKeyFingerprint") sshHostRsaKeyFingerprint: option<string_>,
  @as("SshHostDsaKeyFingerprint") sshHostDsaKeyFingerprint: option<string_>,
  @as("SecurityGroupIds") securityGroupIds: option<strings>,
  @as("RootDeviceVolumeId") rootDeviceVolumeId: option<string_>,
  @as("RootDeviceType") rootDeviceType: option<rootDeviceType>,
  @as("ReportedOs") reportedOs: option<reportedOs>,
  @as("ReportedAgentVersion") reportedAgentVersion: option<string_>,
  @as("RegisteredBy") registeredBy: option<string_>,
  @as("PublicIp") publicIp: option<string_>,
  @as("PublicDns") publicDns: option<string_>,
  @as("PrivateIp") privateIp: option<string_>,
  @as("PrivateDns") privateDns: option<string_>,
  @as("Platform") platform: option<string_>,
  @as("Os") os: option<string_>,
  @as("LayerIds") layerIds: option<strings>,
  @as("LastServiceErrorId") lastServiceErrorId: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("InstanceProfileArn") instanceProfileArn: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
  @as("InfrastructureClass") infrastructureClass: option<string_>,
  @as("Hostname") hostname: option<string_>,
  @as("ElasticIp") elasticIp: option<string_>,
  @as("EcsContainerInstanceArn") ecsContainerInstanceArn: option<string_>,
  @as("EcsClusterArn") ecsClusterArn: option<string_>,
  @as("Ec2InstanceId") ec2InstanceId: option<string_>,
  @as("EbsOptimized") ebsOptimized: option<boolean_>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappings>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("AutoScalingType") autoScalingType: option<autoScalingType>,
  @as("Arn") arn: option<string_>,
  @as("Architecture") architecture: option<architecture>,
  @as("AmiId") amiId: option<string_>,
  @as("AgentVersion") agentVersion: option<string_>,
}
type deployment = {
  @as("InstanceIds") instanceIds: option<strings>,
  @as("CustomJson") customJson: option<string_>,
  @as("Status") status: option<string_>,
  @as("Command") command: option<deploymentCommand>,
  @as("Comment") comment: option<string_>,
  @as("IamUserArn") iamUserArn: option<string_>,
  @as("Duration") duration: option<integer_>,
  @as("CompletedAt") completedAt: option<dateTime>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("AppId") appId: option<string_>,
  @as("StackId") stackId: option<string_>,
  @as("DeploymentId") deploymentId: option<string_>,
}
type apps = array<app>
type layers = array<layer>
type instances = array<instance>
type deployments = array<deployment>

module UpdateVolume = {
  type t
  type request = {
    @as("MountPoint") mountPoint: option<string_>,
    @as("Name") name: option<string_>,
    @as("VolumeId") volumeId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateUserProfile = {
  type t
  type request = {
    @as("AllowSelfManagement") allowSelfManagement: option<boolean_>,
    @as("SshPublicKey") sshPublicKey: option<string_>,
    @as("SshUsername") sshUsername: option<string_>,
    @as("IamUserArn") iamUserArn: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRdsDbInstance = {
  type t
  type request = {
    @as("DbPassword") dbPassword: option<string_>,
    @as("DbUser") dbUser: option<string_>,
    @as("RdsDbInstanceArn") rdsDbInstanceArn: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "UpdateRdsDbInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMyUserProfile = {
  type t
  type request = {@as("SshPublicKey") sshPublicKey: option<string_>}

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "UpdateMyUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateElasticIp = {
  type t
  type request = {
    @as("Name") name: option<string_>,
    @as("ElasticIp") elasticIp: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateElasticIpCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnassignVolume = {
  type t
  type request = {@as("VolumeId") volumeId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UnassignVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UnassignInstance = {
  type t
  type request = {@as("InstanceId") instanceId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UnassignInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopStack = {
  type t
  type request = {@as("StackId") stackId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "StopStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopInstance = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("InstanceId") instanceId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "StopInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartStack = {
  type t
  type request = {@as("StackId") stackId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "StartStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartInstance = {
  type t
  type request = {@as("InstanceId") instanceId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "StartInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetPermission = {
  type t
  type request = {
    @as("Level") level: option<string_>,
    @as("AllowSudo") allowSudo: option<boolean_>,
    @as("AllowSsh") allowSsh: option<boolean_>,
    @as("IamUserArn") iamUserArn: string_,
    @as("StackId") stackId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "SetPermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterVolume = {
  type t
  type request = {
    @as("StackId") stackId: string_,
    @as("Ec2VolumeId") ec2VolumeId: option<string_>,
  }
  type response = {@as("VolumeId") volumeId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "RegisterVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterRdsDbInstance = {
  type t
  type request = {
    @as("DbPassword") dbPassword: string_,
    @as("DbUser") dbUser: string_,
    @as("RdsDbInstanceArn") rdsDbInstanceArn: string_,
    @as("StackId") stackId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "RegisterRdsDbInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterElasticIp = {
  type t
  type request = {
    @as("StackId") stackId: string_,
    @as("ElasticIp") elasticIp: string_,
  }
  type response = {@as("ElasticIp") elasticIp: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "RegisterElasticIpCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterEcsCluster = {
  type t
  type request = {
    @as("StackId") stackId: string_,
    @as("EcsClusterArn") ecsClusterArn: string_,
  }
  type response = {@as("EcsClusterArn") ecsClusterArn: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "RegisterEcsClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootInstance = {
  type t
  type request = {@as("InstanceId") instanceId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "RebootInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetHostnameSuggestion = {
  type t
  type request = {@as("LayerId") layerId: string_}
  type response = {
    @as("Hostname") hostname: option<string_>,
    @as("LayerId") layerId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "GetHostnameSuggestionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateElasticIp = {
  type t
  type request = {@as("ElasticIp") elasticIp: string_}

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DisassociateElasticIpCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachElasticLoadBalancer = {
  type t
  type request = {
    @as("LayerId") layerId: string_,
    @as("ElasticLoadBalancerName") elasticLoadBalancerName: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DetachElasticLoadBalancerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterVolume = {
  type t
  type request = {@as("VolumeId") volumeId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeregisterVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterRdsDbInstance = {
  type t
  type request = {@as("RdsDbInstanceArn") rdsDbInstanceArn: string_}

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DeregisterRdsDbInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterInstance = {
  type t
  type request = {@as("InstanceId") instanceId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeregisterInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterElasticIp = {
  type t
  type request = {@as("ElasticIp") elasticIp: string_}

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DeregisterElasticIpCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterEcsCluster = {
  type t
  type request = {@as("EcsClusterArn") ecsClusterArn: string_}

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DeregisterEcsClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUserProfile = {
  type t
  type request = {@as("IamUserArn") iamUserArn: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeleteUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStack = {
  type t
  type request = {@as("StackId") stackId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeleteStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLayer = {
  type t
  type request = {@as("LayerId") layerId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeleteLayerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInstance = {
  type t
  type request = {
    @as("DeleteVolumes") deleteVolumes: option<boolean_>,
    @as("DeleteElasticIp") deleteElasticIp: option<boolean_>,
    @as("InstanceId") instanceId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeleteInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApp = {
  type t
  type request = {@as("AppId") appId: string_}

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DeleteAppCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateUserProfile = {
  type t
  type request = {
    @as("AllowSelfManagement") allowSelfManagement: option<boolean_>,
    @as("SshPublicKey") sshPublicKey: option<string_>,
    @as("SshUsername") sshUsername: option<string_>,
    @as("IamUserArn") iamUserArn: string_,
  }
  type response = {@as("IamUserArn") iamUserArn: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachElasticLoadBalancer = {
  type t
  type request = {
    @as("LayerId") layerId: string_,
    @as("ElasticLoadBalancerName") elasticLoadBalancerName: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "AttachElasticLoadBalancerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateElasticIp = {
  type t
  type request = {
    @as("InstanceId") instanceId: option<string_>,
    @as("ElasticIp") elasticIp: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "AssociateElasticIpCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssignVolume = {
  type t
  type request = {
    @as("InstanceId") instanceId: option<string_>,
    @as("VolumeId") volumeId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "AssignVolumeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateStack = {
  type t
  type request = {
    @as("AgentVersion") agentVersion: option<string_>,
    @as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: option<boolean_>,
    @as("DefaultRootDeviceType") defaultRootDeviceType: option<rootDeviceType>,
    @as("DefaultSshKeyName") defaultSshKeyName: option<string_>,
    @as("CustomCookbooksSource") customCookbooksSource: option<source>,
    @as("UseCustomCookbooks") useCustomCookbooks: option<boolean_>,
    @as("ChefConfiguration") chefConfiguration: option<chefConfiguration>,
    @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
    @as("CustomJson") customJson: option<string_>,
    @as("DefaultSubnetId") defaultSubnetId: option<string_>,
    @as("DefaultAvailabilityZone") defaultAvailabilityZone: option<string_>,
    @as("HostnameTheme") hostnameTheme: option<string_>,
    @as("DefaultOs") defaultOs: option<string_>,
    @as("DefaultInstanceProfileArn") defaultInstanceProfileArn: option<string_>,
    @as("ServiceRoleArn") serviceRoleArn: option<string_>,
    @as("Attributes") attributes: option<stackAttributes>,
    @as("Name") name: option<string_>,
    @as("StackId") stackId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateInstance = {
  type t
  type request = {
    @as("AgentVersion") agentVersion: option<string_>,
    @as("EbsOptimized") ebsOptimized: option<boolean_>,
    @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
    @as("Architecture") architecture: option<architecture>,
    @as("SshKeyName") sshKeyName: option<string_>,
    @as("AmiId") amiId: option<string_>,
    @as("Os") os: option<string_>,
    @as("Hostname") hostname: option<string_>,
    @as("AutoScalingType") autoScalingType: option<autoScalingType>,
    @as("InstanceType") instanceType: option<string_>,
    @as("LayerIds") layerIds: option<strings>,
    @as("InstanceId") instanceId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("ResourceArn") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceArn") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterInstance = {
  type t
  type request = {
    @as("InstanceIdentity") instanceIdentity: option<instanceIdentity>,
    @as("RsaPublicKeyFingerprint") rsaPublicKeyFingerprint: option<string_>,
    @as("RsaPublicKey") rsaPublicKey: option<string_>,
    @as("PrivateIp") privateIp: option<string_>,
    @as("PublicIp") publicIp: option<string_>,
    @as("Hostname") hostname: option<string_>,
    @as("StackId") stackId: string_,
  }
  type response = {@as("InstanceId") instanceId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "RegisterInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "ListTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GrantAccess = {
  type t
  type request = {
    @as("ValidForInMinutes") validForInMinutes: option<validForInMinutes>,
    @as("InstanceId") instanceId: string_,
  }
  type response = {@as("TemporaryCredential") temporaryCredential: option<temporaryCredential>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "GrantAccessCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackProvisioningParameters = {
  type t
  type request = {@as("StackId") stackId: string_}
  type response = {
    @as("Parameters") parameters: option<parameters>,
    @as("AgentInstallerUrl") agentInstallerUrl: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeStackProvisioningParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMyUserProfile = {
  type t

  type response = {@as("UserProfile") userProfile: option<selfUserProfile>}
  @module("@aws-sdk/client-opsworks") @new external new_: unit => t = "DescribeMyUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStack = {
  type t
  type request = {
    @as("AgentVersion") agentVersion: option<string_>,
    @as("DefaultRootDeviceType") defaultRootDeviceType: option<rootDeviceType>,
    @as("DefaultSshKeyName") defaultSshKeyName: option<string_>,
    @as("CustomCookbooksSource") customCookbooksSource: option<source>,
    @as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: option<boolean_>,
    @as("UseCustomCookbooks") useCustomCookbooks: option<boolean_>,
    @as("ChefConfiguration") chefConfiguration: option<chefConfiguration>,
    @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
    @as("CustomJson") customJson: option<string_>,
    @as("DefaultSubnetId") defaultSubnetId: option<string_>,
    @as("DefaultAvailabilityZone") defaultAvailabilityZone: option<string_>,
    @as("HostnameTheme") hostnameTheme: option<string_>,
    @as("DefaultOs") defaultOs: option<string_>,
    @as("DefaultInstanceProfileArn") defaultInstanceProfileArn: string_,
    @as("ServiceRoleArn") serviceRoleArn: string_,
    @as("Attributes") attributes: option<stackAttributes>,
    @as("VpcId") vpcId: option<string_>,
    @as("Region") region: string_,
    @as("Name") name: string_,
  }
  type response = {@as("StackId") stackId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CloneStack = {
  type t
  type request = {
    @as("AgentVersion") agentVersion: option<string_>,
    @as("DefaultRootDeviceType") defaultRootDeviceType: option<rootDeviceType>,
    @as("CloneAppIds") cloneAppIds: option<strings>,
    @as("ClonePermissions") clonePermissions: option<boolean_>,
    @as("DefaultSshKeyName") defaultSshKeyName: option<string_>,
    @as("CustomCookbooksSource") customCookbooksSource: option<source>,
    @as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: option<boolean_>,
    @as("UseCustomCookbooks") useCustomCookbooks: option<boolean_>,
    @as("ChefConfiguration") chefConfiguration: option<chefConfiguration>,
    @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
    @as("CustomJson") customJson: option<string_>,
    @as("DefaultSubnetId") defaultSubnetId: option<string_>,
    @as("DefaultAvailabilityZone") defaultAvailabilityZone: option<string_>,
    @as("HostnameTheme") hostnameTheme: option<string_>,
    @as("DefaultOs") defaultOs: option<string_>,
    @as("DefaultInstanceProfileArn") defaultInstanceProfileArn: option<string_>,
    @as("ServiceRoleArn") serviceRoleArn: string_,
    @as("Attributes") attributes: option<stackAttributes>,
    @as("VpcId") vpcId: option<string_>,
    @as("Region") region: option<string_>,
    @as("Name") name: option<string_>,
    @as("SourceStackId") sourceStackId: string_,
  }
  type response = {@as("StackId") stackId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CloneStackCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssignInstance = {
  type t
  type request = {
    @as("LayerIds") layerIds: strings,
    @as("InstanceId") instanceId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "AssignInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateApp = {
  type t
  type request = {
    @as("Environment") environment: option<environmentVariables>,
    @as("Attributes") attributes: option<appAttributes>,
    @as("SslConfiguration") sslConfiguration: option<sslConfiguration>,
    @as("EnableSsl") enableSsl: option<boolean_>,
    @as("Domains") domains: option<strings>,
    @as("AppSource") appSource: option<source>,
    @as("Type") type_: option<appType>,
    @as("DataSources") dataSources: option<dataSources>,
    @as("Description") description: option<string_>,
    @as("Name") name: option<string_>,
    @as("AppId") appId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateAppCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetTimeBasedAutoScaling = {
  type t
  type request = {
    @as("AutoScalingSchedule") autoScalingSchedule: option<weeklyAutoScalingSchedule>,
    @as("InstanceId") instanceId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "SetTimeBasedAutoScalingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetLoadBasedAutoScaling = {
  type t
  type request = {
    @as("DownScaling") downScaling: option<autoScalingThresholds>,
    @as("UpScaling") upScaling: option<autoScalingThresholds>,
    @as("Enable") enable: option<boolean_>,
    @as("LayerId") layerId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "SetLoadBasedAutoScalingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeVolumes = {
  type t
  type request = {
    @as("VolumeIds") volumeIds: option<strings>,
    @as("RaidArrayId") raidArrayId: option<string_>,
    @as("StackId") stackId: option<string_>,
    @as("InstanceId") instanceId: option<string_>,
  }
  type response = {@as("Volumes") volumes: option<volumes>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeVolumesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUserProfiles = {
  type t
  type request = {@as("IamUserArns") iamUserArns: option<strings>}
  type response = {@as("UserProfiles") userProfiles: option<userProfiles>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeUserProfilesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStackSummary = {
  type t
  type request = {@as("StackId") stackId: string_}
  type response = {@as("StackSummary") stackSummary: option<stackSummary>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeStackSummaryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceErrors = {
  type t
  type request = {
    @as("ServiceErrorIds") serviceErrorIds: option<strings>,
    @as("InstanceId") instanceId: option<string_>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("ServiceErrors") serviceErrors: option<serviceErrors>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeServiceErrorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRdsDbInstances = {
  type t
  type request = {
    @as("RdsDbInstanceArns") rdsDbInstanceArns: option<strings>,
    @as("StackId") stackId: string_,
  }
  type response = {@as("RdsDbInstances") rdsDbInstances: option<rdsDbInstances>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeRdsDbInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRaidArrays = {
  type t
  type request = {
    @as("RaidArrayIds") raidArrayIds: option<strings>,
    @as("StackId") stackId: option<string_>,
    @as("InstanceId") instanceId: option<string_>,
  }
  type response = {@as("RaidArrays") raidArrays: option<raidArrays>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeRaidArraysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePermissions = {
  type t
  type request = {
    @as("StackId") stackId: option<string_>,
    @as("IamUserArn") iamUserArn: option<string_>,
  }
  type response = {@as("Permissions") permissions: option<permissions>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeElasticIps = {
  type t
  type request = {
    @as("Ips") ips: option<strings>,
    @as("StackId") stackId: option<string_>,
    @as("InstanceId") instanceId: option<string_>,
  }
  type response = {@as("ElasticIps") elasticIps: option<elasticIps>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeElasticIpsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEcsClusters = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("StackId") stackId: option<string_>,
    @as("EcsClusterArns") ecsClusterArns: option<strings>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("EcsClusters") ecsClusters: option<ecsClusters>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeEcsClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCommands = {
  type t
  type request = {
    @as("CommandIds") commandIds: option<strings>,
    @as("InstanceId") instanceId: option<string_>,
    @as("DeploymentId") deploymentId: option<string_>,
  }
  type response = {@as("Commands") commands: option<commands>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeCommandsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApp = {
  type t
  type request = {
    @as("Environment") environment: option<environmentVariables>,
    @as("Attributes") attributes: option<appAttributes>,
    @as("SslConfiguration") sslConfiguration: option<sslConfiguration>,
    @as("EnableSsl") enableSsl: option<boolean_>,
    @as("Domains") domains: option<strings>,
    @as("AppSource") appSource: option<source>,
    @as("Type") type_: appType,
    @as("DataSources") dataSources: option<dataSources>,
    @as("Description") description: option<string_>,
    @as("Name") name: string_,
    @as("Shortname") shortname: option<string_>,
    @as("StackId") stackId: string_,
  }
  type response = {@as("AppId") appId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateAppCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLayer = {
  type t
  type request = {
    @as("LifecycleEventConfiguration")
    lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
    @as("UseEbsOptimizedInstances") useEbsOptimizedInstances: option<boolean_>,
    @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
    @as("CustomRecipes") customRecipes: option<recipes>,
    @as("AutoAssignPublicIps") autoAssignPublicIps: option<boolean_>,
    @as("AutoAssignElasticIps") autoAssignElasticIps: option<boolean_>,
    @as("EnableAutoHealing") enableAutoHealing: option<boolean_>,
    @as("VolumeConfigurations") volumeConfigurations: option<volumeConfigurations>,
    @as("Packages") packages: option<strings>,
    @as("CustomSecurityGroupIds") customSecurityGroupIds: option<strings>,
    @as("CustomJson") customJson: option<string_>,
    @as("CustomInstanceProfileArn") customInstanceProfileArn: option<string_>,
    @as("CloudWatchLogsConfiguration")
    cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
    @as("Attributes") attributes: option<layerAttributes>,
    @as("Shortname") shortname: option<string_>,
    @as("Name") name: option<string_>,
    @as("LayerId") layerId: string_,
  }

  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "UpdateLayerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeStacks = {
  type t
  type request = {@as("StackIds") stackIds: option<strings>}
  type response = {@as("Stacks") stacks: option<stacks>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeStacksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeElasticLoadBalancers = {
  type t
  type request = {
    @as("LayerIds") layerIds: option<strings>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("ElasticLoadBalancers") elasticLoadBalancers: option<elasticLoadBalancers>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeElasticLoadBalancersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAgentVersions = {
  type t
  type request = {
    @as("ConfigurationManager") configurationManager: option<stackConfigurationManager>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("AgentVersions") agentVersions: option<agentVersions>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeAgentVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLayer = {
  type t
  type request = {
    @as("LifecycleEventConfiguration")
    lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
    @as("UseEbsOptimizedInstances") useEbsOptimizedInstances: option<boolean_>,
    @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
    @as("CustomRecipes") customRecipes: option<recipes>,
    @as("AutoAssignPublicIps") autoAssignPublicIps: option<boolean_>,
    @as("AutoAssignElasticIps") autoAssignElasticIps: option<boolean_>,
    @as("EnableAutoHealing") enableAutoHealing: option<boolean_>,
    @as("VolumeConfigurations") volumeConfigurations: option<volumeConfigurations>,
    @as("Packages") packages: option<strings>,
    @as("CustomSecurityGroupIds") customSecurityGroupIds: option<strings>,
    @as("CustomJson") customJson: option<string_>,
    @as("CustomInstanceProfileArn") customInstanceProfileArn: option<string_>,
    @as("CloudWatchLogsConfiguration")
    cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
    @as("Attributes") attributes: option<layerAttributes>,
    @as("Shortname") shortname: string_,
    @as("Name") name: string_,
    @as("Type") type_: layerType,
    @as("StackId") stackId: string_,
  }
  type response = {@as("LayerId") layerId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateLayerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstance = {
  type t
  type request = {
    @as("Tenancy") tenancy: option<string_>,
    @as("AgentVersion") agentVersion: option<string_>,
    @as("EbsOptimized") ebsOptimized: option<boolean_>,
    @as("InstallUpdatesOnBoot") installUpdatesOnBoot: option<boolean_>,
    @as("BlockDeviceMappings") blockDeviceMappings: option<blockDeviceMappings>,
    @as("RootDeviceType") rootDeviceType: option<rootDeviceType>,
    @as("Architecture") architecture: option<architecture>,
    @as("SubnetId") subnetId: option<string_>,
    @as("VirtualizationType") virtualizationType: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("SshKeyName") sshKeyName: option<string_>,
    @as("AmiId") amiId: option<string_>,
    @as("Os") os: option<string_>,
    @as("Hostname") hostname: option<string_>,
    @as("AutoScalingType") autoScalingType: option<autoScalingType>,
    @as("InstanceType") instanceType: string_,
    @as("LayerIds") layerIds: strings,
    @as("StackId") stackId: string_,
  }
  type response = {@as("InstanceId") instanceId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  type request = {
    @as("CustomJson") customJson: option<string_>,
    @as("Comment") comment: option<string_>,
    @as("Command") command: deploymentCommand,
    @as("LayerIds") layerIds: option<strings>,
    @as("InstanceIds") instanceIds: option<strings>,
    @as("AppId") appId: option<string_>,
    @as("StackId") stackId: string_,
  }
  type response = {@as("DeploymentId") deploymentId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "CreateDeploymentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTimeBasedAutoScaling = {
  type t
  type request = {@as("InstanceIds") instanceIds: strings}
  type response = {
    @as("TimeBasedAutoScalingConfigurations")
    timeBasedAutoScalingConfigurations: option<timeBasedAutoScalingConfigurations>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeTimeBasedAutoScalingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOperatingSystems = {
  type t

  type response = {@as("OperatingSystems") operatingSystems: option<operatingSystems>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: unit => t = "DescribeOperatingSystemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoadBasedAutoScaling = {
  type t
  type request = {@as("LayerIds") layerIds: strings}
  type response = {
    @as("LoadBasedAutoScalingConfigurations")
    loadBasedAutoScalingConfigurations: option<loadBasedAutoScalingConfigurations>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeLoadBasedAutoScalingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApps = {
  type t
  type request = {
    @as("AppIds") appIds: option<strings>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("Apps") apps: option<apps>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeAppsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLayers = {
  type t
  type request = {
    @as("LayerIds") layerIds: option<strings>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("Layers") layers: option<layers>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeLayersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstances = {
  type t
  type request = {
    @as("InstanceIds") instanceIds: option<strings>,
    @as("LayerId") layerId: option<string_>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("Instances") instances: option<instances>}
  @module("@aws-sdk/client-opsworks") @new external new_: request => t = "DescribeInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeployments = {
  type t
  type request = {
    @as("DeploymentIds") deploymentIds: option<strings>,
    @as("AppId") appId: option<string_>,
    @as("StackId") stackId: option<string_>,
  }
  type response = {@as("Deployments") deployments: option<deployments>}
  @module("@aws-sdk/client-opsworks") @new
  external new_: request => t = "DescribeDeploymentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
