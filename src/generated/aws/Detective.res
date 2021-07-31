type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type unprocessedReason = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type percentage = float;
type paginationToken = string
type memberStatus = [@as("ACCEPTED_BUT_DISABLED") #ACCEPTED_BUT_DISABLED | @as("ENABLED") #ENABLED | @as("VERIFICATION_FAILED") #VERIFICATION_FAILED | @as("VERIFICATION_IN_PROGRESS") #VERIFICATION_IN_PROGRESS | @as("INVITED") #INVITED]
type memberResultsLimit = int;
type memberDisabledReason = [@as("VOLUME_UNKNOWN") #VOLUME_UNKNOWN | @as("VOLUME_TOO_HIGH") #VOLUME_TOO_HIGH]
type graphArn = string
type errorMessage = string
type emailMessage = string
type emailAddress = string
type byteValue = float;
type amazonawsBoolean = bool;
type accountId = string
type unprocessedAccount = {
@as("Reason") reason: unprocessedReason,
@as("AccountId") accountId: accountId
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type memberDetail = {
@as("PercentOfGraphUtilizationUpdatedTime") percentOfGraphUtilizationUpdatedTime: amazonawsTimestamp,
@as("PercentOfGraphUtilization") percentOfGraphUtilization: percentage,
@as("VolumeUsageUpdatedTime") volumeUsageUpdatedTime: amazonawsTimestamp,
@as("VolumeUsageInBytes") volumeUsageInBytes: byteValue,
@as("UpdatedTime") updatedTime: amazonawsTimestamp,
@as("InvitedTime") invitedTime: amazonawsTimestamp,
@as("DisabledReason") disabledReason: memberDisabledReason,
@as("Status") status: memberStatus,
@as("AdministratorId") administratorId: accountId,
@as("MasterId") masterId: accountId,
@as("GraphArn") graphArn: graphArn,
@as("EmailAddress") emailAddress: emailAddress,
@as("AccountId") accountId: accountId
}
type graph = {
@as("CreatedTime") createdTime: amazonawsTimestamp,
@as("Arn") arn: graphArn
}
type accountIdList = array<accountId>
type account = {
@as("EmailAddress") emailAddress: option<emailAddress>,
@as("AccountId") accountId: option<accountId>
}
type unprocessedAccountList = array<unprocessedAccount>
type memberDetailList = array<memberDetail>
type graphList = array<graph>
type accountList = array<account>
type clientType;
@module("@aws-sdk/client-detective") @new external createClient: unit => clientType = "DetectiveClient";
module StartMonitoringMember = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("GraphArn") graphArn: option<graphArn>
}
  
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "StartMonitoringMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RejectInvitation = {
  type t;
  type request = {
@as("GraphArn") graphArn: option<graphArn>
}
  
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "RejectInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateMembership = {
  type t;
  type request = {
@as("GraphArn") graphArn: option<graphArn>
}
  
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "DisassociateMembershipCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteGraph = {
  type t;
  type request = {
@as("GraphArn") graphArn: option<graphArn>
}
  
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "DeleteGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
@as("GraphArn") graphArn: option<graphArn>
}
  
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "AcceptInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<graphArn>
}
  type response = unit
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<graphArn>
}
  type response = unit
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<graphArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGraph = {
  type t;
  type request = {
@as("Tags") tags: tagMap
}
  type response = {
@as("GraphArn") graphArn: graphArn
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "CreateGraphCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("MaxResults") maxResults: memberResultsLimit,
@as("NextToken") nextToken: paginationToken,
@as("GraphArn") graphArn: option<graphArn>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("MemberDetails") memberDetails: memberDetailList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("MaxResults") maxResults: memberResultsLimit,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Invitations") invitations: memberDetailList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGraphs = {
  type t;
  type request = {
@as("MaxResults") maxResults: memberResultsLimit,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("GraphList") graphList: graphList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "ListGraphsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>,
@as("GraphArn") graphArn: option<graphArn>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccountList,
@as("MemberDetails") memberDetails: memberDetailList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "GetMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>,
@as("GraphArn") graphArn: option<graphArn>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccountList,
@as("AccountIds") accountIds: accountIdList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "DeleteMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMembers = {
  type t;
  type request = {
@as("Accounts") accounts: option<accountList>,
@as("DisableEmailNotification") disableEmailNotification: amazonawsBoolean,
@as("Message") message: emailMessage,
@as("GraphArn") graphArn: option<graphArn>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccountList,
@as("Members") members: memberDetailList
}
  @module("@aws-sdk/client-detective") @new external new_: (request) => t = "CreateMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
