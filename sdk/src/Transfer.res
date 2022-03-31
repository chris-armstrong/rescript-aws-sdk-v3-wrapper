type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-transfer") @new
external createClient: unit => awsServiceClient = "TransferClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workflowStepType = [
  | @as("DELETE") #DELETE
  | @as("TAG") #TAG
  | @as("CUSTOM") #CUSTOM
  | @as("COPY") #COPY
]
type workflowStepName = string
type workflowId = string
type workflowDescription = string
type vpcId = string
type vpcEndpointId = string
type userPassword = string
type userName = string
type userCount = int
type url = string
type tlsSessionResumptionMode = [
  | @as("ENFORCED") #ENFORCED
  | @as("ENABLED") #ENABLED
  | @as("DISABLED") #DISABLED
]
type tagValue = string
type tagKey = string
type subnetId = string
type stepResultOutputsJson = string
type statusCode = int
@ocaml.doc("<p>Describes the condition of a file transfer protocol-enabled server with respect to its
      ability to perform file operations. There are six possible states: <code>OFFLINE</code>,
        <code>ONLINE</code>, <code>STARTING</code>, <code>STOPPING</code>,
      <code>START_FAILED</code>, and <code>STOP_FAILED</code>.</p>

         <p>
            <code>OFFLINE</code> indicates that the server exists, but that it is not available for
      file operations. <code>ONLINE</code> indicates that the server is available to perform file
      operations. <code>STARTING</code> indicates that the server's was instantiated, but the
      server is not yet available to perform file operations. Under normal conditions, it can take a
      couple of minutes for the server to be completely operational. Both <code>START_FAILED</code>
      and <code>STOP_FAILED</code> are error conditions.</p>")
type state = [
  | @as("STOP_FAILED") #STOP_FAILED
  | @as("START_FAILED") #START_FAILED
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("ONLINE") #ONLINE
  | @as("OFFLINE") #OFFLINE
]
type sshPublicKeyId = string
type sshPublicKeyCount = int
type sshPublicKeyBody = string
type sourceIp = string
type sourceFileLocation = string
type sessionId = string
type serviceErrorMessage = string
type serverId = string
type securityPolicyOption = string
type securityPolicyName = string
type securityGroupId = string
type s3VersionId = string
type s3TagValue = string
type s3TagKey = string
type s3Key = string
type s3Etag = string
type s3Bucket = string
type role = string
type retryAfterSeconds = string
type response = string
type resourceType = string
type resource = string
type protocol = [@as("FTPS") #FTPS | @as("FTP") #FTP | @as("SFTP") #SFTP]
type preAuthenticationLoginBanner = string
type postAuthenticationLoginBanner = string
type posixId = float
type policy = string
type passiveIp = string
type overwriteExisting = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type nullableRole = string
type nextToken = string
type message = string
type maxResults = int
type mapTarget = string
type mapEntry = string
type logGroupName = string
@ocaml.doc("<p>Returns information related to the type of user authentication that is in use for a file
      transfer protocol-enabled server's users. For <code>AWS_DIRECTORY_SERVICE</code> or <code>SERVICE_MANAGED</code>
      authentication, the Secure Shell (SSH) public keys are stored with a user on the server
      instance. For <code>API_GATEWAY</code> authentication, your custom authentication method is
      implemented by using an API call. The server can have only one method of
      authentication.</p>")
type identityProviderType = [
  | @as("AWS_LAMBDA") #AWS_LAMBDA
  | @as("AWS_DIRECTORY_SERVICE") #AWS_DIRECTORY_SERVICE
  | @as("API_GATEWAY") #API_GATEWAY
  | @as("SERVICE_MANAGED") #SERVICE_MANAGED
]
type hostKeyFingerprint = string
type hostKey = string
type homeDirectoryType = [@as("LOGICAL") #LOGICAL | @as("PATH") #PATH]
type homeDirectory = string
type function = string
type fips = bool
type externalId = string
type executionStatus = [
  | @as("HANDLING_EXCEPTION") #HANDLING_EXCEPTION
  | @as("EXCEPTION") #EXCEPTION
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type executionId = string
type executionErrorType = [
  | @as("INTERNAL_SERVER_ERROR") #INTERNAL_SERVER_ERROR
  | @as("TIMEOUT") #TIMEOUT
  | @as("BAD_REQUEST") #BAD_REQUEST
  | @as("NOT_FOUND") #NOT_FOUND
  | @as("ALREADY_EXISTS") #ALREADY_EXISTS
  | @as("THROTTLED") #THROTTLED
  | @as("CUSTOM_STEP_FAILED") #CUSTOM_STEP_FAILED
  | @as("PERMISSION_DENIED") #PERMISSION_DENIED
]
type executionErrorMessage = string
type endpointType = [@as("VPC_ENDPOINT") #VPC_ENDPOINT | @as("VPC") #VPC | @as("PUBLIC") #PUBLIC]
type efsPath = string
type efsFileSystemId = string
type domain = [@as("EFS") #EFS | @as("S3") #S3]
type directoryId = string
type dateImported = Js.Date.t
type customStepTimeoutSeconds = int
type customStepTarget = string
type customStepStatus = [@as("FAILURE") #FAILURE | @as("SUCCESS") #SUCCESS]
type certificate = string
type callbackToken = string
type arn = string
type addressAllocationId = string
@ocaml.doc(
  "<p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>"
)
type workflowDetail = {
  @ocaml.doc("<p>Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can
      assume, so that all workflow steps can operate on the required resources</p>")
  @as("ExecutionRole")
  executionRole: role,
  @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
  workflowId: workflowId,
}
@ocaml.doc("<p>Specifies the user name, server ID, and session ID for a workflow.</p>")
type userDetails = {
  @ocaml.doc(
    "<p>The system-assigned unique identifier for a session that corresponds to the workflow.</p>"
  )
  @as("SessionId")
  sessionId: option<sessionId>,
  @ocaml.doc("<p>The system-assigned unique identifier for a Transfer server instance. </p>")
  @as("ServerId")
  serverId: serverId,
  @ocaml.doc("<p>A unique string that identifies a user account associated with a server.</p>")
  @as("UserName")
  userName: userName,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>Creates a key-value pair for a specific resource. Tags are metadata that you can use to
      search for and group a resource for various purposes. You can apply tags to servers, users,
      and roles. A tag key can take more than one value. For example, to group servers for
      accounting purposes, you might create a tag called <code>Group</code> and assign the values
        <code>Research</code> and <code>Accounting</code> to that group.</p>")
type tag = {
  @ocaml.doc("<p>Contains one or more values that you assigned to the key name you create.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The name assigned to the tag that you create.</p>") @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
@ocaml.doc("<p>Provides information about the public Secure Shell (SSH) key that is associated with a
      user account for the specific file transfer protocol-enabled server (as identified by
        <code>ServerId</code>). The information returned includes the date the key was imported, the
      public key contents, and the public key ID. A user can store more than one SSH public key
      associated with their user name on a specific server.</p>")
type sshPublicKey = {
  @ocaml.doc("<p>Specifies the <code>SshPublicKeyId</code> parameter contains the identifier of the public
      key.</p>")
  @as("SshPublicKeyId")
  sshPublicKeyId: sshPublicKeyId,
  @ocaml.doc("<p>Specifies the content of the SSH public key as specified by the
      <code>PublicKeyId</code>.</p>")
  @as("SshPublicKeyBody")
  sshPublicKeyBody: sshPublicKeyBody,
  @ocaml.doc("<p>Specifies the date that the public key was added to the user account.</p>")
  @as("DateImported")
  dateImported: dateImported,
}
type securityPolicyOptions = array<securityPolicyOption>
type securityPolicyNames = array<securityPolicyName>
type securityGroupIds = array<securityGroupId>
type secondaryGids = array<posixId>
@ocaml.doc(
  "<p>Specifies the key-value pair that are assigned to a file during the execution of a Tagging step.</p>"
)
type s3Tag = {
  @ocaml.doc("<p>The value that corresponds to the key.</p>") @as("Value") value: s3TagValue,
  @ocaml.doc("<p>The name assigned to the tag that you create.</p>") @as("Key") key: s3TagKey,
}
@ocaml.doc("<p>Specifies the customer input S3 file location. If it is used inside <code>copyStepDetails.DestinationFileLocation</code>, it should be the S3 copy destination.</p>
         <p>
      You need to provide the bucket and key.
      The key can represent either a path or a file.
      This is determined by whether or not you end the key value with the forward slash (/) character.
      If the final character is \"/\", then your file is copied to the folder, and its name does not change.
      If, rather, the final character is alphanumeric, your uploaded file is renamed to the path value. In this case, if a file with that name already exists, it is overwritten.
    </p>
         <p>For example, if your path is <code>shared-files/bob/</code>, your uploaded files are copied to the <code>shared-files/bob/</code>, folder.
      If your path is <code>shared-files/today</code>, each uploaded file is copied to the <code>shared-files</code> folder and named <code>today</code>:
      each upload overwrites the previous version of the <i>bob</i> file.</p>")
type s3InputFileLocation = {
  @ocaml.doc(
    "<p>The name assigned to the file when it was created in S3. You use the object key to retrieve the object.</p>"
  )
  @as("Key")
  key: option<s3Key>,
  @ocaml.doc("<p>Specifies the S3 bucket for the customer input file.</p>") @as("Bucket")
  bucket: option<s3Bucket>,
}
@ocaml.doc(
  "<p>Specifies the details for the file location for the file being used in the workflow. Only applicable if you are using S3 storage.</p>"
)
type s3FileLocation = {
  @ocaml.doc(
    "<p>The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object, not its metadata.</p>"
  )
  @as("Etag")
  etag: option<s3Etag>,
  @ocaml.doc("<p>Specifies the file version.</p>") @as("VersionId") versionId: option<s3VersionId>,
  @ocaml.doc(
    "<p>The name assigned to the file when it was created in S3. You use the object key to retrieve the object.</p>"
  )
  @as("Key")
  key: option<s3Key>,
  @ocaml.doc("<p>Specifies the S3 bucket that contains the file being used.</p>") @as("Bucket")
  bucket: option<s3Bucket>,
}
type protocols = array<protocol>
@ocaml.doc("<p>
      The protocol settings that are configured for your server.
    </p>")
type protocolDetails = {
  @ocaml.doc("<p>A property used with Transfer servers that use the FTPS protocol. TLS Session Resumption provides a mechanism to resume or share a negotiated secret
      key between the control and data connection for an FTPS session. <code>TlsSessionResumptionMode</code> determines whether or not the server resumes recent,
      negotiated sessions through a unique session ID. This property is available during <code>CreateServer</code> and <code>UpdateServer</code> calls.
      If a <code>TlsSessionResumptionMode</code> value is not specified during CreateServer, it is set to <code>ENFORCED</code> by default.</p>
         <ul>
            <li>
               <p>
                  <code>DISABLED</code>: the server does not process TLS session resumption client requests and creates a new TLS session for each request. </p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code>: the server processes and accepts clients that are performing TLS session resumption.
            The server doesn't reject client data connections that do not perform the TLS session resumption client processing.</p>
            </li>
            <li>
               <p>
                  <code>ENFORCED</code>: the server processes and accepts clients that are performing TLS session resumption.
            The server rejects client data connections that do not perform the TLS session resumption client processing.
            Before you set the value to <code>ENFORCED</code>, test your clients.</p>
               <note>
                  <p>Not all FTPS clients perform TLS session resumption. So, if you choose to enforce
              TLS session resumption, you prevent any connections from FTPS clients that don't perform
              the protocol negotiation. To determine whether or not you can use the
              <code>ENFORCED</code> value, you need to test your clients.</p>
               </note>
            </li>
         </ul>")
  @as("TlsSessionResumptionMode")
  tlsSessionResumptionMode: option<tlsSessionResumptionMode>,
  @ocaml.doc("<p>
      Indicates passive mode, for FTP and FTPS protocols.
      Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
      For example:
    </p>
         <p>
            <code>
        aws transfer update-server --protocol-details PassiveIp=<i>0.0.0.0</i>
            </code>
         </p>
         <p>Replace <code>
               <i>0.0.0.0</i>
            </code> in the example above with the actual IP address you want to use.</p>
         <note>
            <p>
        If you change the <code>PassiveIp</code> value, you must stop and then restart your Transfer server for the change to take effect. For details on using Passive IP (PASV) in a NAT environment, see <a href=\"http://aws.amazon.com/blogs/storage/configuring-your-ftps-server-behind-a-firewall-or-nat-with-aws-transfer-family/\">Configuring your FTPS server behind a firewall or NAT with Amazon Web Services Transfer Family</a>.
      </p>
         </note>")
  @as("PassiveIp")
  passiveIp: option<passiveIp>,
}
@ocaml.doc("<p>Consists of the logging role and the log group name.</p>")
type loggingConfiguration = {
  @ocaml.doc(
    "<p>The name of the CloudWatch logging group for the Amazon Web Services Transfer server to which this workflow belongs.</p>"
  )
  @as("LogGroupName")
  logGroupName: option<logGroupName>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
  @as("LoggingRole")
  loggingRole: option<role>,
}
@ocaml.doc(
  "<p>Contains the ID, text description, and Amazon Resource Name (ARN) for the workflow.</p>"
)
type listedWorkflow = {
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>Specifies the text description for the workflow.</p>") @as("Description")
  description: option<workflowDescription>,
  @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
  workflowId: option<workflowId>,
}
@ocaml.doc("<p>Returns properties of the user that you specify.</p>")
type listedUser = {
  @ocaml.doc("<p>Specifies the name of the user whose ARN was specified. User names are used for
      authentication purposes.</p>")
  @as("UserName")
  userName: option<userName>,
  @ocaml.doc("<p>Specifies the number of SSH public keys stored for the user you specified.</p>")
  @as("SshPublicKeyCount")
  sshPublicKeyCount: option<sshPublicKeyCount>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>
         <note>

            <p>The IAM role that controls your users' access to your Amazon S3 bucket for servers with <code>Domain=S3</code>, or your EFS file system for servers with <code>Domain=EFS</code>. 
        </p>
            <p>The policies attached to this role determine the level of access you want to provide your users when 
        transferring files into and out of your S3 buckets or EFS file systems.</p>

         </note>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
  @ocaml.doc("<p>Provides the unique Amazon Resource Name (ARN) for the user that you want to learn
      about.</p>")
  @as("Arn")
  arn: arn,
}
@ocaml.doc(
  "<p>Returns properties of a file transfer protocol-enabled server that was specified.</p>"
)
type listedServer = {
  @ocaml.doc("<p>Specifies the number of users that are assigned to a server you specified with the
        <code>ServerId</code>.</p>")
  @as("UserCount")
  userCount: option<userCount>,
  @ocaml.doc("<p>Specifies the condition of a server for the server that was described. A value of
        <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A
        <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file
      transfer operations.</p>

         <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is
      in an intermediate state, either not fully able to respond, or not fully offline. The values
      of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error
      condition.</p>")
  @as("State")
  state: option<state>,
  @ocaml.doc(
    "<p>Specifies the unique system assigned identifier for the servers that were listed.</p>"
  )
  @as("ServerId")
  serverId: option<serverId>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
  @as("LoggingRole")
  loggingRole: option<role>,
  @ocaml.doc("<p>Specifies the type of VPC endpoint that your server is connected to. If your server is
      connected to a VPC endpoint, your server isn't accessible over the public internet.</p>")
  @as("EndpointType")
  endpointType: option<endpointType>,
  @ocaml.doc("<p>Specifies the mode of authentication for a server. The default value is
        <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
      the Amazon Web Services Transfer Family service.</p>
         <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
      Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
      on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
      provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
      <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
      for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
      you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>")
  @as("IdentityProviderType")
  identityProviderType: option<identityProviderType>,
  @ocaml.doc("<p>Specifies the domain of the storage system that is used for file transfers.</p>")
  @as("Domain")
  domain: option<domain>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) for a server to be listed.</p>")
  @as("Arn")
  arn: arn,
}
@ocaml.doc("<p>Lists the properties for one or more specified associated accesses.</p>")
type listedAccess = {
  @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
  @as("ExternalId")
  externalId: option<externalId>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
}
@ocaml.doc("<p>Returns information related to the type of user authentication that is in use for a file
      transfer protocol-enabled server's users. A server can have only one method of
      authentication.</p>")
type identityProviderDetails = {
  @ocaml.doc("<p>The ARN for a lambda function to use for the Identity provider.</p>")
  @as("Function")
  function: option<function>,
  @ocaml.doc(
    "<p>The identifier of the Amazon Web Services Directory Service directory that you want to stop sharing.</p>"
  )
  @as("DirectoryId")
  directoryId: option<directoryId>,
  @ocaml.doc("<p>Provides the type of <code>InvocationRole</code> used to authenticate the user
      account.</p>")
  @as("InvocationRole")
  invocationRole: option<role>,
  @ocaml.doc("<p>Provides the location of the service endpoint used to authenticate users.</p>")
  @as("Url")
  url: option<url>,
}
@ocaml.doc("<p>Represents an object that contains entries and targets for
        <code>HomeDirectoryMappings</code>.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry:\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>")
type homeDirectoryMapEntry = {
  @ocaml.doc(
    "<p>Represents the map target that is used in a <code>HomeDirectorymapEntry</code>.</p>"
  )
  @as("Target")
  target: mapTarget,
  @ocaml.doc("<p>Represents an entry for <code>HomeDirectoryMappings</code>.</p>") @as("Entry")
  entry: mapEntry,
}
@ocaml.doc(
  "<p>Specifies the error message and type, for an error that occurs during the execution of the workflow.</p>"
)
type executionError = {
  @ocaml.doc(
    "<p>Specifies the descriptive message that corresponds to the <code>ErrorType</code>.</p>"
  )
  @as("Message")
  message: executionErrorMessage,
  @ocaml.doc("<p>Specifies the error type.</p>
         <ul>
            <li>
               <p>
                  <code>ALREADY_EXISTS</code>: occurs for a copy step, if the overwrite option is not selected and a file with the same name already exists in the target location.</p>
            </li>
            <li>
               <p>
                  <code>BAD_REQUEST</code>: a general bad request: for example, a step that attempts to
          tag an EFS file returns <code>BAD_REQUEST</code>, as only S3 files can be tagged.</p>
            </li>
            <li>
               <p>
                  <code>CUSTOM_STEP_FAILED</code>: occurs when the custom step provided a callback that indicates failure.</p>
            </li>
            <li>
               <p>
                  <code>INTERNAL_SERVER_ERROR</code>: a catch-all error that can occur for a variety of
          reasons.</p>
            </li>
            <li>
               <p>
                  <code>NOT_FOUND</code>: occurs when a requested entity, for example a source file for
          a copy step, does not exist.</p>
            </li>
            <li>
               <p>
                  <code>PERMISSION_DENIED</code>: occurs if your policy does not contain the correct
          permissions to complete one or more of the steps in the workflow.</p>
            </li>
            <li>
               <p>
                  <code>TIMEOUT</code>: occurs when the execution times out.</p>
               <note>
                  <p> You can set the <code>TimeoutSeconds</code> for a custom step, anywhere from 1 second to 1800 seconds (30 minutes). </p>
               </note>
            </li>
            <li>
               <p>
                  <code>THROTTLED</code>: occurs if you exceed the new execution refill rate of one
          workflow per second.</p>
            </li>
         </ul>")
  @as("Type")
  type_: executionErrorType,
}
@ocaml.doc("<p>Reserved for future use.</p>
         <p>
      
    </p>")
type efsFileLocation = {
  @ocaml.doc("<p>The pathname for the folder being used by a workflow.</p>") @as("Path")
  path: option<efsPath>,
  @ocaml.doc("<p>The ID of the file system, assigned by Amazon EFS.</p>") @as("FileSystemId")
  fileSystemId: option<efsFileSystemId>,
}
@ocaml.doc("<p>The name of the step, used to identify the delete step.</p>")
type deleteStepDetails = {
  @ocaml.doc("<p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    for the workflow.</p>
         <ul>
            <li>
               <p>Enter <code>${previous.file}</code> to use the previous file as the input.
          In this case, this workflow step uses the output file from the previous workflow step as input.
          This is the default value.</p>
            </li>
            <li>
               <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
            </li>
         </ul>")
  @as("SourceFileLocation")
  sourceFileLocation: option<sourceFileLocation>,
  @ocaml.doc("<p>The name of the step, used as an identifier.</p>") @as("Name")
  name: option<workflowStepName>,
}
@ocaml.doc("<p>Each step type has its own <code>StepDetails</code> structure.</p>")
type customStepDetails = {
  @ocaml.doc("<p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    for the workflow.</p>
         <ul>
            <li>
               <p>Enter <code>${previous.file}</code> to use the previous file as the input.
          In this case, this workflow step uses the output file from the previous workflow step as input.
          This is the default value.</p>
            </li>
            <li>
               <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
            </li>
         </ul>")
  @as("SourceFileLocation")
  sourceFileLocation: option<sourceFileLocation>,
  @ocaml.doc("<p>Timeout, in seconds, for the step.</p>") @as("TimeoutSeconds")
  timeoutSeconds: option<customStepTimeoutSeconds>,
  @ocaml.doc("<p>The ARN for the lambda function that is being called.</p>") @as("Target")
  target: option<customStepTarget>,
  @ocaml.doc("<p>The name of the step, used as an identifier.</p>") @as("Name")
  name: option<workflowStepName>,
}
type addressAllocationIds = array<addressAllocationId>
type tags = array<tag>
type sshPublicKeys = array<sshPublicKey>
@ocaml.doc("<p>A container object for the session details associated with a workflow.</p>")
type serviceMetadata = {
  @ocaml.doc(
    "<p>The Server ID (<code>ServerId</code>), Session ID (<code>SessionId</code>) and user (<code>UserName</code>) make up the <code>UserDetails</code>.</p>"
  )
  @as("UserDetails")
  userDetails: userDetails,
}
type s3Tags = array<s3Tag>
@ocaml.doc("<p>The full POSIX identity, including user ID (<code>Uid</code>), group ID
      (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
      files and directories in your file system determine the level of access your users get when
      transferring files into and out of your Amazon EFS file systems.</p>")
type posixProfile = {
  @ocaml.doc("<p>The secondary POSIX group IDs used for all EFS operations by this user.</p>")
  @as("SecondaryGids")
  secondaryGids: option<secondaryGids>,
  @ocaml.doc("<p>The POSIX group ID used for all EFS operations by this user.</p>") @as("Gid")
  gid: posixId,
  @ocaml.doc("<p>The POSIX user ID used for all EFS operations by this user.</p>") @as("Uid")
  uid: posixId,
}
type onUploadWorkflowDetails = array<workflowDetail>
type listedWorkflows = array<listedWorkflow>
type listedUsers = array<listedUser>
type listedServers = array<listedServer>
type listedAccesses = array<listedAccess>
@ocaml.doc(
  "<p>Specifies the location for the file being copied. Only applicable for the Copy type of workflow steps.</p>"
)
type inputFileLocation = {
  @ocaml.doc("<p>Reserved for future use.</p>") @as("EfsFileLocation")
  efsFileLocation: option<efsFileLocation>,
  @ocaml.doc("<p>Specifies the details for the S3 file being copied.</p>") @as("S3FileLocation")
  s3FileLocation: option<s3InputFileLocation>,
}
type homeDirectoryMappings = array<homeDirectoryMapEntry>
@ocaml.doc("<p>Specifies the Amazon S3 or EFS file details to be used in the step.</p>")
type fileLocation = {
  @ocaml.doc("<p>Specifies the Amazon EFS ID and the path for the file being used.</p>")
  @as("EfsFileLocation")
  efsFileLocation: option<efsFileLocation>,
  @ocaml.doc(
    "<p>Specifies the S3 details for the file being used, such as bucket, Etag, and so forth.</p>"
  )
  @as("S3FileLocation")
  s3FileLocation: option<s3FileLocation>,
}
@ocaml.doc(
  "<p>Specifies the following details for the step: error (if any), outputs (if any), and the step type.</p>"
)
type executionStepResult = {
  @ocaml.doc(
    "<p>Specifies the details for an error, if it occurred during execution of the specified workfow step.</p>"
  )
  @as("Error")
  error: option<executionError>,
  @ocaml.doc(
    "<p>The values for the key/value pair applied as a tag to the file. Only applicable if the step type is <code>TAG</code>.</p>"
  )
  @as("Outputs")
  outputs: option<stepResultOutputsJson>,
  @ocaml.doc("<p>One of the available step types.</p>
         <ul>
            <li>
               <p>
                  <i>Copy</i>: copy the file to another location</p>
            </li>
            <li>
               <p>
                  <i>Custom</i>: custom step with a lambda target</p>
            </li>
            <li>
               <p>
                  <i>Delete</i>: delete the file</p>
            </li>
            <li>
               <p>
                  <i>Tag</i>: add a tag to the file</p>
            </li>
         </ul>")
  @as("StepType")
  stepType: option<workflowStepType>,
}
@ocaml.doc("<p>The virtual private cloud (VPC) endpoint settings that are configured for your file
      transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server
      and resources only within your VPC. To control incoming internet traffic, invoke the
        <code>UpdateServer</code> API and attach an Elastic IP address to your server's
      endpoint.</p>
         <note>
            <p> After May 19, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount if your account hasn't already
      done so before May 19, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount on or before May 19, 2021,
        you will not be affected. After this date, use
        <code>EndpointType</code>=<code>VPC</code>.</p> 
      
            <p>For more information, see
        https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
         </note>")
type endpointDetails = {
  @ocaml.doc("<p>A list of security groups IDs that are available to attach to your server's
      endpoint.</p>

         <note>
            <p>This property can only be set when <code>EndpointType</code> is set to
        <code>VPC</code>.</p>

            <p>You can edit the <code>SecurityGroupIds</code> property in the <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html\">UpdateServer</a> API only if you are changing the <code>EndpointType</code> from
          <code>PUBLIC</code> or <code>VPC_ENDPOINT</code> to <code>VPC</code>. To change security
        groups associated with your server's VPC endpoint after creation, use the Amazon EC2
          <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html\">ModifyVpcEndpoint</a> API.</p>
         </note>")
  @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>The VPC ID of the VPC in which a server's endpoint will be hosted.</p>

         <note>
            <p>This property can only be set when <code>EndpointType</code> is set to
        <code>VPC</code>.</p>
         </note>")
  @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc("<p>The ID of the VPC endpoint.</p>

         <note>
            <p>This property can only be set when <code>EndpointType</code> is set to
          <code>VPC_ENDPOINT</code>.</p>
      
            <p>For more information, see
        https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
         </note>")
  @as("VpcEndpointId")
  vpcEndpointId: option<vpcEndpointId>,
  @ocaml.doc("<p>A list of subnet IDs that are required to host your server endpoint in your VPC.</p>

         <note>
            <p>This property can only be set when <code>EndpointType</code> is set to
        <code>VPC</code>.</p>
         </note>")
  @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>A list of address allocation IDs that are required to attach an Elastic IP address to your
      server's endpoint.</p>

         <note>

            <p>This property can only be set when <code>EndpointType</code> is set to <code>VPC</code>
        and it is only valid in the <code>UpdateServer</code> API.</p>
         </note>")
  @as("AddressAllocationIds")
  addressAllocationIds: option<addressAllocationIds>,
}
@ocaml.doc("<p>Describes the properties of a security policy that was specified. For more information
      about security policies, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html\">Working with security
        policies</a>.</p>")
type describedSecurityPolicy = {
  @ocaml.doc("<p>Specifies the enabled Transport Layer Security (TLS) cipher encryption algorithms in the
      security policy that is attached to the server.</p>")
  @as("TlsCiphers")
  tlsCiphers: option<securityPolicyOptions>,
  @ocaml.doc("<p>Specifies the enabled SSH message authentication code (MAC) encryption algorithms in the
      security policy that is attached to the server.</p>")
  @as("SshMacs")
  sshMacs: option<securityPolicyOptions>,
  @ocaml.doc("<p>Specifies the enabled SSH key exchange (KEX) encryption algorithms in the security policy
      that is attached to the server.</p>")
  @as("SshKexs")
  sshKexs: option<securityPolicyOptions>,
  @ocaml.doc("<p>Specifies the enabled Secure Shell (SSH) cipher encryption algorithms in the security
      policy that is attached to the server.</p>")
  @as("SshCiphers")
  sshCiphers: option<securityPolicyOptions>,
  @ocaml.doc("<p>Specifies the name of the security policy that is attached to the server.</p>")
  @as("SecurityPolicyName")
  securityPolicyName: securityPolicyName,
  @ocaml.doc("<p>Specifies whether this policy enables Federal Information Processing Standards
      (FIPS).</p>")
  @as("Fips")
  fips: option<fips>,
}
@ocaml.doc("<p>Container for the <code>WorkflowDetail</code> data type.
      It is used by actions that trigger a workflow to begin execution.</p>")
type workflowDetails = {
  @ocaml.doc("<p>A trigger that starts a workflow: the workflow begins to execute after a file is uploaded.</p>
         <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p>
         <p>
            <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{\"OnUpload\":[]}'</code>
         </p>")
  @as("OnUpload")
  onUpload: onUploadWorkflowDetails,
}
@ocaml.doc("<p>Each step type has its own <code>StepDetails</code> structure.</p>
         <p>The key/value pairs used to tag a file during the execution of a workflow step.</p>")
type tagStepDetails = {
  @ocaml.doc("<p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    for the workflow.</p>
         <ul>
            <li>
               <p>Enter <code>${previous.file}</code> to use the previous file as the input.
          In this case, this workflow step uses the output file from the previous workflow step as input.
          This is the default value.</p>
            </li>
            <li>
               <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
            </li>
         </ul>")
  @as("SourceFileLocation")
  sourceFileLocation: option<sourceFileLocation>,
  @ocaml.doc("<p>Array that contains from 1 to 10 key/value pairs.</p>") @as("Tags")
  tags: option<s3Tags>,
  @ocaml.doc("<p>The name of the step, used as an identifier.</p>") @as("Name")
  name: option<workflowStepName>,
}
@ocaml.doc("<p>Returns properties of the execution that is specified.</p>")
type listedExecution = {
  @ocaml.doc(
    "<p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception.</p>"
  )
  @as("Status")
  status: option<executionStatus>,
  @ocaml.doc("<p>A container object for the session details associated with a workflow.</p>")
  @as("ServiceMetadata")
  serviceMetadata: option<serviceMetadata>,
  @ocaml.doc("<p>A structure that describes the Amazon S3 or EFS file location.
      This is the file location when the execution begins: if the file is being copied,
      this is the initial (as opposed to destination) file location.</p>")
  @as("InitialFileLocation")
  initialFileLocation: option<fileLocation>,
  @ocaml.doc("<p>A unique identifier for the execution of a workflow.</p>") @as("ExecutionId")
  executionId: option<executionId>,
}
type executionStepResults = array<executionStepResult>
@ocaml.doc("<p>Describes the properties of a user that was specified.</p>")
type describedUser = {
  @ocaml.doc("<p>Specifies the name of the user that was requested to be described. User names are used for
      authentication purposes. This is the string that will be used by your user when they log in to
      your server.</p>")
  @as("UserName")
  userName: option<userName>,
  @ocaml.doc("<p>Specifies the key-value pairs for the user requested. Tag can be used to search for and
      group users for a variety of purposes.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>Specifies the public key portion of the Secure Shell (SSH) keys stored for the described
      user.</p>")
  @as("SshPublicKeys")
  sshPublicKeys: option<sshPublicKeys>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
        (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon Elastic File System (Amazon EFS) file systems. The POSIX
      permissions that are set on files and directories in your file system determine the level of
      access your users get when transferring files into and out of your Amazon EFS file
      systems.</p>")
  @as("PosixProfile")
  posixProfile: option<posixProfile>,
  @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>")
  @as("Policy")
  policy: option<policy>,
  @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>

         <p>In most cases, you can use this value instead of the session policy to lock your user
      down to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
      parameter value.</p>")
  @as("HomeDirectoryMappings")
  homeDirectoryMappings: option<homeDirectoryMappings>,
  @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) for the user that was requested to be
      described.</p>")
  @as("Arn")
  arn: arn,
}
@ocaml.doc("<p>Describes the properties of the access that was specified.</p>")
type describedAccess = {
  @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
  @as("ExternalId")
  externalId: option<externalId>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
  @as("Role")
  role: option<role>,
  @as("PosixProfile") posixProfile: option<posixProfile>,
  @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>")
  @as("Policy")
  policy: option<policy>,
  @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>
    
         <p>In most cases, you can use this value instead of the session policy to lock down the
      associated access to the designated home directory (\"<code>chroot</code>\"). To do this, you
      can set <code>Entry</code> to '/' and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>")
  @as("HomeDirectoryMappings")
  homeDirectoryMappings: option<homeDirectoryMappings>,
  @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
}
@ocaml.doc("<p>Each step type has its own <code>StepDetails</code> structure.</p>")
type copyStepDetails = {
  @ocaml.doc("<p>Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file
    for the workflow.</p>
         <ul>
            <li>
               <p>Enter <code>${previous.file}</code> to use the previous file as the input.
          In this case, this workflow step uses the output file from the previous workflow step as input.
          This is the default value.</p>
            </li>
            <li>
               <p>Enter <code>${original.file}</code> to use the originally-uploaded file location as input for this step.</p>
            </li>
         </ul>")
  @as("SourceFileLocation")
  sourceFileLocation: option<sourceFileLocation>,
  @ocaml.doc("<p>A flag that indicates whether or not to overwrite an existing file of the same name.
      The default is <code>FALSE</code>.</p>")
  @as("OverwriteExisting")
  overwriteExisting: option<overwriteExisting>,
  @ocaml.doc("<p>Specifies the location for the file being copied. Only applicable for Copy type workflow
      steps. Use <code>${Transfer:username}</code> in this field to parametrize the destination
      prefix by username.</p>")
  @as("DestinationFileLocation")
  destinationFileLocation: option<inputFileLocation>,
  @ocaml.doc("<p>The name of the step, used as an identifier.</p>") @as("Name")
  name: option<workflowStepName>,
}
@ocaml.doc("<p>The basic building block of a workflow.</p>")
type workflowStep = {
  @ocaml.doc("<p>Details for a step that creates one or more tags.</p>
         <p>You specify one or more tags: each tag contains a key/value pair.</p>")
  @as("TagStepDetails")
  tagStepDetails: option<tagStepDetails>,
  @ocaml.doc("<p>Details for a step that deletes the file.</p>") @as("DeleteStepDetails")
  deleteStepDetails: option<deleteStepDetails>,
  @ocaml.doc("<p>Details for a step that invokes a lambda function.</p>
         <p>
        Consists of the lambda function name, target, and timeout (in seconds).
      </p>")
  @as("CustomStepDetails")
  customStepDetails: option<customStepDetails>,
  @ocaml.doc("<p>Details for a step that performs a file copy.</p>
         <p>
        Consists of the following values:
      </p>
         <ul>
            <li>
               <p>A description</p>
            </li>
            <li>
               <p>An S3 location for the destination of the file copy.</p>
            </li>
            <li>
               <p>A flag that indicates whether or not to overwrite an existing file of the same name.
        The default is <code>FALSE</code>.</p>
            </li>
         </ul>")
  @as("CopyStepDetails")
  copyStepDetails: option<copyStepDetails>,
  @ocaml.doc("<p>
        Currently, the following step types are supported.
      </p>
         <ul>
            <li>
               <p>
                  <i>Copy</i>: copy the file to another location</p>
            </li>
            <li>
               <p>
                  <i>Custom</i>: custom step with a lambda target</p>
            </li>
            <li>
               <p>
                  <i>Delete</i>: delete the file</p>
            </li>
            <li>
               <p>
                  <i>Tag</i>: add a tag to the file</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<workflowStepType>,
}
type listedExecutions = array<listedExecution>
@ocaml.doc(
  "<p>Specifies the steps in the workflow, as well as the steps to execute in case of any errors during workflow execution.</p>"
)
type executionResults = {
  @ocaml.doc(
    "<p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>"
  )
  @as("OnExceptionSteps")
  onExceptionSteps: option<executionStepResults>,
  @ocaml.doc("<p>Specifies the details for the steps that are in the specified workflow.</p>")
  @as("Steps")
  steps: option<executionStepResults>,
}
@ocaml.doc("<p>Describes the properties of a file transfer protocol-enabled server that was
      specified.</p>")
type describedServer = {
  @ocaml.doc(
    "<p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>"
  )
  @as("WorkflowDetails")
  workflowDetails: option<workflowDetails>,
  @ocaml.doc("<p>Specifies the number of users that are assigned to a server you specified with the
        <code>ServerId</code>.</p>")
  @as("UserCount")
  userCount: option<userCount>,
  @ocaml.doc("<p>Specifies the key-value pairs that you can use to search for and group servers that were
      assigned to the server that was described.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>Specifies the condition of a server for the server that was described. A value of
        <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A
        <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file
      transfer operations.</p>

         <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is
      in an intermediate state, either not fully able to respond, or not fully offline. The values
      of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error
      condition.</p>")
  @as("State")
  state: option<state>,
  @ocaml.doc(
    "<p>Specifies the unique system-assigned identifier for a server that you instantiate.</p>"
  )
  @as("ServerId")
  serverId: option<serverId>,
  @ocaml.doc("<p>Specifies the name of the security policy that is attached to the server.</p>")
  @as("SecurityPolicyName")
  securityPolicyName: option<securityPolicyName>,
  @ocaml.doc("<p>Specifies the file transfer protocol or protocols over which your file transfer protocol
      client can connect to your server's endpoint. The available protocols are:</p>

         <ul>
            <li>
               <p>
                  <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over
          SSH</p>
            </li>
            <li>
               <p>
                  <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS
          encryption</p>
            </li>
            <li>
               <p>
                  <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p>
            </li>
         </ul>")
  @as("Protocols")
  protocols: option<protocols>,
  @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    For example, the following banner displays details about using the system.</p>
         <p>
            <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    system personnel.</code>
         </p>")
  @as("PreAuthenticationLoginBanner")
  preAuthenticationLoginBanner: option<preAuthenticationLoginBanner>,
  @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
         <note>
            <p>The SFTP protocol does not support post-authentication display banners.</p>
         </note>")
  @as("PostAuthenticationLoginBanner")
  postAuthenticationLoginBanner: option<postAuthenticationLoginBanner>,
  @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
  @as("LoggingRole")
  loggingRole: option<role>,
  @ocaml.doc("<p>Specifies the mode of authentication for a server. The default value is
        <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
      the Amazon Web Services Transfer Family service.</p>
         <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
      Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
      on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
      provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
      <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
      for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
      you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>")
  @as("IdentityProviderType")
  identityProviderType: option<identityProviderType>,
  @ocaml.doc("<p>Specifies information to call a customer-supplied authentication API. This field is not
      populated when the <code>IdentityProviderType</code> of a server is
      <code>AWS_DIRECTORY_SERVICE</code> or <code>SERVICE_MANAGED</code>.</p>")
  @as("IdentityProviderDetails")
  identityProviderDetails: option<identityProviderDetails>,
  @ocaml.doc("<p>Specifies the Base64-encoded SHA256 fingerprint of the server's host key. This value
      is equivalent to the output of the <code>ssh-keygen -l -f my-new-server-key</code>
      command.</p>")
  @as("HostKeyFingerprint")
  hostKeyFingerprint: option<hostKeyFingerprint>,
  @ocaml.doc("<p>Defines the type of endpoint that your server is connected to. If your server is connected
      to a VPC endpoint, your server isn't accessible over the public internet.</p>")
  @as("EndpointType")
  endpointType: option<endpointType>,
  @ocaml.doc("<p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
      When you host your endpoint within your VPC, you can make it accessible only to resources
      within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
      the internet. Your VPC's default security groups are automatically assigned to your
      endpoint.</p>")
  @as("EndpointDetails")
  endpointDetails: option<endpointDetails>,
  @ocaml.doc("<p>Specifies the domain of the storage system that is used for file transfers.</p>")
  @as("Domain")
  domain: option<domain>,
  @ocaml.doc("<p>
      The protocol settings that are configured for your server.
    </p>
         <p>
      Use the <code>PassiveIp</code> parameter to indicate passive mode.
      Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    </p>")
  @as("ProtocolDetails")
  protocolDetails: option<protocolDetails>,
  @ocaml.doc("<p>Specifies the ARN of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required when
        <code>Protocols</code> is set to <code>FTPS</code>.</p>")
  @as("Certificate")
  certificate: option<certificate>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) of the server.</p>") @as("Arn")
  arn: arn,
}
type workflowSteps = array<workflowStep>
@ocaml.doc("<p>The details for an execution object.</p>")
type describedExecution = {
  @ocaml.doc("<p>A structure that describes the execution results. This includes a list of the steps along with the details of each step,
    error type and message (if any), and the <code>OnExceptionSteps</code> structure.</p>")
  @as("Results")
  results: option<executionResults>,
  @ocaml.doc("<p>The status is one of the execution. Can be in progress, completed, exception encountered, or handling the exception.
      </p>")
  @as("Status")
  status: option<executionStatus>,
  @as("PosixProfile") posixProfile: option<posixProfile>,
  @ocaml.doc("<p>The IAM logging role associated with the execution.</p>")
  @as("LoggingConfiguration")
  loggingConfiguration: option<loggingConfiguration>,
  @ocaml.doc("<p>The IAM role associated with the execution.</p>") @as("ExecutionRole")
  executionRole: option<role>,
  @ocaml.doc("<p>A container object for the session details associated with a workflow.</p>")
  @as("ServiceMetadata")
  serviceMetadata: option<serviceMetadata>,
  @ocaml.doc("<p>A structure that describes the Amazon S3 or EFS file location.
      This is the file location when the execution begins: if the file is being copied,
    this is the initial (as opposed to destination) file location.</p>")
  @as("InitialFileLocation")
  initialFileLocation: option<fileLocation>,
  @ocaml.doc("<p>A unique identifier for the execution of a workflow.</p>") @as("ExecutionId")
  executionId: option<executionId>,
}
@ocaml.doc("<p>Describes the properties of the specified workflow</p>")
type describedWorkflow = {
  @ocaml.doc(
    "<p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.</p>"
  )
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
  workflowId: option<workflowId>,
  @ocaml.doc(
    "<p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>"
  )
  @as("OnExceptionSteps")
  onExceptionSteps: option<workflowSteps>,
  @ocaml.doc("<p>Specifies the details for the steps that are in the specified workflow.</p>")
  @as("Steps")
  steps: option<workflowSteps>,
  @ocaml.doc("<p>Specifies the text description for the workflow.</p>") @as("Description")
  description: option<workflowDescription>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) for the workflow.</p>") @as("Arn")
  arn: arn,
}
@ocaml.doc("<p>Amazon Web Services Transfer Family is a fully managed service that enables the transfer of files over the
      File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH)
      File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon
      S3). Amazon Web Services helps you seamlessly migrate your file transfer workflows to Amazon Web Services Transfer Family by
      integrating with existing authentication systems, and providing DNS routing with Amazon Route
      53 so nothing changes for your customers and partners, or their applications. With your data
      in Amazon S3, you can use it with Amazon Web Services services for processing, analytics, machine learning,
      and archiving. Getting started with Amazon Web Services Transfer Family is easy since there is no
      infrastructure to buy and set up.</p>")
module TestIdentityProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The password of the user account to be tested.</p>") @as("UserPassword")
    userPassword: option<userPassword>,
    @ocaml.doc("<p>The name of the user account to be tested.</p>") @as("UserName")
    userName: userName,
    @ocaml.doc("<p>The source IP address of the user account to be tested.</p>") @as("SourceIp")
    sourceIp: option<sourceIp>,
    @ocaml.doc("<p>The type of file transfer protocol to be tested.</p>

         <p>The available protocols are:</p>

         <ul>
            <li>
               <p>Secure Shell (SSH) File Transfer Protocol (SFTP)</p>
            </li>
            <li>
               <p>File Transfer Protocol Secure (FTPS)</p>
            </li>
            <li>
               <p>File Transfer Protocol (FTP)</p>
            </li>
         </ul>")
    @as("ServerProtocol")
    serverProtocol: option<protocol>,
    @ocaml.doc("<p>A system-assigned identifier for a specific server. That server's user authentication
      method is tested with a user name and password.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p>The endpoint of the service used to authenticate a user.</p>") @as("Url")
    url: url,
    @ocaml.doc("<p>A message that indicates whether the test was successful or not.</p>
         <note>
            <p>If an empty string is returned, the most likely cause is that the authentication failed due to an incorrect username or password.</p>
         </note>")
    @as("Message")
    message: option<message>,
    @ocaml.doc("<p>The HTTP status code that is the response from your API Gateway.</p>")
    @as("StatusCode")
    statusCode: statusCode,
    @ocaml.doc("<p>The response that is returned from your API Gateway.</p>") @as("Response")
    response: option<response>,
  }
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "TestIdentityProviderCommand"
  let make = (~userName, ~serverId, ~userPassword=?, ~sourceIp=?, ~serverProtocol=?, ()) =>
    new({
      userPassword: userPassword,
      userName: userName,
      sourceIp: sourceIp,
      serverProtocol: serverProtocol,
      serverId: serverId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopServer = {
  type t
  type request = {
    @ocaml.doc("<p>A system-assigned unique identifier for a server that you stopped.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "StopServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartServer = {
  type t
  type request = {
    @ocaml.doc("<p>A system-assigned unique identifier for a server that you start.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "StartServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendWorkflowStepState = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the specified step succeeded or failed.</p>") @as("Status")
    status: customStepStatus,
    @ocaml.doc(
      "<p>Used to distinguish between multiple callbacks for multiple Lambda steps within the same execution.</p>"
    )
    @as("Token")
    token: callbackToken,
    @ocaml.doc("<p>A unique identifier for the execution of a workflow.</p>") @as("ExecutionId")
    executionId: executionId,
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "SendWorkflowStepStateCommand"
  let make = (~status, ~token, ~executionId, ~workflowId, ()) =>
    new({status: status, token: token, executionId: executionId, workflowId: workflowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportSshPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user account that is assigned to one or more servers.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>The public key portion of an SSH key pair.</p>") @as("SshPublicKeyBody")
    sshPublicKeyBody: sshPublicKeyBody,
    @ocaml.doc("<p>A system-assigned unique identifier for a server.</p>") @as("ServerId")
    serverId: serverId,
  }
  @ocaml.doc("<p>Identifies the user, the server they belong to, and the identifier of the SSH public key
      associated with that user. A user can have more than one key on each server that they are
      associated with.</p>")
  type response = {
    @ocaml.doc("<p>A user name assigned to the <code>ServerID</code> value that you specified.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>The name given to a public key by the system that was imported.</p>")
    @as("SshPublicKeyId")
    sshPublicKeyId: sshPublicKeyId,
    @ocaml.doc("<p>A system-assigned unique identifier for a server.</p>") @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ImportSshPublicKeyCommand"
  let make = (~userName, ~sshPublicKeyBody, ~serverId, ()) =>
    new({userName: userName, sshPublicKeyBody: sshPublicKeyBody, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteWorkflowCommand"
  let make = (~workflowId, ()) => new({workflowId: workflowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies a user that is being deleted from a server.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance that has the user assigned to
      it.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteUserCommand"
  let make = (~userName, ~serverId, ()) => new({userName: userName, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSshPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies a user whose public key is being deleted.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>A unique identifier used to reference your user's specific SSH key.</p>")
    @as("SshPublicKeyId")
    sshPublicKeyId: sshPublicKeyId,
    @ocaml.doc("<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance
      that has the user assigned to it.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteSshPublicKeyCommand"
  let make = (~userName, ~sshPublicKeyId, ~serverId, ()) =>
    new({userName: userName, sshPublicKeyId: sshPublicKeyId, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServer = {
  type t
  type request = {
    @ocaml.doc("<p>A unique system-assigned identifier for a server instance.</p>") @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this user assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteAccessCommand"
  let make = (~externalId, ~serverId, ()) => new({externalId: externalId, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for
      resources by type. This metadata can be attached to resources for any purpose.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is
      an identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>")
    @as("Arn")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~arn, ()) => new({tagKeys: tagKeys, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListSecurityPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a
        <code>NextToken</code> parameter is returned in the output. You can then pass the
        <code>NextToken</code> parameter in a subsequent command to continue listing additional
      security policies.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the number of security policies to return as a response to the
        <code>ListSecurityPolicies</code> query.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>An array of security policies that were listed.</p>") @as("SecurityPolicyNames")
    securityPolicyNames: securityPolicyNames,
    @ocaml.doc("<p>When you can get additional results from the <code>ListSecurityPolicies</code> operation,
      a <code>NextToken</code> parameter is returned in the output. In a following command, you can
      pass in the <code>NextToken</code> parameter to continue listing security policies.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "ListSecurityPoliciesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUser = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies a user and is associated with a server as specified by the
        <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
      long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
      '-', period '.', and at sign '@'. The user name can't start
      with a hyphen, period, or at sign.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance that the user account is
      assigned to.</p>")
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: option<role>,
    @ocaml.doc("<p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
        (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions
      that are set on files and directories in your file system determines the level of access your
      users get when transferring files into and out of your Amazon EFS file systems.</p>")
    @as("PosixProfile")
    posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    
         <note>
            <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
            <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>
      
      

            <p>For an example of a session policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/session-policy\">Creating a session
          policy</a>.</p>

      

            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>Amazon Web Services
          Security Token Service API Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>

         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
         <p>
            <code>[ { \"Entry\": \"/directory1\", \"Target\":
        \"/bucket_name/home/mydirectory\" } ]</code>
         </p>

         <p>In most cases, you can use this value instead of the session policy to lock down your
      user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
      parameter value.</p>

         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry:\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  @ocaml.doc("<p>
            <code>UpdateUserResponse</code> returns the user name and identifier for the request to
      update a user's properties.</p>")
  type response = {
    @ocaml.doc("<p>The unique identifier for a user that is assigned to a server instance that was specified
      in the request.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance that the user account is
      assigned to.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateUserCommand"
  let make = (
    ~userName,
    ~serverId,
    ~role=?,
    ~posixProfile=?,
    ~policy=?,
    ~homeDirectoryMappings=?,
    ~homeDirectoryType=?,
    ~homeDirectory=?,
    (),
  ) =>
    new({
      userName: userName,
      serverId: serverId,
      role: role,
      posixProfile: posixProfile,
      policy: policy,
      homeDirectoryMappings: homeDirectoryMappings,
      homeDirectoryType: homeDirectoryType,
      homeDirectory: homeDirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: option<role>,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    
    
         <note>
            <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
            <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>
            <p>For an example of a session policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html\">Example
        session policy</a>.</p>
            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>Amazon Web ServicesSecurity Token Service API
          Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
         <p>
            <code>[ { \"Entry\": \"/directory1\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>
         <p>In most cases, you can use this value instead of the session policy to lock down your
        user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry:\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  type response = {
    @ocaml.doc("<p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using Amazon Web ServicesTransfer Family.</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc("<p>The ID of the server that the user is attached to.</p>") @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateAccessCommand"
  let make = (
    ~externalId,
    ~serverId,
    ~role=?,
    ~posixProfile=?,
    ~policy=?,
    ~homeDirectoryMappings=?,
    ~homeDirectoryType=?,
    ~homeDirectory=?,
    (),
  ) =>
    new({
      externalId: externalId,
      serverId: serverId,
      role: role,
      posixProfile: posixProfile,
      policy: policy,
      homeDirectoryMappings: homeDirectoryMappings,
      homeDirectoryType: homeDirectoryType,
      homeDirectory: homeDirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs assigned to ARNs that you can use to group and search for resources by
      type. You can attach this metadata to user accounts for any purpose.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a server, user, or
      role.</p>")
    @as("Arn")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-transfer") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~arn, ()) => new({tags: tags, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWorkflows = {
  type t
  type request = {
    @ocaml.doc("<p>
            <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output.
      You can then pass the <code>NextToken</code> parameter in a subsequent command to
      continue listing additional workflows.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the maximum number of workflows to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns the <code>Arn</code>, <code>WorkflowId</code>, and <code>Description</code> for each workflow.</p>"
    )
    @as("Workflows")
    workflows: listedWorkflows,
    @ocaml.doc("<p>
            <code>ListWorkflows</code> returns the <code>NextToken</code> parameter in the output.
      You can then pass the <code>NextToken</code> parameter in a subsequent command to
      continue listing additional workflows.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListWorkflowsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has users assigned to it.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>When you can get additional results from the <code>ListUsers</code> call, a
        <code>NextToken</code> parameter is returned in the output. You can then pass in a
      subsequent command to the <code>NextToken</code> parameter to continue listing additional
      users.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the number of users to return as a response to the <code>ListUsers</code>
      request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Returns the user accounts and their properties for the <code>ServerId</code> value that
      you specify.</p>")
    @as("Users")
    users: listedUsers,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that the users are assigned to.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>When you can get additional results from the <code>ListUsers</code> call, a
        <code>NextToken</code> parameter is returned in the output. You can then pass in a
      subsequent command to the <code>NextToken</code> parameter to continue listing additional
      users.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListUsersCommand"
  let make = (~serverId, ~nextToken=?, ~maxResults=?, ()) =>
    new({serverId: serverId, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>When you request additional results from the <code>ListTagsForResource</code> operation, a
        <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent
      command to the <code>NextToken</code> parameter to continue listing additional tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the number of tags to return as a response to the
        <code>ListTagsForResource</code> request.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an
      identifier for a specific Amazon Web Services resource, such as a server, user, or role.</p>")
    @as("Arn")
    arn: arn,
  }
  type response = {
    @ocaml.doc("<p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and
      searching for items. Tags are metadata that you define.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>When you can get additional results from the <code>ListTagsForResource</code> call, a
        <code>NextToken</code> parameter is returned in the output. You can then pass in a
      subsequent command to the <code>NextToken</code> parameter to continue listing additional
      tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN you specified to list the tags of.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~arn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServers = {
  type t
  type request = {
    @ocaml.doc("<p>When additional results are obtained from the <code>ListServers</code> command, a
        <code>NextToken</code> parameter is returned in the output. You can then pass the
        <code>NextToken</code> parameter in a subsequent command to continue listing additional
      servers.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the number of servers to return as a response to the <code>ListServers</code>
      query.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>An array of servers that were listed.</p>") @as("Servers")
    servers: listedServers,
    @ocaml.doc("<p>When you can get additional results from the <code>ListServers</code> operation, a
        <code>NextToken</code> parameter is returned in the output. In a following command, you can
      pass in the <code>NextToken</code> parameter to continue listing additional servers.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListServersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccesses = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has users assigned to it.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>When you can get additional results from the <code>ListAccesses</code> call, a
        <code>NextToken</code> parameter is returned in the output. You can then pass in a
      subsequent command to the <code>NextToken</code> parameter to continue listing additional
      accesses.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the maximum number of access SIDs to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Returns the accesses and their properties for the <code>ServerId</code> value that you
      specify.</p>")
    @as("Accesses")
    accesses: listedAccesses,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has users assigned to it.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>When you can get additional results from the <code>ListAccesses</code> call, a
        <code>NextToken</code> parameter is returned in the output. You can then pass in a
      subsequent command to the <code>NextToken</code> parameter to continue listing additional
      accesses.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListAccessesCommand"
  let make = (~serverId, ~nextToken=?, ~maxResults=?, ()) =>
    new({serverId: serverId, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the name of the security policy that is attached to the server.</p>")
    @as("SecurityPolicyName")
    securityPolicyName: securityPolicyName,
  }
  type response = {
    @ocaml.doc("<p>An array containing the properties of the security policy.</p>")
    @as("SecurityPolicy")
    securityPolicy: describedSecurityPolicy,
  }
  @module("@aws-sdk/client-transfer") @new
  external new: request => t = "DescribeSecurityPolicyCommand"
  let make = (~securityPolicyName, ()) => new({securityPolicyName: securityPolicyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUser = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies a user and is associated with a <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
      long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen
      '-', period '.', and at sign '@'. The user name can't start
      with a hyphen, period, or at sign.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>Key-value pairs that can be used to group and search for users. Tags are metadata attached
      to users for any purpose.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the
      server.</p>
         <note>
            <p>
        Currently, Transfer Family does not accept elliptical curve keys (keys beginning with <code>ecdsa</code>).
      </p>
         </note>")
    @as("SshPublicKeyBody")
    sshPublicKeyBody: option<sshPublicKeyBody>,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance. This is the specific server
      that you added your user to.</p>")
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: role,
    @ocaml.doc("<p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
        (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
      files and directories in Amazon EFS determine the level of access your users get when
      transferring files into and out of your Amazon EFS file systems.</p>")
    @as("PosixProfile")
    posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>

         <note>
            <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
            <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>

      

            <p>For an example of a session policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html\">Example session
        policy</a>.</p>

      

            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>Amazon Web Services
          Security Token Service API Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>

         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>

         <p>
            <code>[ { \"Entry\": \"/directory1\", \"Target\":
        \"/bucket_name/home/mydirectory\" } ]</code>
         </p>

         <p>In most cases, you can use this value instead of the session policy to lock your user
      down to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the HomeDirectory
      parameter value.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry:\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  type response = {
    @ocaml.doc("<p>A unique string that identifies a user account associated with a server.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc("<p>The ID of the server that the user is attached to.</p>") @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateUserCommand"
  let make = (
    ~userName,
    ~serverId,
    ~role,
    ~tags=?,
    ~sshPublicKeyBody=?,
    ~posixProfile=?,
    ~policy=?,
    ~homeDirectoryMappings=?,
    ~homeDirectoryType=?,
    ~homeDirectory=?,
    (),
  ) =>
    new({
      userName: userName,
      tags: tags,
      sshPublicKeyBody: sshPublicKeyBody,
      serverId: serverId,
      role: role,
      posixProfile: posixProfile,
      policy: policy,
      homeDirectoryMappings: homeDirectoryMappings,
      homeDirectoryType: homeDirectoryType,
      homeDirectory: homeDirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to provide your users when transferring
      files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also contain a trust relationship that allows the
      server to access your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: role,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A session policy for your user so that you can use the same IAM role across multiple users. This policy scopes down user
     access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>,
     <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
    
         <note>
            <p>This only applies when the domain of <code>ServerId</code> is S3. EFS does not use session policies.</p>
            <p>For session policies, Amazon Web Services Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>      
            <p>For an example of a session policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/session-policy.html\">Example
          session policy</a>.</p>
            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>Amazon Web Services Security Token Service API
          Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it is displayed as is. You also must ensure that your Amazon Web Services Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
         <p>
            <code>[ { \"Entry\": \"/directory1\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>
         <p>In most cases, you can use this value instead of the session policy to lock down your
      user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry:\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when they log into the server.
    If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol clients.
    If you set it <code>LOGICAL</code>, you need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon
    S3 or EFS paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/bucket_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  type response = {
    @ocaml.doc("<p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using Amazon Web Services Transfer Family.</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc("<p>The ID of the server that the user is attached to.</p>") @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateAccessCommand"
  let make = (
    ~externalId,
    ~serverId,
    ~role,
    ~posixProfile=?,
    ~policy=?,
    ~homeDirectoryMappings=?,
    ~homeDirectoryType=?,
    ~homeDirectory=?,
    (),
  ) =>
    new({
      externalId: externalId,
      serverId: serverId,
      role: role,
      posixProfile: posixProfile,
      policy: policy,
      homeDirectoryMappings: homeDirectoryMappings,
      homeDirectoryType: homeDirectoryType,
      homeDirectory: homeDirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateServer = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>
         <p>To remove an associated workflow from a server, you can provide an empty <code>OnUpload</code> object, as in the following example.</p>
         <p>
            <code>aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{\"OnUpload\":[]}'</code>
         </p>")
    @as("WorkflowDetails")
    workflowDetails: option<workflowDetails>,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance that the user account is
      assigned to.</p>")
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the name of the security policy that is attached to the server.</p>")
    @as("SecurityPolicyName")
    securityPolicyName: option<securityPolicyName>,
    @ocaml.doc("<p>Specifies the file transfer protocol or protocols over which your file transfer protocol
      client can connect to your server's endpoint. The available protocols are:</p>

         <ul>
            <li>
               <p>Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer over SSH</p>
            </li>
            <li>
               <p>File Transfer Protocol Secure (FTPS): File transfer with TLS encryption</p>
            </li>
            <li>
               <p>File Transfer Protocol (FTP): Unencrypted file transfer</p>
            </li>
         </ul>

         <note>
            <p>If you select <code>FTPS</code>, you must choose a certificate stored in Amazon Web ServicesCertificate
        Manager (ACM) which will be used to identify your server when clients connect to it over
        FTPS.</p>

            
            <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the
        <code>EndpointType</code> must be <code>VPC</code> and the
        <code>IdentityProviderType</code> must be <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>.</p>

            <p>If <code>Protocol</code> includes <code>FTP</code>, then
          <code>AddressAllocationIds</code> cannot be associated.</p>

            <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code>
        can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to
          <code>SERVICE_MANAGED</code>.</p>
         </note>")
    @as("Protocols")
    protocols: option<protocols>,
    @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    For example, the following banner displays details about using the system.</p>
         <p>
            <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    system personnel.</code>
         </p>")
    @as("PreAuthenticationLoginBanner")
    preAuthenticationLoginBanner: option<preAuthenticationLoginBanner>,
    @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
         <note>
            <p>The SFTP protocol does not support post-authentication display banners.</p>
         </note>")
    @as("PostAuthenticationLoginBanner")
    postAuthenticationLoginBanner: option<postAuthenticationLoginBanner>,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
    @as("LoggingRole")
    loggingRole: option<nullableRole>,
    @ocaml.doc("<p>An array containing all of the information required to call a customer's
      authentication API method.</p>")
    @as("IdentityProviderDetails")
    identityProviderDetails: option<identityProviderDetails>,
    @ocaml.doc("<p>The RSA private key as generated by <code>ssh-keygen -N \"\" -m PEM -f
        my-new-server-key</code>.</p>

         <important>
            <p>If you aren't planning to migrate existing users from an existing server to a new
        server, don't update the host key. Accidentally changing a server's host key can
        be disruptive.</p>
         </important>

    

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web ServicesTransfer
        Family User Guide</i>.</p>")
    @as("HostKey")
    hostKey: option<hostKey>,
    @ocaml.doc("<p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
      or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and 
      resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
         <note>
            <p> After May 19, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount if your account hasn't already
      done so before May 19, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Servicesaccount on or before May 19, 2021,
        you will not be affected. After this date, use
        <code>EndpointType</code>=<code>VPC</code>.</p> 
      
            <p>For more information, see
        https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
            <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
        this endpoint type, you have the option to directly associate up to three Elastic IPv4
        addresses (BYO IP included) with your server's endpoint and use VPC security groups to
        restrict traffic by the client's public IP address. This is not possible with
          <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
         </note>")
    @as("EndpointType")
    endpointType: option<endpointType>,
    @ocaml.doc("<p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
      When you host your endpoint within your VPC, you can make it accessible only to resources
      within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
      the internet. Your VPC's default security groups are automatically assigned to your
      endpoint.</p>")
    @as("EndpointDetails")
    endpointDetails: option<endpointDetails>,
    @ocaml.doc("<p>
      The protocol settings that are configured for your server.
    </p>
         <p>
      Use the <code>PassiveIp</code> parameter to indicate passive mode (for FTP and FTPS protocols).
      Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    </p>
         <p>Use the <code>TlsSessionResumptionMode</code> parameter to determine whether or not your Transfer server
      resumes recent, negotiated sessions through a unique session ID.</p>")
    @as("ProtocolDetails")
    protocolDetails: option<protocolDetails>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web ServicesCertificate Manager (ACM) certificate. Required
      when <code>Protocols</code> is set to <code>FTPS</code>.</p>

         <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a>
      in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p>

         <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a>
      in the <i> Amazon Web ServicesCertificate Manager User Guide</i>.</p>

         <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a
        private certificate</a> in the <i> Amazon Web ServicesCertificate Manager User
      Guide</i>.</p>

         <p>Certificates with the following cryptographic algorithms and key sizes are
      supported:</p>

         <ul>
            <li>
               <p>2048-bit RSA (RSA_2048)</p>
            </li>
            <li>
               <p>4096-bit RSA (RSA_4096)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p>
            </li>
         </ul>

         <note>
            <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP
        address specified and information about the issuer.</p>
         </note>")
    @as("Certificate")
    certificate: option<certificate>,
  }
  type response = {
    @ocaml.doc("<p>A system-assigned unique identifier for a server that the user account is assigned
      to.</p>")
    @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "UpdateServerCommand"
  let make = (
    ~serverId,
    ~workflowDetails=?,
    ~securityPolicyName=?,
    ~protocols=?,
    ~preAuthenticationLoginBanner=?,
    ~postAuthenticationLoginBanner=?,
    ~loggingRole=?,
    ~identityProviderDetails=?,
    ~hostKey=?,
    ~endpointType=?,
    ~endpointDetails=?,
    ~protocolDetails=?,
    ~certificate=?,
    (),
  ) =>
    new({
      workflowDetails: workflowDetails,
      serverId: serverId,
      securityPolicyName: securityPolicyName,
      protocols: protocols,
      preAuthenticationLoginBanner: preAuthenticationLoginBanner,
      postAuthenticationLoginBanner: postAuthenticationLoginBanner,
      loggingRole: loggingRole,
      identityProviderDetails: identityProviderDetails,
      hostKey: hostKey,
      endpointType: endpointType,
      endpointDetails: endpointDetails,
      protocolDetails: protocolDetails,
      certificate: certificate,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user assigned to one or more servers. User names are part of the sign-in
      credentials to use the Amazon Web Services Transfer Family service and perform file transfer tasks.</p>")
    @as("UserName")
    userName: userName,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this user assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p>An array containing the properties of the user account for the <code>ServerID</code> value
      that you specified.</p>")
    @as("User")
    user: describedUser,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this user assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeUserCommand"
  let make = (~userName, ~serverId, ()) => new({userName: userName, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
    The users of the group that you associate have access to your Amazon S3 or Amazon EFS
    resources over the enabled protocols using Amazon Web Services Transfer Family. If you know the group name,
    you can view the SID values by running the following command using Windows PowerShell.</p>

         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamAccountName,ObjectSid</code>
         </p>
  
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active Directory group.</p>

         <p>The regex used to validate this parameter is a string of characters consisting of uppercase and lowercase alphanumeric characters with no spaces.
    You can also include underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this access assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p>The external ID of the server that the access is attached to.</p>") @as("Access")
    access: describedAccess,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this access assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeAccessCommand"
  let make = (~externalId, ~serverId, ()) => new({externalId: externalId, serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateServer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the workflow ID for the workflow to assign and the execution role used for executing the workflow.</p>"
    )
    @as("WorkflowDetails")
    workflowDetails: option<workflowDetails>,
    @ocaml.doc("<p>Key-value pairs that can be used to group and search for servers.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Specifies the name of the security policy that is attached to the server.</p>")
    @as("SecurityPolicyName")
    securityPolicyName: option<securityPolicyName>,
    @ocaml.doc("<p>The protocol settings that are configured for your server.</p>
         <p>
      Use the <code>PassiveIp</code> parameter to indicate passive mode (for FTP and FTPS protocols).
      Enter a single dotted-quad IPv4 address, such as the external IP address of a firewall, router, or load balancer.
    </p>
         <p>Use the <code>TlsSessionResumptionMode</code> parameter to determine whether or not your Transfer server
      resumes recent, negotiated sessions through a unique session ID.</p>")
    @as("ProtocolDetails")
    protocolDetails: option<protocolDetails>,
    @ocaml.doc("<p>Specifies the file transfer protocol or protocols over which your file transfer protocol
      client can connect to your server's endpoint. The available protocols are:</p>

         <ul>
            <li>
               <p>
                  <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over
          SSH</p>
            </li>
            <li>
               <p>
                  <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS
          encryption</p>
            </li>
            <li>
               <p>
                  <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p>
            </li>
         </ul>

         <note>
            <p>If you select <code>FTPS</code>, you must choose a certificate stored in Amazon Web Services Certificate
        Manager (ACM) which is used to identify your server when clients connect to it over
        FTPS.</p>

            <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the
          <code>EndpointType</code> must be <code>VPC</code> and the
          <code>IdentityProviderType</code> must be <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>.</p>

            <p>If <code>Protocol</code> includes <code>FTP</code>, then
          <code>AddressAllocationIds</code> cannot be associated.</p>

            <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code>
        can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to
          <code>SERVICE_MANAGED</code>.</p>
         </note>")
    @as("Protocols")
    protocols: option<protocols>,
    @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed before the user authenticates.
    For example, the following banner displays details about using the system.</p>
         <p>
            <code>This system is for the use of authorized users only. Individuals using this computer system without authority,
    or in excess of their authority, are subject to having all of their activities on this system monitored and recorded by
    system personnel.</code>
         </p>")
    @as("PreAuthenticationLoginBanner")
    preAuthenticationLoginBanner: option<preAuthenticationLoginBanner>,
    @ocaml.doc("<p>Specify a string to display when users connect to a server. This string is displayed after the user authenticates.</p>
         <note>
            <p>The SFTP protocol does not support post-authentication display banners.</p>
         </note>")
    @as("PostAuthenticationLoginBanner")
    postAuthenticationLoginBanner: option<postAuthenticationLoginBanner>,
    @ocaml.doc("<p>Specifies the Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
    @as("LoggingRole")
    loggingRole: option<role>,
    @ocaml.doc("<p>Specifies the mode of authentication for a server. The default value is
        <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
      the Amazon Web Services Transfer Family service.</p>
         <p>Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
      Active Directory groups in Amazon Web Services Managed Active Directory or Microsoft Active Directory in your
      on-premises environment or in Amazon Web Services using AD Connectors. This option also requires you to
      provide a Directory ID using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
      <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
      for authentication using the <code>IdentityProviderDetails</code> parameter.</p>
         <p>Use the <code>AWS_LAMBDA</code> value to directly use a Lambda function as your identity provider. If you choose this value,
      you must specify the ARN for the lambda function in the <code>Function</code> parameter for the <code>IdentityProviderDetails</code> data type.</p>")
    @as("IdentityProviderType")
    identityProviderType: option<identityProviderType>,
    @ocaml.doc("<p>Required when <code>IdentityProviderType</code> is set to
        <code>AWS_DIRECTORY_SERVICE</code> or <code>API_GATEWAY</code>. Accepts an array containing
      all of the information required to use a directory in <code>AWS_DIRECTORY_SERVICE</code> or
      invoke a customer-supplied authentication API, including the API Gateway URL. Not required
      when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>")
    @as("IdentityProviderDetails")
    identityProviderDetails: option<identityProviderDetails>,
    @ocaml.doc("<p>The RSA private key as generated by the <code>ssh-keygen -N \"\" -m PEM -f
        my-new-server-key</code> command.</p>

         <important>
            <p>If you aren't planning to migrate existing users from an existing SFTP-enabled
        server to a new server, don't update the host key. Accidentally changing a
        server's host key can be disruptive.</p>
         </important>

    

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>Amazon Web Services Transfer
        Family User Guide</i>.</p>")
    @as("HostKey")
    hostKey: option<hostKey>,
    @ocaml.doc("<p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
      or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and 
      resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
         <note>
            <p> After May 19, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account if your account hasn't already
      done so before May 19, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your Amazon Web Services account on or before May 19, 2021,
        you will not be affected. After this date, use
        <code>EndpointType</code>=<code>VPC</code>.</p> 
      
            <p>For more information, see
        https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.</p>
            <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With
        this endpoint type, you have the option to directly associate up to three Elastic IPv4
        addresses (BYO IP included) with your server's endpoint and use VPC security groups to
        restrict traffic by the client's public IP address. This is not possible with
          <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p>
         </note>")
    @as("EndpointType")
    endpointType: option<endpointType>,
    @ocaml.doc("<p>The virtual private cloud (VPC) endpoint settings that are configured for your server.
      When you host your endpoint within your VPC, you can make it accessible only to resources
      within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over
      the internet. Your VPC's default security groups are automatically assigned to your
      endpoint.</p>")
    @as("EndpointDetails")
    endpointDetails: option<endpointDetails>,
    @ocaml.doc("<p>The domain of the storage system that is used for file transfers. There are two domains
      available: Amazon Simple Storage Service (Amazon S3) and Amazon Elastic File System (Amazon EFS). The
      default value is S3.</p>

         <note>
            <p>After the server is created, the domain cannot be changed.</p>
         </note>")
    @as("Domain")
    domain: option<domain>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services Certificate Manager (ACM) certificate. Required
      when <code>Protocols</code> is set to <code>FTPS</code>.</p>

         <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a>
      in the <i> Amazon Web Services Certificate Manager User Guide</i>.</p>

         <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a>
      in the <i> Amazon Web Services Certificate Manager User Guide</i>.</p>

         <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a
        private certificate</a> in the <i> Amazon Web Services Certificate Manager User
      Guide</i>.</p>

         <p>Certificates with the following cryptographic algorithms and key sizes are
      supported:</p>

         <ul>
            <li>
               <p>2048-bit RSA (RSA_2048)</p>
            </li>
            <li>
               <p>4096-bit RSA (RSA_4096)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p>
            </li>
            <li>
               <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p>
            </li>
         </ul>

         <note>
            <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP
        address specified and information about the issuer.</p>
         </note>")
    @as("Certificate")
    certificate: option<certificate>,
  }
  type response = {
    @ocaml.doc("<p>The service-assigned ID of the server that is created.</p>") @as("ServerId")
    serverId: serverId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateServerCommand"
  let make = (
    ~workflowDetails=?,
    ~tags=?,
    ~securityPolicyName=?,
    ~protocolDetails=?,
    ~protocols=?,
    ~preAuthenticationLoginBanner=?,
    ~postAuthenticationLoginBanner=?,
    ~loggingRole=?,
    ~identityProviderType=?,
    ~identityProviderDetails=?,
    ~hostKey=?,
    ~endpointType=?,
    ~endpointDetails=?,
    ~domain=?,
    ~certificate=?,
    (),
  ) =>
    new({
      workflowDetails: workflowDetails,
      tags: tags,
      securityPolicyName: securityPolicyName,
      protocolDetails: protocolDetails,
      protocols: protocols,
      preAuthenticationLoginBanner: preAuthenticationLoginBanner,
      postAuthenticationLoginBanner: postAuthenticationLoginBanner,
      loggingRole: loggingRole,
      identityProviderType: identityProviderType,
      identityProviderDetails: identityProviderDetails,
      hostKey: hostKey,
      endpointType: endpointType,
      endpointDetails: endpointDetails,
      domain: domain,
      certificate: certificate,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
    @ocaml.doc("<p>
            <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output.
      You can then pass the <code>NextToken</code> parameter in a subsequent command to
      continue listing additional executions.</p>
         <p>
      This is useful for pagination, for instance.
      If you have 100 executions for a workflow, you might only want to list first 10. If so, callthe API by specifing the <code>max-results</code>:
    </p>
         <p>
            <code>aws transfer list-executions --max-results 10</code>
         </p>
         <p>
      This returns details for the first 10 executions, as well as the pointer (<code>NextToken</code>) to the eleventh execution.
      You can now call the API again, suppling the <code>NextToken</code> value you received:
    </p>
         <p>
            <code>aws transfer list-executions --max-results 10 --next-token $somePointerReturnedFromPreviousListResult</code>
         </p>
         <p>
      This call returns the next 10 executions, the 11th through the 20th. You can then repeat the call until the details
      for all 100 executions have been returned.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the aximum number of executions to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Returns the details for each execution.</p>
         <ul>
            <li>
               <p>
                  <b>NextToken</b>: returned from a call to several APIs,
      you can use pass it to a subsequent command to continue listing additional executions.</p>
            </li>
            <li>
               <p>
                  <b>StartTime</b>: timestamp indicating when the execution began.</p>
            </li>
            <li>
               <p>
                  <b>Executions</b>: details of the execution, including the execution ID, initial file location,
      and Service metadata.</p>
            </li>
            <li>
               <p>
                  <b>Status</b>: one of the following values:
        <code>IN_PROGRESS</code>, <code>COMPLETED</code>, <code>EXCEPTION</code>, <code>HANDLING_EXEPTION</code>.
      </p>
            </li>
         </ul>")
    @as("Executions")
    executions: listedExecutions,
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
    @ocaml.doc("<p>
            <code>ListExecutions</code> returns the <code>NextToken</code> parameter in the output.
      You can then pass the <code>NextToken</code> parameter in a subsequent command to
      continue listing additional executions.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "ListExecutionsCommand"
  let make = (~workflowId, ~nextToken=?, ~maxResults=?, ()) =>
    new({workflowId: workflowId, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServer = {
  type t
  type request = {
    @ocaml.doc("<p>A system-assigned unique identifier for a server.</p>") @as("ServerId")
    serverId: serverId,
  }
  type response = {
    @ocaml.doc("<p>An array containing the properties of a server with the <code>ServerID</code> you
      specified.</p>")
    @as("Server")
    server: describedServer,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExecution = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
    @ocaml.doc("<p>A unique identifier for the execution of a workflow.</p>") @as("ExecutionId")
    executionId: executionId,
  }
  type response = {
    @ocaml.doc("<p>The structure that contains the details of the workflow' execution.</p>")
    @as("Execution")
    execution: describedExecution,
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeExecutionCommand"
  let make = (~workflowId, ~executionId, ()) =>
    new({workflowId: workflowId, executionId: executionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs that can be used to group and search for workflows. Tags are metadata attached
      to workflows for any purpose.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Specifies the steps (actions) to take if errors are encountered during execution of the workflow.</p>
         <note>
            <p>For custom steps, the lambda function needs to send <code>FAILURE</code> to the call
        back API to kick off the exception steps. Additionally, if the lambda does not send
          <code>SUCCESS</code> before it times out, the exception steps are executed.</p>
         </note>")
    @as("OnExceptionSteps")
    onExceptionSteps: option<workflowSteps>,
    @ocaml.doc("<p>Specifies the details for the steps that are in the specified workflow.</p>
         <p>
      The <code>TYPE</code> specifies which of the following actions is being taken for this step.
    </p>
         <ul>
            <li>
               <p>
                  <i>Copy</i>: copy the file to another location</p>
            </li>
            <li>
               <p>
                  <i>Custom</i>: custom step with a lambda target</p>
            </li>
            <li>
               <p>
                  <i>Delete</i>: delete the file</p>
            </li>
            <li>
               <p>
                  <i>Tag</i>: add a tag to the file</p>
            </li>
         </ul>
         <note>
            <p>
        Currently, copying and tagging are supported only on S3.
      </p>
         </note>
         <p>
      For file location, you specify either the S3 bucket and key, or the EFS filesystem ID and path.
    </p>")
    @as("Steps")
    steps: workflowSteps,
    @ocaml.doc("<p>A textual description for the workflow.</p>") @as("Description")
    description: option<workflowDescription>,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "CreateWorkflowCommand"
  let make = (~steps, ~tags=?, ~onExceptionSteps=?, ~description=?, ()) =>
    new({tags: tags, onExceptionSteps: onExceptionSteps, steps: steps, description: description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkflow = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the workflow.</p>") @as("WorkflowId")
    workflowId: workflowId,
  }
  type response = {
    @ocaml.doc("<p>The structure that contains the details of the workflow.</p>") @as("Workflow")
    workflow: describedWorkflow,
  }
  @module("@aws-sdk/client-transfer") @new external new: request => t = "DescribeWorkflowCommand"
  let make = (~workflowId, ()) => new({workflowId: workflowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
