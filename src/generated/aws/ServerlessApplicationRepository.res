type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integer = int;
type __boolean = bool;
type status = [@as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE | @as("PREPARING") #PREPARING]
type maxItems = int;
type capability = [@as("CAPABILITY_RESOURCE_POLICY") #CAPABILITY_RESOURCE_POLICY | @as("CAPABILITY_AUTO_EXPAND") #CAPABILITY_AUTO_EXPAND | @as("CAPABILITY_NAMED_IAM") #CAPABILITY_NAMED_IAM | @as("CAPABILITY_IAM") #CAPABILITY_IAM]
type __listOf__string = array<__string>
type __listOfCapability = array<capability>
type versionSummary = {
@as("SourceCodeUrl") sourceCodeUrl: __string,
@as("SemanticVersion") semanticVersion: option<__string>,
@as("CreationTime") creationTime: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type tag = {
@as("Value") value: option<__string>,
@as("Key") key: option<__string>
}
type rollbackTrigger = {
@as("Type") type_: option<__string>,
@as("Arn") arn: option<__string>
}
type parameterValue = {
@as("Value") value: option<__string>,
@as("Name") name: option<__string>
}
type applicationDependencySummary = {
@as("SemanticVersion") semanticVersion: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type __listOfVersionSummary = array<versionSummary>
type __listOfTag = array<tag>
type __listOfRollbackTrigger = array<rollbackTrigger>
type __listOfParameterValue = array<parameterValue>
type __listOfApplicationDependencySummary = array<applicationDependencySummary>
type parameterDefinition = {
@as("Type") type_: __string,
@as("ReferencedByResources") referencedByResources: option<__listOf__string>,
@as("NoEcho") noEcho: __boolean,
@as("Name") name: option<__string>,
@as("MinValue") minValue: __integer,
@as("MinLength") minLength: __integer,
@as("MaxValue") maxValue: __integer,
@as("MaxLength") maxLength: __integer,
@as("Description") description: __string,
@as("DefaultValue") defaultValue: __string,
@as("ConstraintDescription") constraintDescription: __string,
@as("AllowedValues") allowedValues: __listOf__string,
@as("AllowedPattern") allowedPattern: __string
}
type applicationSummary = {
@as("SpdxLicenseId") spdxLicenseId: __string,
@as("Name") name: option<__string>,
@as("Labels") labels: __listOf__string,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: option<__string>,
@as("CreationTime") creationTime: __string,
@as("Author") author: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type applicationPolicyStatement = {
@as("StatementId") statementId: __string,
@as("Principals") principals: option<__listOf__string>,
@as("PrincipalOrgIDs") principalOrgIDs: __listOf__string,
@as("Actions") actions: option<__listOf__string>
}
type __listOfParameterDefinition = array<parameterDefinition>
type __listOfApplicationSummary = array<applicationSummary>
type __listOfApplicationPolicyStatement = array<applicationPolicyStatement>
type rollbackConfiguration = {
@as("RollbackTriggers") rollbackTriggers: __listOfRollbackTrigger,
@as("MonitoringTimeInMinutes") monitoringTimeInMinutes: __integer
}
type version = {
@as("TemplateUrl") templateUrl: option<__string>,
@as("SourceCodeUrl") sourceCodeUrl: __string,
@as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: __string,
@as("SemanticVersion") semanticVersion: option<__string>,
@as("ResourcesSupported") resourcesSupported: option<__boolean>,
@as("RequiredCapabilities") requiredCapabilities: option<__listOfCapability>,
@as("ParameterDefinitions") parameterDefinitions: option<__listOfParameterDefinition>,
@as("CreationTime") creationTime: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
type clientType;
@module("@aws-sdk/client-serverlessrepo") @new external createClient: unit => clientType = "ServerlessApplicationRepositoryClient";
module UnshareApplication = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "UnshareApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetCloudFormationTemplate = {
  type t;
  type request = {
@as("TemplateId") templateId: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("TemplateUrl") templateUrl: __string,
@as("TemplateId") templateId: __string,
@as("Status") status: status,
@as("SemanticVersion") semanticVersion: __string,
@as("ExpirationTime") expirationTime: __string,
@as("CreationTime") creationTime: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "GetCloudFormationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateCloudFormationTemplate = {
  type t;
  type request = {
@as("SemanticVersion") semanticVersion: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("TemplateUrl") templateUrl: __string,
@as("TemplateId") templateId: __string,
@as("Status") status: status,
@as("SemanticVersion") semanticVersion: __string,
@as("ExpirationTime") expirationTime: __string,
@as("CreationTime") creationTime: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "CreateCloudFormationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplicationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxItems") maxItems: maxItems,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("Versions") versions: __listOfVersionSummary,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "ListApplicationVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplicationDependencies = {
  type t;
  type request = {
@as("SemanticVersion") semanticVersion: __string,
@as("NextToken") nextToken: __string,
@as("MaxItems") maxItems: maxItems,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Dependencies") dependencies: __listOfApplicationDependencySummary
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "ListApplicationDependenciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutApplicationPolicy = {
  type t;
  type request = {
@as("Statements") statements: option<__listOfApplicationPolicyStatement>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("Statements") statements: __listOfApplicationPolicyStatement
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "PutApplicationPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxItems") maxItems: maxItems
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Applications") applications: __listOfApplicationSummary
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplicationPolicy = {
  type t;
  type request = {
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("Statements") statements: __listOfApplicationPolicyStatement
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "GetApplicationPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCloudFormationChangeSet = {
  type t;
  type request = {
@as("TemplateId") templateId: __string,
@as("Tags") tags: __listOfTag,
@as("StackName") stackName: option<__string>,
@as("SemanticVersion") semanticVersion: __string,
@as("RollbackConfiguration") rollbackConfiguration: rollbackConfiguration,
@as("ResourceTypes") resourceTypes: __listOf__string,
@as("ParameterOverrides") parameterOverrides: __listOfParameterValue,
@as("NotificationArns") notificationArns: __listOf__string,
@as("Description") description: __string,
@as("ClientToken") clientToken: __string,
@as("ChangeSetName") changeSetName: __string,
@as("Capabilities") capabilities: __listOf__string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("StackId") stackId: __string,
@as("SemanticVersion") semanticVersion: __string,
@as("ChangeSetId") changeSetId: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "CreateCloudFormationChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplicationVersion = {
  type t;
  type request = {
@as("TemplateUrl") templateUrl: __string,
@as("TemplateBody") templateBody: __string,
@as("SourceCodeUrl") sourceCodeUrl: __string,
@as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: __string,
@as("SemanticVersion") semanticVersion: option<__string>,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("TemplateUrl") templateUrl: __string,
@as("SourceCodeUrl") sourceCodeUrl: __string,
@as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: __string,
@as("SemanticVersion") semanticVersion: __string,
@as("ResourcesSupported") resourcesSupported: __boolean,
@as("RequiredCapabilities") requiredCapabilities: __listOfCapability,
@as("ParameterDefinitions") parameterDefinitions: __listOfParameterDefinition,
@as("CreationTime") creationTime: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "CreateApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("ReadmeUrl") readmeUrl: __string,
@as("ReadmeBody") readmeBody: __string,
@as("Labels") labels: __listOf__string,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: __string,
@as("Author") author: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("Version") version: version,
@as("VerifiedAuthorUrl") verifiedAuthorUrl: __string,
@as("SpdxLicenseId") spdxLicenseId: __string,
@as("ReadmeUrl") readmeUrl: __string,
@as("Name") name: __string,
@as("LicenseUrl") licenseUrl: __string,
@as("Labels") labels: __listOf__string,
@as("IsVerifiedAuthor") isVerifiedAuthor: __boolean,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: __string,
@as("CreationTime") creationTime: __string,
@as("Author") author: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
@as("SemanticVersion") semanticVersion: __string,
@as("ApplicationId") applicationId: option<__string>
}
  type response = {
@as("Version") version: version,
@as("VerifiedAuthorUrl") verifiedAuthorUrl: __string,
@as("SpdxLicenseId") spdxLicenseId: __string,
@as("ReadmeUrl") readmeUrl: __string,
@as("Name") name: __string,
@as("LicenseUrl") licenseUrl: __string,
@as("Labels") labels: __listOf__string,
@as("IsVerifiedAuthor") isVerifiedAuthor: __boolean,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: __string,
@as("CreationTime") creationTime: __string,
@as("Author") author: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "GetApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("TemplateUrl") templateUrl: __string,
@as("TemplateBody") templateBody: __string,
@as("SpdxLicenseId") spdxLicenseId: __string,
@as("SourceCodeUrl") sourceCodeUrl: __string,
@as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: __string,
@as("SemanticVersion") semanticVersion: __string,
@as("ReadmeUrl") readmeUrl: __string,
@as("ReadmeBody") readmeBody: __string,
@as("Name") name: option<__string>,
@as("LicenseUrl") licenseUrl: __string,
@as("LicenseBody") licenseBody: __string,
@as("Labels") labels: __listOf__string,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: option<__string>,
@as("Author") author: option<__string>
}
  type response = {
@as("Version") version: version,
@as("VerifiedAuthorUrl") verifiedAuthorUrl: __string,
@as("SpdxLicenseId") spdxLicenseId: __string,
@as("ReadmeUrl") readmeUrl: __string,
@as("Name") name: __string,
@as("LicenseUrl") licenseUrl: __string,
@as("Labels") labels: __listOf__string,
@as("IsVerifiedAuthor") isVerifiedAuthor: __boolean,
@as("HomePageUrl") homePageUrl: __string,
@as("Description") description: __string,
@as("CreationTime") creationTime: __string,
@as("Author") author: __string,
@as("ApplicationId") applicationId: __string
}
  @module("@aws-sdk/client-serverlessrepo") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
