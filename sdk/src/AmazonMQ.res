type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mq") @new
external createClient: unit => awsServiceClient = "AmazonMQClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __string = string
type __integerMin5Max100 = int
type __integer = int
type __boolean = bool
@ocaml.doc("<p>The reason for which the XML elements or attributes were sanitized.</p>")
type sanitizationWarningReason = [
  | @as("INVALID_ATTRIBUTE_VALUE_REMOVED") #INVALID_ATTRIBUTE_VALUE_REMOVED
  | @as("DISALLOWED_ATTRIBUTE_REMOVED") #DISALLOWED_ATTRIBUTE_REMOVED
  | @as("DISALLOWED_ELEMENT_REMOVED") #DISALLOWED_ELEMENT_REMOVED
]
type maxResults = int
@ocaml.doc("<p>The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.</p>")
type engineType = [@as("RABBITMQ") #RABBITMQ | @as("ACTIVEMQ") #ACTIVEMQ]
@ocaml.doc("<p>The broker's deployment mode.</p>")
type deploymentMode = [
  | @as("CLUSTER_MULTI_AZ") #CLUSTER_MULTI_AZ
  | @as("ACTIVE_STANDBY_MULTI_AZ") #ACTIVE_STANDBY_MULTI_AZ
  | @as("SINGLE_INSTANCE") #SINGLE_INSTANCE
]
type dayOfWeek = [
  | @as("SUNDAY") #SUNDAY
  | @as("SATURDAY") #SATURDAY
  | @as("FRIDAY") #FRIDAY
  | @as("THURSDAY") #THURSDAY
  | @as("WEDNESDAY") #WEDNESDAY
  | @as("TUESDAY") #TUESDAY
  | @as("MONDAY") #MONDAY
]
@ocaml.doc("<p>The type of change pending for the ActiveMQ user.</p>")
type changeType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
@ocaml.doc(
  "<p>The broker's storage type.</p> <important><p>EFS is not supported for RabbitMQ engine type.</p></important>"
)
type brokerStorageType = [@as("EFS") #EFS | @as("EBS") #EBS]
@ocaml.doc("<p>The broker's status.</p>")
type brokerState = [
  | @as("REBOOT_IN_PROGRESS") #REBOOT_IN_PROGRESS
  | @as("RUNNING") #RUNNING
  | @as("DELETION_IN_PROGRESS") #DELETION_IN_PROGRESS
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS
]
@ocaml.doc(
  "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>"
)
type authenticationStrategy = [@as("LDAP") #LDAP | @as("SIMPLE") #SIMPLE]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type __listOfDeploymentMode = array<deploymentMode>
@ocaml.doc(
  "<p>The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker.</p>"
)
type weeklyStartTime = {
  @ocaml.doc(
    "<p>The time zone, UTC by default, in either the Country/City format, or the UTC offset format.</p>"
  )
  @as("TimeZone")
  timeZone: option<__string>,
  @ocaml.doc("<p>Required. The time, in 24-hour format.</p>") @as("TimeOfDay") timeOfDay: __string,
  @ocaml.doc("<p>Required. The day of the week.</p>") @as("DayOfWeek") dayOfWeek: dayOfWeek,
}
@ocaml.doc("<p>Returns a list of all broker users. Does not apply to RabbitMQ brokers.</p>")
type userSummary = {
  @ocaml.doc(
    "<p>Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
  )
  @as("Username")
  username: __string,
  @ocaml.doc("<p>The type of change pending for the broker user.</p>") @as("PendingChange")
  pendingChange: option<changeType>,
}
@ocaml.doc(
  "<p>Returns information about the XML element or attribute that was sanitized in the configuration.</p>"
)
type sanitizationWarning = {
  @ocaml.doc("<p>Required. The reason for which the XML elements or attributes were sanitized.</p>")
  @as("Reason")
  reason: sanitizationWarningReason,
  @ocaml.doc("<p>The name of the XML element that has been sanitized.</p>") @as("ElementName")
  elementName: option<__string>,
  @ocaml.doc("<p>The name of the XML attribute that has been sanitized.</p>") @as("AttributeName")
  attributeName: option<__string>,
}
@ocaml.doc("<p>The list of information about logs to be enabled for the specified broker.</p>")
type pendingLogs = {
  @ocaml.doc("<p>Enables general logging.</p>") @as("General") general: option<__boolean>,
  @ocaml.doc(
    "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>"
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc("<p>The list of information about logs to be enabled for the specified broker.</p>")
type logs = {
  @ocaml.doc("<p>Enables general logging.</p>") @as("General") general: option<__boolean>,
  @ocaml.doc(
    "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.</p>"
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc("<p>Id of the engine version.</p>")
type engineVersion = {@ocaml.doc("<p>Id for the version.</p>") @as("Name") name: option<__string>}
@ocaml.doc(
  "<important><p>Does not apply to RabbitMQ brokers.</p></important> <p>Encryption options for the broker.</p>"
)
type encryptionOptions = {
  @ocaml.doc(
    "<p>Enables the use of an AWS owned CMK using AWS Key Management Service (KMS). Set to true by default, if no value is provided, for example, for RabbitMQ brokers.</p>"
  )
  @as("UseAwsOwnedKey")
  useAwsOwnedKey: __boolean,
  @ocaml.doc(
    "<p>The customer master key (CMK) to use for the AWS Key Management Service (KMS). This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data.</p>"
  )
  @as("KmsKeyId")
  kmsKeyId: option<__string>,
}
@ocaml.doc("<p>Returns information about the specified configuration revision.</p>")
type configurationRevision = {
  @ocaml.doc("<p>Required. The revision number of the configuration.</p>") @as("Revision")
  revision: __integer,
  @ocaml.doc("<p>The description of the configuration revision.</p>") @as("Description")
  description: option<__string>,
  @ocaml.doc("<p>Required. The date and time of the configuration revision.</p>") @as("Created")
  created: __timestampIso8601,
}
@ocaml.doc(
  "<p>A list of information about the configuration.</p> <important><p>Does not apply to RabbitMQ brokers.</p></important>"
)
type configurationId = {
  @ocaml.doc("<p>The revision number of the configuration.</p>") @as("Revision")
  revision: option<__integer>,
  @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
  @as("Id")
  id: __string,
}
@ocaml.doc("<p>Returns information about all brokers.</p>")
type brokerSummary = {
  @ocaml.doc("<p>The broker's instance type.</p>") @as("HostInstanceType")
  hostInstanceType: option<__string>,
  @ocaml.doc("<p>The type of broker engine.</p>") @as("EngineType") engineType: engineType,
  @ocaml.doc("<p>The broker's deployment mode.</p>") @as("DeploymentMode")
  deploymentMode: deploymentMode,
  @ocaml.doc("<p>The time when the broker was created.</p>") @as("Created")
  created: option<__timestampIso8601>,
  @ocaml.doc("<p>The broker's status.</p>") @as("BrokerState") brokerState: option<brokerState>,
  @ocaml.doc(
    "<p>The broker's name. This value is unique in your AWS account, 1-50 characters long, and containing only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>"
  )
  @as("BrokerName")
  brokerName: option<__string>,
  @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
  brokerId: option<__string>,
  @ocaml.doc("<p>The broker's Amazon Resource Name (ARN).</p>") @as("BrokerArn")
  brokerArn: option<__string>,
}
@ocaml.doc("<p>Name of the availability zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>Id for the availability zone.</p>") @as("Name") name: option<__string>,
}
type __listOfUserSummary = array<userSummary>
type __listOfSanitizationWarning = array<sanitizationWarning>
type __listOfEngineVersion = array<engineVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfConfigurationId = array<configurationId>
type __listOfBrokerSummary = array<brokerSummary>
type __listOfAvailabilityZone = array<availabilityZone>
@ocaml.doc(
  "<p>Returns information about the status of the changes pending for the ActiveMQ user.</p>"
)
type userPendingChanges = {
  @ocaml.doc("<p>Required. The type of change pending for the ActiveMQ user.</p>")
  @as("PendingChange")
  pendingChange: changeType,
  @ocaml.doc(
    "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
  )
  @as("Groups")
  groups: option<__listOf__string>,
  @ocaml.doc("<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>")
  @as("ConsoleAccess")
  consoleAccess: option<__boolean>,
}
@ocaml.doc(
  "<p>A user associated with the broker. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>"
)
type user = {
  @ocaml.doc(
    "<p>important><title>Amazon MQ for ActiveMQ</title> <para>For ActiveMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>/important> <important><title>Amazon MQ for RabbitMQ</title> <p>For RabbitMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores (- . _). This value must not contain a tilde (~) character. Amazon MQ prohibts using guest as a valid usename. This value must be 2-100 characters long.</p></important></para>"
  )
  @as("Username")
  username: __string,
  @ocaml.doc(
    "<p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>"
  )
  @as("Password")
  password: __string,
  @ocaml.doc(
    "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long. Does not apply to RabbitMQ brokers.</p>"
  )
  @as("Groups")
  groups: option<__listOf__string>,
  @ocaml.doc(
    "<p>Enables access to the ActiveMQ Web Console for the ActiveMQ user. Does not apply to RabbitMQ brokers.</p>"
  )
  @as("ConsoleAccess")
  consoleAccess: option<__boolean>,
}
@ocaml.doc(
  "<p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>"
)
type logsSummary = {
  @ocaml.doc(
    "<p>The list of information about logs pending to be deployed for the specified broker.</p>"
  )
  @as("Pending")
  pending: option<pendingLogs>,
  @ocaml.doc("<p>The location of the CloudWatch Logs log group where general logs are sent.</p>")
  @as("GeneralLogGroup")
  generalLogGroup: __string,
  @ocaml.doc("<p>Enables general logging.</p>") @as("General") general: __boolean,
  @ocaml.doc("<p>The location of the CloudWatch Logs log group where audit logs are sent.</p>")
  @as("AuditLogGroup")
  auditLogGroup: option<__string>,
  @ocaml.doc(
    "<p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>"
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc(
  "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>"
)
type ldapServerMetadataOutput = {
  @ocaml.doc(
    "<p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>"
  )
  @as("UserSearchSubtree")
  userSearchSubtree: option<__boolean>,
  @ocaml.doc("<p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
               dc=com.</p>")
  @as("UserSearchMatching")
  userSearchMatching: __string,
  @ocaml.doc("<p>Specifies the name of the LDAP attribute for the user group membership.</p>")
  @as("UserRoleName")
  userRoleName: option<__string>,
  @ocaml.doc("<p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
                  dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>")
  @as("UserBase")
  userBase: __string,
  @ocaml.doc("<p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
                  dc=com.</p>")
  @as("ServiceAccountUsername")
  serviceAccountUsername: __string,
  @ocaml.doc(
    "<p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>"
  )
  @as("RoleSearchSubtree")
  roleSearchSubtree: option<__boolean>,
  @ocaml.doc(
    "<p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>"
  )
  @as("RoleSearchMatching")
  roleSearchMatching: __string,
  @ocaml.doc(
    "<p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>"
  )
  @as("RoleName")
  roleName: option<__string>,
  @ocaml.doc("<p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
                  dc=example, dc=com.</p>")
  @as("RoleBase")
  roleBase: __string,
  @ocaml.doc(
    "<p>Specifies the location of the LDAP server such as AWS Directory Service for Microsoft Active Directory . Optional failover server.</p>"
  )
  @as("Hosts")
  hosts: __listOf__string,
}
@ocaml.doc(
  "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p> <important><p>Does not apply to RabbitMQ brokers.</p></important>"
)
type ldapServerMetadataInput = {
  @ocaml.doc(
    "<p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>"
  )
  @as("UserSearchSubtree")
  userSearchSubtree: option<__boolean>,
  @ocaml.doc("<p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
                  dc=com.</p>")
  @as("UserSearchMatching")
  userSearchMatching: __string,
  @ocaml.doc("<p>Specifies the name of the LDAP attribute for the user group membership.</p>")
  @as("UserRoleName")
  userRoleName: option<__string>,
  @ocaml.doc("<p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
                  dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>")
  @as("UserBase")
  userBase: __string,
  @ocaml.doc("<p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
                  dc=com.</p>")
  @as("ServiceAccountUsername")
  serviceAccountUsername: __string,
  @ocaml.doc("<p>Service account password. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
                  dc=com.</p>")
  @as("ServiceAccountPassword")
  serviceAccountPassword: __string,
  @ocaml.doc(
    "<p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>"
  )
  @as("RoleSearchSubtree")
  roleSearchSubtree: option<__boolean>,
  @ocaml.doc(
    "<p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>"
  )
  @as("RoleSearchMatching")
  roleSearchMatching: __string,
  @ocaml.doc(
    "<p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>"
  )
  @as("RoleName")
  roleName: option<__string>,
  @ocaml.doc("<p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
                  dc=example, dc=com.</p>")
  @as("RoleBase")
  roleBase: __string,
  @ocaml.doc(
    "<p>Specifies the location of the LDAP server such as AWS Directory Service for Microsoft Active Directory . Optional failover server.</p>"
  )
  @as("Hosts")
  hosts: __listOf__string,
}
@ocaml.doc("<p>Returns information about all configurations.</p>")
type configuration = {
  @ocaml.doc("<p>The list of all tags associated with this configuration.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc(
    "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>"
  )
  @as("Name")
  name: __string,
  @ocaml.doc("<p>Required. The latest revision of the configuration.</p>") @as("LatestRevision")
  latestRevision: configurationRevision,
  @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
  @as("Id")
  id: __string,
  @ocaml.doc(
    "<p>Required. The broker engine's version. For a list of supported engine versions, see, <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
  )
  @as("EngineVersion")
  engineVersion: __string,
  @ocaml.doc(
    "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>"
  )
  @as("EngineType")
  engineType: engineType,
  @ocaml.doc("<p>Required. The description of the configuration.</p>") @as("Description")
  description: __string,
  @ocaml.doc("<p>Required. The date and time of the configuration revision.</p>") @as("Created")
  created: __timestampIso8601,
  @ocaml.doc(
    "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>"
  )
  @as("AuthenticationStrategy")
  authenticationStrategy: authenticationStrategy,
  @ocaml.doc("<p>Required. The ARN of the configuration.</p>") @as("Arn") arn: __string,
}
@ocaml.doc("<p>Returns information about all brokers.</p>")
type brokerInstance = {
  @ocaml.doc(
    "<p>The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers.</p>"
  )
  @as("IpAddress")
  ipAddress: option<__string>,
  @ocaml.doc("<p>The broker's wire-level protocol endpoints.</p>") @as("Endpoints")
  endpoints: option<__listOf__string>,
  @ocaml.doc("<p>The brokers web console URL.</p>") @as("ConsoleURL") consoleURL: option<__string>,
}
type __listOfUser = array<user>
type __listOfConfiguration = array<configuration>
type __listOfBrokerInstance = array<brokerInstance>
@ocaml.doc("<p>Broker configuration information</p>")
type configurations = {
  @ocaml.doc("<p>The broker's pending configuration.</p>") @as("Pending")
  pending: option<configurationId>,
  @ocaml.doc("<p>The history of configurations applied to the broker.</p>") @as("History")
  history: option<__listOfConfigurationId>,
  @ocaml.doc("<p>The broker's current configuration.</p>") @as("Current")
  current: option<configurationId>,
}
@ocaml.doc("<p>Option for host instance type.</p>")
type brokerInstanceOption = {
  @ocaml.doc("<p>The list of supported engine versions.</p>") @as("SupportedEngineVersions")
  supportedEngineVersions: option<__listOf__string>,
  @ocaml.doc("<p>The list of supported deployment modes.</p>") @as("SupportedDeploymentModes")
  supportedDeploymentModes: option<__listOfDeploymentMode>,
  @ocaml.doc("<p>The broker's storage type.</p>") @as("StorageType")
  storageType: option<brokerStorageType>,
  @ocaml.doc("<p>The broker's instance type.</p>") @as("HostInstanceType")
  hostInstanceType: option<__string>,
  @ocaml.doc("<p>The broker's engine type.</p>") @as("EngineType") engineType: option<engineType>,
  @ocaml.doc("<p>The list of available az.</p>") @as("AvailabilityZones")
  availabilityZones: option<__listOfAvailabilityZone>,
}
@ocaml.doc("<p>Types of broker engines.</p>")
type brokerEngineType = {
  @ocaml.doc("<p>The list of engine versions.</p>") @as("EngineVersions")
  engineVersions: option<__listOfEngineVersion>,
  @ocaml.doc("<p>The broker's engine type.</p>") @as("EngineType") engineType: option<engineType>,
}
type __listOfBrokerInstanceOption = array<brokerInstanceOption>
type __listOfBrokerEngineType = array<brokerEngineType>
@ocaml.doc(
  "<p>Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.</p>"
)
module RebootBroker = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "RebootBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeConfigurationRevision = {
  type t
  type request = {
    @ocaml.doc("<p>The revision of the configuration.</p>") @as("ConfigurationRevision")
    configurationRevision: __string,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>Required. The base64-encoded XML configuration.</p>") @as("Data")
    data: option<__string>,
    @ocaml.doc("<p>Required. The date and time of the configuration.</p>") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new
  external new: request => t = "DescribeConfigurationRevisionCommand"
  let make = (~configurationRevision, ~configurationId, ()) =>
    new({configurationRevision, configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Username")
    username: __string,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteUserCommand"
  let make = (~username, ~brokerId, ()) => new({username, brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBroker = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateUser = {
  type t
  @ocaml.doc("<p>Updates the information for an ActiveMQ user.</p>")
  type request = {
    @ocaml.doc(
      "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Username")
    username: __string,
    @ocaml.doc(
      "<p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>"
    )
    @as("Password")
    password: option<__string>,
    @ocaml.doc(
      "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateUserCommand"
  let make = (~username, ~brokerId, ~password=?, ~groups=?, ~consoleAccess=?, ()) =>
    new({username, password, groups, consoleAccess, brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource tag.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The key-value pair for the resource tag.</p>") @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags associated with this configuration.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("<p>Required. The latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("Id")
    id: option<__string>,
    @ocaml.doc(
      "<p>Required. The broker engine's version. For a list of supported engine versions, see, <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>"
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("<p>Required. The description of the configuration.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>Required. The date and time of the configuration revision.</p>") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("<p>Required. The ARN of the configuration.</p>") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeConfigurationCommand"
  let make = (~configurationId, ()) => new({configurationId: configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTags = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag keys to delete</p>") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource tag.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateUser = {
  type t
  @ocaml.doc("<p>Creates a new ActiveMQ user.</p>")
  type request = {
    @ocaml.doc(
      "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Username")
    username: __string,
    @ocaml.doc(
      "<p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>"
    )
    @as("Password")
    password: __string,
    @ocaml.doc(
      "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("<p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateUserCommand"
  let make = (~username, ~password, ~brokerId, ~groups=?, ~consoleAccess=?, ()) =>
    new({username, password, groups, consoleAccess, brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateTags = {
  type t
  @ocaml.doc("<p>A map of the key-value pairs for the resource tag.</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair for the resource tag.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource tag.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateTagsCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateConfiguration = {
  type t
  @ocaml.doc(
    "<p>Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).</p>"
  )
  type request = {
    @ocaml.doc("<p>Create tags when creating the configuration.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>"
    )
    @as("Name")
    name: __string,
    @ocaml.doc(
      "<p>Required. The broker engine's version. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: __string,
    @ocaml.doc(
      "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>"
    )
    @as("EngineType")
    engineType: engineType,
    @ocaml.doc(
      "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc(
      "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("<p>The latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("Id")
    id: option<__string>,
    @ocaml.doc("<p>Required. The date and time of the configuration.</p>") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc(
      "<p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("<p>Required. The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateConfigurationCommand"
  let make = (~name, ~engineVersion, ~engineType, ~tags=?, ~authenticationStrategy=?, ()) =>
    new({tags, name, engineVersion, engineType, authenticationStrategy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConfiguration = {
  type t
  @ocaml.doc("<p>Updates the specified configuration.</p>")
  type request = {
    @ocaml.doc("<p>The description of the configuration.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>Required. The base64-encoded XML configuration.</p>") @as("Data") data: __string,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized.</p>"
    )
    @as("Warnings")
    warnings: option<__listOfSanitizationWarning>,
    @ocaml.doc(
      "<p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("<p>The latest revision of the configuration.</p>") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("Id")
    id: option<__string>,
    @ocaml.doc("<p>Required. The date and time of the configuration.</p>") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("<p>Required. The Amazon Resource Name (ARN) of the configuration.</p>") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateConfigurationCommand"
  let make = (~data, ~configurationId, ~description=?, ()) =>
    new({description, data, configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBroker = {
  type t
  @ocaml.doc("<p>Updates the broker using the specified properties.</p>")
  type request = {
    @ocaml.doc(
      "<p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>"
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc("<p>The parameters that determine the WeeklyStartTime.</p>")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc("<p>Enables Amazon CloudWatch logging for brokers.</p>") @as("Logs")
    logs: option<logs>,
    @ocaml.doc(
      "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>"
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataInput>,
    @ocaml.doc(
      "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>"
    )
    @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "<p>The broker engine version. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc("<p>A list of information about the configuration.</p>") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
    @ocaml.doc(
      "<p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc(
      "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc(
      "<p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>"
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc("<p>The parameters that determine the WeeklyStartTime.</p>")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc("<p>The list of information about logs to be enabled for the specified broker.</p>")
    @as("Logs")
    logs: option<logs>,
    @ocaml.doc(
      "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>"
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc(
      "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>"
    )
    @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "<p>The broker engine version to upgrade to. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc("<p>The ID of the updated configuration.</p>") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the broker.</p>")
    @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc(
      "<p>The new boolean value that specifies whether broker engines automatically upgrade to new minor versions as new versions are released and supported by Amazon MQ.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc(
      "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateBrokerCommand"
  let make = (
    ~brokerId,
    ~securityGroups=?,
    ~maintenanceWindowStartTime=?,
    ~logs=?,
    ~ldapServerMetadata=?,
    ~hostInstanceType=?,
    ~engineVersion=?,
    ~configuration=?,
    ~autoMinorVersionUpgrade=?,
    ~authenticationStrategy=?,
    (),
  ) =>
    new({
      securityGroups,
      maintenanceWindowStartTime,
      logs,
      ldapServerMetadata,
      hostInstanceType,
      engineVersion,
      configuration,
      brokerId,
      autoMinorVersionUpgrade,
      authenticationStrategy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>Required. The list of all ActiveMQ usernames for the specified broker. Does not apply to RabbitMQ brokers.</p>"
    )
    @as("Users")
    users: option<__listOfUserSummary>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the broker.</p>")
    @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListUsersCommand"
  let make = (~brokerId, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConfigurationRevisions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("<p>The list of all revisions for the specified configuration.</p>") @as("Revisions")
    revisions: option<__listOfConfigurationRevision>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integer>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the configuration.</p>")
    @as("ConfigurationId")
    configurationId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new
  external new: request => t = "ListConfigurationRevisionsCommand"
  let make = (~configurationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBrokers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of information about all brokers.</p>") @as("BrokerSummaries")
    brokerSummaries: option<__listOfBrokerSummary>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListBrokersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Username")
    username: __string,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc(
      "<p>Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Username")
    username: option<__string>,
    @ocaml.doc("<p>The status of the changes pending for the ActiveMQ user.</p>") @as("Pending")
    pending: option<userPendingChanges>,
    @ocaml.doc(
      "<p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>"
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("<p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("<p>Required. The unique ID that Amazon MQ generates for the broker.</p>")
    @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeUserCommand"
  let make = (~username, ~brokerId, ()) => new({username, brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integer>,
    @ocaml.doc("<p>The list of all revisions for the specified configuration.</p>")
    @as("Configurations")
    configurations: option<__listOfConfiguration>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBroker = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc("<p>The list of all broker usernames for the specified broker.</p>") @as("Users")
    users: option<__listOfUserSummary>,
    @ocaml.doc("<p>The list of all tags associated with this broker.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones.</p>"
    )
    @as("SubnetIds")
    subnetIds: option<__listOf__string>,
    @ocaml.doc("<p>The broker's storage type.</p>") @as("StorageType")
    storageType: option<brokerStorageType>,
    @ocaml.doc(
      "<p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>"
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc(
      "<p>Enables connections from applications outside of the VPC that hosts the broker's subnets.</p>"
    )
    @as("PubliclyAccessible")
    publiclyAccessible: option<__boolean>,
    @ocaml.doc("<p>The list of pending security groups to authorize connections to brokers.</p>")
    @as("PendingSecurityGroups")
    pendingSecurityGroups: option<__listOf__string>,
    @ocaml.doc(
      "<p>The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker after it is rebooted.</p>"
    )
    @as("PendingLdapServerMetadata")
    pendingLdapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc(
      "<p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types\">Broker instance types</a>.</p>"
    )
    @as("PendingHostInstanceType")
    pendingHostInstanceType: option<__string>,
    @ocaml.doc(
      "<p>The broker engine version to upgrade to. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("PendingEngineVersion")
    pendingEngineVersion: option<__string>,
    @ocaml.doc(
      "<p>The authentication strategy that will be applied when the broker is rebooted. The default is SIMPLE.</p>"
    )
    @as("PendingAuthenticationStrategy")
    pendingAuthenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("<p>The parameters that determine the WeeklyStartTime.</p>")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc(
      "<p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>"
    )
    @as("Logs")
    logs: option<logsSummary>,
    @ocaml.doc(
      "<p>The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>"
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc("<p>The broker's instance type.</p>") @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "<p>The broker engine's version. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "<p>The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>"
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("<p>Encryption options for the broker. Does not apply to RabbitMQ brokers.</p>")
    @as("EncryptionOptions")
    encryptionOptions: option<encryptionOptions>,
    @ocaml.doc("<p>The broker's deployment mode.</p>") @as("DeploymentMode")
    deploymentMode: option<deploymentMode>,
    @ocaml.doc("<p>The time when the broker was created.</p>") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("<p>The list of all revisions for the specified configuration.</p>")
    @as("Configurations")
    configurations: option<configurations>,
    @ocaml.doc("<p>The broker's status.</p>") @as("BrokerState") brokerState: option<brokerState>,
    @ocaml.doc(
      "<p>The broker's name. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>"
    )
    @as("BrokerName")
    brokerName: option<__string>,
    @ocaml.doc("<p>A list of information about allocated brokers.</p>") @as("BrokerInstances")
    brokerInstances: option<__listOfBrokerInstance>,
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc("<p>The broker's Amazon Resource Name (ARN).</p>") @as("BrokerArn")
    brokerArn: option<__string>,
    @ocaml.doc(
      "<p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc(
      "<p>The authentication strategy used to secure the broker. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBroker = {
  type t
  @ocaml.doc("<p>Creates a broker using the specified properties.</p>")
  type request = {
    @ocaml.doc(
      "<p>Required. The list of broker users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p> <important><title>Amazon MQ for RabbitMQ</title> <p>When you create an Amazon MQ for RabbitMQ broker, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p></important>"
    )
    @as("Users")
    users: __listOfUser,
    @ocaml.doc("<p>Create tags when creating the broker.</p>") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "<p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html\">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your AWS account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your AWS account.</p></important>"
    )
    @as("SubnetIds")
    subnetIds: option<__listOf__string>,
    @ocaml.doc("<p>The broker's storage type.</p>") @as("StorageType")
    storageType: option<brokerStorageType>,
    @ocaml.doc(
      "<p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>"
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc(
      "<p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>"
    )
    @as("PubliclyAccessible")
    publiclyAccessible: __boolean,
    @ocaml.doc("<p>The parameters that determine the WeeklyStartTime.</p>")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc("<p>Enables Amazon CloudWatch logging for brokers.</p>") @as("Logs")
    logs: option<logs>,
    @ocaml.doc(
      "<p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>"
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataInput>,
    @ocaml.doc("<p>Required. The broker's instance type.</p>") @as("HostInstanceType")
    hostInstanceType: __string,
    @ocaml.doc(
      "<p>Required. The broker engine's version. For a list of supported engine versions, see <a href=\"https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html\">Supported engines</a>.</p>"
    )
    @as("EngineVersion")
    engineVersion: __string,
    @ocaml.doc(
      "<p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>"
    )
    @as("EngineType")
    engineType: engineType,
    @ocaml.doc("<p>Encryption options for the broker. Does not apply to RabbitMQ brokers.</p>")
    @as("EncryptionOptions")
    encryptionOptions: option<encryptionOptions>,
    @ocaml.doc("<p>Required. The broker's deployment mode.</p>") @as("DeploymentMode")
    deploymentMode: deploymentMode,
    @ocaml.doc(
      "<p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p>"
    )
    @as("CreatorRequestId")
    creatorRequestId: option<__string>,
    @ocaml.doc("<p>A list of information about the configuration.</p>") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc(
      "<p>Required. The broker's name. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>"
    )
    @as("BrokerName")
    brokerName: __string,
    @ocaml.doc(
      "<p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot. Set to true by default, if no value is specified.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: __boolean,
    @ocaml.doc(
      "<p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>"
    )
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc("<p>The unique ID that Amazon MQ generates for the broker.</p>") @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc("<p>The broker's Amazon Resource Name (ARN).</p>") @as("BrokerArn")
    brokerArn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateBrokerCommand"
  let make = (
    ~users,
    ~publiclyAccessible,
    ~hostInstanceType,
    ~engineVersion,
    ~engineType,
    ~deploymentMode,
    ~brokerName,
    ~autoMinorVersionUpgrade,
    ~tags=?,
    ~subnetIds=?,
    ~storageType=?,
    ~securityGroups=?,
    ~maintenanceWindowStartTime=?,
    ~logs=?,
    ~ldapServerMetadata=?,
    ~encryptionOptions=?,
    ~creatorRequestId=?,
    ~configuration=?,
    ~authenticationStrategy=?,
    (),
  ) =>
    new({
      users,
      tags,
      subnetIds,
      storageType,
      securityGroups,
      publiclyAccessible,
      maintenanceWindowStartTime,
      logs,
      ldapServerMetadata,
      hostInstanceType,
      engineVersion,
      engineType,
      encryptionOptions,
      deploymentMode,
      creatorRequestId,
      configuration,
      brokerName,
      autoMinorVersionUpgrade,
      authenticationStrategy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBrokerInstanceOptions = {
  type t
  type request = {
    @ocaml.doc("<p>Filter response by storage type.</p>") @as("StorageType")
    storageType: option<__string>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filter response by host instance type.</p>") @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc("<p>Filter response by engine type.</p>") @as("EngineType")
    engineType: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("<p>List of available broker instance options.</p>") @as("BrokerInstanceOptions")
    brokerInstanceOptions: option<__listOfBrokerInstanceOption>,
  }
  @module("@aws-sdk/client-mq") @new
  external new: request => t = "DescribeBrokerInstanceOptionsCommand"
  let make = (
    ~storageType=?,
    ~nextToken=?,
    ~maxResults=?,
    ~hostInstanceType=?,
    ~engineType=?,
    (),
  ) => new({storageType, nextToken, maxResults, hostInstanceType, engineType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBrokerEngineTypes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filter response by engine type.</p>") @as("EngineType")
    engineType: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>Required. The maximum number of engine types that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("<p>List of available engine types and versions.</p>") @as("BrokerEngineTypes")
    brokerEngineTypes: option<__listOfBrokerEngineType>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeBrokerEngineTypesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~engineType=?, ()) =>
    new({nextToken, maxResults, engineType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
