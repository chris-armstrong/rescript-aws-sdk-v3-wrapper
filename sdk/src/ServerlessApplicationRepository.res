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
@ocaml.doc("<p>Values that must be specified in order to deploy some applications.</p>")
type capability = [
  | @as("CAPABILITY_RESOURCE_POLICY") #CAPABILITY_RESOURCE_POLICY
  | @as("CAPABILITY_AUTO_EXPAND") #CAPABILITY_AUTO_EXPAND
  | @as("CAPABILITY_NAMED_IAM") #CAPABILITY_NAMED_IAM
  | @as("CAPABILITY_IAM") #CAPABILITY_IAM
]
type __listOf__string = array<__string>
type __listOfCapability = array<capability>
@ocaml.doc("<p>An application version summary.</p>")
type versionSummary = {
  @ocaml.doc(
    "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
  )
  @as("SourceCodeUrl")
  sourceCodeUrl: option<__string>,
  @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
  @as("SemanticVersion")
  semanticVersion: __string,
  @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
  creationTime: __string,
  @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">Tag</a>
 </i> Data Type.</p>")
type tag = {
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">
 Tag</a>
 </i>
 Data Type.</p>")
  @as("Value")
  value: __string,
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">Tag</a>
 </i> Data Type.</p>")
  @as("Key")
  key: __string,
}
@ocaml.doc("<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>
 </i> Data Type.</p>")
type rollbackTrigger = {
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>
 </i> Data Type.</p>")
  @as("Type")
  type_: __string,
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>
 </i> Data Type.</p>")
  @as("Arn")
  arn: __string,
}
@ocaml.doc("<p>Parameter value of the application.</p>")
type parameterValue = {
  @ocaml.doc("<p>The input value associated with the parameter.</p>") @as("Value") value: __string,
  @ocaml.doc("<p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation
 uses the default value that is specified in your template.</p>")
  @as("Name")
  name: __string,
}
@ocaml.doc("<p>A nested application summary.</p>")
type applicationDependencySummary = {
  @ocaml.doc("<p>The semantic version of the nested application.</p>") @as("SemanticVersion")
  semanticVersion: __string,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the nested application.</p>")
  @as("ApplicationId")
  applicationId: __string,
}
type __listOfVersionSummary = array<versionSummary>
type __listOfTag = array<tag>
type __listOfRollbackTrigger = array<rollbackTrigger>
type __listOfParameterValue = array<parameterValue>
type __listOfApplicationDependencySummary = array<applicationDependencySummary>
@ocaml.doc("<p>Parameters supported by the application.</p>")
type parameterDefinition = {
  @ocaml.doc("<p>The type of the parameter.</p><p>Valid values: String | Number | List&lt;Number> | CommaDelimitedList
 </p><p>
 String: A literal string.</p><p>For example, users can specify \"MyUserName\".</p><p>
 Number: An integer or float. AWS CloudFormation validates the parameter value as a number. However, when you use the
 parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.</p><p>For example, users might specify \"8888\".</p><p>
 List&lt;Number>: An array of integers or floats that are separated by commas. AWS CloudFormation validates the parameter value as numbers. However, when
 you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.</p><p>For example, users might specify \"80,20\", and then Ref results in [\"80\",\"20\"].</p><p>
 CommaDelimitedList: An array of literal strings that are separated by commas. The total number of strings should be one more than the total number of commas.
 Also, each member string is space-trimmed.</p><p>For example, users might specify \"test,dev,prod\", and then Ref results in [\"test\",\"dev\",\"prod\"].</p>")
  @as("Type")
  type_: option<__string>,
  @ocaml.doc("<p>A list of AWS SAM resources that use this parameter.</p>")
  @as("ReferencedByResources")
  referencedByResources: __listOf__string,
  @ocaml.doc("<p>Whether to mask the parameter value whenever anyone makes a call that describes the stack. If you set the
 value to true, the parameter value is masked with asterisks (*****).</p>")
  @as("NoEcho")
  noEcho: option<__boolean>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("Name") name: __string,
  @ocaml.doc(
    "<p>A numeric value that determines the smallest numeric value that you want to allow for Number types.</p>"
  )
  @as("MinValue")
  minValue: option<__integer>,
  @ocaml.doc(
    "<p>An integer value that determines the smallest number of characters that you want to allow for String types.</p>"
  )
  @as("MinLength")
  minLength: option<__integer>,
  @ocaml.doc(
    "<p>A numeric value that determines the largest numeric value that you want to allow for Number types.</p>"
  )
  @as("MaxValue")
  maxValue: option<__integer>,
  @ocaml.doc(
    "<p>An integer value that determines the largest number of characters that you want to allow for String types.</p>"
  )
  @as("MaxLength")
  maxLength: option<__integer>,
  @ocaml.doc("<p>A string of up to 4,000 characters that describes the parameter.</p>")
  @as("Description")
  description: option<__string>,
  @ocaml.doc("<p>A value of the appropriate type for the template to use if no value is specified when a stack is created.
 If you define constraints for the parameter, you must specify a value that adheres to those constraints.</p>")
  @as("DefaultValue")
  defaultValue: option<__string>,
  @ocaml.doc("<p>A string that explains a constraint when the constraint is violated. For example, without a constraint description,
 a parameter that has an allowed pattern of [A-Za-z0-9]+ displays the following error message when the user
 specifies an invalid value:</p><p>
 Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+
 </p><p>By adding a constraint description, such as \"must contain only uppercase and lowercase letters and numbers,\" you can display
 the following customized error message:</p><p>
 Malformed input-Parameter MyParameter must contain only uppercase and lowercase letters and numbers.
 </p>")
  @as("ConstraintDescription")
  constraintDescription: option<__string>,
  @ocaml.doc("<p>An array containing the list of values allowed for the parameter.</p>")
  @as("AllowedValues")
  allowedValues: option<__listOf__string>,
  @ocaml.doc("<p>A regular expression that represents the patterns to allow for String types.</p>")
  @as("AllowedPattern")
  allowedPattern: option<__string>,
}
@ocaml.doc("<p>Summary of details about the application.</p>")
type applicationSummary = {
  @ocaml.doc(
    "<p>A valid identifier from <a href=\"https://spdx.org/licenses/\">https://spdx.org/licenses/</a>.</p>"
  )
  @as("SpdxLicenseId")
  spdxLicenseId: option<__string>,
  @ocaml.doc(
    "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
  )
  @as("Name")
  name: __string,
  @ocaml.doc(
    "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
  )
  @as("Labels")
  labels: option<__listOf__string>,
  @ocaml.doc(
    "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
  )
  @as("HomePageUrl")
  homePageUrl: option<__string>,
  @ocaml.doc(
    "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
  )
  @as("Description")
  description: __string,
  @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
  creationTime: option<__string>,
  @ocaml.doc(
    "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
  )
  @as("Author")
  author: __string,
  @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>Policy statement applied to the application.</p>")
type applicationPolicyStatement = {
  @ocaml.doc("<p>A unique ID for the statement.</p>") @as("StatementId")
  statementId: option<__string>,
  @ocaml.doc("<p>An array of AWS account IDs, or * to make the application public.</p>")
  @as("Principals")
  principals: __listOf__string,
  @ocaml.doc(
    "<p>An array of PrinciplalOrgIDs, which corresponds to AWS IAM <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#principal-org-id\">aws:PrincipalOrgID</a> global condition key.</p>"
  )
  @as("PrincipalOrgIDs")
  principalOrgIDs: option<__listOf__string>,
  @ocaml.doc("<p>For the list of actions supported for this operation, see <a href=\"https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions\">Application 
 Permissions</a>.</p>")
  @as("Actions")
  actions: __listOf__string,
}
type __listOfParameterDefinition = array<parameterDefinition>
type __listOfApplicationSummary = array<applicationSummary>
type __listOfApplicationPolicyStatement = array<applicationPolicyStatement>
@ocaml.doc("<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>
 </i> Data Type.</p>")
type rollbackConfiguration = {
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>
 </i> Data Type.</p>")
  @as("RollbackTriggers")
  rollbackTriggers: option<__listOfRollbackTrigger>,
  @ocaml.doc("<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>
 </i> Data Type.</p>")
  @as("MonitoringTimeInMinutes")
  monitoringTimeInMinutes: option<__integer>,
}
@ocaml.doc("<p>Application version details.</p>")
type version = {
  @ocaml.doc("<p>A link to the packaged AWS SAM template of your application.</p>")
  @as("TemplateUrl")
  templateUrl: __string,
  @ocaml.doc(
    "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
  )
  @as("SourceCodeUrl")
  sourceCodeUrl: option<__string>,
  @ocaml.doc(
    "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
  )
  @as("SourceCodeArchiveUrl")
  sourceCodeArchiveUrl: option<__string>,
  @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
  @as("SemanticVersion")
  semanticVersion: __string,
  @ocaml.doc("<p>Whether all of the AWS resources contained in this application are supported in the region
 in which it is being retrieved.</p>")
  @as("ResourcesSupported")
  resourcesSupported: __boolean,
  @ocaml.doc("<p>A list of values that you must specify before you can deploy certain applications.
 Some applications might include resources that can affect permissions in your AWS
 account, for example, by creating new AWS Identity and Access Management (IAM) users.
 For those applications, you must explicitly acknowledge their capabilities by
 specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
 CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
 CAPABILITY_NAMED_IAM:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.
 If the application contains IAM resources, you can specify either CAPABILITY_IAM
 or CAPABILITY_NAMED_IAM. If the application contains IAM resources
 with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
 CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
 all permissions associated with the application before deploying. If you don't specify
 this parameter for an application that requires capabilities, the call will fail.</p>")
  @as("RequiredCapabilities")
  requiredCapabilities: __listOfCapability,
  @ocaml.doc("<p>An array of parameter types supported by the application.</p>")
  @as("ParameterDefinitions")
  parameterDefinitions: __listOfParameterDefinition,
  @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
  creationTime: __string,
  @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
  applicationId: __string,
}
@ocaml.doc("<p>The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
 and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
 see Serverless Computing and Applications on the AWS website.</p><p>The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
 all levels can get started with serverless computing without needing to learn anything new. You can use category 
 keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
 You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
 configure any required fields, and deploy it with a few clicks. </p><p>You can also easily publish applications, sharing them publicly with the community at large, or privately
 within your team or across your organization. To publish a serverless application (or app), you can use the
 AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
 code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
 For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
 GitHub repository.</p><p>The AWS Serverless Application Repository Developer Guide contains more information about the two developer
 experiences available:</p><ul>
 <li>
 <p>Consuming Applications – Browse for applications and view information about them, including
 source code and readme files. Also install, configure, and deploy applications of your choosing. </p>
 <p>Publishing Applications – Configure and upload applications to make them available to other
 developers, and publish new versions of applications. </p>
 </li>
 </ul>")
module UnshareApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS Organization ID to unshare the application from.</p>")
    @as("OrganizationId")
    organizationId: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }

  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "UnshareApplicationCommand"
  let make = (~organizationId, ~applicationId, ()) =>
    new({organizationId: organizationId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetCloudFormationTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
    )
    @as("TemplateId")
    templateId: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>A link to the template that can be used to deploy the application using
 AWS CloudFormation.</p>")
    @as("TemplateUrl")
    templateUrl: option<__string>,
    @ocaml.doc(
      "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
    )
    @as("TemplateId")
    templateId: option<__string>,
    @ocaml.doc("<p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED
 </p>")
    @as("Status")
    status: option<status>,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>The date and time this template expires. Templates
 expire 1 hour after creation.</p>")
    @as("ExpirationTime")
    expirationTime: option<__string>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetCloudFormationTemplateCommand"
  let make = (~templateId, ~applicationId, ()) =>
    new({templateId: templateId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }

  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCloudFormationTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>A link to the template that can be used to deploy the application using
 AWS CloudFormation.</p>")
    @as("TemplateUrl")
    templateUrl: option<__string>,
    @ocaml.doc(
      "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
    )
    @as("TemplateId")
    templateId: option<__string>,
    @ocaml.doc("<p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED
 </p>")
    @as("Status")
    status: option<status>,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>The date and time this template expires. Templates
 expire 1 hour after creation.</p>")
    @as("ExpirationTime")
    expirationTime: option<__string>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateCloudFormationTemplateCommand"
  let make = (~applicationId, ~semanticVersion=?, ()) =>
    new({semanticVersion: semanticVersion, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The total number of items to return.</p>") @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>An array of version summaries for the application.</p>") @as("Versions")
    versions: option<__listOfVersionSummary>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationVersionsCommand"
  let make = (~applicationId, ~nextToken=?, ~maxItems=?, ()) =>
    new({nextToken: nextToken, maxItems: maxItems, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplicationDependencies = {
  type t
  type request = {
    @ocaml.doc("<p>The semantic version of the application to get.</p>") @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>A token to specify where to start paginating.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The total number of items to return.</p>") @as("MaxItems")
    maxItems: option<maxItems>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of application summaries nested in the application.</p>")
    @as("Dependencies")
    dependencies: option<__listOfApplicationDependencySummary>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationDependenciesCommand"
  let make = (~applicationId, ~semanticVersion=?, ~nextToken=?, ~maxItems=?, ()) =>
    new({
      semanticVersion: semanticVersion,
      nextToken: nextToken,
      maxItems: maxItems,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutApplicationPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>An array of policy statements applied to the application.</p>") @as("Statements")
    statements: __listOfApplicationPolicyStatement,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>An array of policy statements applied to the application.</p>") @as("Statements")
    statements: option<__listOfApplicationPolicyStatement>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "PutApplicationPolicyCommand"
  let make = (~statements, ~applicationId, ()) =>
    new({statements: statements, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {
    @ocaml.doc("<p>A token to specify where to start paginating.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The total number of items to return.</p>") @as("MaxItems")
    maxItems: option<maxItems>,
  }
  type response = {
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of application summaries.</p>") @as("Applications")
    applications: option<__listOfApplicationSummary>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ~maxItems=?, ()) => new({nextToken: nextToken, maxItems: maxItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>An array of policy statements applied to the application.</p>") @as("Statements")
    statements: option<__listOfApplicationPolicyStatement>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetApplicationPolicyCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCloudFormationChangeSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
    )
    @as("TemplateId")
    templateId: option<__string>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("Tags")
    tags: option<__listOfTag>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("StackName")
    stackName: __string,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("RollbackConfiguration")
    rollbackConfiguration: option<rollbackConfiguration>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("ResourceTypes")
    resourceTypes: option<__listOf__string>,
    @ocaml.doc("<p>A list of parameter values for the parameters of the application.</p>")
    @as("ParameterOverrides")
    parameterOverrides: option<__listOfParameterValue>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("NotificationArns")
    notificationArns: option<__listOf__string>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("ClientToken")
    clientToken: option<__string>,
    @ocaml.doc("<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>
 </i> API.</p>")
    @as("ChangeSetName")
    changeSetName: option<__string>,
    @ocaml.doc("<p>A list of values that you must specify before you can deploy certain applications.
 Some applications might include resources that can affect permissions in your AWS
 account, for example, by creating new AWS Identity and Access Management (IAM) users.
 For those applications, you must explicitly acknowledge their capabilities by
 specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
 CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
 CAPABILITY_NAMED_IAM:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.
 If the application contains IAM resources, you can specify either CAPABILITY_IAM
 or CAPABILITY_NAMED_IAM. If the application contains IAM resources
 with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS:TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
 CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
 all permissions associated with the application before deploying. If you don't specify
 this parameter for an application that requires capabilities, the call will fail.</p>")
    @as("Capabilities")
    capabilities: option<__listOf__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the stack.</p>") @as("StackId") stackId: option<__string>,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the change set.</p><p>Length constraints: Minimum length of 1.</p><p>Pattern: ARN:[-a-zA-Z0-9:/]*</p>"
    )
    @as("ChangeSetId")
    changeSetId: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateCloudFormationChangeSetCommand"
  let make = (
    ~stackName,
    ~applicationId,
    ~templateId=?,
    ~tags=?,
    ~semanticVersion=?,
    ~rollbackConfiguration=?,
    ~resourceTypes=?,
    ~parameterOverrides=?,
    ~notificationArns=?,
    ~description=?,
    ~clientToken=?,
    ~changeSetName=?,
    ~capabilities=?,
    (),
  ) =>
    new({
      templateId: templateId,
      tags: tags,
      stackName: stackName,
      semanticVersion: semanticVersion,
      rollbackConfiguration: rollbackConfiguration,
      resourceTypes: resourceTypes,
      parameterOverrides: parameterOverrides,
      notificationArns: notificationArns,
      description: description,
      clientToken: clientToken,
      changeSetName: changeSetName,
      capabilities: capabilities,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplicationVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A link to the packaged AWS SAM template of your application.</p>")
    @as("TemplateUrl")
    templateUrl: option<__string>,
    @ocaml.doc("<p>The raw packaged AWS SAM template of your application.</p>") @as("TemplateBody")
    templateBody: option<__string>,
    @ocaml.doc(
      "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
    )
    @as("SourceCodeUrl")
    sourceCodeUrl: option<__string>,
    @ocaml.doc(
      "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
    )
    @as("SourceCodeArchiveUrl")
    sourceCodeArchiveUrl: option<__string>,
    @ocaml.doc("<p>The semantic version of the new version.</p>") @as("SemanticVersion")
    semanticVersion: __string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>A link to the packaged AWS SAM template of your application.</p>")
    @as("TemplateUrl")
    templateUrl: option<__string>,
    @ocaml.doc(
      "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
    )
    @as("SourceCodeUrl")
    sourceCodeUrl: option<__string>,
    @ocaml.doc(
      "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
    )
    @as("SourceCodeArchiveUrl")
    sourceCodeArchiveUrl: option<__string>,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>Whether all of the AWS resources contained in this application are supported in the region
 in which it is being retrieved.</p>")
    @as("ResourcesSupported")
    resourcesSupported: option<__boolean>,
    @ocaml.doc("<p>A list of values that you must specify before you can deploy certain applications.
 Some applications might include resources that can affect permissions in your AWS
 account, for example, by creating new AWS Identity and Access Management (IAM) users.
 For those applications, you must explicitly acknowledge their capabilities by
 specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
 CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
 CAPABILITY_NAMED_IAM:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.
 If the application contains IAM resources, you can specify either CAPABILITY_IAM
 or CAPABILITY_NAMED_IAM. If the application contains IAM resources
 with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and
 <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
 CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
 all permissions associated with the application before deploying. If you don't specify
 this parameter for an application that requires capabilities, the call will fail.</p>")
    @as("RequiredCapabilities")
    requiredCapabilities: option<__listOfCapability>,
    @ocaml.doc("<p>An array of parameter types supported by the application.</p>")
    @as("ParameterDefinitions")
    parameterDefinitions: option<__listOfParameterDefinition>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateApplicationVersionCommand"
  let make = (
    ~semanticVersion,
    ~applicationId,
    ~templateUrl=?,
    ~templateBody=?,
    ~sourceCodeUrl=?,
    ~sourceCodeArchiveUrl=?,
    (),
  ) =>
    new({
      templateUrl: templateUrl,
      templateBody: templateBody,
      sourceCodeUrl: sourceCodeUrl,
      sourceCodeArchiveUrl: sourceCodeArchiveUrl,
      semanticVersion: semanticVersion,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
    )
    @as("ReadmeUrl")
    readmeUrl: option<__string>,
    @ocaml.doc(
      "<p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
    )
    @as("ReadmeBody")
    readmeBody: option<__string>,
    @ocaml.doc(
      "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
    )
    @as("Labels")
    labels: option<__listOf__string>,
    @ocaml.doc(
      "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
    )
    @as("HomePageUrl")
    homePageUrl: option<__string>,
    @ocaml.doc(
      "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc(
      "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
    )
    @as("Author")
    author: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>Version information about the application.</p>") @as("Version")
    version: option<version>,
    @ocaml.doc(
      "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
    )
    @as("VerifiedAuthorUrl")
    verifiedAuthorUrl: option<__string>,
    @ocaml.doc("<p>A valid identifier from https://spdx.org/licenses/.</p>") @as("SpdxLicenseId")
    spdxLicenseId: option<__string>,
    @ocaml.doc(
      "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
    )
    @as("ReadmeUrl")
    readmeUrl: option<__string>,
    @ocaml.doc(
      "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
    )
    @as("LicenseUrl")
    licenseUrl: option<__string>,
    @ocaml.doc(
      "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
    )
    @as("Labels")
    labels: option<__listOf__string>,
    @ocaml.doc(
      "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
    )
    @as("IsVerifiedAuthor")
    isVerifiedAuthor: option<__boolean>,
    @ocaml.doc(
      "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
    )
    @as("HomePageUrl")
    homePageUrl: option<__string>,
    @ocaml.doc(
      "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc(
      "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
    )
    @as("Author")
    author: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (
    ~applicationId,
    ~readmeUrl=?,
    ~readmeBody=?,
    ~labels=?,
    ~homePageUrl=?,
    ~description=?,
    ~author=?,
    (),
  ) =>
    new({
      readmeUrl: readmeUrl,
      readmeBody: readmeBody,
      labels: labels,
      homePageUrl: homePageUrl,
      description: description,
      author: author,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The semantic version of the application to get.</p>") @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationId")
    applicationId: __string,
  }
  type response = {
    @ocaml.doc("<p>Version information about the application.</p>") @as("Version")
    version: option<version>,
    @ocaml.doc(
      "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
    )
    @as("VerifiedAuthorUrl")
    verifiedAuthorUrl: option<__string>,
    @ocaml.doc("<p>A valid identifier from https://spdx.org/licenses/.</p>") @as("SpdxLicenseId")
    spdxLicenseId: option<__string>,
    @ocaml.doc(
      "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
    )
    @as("ReadmeUrl")
    readmeUrl: option<__string>,
    @ocaml.doc(
      "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
    )
    @as("LicenseUrl")
    licenseUrl: option<__string>,
    @ocaml.doc(
      "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
    )
    @as("Labels")
    labels: option<__listOf__string>,
    @ocaml.doc(
      "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
    )
    @as("IsVerifiedAuthor")
    isVerifiedAuthor: option<__boolean>,
    @ocaml.doc(
      "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
    )
    @as("HomePageUrl")
    homePageUrl: option<__string>,
    @ocaml.doc(
      "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc(
      "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
    )
    @as("Author")
    author: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "GetApplicationCommand"
  let make = (~applicationId, ~semanticVersion=?, ()) =>
    new({semanticVersion: semanticVersion, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>"
    )
    @as("TemplateUrl")
    templateUrl: option<__string>,
    @ocaml.doc("<p>The local raw packaged AWS SAM template file of your application.
 The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>")
    @as("TemplateBody")
    templateBody: option<__string>,
    @ocaml.doc(
      "<p>A valid identifier from <a href=\"https://spdx.org/licenses/\">https://spdx.org/licenses/</a>.</p>"
    )
    @as("SpdxLicenseId")
    spdxLicenseId: option<__string>,
    @ocaml.doc(
      "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
    )
    @as("SourceCodeUrl")
    sourceCodeUrl: option<__string>,
    @ocaml.doc(
      "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
    )
    @as("SourceCodeArchiveUrl")
    sourceCodeArchiveUrl: option<__string>,
    @ocaml.doc("<p>The semantic version of the application:</p><p>
 <a href=\"https://semver.org/\">https://semver.org/</a>
 </p>")
    @as("SemanticVersion")
    semanticVersion: option<__string>,
    @ocaml.doc(
      "<p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>"
    )
    @as("ReadmeUrl")
    readmeUrl: option<__string>,
    @ocaml.doc("<p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
 The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>")
    @as("ReadmeBody")
    readmeBody: option<__string>,
    @ocaml.doc(
      "<p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
    )
    @as("Name")
    name: __string,
    @ocaml.doc(
      "<p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>"
    )
    @as("LicenseUrl")
    licenseUrl: option<__string>,
    @ocaml.doc("<p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
 The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>")
    @as("LicenseBody")
    licenseBody: option<__string>,
    @ocaml.doc(
      "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
    )
    @as("Labels")
    labels: option<__listOf__string>,
    @ocaml.doc(
      "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
    )
    @as("HomePageUrl")
    homePageUrl: option<__string>,
    @ocaml.doc(
      "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
    )
    @as("Description")
    description: __string,
    @ocaml.doc(
      "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
    )
    @as("Author")
    author: __string,
  }
  type response = {
    @ocaml.doc("<p>Version information about the application.</p>") @as("Version")
    version: option<version>,
    @ocaml.doc(
      "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
    )
    @as("VerifiedAuthorUrl")
    verifiedAuthorUrl: option<__string>,
    @ocaml.doc("<p>A valid identifier from https://spdx.org/licenses/.</p>") @as("SpdxLicenseId")
    spdxLicenseId: option<__string>,
    @ocaml.doc(
      "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
    )
    @as("ReadmeUrl")
    readmeUrl: option<__string>,
    @ocaml.doc(
      "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
    )
    @as("Name")
    name: option<__string>,
    @ocaml.doc(
      "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
    )
    @as("LicenseUrl")
    licenseUrl: option<__string>,
    @ocaml.doc(
      "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
    )
    @as("Labels")
    labels: option<__listOf__string>,
    @ocaml.doc(
      "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
    )
    @as("IsVerifiedAuthor")
    isVerifiedAuthor: option<__boolean>,
    @ocaml.doc(
      "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
    )
    @as("HomePageUrl")
    homePageUrl: option<__string>,
    @ocaml.doc(
      "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The date and time this resource was created.</p>") @as("CreationTime")
    creationTime: option<__string>,
    @ocaml.doc(
      "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
    )
    @as("Author")
    author: option<__string>,
    @ocaml.doc("<p>The application Amazon Resource Name (ARN).</p>") @as("ApplicationId")
    applicationId: option<__string>,
  }
  @module("@aws-sdk/client-serverlessrepo") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (
    ~name,
    ~description,
    ~author,
    ~templateUrl=?,
    ~templateBody=?,
    ~spdxLicenseId=?,
    ~sourceCodeUrl=?,
    ~sourceCodeArchiveUrl=?,
    ~semanticVersion=?,
    ~readmeUrl=?,
    ~readmeBody=?,
    ~licenseUrl=?,
    ~licenseBody=?,
    ~labels=?,
    ~homePageUrl=?,
    (),
  ) =>
    new({
      templateUrl: templateUrl,
      templateBody: templateBody,
      spdxLicenseId: spdxLicenseId,
      sourceCodeUrl: sourceCodeUrl,
      sourceCodeArchiveUrl: sourceCodeArchiveUrl,
      semanticVersion: semanticVersion,
      readmeUrl: readmeUrl,
      readmeBody: readmeBody,
      name: name,
      licenseUrl: licenseUrl,
      licenseBody: licenseBody,
      labels: labels,
      homePageUrl: homePageUrl,
      description: description,
      author: author,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
