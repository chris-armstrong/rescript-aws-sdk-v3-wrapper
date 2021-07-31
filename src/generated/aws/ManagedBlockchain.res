type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-managedblockchain") @new
external createClient: unit => awsServiceClient = "ManagedBlockchainClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type voteValue = [@as("NO") #NO | @as("YES") #YES]
type voteCount = int
type usernameString = string
type timestamp_ = Js.Date.t
type thresholdPercentageInt = int
type thresholdComparator = [
  | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO
  | @as("GREATER_THAN") #GREATER_THAN
]
type tagValue = string
type tagKey = string
type string_ = string
type stateDBType = [@as("CouchDB") #CouchDB | @as("LevelDB") #LevelDB]
type resourceIdString = string
type proposalStatus = [
  | @as("ACTION_FAILED") #ACTION_FAILED
  | @as("EXPIRED") #EXPIRED
  | @as("REJECTED") #REJECTED
  | @as("APPROVED") #APPROVED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type proposalListMaxResults = int
type proposalDurationInt = int
type principalString = string
type passwordString = string
type paginationToken = string
type nodeStatus = [
  | @as("FAILED") #FAILED
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("UNHEALTHY") #UNHEALTHY
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATING") #CREATING
]
type nodeListMaxResults = int
type networkStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATING") #CREATING
]
type networkMemberNameString = string
type networkListMaxResults = int
type nameString = string
type memberStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATING") #CREATING
]
type memberListMaxResults = int
type isOwned = bool
type invitationStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("REJECTED") #REJECTED
  | @as("ACCEPTING") #ACCEPTING
  | @as("ACCEPTED") #ACCEPTED
  | @as("PENDING") #PENDING
]
type instanceTypeString = string
type frameworkVersionString = string
type framework = [@as("ETHEREUM") #ETHEREUM | @as("HYPERLEDGER_FABRIC") #HYPERLEDGER_FABRIC]
type exceptionMessage = string
type enabled = bool
type edition = [@as("STANDARD") #STANDARD | @as("STARTER") #STARTER]
type descriptionString = string
type clientRequestTokenString = string
type availabilityZoneString = string
type arnString = string
type voteSummary = {
  @as("MemberId") memberId: option<resourceIdString>,
  @as("MemberName") memberName: option<networkMemberNameString>,
  @as("Vote") vote: option<voteValue>,
}
type tagKeyList = array<tagKey>
type removeAction = {@as("MemberId") memberId: resourceIdString}
type proposalSummary = {
  @as("Arn") arn: option<arnString>,
  @as("ExpirationDate") expirationDate: option<timestamp_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<proposalStatus>,
  @as("ProposedByMemberName") proposedByMemberName: option<networkMemberNameString>,
  @as("ProposedByMemberId") proposedByMemberId: option<resourceIdString>,
  @as("Description") description: option<descriptionString>,
  @as("ProposalId") proposalId: option<resourceIdString>,
}
type outputTagMap = Js.Dict.t<tagValue>
type nodeSummary = {
  @as("Arn") arn: option<arnString>,
  @as("InstanceType") instanceType: option<instanceTypeString>,
  @as("AvailabilityZone") availabilityZone: option<availabilityZoneString>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<nodeStatus>,
  @as("Id") id: option<resourceIdString>,
}
type nodeFabricAttributes = {
  @as("PeerEventEndpoint") peerEventEndpoint: option<string_>,
  @as("PeerEndpoint") peerEndpoint: option<string_>,
}
type nodeEthereumAttributes = {
  @as("WebSocketEndpoint") webSocketEndpoint: option<string_>,
  @as("HttpEndpoint") httpEndpoint: option<string_>,
}
type networkSummary = {
  @as("Arn") arn: option<arnString>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<networkStatus>,
  @as("FrameworkVersion") frameworkVersion: option<frameworkVersionString>,
  @as("Framework") framework: option<framework>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
  @as("Id") id: option<resourceIdString>,
}
type networkFabricConfiguration = {@as("Edition") edition: edition}
type networkFabricAttributes = {
  @as("Edition") edition: option<edition>,
  @as("OrderingServiceEndpoint") orderingServiceEndpoint: option<string_>,
}
type networkEthereumAttributes = {@as("ChainId") chainId: option<string_>}
type memberSummary = {
  @as("Arn") arn: option<arnString>,
  @as("IsOwned") isOwned: option<isOwned>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<memberStatus>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<networkMemberNameString>,
  @as("Id") id: option<resourceIdString>,
}
type memberFabricConfiguration = {
  @as("AdminPassword") adminPassword: passwordString,
  @as("AdminUsername") adminUsername: usernameString,
}
type memberFabricAttributes = {
  @as("CaEndpoint") caEndpoint: option<string_>,
  @as("AdminUsername") adminUsername: option<usernameString>,
}
type logConfiguration = {@as("Enabled") enabled: option<enabled>}
type inviteAction = {@as("Principal") principal: principalString}
type inputTagMap = Js.Dict.t<tagValue>
type approvalThresholdPolicy = {
  @as("ThresholdComparator") thresholdComparator: option<thresholdComparator>,
  @as("ProposalDurationInHours") proposalDurationInHours: option<proposalDurationInt>,
  @as("ThresholdPercentage") thresholdPercentage: option<thresholdPercentageInt>,
}
type votingPolicy = {
  @as("ApprovalThresholdPolicy") approvalThresholdPolicy: option<approvalThresholdPolicy>,
}
type removeActionList = array<removeAction>
type proposalVoteList = array<voteSummary>
type proposalSummaryList = array<proposalSummary>
type nodeSummaryList = array<nodeSummary>
type nodeFrameworkAttributes = {
  @as("Ethereum") ethereum: option<nodeEthereumAttributes>,
  @as("Fabric") fabric: option<nodeFabricAttributes>,
}
type networkSummaryList = array<networkSummary>
type networkFrameworkConfiguration = {@as("Fabric") fabric: option<networkFabricConfiguration>}
type networkFrameworkAttributes = {
  @as("Ethereum") ethereum: option<networkEthereumAttributes>,
  @as("Fabric") fabric: option<networkFabricAttributes>,
}
type memberSummaryList = array<memberSummary>
type memberFrameworkConfiguration = {@as("Fabric") fabric: option<memberFabricConfiguration>}
type memberFrameworkAttributes = {@as("Fabric") fabric: option<memberFabricAttributes>}
type logConfigurations = {@as("Cloudwatch") cloudwatch: option<logConfiguration>}
type inviteActionList = array<inviteAction>
type invitation = {
  @as("Arn") arn: option<arnString>,
  @as("NetworkSummary") networkSummary: option<networkSummary>,
  @as("Status") status: option<invitationStatus>,
  @as("ExpirationDate") expirationDate: option<timestamp_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("InvitationId") invitationId: option<resourceIdString>,
}
type proposalActions = {
  @as("Removals") removals: option<removeActionList>,
  @as("Invitations") invitations: option<inviteActionList>,
}
type nodeFabricLogPublishingConfiguration = {
  @as("PeerLogs") peerLogs: option<logConfigurations>,
  @as("ChaincodeLogs") chaincodeLogs: option<logConfigurations>,
}
type network = {
  @as("Arn") arn: option<arnString>,
  @as("Tags") tags: option<outputTagMap>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<networkStatus>,
  @as("VotingPolicy") votingPolicy: option<votingPolicy>,
  @as("VpcEndpointServiceName") vpcEndpointServiceName: option<string_>,
  @as("FrameworkAttributes") frameworkAttributes: option<networkFrameworkAttributes>,
  @as("FrameworkVersion") frameworkVersion: option<frameworkVersionString>,
  @as("Framework") framework: option<framework>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<nameString>,
  @as("Id") id: option<resourceIdString>,
}
type memberFabricLogPublishingConfiguration = {@as("CaLogs") caLogs: option<logConfigurations>}
type invitationList = array<invitation>
type proposal = {
  @as("Arn") arn: option<arnString>,
  @as("Tags") tags: option<outputTagMap>,
  @as("OutstandingVoteCount") outstandingVoteCount: option<voteCount>,
  @as("NoVoteCount") noVoteCount: option<voteCount>,
  @as("YesVoteCount") yesVoteCount: option<voteCount>,
  @as("ExpirationDate") expirationDate: option<timestamp_>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<proposalStatus>,
  @as("ProposedByMemberName") proposedByMemberName: option<networkMemberNameString>,
  @as("ProposedByMemberId") proposedByMemberId: option<resourceIdString>,
  @as("Actions") actions: option<proposalActions>,
  @as("Description") description: option<descriptionString>,
  @as("NetworkId") networkId: option<resourceIdString>,
  @as("ProposalId") proposalId: option<resourceIdString>,
}
type nodeLogPublishingConfiguration = {
  @as("Fabric") fabric: option<nodeFabricLogPublishingConfiguration>,
}
type memberLogPublishingConfiguration = {
  @as("Fabric") fabric: option<memberFabricLogPublishingConfiguration>,
}
type nodeConfiguration = {
  @as("StateDB") stateDB: option<stateDBType>,
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
  @as("AvailabilityZone") availabilityZone: option<availabilityZoneString>,
  @as("InstanceType") instanceType: instanceTypeString,
}
type node = {
  @as("Arn") arn: option<arnString>,
  @as("Tags") tags: option<outputTagMap>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<nodeStatus>,
  @as("StateDB") stateDB: option<stateDBType>,
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
  @as("FrameworkAttributes") frameworkAttributes: option<nodeFrameworkAttributes>,
  @as("AvailabilityZone") availabilityZone: option<availabilityZoneString>,
  @as("InstanceType") instanceType: option<instanceTypeString>,
  @as("Id") id: option<resourceIdString>,
  @as("MemberId") memberId: option<resourceIdString>,
  @as("NetworkId") networkId: option<resourceIdString>,
}
type memberConfiguration = {
  @as("Tags") tags: option<inputTagMap>,
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<memberLogPublishingConfiguration>,
  @as("FrameworkConfiguration") frameworkConfiguration: memberFrameworkConfiguration,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: networkMemberNameString,
}
type member = {
  @as("Arn") arn: option<arnString>,
  @as("Tags") tags: option<outputTagMap>,
  @as("CreationDate") creationDate: option<timestamp_>,
  @as("Status") status: option<memberStatus>,
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<memberLogPublishingConfiguration>,
  @as("FrameworkAttributes") frameworkAttributes: option<memberFrameworkAttributes>,
  @as("Description") description: option<descriptionString>,
  @as("Name") name: option<networkMemberNameString>,
  @as("Id") id: option<resourceIdString>,
  @as("NetworkId") networkId: option<resourceIdString>,
}

module VoteOnProposal = {
  type t
  type request = {
    @as("Vote") vote: voteValue,
    @as("VoterMemberId") voterMemberId: resourceIdString,
    @as("ProposalId") proposalId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "VoteOnProposalCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectInvitation = {
  type t
  type request = {@as("InvitationId") invitationId: resourceIdString}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "RejectInvitationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNode = {
  type t
  type request = {
    @as("NodeId") nodeId: resourceIdString,
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "DeleteNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMember = {
  type t
  type request = {
    @as("MemberId") memberId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "DeleteMemberCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arnString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: inputTagMap,
    @as("ResourceArn") resourceArn: arnString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: arnString}
  type response = {@as("Tags") tags: option<outputTagMap>}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProposals = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<proposalListMaxResults>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Proposals") proposals: option<proposalSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListProposalsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProposalVotes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<proposalListMaxResults>,
    @as("ProposalId") proposalId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("ProposalVotes") proposalVotes: option<proposalVoteList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListProposalVotesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNodes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<nodeListMaxResults>,
    @as("Status") status: option<nodeStatus>,
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Nodes") nodes: option<nodeSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "ListNodesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNetworks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<networkListMaxResults>,
    @as("Status") status: option<networkStatus>,
    @as("Framework") framework: option<framework>,
    @as("Name") name: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Networks") networks: option<networkSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListNetworksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<memberListMaxResults>,
    @as("IsOwned") isOwned: option<isOwned>,
    @as("Status") status: option<memberStatus>,
    @as("Name") name: option<string_>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Members") members: option<memberSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MaxResults") maxResults: option<proposalListMaxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Invitations") invitations: option<invitationList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListInvitationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetwork = {
  type t
  type request = {@as("NetworkId") networkId: resourceIdString}
  type response = {@as("Network") network: option<network>}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetNetworkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProposal = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagMap>,
    @as("Description") description: option<descriptionString>,
    @as("Actions") actions: proposalActions,
    @as("MemberId") memberId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
    @as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
  }
  type response = {@as("ProposalId") proposalId: option<resourceIdString>}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateProposalCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNode = {
  type t
  type request = {
    @as("LogPublishingConfiguration")
    logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
    @as("NodeId") nodeId: resourceIdString,
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "UpdateNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMember = {
  type t
  type request = {
    @as("LogPublishingConfiguration")
    logPublishingConfiguration: option<memberLogPublishingConfiguration>,
    @as("MemberId") memberId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "UpdateMemberCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProposal = {
  type t
  type request = {
    @as("ProposalId") proposalId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {@as("Proposal") proposal: option<proposal>}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "GetProposalCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNode = {
  type t
  type request = {
    @as("NodeId") nodeId: resourceIdString,
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {@as("Node") node: option<node>}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMember = {
  type t
  type request = {
    @as("MemberId") memberId: resourceIdString,
    @as("NetworkId") networkId: resourceIdString,
  }
  type response = {@as("Member") member: option<member>}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetMemberCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNode = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagMap>,
    @as("NodeConfiguration") nodeConfiguration: nodeConfiguration,
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: resourceIdString,
    @as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
  }
  type response = {@as("NodeId") nodeId: option<resourceIdString>}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "CreateNodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetwork = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagMap>,
    @as("MemberConfiguration") memberConfiguration: memberConfiguration,
    @as("VotingPolicy") votingPolicy: votingPolicy,
    @as("FrameworkConfiguration") frameworkConfiguration: option<networkFrameworkConfiguration>,
    @as("FrameworkVersion") frameworkVersion: frameworkVersionString,
    @as("Framework") framework: framework,
    @as("Description") description: option<descriptionString>,
    @as("Name") name: nameString,
    @as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
  }
  type response = {
    @as("MemberId") memberId: option<resourceIdString>,
    @as("NetworkId") networkId: option<resourceIdString>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateNetworkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMember = {
  type t
  type request = {
    @as("MemberConfiguration") memberConfiguration: memberConfiguration,
    @as("NetworkId") networkId: resourceIdString,
    @as("InvitationId") invitationId: resourceIdString,
    @as("ClientRequestToken") clientRequestToken: clientRequestTokenString,
  }
  type response = {@as("MemberId") memberId: option<resourceIdString>}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateMemberCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
