type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-appconfig") @new
external createClient: unit => awsServiceClient = "AppConfigClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type validatorType = [@as("LAMBDA") #LAMBDA | @as("JSON_SCHEMA") #JSON_SCHEMA]
type uri = string
type triggeredBy = [
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("CLOUDWATCH_ALARM") #CLOUDWATCH_ALARM
  | @as("APPCONFIG") #APPCONFIG
  | @as("USER") #USER
]
type tagValue = string
type tagKey = string
type stringWithLengthBetween1And64 = string
type stringWithLengthBetween1And255 = string
type stringWithLengthBetween0And32768 = string
type string_ = string
type roleArn = string
type replicateTo = [@as("SSM_DOCUMENT") #SSM_DOCUMENT | @as("NONE") #NONE]
type percentage = float
type nextToken = string
type name = string
type minutesBetween0And24Hours = int
type maxResults = int
type iso8601DateTime = Js.Date.t
type integer_ = int
type id = string
type growthType = [@as("EXPONENTIAL") #EXPONENTIAL | @as("LINEAR") #LINEAR]
type growthFactor = float
type float_ = float
type environmentState = [
  | @as("ROLLED_BACK") #ROLLED_BACK
  | @as("ROLLING_BACK") #ROLLING_BACK
  | @as("DEPLOYING") #DEPLOYING
  | @as("READY_FOR_DEPLOYMENT") #READY_FOR_DEPLOYMENT
]
type description = string
type deploymentStrategyId = string
type deploymentState = [
  | @as("ROLLED_BACK") #ROLLED_BACK
  | @as("ROLLING_BACK") #ROLLING_BACK
  | @as("COMPLETE") #COMPLETE
  | @as("DEPLOYING") #DEPLOYING
  | @as("VALIDATING") #VALIDATING
  | @as("BAKING") #BAKING
]
type deploymentEventType = [
  | @as("DEPLOYMENT_COMPLETED") #DEPLOYMENT_COMPLETED
  | @as("DEPLOYMENT_STARTED") #DEPLOYMENT_STARTED
  | @as("BAKE_TIME_STARTED") #BAKE_TIME_STARTED
  | @as("ROLLBACK_COMPLETED") #ROLLBACK_COMPLETED
  | @as("ROLLBACK_STARTED") #ROLLBACK_STARTED
  | @as("PERCENTAGE_UPDATED") #PERCENTAGE_UPDATED
]
type bytesMeasure = [@as("KILOBYTES") #KILOBYTES]
type blob = NodeJs.Buffer.t
type arn = string
type validatorTypeList = array<validatorType>
@ocaml.doc("<p>A validator provides a syntactic or semantic check to ensure the configuration you want
         to deploy functions as intended. To validate your application configuration data, you
         provide a schema or a Lambda function that runs against the configuration. The
         configuration deployment or update can only proceed when the configuration data is
         valid.</p>")
type validator = {
  @ocaml.doc("<p>Either the JSON Schema content or the Amazon Resource Name (ARN) of an AWS Lambda
         function.</p>")
  @as("Content")
  content: stringWithLengthBetween0And32768,
  @ocaml.doc("<p>AppConfig supports validators of type <code>JSON_SCHEMA</code> and
         <code>LAMBDA</code>
         </p>")
  @as("Type")
  type_: validatorType,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Amazon CloudWatch alarms to monitor during the deployment process.</p>")
type monitor = {
  @ocaml.doc("<p>ARN of an IAM role for AppConfig to monitor <code>AlarmArn</code>.</p>")
  @as("AlarmRoleArn")
  alarmRoleArn: option<roleArn>,
  @ocaml.doc("<p>ARN of the Amazon CloudWatch alarm.</p>") @as("AlarmArn") alarmArn: option<arn>,
}
@ocaml.doc("<p>Information about the configuration.</p>")
type hostedConfigurationVersionSummary = {
  @ocaml.doc("<p>A standard MIME type describing the format of the configuration content. For more
         information, see <a href=\"https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>")
  @as("ContentType")
  contentType: option<stringWithLengthBetween1And255>,
  @ocaml.doc("<p>A description of the configuration.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The configuration version.</p>") @as("VersionNumber")
  versionNumber: option<integer_>,
  @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
  configurationProfileId: option<id>,
  @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
}
@ocaml.doc("<p>Information about the deployment.</p>")
type deploymentSummary = {
  @ocaml.doc("<p>Time the deployment completed.</p>") @as("CompletedAt")
  completedAt: option<iso8601DateTime>,
  @ocaml.doc("<p>Time the deployment started.</p>") @as("StartedAt")
  startedAt: option<iso8601DateTime>,
  @ocaml.doc("<p>The percentage of targets for which the deployment is available.</p>")
  @as("PercentageComplete")
  percentageComplete: option<percentage>,
  @ocaml.doc("<p>The state of the deployment.</p>") @as("State") state: option<deploymentState>,
  @ocaml.doc("<p>The amount of time AppConfig monitors for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
  @as("FinalBakeTimeInMinutes")
  finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
  @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
  @as("GrowthFactor")
  growthFactor: option<percentage>,
  @ocaml.doc("<p>The algorithm used to define how percentage grows over time.</p>")
  @as("GrowthType")
  growthType: option<growthType>,
  @ocaml.doc("<p>Total amount of time the deployment lasted.</p>")
  @as("DeploymentDurationInMinutes")
  deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
  @ocaml.doc("<p>The version of the configuration.</p>") @as("ConfigurationVersion")
  configurationVersion: option<version>,
  @ocaml.doc("<p>The name of the configuration.</p>") @as("ConfigurationName")
  configurationName: option<name>,
  @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
  deploymentNumber: option<integer_>,
}
type deploymentStrategy = {
  @ocaml.doc("<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>")
  @as("ReplicateTo")
  replicateTo: option<replicateTo>,
  @ocaml.doc("<p>The amount of time AppConfig monitored for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
  @as("FinalBakeTimeInMinutes")
  finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
  @ocaml.doc("<p>The percentage of targets that received a deployed configuration during each
         interval.</p>")
  @as("GrowthFactor")
  growthFactor: option<percentage>,
  @ocaml.doc("<p>The algorithm used to define how percentage grew over time.</p>") @as("GrowthType")
  growthType: option<growthType>,
  @ocaml.doc("<p>Total amount of time the deployment lasted.</p>")
  @as("DeploymentDurationInMinutes")
  deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
  @ocaml.doc("<p>The description of the deployment strategy.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the deployment strategy.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The deployment strategy ID.</p>") @as("Id") id: option<id>,
}
@ocaml.doc("<p>An object that describes a deployment event.</p>")
type deploymentEvent = {
  @ocaml.doc("<p>The date and time the event occurred.</p>") @as("OccurredAt")
  occurredAt: option<iso8601DateTime>,
  @ocaml.doc("<p>A description of the deployment event. Descriptions include, but are not limited to, the
         user account or the CloudWatch alarm ARN that initiated a rollback, the percentage of hosts
         that received the deployment, or in the case of an internal error, a recommendation to
         attempt a new deployment.</p>")
  @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The entity that triggered the deployment event. Events can be triggered by a user, AWS
         AppConfig, an Amazon CloudWatch alarm, or an internal error.</p>")
  @as("TriggeredBy")
  triggeredBy: option<triggeredBy>,
  @ocaml.doc("<p>The type of deployment event. Deployment event types include the start, stop, or
         completion of a deployment; a percentage update; the start or stop of a bake period; the
         start or completion of a rollback.</p>")
  @as("EventType")
  eventType: option<deploymentEventType>,
}
type application = {
  @ocaml.doc("<p>The description of the application.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The application name.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The application ID.</p>") @as("Id") id: option<id>,
}
type validatorList = array<validator>
type monitorList = array<monitor>
type hostedConfigurationVersionSummaryList = array<hostedConfigurationVersionSummary>
type deploymentStrategyList = array<deploymentStrategy>
type deploymentList = array<deploymentSummary>
type deploymentEvents = array<deploymentEvent>
@ocaml.doc("<p>A summary of a configuration profile.</p>")
type configurationProfileSummary = {
  @ocaml.doc("<p>The types of validators in the configuration profile.</p>") @as("ValidatorTypes")
  validatorTypes: option<validatorTypeList>,
  @ocaml.doc("<p>The URI location of the configuration.</p>") @as("LocationUri")
  locationUri: option<uri>,
  @ocaml.doc("<p>The name of the configuration profile.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The ID of the configuration profile.</p>") @as("Id") id: option<id>,
  @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
}
type applicationList = array<application>
type environment = {
  @ocaml.doc("<p>Amazon CloudWatch alarms monitored during the deployment.</p>") @as("Monitors")
  monitors: option<monitorList>,
  @ocaml.doc("<p>The state of the environment. An environment can be in one of the following states:
            <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
            <code>ROLLED_BACK</code>
         </p>")
  @as("State")
  state: option<environmentState>,
  @ocaml.doc("<p>The description of the environment.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the environment.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The environment ID.</p>") @as("Id") id: option<id>,
  @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
}
type configurationProfileSummaryList = array<configurationProfileSummary>
type environmentList = array<environment>
@ocaml.doc("<fullname>AWS AppConfig</fullname>
         <p>Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage, and quickly deploy
         application configurations. AppConfig supports controlled deployments to applications of any
         size and includes built-in validation checks and monitoring. You can use AppConfig with
         applications hosted on Amazon EC2 instances, AWS Lambda, containers, mobile applications, or IoT
         devices.</p>

         <p>To prevent errors when deploying application configurations, especially for production
         systems where a simple typo could cause an unexpected outage, AppConfig includes validators.
         A validator provides a syntactic or semantic check to ensure that the configuration you
         want to deploy works as intended. To validate your application configuration data, you
         provide a schema or a Lambda function that runs against the configuration. The
         configuration deployment or update can only proceed when the configuration data is
         valid.</p>

         <p>During a configuration deployment, AppConfig monitors the application to ensure that the
         deployment is successful. If the system encounters an error, AppConfig rolls back the change
         to minimize impact for your application users. You can configure a deployment strategy for
         each application or environment that includes deployment criteria, including velocity, bake
         time, and alarms to monitor. Similar to error monitoring, if a deployment triggers an
         alarm, AppConfig automatically rolls back to the previous version. </p>

         <p>AppConfig supports multiple use cases. Here are some examples.</p>
         <ul>
            <li>
               <p>
                  <b>Application tuning</b>: Use AppConfig to carefully
               introduce changes to your application that can only be tested with production
               traffic.</p>
            </li>
            <li>
               <p>
                  <b>Feature toggle</b>: Use AppConfig to turn on new
               features that require a timely deployment, such as a product launch or announcement.
            </p>
            </li>
            <li>
               <p>
                  <b>Allow list</b>: Use AppConfig to allow premium
               subscribers to access paid content. </p>
            </li>
            <li>
               <p>
                  <b>Operational issues</b>: Use AppConfig to reduce stress
               on your application when a dependency or other external factor impacts the
               system.</p>
            </li>
         </ul>
         <p>This reference is intended to be used with the <a href=\"http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html\">AWS AppConfig User Guide</a>.</p>")
module ValidateConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the configuration to validate.</p>") @as("ConfigurationVersion")
    configurationVersion: version,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }

  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "ValidateConfigurationCommand"
  let make = (~configurationVersion, ~configurationProfileId, ~applicationId, ()) =>
    new({
      configurationVersion: configurationVersion,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDeploymentStrategy = {
  type t
  type request = {
    @ocaml.doc("<p>The algorithm used to define how percentage grows over time. AWS AppConfig supports the
         following growth types:</p>
         <p>
            <b>Linear</b>: For this type, AppConfig processes the
         deployment by increments of the growth factor evenly distributed over the deployment time.
         For example, a linear deployment that uses a growth factor of 20 initially makes the
         configuration available to 20 percent of the targets. After 1/5th of the deployment time
         has passed, the system updates the percentage to 40 percent. This continues until 100% of
         the targets are set to receive the deployed configuration.</p>

         <p>
            <b>Exponential</b>: For this type, AppConfig processes the
         deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
         formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
         the number of steps until the configuration is deployed to all targets. For example, if you
         specify a growth factor of 2, then the system rolls out the configuration as
         follows:</p>
         <p>
            <code>2*(2^0)</code>
         </p>
         <p>
            <code>2*(2^1)</code>
         </p>
         <p>
            <code>2*(2^2)</code>
         </p>
         <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
         targets, 8% of the targets, and continues until the configuration has been deployed to all
         targets.</p>")
    @as("GrowthType")
    growthType: option<growthType>,
    @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
    @as("GrowthFactor")
    growthFactor: option<growthFactor>,
    @ocaml.doc("<p>The amount of time AppConfig monitors for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
    @as("FinalBakeTimeInMinutes")
    finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>Total amount of time for a deployment to last.</p>")
    @as("DeploymentDurationInMinutes")
    deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>A description of the deployment strategy.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The deployment strategy ID.</p>") @as("DeploymentStrategyId")
    deploymentStrategyId: deploymentStrategyId,
  }
  type response = deploymentStrategy
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "UpdateDeploymentStrategyCommand"
  let make = (
    ~deploymentStrategyId,
    ~growthType=?,
    ~growthFactor=?,
    ~finalBakeTimeInMinutes=?,
    ~deploymentDurationInMinutes=?,
    ~description=?,
    (),
  ) =>
    new({
      growthType: growthType,
      growthFactor: growthFactor,
      finalBakeTimeInMinutes: finalBakeTimeInMinutes,
      deploymentDurationInMinutes: deploymentDurationInMinutes,
      description: description,
      deploymentStrategyId: deploymentStrategyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the application.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the application.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = application
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "UpdateApplicationCommand"
  let make = (~applicationId, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHostedConfigurationVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version.</p>") @as("VersionNumber") versionNumber: integer_,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>A standard MIME type describing the format of the configuration content. For more
         information, see <a href=\"https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And255>,
    @ocaml.doc("<p>The content of the configuration or the configuration data.</p>") @as("Content")
    content: option<blob>,
    @ocaml.doc("<p>A description of the configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version.</p>") @as("VersionNumber")
    versionNumber: option<integer_>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: option<id>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "GetHostedConfigurationVersionCommand"
  let make = (~versionNumber, ~configurationProfileId, ~applicationId, ()) =>
    new({
      versionNumber: versionNumber,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentStrategy = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the deployment strategy to get.</p>") @as("DeploymentStrategyId")
    deploymentStrategyId: deploymentStrategyId,
  }
  type response = deploymentStrategy
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "GetDeploymentStrategyCommand"
  let make = (~deploymentStrategyId, ()) => new({deploymentStrategyId: deploymentStrategyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration version returned in the most recent <code>GetConfiguration</code>
         response.</p>
         <important>
            <p>AWS AppConfig uses the value of the <code>ClientConfigurationVersion</code> parameter
            to identify the configuration version on your clients. If you don’t send
               <code>ClientConfigurationVersion</code> with each call to
               <code>GetConfiguration</code>, your clients receive the current configuration. You
            are charged each time your clients receive a configuration.</p>
            <p>To avoid excess charges, we recommend that you include the
               <code>ClientConfigurationVersion</code> value with every call to
               <code>GetConfiguration</code>. This value must be saved on your client. Subsequent
            calls to <code>GetConfiguration</code> must pass this value by using the
               <code>ClientConfigurationVersion</code> parameter. </p>
         </important>
         <p>For more information about working with configurations, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig-retrieving-the-configuration.html\">Retrieving the Configuration</a> in the
         <i>AWS AppConfig User Guide</i>.</p>")
    @as("ClientConfigurationVersion")
    clientConfigurationVersion: option<version>,
    @ocaml.doc("<p>A unique ID to identify the client for the configuration. This ID enables AppConfig to
         deploy the configuration in intervals, as defined in the deployment strategy.</p>")
    @as("ClientId")
    clientId: stringWithLengthBetween1And64,
    @ocaml.doc("<p>The configuration to get. Specify either the configuration name or the configuration
         ID.</p>")
    @as("Configuration")
    configuration: stringWithLengthBetween1And64,
    @ocaml.doc("<p>The environment to get. Specify either the environment name or the environment
         ID.</p>")
    @as("Environment")
    environment: stringWithLengthBetween1And64,
    @ocaml.doc("<p>The application to get. Specify either the application name or the application
         ID.</p>")
    @as("Application")
    application: stringWithLengthBetween1And64,
  }
  type response = {
    @ocaml.doc("<p>A standard MIME type describing the format of the configuration content. For more
         information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>")
    @as("ContentType")
    contentType: option<string_>,
    @ocaml.doc("<p>The configuration version.</p>") @as("ConfigurationVersion")
    configurationVersion: option<version>,
    @ocaml.doc("<p>The content of the configuration or the configuration data.</p>") @as("Content")
    content: option<blob>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "GetConfigurationCommand"
  let make = (
    ~clientId,
    ~configuration,
    ~environment,
    ~application,
    ~clientConfigurationVersion=?,
    (),
  ) =>
    new({
      clientConfigurationVersion: clientConfigurationVersion,
      clientId: clientId,
      configuration: configuration,
      environment: environment,
      application: application,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the application you want to get.</p>") @as("ApplicationId")
    applicationId: id,
  }
  type response = application
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "GetApplicationCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHostedConfigurationVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The versions number to delete.</p>") @as("VersionNumber")
    versionNumber: integer_,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }

  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "DeleteHostedConfigurationVersionCommand"
  let make = (~versionNumber, ~configurationProfileId, ~applicationId, ()) =>
    new({
      versionNumber: versionNumber,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment you want to delete.</p>") @as("EnvironmentId")
    environmentId: id,
    @ocaml.doc("<p>The application ID that includes the environment you want to delete.</p>")
    @as("ApplicationId")
    applicationId: id,
  }

  @module("@aws-sdk/client-appconfig") @new external new: request => t = "DeleteEnvironmentCommand"
  let make = (~environmentId, ~applicationId, ()) =>
    new({environmentId: environmentId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeploymentStrategy = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the deployment strategy you want to delete.</p>")
    @as("DeploymentStrategyId")
    deploymentStrategyId: deploymentStrategyId,
  }

  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "DeleteDeploymentStrategyCommand"
  let make = (~deploymentStrategyId, ()) => new({deploymentStrategyId: deploymentStrategyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the configuration profile you want to delete.</p>")
    @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc(
      "<p>The application ID that includes the configuration profile you want to delete.</p>"
    )
    @as("ApplicationId")
    applicationId: id,
  }

  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "DeleteConfigurationProfileCommand"
  let make = (~configurationProfileId, ~applicationId, ()) =>
    new({configurationProfileId: configurationProfileId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the application to delete.</p>") @as("ApplicationId")
    applicationId: id,
  }

  @module("@aws-sdk/client-appconfig") @new external new: request => t = "DeleteApplicationCommand"
  let make = (~applicationId, ()) => new({applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateHostedConfigurationVersion = {
  type t
  type request = {
    @ocaml.doc("<p>An optional locking token used to prevent race conditions from overwriting configuration
         updates when creating a new version. To ensure your data is not overwritten when creating
         multiple hosted configuration versions in rapid succession, specify the version of the
         latest hosted configuration version.</p>")
    @as("LatestVersionNumber")
    latestVersionNumber: option<integer_>,
    @ocaml.doc("<p>A standard MIME type describing the format of the configuration content. For more
         information, see <a href=\"https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>")
    @as("ContentType")
    contentType: stringWithLengthBetween1And255,
    @ocaml.doc("<p>The content of the configuration or the configuration data.</p>") @as("Content")
    content: blob,
    @ocaml.doc("<p>A description of the configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>A standard MIME type describing the format of the configuration content. For more
         information, see <a href=\"https://docs.aws.amazon.com/https:/www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>")
    @as("ContentType")
    contentType: option<stringWithLengthBetween1And255>,
    @ocaml.doc("<p>The content of the configuration or the configuration data.</p>") @as("Content")
    content: option<blob>,
    @ocaml.doc("<p>A description of the configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version.</p>") @as("VersionNumber")
    versionNumber: option<integer_>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: option<id>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "CreateHostedConfigurationVersionCommand"
  let make = (
    ~contentType,
    ~content,
    ~configurationProfileId,
    ~applicationId,
    ~latestVersionNumber=?,
    ~description=?,
    (),
  ) =>
    new({
      latestVersionNumber: latestVersionNumber,
      contentType: contentType,
      content: content,
      description: description,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to delete.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource for which to remove tags.</p>") @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appconfig") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be
         up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to
         256 characters.</p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource for which to retrieve tags.</p>") @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-appconfig") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: arn}
  type response = {
    @ocaml.doc("<p>Metadata to assign to AppConfig resources. Tags help organize and categorize your
         AppConfig resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentStrategy = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to assign to the deployment strategy. Tags help organize and categorize your
         AppConfig resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>")
    @as("ReplicateTo")
    replicateTo: replicateTo,
    @ocaml.doc("<p>The algorithm used to define how percentage grows over time. AWS AppConfig supports the
         following growth types:</p>
         <p>
            <b>Linear</b>: For this type, AppConfig processes the
         deployment by dividing the total number of targets by the value specified for <code>Step
            percentage</code>. For example, a linear deployment that uses a <code>Step
            percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After
         those deployments are complete, the system deploys the configuration to the next 10
         percent. This continues until 100% of the targets have successfully received the
         configuration.</p>

         <p>
            <b>Exponential</b>: For this type, AppConfig processes the
         deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
         formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
         the number of steps until the configuration is deployed to all targets. For example, if you
         specify a growth factor of 2, then the system rolls out the configuration as
         follows:</p>
         <p>
            <code>2*(2^0)</code>
         </p>
         <p>
            <code>2*(2^1)</code>
         </p>
         <p>
            <code>2*(2^2)</code>
         </p>
         <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
         targets, 8% of the targets, and continues until the configuration has been deployed to all
         targets.</p>")
    @as("GrowthType")
    growthType: option<growthType>,
    @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
    @as("GrowthFactor")
    growthFactor: growthFactor,
    @ocaml.doc("<p>The amount of time AppConfig monitors for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
    @as("FinalBakeTimeInMinutes")
    finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>Total amount of time for a deployment to last.</p>")
    @as("DeploymentDurationInMinutes")
    deploymentDurationInMinutes: minutesBetween0And24Hours,
    @ocaml.doc("<p>A description of the deployment strategy.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the deployment strategy.</p>") @as("Name") name: name,
  }
  type response = deploymentStrategy
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "CreateDeploymentStrategyCommand"
  let make = (
    ~replicateTo,
    ~growthFactor,
    ~deploymentDurationInMinutes,
    ~name,
    ~tags=?,
    ~growthType=?,
    ~finalBakeTimeInMinutes=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      replicateTo: replicateTo,
      growthType: growthType,
      growthFactor: growthFactor,
      finalBakeTimeInMinutes: finalBakeTimeInMinutes,
      deploymentDurationInMinutes: deploymentDurationInMinutes,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to assign to the application. Tags help organize and categorize your AppConfig
         resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>A description of the application.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the application.</p>") @as("Name") name: name,
  }
  type response = application
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "CreateApplicationCommand"
  let make = (~name, ~tags=?, ~description=?, ()) =>
    new({tags: tags, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon CloudWatch alarms to monitor during the deployment process.</p>")
    @as("Monitors")
    monitors: option<monitorList>,
    @ocaml.doc("<p>A description of the environment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the environment.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The environment ID.</p>") @as("EnvironmentId") environmentId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = environment
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "UpdateEnvironmentCommand"
  let make = (~environmentId, ~applicationId, ~monitors=?, ~description=?, ~name=?, ()) =>
    new({
      monitors: monitors,
      description: description,
      name: name,
      environmentId: environmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConfigurationProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A list of methods for validating the configuration.</p>") @as("Validators")
    validators: option<validatorList>,
    @ocaml.doc("<p>The ARN of an IAM role with permission to access the configuration at the specified
         LocationUri.</p>")
    @as("RetrievalRoleArn")
    retrievalRoleArn: option<roleArn>,
    @ocaml.doc("<p>A description of the configuration profile.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the configuration profile.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The ID of the configuration profile.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of methods for validating the configuration.</p>") @as("Validators")
    validators: option<validatorList>,
    @ocaml.doc("<p>The ARN of an IAM role with permission to access the configuration at the specified
         LocationUri.</p>")
    @as("RetrievalRoleArn")
    retrievalRoleArn: option<roleArn>,
    @ocaml.doc("<p>The URI location of the configuration.</p>") @as("LocationUri")
    locationUri: option<uri>,
    @ocaml.doc("<p>The configuration profile description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the configuration profile.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "UpdateConfigurationProfileCommand"
  let make = (
    ~configurationProfileId,
    ~applicationId,
    ~validators=?,
    ~retrievalRoleArn=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      validators: validators,
      retrievalRoleArn: retrievalRoleArn,
      description: description,
      name: name,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
    deploymentNumber: integer_,
    @ocaml.doc("<p>The environment ID.</p>") @as("EnvironmentId") environmentId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The time the deployment completed. </p>") @as("CompletedAt")
    completedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The time the deployment started.</p>") @as("StartedAt")
    startedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The percentage of targets for which the deployment is available.</p>")
    @as("PercentageComplete")
    percentageComplete: option<percentage>,
    @ocaml.doc("<p>A list containing all events related to a deployment. The most recent events are
         displayed first.</p>")
    @as("EventLog")
    eventLog: option<deploymentEvents>,
    @ocaml.doc("<p>The state of the deployment.</p>") @as("State") state: option<deploymentState>,
    @ocaml.doc("<p>The amount of time AppConfig monitored for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
    @as("FinalBakeTimeInMinutes")
    finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
    @as("GrowthFactor")
    growthFactor: option<percentage>,
    @ocaml.doc("<p>The algorithm used to define how percentage grew over time.</p>")
    @as("GrowthType")
    growthType: option<growthType>,
    @ocaml.doc("<p>Total amount of time the deployment lasted.</p>")
    @as("DeploymentDurationInMinutes")
    deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The description of the deployment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version that was deployed.</p>") @as("ConfigurationVersion")
    configurationVersion: option<version>,
    @ocaml.doc("<p>Information about the source location of the configuration.</p>")
    @as("ConfigurationLocationUri")
    configurationLocationUri: option<uri>,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("ConfigurationName")
    configurationName: option<name>,
    @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
    deploymentNumber: option<integer_>,
    @ocaml.doc("<p>The ID of the configuration profile that was deployed.</p>")
    @as("ConfigurationProfileId")
    configurationProfileId: option<id>,
    @ocaml.doc("<p>The ID of the deployment strategy that was deployed.</p>")
    @as("DeploymentStrategyId")
    deploymentStrategyId: option<id>,
    @ocaml.doc("<p>The ID of the environment that was deployed.</p>") @as("EnvironmentId")
    environmentId: option<id>,
    @ocaml.doc("<p>The ID of the application that was deployed.</p>") @as("ApplicationId")
    applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "StopDeploymentCommand"
  let make = (~deploymentNumber, ~environmentId, ~applicationId, ()) =>
    new({
      deploymentNumber: deploymentNumber,
      environmentId: environmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig
         resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>A description of the deployment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version to deploy.</p>") @as("ConfigurationVersion")
    configurationVersion: version,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The deployment strategy ID.</p>") @as("DeploymentStrategyId")
    deploymentStrategyId: deploymentStrategyId,
    @ocaml.doc("<p>The environment ID.</p>") @as("EnvironmentId") environmentId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The time the deployment completed. </p>") @as("CompletedAt")
    completedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The time the deployment started.</p>") @as("StartedAt")
    startedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The percentage of targets for which the deployment is available.</p>")
    @as("PercentageComplete")
    percentageComplete: option<percentage>,
    @ocaml.doc("<p>A list containing all events related to a deployment. The most recent events are
         displayed first.</p>")
    @as("EventLog")
    eventLog: option<deploymentEvents>,
    @ocaml.doc("<p>The state of the deployment.</p>") @as("State") state: option<deploymentState>,
    @ocaml.doc("<p>The amount of time AppConfig monitored for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
    @as("FinalBakeTimeInMinutes")
    finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
    @as("GrowthFactor")
    growthFactor: option<percentage>,
    @ocaml.doc("<p>The algorithm used to define how percentage grew over time.</p>")
    @as("GrowthType")
    growthType: option<growthType>,
    @ocaml.doc("<p>Total amount of time the deployment lasted.</p>")
    @as("DeploymentDurationInMinutes")
    deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The description of the deployment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version that was deployed.</p>") @as("ConfigurationVersion")
    configurationVersion: option<version>,
    @ocaml.doc("<p>Information about the source location of the configuration.</p>")
    @as("ConfigurationLocationUri")
    configurationLocationUri: option<uri>,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("ConfigurationName")
    configurationName: option<name>,
    @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
    deploymentNumber: option<integer_>,
    @ocaml.doc("<p>The ID of the configuration profile that was deployed.</p>")
    @as("ConfigurationProfileId")
    configurationProfileId: option<id>,
    @ocaml.doc("<p>The ID of the deployment strategy that was deployed.</p>")
    @as("DeploymentStrategyId")
    deploymentStrategyId: option<id>,
    @ocaml.doc("<p>The ID of the environment that was deployed.</p>") @as("EnvironmentId")
    environmentId: option<id>,
    @ocaml.doc("<p>The ID of the application that was deployed.</p>") @as("ApplicationId")
    applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "StartDeploymentCommand"
  let make = (
    ~configurationVersion,
    ~configurationProfileId,
    ~deploymentStrategyId,
    ~environmentId,
    ~applicationId,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      description: description,
      configurationVersion: configurationVersion,
      configurationProfileId: configurationProfileId,
      deploymentStrategyId: deploymentStrategyId,
      environmentId: environmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHostedConfigurationVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<hostedConfigurationVersionSummaryList>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "ListHostedConfigurationVersionsCommand"
  let make = (~configurationProfileId, ~applicationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      configurationProfileId: configurationProfileId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeployments = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The environment ID.</p>") @as("EnvironmentId") environmentId: id,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<deploymentList>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "ListDeploymentsCommand"
  let make = (~environmentId, ~applicationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      environmentId: environmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentStrategies = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<deploymentStrategyList>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "ListDeploymentStrategiesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<applicationList>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment you wnat to get.</p>") @as("EnvironmentId")
    environmentId: id,
    @ocaml.doc("<p>The ID of the application that includes the environment you want to get.</p>")
    @as("ApplicationId")
    applicationId: id,
  }
  type response = environment
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "GetEnvironmentCommand"
  let make = (~environmentId, ~applicationId, ()) =>
    new({environmentId: environmentId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
    deploymentNumber: integer_,
    @ocaml.doc("<p>The ID of the environment that includes the deployment you want to get. </p>")
    @as("EnvironmentId")
    environmentId: id,
    @ocaml.doc("<p>The ID of the application that includes the deployment you want to get. </p>")
    @as("ApplicationId")
    applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The time the deployment completed. </p>") @as("CompletedAt")
    completedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The time the deployment started.</p>") @as("StartedAt")
    startedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>The percentage of targets for which the deployment is available.</p>")
    @as("PercentageComplete")
    percentageComplete: option<percentage>,
    @ocaml.doc("<p>A list containing all events related to a deployment. The most recent events are
         displayed first.</p>")
    @as("EventLog")
    eventLog: option<deploymentEvents>,
    @ocaml.doc("<p>The state of the deployment.</p>") @as("State") state: option<deploymentState>,
    @ocaml.doc("<p>The amount of time AppConfig monitored for alarms before considering the deployment to be
         complete and no longer eligible for automatic roll back.</p>")
    @as("FinalBakeTimeInMinutes")
    finalBakeTimeInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The percentage of targets to receive a deployed configuration during each
         interval.</p>")
    @as("GrowthFactor")
    growthFactor: option<percentage>,
    @ocaml.doc("<p>The algorithm used to define how percentage grew over time.</p>")
    @as("GrowthType")
    growthType: option<growthType>,
    @ocaml.doc("<p>Total amount of time the deployment lasted.</p>")
    @as("DeploymentDurationInMinutes")
    deploymentDurationInMinutes: option<minutesBetween0And24Hours>,
    @ocaml.doc("<p>The description of the deployment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The configuration version that was deployed.</p>") @as("ConfigurationVersion")
    configurationVersion: option<version>,
    @ocaml.doc("<p>Information about the source location of the configuration.</p>")
    @as("ConfigurationLocationUri")
    configurationLocationUri: option<uri>,
    @ocaml.doc("<p>The name of the configuration.</p>") @as("ConfigurationName")
    configurationName: option<name>,
    @ocaml.doc("<p>The sequence number of the deployment.</p>") @as("DeploymentNumber")
    deploymentNumber: option<integer_>,
    @ocaml.doc("<p>The ID of the configuration profile that was deployed.</p>")
    @as("ConfigurationProfileId")
    configurationProfileId: option<id>,
    @ocaml.doc("<p>The ID of the deployment strategy that was deployed.</p>")
    @as("DeploymentStrategyId")
    deploymentStrategyId: option<id>,
    @ocaml.doc("<p>The ID of the environment that was deployed.</p>") @as("EnvironmentId")
    environmentId: option<id>,
    @ocaml.doc("<p>The ID of the application that was deployed.</p>") @as("ApplicationId")
    applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "GetDeploymentCommand"
  let make = (~deploymentNumber, ~environmentId, ~applicationId, ()) =>
    new({
      deploymentNumber: deploymentNumber,
      environmentId: environmentId,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConfigurationProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the configuration profile you want to get.</p>")
    @as("ConfigurationProfileId")
    configurationProfileId: id,
    @ocaml.doc("<p>The ID of the application that includes the configuration profile you want to
         get.</p>")
    @as("ApplicationId")
    applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of methods for validating the configuration.</p>") @as("Validators")
    validators: option<validatorList>,
    @ocaml.doc("<p>The ARN of an IAM role with permission to access the configuration at the specified
         LocationUri.</p>")
    @as("RetrievalRoleArn")
    retrievalRoleArn: option<roleArn>,
    @ocaml.doc("<p>The URI location of the configuration.</p>") @as("LocationUri")
    locationUri: option<uri>,
    @ocaml.doc("<p>The configuration profile description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the configuration profile.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "GetConfigurationProfileCommand"
  let make = (~configurationProfileId, ~applicationId, ()) =>
    new({configurationProfileId: configurationProfileId, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig
         resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Amazon CloudWatch alarms to monitor during the deployment process.</p>")
    @as("Monitors")
    monitors: option<monitorList>,
    @ocaml.doc("<p>A description of the environment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the environment.</p>") @as("Name") name: name,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = environment
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "CreateEnvironmentCommand"
  let make = (~name, ~applicationId, ~tags=?, ~monitors=?, ~description=?, ()) =>
    new({
      tags: tags,
      monitors: monitors,
      description: description,
      name: name,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to assign to the configuration profile. Tags help organize and categorize your
         AppConfig resources. Each tag consists of a key and an optional value, both of which you
         define.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of methods for validating the configuration.</p>") @as("Validators")
    validators: option<validatorList>,
    @ocaml.doc("<p>The ARN of an IAM role with permission to access the configuration at the specified
         LocationUri.</p>")
    @as("RetrievalRoleArn")
    retrievalRoleArn: option<roleArn>,
    @ocaml.doc("<p>A URI to locate the configuration. You can specify a Systems Manager (SSM) document, an SSM
         Parameter Store parameter, or an Amazon S3 object. For an SSM document, specify either the
         document name in the format <code>ssm-document://<Document_name></code> or the Amazon
         Resource Name (ARN). For a parameter, specify either the parameter name in the format
            <code>ssm-parameter://<Parameter_name></code> or the ARN. For an Amazon S3 object,
         specify the URI in the following format: <code>s3://<bucket>/<objectKey>
         </code>. Here is an example: s3://my-bucket/my-app/us-east-1/my-config.json</p>")
    @as("LocationUri")
    locationUri: uri,
    @ocaml.doc("<p>A description of the configuration profile.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A name for the configuration profile.</p>") @as("Name") name: name,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of methods for validating the configuration.</p>") @as("Validators")
    validators: option<validatorList>,
    @ocaml.doc("<p>The ARN of an IAM role with permission to access the configuration at the specified
         LocationUri.</p>")
    @as("RetrievalRoleArn")
    retrievalRoleArn: option<roleArn>,
    @ocaml.doc("<p>The URI location of the configuration.</p>") @as("LocationUri")
    locationUri: option<uri>,
    @ocaml.doc("<p>The configuration profile description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the configuration profile.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>The configuration profile ID.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: option<id>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "CreateConfigurationProfileCommand"
  let make = (
    ~locationUri,
    ~name,
    ~applicationId,
    ~tags=?,
    ~validators=?,
    ~retrievalRoleArn=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      validators: validators,
      retrievalRoleArn: retrievalRoleArn,
      locationUri: locationUri,
      description: description,
      name: name,
      applicationId: applicationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConfigurationProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<configurationProfileSummaryList>,
  }
  @module("@aws-sdk/client-appconfig") @new
  external new: request => t = "ListConfigurationProfilesCommand"
  let make = (~applicationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEnvironments = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that
         you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The application ID.</p>") @as("ApplicationId") applicationId: id,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The elements from this collection.</p>") @as("Items")
    items: option<environmentList>,
  }
  @module("@aws-sdk/client-appconfig") @new external new: request => t = "ListEnvironmentsCommand"
  let make = (~applicationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, applicationId: applicationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
