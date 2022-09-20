type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
external createClient: unit => awsServiceClient = "AWSMigrationHubStrategyRecommendationClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type importS3Key = string
type importS3Bucket = string
type errorMessage = string
type versionControl = [@as("GITHUB_ENTERPRISE") #GITHUB_ENTERPRISE | @as("GITHUB") #GITHUB]
type transformationToolName = [
  | @as("Native SQL Server Backup/Restore") #Native_SQL_Server_Backup_Restore
  | @as("Database Migration Service") #Database_Migration_Service
  | @as("Schema Conversion Tool") #Schema_Conversion_Tool
  | @as("In Place Operating System Upgrade") #In_Place_Operating_System_Upgrade
  | @as("Strategy Recommendation Support") #Strategy_Recommendation_Support
  | @as("Application Migration Service") #Application_Migration_Service
  | @as("Windows Web Application Migration Assistant") #Windows_Web_Application_Migration_Assistant
  | @as("End of Support Migration") #End_Of_Support_Migration
  | @as("Porting Assistant For .NET") #Porting_Assistant_For_NET
  | @as("App2Container") #App2Container
]
type tranformationToolInstallationLink = string
type tranformationToolDescription = string
type timeStamp = Js.Date.t
type targetDestination = [
  | @as("Amazon Relational Database Service") #Amazon_Relational_Database_Service
  | @as("Amazon DynamoDB") #Amazon_DynamoDB
  | @as("Amazon DocumentDB") #Amazon_DocumentDB
  | @as("Amazon Relational Database Service on PostgreSQL")
  #Amazon_Relational_Database_Service_On_PostgreSQL
  | @as("Amazon Relational Database Service on MySQL") #Amazon_Relational_Database_Service_On_MySQL
  | @as("Aurora PostgreSQL") #Aurora_PostgreSQL
  | @as("Aurora MySQL") #Aurora_MySQL
  | @as("Amazon Elastic Kubernetes Service (EKS)") #Amazon_Elastic_Kubernetes_Service_EKS
  | @as("Amazon Elastic Container Service (ECS)") #Amazon_Elastic_Container_Service_ECS
  | @as("Amazon Elastic Cloud Compute (EC2)") #Amazon_Elastic_Cloud_Compute_EC2
  | @as("AWS Fargate") #AWS_Fargate
  | @as("AWS Elastic BeanStalk") #AWS_Elastic_BeanStalk
  | @as("None specified") #None_Specified
]
type targetDatabaseEngine = [
  | @as("MongoDB") #MongoDB
  | @as("Db2 LUW") #Db2_LUW
  | @as("SAP") #SAP
  | @as("MariaDB") #MariaDB
  | @as("Oracle Database") #Oracle_Database
  | @as("Microsoft SQL Server") #Microsoft_SQL_Server
  | @as("MySQL") #MySQL
  | @as("AWS PostgreSQL") #AWS_PostgreSQL
  | @as("Amazon Aurora") #Amazon_Aurora
  | @as("None specified") #None_Specified
]
type string_ = string
type strategyRecommendation = [
  | @as("notRecommended") #NotRecommended
  | @as("viableOption") #ViableOption
  | @as("recommended") #Recommended
]
type strategy = [
  | @as("Repurchase") #Repurchase
  | @as("Relocate") #Relocate
  | @as("Retain") #Retain
  | @as("Replatform") #Replatform
  | @as("Refactor") #Refactor
  | @as("Retirement") #Retirement
  | @as("Rehost") #Rehost
]
type statusMessage = string
type srcCodeOrDbAnalysisStatus = [
  | @as("ANALYSIS_FAILED") #ANALYSIS_FAILED
  | @as("ANALYSIS_SUCCESS") #ANALYSIS_SUCCESS
  | @as("ANALYSIS_STARTED") #ANALYSIS_STARTED
  | @as("ANALYSIS_TO_BE_SCHEDULED") #ANALYSIS_TO_BE_SCHEDULED
]
type sourceVersion = string
type sortOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type severity = [@as("LOW") #LOW | @as("MEDIUM") #MEDIUM | @as("HIGH") #HIGH]
type serverOsType = [
  | @as("Other") #Other
  | @as("Redhat") #Redhat
  | @as("EndOfSupportWindowsServer") #EndOfSupportWindowsServer
  | @as("AmazonLinux") #AmazonLinux
  | @as("WindowsServer") #WindowsServer
]
type serverId = string
type serverCriteria = [
  | @as("SERVER_ID") #SERVER_ID
  | @as("DESTINATION") #DESTINATION
  | @as("STRATEGY") #STRATEGY
  | @as("OS_NAME") #OS_NAME
  | @as("NOT_DEFINED") #NOT_DEFINED
]
type selfManageTargetDestination = [
  | @as("Amazon Elastic Kubernetes Service (EKS)") #Amazon_Elastic_Kubernetes_Service_EKS
  | @as("Amazon Elastic Container Service (ECS)") #Amazon_Elastic_Container_Service_ECS
  | @as("Amazon Elastic Cloud Compute (EC2)") #Amazon_Elastic_Cloud_Compute_EC2
  | @as("None specified") #None_Specified
]
type secretsManagerKey = string
type s3Key = string
type s3Bucket = string
type runTimeAssessmentStatus = [
  | @as("dataCollectionTaskPartialSuccess") #DataCollectionTaskPartialSuccess
  | @as("dataCollectionTaskFailed") #DataCollectionTaskFailed
  | @as("dataCollectionTaskSuccess") #DataCollectionTaskSuccess
  | @as("dataCollectionTaskStopped") #DataCollectionTaskStopped
  | @as("dataCollectionTaskStarted") #DataCollectionTaskStarted
  | @as("dataCollectionTaskScheduled") #DataCollectionTaskScheduled
  | @as("dataCollectionTaskToBeScheduled") #DataCollectionTaskToBeScheduled
]
type resourceSubType = [
  | @as("DatabaseProcess") #DatabaseProcess
  | @as("Process") #Process
  | @as("Database") #Database
]
type resourceName = string
type resourceId = string
type recommendationTaskId = string
type recommendationReportTimeStamp = Js.Date.t
type recommendationReportStatusMessage = string
type recommendationReportStatus = [
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("FAILED") #FAILED
]
type outputFormat = [@as("Json") #Json | @as("Excel") #Excel]
type osversion = string
type ostype = [@as("WINDOWS") #WINDOWS | @as("LINUX") #LINUX]
type noPreferenceTargetDestination = [
  | @as("Amazon Elastic Kubernetes Service (EKS)") #Amazon_Elastic_Kubernetes_Service_EKS
  | @as("Amazon Elastic Container Service (ECS)") #Amazon_Elastic_Container_Service_ECS
  | @as("Amazon Elastic Cloud Compute (EC2)") #Amazon_Elastic_Cloud_Compute_EC2
  | @as("AWS Fargate") #AWS_Fargate
  | @as("AWS Elastic BeanStalk") #AWS_Elastic_BeanStalk
  | @as("None specified") #None_Specified
]
type nextToken = string
type netMask = string
type maxResult = int
type macAddress = string
type location = string
type interfaceName = string
type integer_ = int
type inclusionStatus = [
  | @as("includeInAssessment") #IncludeInAssessment
  | @as("excludeFromAssessment") #ExcludeFromAssessment
]
type importFileTaskStatus = [
  | @as("DeleteSuccess") #DeleteSuccess
  | @as("DeletePartialSuccess") #DeletePartialSuccess
  | @as("DeleteFailed") #DeleteFailed
  | @as("DeleteInProgress") #DeleteInProgress
  | @as("ImportSuccess") #ImportSuccess
  | @as("ImportPartialSuccess") #ImportPartialSuccess
  | @as("ImportFailed") #ImportFailed
  | @as("ImportInProgress") #ImportInProgress
]
type ipaddress = string
type homogeneousTargetDatabaseEngine = [@as("None specified") #None_Specified]
type heterogeneousTargetDatabaseEngine = [
  | @as("MongoDB") #MongoDB
  | @as("Db2 LUW") #Db2_LUW
  | @as("SAP") #SAP
  | @as("MariaDB") #MariaDB
  | @as("Oracle Database") #Oracle_Database
  | @as("Microsoft SQL Server") #Microsoft_SQL_Server
  | @as("MySQL") #MySQL
  | @as("AWS PostgreSQL") #AWS_PostgreSQL
  | @as("Amazon Aurora") #Amazon_Aurora
  | @as("None specified") #None_Specified
]
type groupName = [@as("ExternalId") #ExternalId]
type databaseManagementPreference = [
  | @as("No preference") #No_Preference
  | @as("Self-manage") #Self_Manage
  | @as("AWS-managed") #AWS_Managed
]
type dataSourceType = [
  | @as("MPA") #MPA
  | @as("ApplicationDiscoveryService") #ApplicationDiscoveryService
]
type collectorHealth = [
  | @as("COLLECTOR_UNHEALTHY") #COLLECTOR_UNHEALTHY
  | @as("COLLECTOR_HEALTHY") #COLLECTOR_HEALTHY
]
type businessGoalsInteger = int
type boolean_ = bool
type awsManagedTargetDestination = [
  | @as("AWS Fargate") #AWS_Fargate
  | @as("AWS Elastic BeanStalk") #AWS_Elastic_BeanStalk
  | @as("None specified") #None_Specified
]
type asyncTaskId = string
type assessmentStatus = [
  | @as("STOPPED") #STOPPED
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type applicationComponentId = string
type applicationComponentCriteria = [
  | @as("DESTINATION") #DESTINATION
  | @as("STRATEGY") #STRATEGY
  | @as("APP_TYPE") #APP_TYPE
  | @as("SERVER_ID") #SERVER_ID
  | @as("APP_NAME") #APP_NAME
  | @as("NOT_DEFINED") #NOT_DEFINED
]
type appType = [
  | @as("Other") #Other
  | @as("Oracle") #Oracle
  | @as("IIS") #IIS
  | @as("SQLServer") #SQLServer
  | @as("Java") #Java
  | @as("DotNetFramework") #DotNetFramework
]
type antipatternReportStatus = [
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("FAILED") #FAILED
]
@ocaml.doc("<p>
      Information of the transformation tool that can be used to migrate and modernize the application.
    </p>")
type transformationTool = {
  @ocaml.doc("<p>
      URL for installing the tool.
    </p>")
  tranformationToolInstallationLink: option<tranformationToolInstallationLink>,
  @ocaml.doc("<p>
      Description of the tool.
    </p>")
  description: option<tranformationToolDescription>,
  @ocaml.doc("<p>
      Name of the tool. 
    </p>")
  name: option<transformationToolName>,
}
type targetDatabaseEngines = array<targetDatabaseEngine>
@ocaml.doc("<p>
      Object containing the summary of the strategy recommendations.
    </p>")
type strategySummary = {
  @ocaml.doc("<p>
      The count of recommendations per strategy.
    </p>")
  count: option<integer_>,
  @ocaml.doc("<p>
      The name of recommended strategy.
    </p>")
  strategy: option<strategy>,
}
@ocaml.doc("<p>
      Information about all the available strategy options for migrating and modernizing an application component.
    </p>")
type strategyOption = {
  @ocaml.doc("<p>
      Indicates if a specific strategy is preferred for the application component.
    </p>")
  isPreferred: option<boolean_>,
  @ocaml.doc("<p>
      Destination information about where the application component can migrate to. For example, <code>EC2</code>, <code>ECS</code>, and so on.
    </p>")
  targetDestination: option<targetDestination>,
  @ocaml.doc("<p>
      The name of the tool that can be used to transform an application component using this strategy.
    </p>")
  toolName: option<transformationToolName>,
  @ocaml.doc("<p>
      Type of transformation. For example, Rehost, Replatform, and so on.
    </p>")
  strategy: option<strategy>,
}
@ocaml.doc("<p>
      Object containing source code information that is linked to an application component.
    </p>")
type sourceCodeRepository = {
  @ocaml.doc("<p>
      The type of repository to use for the source code.
    </p>")
  versionControlType: option<string_>,
  @ocaml.doc("<p>
      The branch of the source code.
    </p>")
  branch: option<string_>,
  @ocaml.doc("<p>
      The repository name for the source code.
    </p>")
  repository: option<string_>,
}
@ocaml.doc("<p>
      Object containing source code information that is linked to an application component.
    </p>")
type sourceCode = {
  @ocaml.doc("<p>
      The repository name for the source code.
    </p>")
  location: option<location>,
  @ocaml.doc("<p>
      The branch of the source code.
    </p>")
  sourceVersion: option<sourceVersion>,
  @ocaml.doc("<p>
      The type of repository to use for the source code.
    </p>")
  versionControl: option<versionControl>,
}
@ocaml.doc("<p>
      Object containing details about the servers imported by Application Discovery Service
    </p>")
type serverSummary = {
  @ocaml.doc("<p>
      Number of servers.
    </p>")
  count: option<integer_>,
  @ocaml.doc("<p>
      Type of operating system for the servers.
    </p>")
  @as("ServerOsType")
  serverOsType: option<serverOsType>,
}
type selfManageTargetDestinations = array<selfManageTargetDestination>
@ocaml.doc("<p> Contains the S3 bucket name and the Amazon S3 key name. </p>")
type s3Object = {
  @ocaml.doc("<p> The Amazon S3 key name. </p>") s3key: option<s3Key>,
  @ocaml.doc("<p> The S3 bucket name. </p>") s3Bucket: option<s3Bucket>,
}
type s3Keys = array<string_>
@ocaml.doc("<p>
      Information about the operating system.
    </p>")
type osinfo = {
  @ocaml.doc("<p>
      Information about the version of operating system.
    </p>")
  version: option<osversion>,
  @ocaml.doc("<p>
      Information about the type of operating system.
    </p>")
  @as("type")
  type_: option<ostype>,
}
type noPreferenceTargetDestinations = array<noPreferenceTargetDestination>
@ocaml.doc("<p>
      Information about the server's network for which the assessment was run.
    </p>")
type networkInfo = {
  @ocaml.doc("<p>
      Information about the subnet mask of the server for which the assessment was run.
    </p>")
  netMask: netMask,
  @ocaml.doc("<p>
      Information about the MAC address of the server for which the assessment was run.
    </p>")
  macAddress: macAddress,
  @ocaml.doc("<p>
      Information about the IP address of the server for which the assessment was run.
    </p>")
  ipAddress: ipaddress,
  @ocaml.doc("<p>
      Information about the name of the interface of the server for which the assessment was run.
    </p>")
  interfaceName: interfaceName,
}
@ocaml.doc("<p> Information about the import file tasks you request. </p>")
type importFileTaskInformation = {
  @ocaml.doc("<p> The name of the import task given in <code>StartImportFileTask</code>. </p>")
  importName: option<string_>,
  @ocaml.doc("<p> The number of records that failed to be imported. </p>")
  numberOfRecordsFailed: option<integer_>,
  @ocaml.doc("<p> The number of records successfully imported. </p>")
  numberOfRecordsSuccess: option<integer_>,
  @ocaml.doc("<p> The time that the import task completes. </p>") completionTime: option<timeStamp>,
  @ocaml.doc("<p> The Amazon S3 key name for status report of import task. The report contains  details about
      whether each record imported successfully or why it did not. </p>")
  statusReportS3Key: option<importS3Key>,
  @ocaml.doc("<p> The S3 bucket name for status report of import task. </p>")
  statusReportS3Bucket: option<importS3Bucket>,
  @ocaml.doc("<p> The Amazon S3 key name of the import file. </p>") inputS3Key: option<importS3Key>,
  @ocaml.doc("<p> The S3 bucket where the import file is located. </p>")
  inputS3Bucket: option<importS3Bucket>,
  @ocaml.doc("<p> Start time of the import task. </p>") startTime: option<timeStamp>,
  @ocaml.doc("<p> Status of import file task. </p>") status: option<importFileTaskStatus>,
  @ocaml.doc("<p> The ID of the import file task. </p>") id: option<string_>,
}
type homogeneousTargetDatabaseEngines = array<homogeneousTargetDatabaseEngine>
type heterogeneousTargetDatabaseEngines = array<heterogeneousTargetDatabaseEngine>
@ocaml.doc("<p>
      The object containing information about distinct imports or groups for Strategy Recommendations.
    </p>")
type group = {
  @ocaml.doc("<p>
      The value of the specific import group.
    </p>")
  value: option<string_>,
  @ocaml.doc("<p>
      The key of the specific import group.
    </p>")
  name: option<groupName>,
}
@ocaml.doc("<p>
      Configuration information used for assessing databases.
    </p>")
type databaseConfigDetail = {
  @ocaml.doc("<p>
      AWS Secrets Manager key that holds the credentials that you use to connect to a database.
    </p>")
  secretName: option<string_>,
}
@ocaml.doc("<p> Detailed information about an assessment. </p>")
type dataCollectionDetails = {
  @ocaml.doc("<p> The time the assessment completes. </p>") completionTime: option<timeStamp>,
  @ocaml.doc("<p> The start time of assessment. </p>") startTime: option<timeStamp>,
  @ocaml.doc("<p> The number of servers with the assessment status <code>IN_PROGESS</code>. </p>")
  inProgress: option<integer_>,
  @ocaml.doc("<p> The number of successful servers in the assessment. </p>")
  success: option<integer_>,
  @ocaml.doc("<p> The number of failed servers in the assessment. </p>") failed: option<integer_>,
  @ocaml.doc("<p> The total number of servers in the assessment. </p>") servers: option<integer_>,
  @ocaml.doc("<p> The status of the assessment. </p>") status: option<assessmentStatus>,
}
@ocaml.doc("<p>
      Process data collector that runs in the environment that you specify.
    </p>")
type collector = {
  @ocaml.doc("<p>
      Time when the collector last pinged the service.
    </p>")
  lastActivityTimeStamp: option<string_>,
  @ocaml.doc("<p>
      Time when the collector registered with the service.
    </p>")
  registeredTimeStamp: option<string_>,
  @ocaml.doc("<p>
      Current version of the collector that is running in the environment that you specify.
    </p>")
  collectorVersion: option<string_>,
  @ocaml.doc("<p>
      Indicates the health of a collector.
    </p>")
  collectorHealth: option<collectorHealth>,
  @ocaml.doc("<p>
      Hostname of the server that is hosting the collector.
    </p>")
  hostName: option<string_>,
  @ocaml.doc("<p>
      IP address of the server that is hosting the collector.
    </p>")
  ipAddress: option<string_>,
  @ocaml.doc("<p>
      The ID of the collector.
    </p>")
  collectorId: option<string_>,
}
@ocaml.doc("<p>
      Business goals that you specify.
    </p>")
type businessGoals = {
  @ocaml.doc("<p>
      Business goal to reduce license costs.
    </p>")
  licenseCostReduction: option<businessGoalsInteger>,
  @ocaml.doc("<p>
      Business goal to modernize infrastructure by moving to cloud native technologies.
    </p>")
  modernizeInfrastructureWithCloudNativeTechnologies: option<businessGoalsInteger>,
  @ocaml.doc("<p>
      Business goal to reduce the operational overhead on the team by moving into managed services.
    </p>")
  reduceOperationalOverheadWithManagedServices: option<businessGoalsInteger>,
  @ocaml.doc("<p>
      Business goal to achieve migration at a fast pace.
    </p>")
  speedOfMigration: option<businessGoalsInteger>,
}
type awsManagedTargetDestinations = array<awsManagedTargetDestination>
type associatedServerIDs = array<string_>
@ocaml.doc("<p>
      Object containing details about applications as defined in Application Discovery Service.
    </p>")
type associatedApplication = {
  @ocaml.doc("<p>
      ID of the application as defined in Application Discovery Service.
    </p>")
  id: option<string_>,
  @ocaml.doc("<p>
      Name of the application as defined in Application Discovery Service.
    </p>")
  name: option<string_>,
}
@ocaml.doc("<p>
      Contains the summary of application components.
    </p>")
type applicationComponentSummary = {
  @ocaml.doc("<p>
      Contains the count of application type.
    </p>")
  count: option<integer_>,
  @ocaml.doc("<p>
      Contains the name of application types.
    </p>")
  appType: option<appType>,
}
@ocaml.doc("<p>
      Contains the summary of anti-patterns and their severity.
    </p>")
type antipatternSeveritySummary = {
  @ocaml.doc("<p>
      Contains the count of anti-patterns.
    </p>")
  count: option<integer_>,
  @ocaml.doc("<p>
      Contains the severity of anti-patterns.
    </p>")
  severity: option<severity>,
}
type sourceCodeRepositories = array<sourceCodeRepository>
type sourceCodeList = array<sourceCode>
@ocaml.doc("<p> Self-managed resources. </p>")
type selfManageResources = {
  @ocaml.doc("<p> Self-managed resources target destination. </p>")
  targetDestination: selfManageTargetDestinations,
}
@ocaml.doc("<p>
      Contains a recommendation set.
    </p>")
type recommendationSet = {
  @ocaml.doc("<p>
      The recommended strategy.
    </p>")
  strategy: option<strategy>,
  @ocaml.doc("<p>
      The recommended target destination.
    </p>")
  targetDestination: option<targetDestination>,
  @ocaml.doc("<p>
      The target destination for the recommendation set.
    </p>")
  transformationTool: option<transformationTool>,
}
@ocaml.doc("<p>
     Contains detailed information about a recommendation report.
    </p>")
type recommendationReportDetails = {
  @ocaml.doc("<p>
      The Amazon S3 key name of the report file.
    </p>")
  s3Keys: option<s3Keys>,
  @ocaml.doc("<p>
      The S3 bucket where the report file is located.
    </p>")
  s3Bucket: option<string_>,
  @ocaml.doc("<p>
      The time that the recommendation report generation task completes.
    </p>")
  completionTime: option<recommendationReportTimeStamp>,
  @ocaml.doc("<p>
      The time that the recommendation report generation task starts.
    </p>")
  startTime: option<recommendationReportTimeStamp>,
  @ocaml.doc("<p>
      The status message for recommendation report generation.
    </p>")
  statusMessage: option<recommendationReportStatusMessage>,
  @ocaml.doc("<p>
      The status of the recommendation report generation task.
    </p>")
  status: option<recommendationReportStatus>,
}
@ocaml.doc("<p>
      Rank of business goals based on priority.
    </p>")
type prioritizeBusinessGoals = {
  @ocaml.doc("<p>
      Rank of business goals based on priority.
    </p>")
  businessGoals: option<businessGoals>,
}
@ocaml.doc("<p>
      Object containing the choice of application destination that you specify.
    </p>")
type noManagementPreference = {
  @ocaml.doc("<p>
      The choice of application destination that you specify.
    </p>")
  targetDestination: noPreferenceTargetDestinations,
}
@ocaml.doc("<p> The object containing details about database migration preferences, when you have no
      particular preference. </p>")
type noDatabaseMigrationPreference = {
  @ocaml.doc("<p>
      The target database engine for database migration preference that you specify.
    </p>")
  targetDatabaseEngine: targetDatabaseEngines,
}
type networkInfoList = array<networkInfo>
type listStrategySummary = array<strategySummary>
type listServerSummary = array<serverSummary>
type listImportFileTaskInformation = array<importFileTaskInformation>
type listApplicationComponentSummary = array<applicationComponentSummary>
type listAntipatternSeveritySummary = array<antipatternSeveritySummary>
@ocaml.doc("<p>
      The object containing details about homogeneous database preferences.
    </p>")
type homogeneous = {
  @ocaml.doc("<p>
      The target database engine for homogeneous database migration preferences.
    </p>")
  targetDatabaseEngine: option<homogeneousTargetDatabaseEngines>,
}
@ocaml.doc("<p>
      The object containing details about heterogeneous database preferences.
    </p>")
type heterogeneous = {
  @ocaml.doc("<p>
      The target database engine for heterogeneous database migration preference.
    </p>")
  targetDatabaseEngine: heterogeneousTargetDatabaseEngines,
}
type groupIds = array<group>
type collectors = array<collector>
@ocaml.doc("<p>
      Object containing the choice of application destination that you specify.
    </p>")
type awsManagedResources = {
  @ocaml.doc("<p>
      The choice of application destination that you specify.
    </p>")
  targetDestination: awsManagedTargetDestinations,
}
type associatedApplications = array<associatedApplication>
@ocaml.doc("<p>
      Information about the server that hosts application components.
    </p>")
type systemInfo = {
  @ocaml.doc("<p>
      CPU architecture type for the server.
    </p>")
  cpuArchitecture: option<string_>,
  @ocaml.doc("<p>
      Networking information related to a server.
    </p>")
  networkInfoList: option<networkInfoList>,
  @ocaml.doc("<p>
      File system type for the server.
    </p>")
  fileSystemType: option<string_>,
  @ocaml.doc("<p>
      Operating system corresponding to a server.
    </p>")
  osInfo: option<osinfo>,
}
@ocaml.doc("<p> Contains information about a strategy recommendation for a server. </p>")
type serverStrategy = {
  @ocaml.doc("<p> Set to true if the recommendation is set as preferred. </p>")
  isPreferred: option<boolean_>,
  @ocaml.doc("<p> The number of application components with this strategy recommendation running on the
      server. </p>")
  numberOfApplicationComponents: option<integer_>,
  @ocaml.doc("<p> The recommendation status of the strategy for the server. </p>")
  status: option<strategyRecommendation>,
  @ocaml.doc("<p> Strategy recommendation for the server. </p>")
  recommendation: option<recommendationSet>,
}
@ocaml.doc("<p>
      Preferences for migrating an application to AWS.
    </p>")
type managementPreference = {
  @ocaml.doc("<p>
      No specific preference.
    </p>")
  noPreference: option<noManagementPreference>,
  @ocaml.doc("<p>
      Indicates interest in managing your own resources on AWS.
    </p>")
  selfManageResources: option<selfManageResources>,
  @ocaml.doc("<p>
      Indicates interest in solutions that are managed by AWS.
    </p>")
  awsManagedResources: option<awsManagedResources>,
}
module ManagementPreference = {
  type t =
    | NoPreference(noManagementPreference)
    | SelfManageResources(selfManageResources)
    | AwsManagedResources(awsManagedResources)
  exception ManagementPreferenceUnspecified
  let classify = value =>
    switch value {
    | {noPreference: Some(x)} => NoPreference(x)
    | {selfManageResources: Some(x)} => SelfManageResources(x)
    | {awsManagedResources: Some(x)} => AwsManagedResources(x)
    | _ => raise(ManagementPreferenceUnspecified)
    }

  let make = value =>
    switch value {
    | NoPreference(x) => {
        noPreference: Some(x),
        selfManageResources: None,
        awsManagedResources: None,
      }
    | SelfManageResources(x) => {
        selfManageResources: Some(x),
        noPreference: None,
        awsManagedResources: None,
      }
    | AwsManagedResources(x) => {
        awsManagedResources: Some(x),
        noPreference: None,
        selfManageResources: None,
      }
    }
}
@ocaml.doc("<p>
      Preferences for migrating a database to AWS.
    </p>")
type databaseMigrationPreference = {
  @ocaml.doc("<p>
      Indicated that you do not prefer heterogeneous or homogeneous.
    </p>")
  noPreference: option<noDatabaseMigrationPreference>,
  @ocaml.doc("<p> Indicates whether you are interested in moving to the same type of database into AWS.
      For example, from SQL Server in your environment to SQL Server on AWS. </p>")
  homogeneous: option<homogeneous>,
  @ocaml.doc("<p> Indicates whether you are interested in moving from one type of database to another. For
      example, from SQL Server to Amazon Aurora MySQL-Compatible Edition. </p>")
  heterogeneous: option<heterogeneous>,
}
module DatabaseMigrationPreference = {
  type t =
    | NoPreference(noDatabaseMigrationPreference)
    | Homogeneous(homogeneous)
    | Heterogeneous(heterogeneous)
  exception DatabaseMigrationPreferenceUnspecified
  let classify = value =>
    switch value {
    | {noPreference: Some(x)} => NoPreference(x)
    | {homogeneous: Some(x)} => Homogeneous(x)
    | {heterogeneous: Some(x)} => Heterogeneous(x)
    | _ => raise(DatabaseMigrationPreferenceUnspecified)
    }

  let make = value =>
    switch value {
    | NoPreference(x) => {noPreference: Some(x), homogeneous: None, heterogeneous: None}
    | Homogeneous(x) => {homogeneous: Some(x), noPreference: None, heterogeneous: None}
    | Heterogeneous(x) => {heterogeneous: Some(x), noPreference: None, homogeneous: None}
    }
}
@ocaml.doc("<p>
      Contains the summary of the assessment results.
    </p>")
type assessmentSummary = {
  @ocaml.doc("<p>
      The time the assessment was performed.
    </p>")
  lastAnalyzedTimestamp: option<timeStamp>,
  @ocaml.doc("<p>
      The status message of the anti-pattern report.
    </p>")
  antipatternReportStatusMessage: option<statusMessage>,
  @ocaml.doc("<p>
      The status of the anti-pattern report.
    </p>")
  antipatternReportStatus: option<antipatternReportStatus>,
  @ocaml.doc("<p>
      The Amazon S3 object containing the anti-pattern report.
    </p>")
  antipatternReportS3Object: option<s3Object>,
  @ocaml.doc("<p>
      List of ServerSummary.
    </p>")
  listServerSummary: option<listServerSummary>,
  @ocaml.doc("<p>
      List of ApplicationComponentSummary.
    </p>")
  listApplicationComponentSummary: option<listApplicationComponentSummary>,
  @ocaml.doc("<p>
      List of AntipatternSeveritySummary.
    </p>")
  listAntipatternSeveritySummary: option<listAntipatternSeveritySummary>,
  @ocaml.doc("<p>
      List of ApplicationComponentStrategySummary.
    </p>")
  listApplicationComponentStrategySummary: option<listStrategySummary>,
  @ocaml.doc("<p>
      List of ServerStrategySummary.
    </p>")
  listServerStrategySummary: option<listStrategySummary>,
}
@ocaml.doc("<p> Contains information about a strategy recommendation for an application component.
    </p>")
type applicationComponentStrategy = {
  @ocaml.doc("<p> Set to true if the recommendation is set as preferred. </p>")
  isPreferred: option<boolean_>,
  @ocaml.doc("<p> The recommendation status of a strategy for an application component. </p>")
  status: option<strategyRecommendation>,
  @ocaml.doc("<p> Strategy recommendation for the application component. </p>")
  recommendation: option<recommendationSet>,
}
@ocaml.doc("<p> Contains detailed information about an application component. </p>")
type applicationComponentDetail = {
  @ocaml.doc("<p> Set to true if the application component is running on multiple servers.</p>")
  moreServerAssociationExists: option<boolean_>,
  @ocaml.doc("<p> The ID of the server that the application component is running on. </p>")
  associatedServerId: option<serverId>,
  @ocaml.doc("<p> The timestamp of when the application component was assessed. </p>")
  lastAnalyzedTimestamp: option<timeStamp>,
  @ocaml.doc("<p> OS driver. </p>") osDriver: option<string_>,
  @ocaml.doc("<p> OS version. </p>") osVersion: option<string_>,
  @ocaml.doc("<p> The status message for the anti-pattern. </p>")
  antipatternReportStatusMessage: option<statusMessage>,
  @ocaml.doc("<p> The status of the anti-pattern report generation.</p>")
  antipatternReportStatus: option<antipatternReportStatus>,
  @ocaml.doc("<p> The S3 bucket name and the Amazon S3 key name for the anti-pattern report. </p>")
  antipatternReportS3Object: option<s3Object>,
  @ocaml.doc("<p> Indicates whether the application component has been included for server recommendation
      or not. </p>")
  inclusionStatus: option<inclusionStatus>,
  @ocaml.doc("<p> The application component subtype.</p>") resourceSubType: option<resourceSubType>,
  @ocaml.doc("<p> The type of application component. </p>") appType: option<appType>,
  @ocaml.doc("<p> Details about the source code repository associated with the application component.
    </p>")
  sourceCodeRepositories: option<sourceCodeRepositories>,
  @ocaml.doc(
    "<p> Configuration details for the database associated with the application component. </p>"
  )
  databaseConfigDetail: option<databaseConfigDetail>,
  @ocaml.doc("<p> A list of anti-pattern severity summaries. </p>")
  listAntipatternSeveritySummary: option<listAntipatternSeveritySummary>,
  @ocaml.doc("<p> A detailed description of the analysis status and any failure message. </p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p> The status of analysis, if the application component has source code or an associated
      database. </p>")
  analysisStatus: option<srcCodeOrDbAnalysisStatus>,
  @ocaml.doc("<p> The top recommendation set for the application component. </p>")
  recommendationSet: option<recommendationSet>,
  @ocaml.doc("<p> The name of application component. </p>") name: option<resourceName>,
  @ocaml.doc("<p> The ID of the application component. </p>") id: option<resourceId>,
}
type serverStrategies = array<serverStrategy>
@ocaml.doc("<p> Detailed information about a server. </p>")
type serverDetail = {
  @ocaml.doc("<p> The timestamp of when the server was assessed. </p>")
  lastAnalyzedTimestamp: option<timeStamp>,
  @ocaml.doc("<p> The type of server. </p>") serverType: option<string_>,
  @ocaml.doc("<p> A message about the status of the anti-pattern report generation. </p>")
  antipatternReportStatusMessage: option<statusMessage>,
  @ocaml.doc("<p> The status of the anti-pattern report generation. </p>")
  antipatternReportStatus: option<antipatternReportStatus>,
  @ocaml.doc("<p> The S3 bucket name and Amazon S3 key name for anti-pattern report. </p>")
  antipatternReportS3Object: option<s3Object>,
  @ocaml.doc("<p> A list of strategy summaries. </p>")
  applicationComponentStrategySummary: option<listStrategySummary>,
  @ocaml.doc("<p> System information about the server. </p>") systemInfo: option<systemInfo>,
  @ocaml.doc("<p> A list of anti-pattern severity summaries. </p>")
  listAntipatternSeveritySummary: option<listAntipatternSeveritySummary>,
  @ocaml.doc("<p> A message about the status of data collection, which contains detailed descriptions of
      any error messages. </p>")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p> The status of assessment for the server. </p>")
  dataCollectionStatus: option<runTimeAssessmentStatus>,
  @ocaml.doc("<p> A set of recommendations. </p>") recommendationSet: option<recommendationSet>,
  @ocaml.doc("<p> The name of the server. </p>") name: option<resourceName>,
  @ocaml.doc("<p> The server ID. </p>") id: option<resourceId>,
}
@ocaml.doc("<p>
      Preferences on managing your databases on AWS.
    </p>")
type databasePreferences = {
  @ocaml.doc("<p>
      Specifies your preferred migration path.
    </p>")
  databaseMigrationPreference: option<databaseMigrationPreference>,
  @ocaml.doc("<p> Specifies whether you're interested in self-managed databases or databases managed by
      AWS. </p>")
  databaseManagementPreference: option<databaseManagementPreference>,
}
@ocaml.doc("<p>
      Application preferences that you specify.
    </p>")
type applicationPreferences = {
  @ocaml.doc("<p>
      Application preferences that you specify to prefer managed environment.
    </p>")
  managementPreference: option<managementPreference>,
}
type applicationComponentStrategies = array<applicationComponentStrategy>
type applicationComponentDetails = array<applicationComponentDetail>
type serverDetails = array<serverDetail>
@ocaml.doc("<fullname>Migration Hub Strategy Recommendations</fullname>

         <p>This API reference provides descriptions, syntax, and other details about each of the
      actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API
      request parameters and the response. Alternatively, you can use one of the AWS SDKs to access
      an API that is tailored to the programming language or platform that you're using. For more
      information, see <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p>")
module StopAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>")
    assessmentId: asyncTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "StopAssessmentCommand"
  let make = (~assessmentId, ()) => new({assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
      The S3 bucket where all the reports generated by the service are stored.
      The bucket name must begin with <code>migrationhub-strategy-</code>.
    </p>")
    s3bucketForReportData: option<string_>,
    @ocaml.doc("<p>
      The S3 bucket used by the collectors to send analysis data to the service.
      The bucket name must begin with <code>migrationhub-strategy-</code>.
    </p>")
    s3bucketForAnalysisData: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>
      The ID of the assessment.
    </p>")
    assessmentId: option<asyncTaskId>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "StartAssessmentCommand"
  let make = (~s3bucketForReportData=?, ~s3bucketForAnalysisData=?, ()) =>
    new({s3bucketForReportData, s3bucketForAnalysisData})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetImportFileTask = {
  type t
  type request = {
    @ocaml.doc("<p> The ID of the import file task. This ID is returned in the response of
      <a>StartImportFileTask</a>. </p>")
    id: string_,
  }
  type response = {
    @ocaml.doc("<p> The name of the import task given in <a>StartImportFileTask</a>. </p>")
    importName: option<string_>,
    @ocaml.doc("<p> The number of records that failed to be imported. </p>")
    numberOfRecordsFailed: option<integer_>,
    @ocaml.doc("<p> The number of records successfully imported. </p>")
    numberOfRecordsSuccess: option<integer_>,
    @ocaml.doc("<p> The time that the import task completed. </p>")
    completionTime: option<timeStamp>,
    @ocaml.doc("<p> The Amazon S3 key name for status report of import task. The report contains details about
      whether each record imported successfully or why it did not.</p>")
    statusReportS3Key: option<importS3Key>,
    @ocaml.doc("<p> The S3 bucket name for status report of import task. </p>")
    statusReportS3Bucket: option<importS3Bucket>,
    @ocaml.doc("<p> The Amazon S3 key name of the import file. </p>")
    inputS3Key: option<importS3Key>,
    @ocaml.doc("<p> The S3 bucket where import file is located. </p>")
    inputS3Bucket: option<importS3Bucket>,
    @ocaml.doc("<p> Start time of the import task. </p>") startTime: option<timeStamp>,
    @ocaml.doc("<p> Status of import file task. </p>") status: option<importFileTaskStatus>,
    @ocaml.doc(
      "<p> The import file task <code>id</code> returned in the response of <a>StartImportFileTask</a>. </p>"
    )
    id: option<string_>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetImportFileTaskCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServerConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>"
    )
    strategyOption: option<strategyOption>,
    @ocaml.doc("<p> The ID of the server. </p>") serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "UpdateServerConfigCommand"
  let make = (~serverId, ~strategyOption=?, ()) => new({strategyOption, serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>")
    id: asyncTaskId,
  }
  type response = {
    @ocaml.doc("<p> Detailed information about the assessment. </p>")
    dataCollectionDetails: option<dataCollectionDetails>,
    @ocaml.doc("<p> The ID for the specific assessment task. </p>") id: option<asyncTaskId>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetAssessmentCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApplicationComponentConfig = {
  type t
  type request = {
    @ocaml.doc("<p> Database credentials. </p>") secretsManagerKey: option<secretsManagerKey>,
    @ocaml.doc(
      "<p> The list of source code configurations to update for the application component. </p>"
    )
    sourceCodeList: option<sourceCodeList>,
    @ocaml.doc(
      "<p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>"
    )
    strategyOption: option<strategyOption>,
    @ocaml.doc("<p> Indicates whether the application component has been included for server recommendation
      or not. </p>")
    inclusionStatus: option<inclusionStatus>,
    @ocaml.doc(
      "<p> The ID of the application component. The ID is unique within an AWS account. </p>"
    )
    applicationComponentId: applicationComponentId,
  }
  type response = {.}
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "UpdateApplicationComponentConfigCommand"
  let make = (
    ~applicationComponentId,
    ~secretsManagerKey=?,
    ~sourceCodeList=?,
    ~strategyOption=?,
    ~inclusionStatus=?,
    (),
  ) =>
    new({
      secretsManagerKey,
      sourceCodeList,
      strategyOption,
      inclusionStatus,
      applicationComponentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartRecommendationReportGeneration = {
  type t
  type request = {
    @ocaml.doc("<p> Groups the resources in the recommendation report with a unique name. </p>")
    groupIdFilter: option<groupIds>,
    @ocaml.doc(
      "<p> The output format for the recommendation report file. The default format is Microsoft Excel. </p>"
    )
    outputFormat: option<outputFormat>,
  }
  type response = {
    @ocaml.doc("<p> The ID of the recommendation report generation task. </p>")
    id: option<recommendationTaskId>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "StartRecommendationReportGenerationCommand"
  let make = (~groupIdFilter=?, ~outputFormat=?, ()) => new({groupIdFilter, outputFormat})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartImportFileTask = {
  type t
  type request = {
    @ocaml.doc("<p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to
      begin with migrationhub-strategy-. </p>")
    s3bucketForReportData: option<string_>,
    @ocaml.doc("<p>Groups the resources in the import file together with a unique name. This ID can be as
      filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>")
    groupId: option<groupIds>,
    @ocaml.doc("<p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that
      the servers specified in the import file are available in AWS Application Discovery Service. </p>")
    dataSourceType: option<dataSourceType>,
    @ocaml.doc("<p> The Amazon S3 key name of the import file. </p>") s3key: string_,
    @ocaml.doc("<p> The S3 bucket where the import file is located. The bucket name is required to begin with
        <code>migrationhub-strategy-</code>.</p>")
    @as("S3Bucket")
    s3Bucket: importS3Bucket,
    @ocaml.doc("<p> A descriptive name for the request. </p>") name: string_,
  }
  type response = {
    @ocaml.doc(
      "<p> The ID for a specific import task. The ID is unique within an AWS account. </p>"
    )
    id: option<string_>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "StartImportFileTaskCommand"
  let make = (
    ~s3key,
    ~s3Bucket,
    ~name,
    ~s3bucketForReportData=?,
    ~groupId=?,
    ~dataSourceType=?,
    (),
  ) => new({s3bucketForReportData, groupId, dataSourceType, s3key, s3Bucket, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListImportFileTask = {
  type t
  type request = {
    @ocaml.doc("<p> The total number of items to return. The maximum value is 100. </p>")
    maxResults: option<integer_>,
    @ocaml.doc("<p> The token from a previous call that you use to retrieve the next set of results. For example, 
if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
      with a token. You then use the returned token to retrieve the next set of 10. </p>")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p> Lists information about the files you import.</p>")
    taskInfos: option<listImportFileTaskInformation>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "ListImportFileTaskCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCollectors = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"
    )
    maxResults: option<maxResult>,
    @ocaml.doc("<p> The token from a previous call that you use to retrieve the next set of results. For example, 
if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
      with a token. You then use the returned token to retrieve the next set of 10. </p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The list of all the installed collectors. </p>") @as("Collectors")
    collectors: option<collectors>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "ListCollectorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRecommendationReportDetails = {
  type t
  type request = {
    @ocaml.doc("<p> The recommendation report generation task <code>id</code> returned by 
      <a>StartRecommendationReportGeneration</a>. </p>")
    id: recommendationTaskId,
  }
  type response = {
    @ocaml.doc("<p> Detailed information about the recommendation report. </p>")
    recommendationReportDetails: option<recommendationReportDetails>,
    @ocaml.doc(
      "<p> The ID of the recommendation report generation task. See the response of <a>StartRecommendationReportGeneration</a>. </p>"
    )
    id: option<recommendationTaskId>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetRecommendationReportDetailsCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPortfolioSummary = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> An assessment summary for the portfolio including the number of servers to rehost and the
      overall number of anti-patterns. </p>")
    assessmentSummary: option<assessmentSummary>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetPortfolioSummaryCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetApplicationComponentDetails = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The ID of the application component. The ID is unique within an AWS account.</p>"
    )
    applicationComponentId: applicationComponentId,
  }
  type response = {
    @ocaml.doc(
      "<p> A list of the IDs of the servers on which the application component is running. </p>"
    )
    associatedServerIds: option<associatedServerIDs>,
    @ocaml.doc("<p> Set to true if the application component belongs to more than one application group.
    </p>")
    moreApplicationResource: option<boolean_>,
    @ocaml.doc(
      "<p> The associated application group as defined in AWS Application Discovery Service. </p>"
    )
    associatedApplications: option<associatedApplications>,
    @ocaml.doc("<p> Detailed information about an application component. </p>")
    applicationComponentDetail: option<applicationComponentDetail>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetApplicationComponentDetailsCommand"
  let make = (~applicationComponentId, ()) => new({applicationComponentId: applicationComponentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutPortfolioPreferences = {
  type t
  type request = {
    @ocaml.doc("<p> The transformation preferences for database applications. </p>")
    databasePreferences: option<databasePreferences>,
    @ocaml.doc("<p> The transformation preferences for non-database applications. </p>")
    applicationPreferences: option<applicationPreferences>,
    @ocaml.doc("<p> The rank of the business goals based on priority. </p>")
    prioritizeBusinessGoals: option<prioritizeBusinessGoals>,
  }
  type response = {.}
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "PutPortfolioPreferencesCommand"
  let make = (~databasePreferences=?, ~applicationPreferences=?, ~prioritizeBusinessGoals=?, ()) =>
    new({databasePreferences, applicationPreferences, prioritizeBusinessGoals})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListApplicationComponents = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"
    )
    maxResults: option<maxResult>,
    @ocaml.doc("<p> The token from a previous call that you use to retrieve the next set of results. For example, 
if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
      with a token. You then use the returned token to retrieve the next set of 10. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The group ID specified in to filter on. </p>") groupIdFilter: option<groupIds>,
    @ocaml.doc("<p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
      (<code>DESC</code>) order. </p>")
    sort: option<sortOrder>,
    @ocaml.doc("<p> Specify the value based on the application component criteria type. For example, if
        <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and
        <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on
      server1. </p>")
    filterValue: option<string_>,
    @ocaml.doc("<p> Criteria for filtering the list of application components. </p>")
    applicationComponentCriteria: option<applicationComponentCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The list of application components with detailed information about each component.
    </p>")
    applicationComponentInfos: option<applicationComponentDetails>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "ListApplicationComponentsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~groupIdFilter=?,
    ~sort=?,
    ~filterValue=?,
    ~applicationComponentCriteria=?,
    (),
  ) => new({maxResults, nextToken, groupIdFilter, sort, filterValue, applicationComponentCriteria})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServerStrategies = {
  type t
  type request = {@ocaml.doc("<p> The ID of the server. </p>") serverId: serverId}
  type response = {
    @ocaml.doc("<p> A list of strategy recommendations for the server. </p>")
    serverStrategies: option<serverStrategies>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetServerStrategiesCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServerDetails = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"
    )
    maxResults: option<maxResult>,
    @ocaml.doc("<p> The token from a previous call that you use to retrieve the next set of results. For example, 
if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
      with a token. You then use the returned token to retrieve the next set of 10. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The ID of the server. </p>") serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p> The associated application group the server belongs to, as defined in AWS Application Discovery Service.
    </p>")
    associatedApplications: option<associatedApplications>,
    @ocaml.doc("<p> Detailed information about the server. </p>")
    serverDetail: option<serverDetail>,
    @ocaml.doc(
      "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"
    )
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetServerDetailsCommand"
  let make = (~serverId, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPortfolioPreferences = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The transformation preferences for database applications. </p>")
    databasePreferences: option<databasePreferences>,
    @ocaml.doc("<p> The transformation preferences for non-database applications. </p>")
    applicationPreferences: option<applicationPreferences>,
    @ocaml.doc("<p> The rank of business goals based on priority. </p>")
    prioritizeBusinessGoals: option<prioritizeBusinessGoals>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetPortfolioPreferencesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetApplicationComponentStrategies = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The ID of the application component. The ID is unique within an AWS account.</p>"
    )
    applicationComponentId: applicationComponentId,
  }
  type response = {
    @ocaml.doc("<p> A list of application component strategy recommendations. </p>")
    applicationComponentStrategies: option<applicationComponentStrategies>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "GetApplicationComponentStrategiesCommand"
  let make = (~applicationComponentId, ()) => new({applicationComponentId: applicationComponentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListServers = {
  type t
  type request = {
    @ocaml.doc(
      "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"
    )
    maxResults: option<maxResult>,
    @ocaml.doc("<p> The token from a previous call that you use to retrieve the next set of results. For example, 
if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
      with a token. You then use the returned token to retrieve the next set of 10. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> Specifies the group ID to filter on. </p>") groupIdFilter: option<groupIds>,
    @ocaml.doc("<p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
      (<code>DESC</code>) order. </p>")
    sort: option<sortOrder>,
    @ocaml.doc("<p> Specifies the filter value, which is based on the type of server criteria. For example,
      if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is
      equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers
      matching the OS name <code>WindowsServer</code>. </p>")
    filterValue: option<string_>,
    @ocaml.doc("<p> Criteria for filtering servers. </p>") serverCriteria: option<serverCriteria>,
  }
  type response = {
    @ocaml.doc(
      "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The list of servers with detailed information about each server. </p>")
    serverInfos: option<serverDetails>,
  }
  @module("@aws-sdk/client-awsmigrationhubstrategyrecommendation") @new
  external new: request => t = "ListServersCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~groupIdFilter=?,
    ~sort=?,
    ~filterValue=?,
    ~serverCriteria=?,
    (),
  ) => new({maxResults, nextToken, groupIdFilter, sort, filterValue, serverCriteria})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
