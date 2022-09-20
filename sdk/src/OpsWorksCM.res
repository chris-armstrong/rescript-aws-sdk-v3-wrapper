type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-opsworks-cm") @new
external createClient: unit => awsServiceClient = "OpsWorksCMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
@ocaml.doc("<p>
            <code>DDD:HH:MM</code> (weekly start time) or
    <code>HH:MM</code> (daily start time).
    </p>
         <p>
      Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
      <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>")
type timeWindowDefinition = string
type tagValue = string
type tagKey = string
type string_ = string
type serviceRoleArn = string
type serverStatus = [
  | @as("TERMINATED") #TERMINATED
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("UNDER_MAINTENANCE") #UNDER_MAINTENANCE
  | @as("SETUP") #SETUP
  | @as("RESTORING") #RESTORING
  | @as("RUNNING") #RUNNING
  | @as("HEALTHY") #HEALTHY
  | @as("FAILED") #FAILED
  | @as("MODIFYING") #MODIFYING
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("CONNECTION_LOST") #CONNECTION_LOST
  | @as("BACKING_UP") #BACKING_UP
]
type serverName = string
@ocaml.doc("<p>The node name that is used by <code>chef-client</code> or <code>puppet-agent</code>for a new node. We recommend to use a unique FQDN as hostname. For more information, see the
      <a href=\"https://docs.aws.amazon.com/https:/docs.chef.io/nodes.html#about-node-names\">Chef</a> or 
      <a href=\"https://docs.aws.amazon.com/https:/docs.puppet.com/puppet/4.10/man/agent.html\">Puppet</a> documentation.
    </p>")
type nodeName = string
type nodeAssociationStatusToken = string
@ocaml.doc("<p>The status of the association or disassociation request.
    </p>
         <p class=\"title\">
            <b>Possible values:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>SUCCESS</code>: The association or disassociation succeeded.
      </p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The association or disassociation failed.
      </p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code>: The association or disassociation is still in progress.
      </p>
            </li>
         </ul>")
type nodeAssociationStatus = [
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
]
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
type backupStatus = [
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("OK") #OK
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type backupRetentionCountDefinition = int
type backupId = string
type attributeValue = string
type attributeName = string
type awsopsWorksCMResourceArn = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate 
      or AWS OpsWorks for Puppet Enterprise server. Leading and trailing white spaces are trimmed from both the key and value. 
      A maximum of 50 user-applied tags is allowed for tag-supported AWS OpsWorks-CM resources.</p>")
type tag = {
  @ocaml.doc("<p>An optional tag value, such as <code>Production</code> or <code>test-owcm-server</code>. The value can be a maximum of 255 characters, 
      and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
         </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The key can be a maximum of 127 characters, 
      and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
         </p>")
  @as("Key")
  key: tagKey,
}
type strings = array<string_>
@ocaml.doc("<p>An event that is related to the server, such as the start of maintenance or backup.
    </p>")
type serverEvent = {
  @ocaml.doc("<p>The Amazon S3 URL of the event's log file.</p>") @as("LogUrl")
  logUrl: option<string_>,
  @ocaml.doc("<p>A human-readable informational or status message.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>The name of the server on or for which the event occurred.
    </p>")
  @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>The time when the event occurred.
    </p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
}
@ocaml.doc("<p>A name and value pair that is specific to the engine of the server.
    </p>")
type engineAttribute = {
  @ocaml.doc("<p>The value of the engine attribute.
    </p>")
  @as("Value")
  value: option<engineAttributeValue>,
  @ocaml.doc("<p>The name of the engine attribute.
    </p>")
  @as("Name")
  name: option<engineAttributeName>,
}
@ocaml.doc("<p>Stores account attributes.
    </p>")
type accountAttribute = {
  @ocaml.doc("<p>
      The current usage, such as the current number of servers that are associated with the account.
    </p>")
  @as("Used")
  used: option<integer_>,
  @ocaml.doc("<p>
      The maximum allowed value.
    </p>")
  @as("Maximum")
  maximum: option<integer_>,
  @ocaml.doc("<p>
      The attribute name. The following are supported attribute names.
    </p>
         <ul>
            <li>
               <p>
                  <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers.
      </p>
            </li>
            <li>
               <p>
                  <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum 
        of 50 manual backups saved.
      </p>
            </li>
         </ul>")
  @as("Name")
  name: option<string_>,
}
type tagList_ = array<tag>
type serverEvents = array<serverEvent>
type engineAttributes = array<engineAttribute>
@ocaml.doc("<p>Describes a single backup.
    </p>")
type backup = {
  @ocaml.doc("<p>
      The IAM user ARN of the requester for manual backups. This field is empty for automated backups.
    </p>")
  @as("UserArn")
  userArn: option<string_>,
  @ocaml.doc("<p>
      The version of AWS OpsWorks CM-specific tools that is obtained from the server when the backup is created.
    </p>")
  @as("ToolsVersion")
  toolsVersion: option<string_>,
  @ocaml.doc("<p>
      The subnet IDs that are obtained from the server when the backup is created.
    </p>")
  @as("SubnetIds")
  subnetIds: option<strings>,
  @ocaml.doc("<p>
      An informational message about backup status.
    </p>")
  @as("StatusDescription")
  statusDescription: option<string_>,
  @ocaml.doc("<p>The status of a backup while in progress.
    </p>")
  @as("Status")
  status: option<backupStatus>,
  @ocaml.doc("<p>
      The service role ARN that is obtained from the server when the backup is created.
    </p>")
  @as("ServiceRoleArn")
  serviceRoleArn: option<string_>,
  @ocaml.doc("<p>
      The name of the server from which the backup was made.
    </p>")
  @as("ServerName")
  serverName: option<serverName>,
  @ocaml.doc("<p>
      The security group IDs that are obtained from the server when the backup is created.
    </p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<strings>,
  @ocaml.doc("<p>
      The Amazon S3 URL of the backup's log file.
    </p>")
  @as("S3LogUrl")
  s3LogUrl: option<string_>,
  @ocaml.doc("<p>
      This field is deprecated and is no longer used.
    </p>")
  @as("S3DataUrl")
  s3DataUrl: option<string_>,
  @ocaml.doc("<p>
      This field is deprecated and is no longer used.
    </p>")
  @as("S3DataSize")
  s3DataSize: option<integer_>,
  @ocaml.doc("<p>
      The preferred maintenance period that is obtained from the server when the backup is created.
    </p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<timeWindowDefinition>,
  @ocaml.doc("<p>
      The preferred backup period that is obtained from the server when the backup is created.
    </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<timeWindowDefinition>,
  @ocaml.doc("<p>
      The key pair that is obtained from the server when the backup is created.
    </p>")
  @as("KeyPair")
  keyPair: option<string_>,
  @ocaml.doc("<p>
      The instance type that is obtained from the server when the backup is created.
    </p>")
  @as("InstanceType")
  instanceType: option<string_>,
  @ocaml.doc("<p>
      The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored,
      you are not required to provide the InstanceProfileArn again if you restore a backup.
    </p>")
  @as("InstanceProfileArn")
  instanceProfileArn: option<string_>,
  @ocaml.doc("<p>
      The engine version that is obtained from the server when the backup is created.
    </p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>
      The engine model that is obtained from the server when the backup is created.
    </p>")
  @as("EngineModel")
  engineModel: option<string_>,
  @ocaml.doc("<p>
      The engine type that is obtained from the server when the backup is created.
    </p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>
      A user-provided description for a manual backup. This field is empty for automated backups.
    </p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>
      The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code>
         </p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
      The backup type. Valid values are <code>automated</code> or <code>manual</code>.
    </p>")
  @as("BackupType")
  backupType: option<backupType>,
  @ocaml.doc("<p>
      The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code>
         </p>")
  @as("BackupId")
  backupId: option<backupId>,
  @ocaml.doc("<p>The ARN of the backup.
    </p>")
  @as("BackupArn")
  backupArn: option<string_>,
}
@ocaml.doc("<p>
      A list of individual account attributes.
    </p>")
type accountAttributes = array<accountAttribute>
@ocaml.doc("<p>Describes a configuration management server.
    </p>")
type server = {
  @ocaml.doc("<p>The ARN of the server.
    </p>")
  @as("ServerArn")
  serverArn: option<string_>,
  @ocaml.doc("<p>
      The subnet IDs specified in a CreateServer request.
    </p>")
  @as("SubnetIds")
  subnetIds: option<strings>,
  @ocaml.doc("<p>
      Depending on the server status, this field has either a human-readable
      message (such as a create or backup error), or an escaped block of JSON (used for health check results).
    </p>")
  @as("StatusReason")
  statusReason: option<string_>,
  @ocaml.doc("<p>
      The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server,
      as well as the server's health state.
    </p>")
  @as("Status")
  status: option<serverStatus>,
  @ocaml.doc("<p>The service role ARN used to create the server.
    </p>")
  @as("ServiceRoleArn")
  serviceRoleArn: option<string_>,
  @ocaml.doc("<p>
      The security group IDs for the server, as specified in the CloudFormation stack.
      These might not be the same security groups that are shown in the EC2 console.
    </p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<strings>,
  @ocaml.doc("<p>The preferred backup period specified for the server.
    </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<timeWindowDefinition>,
  @ocaml.doc("<p>The preferred maintenance period specified for the server.
    </p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<timeWindowDefinition>,
  @ocaml.doc("<p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>.
    </p>")
  @as("MaintenanceStatus")
  maintenanceStatus: option<maintenanceStatus>,
  @ocaml.doc("<p>The key pair associated with the server.
    </p>")
  @as("KeyPair")
  keyPair: option<string_>,
  @ocaml.doc("<p>
      The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console.
    </p>")
  @as("InstanceType")
  instanceType: option<string_>,
  @ocaml.doc("<p>The instance profile ARN of the server.
    </p>")
  @as("InstanceProfileArn")
  instanceProfileArn: option<string_>,
  @ocaml.doc("<p>The engine version of the server. For a Chef server, the valid value for EngineVersion is 
      currently <code>2</code>. For a Puppet server, specify either <code>2019</code> or <code>2017</code>.
    </p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The response of a createServer() request returns the master
    credential to access the server in EngineAttributes. These
    credentials are not stored by AWS OpsWorks CM; they are returned only as part of the result of createServer().
    </p>
         <p class=\"title\">
            <b>Attributes returned in a createServer response for Chef</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is
      generated by AWS OpsWorks for Chef Automate. This private key is required to access
      the Chef API.</p>
            </li>
            <li>
               <p>
                  <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file.
      The ZIP file contains a Chef starter kit, which includes a README, a
      configuration file, and the required RSA private key. Save this file, unzip it,
      and then change to the directory where you've unzipped the file contents.
      From this directory, you can run Knife commands.</p>
            </li>
         </ul>
         <p class=\"title\">
            <b>Attributes returned in a createServer response for Puppet</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>PUPPET_STARTER_KIT</code>: A base64-encoded ZIP file.
        The ZIP file contains a Puppet starter kit, including a README and a
        required private key. Save this file, unzip it,
        and then change to the directory where you've unzipped the file contents.</p>
            </li>
            <li>
               <p>
                  <code>PUPPET_ADMIN_PASSWORD</code>: An administrator password that you can use to sign in to the Puppet Enterprise console after the server is online.</p>
            </li>
         </ul>")
  @as("EngineAttributes")
  engineAttributes: option<engineAttributes>,
  @ocaml.doc("<p>The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    </p>")
  @as("EngineModel")
  engineModel: option<string_>,
  @ocaml.doc("<p>The engine type of the server. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.
    </p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>
      A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code>. 
      You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.
    </p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount.
    </p>")
  @as("DisableAutomatedBackup")
  disableAutomatedBackup: option<boolean_>,
  @ocaml.doc("<p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. 
      You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.</p>")
  @as("CustomDomain")
  customDomain: option<customDomain>,
  @ocaml.doc("<p>The ARN of the CloudFormation stack that was used to create the server.
    </p>")
  @as("CloudFormationStackArn")
  cloudFormationStackArn: option<string_>,
  @ocaml.doc("<p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code>
         </p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The name of the server.
    </p>")
  @as("ServerName")
  serverName: option<string_>,
  @ocaml.doc("<p>The number of automated backups to keep.
    </p>")
  @as("BackupRetentionCount")
  backupRetentionCount: option<integer_>,
  @ocaml.doc("<p>Associate a public IP address with a server that you are launching.
    </p>")
  @as("AssociatePublicIpAddress")
  associatePublicIpAddress: option<boolean_>,
}
type backups = array<backup>
type servers = array<server>
@ocaml.doc("<fullname>AWS OpsWorks CM</fullname>
         <p>AWS OpsWorks for configuration management (CM) is a service that runs and manages
      configuration management servers. You can use AWS OpsWorks CM to create and manage AWS
      OpsWorks for Chef Automate and AWS OpsWorks for Puppet Enterprise servers, and add or remove
      nodes for the servers to manage.</p>
         <p>
            <b>Glossary of terms</b>
         </p>
         <ul>
            <li>
               <p> 
                  <b>Server</b>: A configuration management server that can be 
        highly-available. The configuration management server runs on
      an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS services, such as Amazon Relational
      Database Service (RDS) and Elastic Load Balancing. A server is a generic abstraction over the configuration
      manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not start
      or stop servers. After you create servers, they continue to run until they are deleted.</p>
            </li>
            <li>
               <p> 
                  <b>Engine</b>: The engine is the specific configuration manager 
        that you want to use. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.</p>
            </li>
            <li>
               <p> 
                  <b>Backup</b>: This
      is an application-level backup of the data that the configuration manager
      stores. AWS OpsWorks CM
      creates an S3 bucket for backups when you launch the first
      server. A backup maintains a snapshot of a server's configuration-related
      attributes at the time the backup starts.</p>
            </li>
            <li>
               <p> 
                  <b>Events</b>:
      Events are always related to a server. Events are written
      during server creation, when health checks run, when backups
      are created, when system maintenance is performed, etc. When you delete a server, the server's events are
      also deleted.</p>
            </li>
            <li>
               <p> 
                  <b>Account attributes</b>:
      Every account has attributes that are assigned in the AWS OpsWorks CM
      database. These attributes store information about configuration limits (servers,
      backups, etc.) and your customer account.
      </p>
            </li>
         </ul>
         <p>
            <b>Endpoints</b>
         </p>
         <p>AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Your servers
      can only be accessed or managed within the endpoint in which they are created.</p>
         <ul>
            <li>
               <p>opsworks-cm.us-east-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.us-east-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.us-west-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.us-west-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.ap-northeast-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.ap-southeast-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.ap-southeast-2.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.eu-central-1.amazonaws.com</p>
            </li>
            <li>
               <p>opsworks-cm.eu-west-1.amazonaws.com</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html\">AWS OpsWorks endpoints and quotas</a> in the AWS General Reference.</p>
         <p>
            <b>Throttling limits</b>
         </p>
         <p>All API operations allow for five requests per second with a burst of 10 requests per second.</p>")
module DeleteServer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the server to delete.</p>") @as("ServerName") serverName: serverName,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DeleteServerCommand"
  let make = (~serverName, ()) => new({serverName: serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBackup = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs.
      Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>.
    </p>")
    @as("BackupId")
    backupId: backupId,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DeleteBackupCommand"
  let make = (~backupId, ()) => new({backupId: backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of tags that you want to remove.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of a resource from which you want to remove tags. For example, 
      <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>")
    @as("ResourceArn")
    resourceArn: awsopsWorksCMResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values to attach to AWS OpsWorks-CM servers or backups.</p>
         <ul>
            <li>
               <p>The key cannot be empty.</p>
            </li>
            <li>
               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
            </li>
            <li>
               <p>A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server or backup.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of a resource to which you want to apply tags. For example, 
      <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>")
    @as("ResourceArn")
    resourceArn: awsopsWorksCMResourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>To receive a paginated response, use this parameter to specify the maximum number
        of results to be returned with a single call. If the number of available results exceeds
        this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
        request parameter to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>NextToken is a string that is returned in some command responses. It indicates that
        not all entries have been returned, and that you must run at least one more request to get remaining
        items. To get remaining results, call <code>ListTagsForResource</code> again, and assign the token from the previous
        results as the value of the <code>nextToken</code> parameter. If there are no more results,
        the response object's <code>nextToken</code> parameter value is <code>null</code>.
        Setting a <code>nextToken</code> value that was not returned in
        your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, 
        <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>")
    @as("ResourceArn")
    resourceArn: awsopsWorksCMResourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A token that you can use as the value of <code>NextToken</code> in subsequent calls to the API to show more results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Tags that have been applied to the resource.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportServerEngineAttribute = {
  type t
  type request = {
    @ocaml.doc("<p>The list of engine attributes. The list type is <code>EngineAttribute</code>. An <code>EngineAttribute</code> list item 
      is a pair that includes an attribute name and its value. For the <code>Userdata</code> ExportAttributeName, the following are 
      supported engine attribute names.</p>
         <ul>
            <li>
               <p>
                  <b>RunList</b> In Chef, a list of roles or recipes that are run in the specified order. 
        In Puppet, this parameter is ignored.</p>
            </li>
            <li>
               <p>
                  <b>OrganizationName</b> In Chef, an organization name. AWS OpsWorks for Chef Automate 
        always creates the organization <code>default</code>. In Puppet, this parameter is ignored.</p>
            </li>
            <li>
               <p>
                  <b>NodeEnvironment</b> In Chef, a node environment (for example, development, staging, or one-box). 
        In Puppet, this parameter is ignored.</p>
            </li>
            <li>
               <p>
                  <b>NodeClientVersion</b> In Chef, the version of the Chef engine (three numbers separated 
        by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, 
        this parameter is ignored.</p>
            </li>
         </ul>")
    @as("InputAttributes")
    inputAttributes: option<engineAttributes>,
    @ocaml.doc("<p>The name of the server from which you are exporting the attribute.</p>")
    @as("ServerName")
    serverName: serverName,
    @ocaml.doc("<p>The name of the export attribute. Currently, the supported export attribute is <code>Userdata</code>. 
      This exports a user data script that includes parameters and values provided in the <code>InputAttributes</code> list.</p>")
    @as("ExportAttributeName")
    exportAttributeName: string_,
  }
  type response = {
    @ocaml.doc("<p>The server name used in the request.</p>") @as("ServerName")
    serverName: option<serverName>,
    @ocaml.doc("<p>The requested engine attribute pair with attribute name and value.</p>")
    @as("EngineAttribute")
    engineAttribute: option<engineAttribute>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new
  external new: request => t = "ExportServerEngineAttributeCommand"
  let make = (~serverName, ~exportAttributeName, ~inputAttributes=?, ()) =>
    new({inputAttributes, serverName, exportAttributeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateNode = {
  type t
  type request = {
    @ocaml.doc("<p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet.
    </p>
         <p class=\"title\">
            <b>Attributes required in a DisassociateNode request for Chef</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>CHEF_ORGANIZATION</code>: The Chef organization
          with which the node was associated. By default only one organization
          named <code>default</code> can exist.
      </p>
            </li>
         </ul>")
    @as("EngineAttributes")
    engineAttributes: option<engineAttributes>,
    @ocaml.doc("<p>The name of the client node.
    </p>")
    @as("NodeName")
    nodeName: nodeName,
    @ocaml.doc("<p>The name of the server from which to disassociate the node.
    </p>")
    @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>Contains a token which can be passed to the
      <code>DescribeNodeAssociationStatus</code> API call to get the status of
      the disassociation request.
    </p>")
    @as("NodeAssociationStatusToken")
    nodeAssociationStatusToken: option<nodeAssociationStatusToken>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DisassociateNodeCommand"
  let make = (~nodeName, ~serverName, ~engineAttributes=?, ()) =>
    new({engineAttributes, nodeName, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeNodeAssociationStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the server from which to disassociate the node.
    </p>")
    @as("ServerName")
    serverName: serverName,
    @ocaml.doc("<p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.
    </p>")
    @as("NodeAssociationStatusToken")
    nodeAssociationStatusToken: nodeAssociationStatusToken,
  }
  type response = {
    @ocaml.doc("<p>Attributes specific to the node association. 
      In Puppet, the attibute PUPPET_NODE_CERT contains the signed certificate (the result of the CSR).
    </p>")
    @as("EngineAttributes")
    engineAttributes: option<engineAttributes>,
    @ocaml.doc("<p>The status of the association or disassociation request.
    </p>
         <p class=\"title\">
            <b>Possible values:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>SUCCESS</code>: The association or disassociation succeeded.
      </p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>: The association or disassociation failed.
      </p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code>: The association or disassociation is still in progress.
      </p>
            </li>
         </ul>")
    @as("NodeAssociationStatus")
    nodeAssociationStatus: option<nodeAssociationStatus>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new
  external new: request => t = "DescribeNodeAssociationStatusCommand"
  let make = (~serverName, ~nodeAssociationStatusToken, ()) =>
    new({serverName, nodeAssociationStatusToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEvents = {
  type t
  type request = {
    @ocaml.doc("<p>To receive a paginated response, use this parameter to specify the maximum number
      of results to be returned with a single call. If the number of available results exceeds
      this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
      request parameter to get the next set of results.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>NextToken is a string that is returned in some command responses. It indicates that
      not all entries have been returned, and that you must run at least one more request to get remaining
      items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
      results as the value of the <code>nextToken</code> parameter. If there are no more results,
      the response object's <code>nextToken</code> parameter value is <code>null</code>.
      Setting a <code>nextToken</code> value that was not returned in
      your previous results causes an <code>InvalidNextTokenException</code> to occur.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the server for which you want to view events.</p>") @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>NextToken is a string that is returned in some command responses. It indicates that
      not all entries have been returned, and that you must run at least one more request to get remaining
      items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
      results as the value of the <code>nextToken</code> parameter. If there are no more results,
      the response object's <code>nextToken</code> parameter value is <code>null</code>.
      Setting a <code>nextToken</code> value that was not returned in
      your previous results causes an <code>InvalidNextTokenException</code> to occur.
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Contains the response to a <code>DescribeEvents</code> request.
    </p>")
    @as("ServerEvents")
    serverEvents: option<serverEvents>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DescribeEventsCommand"
  let make = (~serverName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAccountAttributes = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>
      The attributes that are currently set for the account.
    </p>")
    @as("Attributes")
    attributes: option<accountAttributes>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new
  external new: request => t = "DescribeAccountAttributesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBackup = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values to attach to an AWS OpsWorks-CM server backup.</p>
         <ul>
            <li>
               <p>The key cannot be empty.</p>
            </li>
            <li>
               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
               </p>
            </li>
            <li>
               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
            </li>
            <li>
               <p>A maximum of 50 user-applied tags is allowed for tag-supported AWS OpsWorks-CM resources.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>
      A user-defined description of the backup.
    </p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the server that you want to back up.
    </p>")
    @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>Backup created by request.</p>") @as("Backup") backup: option<backup>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "CreateBackupCommand"
  let make = (~serverName, ~tags=?, ~description=?, ()) => new({tags, description, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateNode = {
  type t
  type request = {
    @ocaml.doc("<p>Engine attributes used for associating the node.
    </p>
         <p class=\"title\">
            <b>Attributes accepted in a AssociateNode request for Chef</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>CHEF_ORGANIZATION</code>: The Chef organization
          with which the node is associated. By default only one organization
          named <code>default</code> can exist.
      </p>
            </li>
            <li>
               <p>
                  <code>CHEF_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API.
    </p>
            </li>
         </ul>
         <p class=\"title\">
            <b>Attributes accepted in a AssociateNode request for Puppet</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node.
    </p>
            </li>
         </ul>")
    @as("EngineAttributes")
    engineAttributes: engineAttributes,
    @ocaml.doc("<p>The name of the node.
    </p>")
    @as("NodeName")
    nodeName: nodeName,
    @ocaml.doc("<p>The name of the server with which to associate the node.
    </p>")
    @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request.
    </p>")
    @as("NodeAssociationStatusToken")
    nodeAssociationStatusToken: option<nodeAssociationStatusToken>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "AssociateNodeCommand"
  let make = (~engineAttributes, ~nodeName, ~serverName, ()) =>
    new({engineAttributes, nodeName, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServerEngineAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The value to set for the attribute.
    </p>")
    @as("AttributeValue")
    attributeValue: option<attributeValue>,
    @ocaml.doc("<p>The name of the engine attribute to update.
    </p>")
    @as("AttributeName")
    attributeName: attributeName,
    @ocaml.doc("<p>The name of the server to update.
    </p>")
    @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>Contains the response to an <code>UpdateServerEngineAttributes</code> request.
    </p>")
    @as("Server")
    server: option<server>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new
  external new: request => t = "UpdateServerEngineAttributesCommand"
  let make = (~attributeName, ~serverName, ~attributeValue=?, ()) =>
    new({attributeValue, attributeName, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateServer = {
  type t
  type request = {
    @as("PreferredBackupWindow") preferredBackupWindow: option<timeWindowDefinition>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<timeWindowDefinition>,
    @ocaml.doc("<p>The name of the server to update.
    </p>")
    @as("ServerName")
    serverName: serverName,
    @ocaml.doc("<p>Sets the number of automated backups that you want to keep.
      </p>")
    @as("BackupRetentionCount")
    backupRetentionCount: option<integer_>,
    @ocaml.doc("<p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. Automated backups are enabled by default.
    </p>")
    @as("DisableAutomatedBackup")
    disableAutomatedBackup: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>Contains the response to a <code>UpdateServer</code> request.
    </p>")
    @as("Server")
    server: option<server>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "UpdateServerCommand"
  let make = (
    ~serverName,
    ~preferredBackupWindow=?,
    ~preferredMaintenanceWindow=?,
    ~backupRetentionCount=?,
    ~disableAutomatedBackup=?,
    (),
  ) =>
    new({
      preferredBackupWindow,
      preferredMaintenanceWindow,
      serverName,
      backupRetentionCount,
      disableAutomatedBackup,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMaintenance = {
  type t
  type request = {
    @ocaml.doc("<p>Engine attributes that are specific to the server on which you want to run maintenance.</p>
         <p class=\"title\">
            <b>Attributes accepted in a StartMaintenance request for Chef</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is eligible for upgrade to Chef Automate 2, 
        add this engine attribute to a <code>StartMaintenance</code> request and set the value to <code>true</code> to upgrade the server to Chef Automate 2. For more information, see 
        <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html\">Upgrade an AWS OpsWorks for Chef Automate Server to Chef Automate 2</a>.
      </p>
            </li>
         </ul>")
    @as("EngineAttributes")
    engineAttributes: option<engineAttributes>,
    @ocaml.doc("<p>The name of the server on which to run maintenance.
    </p>")
    @as("ServerName")
    serverName: serverName,
  }
  type response = {
    @ocaml.doc("<p>Contains the response to a <code>StartMaintenance</code> request.
    </p>")
    @as("Server")
    server: option<server>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "StartMaintenanceCommand"
  let make = (~serverName, ~engineAttributes=?, ()) => new({engineAttributes, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RestoreServer = {
  type t
  type request = {
    @ocaml.doc("<p> The name of the key pair to set on the new EC2 instance. This can be helpful
      if the administrator no longer has the SSH key.
    </p>")
    @as("KeyPair")
    keyPair: option<keyPair>,
    @ocaml.doc("<p> The type of instance to restore. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code>
      For example, <code>m5.large</code>. Valid values are <code>m5.large</code>, <code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not specify this parameter,
      RestoreServer uses the instance type from the specified backup.
    </p>")
    @as("InstanceType")
    instanceType: option<string_>,
    @ocaml.doc("<p> The name of the server that you want to restore.
    </p>")
    @as("ServerName")
    serverName: serverName,
    @ocaml.doc("<p> The ID of the backup that you want to use to restore a server.
    </p>")
    @as("BackupId")
    backupId: backupId,
  }
  type response = {@as("Server") server: option<server>}
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "RestoreServerCommand"
  let make = (~serverName, ~backupId, ~keyPair=?, ~instanceType=?, ()) =>
    new({keyPair, instanceType, serverName, backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBackups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns backups for the server with the specified ServerName.
    </p>")
    @as("ServerName")
    serverName: option<serverName>,
    @ocaml.doc("<p>Describes a single backup.
    </p>")
    @as("BackupId")
    backupId: option<backupId>,
  }
  type response = {
    @ocaml.doc(
      "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Contains the response to a <code>DescribeBackups</code> request.
    </p>")
    @as("Backups")
    backups: option<backups>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DescribeBackupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~serverName=?, ~backupId=?, ()) =>
    new({maxResults, nextToken, serverName, backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateServer = {
  type t
  type request = {
    @ocaml.doc("<p>
      If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.
    </p>")
    @as("BackupId")
    backupId: option<backupId>,
    @ocaml.doc("<p>A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server.</p>
         <ul>
            <li>
               <p>The key cannot be empty.</p>
            </li>
            <li>
               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
               </p>
            </li>
            <li>
               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
               </p>
            </li>
            <li>
               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
            </li>
            <li>
               <p>A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>
      The IDs of subnets in which to launch the server EC2 instance.
    </p>
         <p>
      Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have \"Auto Assign Public IP\" enabled.
    </p>
         <p>
      EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have \"Auto Assign Public IP\" enabled.
    </p>
         <p>For more information about supported Amazon EC2 platforms, see
      <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a>.</p>")
    @as("SubnetIds")
    subnetIds: option<strings>,
    @ocaml.doc("<p>
      The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates
      the service role for you, if you are using the AWS CLI or API commands,
      run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
      This template creates a CloudFormation stack that includes the service role and instance profile that you need.
    </p>")
    @as("ServiceRoleArn")
    serviceRoleArn: serviceRoleArn,
    @ocaml.doc("<p>
      A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups
      must be within the VPC that is specified by <code>SubnetIds</code>.
    </p>
         <p>
      If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to
      0.0.0.0/0 (everyone).
    </p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<strings>,
    @ocaml.doc("<p>
      The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server
      if automated backups are enabled. Valid values must be specified in one of the following formats:
    </p>
         <ul>
            <li>
               <p>
                  <code>HH:MM</code> for daily backups</p>
            </li>
            <li>
               <p>
                  <code>DDD:HH:MM</code> for weekly backups</p>
            </li>
         </ul>
         <p>
            <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>
         <p>
            <b>Example:</b> 
            <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>
         <p>
            <b>Example:</b> 
            <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<timeWindowDefinition>,
    @ocaml.doc("<p>
      The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance.
      Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).
      The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.
    </p>
         <p>
            <b>Example:</b>
            <code>Mon:08:00</code>,
      which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
    </p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<timeWindowDefinition>,
    @ocaml.doc("<p>
        The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
      </p>")
    @as("KeyPair")
    keyPair: option<keyPair>,
    @ocaml.doc("<p>
        The Amazon EC2 instance type to use. For example, <code>m5.large</code>.
      </p>")
    @as("InstanceType")
    instanceType: string_,
    @ocaml.doc("<p>
        The ARN of the instance profile that your Amazon EC2
        instances use. Although the AWS OpsWorks console typically creates
        the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml
        AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
        This template creates a CloudFormation stack that includes the instance profile you need.
        
      </p>")
    @as("InstanceProfileArn")
    instanceProfileArn: instanceProfileArn,
    @ocaml.doc("<p>
        The name of the server. The server name must be unique within your AWS account, within each region.
        Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
      </p>")
    @as("ServerName")
    serverName: serverName,
    @ocaml.doc("<p>
        The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded.
        The default value is <code>1</code>.
      </p>")
    @as("BackupRetentionCount")
    backupRetentionCount: option<backupRetentionCountDefinition>,
    @ocaml.doc("<p>Optional engine attributes on a specified server.
    </p>
         <p class=\"title\">
            <b>Attributes accepted in a Chef createServer request:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A
      base64-encoded RSA public key. The corresponding private key is required to
      access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
      generated and returned in the response.
      </p>
            </li>
            <li>
               <p>
                  <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:
      The password for the administrative user in the Chef Automate web-based dashboard. The
      password length is a minimum of eight characters, and a maximum of 32. The
      password can contain letters, numbers, and special characters
      (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper
      case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is
      generated and returned in the response.</p>
            </li>
         </ul>
         <p class=\"title\">
            <b>Attributes accepted in a Puppet createServer request:</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>
            </li>
            <li>
               <p>
                  <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository 
        (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>
            </li>
            <li>
               <p>
                  <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add 
        PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>
            </li>
         </ul>")
    @as("EngineAttributes")
    engineAttributes: option<engineAttributes>,
    @ocaml.doc("<p>
        The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion 
        is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.
      </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>
        The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
      </p>")
    @as("EngineModel")
    engineModel: option<string_>,
    @ocaml.doc("<p>
        The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.
      </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>
        Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
      </p>")
    @as("DisableAutomatedBackup")
    disableAutomatedBackup: option<boolean_>,
    @ocaml.doc("<p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. 
      If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>")
    @as("CustomPrivateKey")
    customPrivateKey: option<customPrivateKey>,
    @ocaml.doc("<p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a 
      custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>
         <ul>
            <li>
               <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>
            </li>
            <li>
               <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>
            </li>
            <li>
               <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires 
        (the certificate's <code>NotAfter</code> date).</p>
            </li>
            <li>
               <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>
            </li>
            <li>
               <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>
            </li>
         </ul>")
    @as("CustomCertificate")
    customCertificate: option<customCertificate>,
    @ocaml.doc("<p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom 
      domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the 
      generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code> 
      and <code>CustomPrivateKey</code>.</p>")
    @as("CustomDomain")
    customDomain: option<customDomain>,
    @ocaml.doc("<p>
        Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
      </p>")
    @as("AssociatePublicIpAddress")
    associatePublicIpAddress: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>The server that is created by the request.
    </p>")
    @as("Server")
    server: option<server>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "CreateServerCommand"
  let make = (
    ~serviceRoleArn,
    ~instanceType,
    ~instanceProfileArn,
    ~serverName,
    ~engine,
    ~backupId=?,
    ~tags=?,
    ~subnetIds=?,
    ~securityGroupIds=?,
    ~preferredBackupWindow=?,
    ~preferredMaintenanceWindow=?,
    ~keyPair=?,
    ~backupRetentionCount=?,
    ~engineAttributes=?,
    ~engineVersion=?,
    ~engineModel=?,
    ~disableAutomatedBackup=?,
    ~customPrivateKey=?,
    ~customCertificate=?,
    ~customDomain=?,
    ~associatePublicIpAddress=?,
    (),
  ) =>
    new({
      backupId,
      tags,
      subnetIds,
      serviceRoleArn,
      securityGroupIds,
      preferredBackupWindow,
      preferredMaintenanceWindow,
      keyPair,
      instanceType,
      instanceProfileArn,
      serverName,
      backupRetentionCount,
      engineAttributes,
      engineVersion,
      engineModel,
      engine,
      disableAutomatedBackup,
      customPrivateKey,
      customCertificate,
      customDomain,
      associatePublicIpAddress,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeServers = {
  type t
  type request = {
    @ocaml.doc("<p>This is not currently implemented for <code>DescribeServers</code> requests.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>This is not currently implemented for <code>DescribeServers</code> requests.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes the server with the specified ServerName.</p>") @as("ServerName")
    serverName: option<serverName>,
  }
  type response = {
    @ocaml.doc("<p>This is not currently implemented for <code>DescribeServers</code> requests.
    </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Contains the response to a <code>DescribeServers</code> request.</p>
         <p>
            <i>For Chef Automate servers:</i>  If <code>DescribeServersResponse$Servers$EngineAttributes</code> includes 
      CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server to Chef Automate 2. To be eligible for upgrade, a server running 
      Chef Automate 1 must have had at least one successful maintenance run after November 1, 2019.</p>
         <p>
            <i>For Puppet servers:</i>  
            <code>DescribeServersResponse$Servers$EngineAttributes</code> contains
      the following two responses:</p>
         <ul>
            <li>
               <p>
                  <code>PUPPET_API_CA_CERT</code>, the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. 
        The CA certificate is also used to sign node certificates.</p>
            </li>
            <li>
               <p>
                  <code>PUPPET_API_CRL</code>, a certificate revocation list. The certificate revocation list is for internal 
        maintenance purposes only. For more information about the Puppet certificate revocation list, see 
        <a href=\"https://puppet.com/docs/puppet/5.5/man/certificate_revocation_list.html\">Man Page: puppet certificate_revocation_list</a> in the Puppet documentation.</p>
            </li>
         </ul>")
    @as("Servers")
    servers: option<servers>,
  }
  @module("@aws-sdk/client-opsworks-cm") @new external new: request => t = "DescribeServersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~serverName=?, ()) =>
    new({maxResults, nextToken, serverName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
