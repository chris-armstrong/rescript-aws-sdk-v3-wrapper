type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integerMin5Max100 = int;
type __integer = int;
type __boolean = bool;
type sanitizationWarningReason = [@as("INVALID_ATTRIBUTE_VALUE_REMOVED") #INVALID_ATTRIBUTE_VALUE_REMOVED | @as("DISALLOWED_ATTRIBUTE_REMOVED") #DISALLOWED_ATTRIBUTE_REMOVED | @as("DISALLOWED_ELEMENT_REMOVED") #DISALLOWED_ELEMENT_REMOVED]
type maxResults = int;
type engineType = [@as("RABBITMQ") #RABBITMQ | @as("ACTIVEMQ") #ACTIVEMQ]
type deploymentMode = [@as("CLUSTER_MULTI_AZ") #CLUSTER_MULTI_AZ | @as("ACTIVE_STANDBY_MULTI_AZ") #ACTIVE_STANDBY_MULTI_AZ | @as("SINGLE_INSTANCE") #SINGLE_INSTANCE]
type dayOfWeek = [@as("SUNDAY") #SUNDAY | @as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY]
type changeType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type brokerStorageType = [@as("EFS") #EFS | @as("EBS") #EBS]
type brokerState = [@as("REBOOT_IN_PROGRESS") #REBOOT_IN_PROGRESS | @as("RUNNING") #RUNNING | @as("DELETION_IN_PROGRESS") #DELETION_IN_PROGRESS | @as("CREATION_FAILED") #CREATION_FAILED | @as("CREATION_IN_PROGRESS") #CREATION_IN_PROGRESS]
type authenticationStrategy = [@as("LDAP") #LDAP | @as("SIMPLE") #SIMPLE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOfDeploymentMode = array<deploymentMode>
type weeklyStartTime = {
@as("TimeZone") timeZone: __string,
@as("TimeOfDay") timeOfDay: __string,
@as("DayOfWeek") dayOfWeek: dayOfWeek
}
type userSummary = {
@as("Username") username: __string,
@as("PendingChange") pendingChange: changeType
}
type sanitizationWarning = {
@as("Reason") reason: sanitizationWarningReason,
@as("ElementName") elementName: __string,
@as("AttributeName") attributeName: __string
}
type pendingLogs = {
@as("General") general: __boolean,
@as("Audit") audit: __boolean
}
type logs = {
@as("General") general: __boolean,
@as("Audit") audit: __boolean
}
type engineVersion = {
@as("Name") name: __string
}
type encryptionOptions = {
@as("UseAwsOwnedKey") useAwsOwnedKey: option<__boolean>,
@as("KmsKeyId") kmsKeyId: __string
}
type configurationRevision = {
@as("Revision") revision: __integer,
@as("Description") description: __string,
@as("Created") created: __timestampIso8601
}
type configurationId = {
@as("Revision") revision: __integer,
@as("Id") id: __string
}
type brokerSummary = {
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineType") engineType: engineType,
@as("DeploymentMode") deploymentMode: deploymentMode,
@as("Created") created: __timestampIso8601,
@as("BrokerState") brokerState: brokerState,
@as("BrokerName") brokerName: __string,
@as("BrokerId") brokerId: __string,
@as("BrokerArn") brokerArn: __string
}
type availabilityZone = {
@as("Name") name: __string
}
type __listOfUserSummary = array<userSummary>
type __listOfSanitizationWarning = array<sanitizationWarning>
type __listOfEngineVersion = array<engineVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfConfigurationId = array<configurationId>
type __listOfBrokerSummary = array<brokerSummary>
type __listOfAvailabilityZone = array<availabilityZone>
type userPendingChanges = {
@as("PendingChange") pendingChange: changeType,
@as("Groups") groups: __listOf__string,
@as("ConsoleAccess") consoleAccess: __boolean
}
type user = {
@as("Username") username: __string,
@as("Password") password: __string,
@as("Groups") groups: __listOf__string,
@as("ConsoleAccess") consoleAccess: __boolean
}
type logsSummary = {
@as("Pending") pending: pendingLogs,
@as("GeneralLogGroup") generalLogGroup: __string,
@as("General") general: __boolean,
@as("AuditLogGroup") auditLogGroup: __string,
@as("Audit") audit: __boolean
}
type ldapServerMetadataOutput = {
@as("UserSearchSubtree") userSearchSubtree: __boolean,
@as("UserSearchMatching") userSearchMatching: __string,
@as("UserRoleName") userRoleName: __string,
@as("UserBase") userBase: __string,
@as("ServiceAccountUsername") serviceAccountUsername: __string,
@as("RoleSearchSubtree") roleSearchSubtree: __boolean,
@as("RoleSearchMatching") roleSearchMatching: __string,
@as("RoleName") roleName: __string,
@as("RoleBase") roleBase: __string,
@as("Hosts") hosts: __listOf__string
}
type ldapServerMetadataInput = {
@as("UserSearchSubtree") userSearchSubtree: __boolean,
@as("UserSearchMatching") userSearchMatching: __string,
@as("UserRoleName") userRoleName: __string,
@as("UserBase") userBase: __string,
@as("ServiceAccountUsername") serviceAccountUsername: __string,
@as("ServiceAccountPassword") serviceAccountPassword: __string,
@as("RoleSearchSubtree") roleSearchSubtree: __boolean,
@as("RoleSearchMatching") roleSearchMatching: __string,
@as("RoleName") roleName: __string,
@as("RoleBase") roleBase: __string,
@as("Hosts") hosts: __listOf__string
}
type configuration = {
@as("Tags") tags: __mapOf__string,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("Id") id: __string,
@as("EngineVersion") engineVersion: __string,
@as("EngineType") engineType: engineType,
@as("Description") description: __string,
@as("Created") created: __timestampIso8601,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy,
@as("Arn") arn: __string
}
type brokerInstance = {
@as("IpAddress") ipAddress: __string,
@as("Endpoints") endpoints: __listOf__string,
@as("ConsoleURL") consoleURL: __string
}
type __listOfUser = array<user>
type __listOfConfiguration = array<configuration>
type __listOfBrokerInstance = array<brokerInstance>
type configurations = {
@as("Pending") pending: configurationId,
@as("History") history: __listOfConfigurationId,
@as("Current") current: configurationId
}
type brokerInstanceOption = {
@as("SupportedEngineVersions") supportedEngineVersions: __listOf__string,
@as("SupportedDeploymentModes") supportedDeploymentModes: __listOfDeploymentMode,
@as("StorageType") storageType: brokerStorageType,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineType") engineType: engineType,
@as("AvailabilityZones") availabilityZones: __listOfAvailabilityZone
}
type brokerEngineType = {
@as("EngineVersions") engineVersions: __listOfEngineVersion,
@as("EngineType") engineType: engineType
}
type __listOfBrokerInstanceOption = array<brokerInstanceOption>
type __listOfBrokerEngineType = array<brokerEngineType>
type clientType;
@module("@aws-sdk/client-mq") @new external createClient: unit => clientType = "AmazonMQClient";
module RebootBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "RebootBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRevision = {
  type t;
  type request = {
@as("ConfigurationRevision") configurationRevision: option<__string>,
@as("ConfigurationId") configurationId: option<__string>
}
  type response = {
@as("Description") description: __string,
@as("Data") data: __string,
@as("Created") created: __timestampIso8601,
@as("ConfigurationId") configurationId: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("Username") username: option<__string>,
@as("BrokerId") brokerId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: option<__string>
}
  type response = {
@as("BrokerId") brokerId: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DeleteBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("Username") username: option<__string>,
@as("Password") password: __string,
@as("Groups") groups: __listOf__string,
@as("ConsoleAccess") consoleAccess: __boolean,
@as("BrokerId") brokerId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfiguration = {
  type t;
  type request = {
@as("ConfigurationId") configurationId: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("Id") id: __string,
@as("EngineVersion") engineVersion: __string,
@as("EngineType") engineType: engineType,
@as("Description") description: __string,
@as("Created") created: __timestampIso8601,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Username") username: option<__string>,
@as("Password") password: __string,
@as("Groups") groups: __listOf__string,
@as("ConsoleAccess") consoleAccess: __boolean,
@as("BrokerId") brokerId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateConfiguration = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("Name") name: __string,
@as("EngineVersion") engineVersion: __string,
@as("EngineType") engineType: engineType,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy
}
  type response = {
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("Id") id: __string,
@as("Created") created: __timestampIso8601,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConfiguration = {
  type t;
  type request = {
@as("Description") description: __string,
@as("Data") data: __string,
@as("ConfigurationId") configurationId: option<__string>
}
  type response = {
@as("Warnings") warnings: __listOfSanitizationWarning,
@as("Name") name: __string,
@as("LatestRevision") latestRevision: configurationRevision,
@as("Id") id: __string,
@as("Created") created: __timestampIso8601,
@as("Arn") arn: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBroker = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: __listOf__string,
@as("Logs") logs: logs,
@as("LdapServerMetadata") ldapServerMetadata: ldapServerMetadataInput,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineVersion") engineVersion: __string,
@as("Configuration") configuration: configurationId,
@as("BrokerId") brokerId: option<__string>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: __boolean,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy
}
  type response = {
@as("SecurityGroups") securityGroups: __listOf__string,
@as("Logs") logs: logs,
@as("LdapServerMetadata") ldapServerMetadata: ldapServerMetadataOutput,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineVersion") engineVersion: __string,
@as("Configuration") configuration: configurationId,
@as("BrokerId") brokerId: __string,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: __boolean,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "UpdateBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("BrokerId") brokerId: option<__string>
}
  type response = {
@as("Users") users: __listOfUserSummary,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integerMin5Max100,
@as("BrokerId") brokerId: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "ListUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("ConfigurationId") configurationId: option<__string>
}
  type response = {
@as("Revisions") revisions: __listOfConfigurationRevision,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integer,
@as("ConfigurationId") configurationId: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBrokers = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("BrokerSummaries") brokerSummaries: __listOfBrokerSummary
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "ListBrokersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("Username") username: option<__string>,
@as("BrokerId") brokerId: option<__string>
}
  type response = {
@as("Username") username: __string,
@as("Pending") pending: userPendingChanges,
@as("Groups") groups: __listOf__string,
@as("ConsoleAccess") consoleAccess: __boolean,
@as("BrokerId") brokerId: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integer,
@as("Configurations") configurations: __listOfConfiguration
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "ListConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: option<__string>
}
  type response = {
@as("Users") users: __listOfUserSummary,
@as("Tags") tags: __mapOf__string,
@as("SubnetIds") subnetIds: __listOf__string,
@as("StorageType") storageType: brokerStorageType,
@as("SecurityGroups") securityGroups: __listOf__string,
@as("PubliclyAccessible") publiclyAccessible: __boolean,
@as("PendingSecurityGroups") pendingSecurityGroups: __listOf__string,
@as("PendingLdapServerMetadata") pendingLdapServerMetadata: ldapServerMetadataOutput,
@as("PendingHostInstanceType") pendingHostInstanceType: __string,
@as("PendingEngineVersion") pendingEngineVersion: __string,
@as("PendingAuthenticationStrategy") pendingAuthenticationStrategy: authenticationStrategy,
@as("MaintenanceWindowStartTime") maintenanceWindowStartTime: weeklyStartTime,
@as("Logs") logs: logsSummary,
@as("LdapServerMetadata") ldapServerMetadata: ldapServerMetadataOutput,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineVersion") engineVersion: __string,
@as("EngineType") engineType: engineType,
@as("EncryptionOptions") encryptionOptions: encryptionOptions,
@as("DeploymentMode") deploymentMode: deploymentMode,
@as("Created") created: __timestampIso8601,
@as("Configurations") configurations: configurations,
@as("BrokerState") brokerState: brokerState,
@as("BrokerName") brokerName: __string,
@as("BrokerInstances") brokerInstances: __listOfBrokerInstance,
@as("BrokerId") brokerId: __string,
@as("BrokerArn") brokerArn: __string,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: __boolean,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBroker = {
  type t;
  type request = {
@as("Users") users: __listOfUser,
@as("Tags") tags: __mapOf__string,
@as("SubnetIds") subnetIds: __listOf__string,
@as("StorageType") storageType: brokerStorageType,
@as("SecurityGroups") securityGroups: __listOf__string,
@as("PubliclyAccessible") publiclyAccessible: __boolean,
@as("MaintenanceWindowStartTime") maintenanceWindowStartTime: weeklyStartTime,
@as("Logs") logs: logs,
@as("LdapServerMetadata") ldapServerMetadata: ldapServerMetadataInput,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineVersion") engineVersion: __string,
@as("EngineType") engineType: engineType,
@as("EncryptionOptions") encryptionOptions: encryptionOptions,
@as("DeploymentMode") deploymentMode: deploymentMode,
@as("CreatorRequestId") creatorRequestId: __string,
@as("Configuration") configuration: configurationId,
@as("BrokerName") brokerName: __string,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: __boolean,
@as("AuthenticationStrategy") authenticationStrategy: authenticationStrategy
}
  type response = {
@as("BrokerId") brokerId: __string,
@as("BrokerArn") brokerArn: __string
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "CreateBrokerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBrokerInstanceOptions = {
  type t;
  type request = {
@as("StorageType") storageType: __string,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("HostInstanceType") hostInstanceType: __string,
@as("EngineType") engineType: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integerMin5Max100,
@as("BrokerInstanceOptions") brokerInstanceOptions: __listOfBrokerInstanceOption
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeBrokerInstanceOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBrokerEngineTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("EngineType") engineType: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: __integerMin5Max100,
@as("BrokerEngineTypes") brokerEngineTypes: __listOfBrokerEngineType
}
  @module("@aws-sdk/client-mq") @new external new_: (Js.Promise.t<request>) => t = "DescribeBrokerEngineTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
