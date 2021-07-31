type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type voteValue = [@as("NO") #NO | @as("YES") #YES]
type voteCount = int;
type usernameString = string
type amazonawsTimestamp = Js.Date.t;
type thresholdPercentageInt = int;
type thresholdComparator = [@as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("GREATER_THAN") #GREATER_THAN]
type tagValue = string
type tagKey = string
type amazonawsString = string
type stateDBType = [@as("CouchDB") #CouchDB | @as("LevelDB") #LevelDB]
type resourceIdString = string
type proposalStatus = [@as("ACTION_FAILED") #ACTION_FAILED | @as("EXPIRED") #EXPIRED | @as("REJECTED") #REJECTED | @as("APPROVED") #APPROVED | @as("IN_PROGRESS") #IN_PROGRESS]
type proposalListMaxResults = int;
type proposalDurationInt = int;
type principalString = string
type passwordString = string
type paginationToken = string
type nodeStatus = [@as("FAILED") #FAILED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATE_FAILED") #CREATE_FAILED | @as("UNHEALTHY") #UNHEALTHY | @as("AVAILABLE") #AVAILABLE | @as("CREATING") #CREATING]
type nodeListMaxResults = int;
type networkStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("CREATE_FAILED") #CREATE_FAILED | @as("AVAILABLE") #AVAILABLE | @as("CREATING") #CREATING]
type networkMemberNameString = string
type networkListMaxResults = int;
type nameString = string
type memberStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATE_FAILED") #CREATE_FAILED | @as("AVAILABLE") #AVAILABLE | @as("CREATING") #CREATING]
type memberListMaxResults = int;
type isOwned = bool;
type invitationStatus = [@as("EXPIRED") #EXPIRED | @as("REJECTED") #REJECTED | @as("ACCEPTING") #ACCEPTING | @as("ACCEPTED") #ACCEPTED | @as("PENDING") #PENDING]
type instanceTypeString = string
type frameworkVersionString = string
type framework = [@as("ETHEREUM") #ETHEREUM | @as("HYPERLEDGER_FABRIC") #HYPERLEDGER_FABRIC]
type exceptionMessage = string
type enabled = bool;
type edition = [@as("STANDARD") #STANDARD | @as("STARTER") #STARTER]
type descriptionString = string
type clientRequestTokenString = string
type availabilityZoneString = string
type arnString = string
type voteSummary = {
@as("MemberId") memberId: resourceIdString,
@as("MemberName") memberName: networkMemberNameString,
@as("Vote") vote: voteValue
}
type tagKeyList = array<tagKey>
type removeAction = {
@as("MemberId") memberId: option<resourceIdString>
}
type proposalSummary = {
@as("Arn") arn: arnString,
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: proposalStatus,
@as("ProposedByMemberName") proposedByMemberName: networkMemberNameString,
@as("ProposedByMemberId") proposedByMemberId: resourceIdString,
@as("Description") description: descriptionString,
@as("ProposalId") proposalId: resourceIdString
}
type outputTagMap = Js.Dict.t< tagValue>
type nodeSummary = {
@as("Arn") arn: arnString,
@as("InstanceType") instanceType: instanceTypeString,
@as("AvailabilityZone") availabilityZone: availabilityZoneString,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: nodeStatus,
@as("Id") id: resourceIdString
}
type nodeFabricAttributes = {
@as("PeerEventEndpoint") peerEventEndpoint: amazonawsString,
@as("PeerEndpoint") peerEndpoint: amazonawsString
}
type nodeEthereumAttributes = {
@as("WebSocketEndpoint") webSocketEndpoint: amazonawsString,
@as("HttpEndpoint") httpEndpoint: amazonawsString
}
type networkSummary = {
@as("Arn") arn: arnString,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: networkStatus,
@as("FrameworkVersion") frameworkVersion: frameworkVersionString,
@as("Framework") framework: framework,
@as("Description") description: descriptionString,
@as("Name") name: nameString,
@as("Id") id: resourceIdString
}
type networkFabricConfiguration = {
@as("Edition") edition: option<edition>
}
type networkFabricAttributes = {
@as("Edition") edition: edition,
@as("OrderingServiceEndpoint") orderingServiceEndpoint: amazonawsString
}
type networkEthereumAttributes = {
@as("ChainId") chainId: amazonawsString
}
type memberSummary = {
@as("Arn") arn: arnString,
@as("IsOwned") isOwned: isOwned,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: memberStatus,
@as("Description") description: descriptionString,
@as("Name") name: networkMemberNameString,
@as("Id") id: resourceIdString
}
type memberFabricConfiguration = {
@as("AdminPassword") adminPassword: option<passwordString>,
@as("AdminUsername") adminUsername: option<usernameString>
}
type memberFabricAttributes = {
@as("CaEndpoint") caEndpoint: amazonawsString,
@as("AdminUsername") adminUsername: usernameString
}
type logConfiguration = {
@as("Enabled") enabled: enabled
}
type inviteAction = {
@as("Principal") principal: option<principalString>
}
type inputTagMap = Js.Dict.t< tagValue>
type approvalThresholdPolicy = {
@as("ThresholdComparator") thresholdComparator: thresholdComparator,
@as("ProposalDurationInHours") proposalDurationInHours: proposalDurationInt,
@as("ThresholdPercentage") thresholdPercentage: thresholdPercentageInt
}
type votingPolicy = {
@as("ApprovalThresholdPolicy") approvalThresholdPolicy: approvalThresholdPolicy
}
type removeActionList = array<removeAction>
type proposalVoteList = array<voteSummary>
type proposalSummaryList = array<proposalSummary>
type nodeSummaryList = array<nodeSummary>
type nodeFrameworkAttributes = {
@as("Ethereum") ethereum: nodeEthereumAttributes,
@as("Fabric") fabric: nodeFabricAttributes
}
type networkSummaryList = array<networkSummary>
type networkFrameworkConfiguration = {
@as("Fabric") fabric: networkFabricConfiguration
}
type networkFrameworkAttributes = {
@as("Ethereum") ethereum: networkEthereumAttributes,
@as("Fabric") fabric: networkFabricAttributes
}
type memberSummaryList = array<memberSummary>
type memberFrameworkConfiguration = {
@as("Fabric") fabric: memberFabricConfiguration
}
type memberFrameworkAttributes = {
@as("Fabric") fabric: memberFabricAttributes
}
type logConfigurations = {
@as("Cloudwatch") cloudwatch: logConfiguration
}
type inviteActionList = array<inviteAction>
type invitation = {
@as("Arn") arn: arnString,
@as("NetworkSummary") networkSummary: networkSummary,
@as("Status") status: invitationStatus,
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("InvitationId") invitationId: resourceIdString
}
type proposalActions = {
@as("Removals") removals: removeActionList,
@as("Invitations") invitations: inviteActionList
}
type nodeFabricLogPublishingConfiguration = {
@as("PeerLogs") peerLogs: logConfigurations,
@as("ChaincodeLogs") chaincodeLogs: logConfigurations
}
type network = {
@as("Arn") arn: arnString,
@as("Tags") tags: outputTagMap,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: networkStatus,
@as("VotingPolicy") votingPolicy: votingPolicy,
@as("VpcEndpointServiceName") vpcEndpointServiceName: amazonawsString,
@as("FrameworkAttributes") frameworkAttributes: networkFrameworkAttributes,
@as("FrameworkVersion") frameworkVersion: frameworkVersionString,
@as("Framework") framework: framework,
@as("Description") description: descriptionString,
@as("Name") name: nameString,
@as("Id") id: resourceIdString
}
type memberFabricLogPublishingConfiguration = {
@as("CaLogs") caLogs: logConfigurations
}
type invitationList = array<invitation>
type proposal = {
@as("Arn") arn: arnString,
@as("Tags") tags: outputTagMap,
@as("OutstandingVoteCount") outstandingVoteCount: voteCount,
@as("NoVoteCount") noVoteCount: voteCount,
@as("YesVoteCount") yesVoteCount: voteCount,
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: proposalStatus,
@as("ProposedByMemberName") proposedByMemberName: networkMemberNameString,
@as("ProposedByMemberId") proposedByMemberId: resourceIdString,
@as("Actions") actions: proposalActions,
@as("Description") description: descriptionString,
@as("NetworkId") networkId: resourceIdString,
@as("ProposalId") proposalId: resourceIdString
}
type nodeLogPublishingConfiguration = {
@as("Fabric") fabric: nodeFabricLogPublishingConfiguration
}
type memberLogPublishingConfiguration = {
@as("Fabric") fabric: memberFabricLogPublishingConfiguration
}
type nodeConfiguration = {
@as("StateDB") stateDB: stateDBType,
@as("LogPublishingConfiguration") logPublishingConfiguration: nodeLogPublishingConfiguration,
@as("AvailabilityZone") availabilityZone: availabilityZoneString,
@as("InstanceType") instanceType: option<instanceTypeString>
}
type node = {
@as("Arn") arn: arnString,
@as("Tags") tags: outputTagMap,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: nodeStatus,
@as("StateDB") stateDB: stateDBType,
@as("LogPublishingConfiguration") logPublishingConfiguration: nodeLogPublishingConfiguration,
@as("FrameworkAttributes") frameworkAttributes: nodeFrameworkAttributes,
@as("AvailabilityZone") availabilityZone: availabilityZoneString,
@as("InstanceType") instanceType: instanceTypeString,
@as("Id") id: resourceIdString,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: resourceIdString
}
type memberConfiguration = {
@as("Tags") tags: inputTagMap,
@as("LogPublishingConfiguration") logPublishingConfiguration: memberLogPublishingConfiguration,
@as("FrameworkConfiguration") frameworkConfiguration: option<memberFrameworkConfiguration>,
@as("Description") description: descriptionString,
@as("Name") name: option<networkMemberNameString>
}
type member = {
@as("Arn") arn: arnString,
@as("Tags") tags: outputTagMap,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("Status") status: memberStatus,
@as("LogPublishingConfiguration") logPublishingConfiguration: memberLogPublishingConfiguration,
@as("FrameworkAttributes") frameworkAttributes: memberFrameworkAttributes,
@as("Description") description: descriptionString,
@as("Name") name: networkMemberNameString,
@as("Id") id: resourceIdString,
@as("NetworkId") networkId: resourceIdString
}
type clientType;
@module("@aws-sdk/client-managedblockchain") @new external createClient: unit => clientType = "ManagedBlockchainClient";
module VoteOnProposal = {
  type t;
  type request = {
@as("Vote") vote: option<voteValue>,
@as("VoterMemberId") voterMemberId: option<resourceIdString>,
@as("ProposalId") proposalId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "VoteOnProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "RejectInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNode = {
  type t;
  type request = {
@as("NodeId") nodeId: option<resourceIdString>,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "DeleteNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMember = {
  type t;
  type request = {
@as("MemberId") memberId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "DeleteMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arnString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<inputTagMap>,
@as("ResourceArn") resourceArn: option<arnString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<arnString>
}
  type response = {
@as("Tags") tags: outputTagMap
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProposals = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: proposalListMaxResults,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Proposals") proposals: proposalSummaryList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListProposalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProposalVotes = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: proposalListMaxResults,
@as("ProposalId") proposalId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("ProposalVotes") proposalVotes: proposalVoteList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListProposalVotesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNodes = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: nodeListMaxResults,
@as("Status") status: nodeStatus,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Nodes") nodes: nodeSummaryList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListNodesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNetworks = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: networkListMaxResults,
@as("Status") status: networkStatus,
@as("Framework") framework: framework,
@as("Name") name: amazonawsString
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Networks") networks: networkSummaryList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListNetworksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: memberListMaxResults,
@as("IsOwned") isOwned: isOwned,
@as("Status") status: memberStatus,
@as("Name") name: amazonawsString,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Members") members: memberSummaryList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: proposalListMaxResults
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Invitations") invitations: invitationList
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNetwork = {
  type t;
  type request = {
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("Network") network: network
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "GetNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProposal = {
  type t;
  type request = {
@as("Tags") tags: inputTagMap,
@as("Description") description: descriptionString,
@as("Actions") actions: option<proposalActions>,
@as("MemberId") memberId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>
}
  type response = {
@as("ProposalId") proposalId: resourceIdString
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "CreateProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNode = {
  type t;
  type request = {
@as("LogPublishingConfiguration") logPublishingConfiguration: nodeLogPublishingConfiguration,
@as("NodeId") nodeId: option<resourceIdString>,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "UpdateNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMember = {
  type t;
  type request = {
@as("LogPublishingConfiguration") logPublishingConfiguration: memberLogPublishingConfiguration,
@as("MemberId") memberId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = unit
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "UpdateMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProposal = {
  type t;
  type request = {
@as("ProposalId") proposalId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("Proposal") proposal: proposal
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "GetProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNode = {
  type t;
  type request = {
@as("NodeId") nodeId: option<resourceIdString>,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("Node") node: node
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "GetNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMember = {
  type t;
  type request = {
@as("MemberId") memberId: option<resourceIdString>,
@as("NetworkId") networkId: option<resourceIdString>
}
  type response = {
@as("Member") member: member
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "GetMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNode = {
  type t;
  type request = {
@as("Tags") tags: inputTagMap,
@as("NodeConfiguration") nodeConfiguration: option<nodeConfiguration>,
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: option<resourceIdString>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>
}
  type response = {
@as("NodeId") nodeId: resourceIdString
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "CreateNodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetwork = {
  type t;
  type request = {
@as("Tags") tags: inputTagMap,
@as("MemberConfiguration") memberConfiguration: option<memberConfiguration>,
@as("VotingPolicy") votingPolicy: option<votingPolicy>,
@as("FrameworkConfiguration") frameworkConfiguration: networkFrameworkConfiguration,
@as("FrameworkVersion") frameworkVersion: option<frameworkVersionString>,
@as("Framework") framework: option<framework>,
@as("Description") description: descriptionString,
@as("Name") name: option<nameString>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>
}
  type response = {
@as("MemberId") memberId: resourceIdString,
@as("NetworkId") networkId: resourceIdString
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "CreateNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMember = {
  type t;
  type request = {
@as("MemberConfiguration") memberConfiguration: option<memberConfiguration>,
@as("NetworkId") networkId: option<resourceIdString>,
@as("InvitationId") invitationId: option<resourceIdString>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestTokenString>
}
  type response = {
@as("MemberId") memberId: resourceIdString
}
  @module("@aws-sdk/client-managedblockchain") @new external new_: (request) => t = "CreateMemberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
