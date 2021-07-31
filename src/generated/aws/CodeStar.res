type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type repositoryIsPrivate = bool;
type repositoryEnableIssues = bool;
type repositoryDescription = string
type remoteAccessAllowed = bool;
type reason = string
type projectTemplateId = string
type projectName = string
type projectId = string
type projectDescription = string
type projectArn = string
type paginationToken = string
type message = string
type maxResults = int;
type lastModifiedTimestamp = Js.Date.t;
type gitHubPersonalToken = string
type email = string
type deleteStack = bool;
type createdTimestamp = Js.Date.t;
type clientRequestToken = string
type bucketName = string
type bucketKey = string
type userProfileSummary = {
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: email,
@as("displayName") displayName: userProfileDisplayName,
@as("userArn") userArn: userArn
}
type templateParameterMap = Js.Dict.t< templateParameterValue>
type teamMember = {
@as("remoteAccessAllowed") remoteAccessAllowed: remoteAccessAllowed,
@as("projectRole") projectRole: option<role>,
@as("userArn") userArn: option<userArn>
}
type tags = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type s3Location = {
@as("bucketKey") bucketKey: bucketKey,
@as("bucketName") bucketName: bucketName
}
type resource = {
@as("id") id: option<resourceId>
}
type projectSummary = {
@as("projectArn") projectArn: projectArn,
@as("projectId") projectId: projectId
}
type projectStatus = {
@as("reason") reason: reason,
@as("state") state: option<state>
}
type gitHubCodeDestination = {
@as("token") token: option<gitHubPersonalToken>,
@as("issuesEnabled") issuesEnabled: option<repositoryEnableIssues>,
@as("privateRepository") privateRepository: option<repositoryIsPrivate>,
@as("owner") owner: option<repositoryOwner>,
@as("type") type_: option<repositoryType>,
@as("description") description: repositoryDescription,
@as("name") name: option<repositoryName>
}
type codeCommitCodeDestination = {
@as("name") name: option<repositoryName>
}
type userProfilesList = array<userProfileSummary>
type toolchainSource = {
@as("s3") s3: option<s3Location>
}
type teamMemberResult = array<teamMember>
type resourcesResult = array<resource>
type projectsList = array<projectSummary>
type codeSource = {
@as("s3") s3: option<s3Location>
}
type codeDestination = {
@as("gitHub") gitHub: gitHubCodeDestination,
@as("codeCommit") codeCommit: codeCommitCodeDestination
}
type toolchain = {
@as("stackParameters") stackParameters: templateParameterMap,
@as("roleArn") roleArn: roleArn,
@as("source") source: option<toolchainSource>
}
type code = {
@as("destination") destination: option<codeDestination>,
@as("source") source: option<codeSource>
}
type sourceCode = array<code>
type clientType;
@module("@aws-sdk/client-codestar") @new external createClient: unit => clientType = "CodeStarClient";
module UpdateUserProfile = {
  type t;
  type request = {
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: email,
@as("displayName") displayName: userProfileDisplayName,
@as("userArn") userArn: option<userArn>
}
  type response = {
@as("lastModifiedTimestamp") lastModifiedTimestamp: lastModifiedTimestamp,
@as("createdTimestamp") createdTimestamp: createdTimestamp,
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: email,
@as("displayName") displayName: userProfileDisplayName,
@as("userArn") userArn: option<userArn>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "UpdateUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTeamMember = {
  type t;
  type request = {
@as("remoteAccessAllowed") remoteAccessAllowed: remoteAccessAllowed,
@as("projectRole") projectRole: role,
@as("userArn") userArn: option<userArn>,
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("remoteAccessAllowed") remoteAccessAllowed: remoteAccessAllowed,
@as("projectRole") projectRole: role,
@as("userArn") userArn: userArn
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "UpdateTeamMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("description") description: projectDescription,
@as("name") name: projectName,
@as("id") id: option<projectId>
}
  type response = unit
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateTeamMember = {
  type t;
  type request = {
@as("userArn") userArn: option<userArn>,
@as("projectId") projectId: option<projectId>
}
  type response = unit
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "DisassociateTeamMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUserProfile = {
  type t;
  type request = {
@as("userArn") userArn: option<userArn>
}
  type response = {
@as("lastModifiedTimestamp") lastModifiedTimestamp: option<lastModifiedTimestamp>,
@as("createdTimestamp") createdTimestamp: option<createdTimestamp>,
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: email,
@as("displayName") displayName: userProfileDisplayName,
@as("userArn") userArn: option<userArn>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "DescribeUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUserProfile = {
  type t;
  type request = {
@as("userArn") userArn: option<userArn>
}
  type response = {
@as("userArn") userArn: option<userArn>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "DeleteUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("deleteStack") deleteStack: deleteStack,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("id") id: option<projectId>
}
  type response = {
@as("projectArn") projectArn: projectArn,
@as("stackId") stackId: stackId
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUserProfile = {
  type t;
  type request = {
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: option<email>,
@as("displayName") displayName: option<userProfileDisplayName>,
@as("userArn") userArn: option<userArn>
}
  type response = {
@as("lastModifiedTimestamp") lastModifiedTimestamp: lastModifiedTimestamp,
@as("createdTimestamp") createdTimestamp: createdTimestamp,
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("emailAddress") emailAddress: email,
@as("displayName") displayName: userProfileDisplayName,
@as("userArn") userArn: option<userArn>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "CreateUserProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateTeamMember = {
  type t;
  type request = {
@as("remoteAccessAllowed") remoteAccessAllowed: remoteAccessAllowed,
@as("projectRole") projectRole: option<role>,
@as("userArn") userArn: option<userArn>,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("clientRequestToken") clientRequestToken: clientRequestToken
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "AssociateTeamMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagProject = {
  type t;
  type request = {
@as("tags") tags: option<tagKeys>,
@as("id") id: option<projectId>
}
  type response = unit
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "UntagProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagProject = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("id") id: option<projectId>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "TagProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForProject = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("id") id: option<projectId>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("tags") tags: tags
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("id") id: option<projectId>
}
  type response = {
@as("status") status: projectStatus,
@as("projectTemplateId") projectTemplateId: projectTemplateId,
@as("stackId") stackId: stackId,
@as("createdTimeStamp") createdTimeStamp: createdTimestamp,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("description") description: projectDescription,
@as("arn") arn: projectArn,
@as("id") id: projectId,
@as("name") name: projectName
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUserProfiles = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("userProfiles") userProfiles: option<userProfilesList>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "ListUserProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTeamMembers = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("teamMembers") teamMembers: option<teamMemberResult>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "ListTeamMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken,
@as("projectId") projectId: option<projectId>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("resources") resources: resourcesResult
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "ListResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("projects") projects: option<projectsList>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("toolchain") toolchain: toolchain,
@as("sourceCode") sourceCode: sourceCode,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("description") description: projectDescription,
@as("id") id: option<projectId>,
@as("name") name: option<projectName>
}
  type response = {
@as("projectTemplateId") projectTemplateId: projectTemplateId,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("arn") arn: option<projectArn>,
@as("id") id: option<projectId>
}
  @module("@aws-sdk/client-codestar") @new external new_: (Js.Promise.t<request>) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
