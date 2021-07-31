type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type volumeType = [@as("standard") #standard | @as("io1") #io1 | @as("gp2") #gp2]
type virtualizationType = [@as("hvm") #hvm | @as("paravirtual") #paravirtual]
type validForInMinutes = int;
type tagValue = string
type tagKey = string
type switch = string
type amazonawsString = string
type stackAttributesKeys = [@as("Color") #Color]
type sourceType = [@as("s3") #s3 | @as("archive") #archive | @as("svn") #svn | @as("git") #git]
type rootDeviceType = [@as("instance-store") #instance_store | @as("ebs") #ebs]
type resourceArn = string
type nextToken = string
type minute = int;
type maxResults = int;
type layerType = [@as("custom") #custom | @as("monitoring-master") #monitoring_master | @as("db-master") #db_master | @as("memcached") #memcached | @as("nodejs-app") #nodejs_app | @as("rails-app") #rails_app | @as("php-app") #php_app | @as("web") #web | @as("lb") #lb | @as("java-app") #java_app | @as("ecs-cluster") #ecs_cluster | @as("aws-flow-ruby") #aws_flow_ruby]
type layerAttributesKeys = [@as("JavaAppServerVersion") #JavaAppServerVersion | @as("JavaAppServer") #JavaAppServer | @as("JvmOptions") #JvmOptions | @as("JvmVersion") #JvmVersion | @as("Jvm") #Jvm | @as("PassengerVersion") #PassengerVersion | @as("RailsStack") #RailsStack | @as("BundlerVersion") #BundlerVersion | @as("ManageBundler") #ManageBundler | @as("RubygemsVersion") #RubygemsVersion | @as("RubyVersion") #RubyVersion | @as("NodejsVersion") #NodejsVersion | @as("MemcachedMemory") #MemcachedMemory | @as("GangliaPassword") #GangliaPassword | @as("GangliaUser") #GangliaUser | @as("GangliaUrl") #GangliaUrl | @as("MysqlRootPasswordUbiquitous") #MysqlRootPasswordUbiquitous | @as("MysqlRootPassword") #MysqlRootPassword | @as("HaproxyHealthCheckMethod") #HaproxyHealthCheckMethod | @as("HaproxyHealthCheckUrl") #HaproxyHealthCheckUrl | @as("HaproxyStatsPassword") #HaproxyStatsPassword | @as("HaproxyStatsUser") #HaproxyStatsUser | @as("HaproxyStatsUrl") #HaproxyStatsUrl | @as("EnableHaproxyStats") #EnableHaproxyStats | @as("EcsClusterArn") #EcsClusterArn]
type amazonawsInteger = int;
type hour = string
type amazonawsDouble = float;
type deploymentCommandName = [@as("undeploy") #undeploy | @as("restart") #restart | @as("stop") #stop | @as("start") #start | @as("rollback") #rollback | @as("deploy") #deploy | @as("setup") #setup | @as("configure") #configure | @as("execute_recipes") #execute_recipes | @as("update_custom_cookbooks") #update_custom_cookbooks | @as("update_dependencies") #update_dependencies | @as("install_dependencies") #install_dependencies]
type dateTime = string
type cloudWatchLogsTimeZone = [@as("UTC") #UTC | @as("LOCAL") #LOCAL]
type cloudWatchLogsInitialPosition = [@as("end_of_file") #end_of_file | @as("start_of_file") #start_of_file]
type cloudWatchLogsEncoding = [@as("utf_8_sig") #utf_8_sig | @as("utf_8") #utf_8 | @as("utf_7") #utf_7 | @as("utf_16_le") #utf_16_le | @as("utf_16_be") #utf_16_be | @as("utf_16") #utf_16 | @as("utf_32_le") #utf_32_le | @as("utf_32_be") #utf_32_be | @as("utf_32") #utf_32 | @as("shift_jisx0213") #shift_jisx0213 | @as("shift_jis_2004") #shift_jis_2004 | @as("shift_jis") #shift_jis | @as("ptcp154") #ptcp154 | @as("mac_turkish") #mac_turkish | @as("mac_roman") #mac_roman | @as("mac_latin2") #mac_latin2 | @as("mac_iceland") #mac_iceland | @as("mac_greek") #mac_greek | @as("mac_cyrillic") #mac_cyrillic | @as("koi8_u") #koi8_u | @as("koi8_r") #koi8_r | @as("johab") #johab | @as("iso8859_16") #iso8859_16 | @as("iso8859_15") #iso8859_15 | @as("iso8859_14") #iso8859_14 | @as("iso8859_13") #iso8859_13 | @as("iso8859_10") #iso8859_10 | @as("iso8859_9") #iso8859_9 | @as("iso8859_8") #iso8859_8 | @as("iso8859_7") #iso8859_7 | @as("iso8859_6") #iso8859_6 | @as("iso8859_5") #iso8859_5 | @as("iso8859_4") #iso8859_4 | @as("iso8859_3") #iso8859_3 | @as("iso8859_2") #iso8859_2 | @as("latin_1") #latin_1 | @as("iso2022_kr") #iso2022_kr | @as("iso2022_jp_ext") #iso2022_jp_ext | @as("iso2022_jp_3") #iso2022_jp_3 | @as("iso2022_jp_2004") #iso2022_jp_2004 | @as("iso2022_jp_2") #iso2022_jp_2 | @as("iso2022_jp_1") #iso2022_jp_1 | @as("iso2022_jp") #iso2022_jp | @as("hz") #hz | @as("gb18030") #gb18030 | @as("gbk") #gbk | @as("gb2312") #gb2312 | @as("euc_kr") #euc_kr | @as("euc_jisx0213") #euc_jisx0213 | @as("euc_jis_2004") #euc_jis_2004 | @as("euc_jp") #euc_jp | @as("cp1258") #cp1258 | @as("cp1257") #cp1257 | @as("cp1256") #cp1256 | @as("cp1255") #cp1255 | @as("cp1254") #cp1254 | @as("cp1253") #cp1253 | @as("cp1252") #cp1252 | @as("cp1251") #cp1251 | @as("cp1250") #cp1250 | @as("cp1140") #cp1140 | @as("cp1026") #cp1026 | @as("cp1006") #cp1006 | @as("cp950") #cp950 | @as("cp949") #cp949 | @as("cp932") #cp932 | @as("cp875") #cp875 | @as("cp874") #cp874 | @as("cp869") #cp869 | @as("cp866") #cp866 | @as("cp865") #cp865 | @as("cp864") #cp864 | @as("cp863") #cp863 | @as("cp862") #cp862 | @as("cp861") #cp861 | @as("cp860") #cp860 | @as("cp858") #cp858 | @as("cp857") #cp857 | @as("cp856") #cp856 | @as("cp855") #cp855 | @as("cp852") #cp852 | @as("cp850") #cp850 | @as("cp775") #cp775 | @as("cp737") #cp737 | @as("cp720") #cp720 | @as("cp500") #cp500 | @as("cp437") #cp437 | @as("cp424") #cp424 | @as("cp037") #cp037 | @as("big5hkscs") #big5hkscs | @as("big5") #big5 | @as("ascii") #ascii]
type amazonawsBoolean = bool;
type autoScalingType = [@as("timer") #timer | @as("load") #load]
type architecture = [@as("i386") #i386 | @as("x86_64") #x86_64]
type appType = [@as("other") #other | @as("static") #static | @as("nodejs") #nodejs | @as("php") #php | @as("rails") #rails | @as("java") #java | @as("aws-flow-ruby") #aws_flow_ruby]
type appAttributesKeys = [@as("AwsFlowRubySettings") #AwsFlowRubySettings | @as("AutoBundleOnDeploy") #AutoBundleOnDeploy | @as("RailsEnv") #RailsEnv | @as("DocumentRoot") #DocumentRoot]
type volumeConfiguration = {
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Iops") iops: amazonawsInteger,
@as("VolumeType") volumeType: amazonawsString,
@as("Size") size: option<amazonawsInteger>,
@as("NumberOfDisks") numberOfDisks: option<amazonawsInteger>,
@as("RaidLevel") raidLevel: amazonawsInteger,
@as("MountPoint") mountPoint: option<amazonawsString>
}
type volume = {
@as("Encrypted") encrypted: amazonawsBoolean,
@as("Iops") iops: amazonawsInteger,
@as("VolumeType") volumeType: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Region") region: amazonawsString,
@as("MountPoint") mountPoint: amazonawsString,
@as("Device") device: amazonawsString,
@as("Size") size: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("RaidArrayId") raidArrayId: amazonawsString,
@as("Name") name: amazonawsString,
@as("Ec2VolumeId") ec2VolumeId: amazonawsString,
@as("VolumeId") volumeId: amazonawsString
}
type userProfile = {
@as("AllowSelfManagement") allowSelfManagement: amazonawsBoolean,
@as("SshPublicKey") sshPublicKey: amazonawsString,
@as("SshUsername") sshUsername: amazonawsString,
@as("Name") name: amazonawsString,
@as("IamUserArn") iamUserArn: amazonawsString
}
type temporaryCredential = {
@as("InstanceId") instanceId: amazonawsString,
@as("ValidForInMinutes") validForInMinutes: amazonawsInteger,
@as("Password") password: amazonawsString,
@as("Username") username: amazonawsString
}
type tags = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type strings = array<amazonawsString>
type stackConfigurationManager = {
@as("Version") version: amazonawsString,
@as("Name") name: amazonawsString
}
type stackAttributes = Js.Dict.t< amazonawsString>
type sslConfiguration = {
@as("Chain") chain: amazonawsString,
@as("PrivateKey") privateKey: option<amazonawsString>,
@as("Certificate") certificate: option<amazonawsString>
}
type source = {
@as("Revision") revision: amazonawsString,
@as("SshKey") sshKey: amazonawsString,
@as("Password") password: amazonawsString,
@as("Username") username: amazonawsString,
@as("Url") url: amazonawsString,
@as("Type") type_: sourceType
}
type shutdownEventConfiguration = {
@as("DelayUntilElbConnectionsDrained") delayUntilElbConnectionsDrained: amazonawsBoolean,
@as("ExecutionTimeout") executionTimeout: amazonawsInteger
}
type serviceError = {
@as("CreatedAt") createdAt: dateTime,
@as("Message") message: amazonawsString,
@as("Type") type_: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("ServiceErrorId") serviceErrorId: amazonawsString
}
type selfUserProfile = {
@as("SshPublicKey") sshPublicKey: amazonawsString,
@as("SshUsername") sshUsername: amazonawsString,
@as("Name") name: amazonawsString,
@as("IamUserArn") iamUserArn: amazonawsString
}
type reportedOs = {
@as("Version") version: amazonawsString,
@as("Name") name: amazonawsString,
@as("Family") family: amazonawsString
}
type rdsDbInstance = {
@as("MissingOnRds") missingOnRds: amazonawsBoolean,
@as("StackId") stackId: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("Address") address: amazonawsString,
@as("Region") region: amazonawsString,
@as("DbPassword") dbPassword: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("DbInstanceIdentifier") dbInstanceIdentifier: amazonawsString,
@as("RdsDbInstanceArn") rdsDbInstanceArn: amazonawsString
}
type raidArray = {
@as("Iops") iops: amazonawsInteger,
@as("VolumeType") volumeType: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("CreatedAt") createdAt: dateTime,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("MountPoint") mountPoint: amazonawsString,
@as("Device") device: amazonawsString,
@as("Size") size: amazonawsInteger,
@as("NumberOfDisks") numberOfDisks: amazonawsInteger,
@as("RaidLevel") raidLevel: amazonawsInteger,
@as("Name") name: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("RaidArrayId") raidArrayId: amazonawsString
}
type permission = {
@as("Level") level: amazonawsString,
@as("AllowSudo") allowSudo: amazonawsBoolean,
@as("AllowSsh") allowSsh: amazonawsBoolean,
@as("IamUserArn") iamUserArn: amazonawsString,
@as("StackId") stackId: amazonawsString
}
type parameters = Js.Dict.t< amazonawsString>
type operatingSystemConfigurationManager = {
@as("Version") version: amazonawsString,
@as("Name") name: amazonawsString
}
type layerAttributes = Js.Dict.t< amazonawsString>
type instancesCount = {
@as("Unassigning") unassigning: amazonawsInteger,
@as("Terminating") terminating: amazonawsInteger,
@as("Terminated") terminated: amazonawsInteger,
@as("Stopping") stopping: amazonawsInteger,
@as("Stopped") stopped: amazonawsInteger,
@as("StopFailed") stopFailed: amazonawsInteger,
@as("StartFailed") startFailed: amazonawsInteger,
@as("ShuttingDown") shuttingDown: amazonawsInteger,
@as("SetupFailed") setupFailed: amazonawsInteger,
@as("RunningSetup") runningSetup: amazonawsInteger,
@as("Requested") requested: amazonawsInteger,
@as("Registering") registering: amazonawsInteger,
@as("Registered") registered: amazonawsInteger,
@as("Rebooting") rebooting: amazonawsInteger,
@as("Pending") pending: amazonawsInteger,
@as("Online") online: amazonawsInteger,
@as("Deregistering") deregistering: amazonawsInteger,
@as("ConnectionLost") connectionLost: amazonawsInteger,
@as("Booting") booting: amazonawsInteger,
@as("Assigning") assigning: amazonawsInteger
}
type instanceIdentity = {
@as("Signature") signature: amazonawsString,
@as("Document") document: amazonawsString
}
type environmentVariable = {
@as("Secure") secure: amazonawsBoolean,
@as("Value") value: option<amazonawsString>,
@as("Key") key: option<amazonawsString>
}
type elasticIp = {
@as("InstanceId") instanceId: amazonawsString,
@as("Region") region: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("Name") name: amazonawsString,
@as("Ip") ip: amazonawsString
}
type ecsCluster = {
@as("RegisteredAt") registeredAt: dateTime,
@as("StackId") stackId: amazonawsString,
@as("EcsClusterName") ecsClusterName: amazonawsString,
@as("EcsClusterArn") ecsClusterArn: amazonawsString
}
type ebsBlockDevice = {
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("VolumeType") volumeType: volumeType,
@as("VolumeSize") volumeSize: amazonawsInteger,
@as("Iops") iops: amazonawsInteger,
@as("SnapshotId") snapshotId: amazonawsString
}
type dataSource = {
@as("DatabaseName") databaseName: amazonawsString,
@as("Arn") arn: amazonawsString,
@as("Type") type_: amazonawsString
}
type dailyAutoScalingSchedule = Js.Dict.t< switch>
type command = {
@as("Type") type_: amazonawsString,
@as("LogUrl") logUrl: amazonawsString,
@as("ExitCode") exitCode: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("CompletedAt") completedAt: dateTime,
@as("AcknowledgedAt") acknowledgedAt: dateTime,
@as("CreatedAt") createdAt: dateTime,
@as("DeploymentId") deploymentId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("CommandId") commandId: amazonawsString
}
type cloudWatchLogsLogStream = {
@as("BatchSize") batchSize: amazonawsInteger,
@as("BatchCount") batchCount: amazonawsInteger,
@as("BufferDuration") bufferDuration: amazonawsInteger,
@as("Encoding") encoding: cloudWatchLogsEncoding,
@as("InitialPosition") initialPosition: cloudWatchLogsInitialPosition,
@as("MultiLineStartPattern") multiLineStartPattern: amazonawsString,
@as("FileFingerprintLines") fileFingerprintLines: amazonawsString,
@as("File") file: amazonawsString,
@as("TimeZone") timeZone: cloudWatchLogsTimeZone,
@as("DatetimeFormat") datetimeFormat: amazonawsString,
@as("LogGroupName") logGroupName: amazonawsString
}
type chefConfiguration = {
@as("BerkshelfVersion") berkshelfVersion: amazonawsString,
@as("ManageBerkshelf") manageBerkshelf: amazonawsBoolean
}
type appAttributes = Js.Dict.t< amazonawsString>
type weeklyAutoScalingSchedule = {
@as("Sunday") sunday: dailyAutoScalingSchedule,
@as("Saturday") saturday: dailyAutoScalingSchedule,
@as("Friday") friday: dailyAutoScalingSchedule,
@as("Thursday") thursday: dailyAutoScalingSchedule,
@as("Wednesday") wednesday: dailyAutoScalingSchedule,
@as("Tuesday") tuesday: dailyAutoScalingSchedule,
@as("Monday") monday: dailyAutoScalingSchedule
}
type volumes = array<volume>
type volumeConfigurations = array<volumeConfiguration>
type userProfiles = array<userProfile>
type stackSummary = {
@as("InstancesCount") instancesCount: instancesCount,
@as("AppsCount") appsCount: amazonawsInteger,
@as("LayersCount") layersCount: amazonawsInteger,
@as("Arn") arn: amazonawsString,
@as("Name") name: amazonawsString,
@as("StackId") stackId: amazonawsString
}
type stack = {
@as("AgentVersion") agentVersion: amazonawsString,
@as("DefaultRootDeviceType") defaultRootDeviceType: rootDeviceType,
@as("CreatedAt") createdAt: dateTime,
@as("DefaultSshKeyName") defaultSshKeyName: amazonawsString,
@as("CustomCookbooksSource") customCookbooksSource: source,
@as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: amazonawsBoolean,
@as("UseCustomCookbooks") useCustomCookbooks: amazonawsBoolean,
@as("ChefConfiguration") chefConfiguration: chefConfiguration,
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("CustomJson") customJson: amazonawsString,
@as("DefaultSubnetId") defaultSubnetId: amazonawsString,
@as("DefaultAvailabilityZone") defaultAvailabilityZone: amazonawsString,
@as("HostnameTheme") hostnameTheme: amazonawsString,
@as("DefaultOs") defaultOs: amazonawsString,
@as("DefaultInstanceProfileArn") defaultInstanceProfileArn: amazonawsString,
@as("ServiceRoleArn") serviceRoleArn: amazonawsString,
@as("Attributes") attributes: stackAttributes,
@as("VpcId") vpcId: amazonawsString,
@as("Region") region: amazonawsString,
@as("Arn") arn: amazonawsString,
@as("Name") name: amazonawsString,
@as("StackId") stackId: amazonawsString
}
type serviceErrors = array<serviceError>
type recipes = {
@as("Shutdown") shutdown: strings,
@as("Undeploy") undeploy: strings,
@as("Deploy") deploy: strings,
@as("Configure") configure: strings,
@as("Setup") setup: strings
}
type rdsDbInstances = array<rdsDbInstance>
type raidArrays = array<raidArray>
type permissions = array<permission>
type operatingSystemConfigurationManagers = array<operatingSystemConfigurationManager>
type lifecycleEventConfiguration = {
@as("Shutdown") shutdown: shutdownEventConfiguration
}
type environmentVariables = array<environmentVariable>
type elasticLoadBalancer = {
@as("Ec2InstanceIds") ec2InstanceIds: strings,
@as("SubnetIds") subnetIds: strings,
@as("AvailabilityZones") availabilityZones: strings,
@as("VpcId") vpcId: amazonawsString,
@as("LayerId") layerId: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("DnsName") dnsName: amazonawsString,
@as("Region") region: amazonawsString,
@as("ElasticLoadBalancerName") elasticLoadBalancerName: amazonawsString
}
type elasticIps = array<elasticIp>
type ecsClusters = array<ecsCluster>
type deploymentCommandArgs = Js.Dict.t< strings>
type dataSources = array<dataSource>
type commands = array<command>
type cloudWatchLogsLogStreams = array<cloudWatchLogsLogStream>
type blockDeviceMapping = {
@as("Ebs") ebs: ebsBlockDevice,
@as("VirtualName") virtualName: amazonawsString,
@as("NoDevice") noDevice: amazonawsString,
@as("DeviceName") deviceName: amazonawsString
}
type autoScalingThresholds = {
@as("Alarms") alarms: strings,
@as("LoadThreshold") loadThreshold: amazonawsDouble,
@as("MemoryThreshold") memoryThreshold: amazonawsDouble,
@as("CpuThreshold") cpuThreshold: amazonawsDouble,
@as("IgnoreMetricsTime") ignoreMetricsTime: minute,
@as("ThresholdsWaitTime") thresholdsWaitTime: minute,
@as("InstanceCount") instanceCount: amazonawsInteger
}
type agentVersion = {
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("Version") version: amazonawsString
}
type timeBasedAutoScalingConfiguration = {
@as("AutoScalingSchedule") autoScalingSchedule: weeklyAutoScalingSchedule,
@as("InstanceId") instanceId: amazonawsString
}
type stacks = array<stack>
type operatingSystem = {
@as("Supported") supported: amazonawsBoolean,
@as("ReportedVersion") reportedVersion: amazonawsString,
@as("ReportedName") reportedName: amazonawsString,
@as("ConfigurationManagers") configurationManagers: operatingSystemConfigurationManagers,
@as("Type") type_: amazonawsString,
@as("Id") id: amazonawsString,
@as("Name") name: amazonawsString
}
type loadBasedAutoScalingConfiguration = {
@as("DownScaling") downScaling: autoScalingThresholds,
@as("UpScaling") upScaling: autoScalingThresholds,
@as("Enable") enable: amazonawsBoolean,
@as("LayerId") layerId: amazonawsString
}
type elasticLoadBalancers = array<elasticLoadBalancer>
type deploymentCommand = {
@as("Args") args: deploymentCommandArgs,
@as("Name") name: option<deploymentCommandName>
}
type cloudWatchLogsConfiguration = {
@as("LogStreams") logStreams: cloudWatchLogsLogStreams,
@as("Enabled") enabled: amazonawsBoolean
}
type blockDeviceMappings = array<blockDeviceMapping>
type app = {
@as("Environment") environment: environmentVariables,
@as("CreatedAt") createdAt: amazonawsString,
@as("Attributes") attributes: appAttributes,
@as("SslConfiguration") sslConfiguration: sslConfiguration,
@as("EnableSsl") enableSsl: amazonawsBoolean,
@as("Domains") domains: strings,
@as("AppSource") appSource: source,
@as("Type") type_: appType,
@as("DataSources") dataSources: dataSources,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("Shortname") shortname: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("AppId") appId: amazonawsString
}
type agentVersions = array<agentVersion>
type timeBasedAutoScalingConfigurations = array<timeBasedAutoScalingConfiguration>
type operatingSystems = array<operatingSystem>
type loadBasedAutoScalingConfigurations = array<loadBasedAutoScalingConfiguration>
type layer = {
@as("LifecycleEventConfiguration") lifecycleEventConfiguration: lifecycleEventConfiguration,
@as("UseEbsOptimizedInstances") useEbsOptimizedInstances: amazonawsBoolean,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("CreatedAt") createdAt: dateTime,
@as("CustomRecipes") customRecipes: recipes,
@as("DefaultRecipes") defaultRecipes: recipes,
@as("AutoAssignPublicIps") autoAssignPublicIps: amazonawsBoolean,
@as("AutoAssignElasticIps") autoAssignElasticIps: amazonawsBoolean,
@as("EnableAutoHealing") enableAutoHealing: amazonawsBoolean,
@as("VolumeConfigurations") volumeConfigurations: volumeConfigurations,
@as("Packages") packages: strings,
@as("DefaultSecurityGroupNames") defaultSecurityGroupNames: strings,
@as("CustomSecurityGroupIds") customSecurityGroupIds: strings,
@as("CustomJson") customJson: amazonawsString,
@as("CustomInstanceProfileArn") customInstanceProfileArn: amazonawsString,
@as("CloudWatchLogsConfiguration") cloudWatchLogsConfiguration: cloudWatchLogsConfiguration,
@as("Attributes") attributes: layerAttributes,
@as("Shortname") shortname: amazonawsString,
@as("Name") name: amazonawsString,
@as("Type") type_: layerType,
@as("LayerId") layerId: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("Arn") arn: amazonawsString
}
type instance = {
@as("VirtualizationType") virtualizationType: virtualizationType,
@as("Tenancy") tenancy: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("Status") status: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("SshKeyName") sshKeyName: amazonawsString,
@as("SshHostRsaKeyFingerprint") sshHostRsaKeyFingerprint: amazonawsString,
@as("SshHostDsaKeyFingerprint") sshHostDsaKeyFingerprint: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: strings,
@as("RootDeviceVolumeId") rootDeviceVolumeId: amazonawsString,
@as("RootDeviceType") rootDeviceType: rootDeviceType,
@as("ReportedOs") reportedOs: reportedOs,
@as("ReportedAgentVersion") reportedAgentVersion: amazonawsString,
@as("RegisteredBy") registeredBy: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("PublicDns") publicDns: amazonawsString,
@as("PrivateIp") privateIp: amazonawsString,
@as("PrivateDns") privateDns: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("Os") os: amazonawsString,
@as("LayerIds") layerIds: strings,
@as("LastServiceErrorId") lastServiceErrorId: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceProfileArn") instanceProfileArn: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("InfrastructureClass") infrastructureClass: amazonawsString,
@as("Hostname") hostname: amazonawsString,
@as("ElasticIp") elasticIp: amazonawsString,
@as("EcsContainerInstanceArn") ecsContainerInstanceArn: amazonawsString,
@as("EcsClusterArn") ecsClusterArn: amazonawsString,
@as("Ec2InstanceId") ec2InstanceId: amazonawsString,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("CreatedAt") createdAt: dateTime,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappings,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("AutoScalingType") autoScalingType: autoScalingType,
@as("Arn") arn: amazonawsString,
@as("Architecture") architecture: architecture,
@as("AmiId") amiId: amazonawsString,
@as("AgentVersion") agentVersion: amazonawsString
}
type deployment = {
@as("InstanceIds") instanceIds: strings,
@as("CustomJson") customJson: amazonawsString,
@as("Status") status: amazonawsString,
@as("Command") command: deploymentCommand,
@as("Comment") comment: amazonawsString,
@as("IamUserArn") iamUserArn: amazonawsString,
@as("Duration") duration: amazonawsInteger,
@as("CompletedAt") completedAt: dateTime,
@as("CreatedAt") createdAt: dateTime,
@as("AppId") appId: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("DeploymentId") deploymentId: amazonawsString
}
type apps = array<app>
type layers = array<layer>
type instances = array<instance>
type deployments = array<deployment>
type clientType;
@module("@aws-sdk/client-opsworks") @new external createClient: unit => clientType = "OpsWorksClient";
module UpdateVolume = {
  type t;
  type request = {
@as("MountPoint") mountPoint: amazonawsString,
@as("Name") name: amazonawsString,
@as("VolumeId") volumeId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateUserProfile = {
  type t;
  type request = {
@as("AllowSelfManagement") allowSelfManagement: amazonawsBoolean,
@as("SshPublicKey") sshPublicKey: amazonawsString,
@as("SshUsername") sshUsername: amazonawsString,
@as("IamUserArn") iamUserArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRdsDbInstance = {
  type t;
  type request = {
@as("DbPassword") dbPassword: amazonawsString,
@as("DbUser") dbUser: amazonawsString,
@as("RdsDbInstanceArn") rdsDbInstanceArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateRdsDbInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateMyUserProfile = {
  type t;
  type request = {
@as("SshPublicKey") sshPublicKey: amazonawsString
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateMyUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateElasticIp = {
  type t;
  type request = {
@as("Name") name: amazonawsString,
@as("ElasticIp") elasticIp: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateElasticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UnassignVolume = {
  type t;
  type request = {
@as("VolumeId") volumeId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UnassignVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UnassignInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UnassignInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StopStack = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "StopStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StopInstance = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "StopInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartStack = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "StartStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "StartInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetPermission = {
  type t;
  type request = {
@as("Level") level: amazonawsString,
@as("AllowSudo") allowSudo: amazonawsBoolean,
@as("AllowSsh") allowSsh: amazonawsBoolean,
@as("IamUserArn") iamUserArn: option<amazonawsString>,
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "SetPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterVolume = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>,
@as("Ec2VolumeId") ec2VolumeId: amazonawsString
}
  type response = {
@as("VolumeId") volumeId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RegisterVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterRdsDbInstance = {
  type t;
  type request = {
@as("DbPassword") dbPassword: option<amazonawsString>,
@as("DbUser") dbUser: option<amazonawsString>,
@as("RdsDbInstanceArn") rdsDbInstanceArn: option<amazonawsString>,
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RegisterRdsDbInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterElasticIp = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>,
@as("ElasticIp") elasticIp: option<amazonawsString>
}
  type response = {
@as("ElasticIp") elasticIp: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RegisterElasticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterEcsCluster = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>,
@as("EcsClusterArn") ecsClusterArn: option<amazonawsString>
}
  type response = {
@as("EcsClusterArn") ecsClusterArn: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RegisterEcsClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RebootInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetHostnameSuggestion = {
  type t;
  type request = {
@as("LayerId") layerId: option<amazonawsString>
}
  type response = {
@as("Hostname") hostname: amazonawsString,
@as("LayerId") layerId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "GetHostnameSuggestionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateElasticIp = {
  type t;
  type request = {
@as("ElasticIp") elasticIp: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DisassociateElasticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachElasticLoadBalancer = {
  type t;
  type request = {
@as("LayerId") layerId: option<amazonawsString>,
@as("ElasticLoadBalancerName") elasticLoadBalancerName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DetachElasticLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterVolume = {
  type t;
  type request = {
@as("VolumeId") volumeId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeregisterVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterRdsDbInstance = {
  type t;
  type request = {
@as("RdsDbInstanceArn") rdsDbInstanceArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeregisterRdsDbInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterInstance = {
  type t;
  type request = {
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeregisterInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterElasticIp = {
  type t;
  type request = {
@as("ElasticIp") elasticIp: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeregisterElasticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeregisterEcsCluster = {
  type t;
  type request = {
@as("EcsClusterArn") ecsClusterArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeregisterEcsClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUserProfile = {
  type t;
  type request = {
@as("IamUserArn") iamUserArn: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteStack = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeleteStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLayer = {
  type t;
  type request = {
@as("LayerId") layerId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeleteLayerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteInstance = {
  type t;
  type request = {
@as("DeleteVolumes") deleteVolumes: amazonawsBoolean,
@as("DeleteElasticIp") deleteElasticIp: amazonawsBoolean,
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeleteInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApp = {
  type t;
  type request = {
@as("AppId") appId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DeleteAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateUserProfile = {
  type t;
  type request = {
@as("AllowSelfManagement") allowSelfManagement: amazonawsBoolean,
@as("SshPublicKey") sshPublicKey: amazonawsString,
@as("SshUsername") sshUsername: amazonawsString,
@as("IamUserArn") iamUserArn: option<amazonawsString>
}
  type response = {
@as("IamUserArn") iamUserArn: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachElasticLoadBalancer = {
  type t;
  type request = {
@as("LayerId") layerId: option<amazonawsString>,
@as("ElasticLoadBalancerName") elasticLoadBalancerName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "AttachElasticLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateElasticIp = {
  type t;
  type request = {
@as("InstanceId") instanceId: amazonawsString,
@as("ElasticIp") elasticIp: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "AssociateElasticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssignVolume = {
  type t;
  type request = {
@as("InstanceId") instanceId: amazonawsString,
@as("VolumeId") volumeId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "AssignVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateStack = {
  type t;
  type request = {
@as("AgentVersion") agentVersion: amazonawsString,
@as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: amazonawsBoolean,
@as("DefaultRootDeviceType") defaultRootDeviceType: rootDeviceType,
@as("DefaultSshKeyName") defaultSshKeyName: amazonawsString,
@as("CustomCookbooksSource") customCookbooksSource: source,
@as("UseCustomCookbooks") useCustomCookbooks: amazonawsBoolean,
@as("ChefConfiguration") chefConfiguration: chefConfiguration,
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("CustomJson") customJson: amazonawsString,
@as("DefaultSubnetId") defaultSubnetId: amazonawsString,
@as("DefaultAvailabilityZone") defaultAvailabilityZone: amazonawsString,
@as("HostnameTheme") hostnameTheme: amazonawsString,
@as("DefaultOs") defaultOs: amazonawsString,
@as("DefaultInstanceProfileArn") defaultInstanceProfileArn: amazonawsString,
@as("ServiceRoleArn") serviceRoleArn: amazonawsString,
@as("Attributes") attributes: stackAttributes,
@as("Name") name: amazonawsString,
@as("StackId") stackId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateInstance = {
  type t;
  type request = {
@as("AgentVersion") agentVersion: amazonawsString,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("Architecture") architecture: architecture,
@as("SshKeyName") sshKeyName: amazonawsString,
@as("AmiId") amiId: amazonawsString,
@as("Os") os: amazonawsString,
@as("Hostname") hostname: amazonawsString,
@as("AutoScalingType") autoScalingType: autoScalingType,
@as("InstanceType") instanceType: amazonawsString,
@as("LayerIds") layerIds: strings,
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterInstance = {
  type t;
  type request = {
@as("InstanceIdentity") instanceIdentity: instanceIdentity,
@as("RsaPublicKeyFingerprint") rsaPublicKeyFingerprint: amazonawsString,
@as("RsaPublicKey") rsaPublicKey: amazonawsString,
@as("PrivateIp") privateIp: amazonawsString,
@as("PublicIp") publicIp: amazonawsString,
@as("Hostname") hostname: amazonawsString,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("InstanceId") instanceId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "RegisterInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GrantAccess = {
  type t;
  type request = {
@as("ValidForInMinutes") validForInMinutes: validForInMinutes,
@as("InstanceId") instanceId: option<amazonawsString>
}
  type response = {
@as("TemporaryCredential") temporaryCredential: temporaryCredential
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "GrantAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackProvisioningParameters = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("Parameters") parameters: parameters,
@as("AgentInstallerUrl") agentInstallerUrl: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackProvisioningParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMyUserProfile = {
  type t;
  
  type response = {
@as("UserProfile") userProfile: selfUserProfile
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<unit>) => t = "DescribeMyUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStack = {
  type t;
  type request = {
@as("AgentVersion") agentVersion: amazonawsString,
@as("DefaultRootDeviceType") defaultRootDeviceType: rootDeviceType,
@as("DefaultSshKeyName") defaultSshKeyName: amazonawsString,
@as("CustomCookbooksSource") customCookbooksSource: source,
@as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: amazonawsBoolean,
@as("UseCustomCookbooks") useCustomCookbooks: amazonawsBoolean,
@as("ChefConfiguration") chefConfiguration: chefConfiguration,
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("CustomJson") customJson: amazonawsString,
@as("DefaultSubnetId") defaultSubnetId: amazonawsString,
@as("DefaultAvailabilityZone") defaultAvailabilityZone: amazonawsString,
@as("HostnameTheme") hostnameTheme: amazonawsString,
@as("DefaultOs") defaultOs: amazonawsString,
@as("DefaultInstanceProfileArn") defaultInstanceProfileArn: option<amazonawsString>,
@as("ServiceRoleArn") serviceRoleArn: option<amazonawsString>,
@as("Attributes") attributes: stackAttributes,
@as("VpcId") vpcId: amazonawsString,
@as("Region") region: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("StackId") stackId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CloneStack = {
  type t;
  type request = {
@as("AgentVersion") agentVersion: amazonawsString,
@as("DefaultRootDeviceType") defaultRootDeviceType: rootDeviceType,
@as("CloneAppIds") cloneAppIds: strings,
@as("ClonePermissions") clonePermissions: amazonawsBoolean,
@as("DefaultSshKeyName") defaultSshKeyName: amazonawsString,
@as("CustomCookbooksSource") customCookbooksSource: source,
@as("UseOpsworksSecurityGroups") useOpsworksSecurityGroups: amazonawsBoolean,
@as("UseCustomCookbooks") useCustomCookbooks: amazonawsBoolean,
@as("ChefConfiguration") chefConfiguration: chefConfiguration,
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("CustomJson") customJson: amazonawsString,
@as("DefaultSubnetId") defaultSubnetId: amazonawsString,
@as("DefaultAvailabilityZone") defaultAvailabilityZone: amazonawsString,
@as("HostnameTheme") hostnameTheme: amazonawsString,
@as("DefaultOs") defaultOs: amazonawsString,
@as("DefaultInstanceProfileArn") defaultInstanceProfileArn: amazonawsString,
@as("ServiceRoleArn") serviceRoleArn: option<amazonawsString>,
@as("Attributes") attributes: stackAttributes,
@as("VpcId") vpcId: amazonawsString,
@as("Region") region: amazonawsString,
@as("Name") name: amazonawsString,
@as("SourceStackId") sourceStackId: option<amazonawsString>
}
  type response = {
@as("StackId") stackId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CloneStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssignInstance = {
  type t;
  type request = {
@as("LayerIds") layerIds: option<strings>,
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "AssignInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateApp = {
  type t;
  type request = {
@as("Environment") environment: environmentVariables,
@as("Attributes") attributes: appAttributes,
@as("SslConfiguration") sslConfiguration: sslConfiguration,
@as("EnableSsl") enableSsl: amazonawsBoolean,
@as("Domains") domains: strings,
@as("AppSource") appSource: source,
@as("Type") type_: appType,
@as("DataSources") dataSources: dataSources,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("AppId") appId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetTimeBasedAutoScaling = {
  type t;
  type request = {
@as("AutoScalingSchedule") autoScalingSchedule: weeklyAutoScalingSchedule,
@as("InstanceId") instanceId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "SetTimeBasedAutoScalingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetLoadBasedAutoScaling = {
  type t;
  type request = {
@as("DownScaling") downScaling: autoScalingThresholds,
@as("UpScaling") upScaling: autoScalingThresholds,
@as("Enable") enable: amazonawsBoolean,
@as("LayerId") layerId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "SetLoadBasedAutoScalingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeVolumes = {
  type t;
  type request = {
@as("VolumeIds") volumeIds: strings,
@as("RaidArrayId") raidArrayId: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
  type response = {
@as("Volumes") volumes: volumes
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeVolumesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUserProfiles = {
  type t;
  type request = {
@as("IamUserArns") iamUserArns: strings
}
  type response = {
@as("UserProfiles") userProfiles: userProfiles
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStackSummary = {
  type t;
  type request = {
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("StackSummary") stackSummary: stackSummary
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeStackSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceErrors = {
  type t;
  type request = {
@as("ServiceErrorIds") serviceErrorIds: strings,
@as("InstanceId") instanceId: amazonawsString,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("ServiceErrors") serviceErrors: serviceErrors
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeServiceErrorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRdsDbInstances = {
  type t;
  type request = {
@as("RdsDbInstanceArns") rdsDbInstanceArns: strings,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("RdsDbInstances") rdsDbInstances: rdsDbInstances
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeRdsDbInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRaidArrays = {
  type t;
  type request = {
@as("RaidArrayIds") raidArrayIds: strings,
@as("StackId") stackId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
  type response = {
@as("RaidArrays") raidArrays: raidArrays
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeRaidArraysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePermissions = {
  type t;
  type request = {
@as("StackId") stackId: amazonawsString,
@as("IamUserArn") iamUserArn: amazonawsString
}
  type response = {
@as("Permissions") permissions: permissions
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticIps = {
  type t;
  type request = {
@as("Ips") ips: strings,
@as("StackId") stackId: amazonawsString,
@as("InstanceId") instanceId: amazonawsString
}
  type response = {
@as("ElasticIps") elasticIps: elasticIps
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticIpsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEcsClusters = {
  type t;
  type request = {
@as("MaxResults") maxResults: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("StackId") stackId: amazonawsString,
@as("EcsClusterArns") ecsClusterArns: strings
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EcsClusters") ecsClusters: ecsClusters
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeEcsClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCommands = {
  type t;
  type request = {
@as("CommandIds") commandIds: strings,
@as("InstanceId") instanceId: amazonawsString,
@as("DeploymentId") deploymentId: amazonawsString
}
  type response = {
@as("Commands") commands: commands
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeCommandsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApp = {
  type t;
  type request = {
@as("Environment") environment: environmentVariables,
@as("Attributes") attributes: appAttributes,
@as("SslConfiguration") sslConfiguration: sslConfiguration,
@as("EnableSsl") enableSsl: amazonawsBoolean,
@as("Domains") domains: strings,
@as("AppSource") appSource: source,
@as("Type") type_: option<appType>,
@as("DataSources") dataSources: dataSources,
@as("Description") description: amazonawsString,
@as("Name") name: option<amazonawsString>,
@as("Shortname") shortname: amazonawsString,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("AppId") appId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateAppCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLayer = {
  type t;
  type request = {
@as("LifecycleEventConfiguration") lifecycleEventConfiguration: lifecycleEventConfiguration,
@as("UseEbsOptimizedInstances") useEbsOptimizedInstances: amazonawsBoolean,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("CustomRecipes") customRecipes: recipes,
@as("AutoAssignPublicIps") autoAssignPublicIps: amazonawsBoolean,
@as("AutoAssignElasticIps") autoAssignElasticIps: amazonawsBoolean,
@as("EnableAutoHealing") enableAutoHealing: amazonawsBoolean,
@as("VolumeConfigurations") volumeConfigurations: volumeConfigurations,
@as("Packages") packages: strings,
@as("CustomSecurityGroupIds") customSecurityGroupIds: strings,
@as("CustomJson") customJson: amazonawsString,
@as("CustomInstanceProfileArn") customInstanceProfileArn: amazonawsString,
@as("CloudWatchLogsConfiguration") cloudWatchLogsConfiguration: cloudWatchLogsConfiguration,
@as("Attributes") attributes: layerAttributes,
@as("Shortname") shortname: amazonawsString,
@as("Name") name: amazonawsString,
@as("LayerId") layerId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "UpdateLayerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeStacks = {
  type t;
  type request = {
@as("StackIds") stackIds: strings
}
  type response = {
@as("Stacks") stacks: stacks
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeStacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticLoadBalancers = {
  type t;
  type request = {
@as("LayerIds") layerIds: strings,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("ElasticLoadBalancers") elasticLoadBalancers: elasticLoadBalancers
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAgentVersions = {
  type t;
  type request = {
@as("ConfigurationManager") configurationManager: stackConfigurationManager,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("AgentVersions") agentVersions: agentVersions
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeAgentVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLayer = {
  type t;
  type request = {
@as("LifecycleEventConfiguration") lifecycleEventConfiguration: lifecycleEventConfiguration,
@as("UseEbsOptimizedInstances") useEbsOptimizedInstances: amazonawsBoolean,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("CustomRecipes") customRecipes: recipes,
@as("AutoAssignPublicIps") autoAssignPublicIps: amazonawsBoolean,
@as("AutoAssignElasticIps") autoAssignElasticIps: amazonawsBoolean,
@as("EnableAutoHealing") enableAutoHealing: amazonawsBoolean,
@as("VolumeConfigurations") volumeConfigurations: volumeConfigurations,
@as("Packages") packages: strings,
@as("CustomSecurityGroupIds") customSecurityGroupIds: strings,
@as("CustomJson") customJson: amazonawsString,
@as("CustomInstanceProfileArn") customInstanceProfileArn: amazonawsString,
@as("CloudWatchLogsConfiguration") cloudWatchLogsConfiguration: cloudWatchLogsConfiguration,
@as("Attributes") attributes: layerAttributes,
@as("Shortname") shortname: option<amazonawsString>,
@as("Name") name: option<amazonawsString>,
@as("Type") type_: option<layerType>,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("LayerId") layerId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateLayerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstance = {
  type t;
  type request = {
@as("Tenancy") tenancy: amazonawsString,
@as("AgentVersion") agentVersion: amazonawsString,
@as("EbsOptimized") ebsOptimized: amazonawsBoolean,
@as("InstallUpdatesOnBoot") installUpdatesOnBoot: amazonawsBoolean,
@as("BlockDeviceMappings") blockDeviceMappings: blockDeviceMappings,
@as("RootDeviceType") rootDeviceType: rootDeviceType,
@as("Architecture") architecture: architecture,
@as("SubnetId") subnetId: amazonawsString,
@as("VirtualizationType") virtualizationType: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("SshKeyName") sshKeyName: amazonawsString,
@as("AmiId") amiId: amazonawsString,
@as("Os") os: amazonawsString,
@as("Hostname") hostname: amazonawsString,
@as("AutoScalingType") autoScalingType: autoScalingType,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("LayerIds") layerIds: option<strings>,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("InstanceId") instanceId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("CustomJson") customJson: amazonawsString,
@as("Comment") comment: amazonawsString,
@as("Command") command: option<deploymentCommand>,
@as("LayerIds") layerIds: strings,
@as("InstanceIds") instanceIds: strings,
@as("AppId") appId: amazonawsString,
@as("StackId") stackId: option<amazonawsString>
}
  type response = {
@as("DeploymentId") deploymentId: amazonawsString
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTimeBasedAutoScaling = {
  type t;
  type request = {
@as("InstanceIds") instanceIds: option<strings>
}
  type response = {
@as("TimeBasedAutoScalingConfigurations") timeBasedAutoScalingConfigurations: timeBasedAutoScalingConfigurations
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeTimeBasedAutoScalingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOperatingSystems = {
  type t;
  
  type response = {
@as("OperatingSystems") operatingSystems: operatingSystems
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<unit>) => t = "DescribeOperatingSystemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoadBasedAutoScaling = {
  type t;
  type request = {
@as("LayerIds") layerIds: option<strings>
}
  type response = {
@as("LoadBasedAutoScalingConfigurations") loadBasedAutoScalingConfigurations: loadBasedAutoScalingConfigurations
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoadBasedAutoScalingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApps = {
  type t;
  type request = {
@as("AppIds") appIds: strings,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("Apps") apps: apps
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeAppsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLayers = {
  type t;
  type request = {
@as("LayerIds") layerIds: strings,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("Layers") layers: layers
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeLayersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstances = {
  type t;
  type request = {
@as("InstanceIds") instanceIds: strings,
@as("LayerId") layerId: amazonawsString,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("Instances") instances: instances
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDeployments = {
  type t;
  type request = {
@as("DeploymentIds") deploymentIds: strings,
@as("AppId") appId: amazonawsString,
@as("StackId") stackId: amazonawsString
}
  type response = {
@as("Deployments") deployments: deployments
}
  @module("@aws-sdk/client-opsworks") @new external new_: (Js.Promise.t<request>) => t = "DescribeDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
