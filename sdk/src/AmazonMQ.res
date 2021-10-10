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
@ocaml.doc("The reason for which the XML elements or attributes were sanitized.")
type sanitizationWarningReason = [
  | @as("INVALID_ATTRIBUTE_VALUE_REMOVED") #INVALID_ATTRIBUTE_VALUE_REMOVED
  | @as("DISALLOWED_ATTRIBUTE_REMOVED") #DISALLOWED_ATTRIBUTE_REMOVED
  | @as("DISALLOWED_ELEMENT_REMOVED") #DISALLOWED_ELEMENT_REMOVED
]
type maxResults = int
@ocaml.doc("The type of broker engine. Note: Currently, Amazon MQ supports ActiveMQ and RabbitMQ.")
type engineType = [@as("RABBITMQ") #RABBITMQ | @as("ACTIVEMQ") #ACTIVEMQ]
@ocaml.doc("The deployment mode of the broker.")
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
@ocaml.doc("The type of change pending for the ActiveMQ user.")
type changeType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
@ocaml.doc(
  "The broker's storage type. <important>EFS is currently not Supported for RabbitMQ engine type.</important>"
)
type brokerStorageType = [@as("EFS") #EFS | @as("EBS") #EBS]
@ocaml.doc("The status of the broker.")
type brokerState = [
  | @as("REBOOT_IN_PROGRESS") #REBOOT_IN_PROGRESS
  | @as("RUNNING") #RUNNING
  | @as("DELETION_IN_PROGRESS") #DELETION_IN_PROGRESS
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS
]
@ocaml.doc("The authentication strategy used to secure the broker.")
type authenticationStrategy = [@as("LDAP") #LDAP | @as("SIMPLE") #SIMPLE]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type __listOfDeploymentMode = array<deploymentMode>
@ocaml.doc(
  "The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker."
)
type weeklyStartTime = {
  @ocaml.doc(
    "The time zone, UTC by default, in either the Country/City format, or the UTC offset format."
  )
  @as("TimeZone")
  timeZone: option<__string>,
  @ocaml.doc("Required. The time, in 24-hour format.") @as("TimeOfDay") timeOfDay: option<__string>,
  @ocaml.doc("Required. The day of the week.") @as("DayOfWeek") dayOfWeek: option<dayOfWeek>,
}
@ocaml.doc("Returns a list of all broker users.")
type userSummary = {
  @ocaml.doc(
    "Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
  )
  @as("Username")
  username: option<__string>,
  @ocaml.doc("The type of change pending for the broker user.") @as("PendingChange")
  pendingChange: option<changeType>,
}
@ocaml.doc(
  "Returns information about the XML element or attribute that was sanitized in the configuration."
)
type sanitizationWarning = {
  @ocaml.doc("Required. The reason for which the XML elements or attributes were sanitized.")
  @as("Reason")
  reason: option<sanitizationWarningReason>,
  @ocaml.doc("The name of the XML element that has been sanitized.") @as("ElementName")
  elementName: option<__string>,
  @ocaml.doc("The name of the XML attribute that has been sanitized.") @as("AttributeName")
  attributeName: option<__string>,
}
@ocaml.doc("The list of information about logs to be enabled for the specified broker.")
type pendingLogs = {
  @ocaml.doc("Enables general logging.") @as("General") general: option<__boolean>,
  @ocaml.doc(
    "Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged."
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc("The list of information about logs to be enabled for the specified broker.")
type logs = {
  @ocaml.doc("Enables general logging.") @as("General") general: option<__boolean>,
  @ocaml.doc(
    "Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers."
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc("Id of the engine version.")
type engineVersion = {@ocaml.doc("Id for the version.") @as("Name") name: option<__string>}
@ocaml.doc("Encryption options for the broker.")
type encryptionOptions = {
  @ocaml.doc("Enables the use of an AWS owned CMK using AWS Key Management Service (KMS).")
  @as("UseAwsOwnedKey")
  useAwsOwnedKey: __boolean,
  @ocaml.doc(
    "The symmetric customer master key (CMK) to use for the AWS Key Management Service (KMS). This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data."
  )
  @as("KmsKeyId")
  kmsKeyId: option<__string>,
}
@ocaml.doc("Returns information about the specified configuration revision.")
type configurationRevision = {
  @ocaml.doc("Required. The revision number of the configuration.") @as("Revision")
  revision: option<__integer>,
  @ocaml.doc("The description of the configuration revision.") @as("Description")
  description: option<__string>,
  @ocaml.doc("Required. The date and time of the configuration revision.") @as("Created")
  created: option<__timestampIso8601>,
}
@ocaml.doc(
  "A list of information about the configuration. <important>Does not apply to RabbitMQ brokers.</important>"
)
type configurationId = {
  @ocaml.doc("The revision number of the configuration.") @as("Revision")
  revision: option<__integer>,
  @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.") @as("Id")
  id: option<__string>,
}
@ocaml.doc("The Amazon Resource Name (ARN) of the broker.")
type brokerSummary = {
  @ocaml.doc("The broker's instance type.") @as("HostInstanceType")
  hostInstanceType: option<__string>,
  @ocaml.doc("Required. The type of broker engine.") @as("EngineType")
  engineType: option<engineType>,
  @ocaml.doc("Required. The deployment mode of the broker.") @as("DeploymentMode")
  deploymentMode: option<deploymentMode>,
  @ocaml.doc("The time when the broker was created.") @as("Created")
  created: option<__timestampIso8601>,
  @ocaml.doc("The status of the broker.") @as("BrokerState") brokerState: option<brokerState>,
  @ocaml.doc(
    "The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters."
  )
  @as("BrokerName")
  brokerName: option<__string>,
  @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
  brokerId: option<__string>,
  @ocaml.doc("The Amazon Resource Name (ARN) of the broker.") @as("BrokerArn")
  brokerArn: option<__string>,
}
@ocaml.doc("Name of the availability zone.")
type availabilityZone = {
  @ocaml.doc("Id for the availability zone.") @as("Name") name: option<__string>,
}
type __listOfUserSummary = array<userSummary>
type __listOfSanitizationWarning = array<sanitizationWarning>
type __listOfEngineVersion = array<engineVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfConfigurationId = array<configurationId>
type __listOfBrokerSummary = array<brokerSummary>
type __listOfAvailabilityZone = array<availabilityZone>
@ocaml.doc("Returns information about the status of the changes pending for the ActiveMQ user.")
type userPendingChanges = {
  @ocaml.doc("Required. The type of change pending for the ActiveMQ user.") @as("PendingChange")
  pendingChange: option<changeType>,
  @ocaml.doc(
    "The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
  )
  @as("Groups")
  groups: option<__listOf__string>,
  @ocaml.doc("Enables access to the the ActiveMQ Web Console for the ActiveMQ user.")
  @as("ConsoleAccess")
  consoleAccess: option<__boolean>,
}
@ocaml.doc("A user associated with the broker.")
type user = {
  @ocaml.doc(
    "Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
  )
  @as("Username")
  username: option<__string>,
  @ocaml.doc(
    "Required. The password of the broker user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas."
  )
  @as("Password")
  password: option<__string>,
  @ocaml.doc(
    "The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
  )
  @as("Groups")
  groups: option<__listOf__string>,
  @ocaml.doc(
    "Enables access to the ActiveMQ Web Console for the ActiveMQ user (Does not apply to RabbitMQ brokers)."
  )
  @as("ConsoleAccess")
  consoleAccess: option<__boolean>,
}
@ocaml.doc(
  "The list of information about logs currently enabled and pending to be deployed for the specified broker."
)
type logsSummary = {
  @ocaml.doc("The list of information about logs pending to be deployed for the specified broker.")
  @as("Pending")
  pending: option<pendingLogs>,
  @ocaml.doc("The location of the CloudWatch Logs log group where general logs are sent.")
  @as("GeneralLogGroup")
  generalLogGroup: option<__string>,
  @ocaml.doc("Enables general logging.") @as("General") general: option<__boolean>,
  @ocaml.doc("The location of the CloudWatch Logs log group where audit logs are sent.")
  @as("AuditLogGroup")
  auditLogGroup: option<__string>,
  @ocaml.doc(
    "Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged."
  )
  @as("Audit")
  audit: option<__boolean>,
}
@ocaml.doc(
  "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
)
type ldapServerMetadataOutput = {
  @ocaml.doc(
    "The directory search scope for the user. If set to true, scope is to search the entire sub-tree."
  )
  @as("UserSearchSubtree")
  userSearchSubtree: option<__boolean>,
  @ocaml.doc("The search criteria for users.") @as("UserSearchMatching")
  userSearchMatching: option<__string>,
  @ocaml.doc("Specifies the name of the LDAP attribute for the user group membership.")
  @as("UserRoleName")
  userRoleName: option<__string>,
  @ocaml.doc("Fully qualified name of the directory where you want to search for users.")
  @as("UserBase")
  userBase: option<__string>,
  @ocaml.doc("Service account username.") @as("ServiceAccountUsername")
  serviceAccountUsername: option<__string>,
  @ocaml.doc(
    "The directory search scope for the role. If set to true, scope is to search the entire sub-tree."
  )
  @as("RoleSearchSubtree")
  roleSearchSubtree: option<__boolean>,
  @ocaml.doc("The search criteria for groups.") @as("RoleSearchMatching")
  roleSearchMatching: option<__string>,
  @ocaml.doc(
    "Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query."
  )
  @as("RoleName")
  roleName: option<__string>,
  @ocaml.doc("Fully qualified name of the directory to search for a user’s groups.")
  @as("RoleBase")
  roleBase: option<__string>,
  @ocaml.doc("Fully qualified domain name of the LDAP server. Optional failover server.")
  @as("Hosts")
  hosts: option<__listOf__string>,
}
@ocaml.doc(
  "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
)
type ldapServerMetadataInput = {
  @ocaml.doc(
    "The directory search scope for the user. If set to true, scope is to search the entire sub-tree."
  )
  @as("UserSearchSubtree")
  userSearchSubtree: option<__boolean>,
  @ocaml.doc("The search criteria for users.") @as("UserSearchMatching")
  userSearchMatching: option<__string>,
  @ocaml.doc("Specifies the name of the LDAP attribute for the user group membership.")
  @as("UserRoleName")
  userRoleName: option<__string>,
  @ocaml.doc("Fully qualified name of the directory where you want to search for users.")
  @as("UserBase")
  userBase: option<__string>,
  @ocaml.doc("Service account username.") @as("ServiceAccountUsername")
  serviceAccountUsername: option<__string>,
  @ocaml.doc("Service account password.") @as("ServiceAccountPassword")
  serviceAccountPassword: option<__string>,
  @ocaml.doc(
    "The directory search scope for the role. If set to true, scope is to search the entire sub-tree."
  )
  @as("RoleSearchSubtree")
  roleSearchSubtree: option<__boolean>,
  @ocaml.doc("The search criteria for groups.") @as("RoleSearchMatching")
  roleSearchMatching: option<__string>,
  @ocaml.doc(
    "Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query."
  )
  @as("RoleName")
  roleName: option<__string>,
  @ocaml.doc("Fully qualified name of the directory to search for a user’s groups.")
  @as("RoleBase")
  roleBase: option<__string>,
  @ocaml.doc("Fully qualified domain name of the LDAP server. Optional failover server.")
  @as("Hosts")
  hosts: option<__listOf__string>,
}
@ocaml.doc("Returns information about all configurations.")
type configuration = {
  @ocaml.doc("The list of all tags associated with this configuration.") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc(
    "Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long."
  )
  @as("Name")
  name: option<__string>,
  @ocaml.doc("Required. The latest revision of the configuration.") @as("LatestRevision")
  latestRevision: option<configurationRevision>,
  @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.") @as("Id")
  id: option<__string>,
  @ocaml.doc(
    "Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
  )
  @as("EngineVersion")
  engineVersion: option<__string>,
  @ocaml.doc(
    "Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ."
  )
  @as("EngineType")
  engineType: option<engineType>,
  @ocaml.doc("Required. The description of the configuration.") @as("Description")
  description: option<__string>,
  @ocaml.doc("Required. The date and time of the configuration revision.") @as("Created")
  created: option<__timestampIso8601>,
  @ocaml.doc("The authentication strategy associated with the configuration.")
  @as("AuthenticationStrategy")
  authenticationStrategy: option<authenticationStrategy>,
  @ocaml.doc("Required. The ARN of the configuration.") @as("Arn") arn: option<__string>,
}
@ocaml.doc("Returns information about all brokers.")
type brokerInstance = {
  @ocaml.doc(
    "The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers"
  )
  @as("IpAddress")
  ipAddress: option<__string>,
  @ocaml.doc("The broker's wire-level protocol endpoints.") @as("Endpoints")
  endpoints: option<__listOf__string>,
  @ocaml.doc("The URL of the broker's Web Console.") @as("ConsoleURL") consoleURL: option<__string>,
}
type __listOfUser = array<user>
type __listOfConfiguration = array<configuration>
type __listOfBrokerInstance = array<brokerInstance>
@ocaml.doc("Broker configuration information")
type configurations = {
  @ocaml.doc("The pending configuration of the broker.") @as("Pending")
  pending: option<configurationId>,
  @ocaml.doc("The history of configurations applied to the broker.") @as("History")
  history: option<__listOfConfigurationId>,
  @ocaml.doc("The current configuration of the broker.") @as("Current")
  current: option<configurationId>,
}
@ocaml.doc("Option for host instance type.")
type brokerInstanceOption = {
  @ocaml.doc("The list of supported engine versions.") @as("SupportedEngineVersions")
  supportedEngineVersions: option<__listOf__string>,
  @ocaml.doc("The list of supported deployment modes.") @as("SupportedDeploymentModes")
  supportedDeploymentModes: option<__listOfDeploymentMode>,
  @ocaml.doc("The broker's storage type.") @as("StorageType")
  storageType: option<brokerStorageType>,
  @ocaml.doc("The type of broker instance.") @as("HostInstanceType")
  hostInstanceType: option<__string>,
  @ocaml.doc("The type of broker engine.") @as("EngineType") engineType: option<engineType>,
  @ocaml.doc("The list of available az.") @as("AvailabilityZones")
  availabilityZones: option<__listOfAvailabilityZone>,
}
@ocaml.doc("Types of broker engines.")
type brokerEngineType = {
  @ocaml.doc("The list of engine versions.") @as("EngineVersions")
  engineVersions: option<__listOfEngineVersion>,
  @ocaml.doc("The type of broker engine.") @as("EngineType") engineType: option<engineType>,
}
type __listOfBrokerInstanceOption = array<brokerInstanceOption>
type __listOfBrokerEngineType = array<brokerEngineType>
@ocaml.doc(
  "Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols."
)
module RebootBroker = {
  type t
  type request = {
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "RebootBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeConfigurationRevision = {
  type t
  type request = {
    @ocaml.doc("The revision of the configuration.") @as("ConfigurationRevision")
    configurationRevision: __string,
    @ocaml.doc("The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("The description of the configuration.") @as("Description")
    description: option<__string>,
    @ocaml.doc("Required. The base64-encoded XML configuration.") @as("Data")
    data: option<__string>,
    @ocaml.doc("Required. The date and time of the configuration.") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new
  external new: request => t = "DescribeConfigurationRevisionCommand"
  let make = (~configurationRevision, ~configurationId, ()) =>
    new({configurationRevision: configurationRevision, configurationId: configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc(
      "The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Username")
    username: __string,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteUserCommand"
  let make = (~username, ~brokerId, ()) => new({username: username, brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBroker = {
  type t
  type request = {
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUser = {
  type t
  @ocaml.doc("Updates the information for an ActiveMQ user.")
  type request = {
    @ocaml.doc(
      "Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Username")
    username: __string,
    @ocaml.doc(
      "The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas."
    )
    @as("Password")
    password: option<__string>,
    @ocaml.doc(
      "The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("Enables access to the the ActiveMQ Web Console for the ActiveMQ user.")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateUserCommand"
  let make = (~username, ~brokerId, ~password=?, ~groups=?, ~consoleAccess=?, ()) =>
    new({
      username: username,
      password: password,
      groups: groups,
      consoleAccess: consoleAccess,
      brokerId: brokerId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource tag.") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("The key-value pair for the resource tag.") @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfiguration = {
  type t
  type request = {
    @ocaml.doc("The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("The list of all tags associated with this configuration.") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long."
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("Required. The latest revision of the configuration.") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.") @as("Id")
    id: option<__string>,
    @ocaml.doc(
      "Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ."
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("Required. The description of the configuration.") @as("Description")
    description: option<__string>,
    @ocaml.doc("Required. The date and time of the configuration revision.") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("The authentication strategy associated with the configuration.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("Required. The ARN of the configuration.") @as("Arn") arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeConfigurationCommand"
  let make = (~configurationId, ()) => new({configurationId: configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @ocaml.doc("An array of tag keys to delete") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource tag.") @as("ResourceArn")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateUser = {
  type t
  @ocaml.doc("Creates a new ActiveMQ user.")
  type request = {
    @ocaml.doc(
      "The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Username")
    username: __string,
    @ocaml.doc(
      "Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas."
    )
    @as("Password")
    password: option<__string>,
    @ocaml.doc(
      "The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("Enables access to the the ActiveMQ Web Console for the ActiveMQ user.")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateUserCommand"
  let make = (~username, ~brokerId, ~password=?, ~groups=?, ~consoleAccess=?, ()) =>
    new({
      username: username,
      password: password,
      groups: groups,
      consoleAccess: consoleAccess,
      brokerId: brokerId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateTags = {
  type t
  @ocaml.doc("A map of the key-value pairs for the resource tag.")
  type request = {
    @ocaml.doc("The key-value pair for the resource tag.") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the resource tag.") @as("ResourceArn")
    resourceArn: __string,
  }

  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateTagsCommand"
  let make = (~resourceArn, ~tags=?, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateConfiguration = {
  type t
  @ocaml.doc(
    "Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version)."
  )
  type request = {
    @ocaml.doc("Create tags when creating the configuration.") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long."
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ."
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("The authentication strategy associated with the configuration.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc(
      "Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long."
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("The latest revision of the configuration.") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.") @as("Id")
    id: option<__string>,
    @ocaml.doc("Required. The date and time of the configuration.") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("The authentication strategy associated with the configuration.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("Required. The Amazon Resource Name (ARN) of the configuration.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateConfigurationCommand"
  let make = (~tags=?, ~name=?, ~engineVersion=?, ~engineType=?, ~authenticationStrategy=?, ()) =>
    new({
      tags: tags,
      name: name,
      engineVersion: engineVersion,
      engineType: engineType,
      authenticationStrategy: authenticationStrategy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConfiguration = {
  type t
  @ocaml.doc("Updates the specified configuration.")
  type request = {
    @ocaml.doc("The description of the configuration.") @as("Description")
    description: option<__string>,
    @ocaml.doc("Required. The base64-encoded XML configuration.") @as("Data")
    data: option<__string>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc(
      "The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized."
    )
    @as("Warnings")
    warnings: option<__listOfSanitizationWarning>,
    @ocaml.doc(
      "Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long."
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc("The latest revision of the configuration.") @as("LatestRevision")
    latestRevision: option<configurationRevision>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the configuration.") @as("Id")
    id: option<__string>,
    @ocaml.doc("Required. The date and time of the configuration.") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("Required. The Amazon Resource Name (ARN) of the configuration.") @as("Arn")
    arn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateConfigurationCommand"
  let make = (~configurationId, ~description=?, ~data=?, ()) =>
    new({description: description, data: data, configurationId: configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBroker = {
  type t
  @ocaml.doc("Updates the broker using the specified properties.")
  type request = {
    @ocaml.doc(
      "The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers."
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc("Enables Amazon CloudWatch logging for brokers.") @as("Logs") logs: option<logs>,
    @ocaml.doc(
      "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataInput>,
    @ocaml.doc(
      "The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types"
    )
    @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc("A list of information about the configuration.") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
    @ocaml.doc(
      "Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot."
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc("The authentication strategy used to secure the broker.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc(
      "The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers."
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc("The list of information about logs to be enabled for the specified broker.")
    @as("Logs")
    logs: option<logs>,
    @ocaml.doc(
      "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc(
      "The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types"
    )
    @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc("The ID of the updated configuration.") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc("The new value of automatic upgrades to new minor version for brokers.")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc("The authentication strategy used to secure the broker.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "UpdateBrokerCommand"
  let make = (
    ~brokerId,
    ~securityGroups=?,
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
      securityGroups: securityGroups,
      logs: logs,
      ldapServerMetadata: ldapServerMetadata,
      hostInstanceType: hostInstanceType,
      engineVersion: engineVersion,
      configuration: configuration,
      brokerId: brokerId,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      authenticationStrategy: authenticationStrategy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc("Required. The list of all ActiveMQ usernames for the specified broker.")
    @as("Users")
    users: option<__listOfUserSummary>,
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListUsersCommand"
  let make = (~brokerId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurationRevisions = {
  type t
  type request = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: __string,
  }
  type response = {
    @ocaml.doc("The list of all revisions for the specified configuration.") @as("Revisions")
    revisions: option<__listOfConfigurationRevision>,
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<__integer>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the configuration.")
    @as("ConfigurationId")
    configurationId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new
  external new: request => t = "ListConfigurationRevisionsCommand"
  let make = (~configurationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, configurationId: configurationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBrokers = {
  type t
  type request = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of information about all brokers.") @as("BrokerSummaries")
    brokerSummaries: option<__listOfBrokerSummary>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListBrokersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc(
      "The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Username")
    username: __string,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc(
      "Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Username")
    username: option<__string>,
    @ocaml.doc("The status of the changes pending for the ActiveMQ user.") @as("Pending")
    pending: option<userPendingChanges>,
    @ocaml.doc(
      "The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Groups")
    groups: option<__listOf__string>,
    @ocaml.doc("Enables access to the the ActiveMQ Web Console for the ActiveMQ user.")
    @as("ConsoleAccess")
    consoleAccess: option<__boolean>,
    @ocaml.doc("Required. The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeUserCommand"
  let make = (~username, ~brokerId, ()) => new({username: username, brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<__integer>,
    @ocaml.doc("The list of all revisions for the specified configuration.") @as("Configurations")
    configurations: option<__listOfConfiguration>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "ListConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBroker = {
  type t
  type request = {
    @ocaml.doc(
      "The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters."
    )
    @as("BrokerId")
    brokerId: __string,
  }
  type response = {
    @ocaml.doc("The list of all broker usernames for the specified broker.") @as("Users")
    users: option<__listOfUserSummary>,
    @ocaml.doc("The list of all tags associated with this broker.") @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc(
      "The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet."
    )
    @as("SubnetIds")
    subnetIds: option<__listOf__string>,
    @ocaml.doc("The broker's storage type.") @as("StorageType")
    storageType: option<brokerStorageType>,
    @ocaml.doc(
      "The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers."
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc(
      "Required. Enables connections from applications outside of the VPC that hosts the broker's subnets."
    )
    @as("PubliclyAccessible")
    publiclyAccessible: option<__boolean>,
    @ocaml.doc("The list of pending security groups to authorize connections to brokers.")
    @as("PendingSecurityGroups")
    pendingSecurityGroups: option<__listOf__string>,
    @ocaml.doc(
      "The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker once it is rebooted."
    )
    @as("PendingLdapServerMetadata")
    pendingLdapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc(
      "The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types"
    )
    @as("PendingHostInstanceType")
    pendingHostInstanceType: option<__string>,
    @ocaml.doc(
      "The version of the broker engine to upgrade to. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("PendingEngineVersion")
    pendingEngineVersion: option<__string>,
    @ocaml.doc("The authentication strategy that will be applied when the broker is rebooted.")
    @as("PendingAuthenticationStrategy")
    pendingAuthenticationStrategy: option<authenticationStrategy>,
    @ocaml.doc("The parameters that determine the WeeklyStartTime.")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc(
      "The list of information about logs currently enabled and pending to be deployed for the specified broker."
    )
    @as("Logs")
    logs: option<logsSummary>,
    @ocaml.doc(
      "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataOutput>,
    @ocaml.doc("The broker's instance type.") @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ."
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("Encryption options for the broker.") @as("EncryptionOptions")
    encryptionOptions: option<encryptionOptions>,
    @ocaml.doc("Required. The deployment mode of the broker.") @as("DeploymentMode")
    deploymentMode: option<deploymentMode>,
    @ocaml.doc("The time when the broker was created.") @as("Created")
    created: option<__timestampIso8601>,
    @ocaml.doc("The list of all revisions for the specified configuration.") @as("Configurations")
    configurations: option<configurations>,
    @ocaml.doc("The status of the broker.") @as("BrokerState") brokerState: option<brokerState>,
    @ocaml.doc(
      "The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters."
    )
    @as("BrokerName")
    brokerName: option<__string>,
    @ocaml.doc("A list of information about allocated brokers.") @as("BrokerInstances")
    brokerInstances: option<__listOfBrokerInstance>,
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the broker.") @as("BrokerArn")
    brokerArn: option<__string>,
    @ocaml.doc(
      "Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot."
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc("The authentication strategy used to secure the broker.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeBrokerCommand"
  let make = (~brokerId, ()) => new({brokerId: brokerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBroker = {
  type t
  @ocaml.doc("Creates a broker using the specified properties.")
  type request = {
    @ocaml.doc(
      "Required. The list of broker users (persons or applications) who can access queues and topics. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ Web Console. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long."
    )
    @as("Users")
    users: option<__listOfUser>,
    @ocaml.doc("Create tags when creating the broker.") @as("Tags") tags: option<__mapOf__string>,
    @ocaml.doc(
      "The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment (ACTIVEMQ) requires two subnets. A CLUSTER_MULTI_AZ deployment (RABBITMQ) has no subnet requirements when deployed with public accessibility, deployment without public accessibility requires at least one subnet."
    )
    @as("SubnetIds")
    subnetIds: option<__listOf__string>,
    @ocaml.doc("The broker's storage type.") @as("StorageType")
    storageType: option<brokerStorageType>,
    @ocaml.doc(
      "The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers."
    )
    @as("SecurityGroups")
    securityGroups: option<__listOf__string>,
    @ocaml.doc(
      "Required. Enables connections from applications outside of the VPC that hosts the broker's subnets."
    )
    @as("PubliclyAccessible")
    publiclyAccessible: option<__boolean>,
    @ocaml.doc("The parameters that determine the WeeklyStartTime.")
    @as("MaintenanceWindowStartTime")
    maintenanceWindowStartTime: option<weeklyStartTime>,
    @ocaml.doc("Enables Amazon CloudWatch logging for brokers.") @as("Logs") logs: option<logs>,
    @ocaml.doc(
      "The metadata of the LDAP server used to authenticate and authorize connections to the broker."
    )
    @as("LdapServerMetadata")
    ldapServerMetadata: option<ldapServerMetadataInput>,
    @ocaml.doc("Required. The broker's instance type.") @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc(
      "Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html"
    )
    @as("EngineVersion")
    engineVersion: option<__string>,
    @ocaml.doc(
      "Required. The type of broker engine. Note: Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ."
    )
    @as("EngineType")
    engineType: option<engineType>,
    @ocaml.doc("Encryption options for the broker.") @as("EncryptionOptions")
    encryptionOptions: option<encryptionOptions>,
    @ocaml.doc("Required. The deployment mode of the broker.") @as("DeploymentMode")
    deploymentMode: option<deploymentMode>,
    @ocaml.doc(
      "The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency."
    )
    @as("CreatorRequestId")
    creatorRequestId: option<__string>,
    @ocaml.doc("A list of information about the configuration.") @as("Configuration")
    configuration: option<configurationId>,
    @ocaml.doc(
      "Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters."
    )
    @as("BrokerName")
    brokerName: option<__string>,
    @ocaml.doc(
      "Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot."
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<__boolean>,
    @ocaml.doc("The authentication strategy used to secure the broker.")
    @as("AuthenticationStrategy")
    authenticationStrategy: option<authenticationStrategy>,
  }
  type response = {
    @ocaml.doc("The unique ID that Amazon MQ generates for the broker.") @as("BrokerId")
    brokerId: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the broker.") @as("BrokerArn")
    brokerArn: option<__string>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "CreateBrokerCommand"
  let make = (
    ~users=?,
    ~tags=?,
    ~subnetIds=?,
    ~storageType=?,
    ~securityGroups=?,
    ~publiclyAccessible=?,
    ~maintenanceWindowStartTime=?,
    ~logs=?,
    ~ldapServerMetadata=?,
    ~hostInstanceType=?,
    ~engineVersion=?,
    ~engineType=?,
    ~encryptionOptions=?,
    ~deploymentMode=?,
    ~creatorRequestId=?,
    ~configuration=?,
    ~brokerName=?,
    ~autoMinorVersionUpgrade=?,
    ~authenticationStrategy=?,
    (),
  ) =>
    new({
      users: users,
      tags: tags,
      subnetIds: subnetIds,
      storageType: storageType,
      securityGroups: securityGroups,
      publiclyAccessible: publiclyAccessible,
      maintenanceWindowStartTime: maintenanceWindowStartTime,
      logs: logs,
      ldapServerMetadata: ldapServerMetadata,
      hostInstanceType: hostInstanceType,
      engineVersion: engineVersion,
      engineType: engineType,
      encryptionOptions: encryptionOptions,
      deploymentMode: deploymentMode,
      creatorRequestId: creatorRequestId,
      configuration: configuration,
      brokerName: brokerName,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      authenticationStrategy: authenticationStrategy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBrokerInstanceOptions = {
  type t
  type request = {
    @ocaml.doc("Filter response by storage type.") @as("StorageType") storageType: option<__string>,
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of instance options that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("Filter response by host instance type.") @as("HostInstanceType")
    hostInstanceType: option<__string>,
    @ocaml.doc("Filter response by engine type.") @as("EngineType") engineType: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("List of available broker instance options.") @as("BrokerInstanceOptions")
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
  ) =>
    new({
      storageType: storageType,
      nextToken: nextToken,
      maxResults: maxResults,
      hostInstanceType: hostInstanceType,
      engineType: engineType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBrokerEngineTypes = {
  type t
  type request = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of engine types that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("Filter response by engine type.") @as("EngineType") engineType: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "Required. The maximum number of engine types that can be returned per page (20 by default). This value must be an integer from 5 to 100."
    )
    @as("MaxResults")
    maxResults: option<__integerMin5Max100>,
    @ocaml.doc("List of available engine types and versions.") @as("BrokerEngineTypes")
    brokerEngineTypes: option<__listOfBrokerEngineType>,
  }
  @module("@aws-sdk/client-mq") @new external new: request => t = "DescribeBrokerEngineTypesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~engineType=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, engineType: engineType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
