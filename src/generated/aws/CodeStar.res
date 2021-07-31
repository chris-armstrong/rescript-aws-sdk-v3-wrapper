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
type userProfileSummary = {
  sshPublicKey: option<sshPublicKey>,
  emailAddress: option<email>,
  displayName: option<userProfileDisplayName>,
  userArn: option<userArn>,
}
type templateParameterMap = Js.Dict.t<templateParameterValue>
type teamMember = {
  remoteAccessAllowed: option<remoteAccessAllowed>,
  projectRole: role,
  userArn: userArn,
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type s3Location = {
  bucketKey: option<bucketKey>,
  bucketName: option<bucketName>,
}
type resource = {id: resourceId}
type projectSummary = {
  projectArn: option<projectArn>,
  projectId: option<projectId>,
}
type projectStatus = {
  reason: option<reason>,
  state: state,
}
type gitHubCodeDestination = {
  token: gitHubPersonalToken,
  issuesEnabled: repositoryEnableIssues,
  privateRepository: repositoryIsPrivate,
  owner: repositoryOwner,
  @as("type") type_: repositoryType,
  description: option<repositoryDescription>,
  name: repositoryName,
}
type codeCommitCodeDestination = {name: repositoryName}
type userProfilesList = array<userProfileSummary>
type toolchainSource = {s3: s3Location}
type teamMemberResult = array<teamMember>
type resourcesResult = array<resource>
type projectsList = array<projectSummary>
type codeSource = {s3: s3Location}
type codeDestination = {
  gitHub: option<gitHubCodeDestination>,
  codeCommit: option<codeCommitCodeDestination>,
}
type toolchain = {
  stackParameters: option<templateParameterMap>,
  roleArn: option<roleArn>,
  source: toolchainSource,
}
type code = {
  destination: codeDestination,
  source: codeSource,
}
type sourceCode = array<code>

module UpdateUserProfile = {
  type t
  type request = {
    sshPublicKey: option<sshPublicKey>,
    emailAddress: option<email>,
    displayName: option<userProfileDisplayName>,
    userArn: userArn,
  }
  type response = {
    lastModifiedTimestamp: option<lastModifiedTimestamp>,
    createdTimestamp: option<createdTimestamp>,
    sshPublicKey: option<sshPublicKey>,
    emailAddress: option<email>,
    displayName: option<userProfileDisplayName>,
    userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "UpdateUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTeamMember = {
  type t
  type request = {
    remoteAccessAllowed: option<remoteAccessAllowed>,
    projectRole: option<role>,
    userArn: userArn,
    projectId: projectId,
  }
  type response = {
    remoteAccessAllowed: option<remoteAccessAllowed>,
    projectRole: option<role>,
    userArn: option<userArn>,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "UpdateTeamMemberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    description: option<projectDescription>,
    name: option<projectName>,
    id: projectId,
  }
  type response = unit
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "UpdateProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTeamMember = {
  type t
  type request = {
    userArn: userArn,
    projectId: projectId,
  }
  type response = unit
  @module("@aws-sdk/client-codestar") @new
  external new_: request => t = "DisassociateTeamMemberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUserProfile = {
  type t
  type request = {userArn: userArn}
  type response = {
    lastModifiedTimestamp: lastModifiedTimestamp,
    createdTimestamp: createdTimestamp,
    sshPublicKey: option<sshPublicKey>,
    emailAddress: option<email>,
    displayName: option<userProfileDisplayName>,
    userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new
  external new_: request => t = "DescribeUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUserProfile = {
  type t
  type request = {userArn: userArn}
  type response = {userArn: userArn}
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "DeleteUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    deleteStack: option<deleteStack>,
    clientRequestToken: option<clientRequestToken>,
    id: projectId,
  }
  type response = {
    projectArn: option<projectArn>,
    stackId: option<stackId>,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "DeleteProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUserProfile = {
  type t
  type request = {
    sshPublicKey: option<sshPublicKey>,
    emailAddress: email,
    displayName: userProfileDisplayName,
    userArn: userArn,
  }
  type response = {
    lastModifiedTimestamp: option<lastModifiedTimestamp>,
    createdTimestamp: option<createdTimestamp>,
    sshPublicKey: option<sshPublicKey>,
    emailAddress: option<email>,
    displayName: option<userProfileDisplayName>,
    userArn: userArn,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "CreateUserProfileCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTeamMember = {
  type t
  type request = {
    remoteAccessAllowed: option<remoteAccessAllowed>,
    projectRole: role,
    userArn: userArn,
    clientRequestToken: option<clientRequestToken>,
    projectId: projectId,
  }
  type response = {clientRequestToken: option<clientRequestToken>}
  @module("@aws-sdk/client-codestar") @new
  external new_: request => t = "AssociateTeamMemberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagProject = {
  type t
  type request = {
    tags: tagKeys,
    id: projectId,
  }
  type response = unit
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "UntagProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagProject = {
  type t
  type request = {
    tags: tags,
    id: projectId,
  }
  type response = {tags: option<tags>}
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "TagProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForProject = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    id: projectId,
  }
  type response = {
    nextToken: option<paginationToken>,
    tags: option<tags>,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "ListTagsForProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProject = {
  type t
  type request = {id: projectId}
  type response = {
    status: option<projectStatus>,
    projectTemplateId: option<projectTemplateId>,
    stackId: option<stackId>,
    createdTimeStamp: option<createdTimestamp>,
    clientRequestToken: option<clientRequestToken>,
    description: option<projectDescription>,
    arn: option<projectArn>,
    id: option<projectId>,
    name: option<projectName>,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "DescribeProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUserProfiles = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    userProfiles: userProfilesList,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "ListUserProfilesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTeamMembers = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    projectId: projectId,
  }
  type response = {
    nextToken: option<paginationToken>,
    teamMembers: teamMemberResult,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "ListTeamMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResources = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
    projectId: projectId,
  }
  type response = {
    nextToken: option<paginationToken>,
    resources: option<resourcesResult>,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "ListResourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<paginationToken>,
  }
  type response = {
    nextToken: option<paginationToken>,
    projects: projectsList,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "ListProjectsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    tags: option<tags>,
    toolchain: option<toolchain>,
    sourceCode: option<sourceCode>,
    clientRequestToken: option<clientRequestToken>,
    description: option<projectDescription>,
    id: projectId,
    name: projectName,
  }
  type response = {
    projectTemplateId: option<projectTemplateId>,
    clientRequestToken: option<clientRequestToken>,
    arn: projectArn,
    id: projectId,
  }
  @module("@aws-sdk/client-codestar") @new external new_: request => t = "CreateProjectCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
