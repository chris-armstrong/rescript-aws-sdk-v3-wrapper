type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codestar") @new
external createClient: unit => awsServiceClient = "CodeStarClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userProfileDisplayName = string
type userArn = string
type templateParameterValue = string
type templateParameterKey = string
type tagValue = string
type tagKey = string
type state = string
type stackId = string
type sshPublicKey = string
type roleArn = string
type role = string
type resourceId = string
type repositoryType = string
type repositoryOwner = string
type repositoryName = string
type repositoryIsPrivate = bool
type repositoryEnableIssues = bool
type repositoryDescription = string
type remoteAccessAllowed = bool
type reason = string
type projectTemplateId = string
type projectName = string
type projectId = string
type projectDescription = string
type projectArn = string
type paginationToken = string
type message = string
type maxResults = int
type lastModifiedTimestamp = Js.Date.t
type gitHubPersonalToken = string
type email = string
type deleteStack = bool
type createdTimestamp = Js.Date.t
type clientRequestToken = string
type bucketName = string
type bucketKey = string
@ocaml.doc("<p>Information about a user's profile in AWS CodeStar.</p>")
type userProfileSummary = {
  @ocaml.doc("<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
      user remote access to project resources, this public key will be used along with the user's
      private key for SSH access.</p>")
  sshPublicKey: option<sshPublicKey>,
  @ocaml.doc("<p>The email address associated with the user.</p>") emailAddress: option<email>,
  @ocaml.doc("<p>The display name of a user in AWS CodeStar. For example, this could be set to both first and
      last name (\"Mary Major\") or a single name (\"Mary\"). The display name is also used to generate
      the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the
      display name, the first character that appears after the space will be used as the second
      character in the user initial icon. The initial icon displays a maximum of two characters, so
      a display name with more than one space (for example \"Mary Jane Major\") would generate an
      initial icon using the first character and the first character after the space (\"MJ\", not
      \"MM\").</p>")
  displayName: option<userProfileDisplayName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user in IAM.</p>") userArn: option<userArn>,
}
type templateParameterMap = Js.Dict.t<templateParameterValue>
@ocaml.doc("<p>Information about a team member in a project.</p>")
type teamMember = {
  @ocaml.doc("<p>Whether the user is allowed to remotely access project resources using an SSH
      public/private key pair.</p>")
  remoteAccessAllowed: option<remoteAccessAllowed>,
  @ocaml.doc("<p>The role assigned to the user in the project. Project roles have different levels of
      access. For more information, see <a href=\"http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html\">Working with
        Teams</a> in the <i>AWS CodeStar User Guide</i>. </p>")
  projectRole: role,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user in IAM.</p>") userArn: userArn,
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
@ocaml.doc("<p>The Amazon S3 location where the source code files provided with the project
      request are stored.</p>")
type s3Location = {
  @ocaml.doc("<p>The Amazon S3 object key where the source code files provided with the project
      request are stored.</p>")
  bucketKey: option<bucketKey>,
  @ocaml.doc("<p>The Amazon S3 bucket name where the source code files provided with the project
      request are stored.</p>")
  bucketName: option<bucketName>,
}
@ocaml.doc("<p>Information about a resource for a project.</p>")
type resource = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") id: resourceId,
}
@ocaml.doc("<p>Information about the metadata for a project.</p>")
type projectSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>")
  projectArn: option<projectArn>,
  @ocaml.doc("<p>The ID of the project.</p>") projectId: option<projectId>,
}
@ocaml.doc("<p>An indication of whether a project creation or deletion is failed or
      successful.</p>")
type projectStatus = {
  @ocaml.doc("<p>In the case of a project creation or deletion failure, a reason for the
      failure.</p>")
  reason: option<reason>,
  @ocaml.doc("<p>The phase of completion for a project creation or deletion.</p>") state: state,
}
@ocaml.doc("<p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the
      project request will be uploaded after project creation.</p>")
type gitHubCodeDestination = {
  @ocaml.doc("<p>The GitHub user's personal access token for the GitHub repository.</p>")
  token: gitHubPersonalToken,
  @ocaml.doc("<p>Whether to enable issues for the GitHub repository.</p>")
  issuesEnabled: repositoryEnableIssues,
  @ocaml.doc("<p>Whether the GitHub repository is to be a private repository.</p>")
  privateRepository: repositoryIsPrivate,
  @ocaml.doc("<p>The GitHub username for the owner of the GitHub repository to be created in AWS CodeStar. If this repository should
      be owned by a GitHub organization, provide its name.</p>")
  owner: repositoryOwner,
  @ocaml.doc(
    "<p>The type of GitHub repository to be created in AWS CodeStar. Valid values are User or Organization.</p>"
  )
  @as("type")
  type_: repositoryType,
  @ocaml.doc("<p>Description for the GitHub repository to be created in AWS CodeStar. This description displays in
      GitHub after the repository is created.</p>")
  description: option<repositoryDescription>,
  @ocaml.doc("<p>Name of the GitHub repository to be created in AWS CodeStar.</p>")
  name: repositoryName,
}
@ocaml.doc("<p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided
      with the project request will be uploaded after project creation.</p>")
type codeCommitCodeDestination = {
  @ocaml.doc("<p>The name of the AWS CodeCommit repository to be created in AWS CodeStar.</p>")
  name: repositoryName,
}
type userProfilesList = array<userProfileSummary>
@ocaml.doc("<p>The Amazon S3 location where the toolchain template file provided with the
      project request is stored. AWS CodeStar retrieves the file during project creation.</p>")
type toolchainSource = {
  @ocaml.doc("<p>The Amazon S3 bucket where the toolchain template file provided with the project
      request is stored.</p>")
  s3: s3Location,
}
type teamMemberResult = array<teamMember>
type resourcesResult = array<resource>
type projectsList = array<projectSummary>
@ocaml.doc("<p>The location where the source code files provided with the project request are
      stored. AWS CodeStar retrieves the files during project creation.</p>")
type codeSource = {
  @ocaml.doc("<p>Information about the Amazon S3 location where the source code files provided with the
      project request are stored. </p>")
  s3: s3Location,
}
@ocaml.doc("<p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the
      source code files provided with the project request are placed in the repository.</p>")
type codeDestination = {
  @ocaml.doc("<p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the
      project request will be uploaded after project creation.</p>")
  gitHub: option<gitHubCodeDestination>,
  @ocaml.doc("<p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided
      with the project request will be uploaded after project creation.</p>")
  codeCommit: option<codeCommitCodeDestination>,
}
@ocaml.doc("<p>The toolchain template file provided with the project request. AWS CodeStar uses
      the template to provision the toolchain stack in AWS CloudFormation.</p>")
type toolchain = {
  @ocaml.doc("<p>The list of parameter overrides to be passed into the toolchain template during stack
      provisioning, if any.</p>")
  stackParameters: option<templateParameterMap>,
  @ocaml.doc("<p>The service role ARN for AWS CodeStar to use for the toolchain template during stack
      provisioning.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The Amazon S3 location where the toolchain template file provided with the
      project request is stored. AWS CodeStar retrieves the file during project creation.</p>")
  source: toolchainSource,
}
@ocaml.doc("<p>Location and destination information about the source code files provided with the
      project request. The source code is uploaded to the new project source repository after
      project creation.</p>")
type code = {
  @ocaml.doc("<p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the
      source code files provided with the project request are placed in the repository.</p>")
  destination: codeDestination,
  @ocaml.doc("<p>The location where the source code files provided with the project request are
      stored. AWS CodeStar retrieves the files during project creation.</p>")
  source: codeSource,
}
type sourceCode = array<code>
@ocaml.doc("<fullname>AWS CodeStar</fullname>
         <p>This is the API reference for AWS CodeStar. This reference provides descriptions of the
      operations and data types for the AWS CodeStar API along with usage examples.</p>
         <p>You can use the AWS CodeStar API to work with:</p>
         <p>Projects and their resources, by calling the following:</p>
         <ul>
            <li>
               <p>
                  <code>DeleteProject</code>, which deletes a project.</p>
            </li>
            <li>
               <p>
                  <code>DescribeProject</code>, which lists the attributes of a project.</p>
            </li>
            <li>
               <p>
                  <code>ListProjects</code>, which lists all projects associated with your AWS
          account.</p>
            </li>
            <li>
               <p>
                  <code>ListResources</code>, which lists the resources associated with a
          project.</p>
            </li>
            <li>
               <p>
                  <code>ListTagsForProject</code>, which lists the tags associated with a
          project.</p>
            </li>
            <li>
               <p>
                  <code>TagProject</code>, which adds tags to a project.</p>
            </li>
            <li>
               <p>
                  <code>UntagProject</code>, which removes tags from a project.</p>
            </li>
            <li>
               <p>
                  <code>UpdateProject</code>, which updates the attributes of a project.</p>
            </li>
         </ul>
         <p>Teams and team members, by calling the following:</p>
         <ul>
            <li>
               <p>
                  <code>AssociateTeamMember</code>, which adds an IAM user to the team for a
          project.</p>
            </li>
            <li>
               <p>
                  <code>DisassociateTeamMember</code>, which removes an IAM user from the team for a
          project.</p>
            </li>
            <li>
               <p>
                  <code>ListTeamMembers</code>, which lists all the IAM users in the team for a
          project, including their roles and attributes.</p>
            </li>
            <li>
               <p>
                  <code>UpdateTeamMember</code>, which updates a team member's attributes in a
          project.</p>
            </li>
         </ul>
         <p>Users, by calling the following:</p>
         <ul>
            <li>
               <p>
                  <code>CreateUserProfile</code>, which creates a user profile that contains data
          associated with the user across all projects.</p>
            </li>
            <li>
               <p>
                  <code>DeleteUserProfile</code>, which deletes all user profile information across
          all projects.</p>
            </li>
            <li>
               <p>
                  <code>DescribeUserProfile</code>, which describes the profile of a user.</p>
            </li>
            <li>
               <p>
                  <code>ListUserProfiles</code>, which lists all user profiles.</p>
            </li>
            <li>
               <p>
                  <code>UpdateUserProfile</code>, which updates the profile for a user.</p>
            </li>
         </ul>")
module UpdateUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
      user remote access to project resources, this public key will be used along with the user's
      private key for SSH access.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc("<p>The email address that is displayed as part of the user's profile in AWS
      CodeStar.</p>")
    emailAddress: option<email>,
    @ocaml.doc(
      "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
    )
    displayName: option<userProfileDisplayName>,
    @ocaml.doc("<p>The name that will be displayed as the friendly name for the user in AWS
      CodeStar.</p>")
    userArn: userArn,
  }
  type response = {
    @ocaml.doc("<p>The date the user profile was last modified, in timestamp format.</p>")
    lastModifiedTimestamp: option<lastModifiedTimestamp>,
    @ocaml.doc("<p>The date the user profile was created, in timestamp format.</p>")
    createdTimestamp: option<createdTimestamp>,
    @ocaml.doc("<p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the
      public/private keypair the user can use to access project resources if a project owner allows
      the user remote access to those resources.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc("<p>The email address that is displayed as part of the user's profile in AWS
      CodeStar.</p>")
    emailAddress: option<email>,
    @ocaml.doc(
      "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
    )
    displayName: option<userProfileDisplayName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user in IAM.</p>") userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "UpdateUserProfileCommand"
  let make = (~userArn, ~sshPublicKey=?, ~emailAddress=?, ~displayName=?, ()) =>
    new({
      sshPublicKey: sshPublicKey,
      emailAddress: emailAddress,
      displayName: displayName,
      userArn: userArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTeamMember = {
  type t
  type request = {
    @ocaml.doc("<p>Whether a team member is allowed to remotely access project resources using the SSH
      public key associated with the user's profile. Even if this is set to True, the user must
      associate a public key with their profile before the user can access resources.</p>")
    remoteAccessAllowed: option<remoteAccessAllowed>,
    @ocaml.doc("<p>The role assigned to the user in the project. Project roles have different levels of
      access. For more information, see <a href=\"http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html\">Working with
        Teams</a> in the <i>AWS CodeStar User Guide</i>.</p>")
    projectRole: option<role>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership
      attributes.</p>")
    userArn: userArn,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: projectId,
  }
  type response = {
    @ocaml.doc("<p>Whether a team member is allowed to remotely access project resources using the SSH
      public key associated with the user's profile.</p>")
    remoteAccessAllowed: option<remoteAccessAllowed>,
    @ocaml.doc("<p>The project role granted to the user.</p>") projectRole: option<role>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user whose team membership attributes were
      updated.</p>")
    userArn: option<userArn>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "UpdateTeamMemberCommand"
  let make = (~userArn, ~projectId, ~remoteAccessAllowed=?, ~projectRole=?, ()) =>
    new({
      remoteAccessAllowed: remoteAccessAllowed,
      projectRole: projectRole,
      userArn: userArn,
      projectId: projectId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the project, if any.</p>")
    description: option<projectDescription>,
    @ocaml.doc("<p>The name of the project you want to update.</p>") name: option<projectName>,
    @ocaml.doc("<p>The ID of the project you want to update.</p>") id: projectId,
  }

  @module("@aws-sdk/client-codestar") @new external new: request => t = "UpdateProjectCommand"
  let make = (~id, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateTeamMember = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from
      the project.</p>")
    userArn: userArn,
    @ocaml.doc(
      "<p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>"
    )
    projectId: projectId,
  }

  @module("@aws-sdk/client-codestar") @new
  external new: request => t = "DisassociateTeamMemberCommand"
  let make = (~userArn, ~projectId, ()) => new({userArn: userArn, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeUserProfile = {
  type t
  type request = {@ocaml.doc("<p>The Amazon Resource Name (ARN) of the user.</p>") userArn: userArn}
  type response = {
    @ocaml.doc("<p>The date and time when the user profile was last modified, in timestamp
      format.</p>")
    lastModifiedTimestamp: lastModifiedTimestamp,
    @ocaml.doc("<p>The date and time when the user profile was created in AWS CodeStar, in timestamp
      format.</p>")
    createdTimestamp: createdTimestamp,
    @ocaml.doc("<p>The SSH public key associated with the user. This SSH public key is associated with the
      user profile, and can be used in conjunction with the associated private key for access to
      project resources, such as Amazon EC2 instances, if a project owner grants remote access to
      those resources.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc("<p>The email address for the user. Optional.</p>") emailAddress: option<email>,
    @ocaml.doc("<p>The display name shown for the user in AWS CodeStar projects. For example, this could be set
      to both first and last name (\"Mary Major\") or a single name (\"Mary\"). The display name is also
      used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are
      included in the display name, the first character that appears after the space will be used as
      the second character in the user initial icon. The initial icon displays a maximum of two
      characters, so a display name with more than one space (for example \"Mary Jane Major\") would
      generate an initial icon using the first character and the first character after the space
      (\"MJ\", not \"MM\").</p>")
    displayName: option<userProfileDisplayName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user.</p>") userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "DescribeUserProfileCommand"
  let make = (~userArn, ()) => new({userArn: userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>")
    userArn: userArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>")
    userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "DeleteUserProfileCommand"
  let make = (~userArn, ()) => new({userArn: userArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to send a delete request for the primary stack in AWS CloudFormation originally
      used to generate the project and its resources. This option will delete all AWS resources for
      the project (except for any buckets in Amazon S3) as well as deleting the project itself.
      Recommended for most use cases.</p>")
    deleteStack: option<deleteStack>,
    @ocaml.doc("<p>A user- or system-generated token that identifies the entity that requested project
      deletion. This token can be used to repeat the request. </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the project to be deleted in AWS CodeStar.</p>") id: projectId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted project.</p>")
    projectArn: option<projectArn>,
    @ocaml.doc("<p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of
      deleting the project and its resources.</p>")
    stackId: option<stackId>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "DeleteProjectCommand"
  let make = (~id, ~deleteStack=?, ~clientRequestToken=?, ()) =>
    new({deleteStack: deleteStack, clientRequestToken: clientRequestToken, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUserProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
      user remote access to project resources, this public key will be used along with the user's
      private key for SSH access.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc("<p>The email address that will be displayed as part of the user's profile in
      AWS CodeStar.</p>")
    emailAddress: email,
    @ocaml.doc(
      "<p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>"
    )
    displayName: userProfileDisplayName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user in IAM.</p>") userArn: userArn,
  }
  type response = {
    @ocaml.doc("<p>The date the user profile was last modified, in timestamp format.</p>")
    lastModifiedTimestamp: option<lastModifiedTimestamp>,
    @ocaml.doc("<p>The date the user profile was created, in timestamp format.</p>")
    createdTimestamp: option<createdTimestamp>,
    @ocaml.doc("<p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the
      public/private keypair the user can use to access project resources if a project owner allows
      the user remote access to those resources.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc(
      "<p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>"
    )
    emailAddress: option<email>,
    @ocaml.doc(
      "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
    )
    displayName: option<userProfileDisplayName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user in IAM.</p>") userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "CreateUserProfileCommand"
  let make = (~emailAddress, ~displayName, ~userArn, ~sshPublicKey=?, ()) =>
    new({
      sshPublicKey: sshPublicKey,
      emailAddress: emailAddress,
      displayName: displayName,
      userArn: userArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTeamMember = {
  type t
  type request = {
    @ocaml.doc("<p>Whether the team member is allowed to use an SSH public/private key pair to remotely
      access project resources, for example Amazon EC2 instances.</p>")
    remoteAccessAllowed: option<remoteAccessAllowed>,
    @ocaml.doc("<p>The AWS CodeStar project role that will apply to this user. This role determines what actions
      a user can take in an AWS CodeStar project.</p>")
    projectRole: role,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar
      project.</p>")
    userArn: userArn,
    @ocaml.doc("<p>A user- or system-generated token that identifies the entity that requested the team
      member association to the project. This token can be used to repeat the request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the project to which you will add the IAM user.</p>")
    projectId: projectId,
  }
  type response = {
    @ocaml.doc("<p>The user- or system-generated token from the initial request that can be used to repeat
      the request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "AssociateTeamMemberCommand"
  let make = (
    ~projectRole,
    ~userArn,
    ~projectId,
    ~remoteAccessAllowed=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      remoteAccessAllowed: remoteAccessAllowed,
      projectRole: projectRole,
      userArn: userArn,
      clientRequestToken: clientRequestToken,
      projectId: projectId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagProject = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to remove from the project.</p>") tags: tagKeys,
    @ocaml.doc("<p>The ID of the project to remove tags from.</p>") id: projectId,
  }

  @module("@aws-sdk/client-codestar") @new external new: request => t = "UntagProjectCommand"
  let make = (~tags, ~id, ()) => new({tags: tags, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagProject = {
  type t
  type request = {
    @ocaml.doc("<p>The tags you want to add to the project.</p>") tags: tags,
    @ocaml.doc("<p>The ID of the project you want to add a tag to.</p>") id: projectId,
  }
  type response = {@ocaml.doc("<p>The tags for the project.</p>") tags: option<tags>}
  @module("@aws-sdk/client-codestar") @new external new: request => t = "TagProjectCommand"
  let make = (~tags, ~id, ()) => new({tags: tags, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForProject = {
  type t
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>Reserved for future use.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the project to get tags for.</p>") id: projectId,
  }
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The tags for the project.</p>") tags: option<tags>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "ListTagsForProjectCommand"
  let make = (~id, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {@ocaml.doc("<p>The ID of the project.</p>") id: projectId}
  type response = {
    @ocaml.doc("<p>The project creation or deletion status.</p>") status: option<projectStatus>,
    @ocaml.doc("<p>The ID for the AWS CodeStar project template used to create the project.</p>")
    projectTemplateId: option<projectTemplateId>,
    @ocaml.doc("<p>The ID of the primary stack in AWS CloudFormation used to generate resources for the
      project.</p>")
    stackId: option<stackId>,
    @ocaml.doc("<p>The date and time the project was created, in timestamp format.</p>")
    createdTimeStamp: option<createdTimestamp>,
    @ocaml.doc("<p>A user- or system-generated token that identifies the entity that requested project
      creation. </p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description of the project, if any.</p>")
    description: option<projectDescription>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the project.</p>") arn: option<projectArn>,
    @ocaml.doc("<p>The ID of the project.</p>") id: option<projectId>,
    @ocaml.doc("<p>The display name for the project.</p>") name: option<projectName>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "DescribeProjectCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUserProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in a response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The continuation token for the next set of results, if the results cannot be returned
      in one response.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The continuation token to use when requesting the next set of results, if there are
      more results to be returned.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>All the user profiles configured in AWS CodeStar for an AWS account.</p>")
    userProfiles: userProfilesList,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "ListUserProfilesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTeamMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of team members you want returned in a response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The continuation token for the next set of results, if the results cannot be returned
      in one response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the project for which you want to list team members.</p>")
    projectId: projectId,
  }
  type response = {
    @ocaml.doc("<p>The continuation token to use when requesting the next set of results, if there are
      more results to be returned.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of team member objects for the project.</p>")
    teamMembers: teamMemberResult,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "ListTeamMembersCommand"
  let make = (~projectId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum amount of data that can be contained in a single set of results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The continuation token for the next set of results, if the results cannot be returned
      in one response.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: projectId,
  }
  type response = {
    @ocaml.doc("<p>The continuation token to use when requesting the next set of results, if there are
      more results to be returned.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of resources associated with the project. </p>")
    resources: option<resourcesResult>,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "ListResourcesCommand"
  let make = (~projectId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum amount of data that can be contained in a single set of results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The continuation token to be used to return the next set of results, if the results
      cannot be returned in one response.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The continuation token to use when requesting the next set of results, if there are
      more results to be returned.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of projects.</p>") projects: projectsList,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "ListProjectsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>The tags created for the project.</p>") tags: option<tags>,
    @ocaml.doc("<p>The name of the toolchain template file submitted with the project request. If
      this parameter is specified, the request must also include the sourceCode parameter.</p>")
    toolchain: option<toolchain>,
    @ocaml.doc("<p>A list of the Code objects submitted with the project request. If this
      parameter is specified, the request must also include the toolchain parameter.</p>")
    sourceCode: option<sourceCode>,
    @ocaml.doc("<p>A user- or system-generated token that identifies the entity that requested project
      creation. This token can be used to repeat the request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description of the project, if any.</p>")
    description: option<projectDescription>,
    @ocaml.doc("<p>The ID of the project to be created in AWS CodeStar.</p>") id: projectId,
    @ocaml.doc("<p>The display name for the project to be created in AWS CodeStar.</p>")
    name: projectName,
  }
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") projectTemplateId: option<projectTemplateId>,
    @ocaml.doc("<p>A user- or system-generated token that identifies the entity that requested project
      creation.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the created project.</p>") arn: projectArn,
    @ocaml.doc("<p>The ID of the project.</p>") id: projectId,
  }
  @module("@aws-sdk/client-codestar") @new external new: request => t = "CreateProjectCommand"
  let make = (
    ~id,
    ~name,
    ~tags=?,
    ~toolchain=?,
    ~sourceCode=?,
    ~clientRequestToken=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      toolchain: toolchain,
      sourceCode: sourceCode,
      clientRequestToken: clientRequestToken,
      description: description,
      id: id,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
