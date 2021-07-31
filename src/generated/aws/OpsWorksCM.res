type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type long = float
type timestamp_ = Js.Date.t;
type timeWindowDefinition = string
type tagValue = string
type tagKey = string
type string_ = string
type serviceRoleArn = string
type serverStatus = [@as("TERMINATED") #TERMINATED | @as("UNHEALTHY") #UNHEALTHY | @as("UNDER_MAINTENANCE") #UNDERMAINTENANCE | @as("SETUP") #SETUP | @as("RESTORING") #RESTORING | @as("RUNNING") #RUNNING | @as("HEALTHY") #HEALTHY | @as("FAILED") #FAILED | @as("MODIFYING") #MODIFYING | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("CONNECTION_LOST") #CONNECTIONLOST | @as("BACKING_UP") #BACKINGUP]
type serverName = string
type nodeName = string
type nodeAssociationStatusToken = string
type nodeAssociationStatus = [@as("IN_PROGRESS") #INPROGRESS | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS]
type nextToken = string
type maxResults = int
type maintenanceStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS]
type keyPair = string
type integer_ = int
type instanceProfileArn = string
type engineAttributeValue = string
type engineAttributeName = string
type customPrivateKey = string
type customDomain = string
type customCertificate = string
type boolean_ = bool
type backupType = [@as("MANUAL") #MANUAL | @as("AUTOMATED") #AUTOMATED]
type backupStatus = [@as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("OK") #OK | @as("IN_PROGRESS") #INPROGRESS]
type backupRetentionCountDefinition = int
type backupId = string
type attributeValue = string
type attributeName = string
type awsopsWorksCMResourceArn = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type strings = array<string_>
type serverEvent = {
@as("LogUrl") logUrl: option<string_>,
@as("Message") message: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("CreatedAt") createdAt: option<timestamp_>
}
type engineAttribute = {
@as("Value") value: option<engineAttributeValue>,
@as("Name") name: option<engineAttributeName>
}
type accountAttribute = {
@as("Used") used: option<integer_>,
@as("Maximum") maximum: option<integer_>,
@as("Name") name: option<string_>
}
type tagList_ = array<tag>
type serverEvents = array<serverEvent>
type engineAttributes = array<engineAttribute>
type backup = {
@as("UserArn") userArn: option<string_>,
@as("ToolsVersion") toolsVersion: option<string_>,
@as("SubnetIds") subnetIds: option<strings>,
@as("StatusDescription") statusDescription: option<string_>,
@as("Status") status: option<backupStatus>,
@as("ServiceRoleArn") serviceRoleArn: option<string_>,
@as("ServerName") serverName: option<serverName>,
@as("SecurityGroupIds") securityGroupIds: option<strings>,
@as("S3LogUrl") s3LogUrl: option<string_>,
@as("S3DataUrl") s3DataUrl: option<string_>,
@as("S3DataSize") s3DataSize: option<integer_>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<timeWindowDefinition>,
@as("PreferredBackupWindow") preferredBackupWindow: option<timeWindowDefinition>,
@as("KeyPair") keyPair: option<string_>,
@as("InstanceType") instanceType: option<string_>,
@as("InstanceProfileArn") instanceProfileArn: option<string_>,
@as("EngineVersion") engineVersion: option<string_>,
@as("EngineModel") engineModel: option<string_>,
@as("Engine") engine: option<string_>,
@as("Description") description: option<string_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("BackupType") backupType: option<backupType>,
@as("BackupId") backupId: option<backupId>,
@as("BackupArn") backupArn: option<string_>
}
type accountAttributes = array<accountAttribute>
type server = {
@as("ServerArn") serverArn: option<string_>,
@as("SubnetIds") subnetIds: option<strings>,
@as("StatusReason") statusReason: option<string_>,
@as("Status") status: option<serverStatus>,
@as("ServiceRoleArn") serviceRoleArn: option<string_>,
@as("SecurityGroupIds") securityGroupIds: option<strings>,
@as("PreferredBackupWindow") preferredBackupWindow: option<timeWindowDefinition>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<timeWindowDefinition>,
@as("MaintenanceStatus") maintenanceStatus: option<maintenanceStatus>,
@as("KeyPair") keyPair: option<string_>,
@as("InstanceType") instanceType: option<string_>,
@as("InstanceProfileArn") instanceProfileArn: option<string_>,
@as("EngineVersion") engineVersion: option<string_>,
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("EngineModel") engineModel: option<string_>,
@as("Engine") engine: option<string_>,
@as("Endpoint") endpoint: option<string_>,
@as("DisableAutomatedBackup") disableAutomatedBackup: option<boolean_>,
@as("CustomDomain") customDomain: option<customDomain>,
@as("CloudFormationStackArn") cloudFormationStackArn: option<string_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("ServerName") serverName: option<string_>,
@as("BackupRetentionCount") backupRetentionCount: option<integer_>,
@as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>
}
type backups = array<backup>
type servers = array<server>
type awsServiceClient;
@module("@aws-sdk/client-opsworks-cm") @new external createClient: unit => awsServiceClient = "OpsWorksCMClient";
module DeleteServer = {
  type t;
  type request = {
@as("ServerName") serverName: serverName
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DeleteServerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBackup = {
  type t;
  type request = {
@as("BackupId") backupId: backupId
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DeleteBackupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: awsopsWorksCMResourceArn
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: awsopsWorksCMResourceArn
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ResourceArn") resourceArn: awsopsWorksCMResourceArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportServerEngineAttribute = {
  type t;
  type request = {
@as("InputAttributes") inputAttributes: option<engineAttributes>,
@as("ServerName") serverName: serverName,
@as("ExportAttributeName") exportAttributeName: string_
}
  type response = {
@as("ServerName") serverName: option<serverName>,
@as("EngineAttribute") engineAttribute: option<engineAttribute>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "ExportServerEngineAttributeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateNode = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("NodeName") nodeName: nodeName,
@as("ServerName") serverName: serverName
}
  type response = {
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: option<nodeAssociationStatusToken>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DisassociateNodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNodeAssociationStatus = {
  type t;
  type request = {
@as("ServerName") serverName: serverName,
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: nodeAssociationStatusToken
}
  type response = {
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("NodeAssociationStatus") nodeAssociationStatus: option<nodeAssociationStatus>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DescribeNodeAssociationStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ServerName") serverName: serverName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ServerEvents") serverEvents: option<serverEvents>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = unit
  type response = {
@as("Attributes") attributes: option<accountAttributes>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Description") description: option<string_>,
@as("ServerName") serverName: serverName
}
  type response = {
@as("Backup") backup: option<backup>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "CreateBackupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateNode = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("NodeName") nodeName: nodeName,
@as("ServerName") serverName: serverName
}
  type response = {
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: option<nodeAssociationStatusToken>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "AssociateNodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServerEngineAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: option<attributeValue>,
@as("AttributeName") attributeName: attributeName,
@as("ServerName") serverName: serverName
}
  type response = {
@as("Server") server: option<server>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "UpdateServerEngineAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServer = {
  type t;
  type request = {
@as("PreferredBackupWindow") preferredBackupWindow: option<timeWindowDefinition>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<timeWindowDefinition>,
@as("ServerName") serverName: serverName,
@as("BackupRetentionCount") backupRetentionCount: option<integer_>,
@as("DisableAutomatedBackup") disableAutomatedBackup: option<boolean_>
}
  type response = {
@as("Server") server: option<server>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "UpdateServerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartMaintenance = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("ServerName") serverName: serverName
}
  type response = {
@as("Server") server: option<server>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "StartMaintenanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreServer = {
  type t;
  type request = {
@as("KeyPair") keyPair: option<keyPair>,
@as("InstanceType") instanceType: option<string_>,
@as("ServerName") serverName: serverName,
@as("BackupId") backupId: backupId
}
  type response = {
@as("Server") server: option<server>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "RestoreServerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBackups = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ServerName") serverName: option<serverName>,
@as("BackupId") backupId: option<backupId>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Backups") backups: option<backups>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DescribeBackupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateServer = {
  type t;
  type request = {
@as("BackupId") backupId: option<backupId>,
@as("Tags") tags: option<tagList_>,
@as("SubnetIds") subnetIds: option<strings>,
@as("ServiceRoleArn") serviceRoleArn: serviceRoleArn,
@as("SecurityGroupIds") securityGroupIds: option<strings>,
@as("PreferredBackupWindow") preferredBackupWindow: option<timeWindowDefinition>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<timeWindowDefinition>,
@as("KeyPair") keyPair: option<keyPair>,
@as("InstanceType") instanceType: string_,
@as("InstanceProfileArn") instanceProfileArn: instanceProfileArn,
@as("ServerName") serverName: serverName,
@as("BackupRetentionCount") backupRetentionCount: option<backupRetentionCountDefinition>,
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("EngineVersion") engineVersion: option<string_>,
@as("EngineModel") engineModel: option<string_>,
@as("Engine") engine: string_,
@as("DisableAutomatedBackup") disableAutomatedBackup: option<boolean_>,
@as("CustomPrivateKey") customPrivateKey: option<customPrivateKey>,
@as("CustomCertificate") customCertificate: option<customCertificate>,
@as("CustomDomain") customDomain: option<customDomain>,
@as("AssociatePublicIpAddress") associatePublicIpAddress: option<boolean_>
}
  type response = {
@as("Server") server: option<server>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "CreateServerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServers = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Servers") servers: option<servers>
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (request) => t = "DescribeServersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
