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
type vpcId = string
type vpcEndpointId = string
type userPassword = string
type userName = string
type userCount = int
type url = string
type tagValue = string
type tagKey = string
type subnetId = string
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
type serviceErrorMessage = string
type serverId = string
type securityPolicyOption = string
type securityPolicyName = string
type securityGroupId = string
type role = string
type retryAfterSeconds = string
type response = string
type resourceType = string
type resource = string
type protocol = [@as("FTPS") #FTPS | @as("FTP") #FTP | @as("SFTP") #SFTP]
type posixId = float
type policy = string
type nullableRole = string
type nextToken = string
type message = string
type maxResults = int
type mapTarget = string
type mapEntry = string
@ocaml.doc("<p>Returns information related to the type of user authentication that is in use for a file
      transfer protocol-enabled server's users. For <code>AWS_DIRECTORY_SERVICE</code> or <code>SERVICE_MANAGED</code>
      authentication, the Secure Shell (SSH) public keys are stored with a user on the server
      instance. For <code>API_GATEWAY</code> authentication, your custom authentication method is
      implemented by using an API call. The server can have only one method of
      authentication.</p>")
type identityProviderType = [
  | @as("AWS_DIRECTORY_SERVICE") #AWS_DIRECTORY_SERVICE
  | @as("API_GATEWAY") #API_GATEWAY
  | @as("SERVICE_MANAGED") #SERVICE_MANAGED
]
type hostKeyFingerprint = string
type hostKey = string
type homeDirectoryType = [@as("LOGICAL") #LOGICAL | @as("PATH") #PATH]
type homeDirectory = string
type fips = bool
type externalId = string
type endpointType = [@as("VPC_ENDPOINT") #VPC_ENDPOINT | @as("VPC") #VPC | @as("PUBLIC") #PUBLIC]
type domain = [@as("EFS") #EFS | @as("S3") #S3]
type directoryId = string
type dateImported = Js.Date.t
type certificate = string
type arn = string
type addressAllocationId = string
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
type protocols = array<protocol>
@ocaml.doc("<p>Returns properties of the user that you specify.</p>")
type listedUser = {
  @ocaml.doc("<p>Specifies the name of the user whose ARN was specified. User names are used for
      authentication purposes.</p>")
  @as("UserName")
  userName: option<userName>,
  @ocaml.doc("<p>Specifies the number of SSH public keys stored for the user you specified.</p>")
  @as("SshPublicKeyCount")
  sshPublicKeyCount: option<sshPublicKeyCount>,
  @ocaml.doc("<p>Specifies the role that is in use by this user. A <i>role</i> is an AWS
      Identity and Access Management (IAM) entity that, in this case, allows a file transfer
      protocol-enabled server to act on a user's behalf. It allows the server to inherit the
      trust relationship that enables that user to perform file operations to their Amazon S3
      bucket.</p>
         <note>

            <p>The IAM role that controls your users' access to your Amazon S3 bucket for servers with <code>Domain=S3</code>, or your EFS file system for servers with <code>Domain=EFS</code>. 
        </p>
            <p>The policies attached to this role determine the level of access you want to provide your users when 
        transferring files into and out of your S3 buckets or EFS file systems.</p>

         </note>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>Specifies the type of landing directory (folder) you mapped for your users' home
      directory. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket
      paths as is in their file transfer protocol clients. If you set it <code>LOGICAL</code>, you
      will need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to
      make Amazon S3 paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Specifies the location that files are written to or read from an Amazon S3 bucket for the
      user you specify by their ARN.</p>")
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
  @ocaml.doc("<p>Specifies the AWS Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging.</p>")
  @as("LoggingRole")
  loggingRole: option<role>,
  @ocaml.doc("<p>Specifies the type of VPC endpoint that your server is connected to. If your server is
      connected to a VPC endpoint, your server isn't accessible over the public
      internet.</p>")
  @as("EndpointType")
  endpointType: option<endpointType>,
  @ocaml.doc("<p>Specifies the authentication method used to validate a user for a server that was
      specified. This can include Secure Shell (SSH), Active Directory groups, user name and
      password combinations, or your own custom authentication method. </p>")
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
  @ocaml.doc("<p>A unique identifier that might be required when you assume a role in another account. Think
      of the <code>ExternalID</code> as a group membership mechanism that uses a unique identifier
      (often a SID, but could be a group name or something else) as a basis. If the administrator of
      the account to which the role belongs provided you with an external ID, then provide that
      value in the <code>ExternalId</code> parameter. A cross-account role is usually set up to
      trust everyone in an account. Therefore, the administrator of the trusting account might send
      an external ID to the administrator of the trusted account. That way, only someone with the ID
      can assume the role, rather than everyone in the account.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
  @as("ExternalId")
  externalId: option<externalId>,
  @ocaml.doc("<p>The AWS Identity and Access Management (IAM) role that controls access to your Amazon S3
      bucket from the specified associated access. The policies attached to this role will determine
      the level of access that you want to provide the associated access when transferring files
      into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust
      relationship that allows a server to access your resources when servicing transfer requests
      for the associated access.</p>")
  @as("Role")
  role: option<role>,
  @ocaml.doc("<p>The type of landing directory (folder) that you want your users' home directory to be when
      they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it to
        <code>LOGICAL</code>, you must provide mappings in the <code>HomeDirectoryMappings</code>
      for how you want to make Amazon S3 paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Specifies the landing directory (or folder), which is the location that files are written
      to or read from in an Amazon S3 bucket, for the described access.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
}
@ocaml.doc("<p>Returns information related to the type of user authentication that is in use for a file
      transfer protocol-enabled server's users. A server can have only one method of
      authentication.</p>")
type identityProviderDetails = {
  @ocaml.doc(
    "<p>The identifier of the AWS Directory Service directory that you want to stop sharing.</p>"
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
        <code>HomeDirectoryMappings</code>.</p>")
type homeDirectoryMapEntry = {
  @ocaml.doc(
    "<p>Represents the map target that is used in a <code>HomeDirectorymapEntry</code>.</p>"
  )
  @as("Target")
  target: mapTarget,
  @ocaml.doc("<p>Represents an entry and a target for <code>HomeDirectoryMappings</code>.</p>")
  @as("Entry")
  entry: mapEntry,
}
type addressAllocationIds = array<addressAllocationId>
type tags = array<tag>
type sshPublicKeys = array<sshPublicKey>
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
type listedUsers = array<listedUser>
type listedServers = array<listedServer>
type listedAccesses = array<listedAccess>
type homeDirectoryMappings = array<homeDirectoryMapEntry>
@ocaml.doc("<p>The virtual private cloud (VPC) endpoint settings that are configured for your file
      transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server
      and resources only within your VPC. To control incoming internet traffic, invoke the
        <code>UpdateServer</code> API and attach an Elastic IP address to your server's
      endpoint.</p>
         <note>
            <p> After March 31, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your AWS account if your account hasn't already
      done so before March 31, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your AWS account on or before March 31, 2021,
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
  @ocaml.doc("<p>The IAM role that controls your users' access to your Amazon S3 bucket. The
      policies attached to this role will determine the level of access you want to provide your
      users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role
      should also contain a trust relationship that allows a server to access your resources when
      servicing your users' transfer requests.</p>")
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
  @ocaml.doc("<p>Specifies the name of the policy in use for the described user.</p>") @as("Policy")
  policy: option<policy>,
  @ocaml.doc("<p>Specifies the type of landing directory (folder) you mapped for your users to see when
      they log into the file transfer protocol-enabled server. If you set it to <code>PATH</code>,
      the user will see the absolute Amazon S3 bucket or EFS paths as is in their file transfer protocol
      clients. If you set it <code>LOGICAL</code>, you will need to provide mappings in the
        <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or EFS paths visible to your
      users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Specifies the logical directory mappings that specify what Amazon S3 or EFS paths and keys should
      be visible to your user and how you want to make them visible. You will need to specify the
        \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code> shows how the
      path is made visible and <code>Target</code> is the actual Amazon S3 or EFS path. If you only specify
      a target, it will be displayed as is. You will need to also make sure that your AWS Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>.</p>

         <p>In most cases, you can use this value instead of the scope-down policy to lock your user
      down to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
      parameter value.</p>")
  @as("HomeDirectoryMappings")
  homeDirectoryMappings: option<homeDirectoryMappings>,
  @ocaml.doc("<p>Specifies the landing directory (or folder), which is the location that files are written
      to or read from in an Amazon S3 bucket, for the described user. An example is
          <i>
               <code>your-Amazon-S3-bucket-name>/home/username</code>
            </i>.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) for the user that was requested to be
      described.</p>")
  @as("Arn")
  arn: arn,
}
@ocaml.doc("<p>Describes the properties of a file transfer protocol-enabled server that was
      specified.</p>")
type describedServer = {
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
  @ocaml.doc("<p>Specifies the AWS Identity and Access Management (IAM) role that allows a server to turn
      on Amazon CloudWatch logging for Amazon S3 or Amazon EFS events. When set, user activity can be viewed in
      your CloudWatch logs.</p>")
  @as("LoggingRole")
  loggingRole: option<role>,
  @ocaml.doc("<p>Specifies the mode of authentication method enabled for this service. A value of
        <code>AWS_DIRECTORY_SERVICE</code> means that you are providing access to Active Directory
      groups in AWS Managed Active Directory or Microsoft Active Directory in your on-premises
      environment or in AWS using AD Connectors. A value of <code>SERVICE_MANAGED</code> means that
      you are using this server to store and access user credentials within the service. A value of
        <code>API_GATEWAY</code> indicates that you have integrated an API Gateway endpoint that
      will be invoked for authenticating your user into the service.</p>")
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
  @ocaml.doc("<p>Specifies the virtual private cloud (VPC) endpoint settings that you configured for your
      server.</p>")
  @as("EndpointDetails")
  endpointDetails: option<endpointDetails>,
  @ocaml.doc("<p>Specifies the domain of the storage system that is used for file transfers.</p>")
  @as("Domain")
  domain: option<domain>,
  @ocaml.doc("<p>Specifies the ARN of the AWS Certificate Manager (ACM) certificate. Required when
        <code>Protocols</code> is set to <code>FTPS</code>.</p>")
  @as("Certificate")
  certificate: option<certificate>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) of the server.</p>") @as("Arn")
  arn: arn,
}
@ocaml.doc("<p>Describes the properties of the access that was specified.</p>")
type describedAccess = {
  @ocaml.doc("<p>A unique identifier that might be required when you assume a role in another account.
      Think of the <code>ExternalID</code> as a group membership mechanism that uses a unique
      identifier (often a SID, but could be a group name or something else) as a basis. If the
      administrator of the account to which the role belongs provided you with an external ID, then
      provide that value in the <code>ExternalId</code> parameter. A cross-account role is usually
      set up to trust everyone in an account. Therefore, the administrator of the trusting account
      might send an external ID to the administrator of the trusted account. That way, only someone
      with the ID can assume the role, rather than everyone in the account.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
  @as("ExternalId")
  externalId: option<externalId>,
  @ocaml.doc("<p>The IAM role that controls access to your Amazon S3 bucket from the specified associated
      access. The policies attached to this role will determine the level of access that you want to
      provide the associated access when transferring files into and out of your Amazon S3 bucket or
      buckets. The IAM role should also contain a trust relationship that allows a server to access
      your resources when servicing transfer requests for the associated access.</p>")
  @as("Role")
  role: option<role>,
  @as("PosixProfile") posixProfile: option<posixProfile>,
  @ocaml.doc("<p>A scope-down policy for your user so that you can use the same AWS Identity and Access
      Management (IAM) role across multiple users. This policy scopes down user access to portions
      of their Amazon S3 bucket. Variables that you can use inside this policy include
        <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and
        <code>${Transfer:HomeBucket}</code>.</p>")
  @as("Policy")
  policy: option<policy>,
  @ocaml.doc("<p>The type of landing directory (folder) that you want your users' home directory to be when
      they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it to
        <code>LOGICAL</code>, you must provide mappings in the <code>HomeDirectoryMappings</code>
      for how you want to make Amazon S3 paths visible to your users.</p>")
  @as("HomeDirectoryType")
  homeDirectoryType: option<homeDirectoryType>,
  @ocaml.doc("<p>Specifies the logical directory mappings that specify what Amazon S3 or Amazon EFS paths
      and keys should be visible to the associated access and how you want to make them visible. You
      must specify the \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code>
      shows how the path is made visible and <code>Target</code> is the actual Amazon S3 or EFS
      path. If you only specify a target, it will be displayed as is. You also must ensure that your
      AWS Identity and Access Management (IAM) role provides access to paths in
      <code>Target</code>.</p>
    
         <p>In most cases, you can use this value instead of the scope-down policy to lock down the
      associated access to the designated home directory (\"<code>chroot</code>\"). To do this, you
      can set <code>Entry</code> to '/' and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>")
  @as("HomeDirectoryMappings")
  homeDirectoryMappings: option<homeDirectoryMappings>,
  @ocaml.doc("<p>Specifies the landing directory (or folder), which is the location that files are written
      to or read from in an Amazon S3 bucket, for the described access.</p>")
  @as("HomeDirectory")
  homeDirectory: option<homeDirectory>,
}
@ocaml.doc("<p>AWS Transfer Family is a fully managed service that enables the transfer of files over the
      File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH)
      File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon
      S3). AWS helps you seamlessly migrate your file transfer workflows to AWS Transfer Family by
      integrating with existing authentication systems, and providing DNS routing with Amazon Route
      53 so nothing changes for your customers and partners, or their applications. With your data
      in Amazon S3, you can use it with AWS services for processing, analytics, machine learning,
      and archiving. Getting started with AWS Transfer Family is easy since there is no
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
    @ocaml.doc("<p>A message that indicates whether the test was successful or not.</p>")
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

  @module("@aws-sdk/client-transfer") @new external new: request => t = "StartServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
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

  @module("@aws-sdk/client-transfer") @new external new: request => t = "DeleteServerCommand"
  let make = (~serverId, ()) => new({serverId: serverId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
      The users of the group that you associate have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using AWS Transfer Family. If you know the group name,
      you can view the SID values by running the following command using Windows PowerShell.</p>
         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamaccountName,ObjectSid</code>
         </p>
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active
      Directory group.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server that has this user assigned.</p>"
    )
    @as("ServerId")
    serverId: serverId,
  }

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
      an identifier for a specific AWS resource, such as a server, user, or role.</p>")
    @as("Arn")
    arn: arn,
  }

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
    @ocaml.doc("<p>The IAM role that controls your users' access to your Amazon S3 bucket. The policies
      attached to this role determine the level of access you want to provide your users when
      transferring files into and out of your S3 bucket or buckets. The IAM role should also contain
      a trust relationship that allows the server to access your resources when servicing your
      users' transfer requests.</p>")
    @as("Role")
    role: option<role>,
    @ocaml.doc("<p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
        (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon Elastic File Systems (Amazon EFS). The POSIX permissions
      that are set on files and directories in your file system determines the level of access your
      users get when transferring files into and out of your Amazon EFS file systems.</p>")
    @as("PosixProfile")
    posixProfile: option<posixProfile>,
    @ocaml.doc("<p>Allows you to supply a scope-down policy for your user so you can use the same IAM role
      across multiple users. The policy scopes down user access to portions of your Amazon S3
      bucket. Variables you can use inside this policy include <code>${Transfer:UserName}</code>,
        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
         <note>
            <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>
         

         

            <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down\">Creating a scope-down
          policy</a>.</p>

         

            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS
          Security Token Service API Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should be visible to
      your user and how you want to make them visible. You will need to specify the
        \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code> shows how the
      path is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you only specify
      a target, it will be displayed as is. You will need to also make sure that your IAM role
      provides access to paths in <code>Target</code>. The following is an example.</p>

         <p>
            <code>'[ \"/bucket2/documentation\", { \"Entry\": \"your-personal-report.pdf\", \"Target\":
        \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]'</code>
         </p>

         <p>In most cases, you can use this value instead of the scope-down policy to lock down your
      user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory
      parameter value.</p>

         <note>
            <p>If the target of a logical directory entry does not exist in Amazon S3 or EFS, the entry
        will be ignored. As a workaround, you can use the Amazon S3 API or EFS API to create 0-byte
        objects as place holders for your directory. If using the AWS CLI, use the
          <code>s3api</code> or <code>efsapi</code> call instead of <code>s3</code>
               <code>efs</code> so you can use the put-object operation. For example, you use the
        following: <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>. Make
        sure that the end of the key name ends in a / for it to be considered a folder.</p>
         </note>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when
      they log into the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket or EFS paths as is in their file transfer protocol clients. If you set it
        <code>LOGICAL</code>, you will need to provide mappings in the
        <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 or EFS paths visible to your
      users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>Specifies the landing directory (folder) for a user when they log in to the server using
      their file transfer protocol client.</p>

         <p>An example is <code>your-Amazon-S3-bucket-name>/home/username</code>.</p>")
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

module UpdateServer = {
  type t
  type request = {
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
            <p>If you select <code>FTPS</code>, you must choose a certificate stored in AWS Certificate
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
    @ocaml.doc("<p>Changes the AWS Identity and Access Management (IAM) role that allows Amazon S3 or Amazon EFS events to
      be logged in Amazon CloudWatch, turning logging on or off.</p>")
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

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>AWS Transfer
        Family User Guide</i>.</p>")
    @as("HostKey")
    hostKey: option<hostKey>,
    @ocaml.doc("<p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
      or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and 
      resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
         <note>
            <p> After March 31, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your AWS account if your account hasn't already
      done so before March 31, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your AWS account on or before March 31, 2021,
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
      With a VPC endpoint, you can restrict access to your server to resources only within your VPC.
      To control incoming internet traffic, you will need to associate one or more Elastic IP
      addresses with your server's endpoint.</p>")
    @as("EndpointDetails")
    endpointDetails: option<endpointDetails>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required
      when <code>Protocols</code> is set to <code>FTPS</code>.</p>

         <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a>
      in the <i> AWS Certificate Manager User Guide</i>.</p>

         <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a>
      in the <i> AWS Certificate Manager User Guide</i>.</p>

         <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a
        private certificate</a> in the <i> AWS Certificate Manager User
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
    ~securityPolicyName=?,
    ~protocols=?,
    ~loggingRole=?,
    ~identityProviderDetails=?,
    ~hostKey=?,
    ~endpointType=?,
    ~endpointDetails=?,
    ~certificate=?,
    (),
  ) =>
    new({
      serverId: serverId,
      securityPolicyName: securityPolicyName,
      protocols: protocols,
      loggingRole: loggingRole,
      identityProviderDetails: identityProviderDetails,
      hostKey: hostKey,
      endpointType: endpointType,
      endpointDetails: endpointDetails,
      certificate: certificate,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
      The users of the group that you associate have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using AWS Transfer Family. If you know the group name,
      you can view the SID values by running the following command using Windows PowerShell.</p>
         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamaccountName,ObjectSid</code>
         </p>
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active
      Directory group.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to
      provide your users when transferring files into and out of your Amazon S3 bucket or EFS file
      system. The IAM role should also contain a trust relationship that allows the server to access
      your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: option<role>,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @ocaml.doc("<p></p>
         <p>A scope-down policy for your user so that you can use the same IAM role across multiple
      users. This policy scopes down user access to portions of their Amazon S3 bucket. Variables
      that you can use inside this policy include <code>${Transfer:UserName}</code>,
      <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
         <note>
            <p>This only applies when domain of <code>ServerId</code> is S3. Amazon EFS does not use scope
      down policy.</p>
            <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p>
            <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/scope-down-policy.html\">Example
        scope-down policy</a>.</p>
            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS Security Token Service API
          Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
      <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it will be displayed as is. You also must ensure that your AWS Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
         <p>
            <code>[ { \"Entry\": \"your-personal-report.pdf\", \"Target\": \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]</code>
         </p>
         <p>In most cases, you can use this value instead of the scope-down policy to lock down your
        user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>
         <note>
            <p>If the target of a logical directory entry does not exist in Amazon S3 or Amazon EFS, the
        entry will be ignored. As a workaround, you can use the Amazon S3 API or EFS API to create
        0-byte objects as place holders for your directory. If using the AWS CLI, use the
        <code>s3api</code> or <code>efsapi</code> call instead of <code>s3</code> or
        <code>efs</code> so you can use the <code>put-object</code> operation. For example, you
        can use the following.</p>
            <p>
               <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>
            </p>
            <p>The end of the key name must end in a <code>/</code> for it to be considered a
          folder.</p>
         </note>
         <p>Required: No</p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) that you want your users' home directory to be when
      they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it
      <code>LOGICAL</code>, you must provide mappings in the <code>HomeDirectoryMappings</code>
      for how you want to make Amazon S3 paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/directory_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  type response = {
    @ocaml.doc("<p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using AWS Transfer Family.</p>")
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
    @ocaml.doc("<p>An Amazon Resource Name (ARN) for a specific AWS resource, such as a server, user, or
      role.</p>")
    @as("Arn")
    arn: arn,
  }

  @module("@aws-sdk/client-transfer") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~arn, ()) => new({tags: tags, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
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
      identifier for a specific AWS resource, such as a server, user, or role.</p>")
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
    @ocaml.doc("<p>A unique string that identifies a user and is associated with a as specified by the
        <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters
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
      server.</p>")
    @as("SshPublicKeyBody")
    sshPublicKeyBody: option<sshPublicKeyBody>,
    @ocaml.doc("<p>A system-assigned unique identifier for a server instance. This is the specific server
      that you added your user to.</p>")
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the IAM role that controls your users' access to your Amazon S3 bucket or EFS file system. The policies
      attached to this role will determine the level of access you want to provide your users when
      transferring files into and out of your Amazon S3 bucket or EFS file system. The IAM role should also

      contain a trust relationship that allows the server to access your resources when servicing
      your users' transfer requests.</p>")
    @as("Role")
    role: role,
    @ocaml.doc("<p>Specifies the full POSIX identity, including user ID (<code>Uid</code>), group ID
        (<code>Gid</code>), and any secondary groups IDs (<code>SecondaryGids</code>), that controls
      your users' access to your Amazon EFS file systems. The POSIX permissions that are set on
      files and directories in Amazon EFS determine the level of access your users get when
      transferring files into and out of your Amazon EFS file systems.</p>")
    @as("PosixProfile")
    posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A scope-down policy for your user so you can use the same IAM role across multiple users.
      This policy scopes down user access to portions of their Amazon S3 bucket. Variables that you
      can use inside this policy include <code>${Transfer:UserName}</code>,
        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>

         <note>
            <p>This only applies when domain of ServerId is S3. EFS does not use scope down policy.</p>
            <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead
        of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass
        it in the <code>Policy</code> argument.</p>

         

            <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/scope-down-policy.html\">Example scope-down
        policy</a>.</p>

         

            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS
          Security Token Service API Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or EFS paths and keys should be visible to
      your user and how you want to make them visible. You will need to specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or EFS path. If you only specify a
      target, it will be displayed as is. You will need to also make sure that your IAM role
      provides access to paths in <code>Target</code>. This value can only be set when
        <code>HomeDirectoryType</code> is set to <code>LOGICAL</code>.</p>

         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>

         <p>
            <code>[ { \"Entry\": \"your-personal-report.pdf\", \"Target\":
        \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]</code>
         </p>

         <p>In most cases, you can use this value instead of the scope-down policy to lock your user
      down to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the HomeDirectory
      parameter value.</p>

         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for
        <code>chroot</code>.</p>

         <p>
            <code>[ { \"Entry\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>

         <note>
            <p>If the target of a logical directory entry does not exist in Amazon S3 or EFS, the entry will
        be ignored. As a workaround, you can use the Amazon S3 API or EFS API to create 0 byte objects as place
        holders for your directory. If using the CLI, use the <code>s3api</code> or <code>efsapi</code> call instead of
        <code>s3</code> or <code>efs</code> so you can use the put-object operation. For example, you use the
        following: <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>. Make
        sure that the end of the key name ends in a <code>/</code> for it to be considered a
        folder.</p>
         </note>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) you want your users' home directory to be when
      they log into the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it
        <code>LOGICAL</code>, you will need to provide mappings in the
        <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 paths visible to your
      users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the
      client.</p>

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

module CreateServer = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs that can be used to group and search for servers.</p>")
    @as("Tags")
    tags: option<tags>,
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
         </ul>

         <note>
            <p>If you select <code>FTPS</code>, you must choose a certificate stored in AWS Certificate
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
    @ocaml.doc("<p>Allows the service to write your users' activity to your Amazon CloudWatch logs for
      monitoring and auditing purposes.</p>")
    @as("LoggingRole")
    loggingRole: option<role>,
    @ocaml.doc("<p>Specifies the mode of authentication for a server. The default value is
        <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within
      the AWS Transfer Family service. Use <code>AWS_DIRECTORY_SERVICE</code> to provide access to
      Active Directory groups in AWS Managed Active Directory or Microsoft Active Directory in your
      on-premises environment or in AWS using AD Connectors. This option also requires you to
      provide a Directory ID using the <code>IdentityProviderDetails</code> parameter. Use the
        <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The
        <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call
      for authentication using the <code>IdentityProviderDetails</code> parameter.</p>")
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

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>AWS Transfer
        Family User Guide</i>.</p>")
    @as("HostKey")
    hostKey: option<hostKey>,
    @ocaml.doc("<p>The type of endpoint that you want your server to use. You can choose to make your server's endpoint publicly accessible (PUBLIC)
      or host it inside your VPC. With an endpoint that is hosted in a VPC, you can restrict access to your server and 
      resources only within your VPC or choose to make it internet facing by attaching Elastic IP addresses directly to it.</p>
         <note>
            <p> After March 31, 2021, you won't be able to create a server using
          <code>EndpointType=VPC_ENDPOINT</code> in your AWS account if your account hasn't already
      done so before March 31, 2021. If you have already created servers with
      <code>EndpointType=VPC_ENDPOINT</code> in your AWS account on or before March 31, 2021,
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
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required
      when <code>Protocols</code> is set to <code>FTPS</code>.</p>

         <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a>
      in the <i> AWS Certificate Manager User Guide</i>.</p>

         <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a>
      in the <i> AWS Certificate Manager User Guide</i>.</p>

         <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a
        private certificate</a> in the <i> AWS Certificate Manager User
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
    ~tags=?,
    ~securityPolicyName=?,
    ~protocols=?,
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
      tags: tags,
      securityPolicyName: securityPolicyName,
      protocols: protocols,
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

module CreateAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
      The users of the group that you associate have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using AWS Transfer Family. If you know the group name,
      you can view the SID values by running the following command using Windows PowerShell.</p>
         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamaccountName,ObjectSid</code>
         </p>
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active
      Directory group.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
    @as("ExternalId")
    externalId: externalId,
    @ocaml.doc(
      "<p>A system-assigned unique identifier for a server instance. This is the specific server that you added your user to.</p>"
    )
    @as("ServerId")
    serverId: serverId,
    @ocaml.doc("<p>Specifies the IAM role that controls your users' access to your Amazon S3 bucket or EFS
      file system. The policies attached to this role determine the level of access that you want to
      provide your users when transferring files into and out of your Amazon S3 bucket or EFS file
      system. The IAM role should also contain a trust relationship that allows the server to access
      your resources when servicing your users' transfer requests.</p>")
    @as("Role")
    role: role,
    @as("PosixProfile") posixProfile: option<posixProfile>,
    @ocaml.doc("<p>A scope-down policy for your user so that you can use the same IAM role across multiple
      users. This policy scopes down user access to portions of their Amazon S3 bucket. Variables
      that you can use inside this policy include <code>${Transfer:UserName}</code>,
        <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p>
         <note>
            <p>This only applies when domain of <code>ServerId</code> is S3. Amazon EFS does not use scope
        down policy.</p>
            <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p>
            <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/scope-down-policy.html\">Example
          scope-down policy</a>.</p>
            <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS Security Token Service API
          Reference</i>.</p>
         </note>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>Logical directory mappings that specify what Amazon S3 or Amazon EFS paths and keys should
      be visible to your user and how you want to make them visible. You must specify the
        <code>Entry</code> and <code>Target</code> pair, where <code>Entry</code> shows how the path
      is made visible and <code>Target</code> is the actual Amazon S3 or Amazon EFS path. If you
      only specify a target, it will be displayed as is. You also must ensure that your AWS Identity
      and Access Management (IAM) role provides access to paths in <code>Target</code>. This value
      can only be set when <code>HomeDirectoryType</code> is set to
      <i>LOGICAL</i>.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example.</p>
         <p>
            <code>[ { \"Entry\": \"your-personal-report.pdf\", \"Target\": \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]</code>
         </p>
         <p>In most cases, you can use this value instead of the scope-down policy to lock down your
      user to the designated home directory (\"<code>chroot</code>\"). To do this, you can set
        <code>Entry</code> to <code>/</code> and set <code>Target</code> to the
        <code>HomeDirectory</code> parameter value.</p>
         <p>The following is an <code>Entry</code> and <code>Target</code> pair example for <code>chroot</code>.</p>
         <p>
            <code>[ { \"Entry\": \"/\", \"Target\": \"/bucket_name/home/mydirectory\" } ]</code>
         </p>
         <note>
            <p>If the target of a logical directory entry does not exist in Amazon S3 or Amazon EFS, the
        entry will be ignored. As a workaround, you can use the Amazon S3 API or EFS API to create
        0-byte objects as place holders for your directory. If using the AWS CLI, use the
          <code>s3api</code> or <code>efsapi</code> call instead of <code>s3</code> or
          <code>efs</code> so you can use the <code>put-object</code> operation. For example, you
        can use the following.</p>
            <p>
               <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>
            </p>
            <p>The end of the key name must end in a <code>/</code> for it to be considered a
        folder.</p>
         </note>
         <p>Required: No</p>")
    @as("HomeDirectoryMappings")
    homeDirectoryMappings: option<homeDirectoryMappings>,
    @ocaml.doc("<p>The type of landing directory (folder) that you want your users' home directory to be when
      they log in to the server. If you set it to <code>PATH</code>, the user will see the absolute
      Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it
        <code>LOGICAL</code>, you must provide mappings in the <code>HomeDirectoryMappings</code>
      for how you want to make Amazon S3 paths visible to your users.</p>")
    @as("HomeDirectoryType")
    homeDirectoryType: option<homeDirectoryType>,
    @ocaml.doc("<p>The landing directory (folder) for a user when they log in to the server using the client.</p>
         <p>A <code>HomeDirectory</code> example is <code>/directory_name/home/mydirectory</code>.</p>")
    @as("HomeDirectory")
    homeDirectory: option<homeDirectory>,
  }
  type response = {
    @ocaml.doc("<p>The external ID of the group whose users have access to your Amazon S3 or Amazon EFS
      resources over the enabled protocols using AWS Transfer Family.</p>")
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

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user assigned to one or more servers. User names are part of the sign-in
      credentials to use the AWS Transfer Family service and perform file transfer tasks.</p>")
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

module DescribeAccess = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that is required to identify specific groups within your directory.
      The users of the group you associate have access to your Amazon S3 or Amazon EFS resources
      over the enabled protocols using AWS Transfer Family. If you know the group name, you can view
      the SID values by running the following command using Windows PowerShell.</p>
         <p>
            <code>Get-ADGroup -Filter {samAccountName -like \"<i>YourGroupName</i>*\"} -Properties * | Select SamaccountName,ObjectSid</code>
         </p>
         <p>In that command, replace <i>YourGroupName</i> with the name of your Active
      Directory group.</p>
         <p>The regex used to validate this parameter is a string of characters consisting of
      uppercase and lowercase alphanumeric characters with no spaces. You can also include
      underscores or any of the following characters: =,.@:/-</p>")
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
