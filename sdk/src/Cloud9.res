type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloud9") @new
external createClient: unit => awsServiceClient = "Cloud9Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userArn = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type permissions = [
  | @as("read-only") #Read_Only
  | @as("read-write") #Read_Write
  | @as("owner") #Owner
]
type nullableBoolean = bool
type memberPermissions = [@as("read-only") #Read_Only | @as("read-write") #Read_Write]
type maxResults = int
type managedCredentialsStatus = [
  | @as("FAILED_REMOVAL_BY_OWNER") #FAILED_REMOVAL_BY_OWNER
  | @as("FAILED_REMOVAL_BY_COLLABORATOR") #FAILED_REMOVAL_BY_COLLABORATOR
  | @as("PENDING_START_REMOVAL_BY_OWNER") #PENDING_START_REMOVAL_BY_OWNER
  | @as("PENDING_REMOVAL_BY_OWNER") #PENDING_REMOVAL_BY_OWNER
  | @as("PENDING_START_REMOVAL_BY_COLLABORATOR") #PENDING_START_REMOVAL_BY_COLLABORATOR
  | @as("PENDING_REMOVAL_BY_COLLABORATOR") #PENDING_REMOVAL_BY_COLLABORATOR
  | @as("DISABLED_BY_COLLABORATOR") #DISABLED_BY_COLLABORATOR
  | @as("DISABLED_BY_OWNER") #DISABLED_BY_OWNER
  | @as("DISABLED_BY_DEFAULT") #DISABLED_BY_DEFAULT
  | @as("ENABLED_BY_OWNER") #ENABLED_BY_OWNER
  | @as("ENABLED_ON_CREATE") #ENABLED_ON_CREATE
]
type managedCredentialsAction = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type integer_ = int
type instanceType = string
type imageId = string
type environmentType = [@as("ec2") #Ec2 | @as("ssh") #Ssh]
type environmentStatus = [
  | @as("deleting") #Deleting
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("ready") #Ready
  | @as("connecting") #Connecting
  | @as("creating") #Creating
  | @as("error") #Error
]
type environmentName = string
type environmentLifecycleStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETING") #DELETING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type environmentId = string
type environmentDescription = string
type environmentArn = string
type connectionType = [@as("CONNECT_SSM") #CONNECT_SSM | @as("CONNECT_SSH") #CONNECT_SSH]
type clientRequestToken = string
type automaticStopTimeMinutes = int
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Metadata that is associated with Amazon Web Services resources. In particular, a name-value pair that
      can be associated with an Cloud9 development environment. There are two types of tags:
        <i>user tags</i> and <i>system tags</i>. A user tag is created
      by the user. A system tag is automatically created by Amazon Web Services services. A system tag is prefixed
      with <code>\"aws:\"</code> and cannot be modified by the user.</p>")
type tag = {
  @ocaml.doc("<p>The <b>value</b> part of a tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The <b>name</b> part of a tag.</p>") @as("Key") key: tagKey,
}
type permissionsList = array<permissions>
@ocaml.doc("<p>Information about an environment member for an Cloud9 development environment.</p>")
type environmentMember = {
  @ocaml.doc("<p>The time, expressed in epoch time format, when the environment member last opened the
      environment.</p>")
  lastAccess: option<timestamp_>,
  @ocaml.doc("<p>The ID of the environment for the environment member.</p>")
  environmentId: environmentId,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment member.</p>") userArn: userArn,
  @ocaml.doc(
    "<p>The user ID in Identity and Access Management (IAM) of the environment member.</p>"
  )
  userId: string_,
  @ocaml.doc("<p>The type of environment member permissions associated with this environment member.
      Available values include:</p>
         <ul>
            <li>
               <p>
                  <code>owner</code>: Owns the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-only</code>: Has read-only access to the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-write</code>: Has read-write access to the environment.</p>
            </li>
         </ul>")
  permissions: permissions,
}
@ocaml.doc("<p>Information about the current creation or deletion lifecycle state of an Cloud9 development
      environment.</p>")
type environmentLifecycle = {
  @ocaml.doc("<p>If the environment failed to delete, the Amazon Resource Name (ARN) of the related Amazon Web Services
      resource.</p>")
  failureResource: option<string_>,
  @ocaml.doc("<p>Any informational message about the lifecycle state of the environment.</p>")
  reason: option<string_>,
  @ocaml.doc("<p>The current creation or deletion lifecycle state of the environment.</p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code>: The environment is in the process of being created.</p>
            </li>
            <li>
               <p>
                  <code>CREATED</code>: The environment was successfully created.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code>: The environment failed to be created.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code>: The environment is in the process of being deleted.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code>: The environment failed to delete.</p>
            </li>
         </ul>")
  status: option<environmentLifecycleStatus>,
}
type environmentIdList = array<environmentId>
type boundedEnvironmentIdList = array<environmentId>
type tagList_ = array<tag>
type environmentMembersList = array<environmentMember>
@ocaml.doc("<p>Information about an Cloud9 development environment.</p>")
type environment = {
  @ocaml.doc("<p>Describes the status of Amazon Web Services managed temporary credentials for the Cloud9 environment.
      Available values are:</p>
         <ul>
            <li>
               <p>
                  <code>ENABLED_ON_CREATE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ENABLED_BY_OWNER</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DISABLED_BY_DEFAULT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DISABLED_BY_OWNER</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DISABLED_BY_COLLABORATOR</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PENDING_REMOVAL_BY_COLLABORATOR</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PENDING_REMOVAL_BY_OWNER</code>
               </p>
            </li>
            <li>
               <p>
                  <code>FAILED_REMOVAL_BY_COLLABORATOR</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ENABLED_BY_OWNER</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DISABLED_BY_DEFAULT</code>
               </p>
            </li>
         </ul>")
  managedCredentialsStatus: option<managedCredentialsStatus>,
  @ocaml.doc("<p>The state of the environment in its creation or deletion lifecycle.</p>")
  lifecycle: option<environmentLifecycle>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment owner.</p>") ownerArn: string_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment.</p>") arn: string_,
  @ocaml.doc("<p>The connection type used for connecting to an Amazon EC2 environment. <code>CONNECT_SSH</code>
      is selected by default.</p>")
  connectionType: option<connectionType>,
  @ocaml.doc("<p>The type of environment. Valid values include the following:</p>
         <ul>
            <li>
               <p>
                  <code>ec2</code>: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.</p>
            </li>
            <li>
               <p>
                  <code>ssh</code>: Your own server connects to the environment.</p>
            </li>
         </ul>")
  @as("type")
  type_: environmentType,
  @ocaml.doc("<p>The description for the environment.</p>")
  description: option<environmentDescription>,
  @ocaml.doc("<p>The name of the environment.</p>") name: option<environmentName>,
  @ocaml.doc("<p>The ID of the environment.</p>") id: option<environmentId>,
}
type environmentList = array<environment>
@ocaml.doc("<fullname>Cloud9</fullname>
         <p>Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and
      release software in the cloud.</p>
         <p>For more information about Cloud9, see the <a href=\"https://docs.aws.amazon.com/cloud9/latest/user-guide\">Cloud9 User Guide</a>.</p>
         <p>Cloud9 supports these operations:</p>
         <ul>
            <li>
               <p>
                  <code>CreateEnvironmentEC2</code>: Creates an Cloud9 development environment, launches
          an Amazon EC2 instance, and then connects from the instance to the environment.</p>
            </li>
            <li>
               <p>
                  <code>CreateEnvironmentMembership</code>: Adds an environment member to an
          environment.</p>
            </li>
            <li>
               <p>
                  <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is
          connected to the environment, also terminates the instance.</p>
            </li>
            <li>
               <p>
                  <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an
          environment.</p>
            </li>
            <li>
               <p>
                  <code>DescribeEnvironmentMemberships</code>: Gets information about environment
          members for an environment.</p>
            </li>
            <li>
               <p>
                  <code>DescribeEnvironments</code>: Gets information about environments.</p>
            </li>
            <li>
               <p>
                  <code>DescribeEnvironmentStatus</code>: Gets status information for an
          environment.</p>
            </li>
            <li>
               <p>
                  <code>ListEnvironments</code>: Gets a list of environment identifiers.</p>
            </li>
            <li>
               <p>
                  <code>ListTagsForResource</code>: Gets the tags for an environment.</p>
            </li>
            <li>
               <p>
                  <code>TagResource</code>: Adds tags to an environment.</p>
            </li>
            <li>
               <p>
                  <code>UntagResource</code>: Removes tags from an environment.</p>
            </li>
            <li>
               <p>
                  <code>UpdateEnvironment</code>: Changes the settings of an existing
          environment.</p>
            </li>
            <li>
               <p>
                  <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing
          environment member for an environment.</p>
            </li>
         </ul>")
module UpdateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>Allows the environment owner to turn on or turn off the Amazon Web Services managed temporary
      credentials for an Cloud9 environment by using one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ENABLE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DISABLE</code>
               </p>
            </li>
         </ul>
         <note>
            <p>Only the environment owner can change the status of managed temporary credentials. An <code>AccessDeniedException</code> is thrown if an attempt to turn on or turn off managed temporary credentials is made by an account that's not the environment
      owner.</p>  
         </note>")
    managedCredentialsAction: option<managedCredentialsAction>,
    @ocaml.doc("<p>Any new or replacement description for the environment.</p>")
    description: option<environmentDescription>,
    @ocaml.doc("<p>A replacement name for the environment.</p>") name: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to change settings.</p>") environmentId: environmentId,
  }
  type response = {.}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "UpdateEnvironmentCommand"
  let make = (~environmentId, ~managedCredentialsAction=?, ~description=?, ~name=?, ()) =>
    new({managedCredentialsAction, description, name, environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeEnvironmentStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment to get status information about.</p>")
    environmentId: environmentId,
  }
  type response = {
    @ocaml.doc("<p>Any informational message about the status of the environment.</p>")
    message: string_,
    @ocaml.doc("<p>The status of the environment. Available values include:</p>
         <ul>
            <li>
               <p>
                  <code>connecting</code>: The environment is connecting.</p>
            </li>
            <li>
               <p>
                  <code>creating</code>: The environment is being created.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The environment is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>error</code>: The environment is in an error state.</p>
            </li>
            <li>
               <p>
                  <code>ready</code>: The environment is ready.</p>
            </li>
            <li>
               <p>
                  <code>stopped</code>: The environment is stopped.</p>
            </li>
            <li>
               <p>
                  <code>stopping</code>: The environment is stopping.</p>
            </li>
         </ul>")
    status: environmentStatus,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DescribeEnvironmentStatusCommand"
  let make = (~environmentId, ()) => new({environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEnvironmentMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment member to delete from the
      environment.</p>")
    userArn: userArn,
    @ocaml.doc("<p>The ID of the environment to delete the environment member from.</p>")
    environmentId: environmentId,
  }
  type response = {.}
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DeleteEnvironmentMembershipCommand"
  let make = (~userArn, ~environmentId, ()) => new({userArn, environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the environment to delete.</p>") environmentId: environmentId,
  }
  type response = {.}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "DeleteEnvironmentCommand"
  let make = (~environmentId, ()) => new({environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateEnvironmentMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The replacement type of environment member permissions you want to associate with this
      environment member. Available values include:</p>
         <ul>
            <li>
               <p>
                  <code>read-only</code>: Has read-only access to the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-write</code>: Has read-write access to the environment.</p>
            </li>
         </ul>")
    permissions: memberPermissions,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment member whose settings you want to
      change.</p>")
    userArn: userArn,
    @ocaml.doc("<p>The ID of the environment for the environment member whose settings you want to
      change.</p>")
    environmentId: environmentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the environment member whose settings were changed.</p>")
    membership: option<environmentMember>,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "UpdateEnvironmentMembershipCommand"
  let make = (~permissions, ~userArn, ~environmentId, ()) =>
    new({permissions, userArn, environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag names of the tags to remove from the given Cloud9 development
      environment.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Cloud9 development environment to remove tags
      from.</p>")
    @as("ResourceARN")
    resourceARN: environmentArn,
  }
  type response = {.}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListEnvironments = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of environments to get identifiers for.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>During a previous call, if there are more than 25 items in the list, only the first 25
      items are returned, along with a unique string called a <i>next token</i>. To
      get the next batch of items in the list, call this operation again, adding the next token to
      the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.</p>")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The list of environment identifiers.</p>")
    environmentIds: option<environmentIdList>,
    @ocaml.doc("<p>If there are more than 25 items in the list, only the first 25 items are returned, along
      with a unique string called a <i>next token</i>. To get the next batch of items
      in the list, call this operation again, adding the next token to the call.</p>")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "ListEnvironmentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironmentMembership = {
  type t
  type request = {
    @ocaml.doc("<p>The type of environment member permissions you want to associate with this environment
      member. Available values include:</p>
         <ul>
            <li>
               <p>
                  <code>read-only</code>: Has read-only access to the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-write</code>: Has read-write access to the environment.</p>
            </li>
         </ul>")
    permissions: memberPermissions,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>")
    userArn: userArn,
    @ocaml.doc(
      "<p>The ID of the environment that contains the environment member you want to add.</p>"
    )
    environmentId: environmentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the environment member that was added.</p>")
    membership: environmentMember,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "CreateEnvironmentMembershipCommand"
  let make = (~permissions, ~userArn, ~environmentId, ()) =>
    new({permissions, userArn, environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to add to the given Cloud9 development environment.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Cloud9 development environment to add tags
      to.</p>")
    @as("ResourceARN")
    resourceARN: environmentArn,
  }
  type response = {.}
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Cloud9 development environment to get the tags
      for.</p>")
    @as("ResourceARN")
    resourceARN: environmentArn,
  }
  type response = {
    @ocaml.doc("<p>The list of tags associated with the Cloud9 development environment.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEnvironmentMemberships = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of environment members to get information about.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>During a previous call, if there are more than 25 items in the list, only the first 25
      items are returned, along with a unique string called a <i>next token</i>. To
      get the next batch of items in the list, call this operation again, adding the next token to
      the call. To get all of the items in the list, keep calling this operation with each
      subsequent next token that is returned, until no more next tokens are returned.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The type of environment member permissions to get information about. Available values
      include:</p>
         <ul>
            <li>
               <p>
                  <code>owner</code>: Owns the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-only</code>: Has read-only access to the environment.</p>
            </li>
            <li>
               <p>
                  <code>read-write</code>: Has read-write access to the environment.</p>
            </li>
         </ul>
         <p>If no value is specified, information about all environment members are returned.</p>")
    permissions: option<permissionsList>,
    @ocaml.doc("<p>The ID of the environment to get environment member information about.</p>")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an individual environment member to get information
      about. If no value is specified, information about all environment members are
      returned.</p>")
    userArn: option<userArn>,
  }
  type response = {
    @ocaml.doc("<p>If there are more than 25 items in the list, only the first 25 items are returned, along
      with a unique string called a <i>next token</i>. To get the next batch of items
      in the list, call this operation again, adding the next token to the call.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the environment members for the environment.</p>")
    memberships: option<environmentMembersList>,
  }
  @module("@aws-sdk/client-cloud9") @new
  external new: request => t = "DescribeEnvironmentMembershipsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~permissions=?, ~environmentId=?, ~userArn=?, ()) =>
    new({maxResults, nextToken, permissions, environmentId, userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironmentEC2 = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is <code>UnauthorizedOperation</code>.</p>"
    )
    dryRun: option<nullableBoolean>,
    @ocaml.doc("<p>The connection type used for connecting to an Amazon EC2 environment. Valid values are
        <code>CONNECT_SSH</code> (default) and <code>CONNECT_SSM</code> (connected through
      Amazon EC2 Systems Manager).</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html\">Accessing no-ingress EC2 instances with
        Amazon EC2 Systems Manager</a> in the <i>Cloud9 User Guide</i>.</p>")
    connectionType: option<connectionType>,
    @ocaml.doc("<p>An array of key-value pairs that will be associated with the new Cloud9 development
      environment.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any
      IAM principal. If this value is not specified, the ARN defaults to this environment's
      creator.</p>")
    ownerArn: option<userArn>,
    @ocaml.doc("<p>The number of minutes until the running instance is shut down after the environment has
      last been used.</p>")
    automaticStopTimeMinutes: option<automaticStopTimeMinutes>,
    @ocaml.doc("<p>The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance.
      To choose an AMI for the instance, you must specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
      path.</p>
         <p>The default AMI is used if the parameter isn't explicitly assigned a value in the request.
      Because Amazon Linux AMI has ended standard support as of December 31, 2020, we recommend you
      choose Amazon Linux 2, which includes long term support through 2023.</p>
         <p>
            <b>AMI aliases </b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Amazon Linux (default):
            <code>amazonlinux-1-x86_64</code>
                  </b>
               </p>
            </li>
            <li>
               <p>Amazon Linux 2: <code>amazonlinux-2-x86_64</code>
               </p>
            </li>
            <li>
               <p>Ubuntu 18.04: <code>ubuntu-18.04-x86_64</code>
               </p>
            </li>
         </ul>
         <p>
            <b>SSM paths</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Amazon Linux (default):
              <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64</code>
                  </b>
               </p>
            </li>
            <li>
               <p>Amazon Linux 2:
          <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64</code>
               </p>
            </li>
            <li>
               <p>Ubuntu 18.04:
          <code>resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64</code>
               </p>
            </li>
         </ul>")
    imageId: option<imageId>,
    @ocaml.doc("<p>The ID of the subnet in Amazon VPC that Cloud9 will use to communicate with the Amazon EC2
      instance.</p>")
    subnetId: option<subnetId>,
    @ocaml.doc("<p>The type of instance to connect to the environment (for example,
      <code>t2.micro</code>).</p>")
    instanceType: instanceType,
    @ocaml.doc("<p>A unique, case-sensitive string that helps Cloud9 to ensure this operation completes no
      more than one time.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Client Tokens</a> in the
        <i>Amazon EC2 API Reference</i>.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description of the environment to create.</p>")
    description: option<environmentDescription>,
    @ocaml.doc("<p>The name of the environment to create.</p>
         <p>This name is visible to other IAM users in the same Amazon Web Services account.</p>")
    name: environmentName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the environment that was created.</p>")
    environmentId: option<environmentId>,
  }
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "CreateEnvironmentEC2Command"
  let make = (
    ~instanceType,
    ~name,
    ~dryRun=?,
    ~connectionType=?,
    ~tags=?,
    ~ownerArn=?,
    ~automaticStopTimeMinutes=?,
    ~imageId=?,
    ~subnetId=?,
    ~clientRequestToken=?,
    ~description=?,
    (),
  ) =>
    new({
      dryRun,
      connectionType,
      tags,
      ownerArn,
      automaticStopTimeMinutes,
      imageId,
      subnetId,
      instanceType,
      clientRequestToken,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEnvironments = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of individual environments to get information about.</p>")
    environmentIds: boundedEnvironmentIdList,
  }
  type response = {
    @ocaml.doc("<p>Information about the environments that are returned.</p>")
    environments: option<environmentList>,
  }
  @module("@aws-sdk/client-cloud9") @new external new: request => t = "DescribeEnvironmentsCommand"
  let make = (~environmentIds, ()) => new({environmentIds: environmentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
