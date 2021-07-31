type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-detective") @new
external createClient: unit => awsServiceClient = "DetectiveClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type unprocessedReason = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type percentage = float
type paginationToken = string
type memberStatus = [
  | @as("ACCEPTED_BUT_DISABLED") #ACCEPTED_BUT_DISABLED
  | @as("ENABLED") #ENABLED
  | @as("VERIFICATION_FAILED") #VERIFICATION_FAILED
  | @as("VERIFICATION_IN_PROGRESS") #VERIFICATION_IN_PROGRESS
  | @as("INVITED") #INVITED
]
type memberResultsLimit = int
type memberDisabledReason = [
  | @as("VOLUME_UNKNOWN") #VOLUME_UNKNOWN
  | @as("VOLUME_TOO_HIGH") #VOLUME_TOO_HIGH
]
type graphArn = string
type errorMessage = string
type emailMessage = string
type emailAddress = string
type byteValue = float
type boolean_ = bool
type accountId = string
type unprocessedAccount = {
  @as("Reason") reason: option<unprocessedReason>,
  @as("AccountId") accountId: option<accountId>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type memberDetail = {
  @as("PercentOfGraphUtilizationUpdatedTime")
  percentOfGraphUtilizationUpdatedTime: option<timestamp_>,
  @as("PercentOfGraphUtilization") percentOfGraphUtilization: option<percentage>,
  @as("VolumeUsageUpdatedTime") volumeUsageUpdatedTime: option<timestamp_>,
  @as("VolumeUsageInBytes") volumeUsageInBytes: option<byteValue>,
  @as("UpdatedTime") updatedTime: option<timestamp_>,
  @as("InvitedTime") invitedTime: option<timestamp_>,
  @as("DisabledReason") disabledReason: option<memberDisabledReason>,
  @as("Status") status: option<memberStatus>,
  @as("AdministratorId") administratorId: option<accountId>,
  @as("MasterId") masterId: option<accountId>,
  @as("GraphArn") graphArn: option<graphArn>,
  @as("EmailAddress") emailAddress: option<emailAddress>,
  @as("AccountId") accountId: option<accountId>,
}
type graph = {
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("Arn") arn: option<graphArn>,
}
type accountIdList = array<accountId>
type account = {
  @as("EmailAddress") emailAddress: emailAddress,
  @as("AccountId") accountId: accountId,
}
type unprocessedAccountList = array<unprocessedAccount>
type memberDetailList = array<memberDetail>
type graphList = array<graph>
type accountList = array<account>

module StartMonitoringMember = {
  type t
  type request = {
    @as("AccountId") accountId: accountId,
    @as("GraphArn") graphArn: graphArn,
  }

  @module("@aws-sdk/client-detective") @new
  external new_: request => t = "StartMonitoringMemberCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectInvitation = {
  type t
  type request = {@as("GraphArn") graphArn: graphArn}

  @module("@aws-sdk/client-detective") @new external new_: request => t = "RejectInvitationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateMembership = {
  type t
  type request = {@as("GraphArn") graphArn: graphArn}

  @module("@aws-sdk/client-detective") @new
  external new_: request => t = "DisassociateMembershipCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGraph = {
  type t
  type request = {@as("GraphArn") graphArn: graphArn}

  @module("@aws-sdk/client-detective") @new external new_: request => t = "DeleteGraphCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptInvitation = {
  type t
  type request = {@as("GraphArn") graphArn: graphArn}

  @module("@aws-sdk/client-detective") @new external new_: request => t = "AcceptInvitationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: graphArn,
  }
  type response = unit
  @module("@aws-sdk/client-detective") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: graphArn,
  }
  type response = unit
  @module("@aws-sdk/client-detective") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: graphArn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-detective") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGraph = {
  type t
  type request = {@as("Tags") tags: option<tagMap>}
  type response = {@as("GraphArn") graphArn: option<graphArn>}
  @module("@aws-sdk/client-detective") @new external new_: request => t = "CreateGraphCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<memberResultsLimit>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("GraphArn") graphArn: graphArn,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MemberDetails") memberDetails: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "ListMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<memberResultsLimit>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Invitations") invitations: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "ListInvitationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGraphs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<memberResultsLimit>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("GraphList") graphList: option<graphList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "ListGraphsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIdList,
    @as("GraphArn") graphArn: graphArn,
  }
  type response = {
    @as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccountList>,
    @as("MemberDetails") memberDetails: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "GetMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIdList,
    @as("GraphArn") graphArn: graphArn,
  }
  type response = {
    @as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccountList>,
    @as("AccountIds") accountIds: option<accountIdList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "DeleteMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMembers = {
  type t
  type request = {
    @as("Accounts") accounts: accountList,
    @as("DisableEmailNotification") disableEmailNotification: option<boolean_>,
    @as("Message") message: option<emailMessage>,
    @as("GraphArn") graphArn: graphArn,
  }
  type response = {
    @as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccountList>,
    @as("Members") members: option<memberDetailList>,
  }
  @module("@aws-sdk/client-detective") @new external new_: request => t = "CreateMembersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
