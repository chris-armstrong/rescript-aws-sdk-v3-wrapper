type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type __timestampIso8601 = Js.Date.t;
type __string = string
type __integerMin5Max100 = int
type __integer = int
type __boolean = bool
type sanitizationWarningReason = [@as("INVALID_ATTRIBUTE_VALUE_REMOVED") #INVALIDATTRIBUTEVALUEREMOVED | @as("DISALLOWED_ATTRIBUTE_REMOVED") #DISALLOWEDATTRIBUTEREMOVED | @as("DISALLOWED_ELEMENT_REMOVED") #DISALLOWEDELEMENTREMOVED]
type maxResults = int
type engineType = [@as("RABBITMQ") #RABBITMQ | @as("ACTIVEMQ") #ACTIVEMQ]
type deploymentMode = [@as("CLUSTER_MULTI_AZ") #CLUSTERMULTIAZ | @as("ACTIVE_STANDBY_MULTI_AZ") #ACTIVESTANDBYMULTIAZ | @as("SINGLE_INSTANCE") #SINGLEINSTANCE]
type dayOfWeek = [@as("SUNDAY") #SUNDAY | @as("SATURDAY") #SATURDAY | @as("FRIDAY") #FRIDAY | @as("THURSDAY") #THURSDAY | @as("WEDNESDAY") #WEDNESDAY | @as("TUESDAY") #TUESDAY | @as("MONDAY") #MONDAY]
type changeType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type brokerStorageType = [@as("EFS") #EFS | @as("EBS") #EBS]
type brokerState = [@as("REBOOT_IN_PROGRESS") #REBOOTINPROGRESS | @as("RUNNING") #RUNNING | @as("DELETION_IN_PROGRESS") #DELETIONINPROGRESS | @as("CREATION_FAILED") #CREATIONFAILED | @as("CREATION_IN_PROGRESS") #CREATIONINPROGRESS]
type authenticationStrategy = [@as("LDAP") #LDAP | @as("SIMPLE") #SIMPLE]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type __listOfDeploymentMode = array<deploymentMode>
type weeklyStartTime = {
@as("TimeZone") timeZone: option<__string>,
@as("TimeOfDay") timeOfDay: option<__string>,
@as("DayOfWeek") dayOfWeek: option<dayOfWeek>
}
type userSummary = {
@as("Username") username: option<__string>,
@as("PendingChange") pendingChange: option<changeType>
}
type sanitizationWarning = {
@as("Reason") reason: option<sanitizationWarningReason>,
@as("ElementName") elementName: option<__string>,
@as("AttributeName") attributeName: option<__string>
}
type pendingLogs = {
@as("General") general: option<__boolean>,
@as("Audit") audit: option<__boolean>
}
type logs = {
@as("General") general: option<__boolean>,
@as("Audit") audit: option<__boolean>
}
type engineVersion = {
@as("Name") name: option<__string>
}
type encryptionOptions = {
@as("UseAwsOwnedKey") useAwsOwnedKey: __boolean,
@as("KmsKeyId") kmsKeyId: option<__string>
}
type configurationRevision = {
@as("Revision") revision: option<__integer>,
@as("Description") description: option<__string>,
@as("Created") created: option<__timestampIso8601>
}
type configurationId = {
@as("Revision") revision: option<__integer>,
@as("Id") id: option<__string>
}
type brokerSummary = {
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("DeploymentMode") deploymentMode: option<deploymentMode>,
@as("Created") created: option<__timestampIso8601>,
@as("BrokerState") brokerState: option<brokerState>,
@as("BrokerName") brokerName: option<__string>,
@as("BrokerId") brokerId: option<__string>,
@as("BrokerArn") brokerArn: option<__string>
}
type availabilityZone = {
@as("Name") name: option<__string>
}
type __listOfUserSummary = array<userSummary>
type __listOfSanitizationWarning = array<sanitizationWarning>
type __listOfEngineVersion = array<engineVersion>
type __listOfConfigurationRevision = array<configurationRevision>
type __listOfConfigurationId = array<configurationId>
type __listOfBrokerSummary = array<brokerSummary>
type __listOfAvailabilityZone = array<availabilityZone>
type userPendingChanges = {
@as("PendingChange") pendingChange: option<changeType>,
@as("Groups") groups: option<__listOf__string>,
@as("ConsoleAccess") consoleAccess: option<__boolean>
}
type user = {
@as("Username") username: option<__string>,
@as("Password") password: option<__string>,
@as("Groups") groups: option<__listOf__string>,
@as("ConsoleAccess") consoleAccess: option<__boolean>
}
type logsSummary = {
@as("Pending") pending: option<pendingLogs>,
@as("GeneralLogGroup") generalLogGroup: option<__string>,
@as("General") general: option<__boolean>,
@as("AuditLogGroup") auditLogGroup: option<__string>,
@as("Audit") audit: option<__boolean>
}
type ldapServerMetadataOutput = {
@as("UserSearchSubtree") userSearchSubtree: option<__boolean>,
@as("UserSearchMatching") userSearchMatching: option<__string>,
@as("UserRoleName") userRoleName: option<__string>,
@as("UserBase") userBase: option<__string>,
@as("ServiceAccountUsername") serviceAccountUsername: option<__string>,
@as("RoleSearchSubtree") roleSearchSubtree: option<__boolean>,
@as("RoleSearchMatching") roleSearchMatching: option<__string>,
@as("RoleName") roleName: option<__string>,
@as("RoleBase") roleBase: option<__string>,
@as("Hosts") hosts: option<__listOf__string>
}
type ldapServerMetadataInput = {
@as("UserSearchSubtree") userSearchSubtree: option<__boolean>,
@as("UserSearchMatching") userSearchMatching: option<__string>,
@as("UserRoleName") userRoleName: option<__string>,
@as("UserBase") userBase: option<__string>,
@as("ServiceAccountUsername") serviceAccountUsername: option<__string>,
@as("ServiceAccountPassword") serviceAccountPassword: option<__string>,
@as("RoleSearchSubtree") roleSearchSubtree: option<__boolean>,
@as("RoleSearchMatching") roleSearchMatching: option<__string>,
@as("RoleName") roleName: option<__string>,
@as("RoleBase") roleBase: option<__string>,
@as("Hosts") hosts: option<__listOf__string>
}
type configuration = {
@as("Tags") tags: option<__mapOf__string>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("Id") id: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("Description") description: option<__string>,
@as("Created") created: option<__timestampIso8601>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>,
@as("Arn") arn: option<__string>
}
type brokerInstance = {
@as("IpAddress") ipAddress: option<__string>,
@as("Endpoints") endpoints: option<__listOf__string>,
@as("ConsoleURL") consoleURL: option<__string>
}
type __listOfUser = array<user>
type __listOfConfiguration = array<configuration>
type __listOfBrokerInstance = array<brokerInstance>
type configurations = {
@as("Pending") pending: option<configurationId>,
@as("History") history: option<__listOfConfigurationId>,
@as("Current") current: option<configurationId>
}
type brokerInstanceOption = {
@as("SupportedEngineVersions") supportedEngineVersions: option<__listOf__string>,
@as("SupportedDeploymentModes") supportedDeploymentModes: option<__listOfDeploymentMode>,
@as("StorageType") storageType: option<brokerStorageType>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("AvailabilityZones") availabilityZones: option<__listOfAvailabilityZone>
}
type brokerEngineType = {
@as("EngineVersions") engineVersions: option<__listOfEngineVersion>,
@as("EngineType") engineType: option<engineType>
}
type __listOfBrokerInstanceOption = array<brokerInstanceOption>
type __listOfBrokerEngineType = array<brokerEngineType>
type awsServiceClient;
@module("@aws-sdk/client-mq") @new external createClient: unit => awsServiceClient = "AmazonMQClient";
module RebootBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: __string
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "RebootBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRevision = {
  type t;
  type request = {
@as("ConfigurationRevision") configurationRevision: __string,
@as("ConfigurationId") configurationId: __string
}
  type response = {
@as("Description") description: option<__string>,
@as("Data") data: option<__string>,
@as("Created") created: option<__timestampIso8601>,
@as("ConfigurationId") configurationId: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeConfigurationRevisionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("Username") username: __string,
@as("BrokerId") brokerId: __string
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: __string
}
  type response = {
@as("BrokerId") brokerId: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DeleteBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("Username") username: __string,
@as("Password") password: option<__string>,
@as("Groups") groups: option<__listOf__string>,
@as("ConsoleAccess") consoleAccess: option<__boolean>,
@as("BrokerId") brokerId: __string
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "ListTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfiguration = {
  type t;
  type request = {
@as("ConfigurationId") configurationId: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("Id") id: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("Description") description: option<__string>,
@as("Created") created: option<__timestampIso8601>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("Username") username: __string,
@as("Password") password: option<__string>,
@as("Groups") groups: option<__listOf__string>,
@as("ConsoleAccess") consoleAccess: option<__boolean>,
@as("BrokerId") brokerId: __string
}
  type response = unit
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateConfiguration = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("Name") name: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>
}
  type response = {
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("Id") id: option<__string>,
@as("Created") created: option<__timestampIso8601>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "CreateConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConfiguration = {
  type t;
  type request = {
@as("Description") description: option<__string>,
@as("Data") data: option<__string>,
@as("ConfigurationId") configurationId: __string
}
  type response = {
@as("Warnings") warnings: option<__listOfSanitizationWarning>,
@as("Name") name: option<__string>,
@as("LatestRevision") latestRevision: option<configurationRevision>,
@as("Id") id: option<__string>,
@as("Created") created: option<__timestampIso8601>,
@as("Arn") arn: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "UpdateConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBroker = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: option<__listOf__string>,
@as("Logs") logs: option<logs>,
@as("LdapServerMetadata") ldapServerMetadata: option<ldapServerMetadataInput>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("Configuration") configuration: option<configurationId>,
@as("BrokerId") brokerId: __string,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<__boolean>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>
}
  type response = {
@as("SecurityGroups") securityGroups: option<__listOf__string>,
@as("Logs") logs: option<logs>,
@as("LdapServerMetadata") ldapServerMetadata: option<ldapServerMetadataOutput>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("Configuration") configuration: option<configurationId>,
@as("BrokerId") brokerId: option<__string>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<__boolean>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "UpdateBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsers = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("BrokerId") brokerId: __string
}
  type response = {
@as("Users") users: option<__listOfUserSummary>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integerMin5Max100>,
@as("BrokerId") brokerId: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "ListUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurationRevisions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ConfigurationId") configurationId: __string
}
  type response = {
@as("Revisions") revisions: option<__listOfConfigurationRevision>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integer>,
@as("ConfigurationId") configurationId: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "ListConfigurationRevisionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBrokers = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("BrokerSummaries") brokerSummaries: option<__listOfBrokerSummary>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "ListBrokersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUser = {
  type t;
  type request = {
@as("Username") username: __string,
@as("BrokerId") brokerId: __string
}
  type response = {
@as("Username") username: option<__string>,
@as("Pending") pending: option<userPendingChanges>,
@as("Groups") groups: option<__listOf__string>,
@as("ConsoleAccess") consoleAccess: option<__boolean>,
@as("BrokerId") brokerId: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integer>,
@as("Configurations") configurations: option<__listOfConfiguration>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "ListConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBroker = {
  type t;
  type request = {
@as("BrokerId") brokerId: __string
}
  type response = {
@as("Users") users: option<__listOfUserSummary>,
@as("Tags") tags: option<__mapOf__string>,
@as("SubnetIds") subnetIds: option<__listOf__string>,
@as("StorageType") storageType: option<brokerStorageType>,
@as("SecurityGroups") securityGroups: option<__listOf__string>,
@as("PubliclyAccessible") publiclyAccessible: option<__boolean>,
@as("PendingSecurityGroups") pendingSecurityGroups: option<__listOf__string>,
@as("PendingLdapServerMetadata") pendingLdapServerMetadata: option<ldapServerMetadataOutput>,
@as("PendingHostInstanceType") pendingHostInstanceType: option<__string>,
@as("PendingEngineVersion") pendingEngineVersion: option<__string>,
@as("PendingAuthenticationStrategy") pendingAuthenticationStrategy: option<authenticationStrategy>,
@as("MaintenanceWindowStartTime") maintenanceWindowStartTime: option<weeklyStartTime>,
@as("Logs") logs: option<logsSummary>,
@as("LdapServerMetadata") ldapServerMetadata: option<ldapServerMetadataOutput>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("EncryptionOptions") encryptionOptions: option<encryptionOptions>,
@as("DeploymentMode") deploymentMode: option<deploymentMode>,
@as("Created") created: option<__timestampIso8601>,
@as("Configurations") configurations: option<configurations>,
@as("BrokerState") brokerState: option<brokerState>,
@as("BrokerName") brokerName: option<__string>,
@as("BrokerInstances") brokerInstances: option<__listOfBrokerInstance>,
@as("BrokerId") brokerId: option<__string>,
@as("BrokerArn") brokerArn: option<__string>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<__boolean>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBroker = {
  type t;
  type request = {
@as("Users") users: option<__listOfUser>,
@as("Tags") tags: option<__mapOf__string>,
@as("SubnetIds") subnetIds: option<__listOf__string>,
@as("StorageType") storageType: option<brokerStorageType>,
@as("SecurityGroups") securityGroups: option<__listOf__string>,
@as("PubliclyAccessible") publiclyAccessible: option<__boolean>,
@as("MaintenanceWindowStartTime") maintenanceWindowStartTime: option<weeklyStartTime>,
@as("Logs") logs: option<logs>,
@as("LdapServerMetadata") ldapServerMetadata: option<ldapServerMetadataInput>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineVersion") engineVersion: option<__string>,
@as("EngineType") engineType: option<engineType>,
@as("EncryptionOptions") encryptionOptions: option<encryptionOptions>,
@as("DeploymentMode") deploymentMode: option<deploymentMode>,
@as("CreatorRequestId") creatorRequestId: option<__string>,
@as("Configuration") configuration: option<configurationId>,
@as("BrokerName") brokerName: option<__string>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<__boolean>,
@as("AuthenticationStrategy") authenticationStrategy: option<authenticationStrategy>
}
  type response = {
@as("BrokerId") brokerId: option<__string>,
@as("BrokerArn") brokerArn: option<__string>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "CreateBrokerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBrokerInstanceOptions = {
  type t;
  type request = {
@as("StorageType") storageType: option<__string>,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("HostInstanceType") hostInstanceType: option<__string>,
@as("EngineType") engineType: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integerMin5Max100>,
@as("BrokerInstanceOptions") brokerInstanceOptions: option<__listOfBrokerInstanceOption>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeBrokerInstanceOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBrokerEngineTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("EngineType") engineType: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<__integerMin5Max100>,
@as("BrokerEngineTypes") brokerEngineTypes: option<__listOfBrokerEngineType>
}
  @module("@aws-sdk/client-mq") @new external new_: (request) => t = "DescribeBrokerEngineTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
