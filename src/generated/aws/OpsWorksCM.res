type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type timeWindowDefinition = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type serviceRoleArn = string
type serverStatus = [@as("TERMINATED") #TERMINATED | @as("UNHEALTHY") #UNHEALTHY | @as("UNDER_MAINTENANCE") #UNDER_MAINTENANCE | @as("SETUP") #SETUP | @as("RESTORING") #RESTORING | @as("RUNNING") #RUNNING | @as("HEALTHY") #HEALTHY | @as("FAILED") #FAILED | @as("MODIFYING") #MODIFYING | @as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("CONNECTION_LOST") #CONNECTION_LOST | @as("BACKING_UP") #BACKING_UP]
type serverName = string
type nodeName = string
type nodeAssociationStatusToken = string
type nodeAssociationStatus = [@as("IN_PROGRESS") #IN_PROGRESS | @as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS]
type nextToken = string
type maxResults = int;
type maintenanceStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS]
type keyPair = string
type amazonawsInteger = int;
type instanceProfileArn = string
type engineAttributeValue = string
type engineAttributeName = string
type customPrivateKey = string
type customDomain = string
type customCertificate = string
type amazonawsBoolean = bool;
type backupType = [@as("MANUAL") #MANUAL | @as("AUTOMATED") #AUTOMATED]
type backupStatus = [@as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("OK") #OK | @as("IN_PROGRESS") #IN_PROGRESS]
type backupRetentionCountDefinition = int;
type backupId = string
type attributeValue = string
type attributeName = string
type aWSOpsWorksCMResourceArn = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type strings = array<amazonawsString>
type serverEvent = {
@as("LogUrl") logUrl: amazonawsString,
@as("Message") message: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("CreatedAt") createdAt: amazonawsTimestamp
}
type engineAttribute = {
@as("Value") value: engineAttributeValue,
@as("Name") name: engineAttributeName
}
type accountAttribute = {
@as("Used") used: amazonawsInteger,
@as("Maximum") maximum: amazonawsInteger,
@as("Name") name: amazonawsString
}
type tagList = array<tag>
type serverEvents = array<serverEvent>
type engineAttributes = array<engineAttribute>
type backup = {
@as("UserArn") userArn: amazonawsString,
@as("ToolsVersion") toolsVersion: amazonawsString,
@as("SubnetIds") subnetIds: strings,
@as("StatusDescription") statusDescription: amazonawsString,
@as("Status") status: backupStatus,
@as("ServiceRoleArn") serviceRoleArn: amazonawsString,
@as("ServerName") serverName: serverName,
@as("SecurityGroupIds") securityGroupIds: strings,
@as("S3LogUrl") s3LogUrl: amazonawsString,
@as("S3DataUrl") s3DataUrl: amazonawsString,
@as("S3DataSize") s3DataSize: amazonawsInteger,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: timeWindowDefinition,
@as("PreferredBackupWindow") preferredBackupWindow: timeWindowDefinition,
@as("KeyPair") keyPair: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceProfileArn") instanceProfileArn: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("EngineModel") engineModel: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("Description") description: amazonawsString,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("BackupType") backupType: backupType,
@as("BackupId") backupId: backupId,
@as("BackupArn") backupArn: amazonawsString
}
type accountAttributes = array<accountAttribute>
type server = {
@as("ServerArn") serverArn: amazonawsString,
@as("SubnetIds") subnetIds: strings,
@as("StatusReason") statusReason: amazonawsString,
@as("Status") status: serverStatus,
@as("ServiceRoleArn") serviceRoleArn: amazonawsString,
@as("SecurityGroupIds") securityGroupIds: strings,
@as("PreferredBackupWindow") preferredBackupWindow: timeWindowDefinition,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: timeWindowDefinition,
@as("MaintenanceStatus") maintenanceStatus: maintenanceStatus,
@as("KeyPair") keyPair: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceProfileArn") instanceProfileArn: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("EngineModel") engineModel: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("Endpoint") endpoint: amazonawsString,
@as("DisableAutomatedBackup") disableAutomatedBackup: amazonawsBoolean,
@as("CustomDomain") customDomain: customDomain,
@as("CloudFormationStackArn") cloudFormationStackArn: amazonawsString,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("ServerName") serverName: amazonawsString,
@as("BackupRetentionCount") backupRetentionCount: amazonawsInteger,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean
}
type backups = array<backup>
type servers = array<server>
type clientType;
@module("@aws-sdk/client-opsworks-cm") @new external createClient: unit => clientType = "OpsWorksCMClient";
module DeleteServer = {
  type t;
  type request = {
@as("ServerName") serverName: option<serverName>
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DeleteServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBackup = {
  type t;
  type request = {
@as("BackupId") backupId: option<backupId>
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<aWSOpsWorksCMResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<aWSOpsWorksCMResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ResourceArn") resourceArn: option<aWSOpsWorksCMResourceArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportServerEngineAttribute = {
  type t;
  type request = {
@as("InputAttributes") inputAttributes: engineAttributes,
@as("ServerName") serverName: option<serverName>,
@as("ExportAttributeName") exportAttributeName: option<amazonawsString>
}
  type response = {
@as("ServerName") serverName: serverName,
@as("EngineAttribute") engineAttribute: engineAttribute
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "ExportServerEngineAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateNode = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("NodeName") nodeName: option<nodeName>,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: nodeAssociationStatusToken
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DisassociateNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNodeAssociationStatus = {
  type t;
  type request = {
@as("ServerName") serverName: option<serverName>,
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: option<nodeAssociationStatusToken>
}
  type response = {
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("NodeAssociationStatus") nodeAssociationStatus: nodeAssociationStatus
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DescribeNodeAssociationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ServerEvents") serverEvents: serverEvents
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = unit
  type response = {
@as("Attributes") attributes: accountAttributes
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("Backup") backup: backup
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "CreateBackupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateNode = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: option<engineAttributes>,
@as("NodeName") nodeName: option<nodeName>,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("NodeAssociationStatusToken") nodeAssociationStatusToken: nodeAssociationStatusToken
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "AssociateNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServerEngineAttributes = {
  type t;
  type request = {
@as("AttributeValue") attributeValue: attributeValue,
@as("AttributeName") attributeName: option<attributeName>,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("Server") server: server
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "UpdateServerEngineAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServer = {
  type t;
  type request = {
@as("PreferredBackupWindow") preferredBackupWindow: timeWindowDefinition,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: timeWindowDefinition,
@as("ServerName") serverName: option<serverName>,
@as("BackupRetentionCount") backupRetentionCount: amazonawsInteger,
@as("DisableAutomatedBackup") disableAutomatedBackup: amazonawsBoolean
}
  type response = {
@as("Server") server: server
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "UpdateServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMaintenance = {
  type t;
  type request = {
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("ServerName") serverName: option<serverName>
}
  type response = {
@as("Server") server: server
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "StartMaintenanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreServer = {
  type t;
  type request = {
@as("KeyPair") keyPair: keyPair,
@as("InstanceType") instanceType: amazonawsString,
@as("ServerName") serverName: option<serverName>,
@as("BackupId") backupId: option<backupId>
}
  type response = {
@as("Server") server: server
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "RestoreServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBackups = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServerName") serverName: serverName,
@as("BackupId") backupId: backupId
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Backups") backups: backups
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DescribeBackupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServer = {
  type t;
  type request = {
@as("BackupId") backupId: backupId,
@as("Tags") tags: tagList,
@as("SubnetIds") subnetIds: strings,
@as("ServiceRoleArn") serviceRoleArn: option<serviceRoleArn>,
@as("SecurityGroupIds") securityGroupIds: strings,
@as("PreferredBackupWindow") preferredBackupWindow: timeWindowDefinition,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: timeWindowDefinition,
@as("KeyPair") keyPair: keyPair,
@as("InstanceType") instanceType: option<amazonawsString>,
@as("InstanceProfileArn") instanceProfileArn: option<instanceProfileArn>,
@as("ServerName") serverName: option<serverName>,
@as("BackupRetentionCount") backupRetentionCount: backupRetentionCountDefinition,
@as("EngineAttributes") engineAttributes: engineAttributes,
@as("EngineVersion") engineVersion: amazonawsString,
@as("EngineModel") engineModel: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DisableAutomatedBackup") disableAutomatedBackup: amazonawsBoolean,
@as("CustomPrivateKey") customPrivateKey: customPrivateKey,
@as("CustomCertificate") customCertificate: customCertificate,
@as("CustomDomain") customDomain: customDomain,
@as("AssociatePublicIpAddress") associatePublicIpAddress: amazonawsBoolean
}
  type response = {
@as("Server") server: server
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "CreateServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServers = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ServerName") serverName: serverName
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Servers") servers: servers
}
  @module("@aws-sdk/client-opsworks-cm") @new external new_: (Js.Promise.t<request>) => t = "DescribeServersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
