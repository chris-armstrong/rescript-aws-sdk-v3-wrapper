type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-serverlessrepo") @new
external createClient: unit => awsServiceClient = "ServerlessApplicationRepositoryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integer = int
type __boolean = bool
type status = [@as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE | @as("PREPARING") #PREPARING]
type maxItems = int
type capability = [
  | @as("CAPABILITY_RESOURCE_POLICY") #CAPABILITY_RESOURCE_POLICY
  | @as("CAPABILITY_AUTO_EXPAND") #CAPABILITY_AUTO_EXPAND
  | @as("CAPABILITY_NAMED_IAM") #CAPABILITY_NAMED_IAM
  | @as("CAPABILITY_IAM") #CAPABILITY_IAM
]
type __listOf__string = array<__string>
type __listOfCapability = array<capability>
type versionSummary = {
  @as("SourceCodeUrl") sourceCodeUrl: option<__string>,
  @as("SemanticVersion") semanticVersion: __string,
  @as("CreationTime") creationTime: __string,
  @as("ApplicationId") applicationId: __string,
}
type tag = {
  @as("Value") value: __string,
  @as("Key") key: __string,
}
type rollbackTrigger = {
  @as("Type") type_: __string,
  @as("Arn") arn: __string,
}
type parameterValue = {
  @as("Value") value: __string,
  @as("Name") name: __string,
}
type applicationDependencySummary = {
  @as("SemanticVersion") semanticVersion: __string,
  @as("ApplicationId") applicationId: __string,
}
type __listOfVersionSummary = array<versionSummary>
type __listOfTag = array<tag>
type __listOfRollbackTrigger = array<rollbackTrigger>
type __listOfParameterValue = array<parameterValue>
type __listOfApplicationDependencySummary = array<applicationDependencySummary>
type parameterDefinition = {
  @as("Type") type_: option<__string>,
  @as("ReferencedByResources") referencedByResources: __listOf__string,
  @as("NoEcho") noEcho: option<__boolean>,
  @as("Name") name: __string,
  @as("MinValue") minValue: option<__integer>,
  @as("MinLength") minLength: option<__integer>,
  @as("MaxValue") maxValue: option<__integer>,
  @as("MaxLength") maxLength: option<__integer>,
  @as("Description") description: option<__string>,
  @as("DefaultValue") defaultValue: option<__string>,
  @as("ConstraintDescription") constraintDescription: option<__string>,
  @as("AllowedValues") allowedValues: option<__listOf__string>,
  @as("AllowedPattern") allowedPattern: option<__string>,
}
type applicationSummary = {
  @as("SpdxLicenseId") spdxLicenseId: option<__string>,
  @as("Name") name: __string,
  @as("Labels") labels: option<__listOf__string>,
  @as("HomePageUrl") homePageUrl: option<__string>,
  @as("Description") description: __string,
  @as("CreationTime") creationTime: option<__string>,
  @as("Author") author: __string,
  @as("ApplicationId") applicationId: __string,
}
type applicationPolicyStatement = {
  @as("StatementId") statementId: option<__string>,
  @as("Principals") principals: __listOf__string,
  @as("PrincipalOrgIDs") principalOrgIDs: option<__listOf__string>,
  @as("Actions") actions: __listOf__string,
}
type __listOfParameterDefinition = array<parameterDefinition>
type __listOfApplicationSummary = array<applicationSummary>
type __listOfApplicationPolicyStatement = array<applicationPolicyStatement>
type rollbackConfiguration = {
  @as("RollbackTriggers") rollbackTriggers: option<__listOfRollbackTrigger>,
  @as("MonitoringTimeInMinutes") monitoringTimeInMinutes: option<__integer>,
}
type version = {
  @as("TemplateUrl") templateUrl: __string,
  @as("SourceCodeUrl") sourceCodeUrl: option<__string>,
  @as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: option<__string>,
  @as("SemanticVersion") semanticVersion: __string,
  @as("ResourcesSupported") resourcesSupported: __boolean,
  @as("RequiredCapabilities") requiredCapabilities: __listOfCapability,
  @as("ParameterDefinitions") parameterDefinitions: __listOfParameterDefinition,
  @as("CreationTime") creationTime: __string,
  @as("ApplicationId") applicationId: __string,
}

module UnshareApplication = {
  type t
  type request = {
    @as("OrganizationId") organizationId: __string,
    @as("ApplicationId") applicationId: __string,
  }

  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "UnshareApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetCloudFormationTemplate = {
  type t
  type request = {
    @as("TemplateId") templateId: __string,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("TemplateUrl") templateUrl: option<__string>,
    @as("TemplateId") templateId: option<__string>,
    @as("Status") status: option<status>,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ExpirationTime") expirationTime: option<__string>,
    @as("CreationTime") creationTime: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetCloudFormationTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApplication = {
  type t
  type request = {@as("ApplicationId") applicationId: __string}

  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "DeleteApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCloudFormationTemplate = {
  type t
  type request = {
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("TemplateUrl") templateUrl: option<__string>,
    @as("TemplateId") templateId: option<__string>,
    @as("Status") status: option<status>,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ExpirationTime") expirationTime: option<__string>,
    @as("CreationTime") creationTime: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateCloudFormationTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxItems") maxItems: option<maxItems>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("Versions") versions: option<__listOfVersionSummary>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationDependencies = {
  type t
  type request = {
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("MaxItems") maxItems: option<maxItems>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Dependencies") dependencies: option<__listOfApplicationDependencySummary>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationDependenciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutApplicationPolicy = {
  type t
  type request = {
    @as("Statements") statements: __listOfApplicationPolicyStatement,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {@as("Statements") statements: option<__listOfApplicationPolicyStatement>}
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "PutApplicationPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxItems") maxItems: option<maxItems>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Applications") applications: option<__listOfApplicationSummary>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationPolicy = {
  type t
  type request = {@as("ApplicationId") applicationId: __string}
  type response = {@as("Statements") statements: option<__listOfApplicationPolicyStatement>}
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetApplicationPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCloudFormationChangeSet = {
  type t
  type request = {
    @as("TemplateId") templateId: option<__string>,
    @as("Tags") tags: option<__listOfTag>,
    @as("StackName") stackName: __string,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("RollbackConfiguration") rollbackConfiguration: option<rollbackConfiguration>,
    @as("ResourceTypes") resourceTypes: option<__listOf__string>,
    @as("ParameterOverrides") parameterOverrides: option<__listOfParameterValue>,
    @as("NotificationArns") notificationArns: option<__listOf__string>,
    @as("Description") description: option<__string>,
    @as("ClientToken") clientToken: option<__string>,
    @as("ChangeSetName") changeSetName: option<__string>,
    @as("Capabilities") capabilities: option<__listOf__string>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("StackId") stackId: option<__string>,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ChangeSetId") changeSetId: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateCloudFormationChangeSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplicationVersion = {
  type t
  type request = {
    @as("TemplateUrl") templateUrl: option<__string>,
    @as("TemplateBody") templateBody: option<__string>,
    @as("SourceCodeUrl") sourceCodeUrl: option<__string>,
    @as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: option<__string>,
    @as("SemanticVersion") semanticVersion: __string,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("TemplateUrl") templateUrl: option<__string>,
    @as("SourceCodeUrl") sourceCodeUrl: option<__string>,
    @as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: option<__string>,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ResourcesSupported") resourcesSupported: option<__boolean>,
    @as("RequiredCapabilities") requiredCapabilities: option<__listOfCapability>,
    @as("ParameterDefinitions") parameterDefinitions: option<__listOfParameterDefinition>,
    @as("CreationTime") creationTime: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateApplicationVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @as("ReadmeUrl") readmeUrl: option<__string>,
    @as("ReadmeBody") readmeBody: option<__string>,
    @as("Labels") labels: option<__listOf__string>,
    @as("HomePageUrl") homePageUrl: option<__string>,
    @as("Description") description: option<__string>,
    @as("Author") author: option<__string>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("Version") version: option<version>,
    @as("VerifiedAuthorUrl") verifiedAuthorUrl: option<__string>,
    @as("SpdxLicenseId") spdxLicenseId: option<__string>,
    @as("ReadmeUrl") readmeUrl: option<__string>,
    @as("Name") name: option<__string>,
    @as("LicenseUrl") licenseUrl: option<__string>,
    @as("Labels") labels: option<__listOf__string>,
    @as("IsVerifiedAuthor") isVerifiedAuthor: option<__boolean>,
    @as("HomePageUrl") homePageUrl: option<__string>,
    @as("Description") description: option<__string>,
    @as("CreationTime") creationTime: option<__string>,
    @as("Author") author: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "UpdateApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplication = {
  type t
  type request = {
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ApplicationId") applicationId: __string,
  }
  type response = {
    @as("Version") version: option<version>,
    @as("VerifiedAuthorUrl") verifiedAuthorUrl: option<__string>,
    @as("SpdxLicenseId") spdxLicenseId: option<__string>,
    @as("ReadmeUrl") readmeUrl: option<__string>,
    @as("Name") name: option<__string>,
    @as("LicenseUrl") licenseUrl: option<__string>,
    @as("Labels") labels: option<__listOf__string>,
    @as("IsVerifiedAuthor") isVerifiedAuthor: option<__boolean>,
    @as("HomePageUrl") homePageUrl: option<__string>,
    @as("Description") description: option<__string>,
    @as("CreationTime") creationTime: option<__string>,
    @as("Author") author: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @as("TemplateUrl") templateUrl: option<__string>,
    @as("TemplateBody") templateBody: option<__string>,
    @as("SpdxLicenseId") spdxLicenseId: option<__string>,
    @as("SourceCodeUrl") sourceCodeUrl: option<__string>,
    @as("SourceCodeArchiveUrl") sourceCodeArchiveUrl: option<__string>,
    @as("SemanticVersion") semanticVersion: option<__string>,
    @as("ReadmeUrl") readmeUrl: option<__string>,
    @as("ReadmeBody") readmeBody: option<__string>,
    @as("Name") name: __string,
    @as("LicenseUrl") licenseUrl: option<__string>,
    @as("LicenseBody") licenseBody: option<__string>,
    @as("Labels") labels: option<__listOf__string>,
    @as("HomePageUrl") homePageUrl: option<__string>,
    @as("Description") description: __string,
    @as("Author") author: __string,
  }
  type response = {
    @as("Version") version: option<version>,
    @as("VerifiedAuthorUrl") verifiedAuthorUrl: option<__string>,
    @as("SpdxLicenseId") spdxLicenseId: option<__string>,
    @as("ReadmeUrl") readmeUrl: option<__string>,
    @as("Name") name: option<__string>,
    @as("LicenseUrl") licenseUrl: option<__string>,
    @as("Labels") labels: option<__listOf__string>,
    @as("IsVerifiedAuthor") isVerifiedAuthor: option<__boolean>,
    @as("HomePageUrl") homePageUrl: option<__string>,
    @as("Description") description: option<__string>,
    @as("CreationTime") creationTime: option<__string>,
    @as("Author") author: option<__string>,
    @as("ApplicationId") applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateApplicationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
