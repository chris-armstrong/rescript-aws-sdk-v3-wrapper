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
@ocaml.doc(
  "<p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>"
)
type cloudWatchLogsTimeZone = [@as("UTC") #UTC | @as("LOCAL") #LOCAL]
@ocaml.doc(
  "<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>"
)
type cloudWatchLogsInitialPosition = [
  | @as("end_of_file") #End_Of_File
  | @as("start_of_file") #Start_Of_File
]
@ocaml.doc(
  "<p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>"
)
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
@ocaml.doc("<p>Describes an Amazon EBS volume configuration.</p>")
type volumeConfiguration = {
  @ocaml.doc("<p>Specifies whether an Amazon EBS volume is encrypted. For more information, 
            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>")
  @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>For PIOPS volumes, the IOPS per disk.</p>") @as("Iops") iops: option<integer_>,
  @ocaml.doc("<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\">
          Amazon EBS Volume Types</a>.</p>
         <ul>
            <li>
               <p>
                  <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>
            </li>
            <li>
               <p>
                  <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
               <p>
                  <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
              <p>
                  <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
              <p>
                  <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
            </li>
         </ul>")
  @as("VolumeType")
  volumeType: option<string_>,
  @ocaml.doc("<p>The volume size.</p>") @as("Size") size: integer_,
  @ocaml.doc("<p>The number of disks in the volume.</p>") @as("NumberOfDisks")
  numberOfDisks: integer_,
  @ocaml.doc(
    "<p>The volume <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"
  )
  @as("RaidLevel")
  raidLevel: option<integer_>,
  @ocaml.doc("<p>The volume mount point. For example \"/dev/sdh\".</p>") @as("MountPoint")
  mountPoint: string_,
}
@ocaml.doc("<p>Describes an instance's Amazon EBS volume.</p>")
type volume = {
  @ocaml.doc("<p>Specifies whether an Amazon EBS volume is encrypted. For more information, 
            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>")
  @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>For PIOPS volumes, the IOPS per disk.</p>") @as("Iops") iops: option<integer_>,
  @ocaml.doc("<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\">
          Amazon EBS Volume Types</a>.</p>
         <ul>
            <li>
               <p>
                  <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>
            </li>
            <li>
               <p>
                  <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
               <p>
                  <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
              <p>
                  <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
            </li>
            <li>
              <p>
                  <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p>
            </li>
         </ul>")
  @as("VolumeType")
  volumeType: option<string_>,
  @ocaml.doc(
    "<p>The volume Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc(
    "<p>The AWS region. For more information about AWS regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("Region")
  region: option<string_>,
  @ocaml.doc("<p>The volume mount point. For example, \"/mnt/disk1\".</p>") @as("MountPoint")
  mountPoint: option<string_>,
  @ocaml.doc("<p>The device name.</p>") @as("Device") device: option<string_>,
  @ocaml.doc("<p>The volume size.</p>") @as("Size") size: option<integer_>,
  @ocaml.doc(
    "<p>The value returned by <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html\">DescribeVolumes</a>.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
  @ocaml.doc("<p>The RAID array ID.</p>") @as("RaidArrayId") raidArrayId: option<string_>,
  @ocaml.doc("<p>The volume name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The Amazon EC2 volume ID.</p>") @as("Ec2VolumeId") ec2VolumeId: option<string_>,
  @ocaml.doc("<p>The volume ID.</p>") @as("VolumeId") volumeId: option<string_>,
}
@ocaml.doc("<p>Describes a user's SSH information.</p>")
type userProfile = {
  @ocaml.doc("<p>Whether users can specify their own SSH public key through the My Settings page. For more
      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User
        Permissions</a>.</p>")
  @as("AllowSelfManagement")
  allowSelfManagement: option<boolean_>,
  @ocaml.doc("<p>The user's SSH public key.</p>") @as("SshPublicKey") sshPublicKey: option<string_>,
  @ocaml.doc("<p>The user's SSH user name.</p>") @as("SshUsername") sshUsername: option<string_>,
  @ocaml.doc("<p>The user's name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The user's IAM ARN.</p>") @as("IamUserArn") iamUserArn: option<string_>,
}
@ocaml.doc(
  "<p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>"
)
type temporaryCredential = {
  @ocaml.doc("<p>The instance's AWS OpsWorks Stacks ID.</p>") @as("InstanceId")
  instanceId: option<string_>,
  @ocaml.doc(
    "<p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>"
  )
  @as("ValidForInMinutes")
  validForInMinutes: option<integer_>,
  @ocaml.doc("<p>The password.</p>") @as("Password") password: option<string_>,
  @ocaml.doc("<p>The user name.</p>") @as("Username") username: option<string_>,
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type strings = array<string_>
@ocaml.doc("<p>Describes the configuration manager.</p>")
type stackConfigurationManager = {
  @ocaml.doc(
    "<p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.</p>"
  )
  @as("Version")
  version: option<string_>,
  @ocaml.doc("<p>The name. This parameter must be set to \"Chef\".</p>") @as("Name")
  name: option<string_>,
}
type stackAttributes = Js.Dict.t<string_>
@ocaml.doc("<p>Describes an app's SSL configuration.</p>")
type sslConfiguration = {
  @ocaml.doc(
    "<p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>"
  )
  @as("Chain")
  chain: option<string_>,
  @ocaml.doc("<p>The private key; the contents of the certificate's domain.kex file.</p>")
  @as("PrivateKey")
  privateKey: string_,
  @ocaml.doc("<p>The contents of the certificate's domain.crt file.</p>") @as("Certificate")
  certificate: string_,
}
@ocaml.doc("<p>Contains the information required to retrieve an app or cookbook from a repository. For more
      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Creating Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Custom Recipes and
        Cookbooks</a>.</p>")
type source = {
  @ocaml.doc(
    "<p>The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.</p>"
  )
  @as("Revision")
  revision: option<string_>,
  @ocaml.doc("<p>In requests, the repository's SSH key.</p>
         <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>")
  @as("SshKey")
  sshKey: option<string_>,
  @ocaml.doc("<p>When included in a request, the parameter depends on the repository type.</p>
         <ul>
            <li>
               <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access
        key.</p>
            </li>
            <li>
               <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the
        password.</p>
            </li>
         </ul>
         <p>For more information on how to safely handle IAM credentials, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html\">https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p>
         <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>")
  @as("Password")
  password: option<string_>,
  @ocaml.doc("<p>This parameter depends on the repository type.</p>
         <ul>
            <li>
               <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key
        ID.</p>
            </li>
            <li>
               <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code>
        to the user name.</p>
            </li>
         </ul>")
  @as("Username")
  username: option<string_>,
  @ocaml.doc(
    "<p>The source URL. The following is an example of an Amazon S3 source URL:  <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>"
  )
  @as("Url")
  url: option<string_>,
  @ocaml.doc("<p>The repository type.</p>") @as("Type") type_: option<sourceType>,
}
@ocaml.doc("<p>The Shutdown event configuration.</p>")
type shutdownEventConfiguration = {
  @ocaml.doc("<p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain\">Connection Draining</a>
         </p>")
  @as("DelayUntilElbConnectionsDrained")
  delayUntilElbConnectionsDrained: option<boolean_>,
  @ocaml.doc(
    "<p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>"
  )
  @as("ExecutionTimeout")
  executionTimeout: option<integer_>,
}
@ocaml.doc("<p>Describes an AWS OpsWorks Stacks service error.</p>")
type serviceError = {
  @ocaml.doc("<p>When the error occurred.</p>") @as("CreatedAt") createdAt: option<dateTime>,
  @ocaml.doc("<p>A message that describes the error.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The error type.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The error ID.</p>") @as("ServiceErrorId") serviceErrorId: option<string_>,
}
@ocaml.doc("<p>Describes a user's SSH information.</p>")
type selfUserProfile = {
  @ocaml.doc("<p>The user's SSH public key.</p>") @as("SshPublicKey") sshPublicKey: option<string_>,
  @ocaml.doc("<p>The user's SSH user name.</p>") @as("SshUsername") sshUsername: option<string_>,
  @ocaml.doc("<p>The user's name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The user's IAM ARN.</p>") @as("IamUserArn") iamUserArn: option<string_>,
}
@ocaml.doc("<p>A registered instance's reported operating system.</p>")
type reportedOs = {
  @ocaml.doc("<p>The operating system version.</p>") @as("Version") version: option<string_>,
  @ocaml.doc("<p>The operating system name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The operating system family.</p>") @as("Family") family: option<string_>,
}
@ocaml.doc("<p>Describes an Amazon RDS instance.</p>")
type rdsDbInstance = {
  @ocaml.doc("<p>Set to <code>true</code> if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts
      to discover the instance only once. If this value is set to <code>true</code>, you must
      deregister the instance, and then register it again.</p>")
  @as("MissingOnRds")
  missingOnRds: option<boolean_>,
  @ocaml.doc("<p>The ID of the stack with which the instance is registered.</p>") @as("StackId")
  stackId: option<string_>,
  @ocaml.doc("<p>The instance's database engine.</p>") @as("Engine") engine: option<string_>,
  @ocaml.doc("<p>The instance's address.</p>") @as("Address") address: option<string_>,
  @ocaml.doc("<p>The instance's AWS region.</p>") @as("Region") region: option<string_>,
  @ocaml.doc(
    "<p>AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"
  )
  @as("DbPassword")
  dbPassword: option<string_>,
  @ocaml.doc("<p>The master user name.</p>") @as("DbUser") dbUser: option<string_>,
  @ocaml.doc("<p>The DB instance identifier.</p>") @as("DbInstanceIdentifier")
  dbInstanceIdentifier: option<string_>,
  @ocaml.doc("<p>The instance's ARN.</p>") @as("RdsDbInstanceArn")
  rdsDbInstanceArn: option<string_>,
}
@ocaml.doc("<p>Describes an instance's RAID array.</p>")
type raidArray = {
  @ocaml.doc("<p>For PIOPS volumes, the IOPS per disk.</p>") @as("Iops") iops: option<integer_>,
  @ocaml.doc("<p>The volume type, standard or PIOPS.</p>") @as("VolumeType")
  volumeType: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>When the RAID array was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc(
    "<p>The array's Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The array's mount point.</p>") @as("MountPoint") mountPoint: option<string_>,
  @ocaml.doc("<p>The array's Linux device. For example /dev/mdadm0.</p>") @as("Device")
  device: option<string_>,
  @ocaml.doc("<p>The array's size.</p>") @as("Size") size: option<integer_>,
  @ocaml.doc("<p>The number of disks in the array.</p>") @as("NumberOfDisks")
  numberOfDisks: option<integer_>,
  @ocaml.doc(
    "<p>The <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"
  )
  @as("RaidLevel")
  raidLevel: option<integer_>,
  @ocaml.doc("<p>The array name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
  @ocaml.doc("<p>The array ID.</p>") @as("RaidArrayId") raidArrayId: option<string_>,
}
@ocaml.doc("<p>Describes stack or user permissions.</p>")
type permission = {
  @ocaml.doc("<p>The user's permission level, which must be the following:</p>
         <ul>
            <li>
               <p>
                  <code>deny</code>
               </p>
            </li>
            <li>
               <p>
                  <code>show</code>
               </p>
            </li>
            <li>
               <p>
                  <code>deploy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>manage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>iam_only</code>
               </p>
            </li>
         </ul>
         <p>For more information on the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>
         </p>")
  @as("Level")
  level: option<string_>,
  @ocaml.doc("<p>Whether the user can use <b>sudo</b>.</p>") @as("AllowSudo")
  allowSudo: option<boolean_>,
  @ocaml.doc("<p>Whether the user can use SSH.</p>") @as("AllowSsh") allowSsh: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more
      information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
  @as("IamUserArn")
  iamUserArn: option<string_>,
  @ocaml.doc("<p>A stack ID.</p>") @as("StackId") stackId: option<string_>,
}
type parameters = Js.Dict.t<string_>
@ocaml.doc(
  "<p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>"
)
type operatingSystemConfigurationManager = {
  @ocaml.doc(
    "<p>The versions of the configuration manager that are supported by an operating system.</p>"
  )
  @as("Version")
  version: option<string_>,
  @ocaml.doc("<p>The name of the configuration manager, which is Chef.</p>") @as("Name")
  name: option<string_>,
}
type layerAttributes = Js.Dict.t<string_>
@ocaml.doc("<p>Describes how many instances a stack has for each status.</p>")
type instancesCount = {
  @ocaml.doc("<p>The number of instances in the Unassigning state.</p>") @as("Unassigning")
  unassigning: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>terminating</code> status.</p>")
  @as("Terminating")
  terminating: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>terminated</code> status.</p>")
  @as("Terminated")
  terminated: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>stopping</code> status.</p>") @as("Stopping")
  stopping: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>stopped</code> status.</p>") @as("Stopped")
  stopped: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>stop_failed</code> status.</p>")
  @as("StopFailed")
  stopFailed: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>start_failed</code> status.</p>")
  @as("StartFailed")
  startFailed: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>shutting_down</code> status.</p>")
  @as("ShuttingDown")
  shuttingDown: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>setup_failed</code> status.</p>")
  @as("SetupFailed")
  setupFailed: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>running_setup</code> status.</p>")
  @as("RunningSetup")
  runningSetup: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>requested</code> status.</p>") @as("Requested")
  requested: option<integer_>,
  @ocaml.doc("<p>The number of instances in the Registering state.</p>") @as("Registering")
  registering: option<integer_>,
  @ocaml.doc("<p>The number of instances in the Registered state.</p>") @as("Registered")
  registered: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>rebooting</code> status.</p>") @as("Rebooting")
  rebooting: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>pending</code> status.</p>") @as("Pending")
  pending: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>online</code> status.</p>") @as("Online")
  online: option<integer_>,
  @ocaml.doc("<p>The number of instances in the Deregistering state.</p>") @as("Deregistering")
  deregistering: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>connection_lost</code> status.</p>")
  @as("ConnectionLost")
  connectionLost: option<integer_>,
  @ocaml.doc("<p>The number of instances with <code>booting</code> status.</p>") @as("Booting")
  booting: option<integer_>,
  @ocaml.doc("<p>The number of instances in the Assigning state.</p>") @as("Assigning")
  assigning: option<integer_>,
}
@ocaml.doc("<p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more
      information, see <a href=\"https://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html\">Instance Metadata and User Data</a>.</p>")
type instanceIdentity = {
  @ocaml.doc(
    "<p>A signature that can be used to verify the document's accuracy and authenticity.</p>"
  )
  @as("Signature")
  signature: option<string_>,
  @ocaml.doc("<p>A JSON document that contains the metadata.</p>") @as("Document")
  document: option<string_>,
}
@ocaml.doc("<p>Represents an app's environment variable.</p>")
type environmentVariable = {
  @ocaml.doc("<p>(Optional) Whether the variable's value will be returned by the <a>DescribeApps</a> action.
      To conceal an environment variable's value, set <code>Secure</code> to <code>true</code>.
        <code>DescribeApps</code> then returns <code>*****FILTERED*****</code> instead of the actual
      value. The default value for <code>Secure</code> is <code>false</code>. </p>")
  @as("Secure")
  secure: option<boolean_>,
  @ocaml.doc(
    "<p>(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.</p>"
  )
  @as("Value")
  value: string_,
  @ocaml.doc(
    "<p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>"
  )
  @as("Key")
  key: string_,
}
@ocaml.doc("<p>Describes an Elastic IP address.</p>")
type elasticIp = {
  @ocaml.doc("<p>The ID of the instance that the address is attached to.</p>") @as("InstanceId")
  instanceId: option<string_>,
  @ocaml.doc(
    "<p>The AWS region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("Region")
  region: option<string_>,
  @ocaml.doc("<p>The domain.</p>") @as("Domain") domain: option<string_>,
  @ocaml.doc("<p>The name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The IP address.</p>") @as("Ip") ip: option<string_>,
}
@ocaml.doc("<p>Describes a registered Amazon ECS cluster.</p>")
type ecsCluster = {
  @ocaml.doc("<p>The time and date that the cluster was registered with the stack.</p>")
  @as("RegisteredAt")
  registeredAt: option<dateTime>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The cluster name.</p>") @as("EcsClusterName") ecsClusterName: option<string_>,
  @ocaml.doc("<p>The cluster's ARN.</p>") @as("EcsClusterArn") ecsClusterArn: option<string_>,
}
@ocaml.doc("<p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>
      data type.</p>")
type ebsBlockDevice = {
  @ocaml.doc("<p>Whether the volume is deleted on instance termination.</p>")
  @as("DeleteOnTermination")
  deleteOnTermination: option<boolean_>,
  @ocaml.doc("<p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for
          Provisioned IOPS (SSD) volumes, <code>st1</code> for Throughput Optimized hard disk drives (HDD), <code>sc1</code> for Cold HDD,and <code>standard</code> for Magnetic volumes.</p>
         <p>If you specify the <code>io1</code> volume type, you must also specify a value for the <code>Iops</code> attribute. 
          The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. AWS uses the default volume size (in GiB) 
          specified in the AMI attributes to set IOPS to 50 x (volume size).</p>")
  @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc(
    "<p>The volume size, in GiB. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>"
  )
  @as("VolumeSize")
  volumeSize: option<integer_>,
  @ocaml.doc("<p>The number of I/O operations per second (IOPS) that the volume supports. For more
      information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>")
  @as("Iops")
  iops: option<integer_>,
  @ocaml.doc("<p>The snapshot ID.</p>") @as("SnapshotId") snapshotId: option<string_>,
}
@ocaml.doc("<p>Describes an app's data source.</p>")
type dataSource = {
  @ocaml.doc("<p>The database name.</p>") @as("DatabaseName") databaseName: option<string_>,
  @ocaml.doc("<p>The data source's ARN.</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>,
        <code>OpsworksMysqlInstance</code>, <code>RdsDbInstance</code>, or <code>None</code>.</p>")
  @as("Type")
  type_: option<string_>,
}
type dailyAutoScalingSchedule = Js.Dict.t<switch_>
@ocaml.doc("<p>Describes a command.</p>")
type command = {
  @ocaml.doc("<p>The command type:</p>
         <ul>
            <li>
               <p>
                  <code>configure</code>
               </p>
            </li>
            <li>
               <p>
                  <code>deploy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>execute_recipes</code>
               </p>
            </li>
            <li>
               <p>
                  <code>install_dependencies</code>
               </p>
            </li>
            <li>
               <p>
                  <code>restart</code>
               </p>
            </li>
            <li>
               <p>
                  <code>rollback</code>
               </p>
            </li>
            <li>
               <p>
                  <code>setup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>start</code>
               </p>
            </li>
            <li>
               <p>
                  <code>stop</code>
               </p>
            </li>
            <li>
               <p>
                  <code>undeploy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>update_custom_cookbooks</code>
               </p>
            </li>
            <li>
               <p>
                  <code>update_dependencies</code>
               </p>
            </li>
         </ul>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>The URL of the command log.</p>") @as("LogUrl") logUrl: option<string_>,
  @ocaml.doc("<p>The command exit code.</p>") @as("ExitCode") exitCode: option<integer_>,
  @ocaml.doc("<p>The command status:</p>
         <ul>
            <li>
               <p>failed</p>
            </li>
            <li>
               <p>successful</p>
            </li>
            <li>
               <p>skipped</p>
            </li>
            <li>
               <p>pending</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Date when the command completed.</p>") @as("CompletedAt")
  completedAt: option<dateTime>,
  @ocaml.doc("<p>Date and time when the command was acknowledged.</p>") @as("AcknowledgedAt")
  acknowledgedAt: option<dateTime>,
  @ocaml.doc("<p>Date and time when the command was run.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The command deployment ID.</p>") @as("DeploymentId") deploymentId: option<string_>,
  @ocaml.doc("<p>The ID of the instance where the command was executed.</p>") @as("InstanceId")
  instanceId: option<string_>,
  @ocaml.doc("<p>The command ID.</p>") @as("CommandId") commandId: option<string_>,
}
@ocaml.doc(
  "<p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html\">CloudWatch Logs Agent Reference</a>.</p>"
)
type cloudWatchLogsLogStream = {
  @ocaml.doc("<p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. 
            The default value is 32768 bytes. This size is calculated as the sum of all event messages 
            in UTF-8, plus 26 bytes for each log event.</p>")
  @as("BatchSize")
  batchSize: option<integer_>,
  @ocaml.doc(
    "<p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>"
  )
  @as("BatchCount")
  batchCount: option<integer_>,
  @ocaml.doc(
    "<p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>"
  )
  @as("BufferDuration")
  bufferDuration: option<integer_>,
  @ocaml.doc("<p>Specifies the encoding of the log file so that the file can be read correctly. 
            The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>")
  @as("Encoding")
  encoding: option<cloudWatchLogsEncoding>,
  @ocaml.doc("<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. 
            This setting is only used if there is no state persisted for that log stream.</p>")
  @as("InitialPosition")
  initialPosition: option<cloudWatchLogsInitialPosition>,
  @ocaml.doc("<p>Specifies the pattern for identifying the start of a log message.</p>")
  @as("MultiLineStartPattern")
  multiLineStartPattern: option<string_>,
  @ocaml.doc("<p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, 
            such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are 
            not sent to CloudWatch Logs unless all specified lines are available.</p>")
  @as("FileFingerprintLines")
  fileFingerprintLines: option<string_>,
  @ocaml.doc("<p>Specifies log files that you want to push to CloudWatch Logs.</p>
        <p>
            <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>).
            Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series
            of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on
            by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types,
            such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another
            log stream entry to the configuration file, so that each log file type is stored in a different log group.</p>
        <p>Zipped files are not supported.</p>")
  @as("File")
  file: option<string_>,
  @ocaml.doc("<p>Specifies the time zone of log event time stamps.</p>") @as("TimeZone")
  timeZone: option<cloudWatchLogsTimeZone>,
  @ocaml.doc("<p>Specifies how the time stamp is extracted from logs. For more information, see the 
            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html\">CloudWatch Logs Agent Reference</a>.</p>")
  @as("DatetimeFormat")
  datetimeFormat: option<string_>,
  @ocaml.doc("<p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. 
            Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), 
            '-' (hyphen), '/' (forward slash), and '.' (period).</p>")
  @as("LogGroupName")
  logGroupName: option<string_>,
}
@ocaml.doc("<p>Describes the Chef configuration.</p>")
type chefConfiguration = {
  @ocaml.doc("<p>The Berkshelf version.</p>") @as("BerkshelfVersion")
  berkshelfVersion: option<string_>,
  @ocaml.doc("<p>Whether to enable Berkshelf.</p>") @as("ManageBerkshelf")
  manageBerkshelf: option<boolean_>,
}
type appAttributes = Js.Dict.t<string_>
@ocaml.doc("<p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p>
         <ul>
            <li>
               <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p>
            </li>
            <li>
               <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to \"on\" or \"off\"</p>
            </li>
         </ul>
         <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p>
         <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p>
         <p>
            <code> { \"12\":\"on\", \"13\":\"on\", \"14\":\"on\", \"15\":\"on\" } </code>
         </p>")
type weeklyAutoScalingSchedule = {
  @ocaml.doc("<p>The schedule for Sunday.</p>") @as("Sunday")
  sunday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Saturday.</p>") @as("Saturday")
  saturday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Friday.</p>") @as("Friday")
  friday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Thursday.</p>") @as("Thursday")
  thursday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Wednesday.</p>") @as("Wednesday")
  wednesday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Tuesday.</p>") @as("Tuesday")
  tuesday: option<dailyAutoScalingSchedule>,
  @ocaml.doc("<p>The schedule for Monday.</p>") @as("Monday")
  monday: option<dailyAutoScalingSchedule>,
}
type volumes = array<volume>
type volumeConfigurations = array<volumeConfiguration>
type userProfiles = array<userProfile>
@ocaml.doc("<p>Summarizes the number of layers, instances, and apps in a stack.</p>")
type stackSummary = {
  @ocaml.doc(
    "<p>An <code>InstancesCount</code> object with the number of instances in each status.</p>"
  )
  @as("InstancesCount")
  instancesCount: option<instancesCount>,
  @ocaml.doc("<p>The number of apps.</p>") @as("AppsCount") appsCount: option<integer_>,
  @ocaml.doc("<p>The number of layers.</p>") @as("LayersCount") layersCount: option<integer_>,
  @ocaml.doc("<p>The stack's ARN.</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>The stack name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
}
@ocaml.doc("<p>Describes a stack.</p>")
type stack = {
  @ocaml.doc("<p>The agent version. This parameter is set to <code>LATEST</code> for auto-update.
      or a version number for a fixed agent version.</p>")
  @as("AgentVersion")
  agentVersion: option<string_>,
  @ocaml.doc("<p>The default root device type. This value is used by default for all instances in the stack,
      but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>")
  @as("DefaultRootDeviceType")
  defaultRootDeviceType: option<rootDeviceType>,
  @ocaml.doc("<p>The date when the stack was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc(
    "<p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.</p>"
  )
  @as("DefaultSshKeyName")
  defaultSshKeyName: option<string_>,
  @ocaml.doc("<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or 
            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>")
  @as("CustomCookbooksSource")
  customCookbooksSource: option<source>,
  @ocaml.doc(
    "<p>Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>"
  )
  @as("UseOpsworksSecurityGroups")
  useOpsworksSecurityGroups: option<boolean_>,
  @ocaml.doc("<p>Whether the stack uses custom cookbooks.</p>") @as("UseCustomCookbooks")
  useCustomCookbooks: option<boolean_>,
  @ocaml.doc("<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
      Berkshelf version. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>")
  @as("ChefConfiguration")
  chefConfiguration: option<chefConfiguration>,
  @ocaml.doc("<p>The configuration manager.</p>") @as("ConfigurationManager")
  configurationManager: option<stackConfigurationManager>,
  @ocaml.doc("<p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
        Modify the Stack Configuration Attributes</a>.</p>")
  @as("CustomJson")
  customJson: option<string_>,
  @ocaml.doc("<p>The default subnet ID; applicable only if the stack is running in a VPC.</p>")
  @as("DefaultSubnetId")
  defaultSubnetId: option<string_>,
  @ocaml.doc(
    "<p>The stack's default Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("DefaultAvailabilityZone")
  defaultAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The stack host name theme, with spaces replaced by underscores.</p>")
  @as("HostnameTheme")
  hostnameTheme: option<string_>,
  @ocaml.doc("<p>The stack's default operating system.</p>") @as("DefaultOs")
  defaultOs: option<string_>,
  @ocaml.doc("<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
      For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
  @as("DefaultInstanceProfileArn")
  defaultInstanceProfileArn: option<string_>,
  @ocaml.doc("<p>The stack AWS Identity and Access Management (IAM) role.</p>")
  @as("ServiceRoleArn")
  serviceRoleArn: option<string_>,
  @ocaml.doc("<p>The stack's attributes.</p>") @as("Attributes")
  attributes: option<stackAttributes>,
  @ocaml.doc("<p>The VPC ID; applicable only if the stack is running in a VPC.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc(
    "<p>The stack AWS region, such as \"ap-northeast-2\". For more information about AWS regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("Region")
  region: option<string_>,
  @ocaml.doc("<p>The stack's ARN.</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>The stack name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
}
type serviceErrors = array<serviceError>
@ocaml.doc("<p>AWS OpsWorks Stacks supports five
      lifecycle events:
        <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For
      each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide
      custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the
      standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a
      particular layer to be run in response to each of the five events. </p>

         <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>")
type recipes = {
  @ocaml.doc(
    "<p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>"
  )
  @as("Shutdown")
  shutdown: option<strings>,
  @ocaml.doc(
    "<p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>"
  )
  @as("Undeploy")
  undeploy: option<strings>,
  @ocaml.doc(
    "<p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>"
  )
  @as("Deploy")
  deploy: option<strings>,
  @ocaml.doc(
    "<p>An array of custom recipe names to be run following a <code>configure</code> event.</p>"
  )
  @as("Configure")
  configure: option<strings>,
  @ocaml.doc(
    "<p>An array of custom recipe names to be run following a <code>setup</code> event.</p>"
  )
  @as("Setup")
  setup: option<strings>,
}
type rdsDbInstances = array<rdsDbInstance>
type raidArrays = array<raidArray>
type permissions = array<permission>
type operatingSystemConfigurationManagers = array<operatingSystemConfigurationManager>
@ocaml.doc("<p>Specifies the lifecycle event configuration</p>")
type lifecycleEventConfiguration = {
  @ocaml.doc("<p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event
      configuration.</p>")
  @as("Shutdown")
  shutdown: option<shutdownEventConfiguration>,
}
type environmentVariables = array<environmentVariable>
@ocaml.doc("<p>Describes an Elastic Load Balancing instance.</p>")
type elasticLoadBalancer = {
  @ocaml.doc(
    "<p>A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.</p>"
  )
  @as("Ec2InstanceIds")
  ec2InstanceIds: option<strings>,
  @ocaml.doc("<p>A list of subnet IDs, if the stack is running in a VPC.</p>") @as("SubnetIds")
  subnetIds: option<strings>,
  @ocaml.doc("<p>A list of Availability Zones.</p>") @as("AvailabilityZones")
  availabilityZones: option<strings>,
  @ocaml.doc("<p>The VPC ID.</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>The ID of the layer that the instance is attached to.</p>") @as("LayerId")
  layerId: option<string_>,
  @ocaml.doc("<p>The ID of the stack that the instance is associated with.</p>") @as("StackId")
  stackId: option<string_>,
  @ocaml.doc("<p>The instance's public DNS name.</p>") @as("DnsName") dnsName: option<string_>,
  @ocaml.doc("<p>The instance's AWS region.</p>") @as("Region") region: option<string_>,
  @ocaml.doc("<p>The Elastic Load Balancing instance's name.</p>") @as("ElasticLoadBalancerName")
  elasticLoadBalancerName: option<string_>,
}
type elasticIps = array<elasticIp>
type ecsClusters = array<ecsCluster>
type deploymentCommandArgs = Js.Dict.t<strings>
type dataSources = array<dataSource>
type commands = array<command>
@ocaml.doc("<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>")
type cloudWatchLogsLogStreams = array<cloudWatchLogsLogStream>
@ocaml.doc(
  "<p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html\">BlockDeviceMapping</a> data type. </p>"
)
type blockDeviceMapping = {
  @ocaml.doc("<p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the
      instance is launched.</p>")
  @as("Ebs")
  ebs: option<ebsBlockDevice>,
  @ocaml.doc(
    "<p>The virtual device name. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html\">BlockDeviceMapping</a>.</p>"
  )
  @as("VirtualName")
  virtualName: option<string_>,
  @ocaml.doc("<p>Suppresses the specified device included in the AMI's block device mapping.</p>")
  @as("NoDevice")
  noDevice: option<string_>,
  @ocaml.doc("<p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root
      device, you can use the explicit device name or you can set this parameter to
        <code>ROOT_DEVICE</code> and AWS OpsWorks Stacks will provide the correct device name.</p>")
  @as("DeviceName")
  deviceName: option<string_>,
}
@ocaml.doc(
  "<p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>"
)
type autoScalingThresholds = {
  @ocaml.doc("<p>Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names,
          which are case sensitive and must be in the same region as the stack.</p>
         <note>
            <p>To use custom alarms, you must update your service role to allow
        <code>cloudwatch:DescribeAlarms</code>. You can either have AWS OpsWorks Stacks update the role for
      you when you first use this feature or you can edit the role manually. For more information,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html\">Allowing AWS OpsWorks Stacks to Act on Your Behalf</a>.</p>
         </note>")
  @as("Alarms")
  alarms: option<strings>,
  @ocaml.doc(
    "<p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <a href=\"http://en.wikipedia.org/wiki/Load_%28computing%29\">Load (computing)</a>.</p>"
  )
  @as("LoadThreshold")
  loadThreshold: option<double>,
  @ocaml.doc(
    "<p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>"
  )
  @as("MemoryThreshold")
  memoryThreshold: option<double>,
  @ocaml.doc(
    "<p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>"
  )
  @as("CpuThreshold")
  cpuThreshold: option<double>,
  @ocaml.doc("<p>The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics
      and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following
      an upscaling event but the instances won't start reducing the load until they have been booted
      and configured. There is no point in raising additional scaling events during that operation,
      which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct
      AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>")
  @as("IgnoreMetricsTime")
  ignoreMetricsTime: option<minute>,
  @ocaml.doc(
    "<p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>"
  )
  @as("ThresholdsWaitTime")
  thresholdsWaitTime: option<minute>,
  @ocaml.doc("<p>The number of instances to add or remove when the load exceeds a threshold.</p>")
  @as("InstanceCount")
  instanceCount: option<integer_>,
}
@ocaml.doc("<p>Describes an agent version.</p>")
type agentVersion = {
  @ocaml.doc("<p>The configuration manager.</p>") @as("ConfigurationManager")
  configurationManager: option<stackConfigurationManager>,
  @ocaml.doc("<p>The agent version.</p>") @as("Version") version: option<string_>,
}
@ocaml.doc("<p>Describes an instance's time-based auto scaling configuration.</p>")
type timeBasedAutoScalingConfiguration = {
  @ocaml.doc("<p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>")
  @as("AutoScalingSchedule")
  autoScalingSchedule: option<weeklyAutoScalingSchedule>,
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
}
type stacks = array<stack>
@ocaml.doc("<p>Describes supported operating systems in AWS OpsWorks Stacks.</p>")
type operatingSystem = {
  @ocaml.doc("<p>Indicates that an operating system is not supported for new instances.</p>")
  @as("Supported")
  supported: option<boolean_>,
  @ocaml.doc(
    "<p>The version of the operating system, including the release and edition, if applicable.</p>"
  )
  @as("ReportedVersion")
  reportedVersion: option<string_>,
  @ocaml.doc("<p>A short name for the operating system manufacturer.</p>") @as("ReportedName")
  reportedName: option<string_>,
  @ocaml.doc(
    "<p>Supported configuration manager name and versions for an AWS OpsWorks Stacks operating system.</p>"
  )
  @as("ConfigurationManagers")
  configurationManagers: option<operatingSystemConfigurationManagers>,
  @ocaml.doc(
    "<p>The type of a supported operating system, either <code>Linux</code> or <code>Windows</code>.</p>"
  )
  @as("Type")
  type_: option<string_>,
  @ocaml.doc(
    "<p>The ID of a supported operating system, such as <code>Amazon Linux 2018.03</code>.</p>"
  )
  @as("Id")
  id: option<string_>,
  @ocaml.doc("<p>The name of the operating system, such as <code>Amazon Linux 2018.03</code>.</p>")
  @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>Describes a layer's load-based auto scaling configuration.</p>")
type loadBasedAutoScalingConfiguration = {
  @ocaml.doc("<p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration,
      which defines how and when AWS OpsWorks Stacks reduces the number of instances.</p>")
  @as("DownScaling")
  downScaling: option<autoScalingThresholds>,
  @ocaml.doc("<p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration,
      which defines how and when AWS OpsWorks Stacks increases the number of instances.</p>")
  @as("UpScaling")
  upScaling: option<autoScalingThresholds>,
  @ocaml.doc("<p>Whether load-based auto scaling is enabled for the layer.</p>") @as("Enable")
  enable: option<boolean_>,
  @ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: option<string_>,
}
type elasticLoadBalancers = array<elasticLoadBalancer>
@ocaml.doc("<p>Used to specify a stack or deployment command.</p>")
type deploymentCommand = {
  @ocaml.doc("<p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p>
         <p>
            <code>{\"arg_name1\" : [\"value1\", \"value2\", ...], \"arg_name2\" : [\"value1\", \"value2\", ...],
        ...}</code>
         </p>
         <p>The <code>update_dependencies</code> command takes two arguments:</p>
         <ul>
            <li>
               <p>
                  <code>upgrade_os_to</code> - Specifies the desired Amazon Linux version for instances
        whose OS you want to upgrade, such as <code>Amazon Linux 2016.09</code>. You must also set
        the <code>allow_reboot</code> argument to true.</p>
            </li>
            <li>
               <p>
                  <code>allow_reboot</code> - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if
        necessary, after installing the updates. This argument can be set to either
          <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p>
            </li>
         </ul>
         <p>For example, to upgrade an instance to Amazon Linux 2016.09, set <code>Args</code> to the
      following.</p>
         <p>
            <code> { \"upgrade_os_to\":[\"Amazon Linux 2016.09\"], \"allow_reboot\":[\"true\"] } </code>
         </p>")
  @as("Args")
  args: option<deploymentCommandArgs>,
  @ocaml.doc("<p>Specifies the operation. You can specify only one command.</p>
         <p>For stacks, the following commands are available:</p>
         <ul>
            <li>
               <p>
                  <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an
          <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be
        executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to
          <code>{\"recipes\":[\"phpapp::appsetup\"]}</code>.</p>
            </li>
            <li>
               <p>
                  <code>install_dependencies</code>: Install the stack's dependencies.</p>
            </li>
            <li>
               <p>
                  <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p>
            </li>
            <li>
               <p>
                  <code>update_dependencies</code>: Update the stack's dependencies.</p>
            </li>
         </ul>
         <note>
            <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p>
         </note>
         <p>For apps, the following commands are available:</p>
         <ul>
            <li>
               <p>
                  <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code>
        parameter named <code>migrate</code>. Set <code>Args</code> to {\"migrate\":[\"true\"]} to
        migrate the database. The default setting is {\"migrate\":[\"false\"]}.</p>
            </li>
            <li>
               <p>
                  <code>rollback</code> Roll the app back to the previous version. When you update an app,
        AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this
        command to roll an app back as many as four versions.</p>
            </li>
            <li>
               <p>
                  <code>start</code>: Start the app's web or application server.</p>
            </li>
            <li>
               <p>
                  <code>stop</code>: Stop the app's web or application server.</p>
            </li>
            <li>
               <p>
                  <code>restart</code>: Restart the app's web or application server.</p>
            </li>
            <li>
               <p>
                  <code>undeploy</code>: Undeploy the app.</p>
            </li>
         </ul>")
  @as("Name")
  name: deploymentCommandName,
}
@ocaml.doc("<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>")
type cloudWatchLogsConfiguration = {
  @ocaml.doc("<p>A list of configuration options for CloudWatch Logs.</p>") @as("LogStreams")
  logStreams: option<cloudWatchLogsLogStreams>,
  @ocaml.doc("<p>Whether CloudWatch Logs is enabled for a layer.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
type blockDeviceMappings = array<blockDeviceMapping>
@ocaml.doc("<p>A description of the app.</p>")
type app = {
  @ocaml.doc("<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
      associated with the app. After you deploy the app, these variables are defined on the
      associated app server instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>. </p>
         <note>
            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an \"Environment: is too large (maximum is 20 KB)\" message.</p>
         </note>")
  @as("Environment")
  environment: option<environmentVariables>,
  @ocaml.doc("<p>When the app was created.</p>") @as("CreatedAt") createdAt: option<string_>,
  @ocaml.doc("<p>The stack attributes.</p>") @as("Attributes") attributes: option<appAttributes>,
  @ocaml.doc("<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>")
  @as("SslConfiguration")
  sslConfiguration: option<sslConfiguration>,
  @ocaml.doc("<p>Whether to enable SSL for the app.</p>") @as("EnableSsl")
  enableSsl: option<boolean_>,
  @ocaml.doc("<p>The app vhost settings with multiple domains separated by commas. For example:
        <code>'www.example.com, example.com'</code>
         </p>")
  @as("Domains")
  domains: option<strings>,
  @ocaml.doc("<p>A <code>Source</code> object that describes the app repository.</p>")
  @as("AppSource")
  appSource: option<source>,
  @ocaml.doc("<p>The app type.</p>") @as("Type") type_: option<appType>,
  @ocaml.doc("<p>The app's data sources.</p>") @as("DataSources") dataSources: option<dataSources>,
  @ocaml.doc("<p>A description of the app.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The app name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The app's short name.</p>") @as("Shortname") shortname: option<string_>,
  @ocaml.doc("<p>The app stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<string_>,
}
type agentVersions = array<agentVersion>
type timeBasedAutoScalingConfigurations = array<timeBasedAutoScalingConfiguration>
type operatingSystems = array<operatingSystem>
type loadBasedAutoScalingConfigurations = array<loadBasedAutoScalingConfiguration>
@ocaml.doc("<p>Describes a layer.</p>")
type layer = {
  @ocaml.doc("<p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event
      configuration.</p>")
  @as("LifecycleEventConfiguration")
  lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
  @ocaml.doc("<p>Whether the layer uses Amazon EBS-optimized instances.</p>")
  @as("UseEbsOptimizedInstances")
  useEbsOptimizedInstances: option<boolean_>,
  @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. If this value is set to <code>false</code>, you must then update
      your instances manually by using <a>CreateDeployment</a> to run the
        <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon
      Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>
         <note>
            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
        instances have the latest security updates.</p>
         </note>")
  @as("InstallUpdatesOnBoot")
  installUpdatesOnBoot: option<boolean_>,
  @ocaml.doc("<p>Date when the layer was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc(
    "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"
  )
  @as("CustomRecipes")
  customRecipes: option<recipes>,
  @ocaml.doc("<p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, 
            <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>.
            For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. You can also provide 
            custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard 
            recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of 
            the five events.</p>
        <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe 
            name, which is the recipe's file name without the <code>.rb</code> extension. For example: <code>phpapp2::dbsetup</code> specifies the 
            <code>dbsetup.rb</code> recipe in the repository's <code>phpapp2</code> folder.</p>")
  @as("DefaultRecipes")
  defaultRecipes: option<recipes>,
  @ocaml.doc("<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
  @as("AutoAssignPublicIps")
  autoAssignPublicIps: option<boolean_>,
  @ocaml.doc("<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP
        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
  @as("AutoAssignElasticIps")
  autoAssignElasticIps: option<boolean_>,
  @ocaml.doc("<p>Whether auto healing is disabled for the layer.</p>") @as("EnableAutoHealing")
  enableAutoHealing: option<boolean_>,
  @ocaml.doc(
    "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
  )
  @as("VolumeConfigurations")
  volumeConfigurations: option<volumeConfigurations>,
  @ocaml.doc("<p>An array of <code>Package</code> objects that describe the layer's packages.</p>")
  @as("Packages")
  packages: option<strings>,
  @ocaml.doc("<p>An array containing the layer's security group names.</p>")
  @as("DefaultSecurityGroupNames")
  defaultSecurityGroupNames: option<strings>,
  @ocaml.doc("<p>An array containing the layer's custom security group IDs.</p>")
  @as("CustomSecurityGroupIds")
  customSecurityGroupIds: option<strings>,
  @ocaml.doc(
    "<p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>"
  )
  @as("CustomJson")
  customJson: option<string_>,
  @ocaml.doc("<p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more
      information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
  @as("CustomInstanceProfileArn")
  customInstanceProfileArn: option<string_>,
  @ocaml.doc("<p>The Amazon CloudWatch Logs configuration settings for the layer.</p>")
  @as("CloudWatchLogsConfiguration")
  cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
  @ocaml.doc("<p>The layer attributes.</p>
         <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and
        <code>GangliaPassword</code> attributes, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code>
      instead of the actual value</p>
         <p>For an ECS Cluster layer, AWS OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>")
  @as("Attributes")
  attributes: option<layerAttributes>,
  @ocaml.doc("<p>The layer short name.</p>") @as("Shortname") shortname: option<string_>,
  @ocaml.doc("<p>The layer name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The layer type.</p>") @as("Type") type_: option<layerType>,
  @ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: option<string_>,
  @ocaml.doc("<p>The layer stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Number (ARN) of a layer.</p>") @as("Arn") arn: option<string_>,
}
@ocaml.doc("<p>Describes an instance.</p>")
type instance = {
  @ocaml.doc(
    "<p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>"
  )
  @as("VirtualizationType")
  virtualizationType: option<virtualizationType>,
  @ocaml.doc(
    "<p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>"
  )
  @as("Tenancy")
  tenancy: option<string_>,
  @ocaml.doc("<p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>")
  @as("SubnetId")
  subnetId: option<string_>,
  @ocaml.doc("<p>The instance status:</p>
         <ul>
            <li>
               <p>
                  <code>booting</code>
               </p>
            </li>
            <li>
               <p>
                  <code>connection_lost</code>
               </p>
            </li>
            <li>
               <p>
                  <code>online</code>
               </p>
            </li>
            <li>
               <p>
                  <code>pending</code>
               </p>
            </li>
            <li>
               <p>
                  <code>rebooting</code>
               </p>
            </li>
            <li>
               <p>
                  <code>requested</code>
               </p>
            </li>
            <li>
               <p>
                  <code>running_setup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>setup_failed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>shutting_down</code>
               </p>
            </li>
            <li>
               <p>
                  <code>start_failed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>stop_failed</code>
               </p>
            </li>
            <li>
               <p>
                  <code>stopped</code>
               </p>
            </li>
            <li>
               <p>
                  <code>stopping</code>
               </p>
            </li>
            <li>
               <p>
                  <code>terminated</code>
               </p>
            </li>
            <li>
               <p>
                  <code>terminating</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The instance's Amazon EC2 key-pair name.</p>") @as("SshKeyName")
  sshKeyName: option<string_>,
  @ocaml.doc("<p>The SSH key's RSA fingerprint.</p>") @as("SshHostRsaKeyFingerprint")
  sshHostRsaKeyFingerprint: option<string_>,
  @ocaml.doc("<p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>")
  @as("SshHostDsaKeyFingerprint")
  sshHostDsaKeyFingerprint: option<string_>,
  @ocaml.doc("<p>An array containing the instance security group IDs.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<strings>,
  @ocaml.doc("<p>The root device volume ID.</p>") @as("RootDeviceVolumeId")
  rootDeviceVolumeId: option<string_>,
  @ocaml.doc(
    "<p>The instance's root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
  )
  @as("RootDeviceType")
  rootDeviceType: option<rootDeviceType>,
  @ocaml.doc("<p>For registered instances, the reported operating system.</p>") @as("ReportedOs")
  reportedOs: option<reportedOs>,
  @ocaml.doc("<p>The instance's reported AWS OpsWorks Stacks agent version.</p>")
  @as("ReportedAgentVersion")
  reportedAgentVersion: option<string_>,
  @ocaml.doc("<p>For registered instances, who performed the registration.</p>") @as("RegisteredBy")
  registeredBy: option<string_>,
  @ocaml.doc("<p>The instance public IP address.</p>") @as("PublicIp") publicIp: option<string_>,
  @ocaml.doc("<p>The instance public DNS name.</p>") @as("PublicDns") publicDns: option<string_>,
  @ocaml.doc("<p>The instance's private IP address.</p>") @as("PrivateIp")
  privateIp: option<string_>,
  @ocaml.doc("<p>The instance's private DNS name.</p>") @as("PrivateDns")
  privateDns: option<string_>,
  @ocaml.doc("<p>The instance's platform.</p>") @as("Platform") platform: option<string_>,
  @ocaml.doc("<p>The instance's operating system.</p>") @as("Os") os: option<string_>,
  @ocaml.doc("<p>An array containing the instance layer IDs.</p>") @as("LayerIds")
  layerIds: option<strings>,
  @ocaml.doc("<p>The ID of the last service error. For more information, call
      <a>DescribeServiceErrors</a>.</p>")
  @as("LastServiceErrorId")
  lastServiceErrorId: option<string_>,
  @ocaml.doc("<p>The instance type, such as <code>t2.micro</code>.</p>") @as("InstanceType")
  instanceType: option<string_>,
  @ocaml.doc("<p>The ARN of the instance's IAM profile. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
  @as("InstanceProfileArn")
  instanceProfileArn: option<string_>,
  @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
  @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. If this value is set to <code>false</code>, you must then update
      your instances manually by using <a>CreateDeployment</a> to run the
        <code>update_dependencies</code> stack command or
      by manually running <code>yum</code> (Amazon
      Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>
         <note>
            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
        instances have the latest security updates.</p>
         </note>")
  @as("InstallUpdatesOnBoot")
  installUpdatesOnBoot: option<boolean_>,
  @ocaml.doc("<p>For registered instances, the infrastructure class: <code>ec2</code> or
        <code>on-premises</code>.</p>")
  @as("InfrastructureClass")
  infrastructureClass: option<string_>,
  @ocaml.doc("<p>The instance host name.</p>") @as("Hostname") hostname: option<string_>,
  @ocaml.doc(
    "<p>The instance <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address </a>.</p>"
  )
  @as("ElasticIp")
  elasticIp: option<string_>,
  @ocaml.doc("<p>For container instances, the instance's ARN.</p>") @as("EcsContainerInstanceArn")
  ecsContainerInstanceArn: option<string_>,
  @ocaml.doc("<p>For container instances, the Amazon ECS cluster's ARN.</p>") @as("EcsClusterArn")
  ecsClusterArn: option<string_>,
  @ocaml.doc("<p>The ID of the associated Amazon EC2 instance.</p>") @as("Ec2InstanceId")
  ec2InstanceId: option<string_>,
  @ocaml.doc("<p>Whether this is an Amazon EBS-optimized instance.</p>") @as("EbsOptimized")
  ebsOptimized: option<boolean_>,
  @ocaml.doc("<p>The time that the instance was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device
      mappings.</p>")
  @as("BlockDeviceMappings")
  blockDeviceMappings: option<blockDeviceMappings>,
  @ocaml.doc(
    "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>For load-based or time-based instances, the type.</p>") @as("AutoScalingType")
  autoScalingType: option<autoScalingType>,
  @ocaml.doc("<p>The instance's Amazon Resource Number (ARN).</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>The instance architecture: \"i386\" or \"x86_64\".</p>") @as("Architecture")
  architecture: option<architecture>,
  @ocaml.doc("<p>A custom AMI ID to be used to create the instance. For more
      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Instances</a>
         </p>")
  @as("AmiId")
  amiId: option<string_>,
  @ocaml.doc("<p>The agent version. This parameter is set to <code>INHERIT</code> if
      the instance inherits the default stack setting or to a
      a version number for a fixed agent version.</p>")
  @as("AgentVersion")
  agentVersion: option<string_>,
}
@ocaml.doc("<p>Describes a deployment of a stack or app.</p>")
type deployment = {
  @ocaml.doc("<p>The IDs of the target instances.</p>") @as("InstanceIds")
  instanceIds: option<strings>,
  @ocaml.doc("<p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
        Modify the Stack Configuration Attributes</a>.</p>")
  @as("CustomJson")
  customJson: option<string_>,
  @ocaml.doc("<p>The deployment status:</p>
         <ul>
            <li>
               <p>running</p>
            </li>
            <li>
               <p>successful</p>
            </li>
            <li>
               <p>failed</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Used to specify a stack or deployment command.</p>") @as("Command")
  command: option<deploymentCommand>,
  @ocaml.doc("<p>A user-defined comment.</p>") @as("Comment") comment: option<string_>,
  @ocaml.doc("<p>The user's IAM ARN.</p>") @as("IamUserArn") iamUserArn: option<string_>,
  @ocaml.doc("<p>The deployment duration.</p>") @as("Duration") duration: option<integer_>,
  @ocaml.doc("<p>Date when the deployment completed.</p>") @as("CompletedAt")
  completedAt: option<dateTime>,
  @ocaml.doc("<p>Date when the deployment was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<string_>,
  @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  @ocaml.doc("<p>The deployment ID.</p>") @as("DeploymentId") deploymentId: option<string_>,
}
type apps = array<app>
type layers = array<layer>
type instances = array<instance>
type deployments = array<deployment>
@ocaml.doc("<fullname>AWS OpsWorks</fullname>
         <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and
      usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error
      codes. </p>
         <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for
      overseeing the complete application lifecycle. For information about this product, go to the
        <a href=\"http://aws.amazon.com/opsworks/\">AWS OpsWorks</a> details page. </p>

         <p>
            <b>SDKs and CLI</b>
         </p>
         <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html\">AWS CLI</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html\">AWS SDK for Java</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm\">AWS SDK for
          .NET</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html\">AWS
          SDK for PHP 2</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"http://docs.aws.amazon.com/sdkforruby/api/\">AWS SDK for Ruby</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"http://aws.amazon.com/documentation/sdkforjavascript/\">AWS SDK for Node.js</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"http://docs.pythonboto.org/en/latest/ref/opsworks.html\">AWS SDK for
          Python(Boto)</a>
               </p>
            </li>
         </ul>

         <p>
            <b>Endpoints</b>
         </p>
         <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks 
          can only be accessed or managed within the endpoint in which they are created.</p>
         <ul>
            <li>
               <p>opsworks.us-east-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.us-east-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.us-west-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.us-west-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p>
            </li>
            <li>
               <p>opsworks.eu-west-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.eu-west-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.eu-west-3.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.eu-central-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ap-northeast-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ap-northeast-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ap-south-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ap-southeast-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.ap-southeast-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks.sa-east-1.amazonaws.com</p>
            </li>
         </ul>
         <p>
            <b>Chef Versions</b>
         </p>
         <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you
      use the <code>ConfigurationManager</code> parameter to specify the Chef version.
      The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html\">Chef Versions</a>.</p>
         <note>
            <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p>
         </note>")
module UpdateVolume = {
  type t
  type request = {
    @ocaml.doc("<p>The new mount point.</p>") @as("MountPoint") mountPoint: option<string_>,
    @ocaml.doc("<p>The new name.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The volume ID.</p>") @as("VolumeId") volumeId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateVolumeCommand"
  let make = (~volumeId, ~mountPoint=?, ~name=?, ()) => new({mountPoint, name, volumeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Whether users can specify their own SSH public key through the My Settings page. For more
      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User
        Permissions</a>.</p>")
    @as("AllowSelfManagement")
    allowSelfManagement: option<boolean_>,
    @ocaml.doc("<p>The user's new SSH public key.</p>") @as("SshPublicKey")
    sshPublicKey: option<string_>,
    @ocaml.doc("<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
      the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example,
        <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
      user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>")
    @as("SshUsername")
    sshUsername: option<string_>,
    @ocaml.doc("<p>The user IAM ARN. This can also be a federated user's ARN.</p>")
    @as("IamUserArn")
    iamUserArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateUserProfileCommand"
  let make = (~iamUserArn, ~allowSelfManagement=?, ~sshPublicKey=?, ~sshUsername=?, ()) =>
    new({allowSelfManagement, sshPublicKey, sshUsername, iamUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateRdsDbInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The database password.</p>") @as("DbPassword") dbPassword: option<string_>,
    @ocaml.doc("<p>The master user name.</p>") @as("DbUser") dbUser: option<string_>,
    @ocaml.doc("<p>The Amazon RDS instance's ARN.</p>") @as("RdsDbInstanceArn")
    rdsDbInstanceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateRdsDbInstanceCommand"
  let make = (~rdsDbInstanceArn, ~dbPassword=?, ~dbUser=?, ()) =>
    new({dbPassword, dbUser, rdsDbInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateMyUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The user's SSH public key.</p>") @as("SshPublicKey")
    sshPublicKey: option<string_>,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateMyUserProfileCommand"
  let make = (~sshPublicKey=?, ()) => new({sshPublicKey: sshPublicKey})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateElasticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The new name.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The IP address for which you want to update the name.</p>") @as("ElasticIp")
    elasticIp: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateElasticIpCommand"
  let make = (~elasticIp, ~name=?, ()) => new({name, elasticIp})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UnassignVolume = {
  type t
  type request = {@ocaml.doc("<p>The volume ID.</p>") @as("VolumeId") volumeId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UnassignVolumeCommand"
  let make = (~volumeId, ()) => new({volumeId: volumeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UnassignInstance = {
  type t
  type request = {@ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UnassignInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopStack = {
  type t
  type request = {@ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "StopStackCommand"
  let make = (~stackId, ()) => new({stackId: stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed, 
            adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the AWS OpsWorks Stacks instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance. 
            You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the AWS OpsWorks Stacks instance with a new one.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "StopInstanceCommand"
  let make = (~instanceId, ~force=?, ()) => new({force, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartStack = {
  type t
  type request = {@ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "StartStackCommand"
  let make = (~stackId, ()) => new({stackId: stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartInstance = {
  type t
  type request = {@ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "StartInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetPermission = {
  type t
  type request = {
    @ocaml.doc("<p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p>
         <ul>
            <li>
               <p>
                  <code>deny</code>
               </p>
            </li>
            <li>
               <p>
                  <code>show</code>
               </p>
            </li>
            <li>
               <p>
                  <code>deploy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>manage</code>
               </p>
            </li>
            <li>
               <p>
                  <code>iam_only</code>
               </p>
            </li>
         </ul>
         <p>For more information about the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>")
    @as("Level")
    level: option<string_>,
    @ocaml.doc("<p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>")
    @as("AllowSudo")
    allowSudo: option<boolean_>,
    @ocaml.doc("<p>The user is allowed to use SSH to communicate with the instance.</p>")
    @as("AllowSsh")
    allowSsh: option<boolean_>,
    @ocaml.doc("<p>The user's IAM ARN. This can also be a federated user's ARN.</p>")
    @as("IamUserArn")
    iamUserArn: string_,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "SetPermissionCommand"
  let make = (~iamUserArn, ~stackId, ~level=?, ~allowSudo=?, ~allowSsh=?, ()) =>
    new({level, allowSudo, allowSsh, iamUserArn, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterVolume = {
  type t
  type request = {
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
    @ocaml.doc("<p>The Amazon EBS volume ID.</p>") @as("Ec2VolumeId") ec2VolumeId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>RegisterVolume</code> request.</p>")
  type response = {@ocaml.doc("<p>The volume ID.</p>") @as("VolumeId") volumeId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "RegisterVolumeCommand"
  let make = (~stackId, ~ec2VolumeId=?, ()) => new({stackId, ec2VolumeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterRdsDbInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The database password.</p>") @as("DbPassword") dbPassword: string_,
    @ocaml.doc("<p>The database's master user name.</p>") @as("DbUser") dbUser: string_,
    @ocaml.doc("<p>The Amazon RDS instance's ARN.</p>") @as("RdsDbInstanceArn")
    rdsDbInstanceArn: string_,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "RegisterRdsDbInstanceCommand"
  let make = (~dbPassword, ~dbUser, ~rdsDbInstanceArn, ~stackId, ()) =>
    new({dbPassword, dbUser, rdsDbInstanceArn, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterElasticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
    @ocaml.doc("<p>The Elastic IP address.</p>") @as("ElasticIp") elasticIp: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>RegisterElasticIp</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The Elastic IP address.</p>") @as("ElasticIp") elasticIp: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "RegisterElasticIpCommand"
  let make = (~stackId, ~elasticIp, ()) => new({stackId, elasticIp})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterEcsCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
    @ocaml.doc("<p>The cluster's ARN.</p>") @as("EcsClusterArn") ecsClusterArn: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The cluster's ARN.</p>") @as("EcsClusterArn") ecsClusterArn: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "RegisterEcsClusterCommand"
  let make = (~stackId, ~ecsClusterArn, ()) => new({stackId, ecsClusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RebootInstance = {
  type t
  type request = {@ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "RebootInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetHostnameSuggestion = {
  type t
  type request = {@ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: string_}
  @ocaml.doc("<p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The generated host name.</p>") @as("Hostname") hostname: option<string_>,
    @ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "GetHostnameSuggestionCommand"
  let make = (~layerId, ()) => new({layerId: layerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateElasticIp = {
  type t
  type request = {@ocaml.doc("<p>The Elastic IP address.</p>") @as("ElasticIp") elasticIp: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DisassociateElasticIpCommand"
  let make = (~elasticIp, ()) => new({elasticIp: elasticIp})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DetachElasticLoadBalancer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>"
    )
    @as("LayerId")
    layerId: string_,
    @ocaml.doc("<p>The Elastic Load Balancing instance's name.</p>") @as("ElasticLoadBalancerName")
    elasticLoadBalancerName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DetachElasticLoadBalancerCommand"
  let make = (~layerId, ~elasticLoadBalancerName, ()) => new({layerId, elasticLoadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterVolume = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>"
    )
    @as("VolumeId")
    volumeId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeregisterVolumeCommand"
  let make = (~volumeId, ()) => new({volumeId: volumeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterRdsDbInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon RDS instance's ARN.</p>") @as("RdsDbInstanceArn")
    rdsDbInstanceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DeregisterRdsDbInstanceCommand"
  let make = (~rdsDbInstanceArn, ()) => new({rdsDbInstanceArn: rdsDbInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterInstance = {
  type t
  type request = {@ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeregisterInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterElasticIp = {
  type t
  type request = {@ocaml.doc("<p>The Elastic IP address.</p>") @as("ElasticIp") elasticIp: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeregisterElasticIpCommand"
  let make = (~elasticIp, ()) => new({elasticIp: elasticIp})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterEcsCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The cluster's Amazon Resource Number (ARN).</p>") @as("EcsClusterArn")
    ecsClusterArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DeregisterEcsClusterCommand"
  let make = (~ecsClusterArn, ()) => new({ecsClusterArn: ecsClusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The user's IAM ARN. This can also be a federated user's ARN.</p>")
    @as("IamUserArn")
    iamUserArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeleteUserProfileCommand"
  let make = (~iamUserArn, ()) => new({iamUserArn: iamUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteStack = {
  type t
  type request = {@ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeleteStackCommand"
  let make = (~stackId, ()) => new({stackId: stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLayer = {
  type t
  type request = {@ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeleteLayerCommand"
  let make = (~layerId, ()) => new({layerId: layerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to delete the instance's Amazon EBS volumes.</p>") @as("DeleteVolumes")
    deleteVolumes: option<boolean_>,
    @ocaml.doc("<p>Whether to delete the instance Elastic IP address.</p>") @as("DeleteElasticIp")
    deleteElasticIp: option<boolean_>,
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeleteInstanceCommand"
  let make = (~instanceId, ~deleteVolumes=?, ~deleteElasticIp=?, ()) =>
    new({deleteVolumes, deleteElasticIp, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteApp = {
  type t
  type request = {@ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: string_}
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DeleteAppCommand"
  let make = (~appId, ()) => new({appId: appId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Whether users can specify their own SSH public key through the My Settings page. For more
      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Setting an IAM
        User's Public SSH Key</a>.</p>")
    @as("AllowSelfManagement")
    allowSelfManagement: option<boolean_>,
    @ocaml.doc("<p>The user's public SSH key.</p>") @as("SshPublicKey")
    sshPublicKey: option<string_>,
    @ocaml.doc("<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
      the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example,
        <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
      user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>")
    @as("SshUsername")
    sshUsername: option<string_>,
    @ocaml.doc("<p>The user's IAM ARN; this can also be a federated user's ARN.</p>")
    @as("IamUserArn")
    iamUserArn: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateUserProfile</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The user's IAM ARN.</p>") @as("IamUserArn") iamUserArn: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateUserProfileCommand"
  let make = (~iamUserArn, ~allowSelfManagement=?, ~sshPublicKey=?, ~sshUsername=?, ()) =>
    new({allowSelfManagement, sshPublicKey, sshUsername, iamUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AttachElasticLoadBalancer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>"
    )
    @as("LayerId")
    layerId: string_,
    @ocaml.doc("<p>The Elastic Load Balancing instance's name.</p>") @as("ElasticLoadBalancerName")
    elasticLoadBalancerName: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "AttachElasticLoadBalancerCommand"
  let make = (~layerId, ~elasticLoadBalancerName, ()) => new({layerId, elasticLoadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateElasticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
    @ocaml.doc("<p>The Elastic IP address.</p>") @as("ElasticIp") elasticIp: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "AssociateElasticIpCommand"
  let make = (~elasticIp, ~instanceId=?, ()) => new({instanceId, elasticIp})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssignVolume = {
  type t
  type request = {
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
    @ocaml.doc("<p>The volume ID.</p>") @as("VolumeId") volumeId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "AssignVolumeCommand"
  let make = (~volumeId, ~instanceId=?, ()) => new({instanceId, volumeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateStack = {
  type t
  type request = {
    @ocaml.doc("<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
         <ul>
            <li>
               <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
        automatically installs new agent versions on the stack's instances as soon as
        they are available.</p>
            </li>
            <li>
               <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
            </li>
         </ul>
         <p>The default setting is <code>LATEST</code>. To specify an agent version,
      you must use the complete version number, not the abbreviated number shown on the console.
      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. 
          AgentVersion cannot be set to Chef 12.2.</p>
         <note>
            <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
         </note>")
    @as("AgentVersion")
    agentVersion: option<string_>,
    @ocaml.doc("<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
         <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
      associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to
      provide your own custom security groups
      instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has
      the following settings: </p>
         <ul>
            <li>
               <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p>
            </li>
            <li>
               <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New
        Stack</a>.</p>")
    @as("UseOpsworksSecurityGroups")
    useOpsworksSecurityGroups: option<boolean_>,
    @ocaml.doc("<p>The default root device type. This value is used by default for all instances in the stack,
      but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>")
    @as("DefaultRootDeviceType")
    defaultRootDeviceType: option<rootDeviceType>,
    @ocaml.doc("<p>A default Amazon EC2 key-pair name. The default value is
      <code>none</code>. If you specify a key-pair name,
      AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH
      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to
        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH
        Access</a>. You can override this setting by specifying a different key pair, or no key
      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">
        create an instance</a>. </p>")
    @as("DefaultSshKeyName")
    defaultSshKeyName: option<string_>,
    @ocaml.doc("<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>")
    @as("CustomCookbooksSource")
    customCookbooksSource: option<source>,
    @ocaml.doc("<p>Whether the stack uses custom cookbooks.</p>") @as("UseCustomCookbooks")
    useCustomCookbooks: option<boolean_>,
    @ocaml.doc("<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>")
    @as("ChefConfiguration")
    chefConfiguration: option<chefConfiguration>,
    @ocaml.doc(
      "<p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
    )
    @as("ConfigurationManager")
    configurationManager: option<stackConfigurationManager>,
    @ocaml.doc("<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
        Modify the Stack Configuration Attributes</a>.</p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
      otherwise when you create the instance. If you also specify a value for
        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
      default values and when this parameter is required, see the <code>VpcId</code> parameter
      description. </p>")
    @as("DefaultSubnetId")
    defaultSubnetId: option<string_>,
    @ocaml.doc("<p>The stack's default Availability Zone, which must be in the
      stack's region. For more
      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and
        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
      be in the same zone. For more information, see <a>CreateStack</a>. </p>")
    @as("DefaultAvailabilityZone")
    defaultAvailabilityZone: option<string_>,
    @ocaml.doc("<p>The stack's new host name theme, with spaces replaced by underscores.
      The theme is used to generate host names for the stack's instances.
      By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the
      layer's short name. The other themes are:</p>
         <ul>
            <li>
               <p>
                  <code>Baked_Goods</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Clouds</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Europe_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Fruits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Greek_Deities_and_Titans</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Legendary_creatures_from_Japan</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Planets_and_Moons</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Roman_Deities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Scottish_Islands</code>
               </p>
            </li>
            <li>
               <p>
                  <code>US_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Wild_Cats</code>
               </p>
            </li>
         </ul>
         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
      host name based on the current theme.</p>")
    @as("HostnameTheme")
    hostnameTheme: option<string_>,
    @ocaml.doc("<p>The stack's operating system, which must be set to one of the following:</p>
         <ul>
            <li>
               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
            </li>
            <li>
               <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
            </li>
            <li>
               <p>
                  <code>CentOS Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Red Hat Enterprise Linux 7</code>
               </p>
            </li>
            <li>
               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
            </li>
            <li>
               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
        you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using
          Custom AMIs</a>.</p>
            </li>
         </ul>
         <p>The default option is the stack's current operating system.
      For more information about supported operating systems,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>")
    @as("DefaultOs")
    defaultOs: option<string_>,
    @ocaml.doc("<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
      For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("DefaultInstanceProfileArn")
    defaultInstanceProfileArn: option<string_>,
    @ocaml.doc("<p>Do not use this parameter. You cannot update a stack's service role.</p>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<string_>,
    @ocaml.doc(
      "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"
    )
    @as("Attributes")
    attributes: option<stackAttributes>,
    @ocaml.doc("<p>The stack's new name.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateStackCommand"
  let make = (
    ~stackId,
    ~agentVersion=?,
    ~useOpsworksSecurityGroups=?,
    ~defaultRootDeviceType=?,
    ~defaultSshKeyName=?,
    ~customCookbooksSource=?,
    ~useCustomCookbooks=?,
    ~chefConfiguration=?,
    ~configurationManager=?,
    ~customJson=?,
    ~defaultSubnetId=?,
    ~defaultAvailabilityZone=?,
    ~hostnameTheme=?,
    ~defaultOs=?,
    ~defaultInstanceProfileArn=?,
    ~serviceRoleArn=?,
    ~attributes=?,
    ~name=?,
    (),
  ) =>
    new({
      agentVersion,
      useOpsworksSecurityGroups,
      defaultRootDeviceType,
      defaultSshKeyName,
      customCookbooksSource,
      useCustomCookbooks,
      chefConfiguration,
      configurationManager,
      customJson,
      defaultSubnetId,
      defaultAvailabilityZone,
      hostnameTheme,
      defaultOs,
      defaultInstanceProfileArn,
      serviceRoleArn,
      attributes,
      name,
      stackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
         <ul>
            <li>
               <p>
                  <code>INHERIT</code> - Use the stack's default agent version setting.</p>
            </li>
            <li>
               <p>
                  <i>version_number</i> - Use the specified agent version.
        This value overrides the stack's default setting.
        To update the agent version, you must edit the instance configuration and specify a
        new version.
        AWS OpsWorks Stacks then automatically installs that version on the instance.</p>
            </li>
         </ul>
         <p>The default setting is <code>INHERIT</code>. To specify an agent version,
      you must use the complete version number, not the abbreviated number shown on the console.
      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p>
         <p>AgentVersion cannot be set to Chef 12.2.</p>")
    @as("AgentVersion")
    agentVersion: option<string_>,
    @ocaml.doc("<p>This property cannot be updated.</p>") @as("EbsOptimized")
    ebsOptimized: option<boolean_>,
    @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. To control when updates are installed, set this value to
        <code>false</code>. You must then update your instances manually by using
        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
      instances. </p>
         <note>
            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
        instances have the latest security updates.</p>
         </note>")
    @as("InstallUpdatesOnBoot")
    installUpdatesOnBoot: option<boolean_>,
    @ocaml.doc("<p>The instance architecture. Instance types do not necessarily support both architectures. For
      a list of the architectures that are supported by the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance
        Families and Types</a>.</p>")
    @as("Architecture")
    architecture: option<architecture>,
    @ocaml.doc("<p>The instance's Amazon EC2 key name.</p>") @as("SshKeyName")
    sshKeyName: option<string_>,
    @ocaml.doc("<p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. 
          You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs.
      </p>")
    @as("AmiId")
    amiId: option<string_>,
    @ocaml.doc("<p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p>
         <ul>
            <li>
               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux
        2015.03</code>.</p>
            </li>
            <li>
               <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
            </li>
            <li>
               <p>
                  <code>CentOS Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Red Hat Enterprise Linux 7</code>
               </p>
            </li>
            <li>
               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
            </li>
         </ul>
         <p>For more information about supported operating systems,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>
         <p>The default option is the current Amazon Linux version. If you set this parameter to
        <code>Custom</code>, you must use the AmiId parameter to
      specify the custom AMI that you want to use. For more information about supported operating
      systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">Operating Systems</a>. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using
        Custom AMIs</a>.</p>
         <note>
            <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
         </note>")
    @as("Os")
    os: option<string_>,
    @ocaml.doc("<p>The instance host name.</p>") @as("Hostname") hostname: option<string_>,
    @ocaml.doc(
      "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"
    )
    @as("AutoScalingType")
    autoScalingType: option<autoScalingType>,
    @ocaml.doc("<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
      open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
      The <b>Size</b> list contains the currently supported types. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance
        Families and Types</a>. The parameter values that you use to specify the various types are
      in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>")
    @as("InstanceType")
    instanceType: option<string_>,
    @ocaml.doc("<p>The instance's layer IDs.</p>") @as("LayerIds") layerIds: option<strings>,
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateInstanceCommand"
  let make = (
    ~instanceId,
    ~agentVersion=?,
    ~ebsOptimized=?,
    ~installUpdatesOnBoot=?,
    ~architecture=?,
    ~sshKeyName=?,
    ~amiId=?,
    ~os=?,
    ~hostname=?,
    ~autoScalingType=?,
    ~instanceType=?,
    ~layerIds=?,
    (),
  ) =>
    new({
      agentVersion,
      ebsOptimized,
      installUpdatesOnBoot,
      architecture,
      sshKeyName,
      amiId,
      os,
      hostname,
      autoScalingType,
      instanceType,
      layerIds,
      instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of tags to be removed from a stack or layer.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The stack or layer's Amazon Resource Number (ARN).</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to a stack or layer.</p>
         <ul>
            <li>
               <p>The key cannot be empty.</p>
            </li>
            <li>
               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
            </li>
            <li>
               <p>A maximum of 40 tags is allowed for any resource.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The stack or layer's Amazon Resource Number (ARN).</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterInstance = {
  type t
  type request = {
    @ocaml.doc("<p>An InstanceIdentity object that contains the instance's identity.</p>")
    @as("InstanceIdentity")
    instanceIdentity: option<instanceIdentity>,
    @ocaml.doc("<p>The instances public RSA key fingerprint.</p>") @as("RsaPublicKeyFingerprint")
    rsaPublicKeyFingerprint: option<string_>,
    @ocaml.doc(
      "<p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>"
    )
    @as("RsaPublicKey")
    rsaPublicKey: option<string_>,
    @ocaml.doc("<p>The instance's private IP address.</p>") @as("PrivateIp")
    privateIp: option<string_>,
    @ocaml.doc("<p>The instance's public IP address.</p>") @as("PublicIp")
    publicIp: option<string_>,
    @ocaml.doc("<p>The instance's hostname.</p>") @as("Hostname") hostname: option<string_>,
    @ocaml.doc("<p>The ID of the stack that the instance is to be registered with.</p>")
    @as("StackId")
    stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The registered instance's AWS OpsWorks Stacks ID.</p>") @as("InstanceId")
    instanceId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "RegisterInstanceCommand"
  let make = (
    ~stackId,
    ~instanceIdentity=?,
    ~rsaPublicKeyFingerprint=?,
    ~rsaPublicKey=?,
    ~privateIp=?,
    ~publicIp=?,
    ~hostname=?,
    (),
  ) =>
    new({
      instanceIdentity,
      rsaPublicKeyFingerprint,
      rsaPublicKey,
      privateIp,
      publicIp,
      hostname,
      stackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call.
      </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The stack or layer's Amazon Resource Number (ARN).</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  @ocaml.doc("<p>Contains the response to a <code>ListTags</code> request.</p>")
  type response = {
    @ocaml.doc("<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that
            you can assign to the request object's <code>NextToken</code> parameter to get the next set of results.
            If the previous paginated request returned all of the remaining results,
            this parameter is set to <code>null</code>.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>"
    )
    @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GrantAccess = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>"
    )
    @as("ValidForInMinutes")
    validForInMinutes: option<validForInMinutes>,
    @ocaml.doc("<p>The instance's AWS OpsWorks Stacks ID.</p>") @as("InstanceId")
    instanceId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>GrantAccess</code> request.</p>")
  type response = {
    @ocaml.doc("<p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the
      instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>")
    @as("TemporaryCredential")
    temporaryCredential: option<temporaryCredential>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "GrantAccessCommand"
  let make = (~instanceId, ~validForInMinutes=?, ()) => new({validForInMinutes, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeStackProvisioningParameters = {
  type t
  type request = {@ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_}
  @ocaml.doc(
    "<p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>"
  )
  type response = {
    @ocaml.doc("<p>An embedded object that contains the provisioning parameters.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The AWS OpsWorks Stacks agent installer's URL.</p>") @as("AgentInstallerUrl")
    agentInstallerUrl: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeStackProvisioningParametersCommand"
  let make = (~stackId, ()) => new({stackId: stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeMyUserProfile = {
  type t
  type request = {.}
  @ocaml.doc("<p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>A <code>UserProfile</code> object that describes the user's SSH information.</p>"
    )
    @as("UserProfile")
    userProfile: option<selfUserProfile>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeMyUserProfileCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateStack = {
  type t
  type request = {
    @ocaml.doc("<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
         <ul>
            <li>
               <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
        automatically installs new agent versions on the stack's instances as soon as
        they are available.</p>
            </li>
            <li>
               <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
            </li>
         </ul>
         <p>The default setting is the most recent release of the agent. To specify an agent version,
      you must use the complete version number, not the abbreviated number shown on the console.
      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
         <note>
            <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
         </note>")
    @as("AgentVersion")
    agentVersion: option<string_>,
    @ocaml.doc("<p>The default root device type. This value is the default for all instances in the stack,
      but you can override it when you create an instance. The default option is
        <code>instance-store</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>")
    @as("DefaultRootDeviceType")
    defaultRootDeviceType: option<rootDeviceType>,
    @ocaml.doc("<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS
      OpsWorks installs the public key on the instance and you can use the private key with an SSH
      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to
        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH
        Access</a>. You can override this setting by specifying a different key pair, or no key
      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">
        create an instance</a>. </p>")
    @as("DefaultSshKeyName")
    defaultSshKeyName: option<string_>,
    @ocaml.doc("<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or 
            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>")
    @as("CustomCookbooksSource")
    customCookbooksSource: option<source>,
    @ocaml.doc("<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
         <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
      associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
      provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
      following settings: </p>
         <ul>
            <li>
               <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p>
            </li>
            <li>
               <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New
        Stack</a>.</p>")
    @as("UseOpsworksSecurityGroups")
    useOpsworksSecurityGroups: option<boolean_>,
    @ocaml.doc("<p>Whether the stack uses custom cookbooks.</p>") @as("UseCustomCookbooks")
    useCustomCookbooks: option<boolean_>,
    @ocaml.doc("<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>")
    @as("ChefConfiguration")
    chefConfiguration: option<chefConfiguration>,
    @ocaml.doc(
      "<p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
    )
    @as("ConfigurationManager")
    configurationManager: option<stackConfigurationManager>,
    @ocaml.doc("<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
        Modify the Stack Configuration Attributes</a>.</p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
      otherwise when you create the instance. If you also specify a value for
        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
      default values and when this parameter is required, see the <code>VpcId</code> parameter
      description. </p>")
    @as("DefaultSubnetId")
    defaultSubnetId: option<string_>,
    @ocaml.doc("<p>The stack's default Availability Zone, which must be in the specified region. For more
      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and
        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
      be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    </p>")
    @as("DefaultAvailabilityZone")
    defaultAvailabilityZone: option<string_>,
    @ocaml.doc("<p>The stack's host name theme, with spaces replaced by underscores. The theme is used to
      generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
      to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
      short name. The other themes are:</p>
         <ul>
            <li>
               <p>
                  <code>Baked_Goods</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Clouds</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Europe_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Fruits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Greek_Deities_and_Titans</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Legendary_creatures_from_Japan</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Planets_and_Moons</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Roman_Deities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Scottish_Islands</code>
               </p>
            </li>
            <li>
               <p>
                  <code>US_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Wild_Cats</code>
               </p>
            </li>
         </ul>
         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
      host name based on the current theme.</p>")
    @as("HostnameTheme")
    hostnameTheme: option<string_>,
    @ocaml.doc("<p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p>
         <ul>
            <li>
               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
            </li>
            <li>
               <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
            </li>
            <li>
               <p>
                  <code>CentOS Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Red Hat Enterprise Linux 7</code>
               </p>
            </li>
            <li>
               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
            </li>
            <li>
               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
        you create instances. For more
        information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">
        Using Custom AMIs</a>.</p>
            </li>
         </ul>
         <p>The default option is the current Amazon Linux version.
      For more information about supported operating systems,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>")
    @as("DefaultOs")
    defaultOs: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
      For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("DefaultInstanceProfileArn")
    defaultInstanceProfileArn: string_,
    @ocaml.doc("<p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS
      resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
      existing IAM role. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("ServiceRoleArn")
    serviceRoleArn: string_,
    @ocaml.doc(
      "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"
    )
    @as("Attributes")
    attributes: option<stackAttributes>,
    @ocaml.doc("<p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p>
         <ul>
            <li>
               <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p>
            </li>
            <li>
               <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p>
            </li>
         </ul>
         <p>If the VPC ID corresponds to a default VPC and you have specified either the
        <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
      AWS OpsWorks Stacks infers the value of the 
      other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
      these parameters to the first valid Availability Zone for the specified region and the
      corresponding default VPC subnet ID, respectively.</p>
         <p>If you specify a nondefault VPC ID, note the following:</p>
         <ul>
            <li>
               <p>It must belong to a VPC in your account that is in the specified region.</p>
            </li>
            <li>
               <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
            </li>
         </ul>
         <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a
        VPC</a>. For more information about default VPC and EC2-Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported
        Platforms</a>. </p>")
    @as("VpcId")
    vpcId: option<string_>,
    @ocaml.doc("<p>The stack's AWS region, such as <code>ap-south-1</code>. For more information about
            Amazon regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>
         <note>
            <p>In the AWS CLI, this API maps to the <code>--stack-region</code> parameter. If the
                    <code>--stack-region</code> parameter and the AWS CLI common parameter
                    <code>--region</code> are set to the same value, the stack uses a
                    <i>regional</i> endpoint. If the <code>--stack-region</code>
                parameter is not set, but the AWS CLI <code>--region</code> parameter is, this also
                results in a stack with a <i>regional</i> endpoint. However, if the
                    <code>--region</code> parameter is set to <code>us-east-1</code>, and the
                    <code>--stack-region</code> parameter is set to one of the following, then the
                stack uses a legacy or <i>classic</i> region: <code>us-west-1,
                    us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1,
                    ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in
                    <code>us-east-1</code>. Only the preceding regions are supported as classic
                regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to
                choose the regional endpoint that is closest to where you manage AWS, we recommend
                that you use regional endpoints for new stacks. The AWS CLI common
                    <code>--region</code> parameter always specifies a regional API endpoint; it
                cannot be used to specify a classic AWS OpsWorks Stacks region.</p>
         </note>")
    @as("Region")
    region: string_,
    @ocaml.doc("<p>The stack name.</p>") @as("Name") name: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateStack</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The stack ID, which is an opaque string that you use to identify the stack when performing
      actions such as <code>DescribeStacks</code>.</p>")
    @as("StackId")
    stackId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateStackCommand"
  let make = (
    ~defaultInstanceProfileArn,
    ~serviceRoleArn,
    ~region,
    ~name,
    ~agentVersion=?,
    ~defaultRootDeviceType=?,
    ~defaultSshKeyName=?,
    ~customCookbooksSource=?,
    ~useOpsworksSecurityGroups=?,
    ~useCustomCookbooks=?,
    ~chefConfiguration=?,
    ~configurationManager=?,
    ~customJson=?,
    ~defaultSubnetId=?,
    ~defaultAvailabilityZone=?,
    ~hostnameTheme=?,
    ~defaultOs=?,
    ~attributes=?,
    ~vpcId=?,
    (),
  ) =>
    new({
      agentVersion,
      defaultRootDeviceType,
      defaultSshKeyName,
      customCookbooksSource,
      useOpsworksSecurityGroups,
      useCustomCookbooks,
      chefConfiguration,
      configurationManager,
      customJson,
      defaultSubnetId,
      defaultAvailabilityZone,
      hostnameTheme,
      defaultOs,
      defaultInstanceProfileArn,
      serviceRoleArn,
      attributes,
      vpcId,
      region,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CloneStack = {
  type t
  type request = {
    @ocaml.doc("<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
         <ul>
            <li>
               <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
      automatically installs new agent versions on the stack's instances as soon as
      they are available.</p>
            </li>
            <li>
               <p>Fixed version - Set this parameter to your preferred agent version. To update 
             the agent version, you must edit the stack configuration and specify a new version. 
             AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
            </li>
         </ul>
         <p>The default setting is <code>LATEST</code>. To specify an agent version,
      you must use the complete version number, not the abbreviated number shown on the console.
      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
         <note>
            <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
         </note>")
    @as("AgentVersion")
    agentVersion: option<string_>,
    @ocaml.doc("<p>The default root device type. This value is used by default for all instances in the cloned
      stack, but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>")
    @as("DefaultRootDeviceType")
    defaultRootDeviceType: option<rootDeviceType>,
    @ocaml.doc("<p>A list of source stack app IDs to be included in the cloned stack.</p>")
    @as("CloneAppIds")
    cloneAppIds: option<strings>,
    @ocaml.doc("<p>Whether to clone the source stack's permissions.</p>") @as("ClonePermissions")
    clonePermissions: option<boolean_>,
    @ocaml.doc("<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS
      OpsWorks installs the public key on the instance and you can use the private key with an SSH
      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to
        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH
        Access</a>. You can override this setting by specifying a different key pair, or no key
      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">
        create an instance</a>. </p>")
    @as("DefaultSshKeyName")
    defaultSshKeyName: option<string_>,
    @ocaml.doc("<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, 
            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>")
    @as("CustomCookbooksSource")
    customCookbooksSource: option<source>,
    @ocaml.doc("<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
         <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
      associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
      provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
      following settings: </p>
         <ul>
            <li>
               <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p>
            </li>
            <li>
               <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New
        Stack</a>.</p>")
    @as("UseOpsworksSecurityGroups")
    useOpsworksSecurityGroups: option<boolean_>,
    @ocaml.doc("<p>Whether to use custom cookbooks.</p>") @as("UseCustomCookbooks")
    useCustomCookbooks: option<boolean_>,
    @ocaml.doc("<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>")
    @as("ChefConfiguration")
    chefConfiguration: option<chefConfiguration>,
    @ocaml.doc(
      "<p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
    )
    @as("ConfigurationManager")
    configurationManager: option<stackConfigurationManager>,
    @ocaml.doc("<p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
        Modify the Stack Configuration Attributes</a>
         </p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
      otherwise when you create the instance. If you also specify a value for
        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
      default values and when this parameter is required, see the <code>VpcId</code> parameter
      description. </p>")
    @as("DefaultSubnetId")
    defaultSubnetId: option<string_>,
    @ocaml.doc("<p>The cloned stack's default Availability Zone, which must be in the specified region. For more
      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and
        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
      be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    </p>")
    @as("DefaultAvailabilityZone")
    defaultAvailabilityZone: option<string_>,
    @ocaml.doc("<p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to
      generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
      to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
      short name. The other themes are:</p>
         <ul>
            <li>
               <p>
                  <code>Baked_Goods</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Clouds</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Europe_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Fruits</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Greek_Deities_and_Titans</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Legendary_creatures_from_Japan</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Planets_and_Moons</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Roman_Deities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Scottish_Islands</code>
               </p>
            </li>
            <li>
               <p>
                  <code>US_Cities</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Wild_Cats</code>
               </p>
            </li>
         </ul>
         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
      host name based on the current theme.</p>")
    @as("HostnameTheme")
    hostnameTheme: option<string_>,
    @ocaml.doc("<p>The stack's operating system, which must be set to one of the following.</p>
         <ul>
            <li>
               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux
        2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
            </li>
            <li>
               <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
            </li>
            <li>
               <p>
                  <code>CentOS Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Red Hat Enterprise Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
            </li>
            <li>
               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
        you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using
          Custom AMIs</a>.</p>
            </li>
         </ul>
         <p>The default option is the parent stack's operating system.
      For more information about supported operating systems,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>
         <note>
            <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
         </note>")
    @as("DefaultOs")
    defaultOs: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
      For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("DefaultInstanceProfileArn")
    defaultInstanceProfileArn: option<string_>,
    @ocaml.doc("<p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS
      resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
      existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for
      you. You can obtain an existing stack's IAM ARN programmatically by calling
        <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>
         <note>
            <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p>
         </note>")
    @as("ServiceRoleArn")
    serviceRoleArn: string_,
    @ocaml.doc(
      "<p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>"
    )
    @as("Attributes")
    attributes: option<stackAttributes>,
    @ocaml.doc("<p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All
          instances are launched into this VPC, and you cannot change the ID later.</p>
         <ul>
            <li>
               <p>If your account supports EC2 Classic, the default value is no VPC.</p>
            </li>
            <li>
               <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p>
            </li>
         </ul>
         <p>If the VPC ID corresponds to a default VPC and you have specified either the
        <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
      AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
      these parameters to the first valid Availability Zone for the specified region and the
      corresponding default VPC subnet ID, respectively. </p>
         <p>If you specify a nondefault VPC ID, note the following:</p>
         <ul>
            <li>
               <p>It must belong to a VPC in your account that is in the specified region.</p>
            </li>
            <li>
               <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
            </li>
         </ul>
         <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a
        VPC</a>. For more information about default VPC and EC2 Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported
        Platforms</a>. </p>")
    @as("VpcId")
    vpcId: option<string_>,
    @ocaml.doc("<p>The cloned stack AWS region, such as \"ap-northeast-2\". For more information about AWS regions, see
        <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>")
    @as("Region")
    region: option<string_>,
    @ocaml.doc("<p>The cloned stack name.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The source stack ID.</p>") @as("SourceStackId") sourceStackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CloneStack</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The cloned stack ID.</p>") @as("StackId") stackId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CloneStackCommand"
  let make = (
    ~serviceRoleArn,
    ~sourceStackId,
    ~agentVersion=?,
    ~defaultRootDeviceType=?,
    ~cloneAppIds=?,
    ~clonePermissions=?,
    ~defaultSshKeyName=?,
    ~customCookbooksSource=?,
    ~useOpsworksSecurityGroups=?,
    ~useCustomCookbooks=?,
    ~chefConfiguration=?,
    ~configurationManager=?,
    ~customJson=?,
    ~defaultSubnetId=?,
    ~defaultAvailabilityZone=?,
    ~hostnameTheme=?,
    ~defaultOs=?,
    ~defaultInstanceProfileArn=?,
    ~attributes=?,
    ~vpcId=?,
    ~region=?,
    ~name=?,
    (),
  ) =>
    new({
      agentVersion,
      defaultRootDeviceType,
      cloneAppIds,
      clonePermissions,
      defaultSshKeyName,
      customCookbooksSource,
      useOpsworksSecurityGroups,
      useCustomCookbooks,
      chefConfiguration,
      configurationManager,
      customJson,
      defaultSubnetId,
      defaultAvailabilityZone,
      hostnameTheme,
      defaultOs,
      defaultInstanceProfileArn,
      serviceRoleArn,
      attributes,
      vpcId,
      region,
      name,
      sourceStackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssignInstance = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>"
    )
    @as("LayerIds")
    layerIds: strings,
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "AssignInstanceCommand"
  let make = (~layerIds, ~instanceId, ()) => new({layerIds, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateApp = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
      associated with the app. After you deploy the app, these variables are defined on the
      associated app server instances.For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p>
         <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20 KB).\"</p>
         <note>
            <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
         </note>")
    @as("Environment")
    environment: option<environmentVariables>,
    @ocaml.doc(
      "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
    )
    @as("Attributes")
    attributes: option<appAttributes>,
    @ocaml.doc("<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>")
    @as("SslConfiguration")
    sslConfiguration: option<sslConfiguration>,
    @ocaml.doc("<p>Whether SSL is enabled for the app.</p>") @as("EnableSsl")
    enableSsl: option<boolean_>,
    @ocaml.doc("<p>The app's virtual host settings, with multiple domains separated by commas. For example:
        <code>'www.example.com, example.com'</code>
         </p>")
    @as("Domains")
    domains: option<strings>,
    @ocaml.doc("<p>A <code>Source</code> object that specifies the app repository.</p>")
    @as("AppSource")
    appSource: option<source>,
    @ocaml.doc("<p>The app type.</p>") @as("Type") type_: option<appType>,
    @ocaml.doc("<p>The app's data sources.</p>") @as("DataSources")
    dataSources: option<dataSources>,
    @ocaml.doc("<p>A description of the app.</p>") @as("Description") description: option<string_>,
    @ocaml.doc("<p>The app name.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateAppCommand"
  let make = (
    ~appId,
    ~environment=?,
    ~attributes=?,
    ~sslConfiguration=?,
    ~enableSsl=?,
    ~domains=?,
    ~appSource=?,
    ~type_=?,
    ~dataSources=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      environment,
      attributes,
      sslConfiguration,
      enableSsl,
      domains,
      appSource,
      type_,
      dataSources,
      description,
      name,
      appId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetTimeBasedAutoScaling = {
  type t
  type request = {
    @ocaml.doc("<p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>")
    @as("AutoScalingSchedule")
    autoScalingSchedule: option<weeklyAutoScalingSchedule>,
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "SetTimeBasedAutoScalingCommand"
  let make = (~instanceId, ~autoScalingSchedule=?, ()) => new({autoScalingSchedule, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetLoadBasedAutoScaling = {
  type t
  type request = {
    @ocaml.doc("<p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If
      the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified
      number of instances.</p>")
    @as("DownScaling")
    downScaling: option<autoScalingThresholds>,
    @ocaml.doc("<p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If
      the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified
      number of instances.</p>")
    @as("UpScaling")
    upScaling: option<autoScalingThresholds>,
    @ocaml.doc("<p>Enables load-based auto scaling for the layer.</p>") @as("Enable")
    enable: option<boolean_>,
    @ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "SetLoadBasedAutoScalingCommand"
  let make = (~layerId, ~downScaling=?, ~upScaling=?, ~enable=?, ()) =>
    new({downScaling, upScaling, enable, layerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeVolumes = {
  type t
  type request = {
    @ocaml.doc("<p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns
      descriptions of the specified volumes. Otherwise, it returns a description of every
      volume.</p>")
    @as("VolumeIds")
    volumeIds: option<strings>,
    @ocaml.doc("<p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns
      descriptions of the volumes associated with the specified RAID array.</p>")
    @as("RaidArrayId")
    raidArrayId: option<string_>,
    @ocaml.doc("<p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>")
    @as("StackId")
    stackId: option<string_>,
    @ocaml.doc("<p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions
      of the volumes associated with the specified instance.</p>")
    @as("InstanceId")
    instanceId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeVolumes</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of volume IDs.</p>") @as("Volumes") volumes: option<volumes>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeVolumesCommand"
  let make = (~volumeIds=?, ~raidArrayId=?, ~stackId=?, ~instanceId=?, ()) =>
    new({volumeIds, raidArrayId, stackId, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUserProfiles = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of IAM or federated user ARNs that identify the users to be described.</p>"
    )
    @as("IamUserArns")
    iamUserArns: option<strings>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>")
  type response = {
    @ocaml.doc("<p>A <code>Users</code> object that describes the specified users.</p>")
    @as("UserProfiles")
    userProfiles: option<userProfiles>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeUserProfilesCommand"
  let make = (~iamUserArns=?, ()) => new({iamUserArns: iamUserArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeStackSummary = {
  type t
  type request = {@ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_}
  @ocaml.doc("<p>Contains the response to a <code>DescribeStackSummary</code> request.</p>")
  type response = {
    @ocaml.doc("<p>A <code>StackSummary</code> object that contains the results.</p>")
    @as("StackSummary")
    stackSummary: option<stackSummary>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeStackSummaryCommand"
  let make = (~stackId, ()) => new({stackId: stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeServiceErrors = {
  type t
  type request = {
    @ocaml.doc("<p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code>
      returns descriptions of the specified errors. Otherwise, it returns a description of every
      error.</p>")
    @as("ServiceErrorIds")
    serviceErrorIds: option<strings>,
    @ocaml.doc("<p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
      descriptions of the errors associated with the specified instance.</p>")
    @as("InstanceId")
    instanceId: option<string_>,
    @ocaml.doc("<p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
      descriptions of the errors associated with the specified stack.</p>")
    @as("StackId")
    stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>"
    )
    @as("ServiceErrors")
    serviceErrors: option<serviceErrors>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeServiceErrorsCommand"
  let make = (~serviceErrorIds=?, ~instanceId=?, ~stackId=?, ()) =>
    new({serviceErrorIds, instanceId, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRdsDbInstances = {
  type t
  type request = {
    @ocaml.doc("<p>An array containing the ARNs of the instances to be described.</p>")
    @as("RdsDbInstanceArns")
    rdsDbInstanceArns: option<strings>,
    @ocaml.doc(
      "<p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances.</p>"
    )
    @as("StackId")
    stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>"
    )
    @as("RdsDbInstances")
    rdsDbInstances: option<rdsDbInstances>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeRdsDbInstancesCommand"
  let make = (~stackId, ~rdsDbInstanceArns=?, ()) => new({rdsDbInstanceArns, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRaidArrays = {
  type t
  type request = {
    @ocaml.doc("<p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code>
      returns descriptions of the specified arrays. Otherwise, it returns a description of every
      array.</p>")
    @as("RaidArrayIds")
    raidArrayIds: option<strings>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
    @ocaml.doc("<p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns
      descriptions of the RAID arrays associated with the specified instance. </p>")
    @as("InstanceId")
    instanceId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>")
  type response = {
    @ocaml.doc("<p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>")
    @as("RaidArrays")
    raidArrays: option<raidArrays>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeRaidArraysCommand"
  let make = (~raidArrayIds=?, ~stackId=?, ~instanceId=?, ()) =>
    new({raidArrayIds, stackId, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
    @ocaml.doc("<p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("IamUserArn")
    iamUserArn: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribePermissions</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>Permission</code> objects that describe the stack permissions.</p>
         <ul>
            <li>
               <p>If the request object contains only a stack ID, the array contains a
          <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p>
            </li>
            <li>
               <p>If the request object contains only an IAM ARN, the array contains a
          <code>Permission</code> object with permissions for each of the user's stack IDs.</p>
            </li>
            <li>
               <p>If the request contains a stack ID and an IAM ARN, the array contains a single
          <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p>
            </li>
         </ul>")
    @as("Permissions")
    permissions: option<permissions>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribePermissionsCommand"
  let make = (~stackId=?, ~iamUserArn=?, ()) => new({stackId, iamUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticIps = {
  type t
  type request = {
    @ocaml.doc("<p>An array of Elastic IP addresses to be described. If you include this parameter,
        <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses.
      Otherwise, it returns a description of every Elastic IP address.</p>")
    @as("Ips")
    ips: option<strings>,
    @ocaml.doc("<p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
      description of the Elastic IP addresses that are registered with the specified stack.</p>")
    @as("StackId")
    stackId: option<string_>,
    @ocaml.doc("<p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
      description of the Elastic IP addresses associated with the specified instance.</p>")
    @as("InstanceId")
    instanceId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeElasticIps</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>"
    )
    @as("ElasticIps")
    elasticIps: option<elasticIps>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeElasticIpsCommand"
  let make = (~ips=?, ~stackId=?, ~instanceId=?, ()) => new({ips, stackId, instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEcsClusters = {
  type t
  type request = {
    @ocaml.doc("<p>To receive a paginated response, use this parameter to specify the maximum number
      of results to be returned with a single call. If the number of available results exceeds this maximum, the
      response includes a <code>NextToken</code> value that you can assign
      to the <code>NextToken</code> request parameter to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results,
      the response object's<code>NextToken</code> parameter value is set to a token.
      To retrieve the next set of results, call <code>DescribeEcsClusters</code>
      again and assign that token to the request object's <code>NextToken</code> parameter.
      If there are no remaining results, the previous response
      object's <code>NextToken</code> parameter is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A stack ID.
      <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>")
    @as("StackId")
    stackId: option<string_>,
    @ocaml.doc("<p>A list of ARNs, one for each cluster to be described.</p>") @as("EcsClusterArns")
    ecsClusterArns: option<strings>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>")
  type response = {
    @ocaml.doc("<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that
      you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results.
      If the previous paginated request returned all of the remaining results,
      this parameter is set to <code>null</code>.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>"
    )
    @as("EcsClusters")
    ecsClusters: option<ecsClusters>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeEcsClustersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~stackId=?, ~ecsClusterArns=?, ()) =>
    new({maxResults, nextToken, stackId, ecsClusterArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCommands = {
  type t
  type request = {
    @ocaml.doc("<p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns
      a description of the specified commands. Otherwise, it returns a description of every
      command.</p>")
    @as("CommandIds")
    commandIds: option<strings>,
    @ocaml.doc("<p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a
      description of the commands associated with the specified instance.</p>")
    @as("InstanceId")
    instanceId: option<string_>,
    @ocaml.doc("<p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a
      description of the commands associated with the specified deployment.</p>")
    @as("DeploymentId")
    deploymentId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeCommands</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>An array of <code>Command</code> objects that describe each of the specified commands.</p>"
    )
    @as("Commands")
    commands: option<commands>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeCommandsCommand"
  let make = (~commandIds=?, ~instanceId=?, ~deploymentId=?, ()) =>
    new({commandIds, instanceId, deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApp = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
      associated with the app. After you deploy the app, these variables are defined on the
      associated app server instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p>
         <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20KB).\"</p>
         <note>
            <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
         </note>")
    @as("Environment")
    environment: option<environmentVariables>,
    @ocaml.doc(
      "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
    )
    @as("Attributes")
    attributes: option<appAttributes>,
    @ocaml.doc("<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>")
    @as("SslConfiguration")
    sslConfiguration: option<sslConfiguration>,
    @ocaml.doc("<p>Whether to enable SSL for the app.</p>") @as("EnableSsl")
    enableSsl: option<boolean_>,
    @ocaml.doc("<p>The app virtual host settings, with multiple domains separated by commas. For example:
        <code>'www.example.com, example.com'</code>
         </p>")
    @as("Domains")
    domains: option<strings>,
    @ocaml.doc("<p>A <code>Source</code> object that specifies the app repository.</p>")
    @as("AppSource")
    appSource: option<source>,
    @ocaml.doc("<p>The app type. Each supported type is associated with a particular layer. For example, PHP
      applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances
      that are members of the corresponding layer. If your app isn't one of the standard types, or
      you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>")
    @as("Type")
    type_: appType,
    @ocaml.doc("<p>The app's data source.</p>") @as("DataSources") dataSources: option<dataSources>,
    @ocaml.doc("<p>A description of the app.</p>") @as("Description") description: option<string_>,
    @ocaml.doc("<p>The app name.</p>") @as("Name") name: string_,
    @ocaml.doc("<p>The app's short name.</p>") @as("Shortname") shortname: option<string_>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateApp</code> request.</p>")
  type response = {@ocaml.doc("<p>The app ID.</p>") @as("AppId") appId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateAppCommand"
  let make = (
    ~type_,
    ~name,
    ~stackId,
    ~environment=?,
    ~attributes=?,
    ~sslConfiguration=?,
    ~enableSsl=?,
    ~domains=?,
    ~appSource=?,
    ~dataSources=?,
    ~description=?,
    ~shortname=?,
    (),
  ) =>
    new({
      environment,
      attributes,
      sslConfiguration,
      enableSsl,
      domains,
      appSource,
      type_,
      dataSources,
      description,
      name,
      shortname,
      stackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateLayer = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("LifecycleEventConfiguration")
    lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
    @ocaml.doc("<p>Whether to use Amazon EBS-optimized instances.</p>")
    @as("UseEbsOptimizedInstances")
    useEbsOptimizedInstances: option<boolean_>,
    @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. To control when updates are installed, set this value to
        <code>false</code>. You must then update your instances manually by using
        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
      manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
      instances. </p>
         <note>
            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
        instances have the latest security updates.</p>
         </note>")
    @as("InstallUpdatesOnBoot")
    installUpdatesOnBoot: option<boolean_>,
    @ocaml.doc(
      "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"
    )
    @as("CustomRecipes")
    customRecipes: option<recipes>,
    @ocaml.doc("<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
    @as("AutoAssignPublicIps")
    autoAssignPublicIps: option<boolean_>,
    @ocaml.doc("<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP
        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
    @as("AutoAssignElasticIps")
    autoAssignElasticIps: option<boolean_>,
    @ocaml.doc("<p>Whether to disable auto healing for the layer.</p>") @as("EnableAutoHealing")
    enableAutoHealing: option<boolean_>,
    @ocaml.doc(
      "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
    )
    @as("VolumeConfigurations")
    volumeConfigurations: option<volumeConfigurations>,
    @ocaml.doc(
      "<p>An array of <code>Package</code> objects that describe the layer's packages.</p>"
    )
    @as("Packages")
    packages: option<strings>,
    @ocaml.doc("<p>An array containing the layer's custom security group IDs.</p>")
    @as("CustomSecurityGroupIds")
    customSecurityGroupIds: option<strings>,
    @ocaml.doc("<p>A JSON-formatted string containing custom stack configuration and deployment attributes
      to be installed on the layer's instances. For more information, see
      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">
        Using Custom JSON</a>.
    </p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more
      information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using
      Identifiers</a>.</p>")
    @as("CustomInstanceProfileArn")
    customInstanceProfileArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>"
    )
    @as("CloudWatchLogsConfiguration")
    cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
    @ocaml.doc(
      "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
    )
    @as("Attributes")
    attributes: option<layerAttributes>,
    @ocaml.doc("<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\\A[a-z0-9\\-\\_\\.]+\\Z/.</p>
         <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer Reference</a>
         </p>")
    @as("Shortname")
    shortname: option<string_>,
    @ocaml.doc("<p>The layer name, which is used by the console.</p>") @as("Name")
    name: option<string_>,
    @ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "UpdateLayerCommand"
  let make = (
    ~layerId,
    ~lifecycleEventConfiguration=?,
    ~useEbsOptimizedInstances=?,
    ~installUpdatesOnBoot=?,
    ~customRecipes=?,
    ~autoAssignPublicIps=?,
    ~autoAssignElasticIps=?,
    ~enableAutoHealing=?,
    ~volumeConfigurations=?,
    ~packages=?,
    ~customSecurityGroupIds=?,
    ~customJson=?,
    ~customInstanceProfileArn=?,
    ~cloudWatchLogsConfiguration=?,
    ~attributes=?,
    ~shortname=?,
    ~name=?,
    (),
  ) =>
    new({
      lifecycleEventConfiguration,
      useEbsOptimizedInstances,
      installUpdatesOnBoot,
      customRecipes,
      autoAssignPublicIps,
      autoAssignElasticIps,
      enableAutoHealing,
      volumeConfigurations,
      packages,
      customSecurityGroupIds,
      customJson,
      customInstanceProfileArn,
      cloudWatchLogsConfiguration,
      attributes,
      shortname,
      name,
      layerId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeStacks = {
  type t
  type request = {
    @ocaml.doc("<p>An array of stack IDs that specify the stacks to be described. If you omit this parameter,
        <code>DescribeStacks</code> returns a description of every stack.</p>")
    @as("StackIds")
    stackIds: option<strings>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeStacks</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>Stack</code> objects that describe the stacks.</p>")
    @as("Stacks")
    stacks: option<stacks>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeStacksCommand"
  let make = (~stackIds=?, ()) => new({stackIds: stackIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticLoadBalancers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>"
    )
    @as("LayerIds")
    layerIds: option<strings>,
    @ocaml.doc(
      "<p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>"
    )
    @as("StackId")
    stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>")
  type response = {
    @ocaml.doc("<p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing
      instances.</p>")
    @as("ElasticLoadBalancers")
    elasticLoadBalancers: option<elasticLoadBalancers>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeElasticLoadBalancersCommand"
  let make = (~layerIds=?, ~stackId=?, ()) => new({layerIds, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAgentVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration manager.</p>") @as("ConfigurationManager")
    configurationManager: option<stackConfigurationManager>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.</p>"
    )
    @as("AgentVersions")
    agentVersions: option<agentVersions>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeAgentVersionsCommand"
  let make = (~configurationManager=?, ~stackId=?, ()) => new({configurationManager, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLayer = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to
      specify an execution timeout and enable or disable Elastic Load Balancer connection
      draining.</p>")
    @as("LifecycleEventConfiguration")
    lifecycleEventConfiguration: option<lifecycleEventConfiguration>,
    @ocaml.doc("<p>Whether to use Amazon EBS-optimized instances.</p>")
    @as("UseEbsOptimizedInstances")
    useEbsOptimizedInstances: option<boolean_>,
    @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. To control when updates are installed, set this value to
        <code>false</code>. You must then update your instances manually by using
        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
      instances. </p>
         <note>
            <p>To ensure that your
        instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p>
         </note>")
    @as("InstallUpdatesOnBoot")
    installUpdatesOnBoot: option<boolean_>,
    @ocaml.doc(
      "<p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>"
    )
    @as("CustomRecipes")
    customRecipes: option<recipes>,
    @ocaml.doc("<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
    @as("AutoAssignPublicIps")
    autoAssignPublicIps: option<boolean_>,
    @ocaml.doc("<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP
        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit
        a Layer</a>.</p>")
    @as("AutoAssignElasticIps")
    autoAssignElasticIps: option<boolean_>,
    @ocaml.doc("<p>Whether to disable auto healing for the layer.</p>") @as("EnableAutoHealing")
    enableAutoHealing: option<boolean_>,
    @ocaml.doc(
      "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
    )
    @as("VolumeConfigurations")
    volumeConfigurations: option<volumeConfigurations>,
    @ocaml.doc("<p>An array of <code>Package</code> objects that describes the layer packages.</p>")
    @as("Packages")
    packages: option<strings>,
    @ocaml.doc("<p>An array containing the layer custom security group IDs.</p>")
    @as("CustomSecurityGroupIds")
    customSecurityGroupIds: option<strings>,
    @ocaml.doc("<p>A JSON-formatted string containing custom stack configuration and deployment attributes
     to be installed on the layer's instances. For more information, see
      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">
        Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI. 
    </p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information
      about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>")
    @as("CustomInstanceProfileArn")
    customInstanceProfileArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>"
    )
    @as("CloudWatchLogsConfiguration")
    cloudWatchLogsConfiguration: option<cloudWatchLogsConfiguration>,
    @ocaml.doc("<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
         <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>")
    @as("Attributes")
    attributes: option<layerAttributes>,
    @ocaml.doc("<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p>
         <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer Reference</a>.</p>")
    @as("Shortname")
    shortname: string_,
    @ocaml.doc("<p>The layer name, which is used by the console.</p>") @as("Name") name: string_,
    @ocaml.doc(
      "<p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>"
    )
    @as("Type")
    type_: layerType,
    @ocaml.doc("<p>The layer stack ID.</p>") @as("StackId") stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateLayer</code> request.</p>")
  type response = {@ocaml.doc("<p>The layer ID.</p>") @as("LayerId") layerId: option<string_>}
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateLayerCommand"
  let make = (
    ~shortname,
    ~name,
    ~type_,
    ~stackId,
    ~lifecycleEventConfiguration=?,
    ~useEbsOptimizedInstances=?,
    ~installUpdatesOnBoot=?,
    ~customRecipes=?,
    ~autoAssignPublicIps=?,
    ~autoAssignElasticIps=?,
    ~enableAutoHealing=?,
    ~volumeConfigurations=?,
    ~packages=?,
    ~customSecurityGroupIds=?,
    ~customJson=?,
    ~customInstanceProfileArn=?,
    ~cloudWatchLogsConfiguration=?,
    ~attributes=?,
    (),
  ) =>
    new({
      lifecycleEventConfiguration,
      useEbsOptimizedInstances,
      installUpdatesOnBoot,
      customRecipes,
      autoAssignPublicIps,
      autoAssignElasticIps,
      enableAutoHealing,
      volumeConfigurations,
      packages,
      customSecurityGroupIds,
      customJson,
      customInstanceProfileArn,
      cloudWatchLogsConfiguration,
      attributes,
      shortname,
      name,
      type_,
      stackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateInstance = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter:  <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Dedicated Hosts Overview</a> and <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html\">Dedicated Instances</a> and <a href=\"http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/\">Amazon EC2 Dedicated Instances</a>.</p>"
    )
    @as("Tenancy")
    tenancy: option<string_>,
    @ocaml.doc("<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
         <ul>
            <li>
               <p>
                  <code>INHERIT</code> - Use the stack's default agent version setting.</p>
            </li>
            <li>
               <p>
                  <i>version_number</i> - Use the specified agent version.
        This value overrides the stack's default setting.
        To update the agent version, edit the instance configuration and specify a
        new version.
        AWS OpsWorks Stacks then automatically installs that version on the instance.</p>
            </li>
         </ul>
         <p>The default setting is <code>INHERIT</code>. To specify an agent version,
      you must use the complete version number, not the abbreviated number shown on the console.
      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>")
    @as("AgentVersion")
    agentVersion: option<string_>,
    @ocaml.doc("<p>Whether to create an Amazon EBS-optimized instance.</p>") @as("EbsOptimized")
    ebsOptimized: option<boolean_>,
    @ocaml.doc("<p>Whether to install operating system and package updates when the instance boots. The default
      value is <code>true</code>. To control when updates are installed, set this value to
        <code>false</code>. You must then update your instances manually by using
        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
      instances. </p>
         <note>
            <p>We strongly recommend using the default value of <code>true</code> to ensure that your
        instances have the latest security updates.</p>
         </note>")
    @as("InstallUpdatesOnBoot")
    installUpdatesOnBoot: option<boolean_>,
    @ocaml.doc("<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block
      devices. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html\">Block
        Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>")
    @as("BlockDeviceMappings")
    blockDeviceMappings: option<blockDeviceMappings>,
    @ocaml.doc(
      "<p>The instance root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
    )
    @as("RootDeviceType")
    rootDeviceType: option<rootDeviceType>,
    @ocaml.doc("<p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not
      necessarily support both architectures. For a list of the architectures that are supported by
      the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and
        Types</a>.</p>")
    @as("Architecture")
    architecture: option<architecture>,
    @ocaml.doc(
      "<p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>"
    )
    @as("SubnetId")
    subnetId: option<string_>,
    @ocaml.doc(
      "<p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>"
    )
    @as("VirtualizationType")
    virtualizationType: option<string_>,
    @ocaml.doc(
      "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
    )
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The instance's Amazon EC2 key-pair name.</p>") @as("SshKeyName")
    sshKeyName: option<string_>,
    @ocaml.doc("<p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the
      supported operating systems.
      For more information, see
      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p>
         <note>
            <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p>
         </note>")
    @as("AmiId")
    amiId: option<string_>,
    @ocaml.doc("<p>The instance's operating system, which must be set to one of the following.</p>
         <ul>
            <li>
               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, 
              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
            </li>
            <li>
               <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
            </li>
            <li>
               <p>
                  <code>CentOS Linux 7</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Red Hat Enterprise Linux 7</code>
               </p>
            </li>
            <li>
               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, 
			   <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
            </li>
            <li>
               <p>A custom AMI: <code>Custom</code>.</p>
            </li>
         </ul>
         <p>For more information about the supported operating systems,
      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>
         <p>The default option is the current Amazon Linux version. If you set this parameter to
        <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to
      specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information about supported operating
      systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">Operating Systems</a>For more information about how to use custom AMIs with AWS OpsWorks Stacks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using
        Custom AMIs</a>.</p>")
    @as("Os")
    os: option<string_>,
    @ocaml.doc("<p>The instance host name.</p>") @as("Hostname") hostname: option<string_>,
    @ocaml.doc(
      "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"
    )
    @as("AutoScalingType")
    autoScalingType: option<autoScalingType>,
    @ocaml.doc("<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
      open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
      The <b>Size</b> list contains the currently supported types. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance
        Families and Types</a>. The parameter values that you use to specify the various types are
      in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>")
    @as("InstanceType")
    instanceType: string_,
    @ocaml.doc("<p>An array that contains the instance's layer IDs.</p>") @as("LayerIds")
    layerIds: strings,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateInstance</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The instance ID.</p>") @as("InstanceId") instanceId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateInstanceCommand"
  let make = (
    ~instanceType,
    ~layerIds,
    ~stackId,
    ~tenancy=?,
    ~agentVersion=?,
    ~ebsOptimized=?,
    ~installUpdatesOnBoot=?,
    ~blockDeviceMappings=?,
    ~rootDeviceType=?,
    ~architecture=?,
    ~subnetId=?,
    ~virtualizationType=?,
    ~availabilityZone=?,
    ~sshKeyName=?,
    ~amiId=?,
    ~os=?,
    ~hostname=?,
    ~autoScalingType=?,
    (),
  ) =>
    new({
      tenancy,
      agentVersion,
      ebsOptimized,
      installUpdatesOnBoot,
      blockDeviceMappings,
      rootDeviceType,
      architecture,
      subnetId,
      virtualizationType,
      availabilityZone,
      sshKeyName,
      amiId,
      os,
      hostname,
      autoScalingType,
      instanceType,
      layerIds,
      stackId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format:</p>
         <p>
            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>
         </p>
         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to
          Modify the Stack Configuration Attributes</a> and 
          <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">Overriding Attributes With Custom JSON</a>.</p>")
    @as("CustomJson")
    customJson: option<string_>,
    @ocaml.doc("<p>A user-defined comment.</p>") @as("Comment") comment: option<string_>,
    @ocaml.doc("<p>A <code>DeploymentCommand</code> object that specifies the deployment command and any
      associated arguments.</p>")
    @as("Command")
    command: deploymentCommand,
    @ocaml.doc("<p>The layer IDs for the deployment targets.</p>") @as("LayerIds")
    layerIds: option<strings>,
    @ocaml.doc("<p>The instance IDs for the deployment targets.</p>") @as("InstanceIds")
    instanceIds: option<strings>,
    @ocaml.doc(
      "<p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>"
    )
    @as("AppId")
    appId: option<string_>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: string_,
  }
  @ocaml.doc("<p>Contains the response to a <code>CreateDeployment</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>The deployment ID, which can be used with other requests to identify the deployment.</p>"
    )
    @as("DeploymentId")
    deploymentId: option<string_>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "CreateDeploymentCommand"
  let make = (
    ~command,
    ~stackId,
    ~customJson=?,
    ~comment=?,
    ~layerIds=?,
    ~instanceIds=?,
    ~appId=?,
    (),
  ) => new({customJson, comment, command, layerIds, instanceIds, appId, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTimeBasedAutoScaling = {
  type t
  type request = {
    @ocaml.doc("<p>An array of instance IDs.</p>") @as("InstanceIds") instanceIds: strings,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the
      configuration for the specified instances.</p>")
    @as("TimeBasedAutoScalingConfigurations")
    timeBasedAutoScalingConfigurations: option<timeBasedAutoScalingConfigurations>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeTimeBasedAutoScalingCommand"
  let make = (~instanceIds, ()) => new({instanceIds: instanceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOperatingSystems = {
  type t
  type request = {.}
  @ocaml.doc("<p>The response to a <code>DescribeOperatingSystems</code> request.</p>")
  type response = {
    @ocaml.doc(
      "<p>Contains information in response to a <code>DescribeOperatingSystems</code> request.</p>"
    )
    @as("OperatingSystems")
    operatingSystems: option<operatingSystems>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeOperatingSystemsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLoadBasedAutoScaling = {
  type t
  type request = {@ocaml.doc("<p>An array of layer IDs.</p>") @as("LayerIds") layerIds: strings}
  @ocaml.doc("<p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's
      configuration.</p>")
    @as("LoadBasedAutoScalingConfigurations")
    loadBasedAutoScalingConfigurations: option<loadBasedAutoScalingConfigurations>,
  }
  @module("@aws-sdk/client-opsworks") @new
  external new: request => t = "DescribeLoadBasedAutoScalingCommand"
  let make = (~layerIds, ()) => new({layerIds: layerIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApps = {
  type t
  type request = {
    @ocaml.doc("<p>An array of app IDs for the apps to be described. If you use this parameter,
        <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns
      a description of every app.</p>")
    @as("AppIds")
    appIds: option<strings>,
    @ocaml.doc("<p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description
      of the apps in the specified stack.</p>")
    @as("StackId")
    stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeApps</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>App</code> objects that describe the specified apps. </p>")
    @as("Apps")
    apps: option<apps>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeAppsCommand"
  let make = (~appIds=?, ~stackId=?, ()) => new({appIds, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLayers = {
  type t
  type request = {
    @ocaml.doc("<p>An array of layer IDs that specify the layers to be described. If you omit this parameter,
        <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>")
    @as("LayerIds")
    layerIds: option<strings>,
    @ocaml.doc("<p>The stack ID.</p>") @as("StackId") stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeLayers</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>Layer</code> objects that describe the layers.</p>")
    @as("Layers")
    layers: option<layers>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeLayersCommand"
  let make = (~layerIds=?, ~stackId=?, ()) => new({layerIds, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInstances = {
  type t
  type request = {
    @ocaml.doc("<p>An array of instance IDs to be described. If you use this parameter,
        <code>DescribeInstances</code> returns a description of the specified instances. Otherwise,
      it returns a description of every instance.</p>")
    @as("InstanceIds")
    instanceIds: option<strings>,
    @ocaml.doc("<p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
      the instances associated with the specified layer.</p>")
    @as("LayerId")
    layerId: option<string_>,
    @ocaml.doc("<p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
      the instances associated with the specified stack.</p>")
    @as("StackId")
    stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeInstances</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>Instance</code> objects that describe the instances.</p>")
    @as("Instances")
    instances: option<instances>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeInstancesCommand"
  let make = (~instanceIds=?, ~layerId=?, ~stackId=?, ()) => new({instanceIds, layerId, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDeployments = {
  type t
  type request = {
    @ocaml.doc("<p>An array of deployment IDs to be described. If you include this parameter,
        the command returns a description of the specified deployments.
      Otherwise, it returns a description of every deployment.</p>")
    @as("DeploymentIds")
    deploymentIds: option<strings>,
    @ocaml.doc("<p>The app ID. If you include this parameter, the command returns a
      description of the commands associated with the specified app.</p>")
    @as("AppId")
    appId: option<string_>,
    @ocaml.doc("<p>The stack ID. If you include this parameter, the command returns a
      description of the commands associated with the specified stack.</p>")
    @as("StackId")
    stackId: option<string_>,
  }
  @ocaml.doc("<p>Contains the response to a <code>DescribeDeployments</code> request.</p>")
  type response = {
    @ocaml.doc("<p>An array of <code>Deployment</code> objects that describe the deployments.</p>")
    @as("Deployments")
    deployments: option<deployments>,
  }
  @module("@aws-sdk/client-opsworks") @new external new: request => t = "DescribeDeploymentsCommand"
  let make = (~deploymentIds=?, ~appId=?, ~stackId=?, ()) => new({deploymentIds, appId, stackId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
