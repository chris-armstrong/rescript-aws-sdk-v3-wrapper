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
  | @as("INACCESSIBLE_ENCRYPTION_KEY") #INACCESSIBLE_ENCRYPTION_KEY
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
  | @as("INACCESSIBLE_ENCRYPTION_KEY") #INACCESSIBLE_ENCRYPTION_KEY
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
@ocaml.doc("<p>
         Properties of an individual vote that a member cast for a proposal.
      </p>
         <p>Applies only to Hyperledger Fabric.</p>")
type voteSummary = {
  @ocaml.doc("<p>
         The unique identifier of the member that cast the vote.
      </p>")
  @as("MemberId")
  memberId: option<resourceIdString>,
  @ocaml.doc("<p>
         The name of the member that cast the vote.
      </p>")
  @as("MemberName")
  memberName: option<networkMemberNameString>,
  @ocaml.doc("<p>
         The vote value, either <code>YES</code> or <code>NO</code>.
      </p>")
  @as("Vote")
  vote: option<voteValue>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>An action to remove a member from a Managed Blockchain network as the result of a removal proposal that is <code>APPROVED</code>. The member and all associated resources are deleted from the network.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type removeAction = {
  @ocaml.doc("<p>The unique identifier of the member to remove.</p>") @as("MemberId")
  memberId: resourceIdString,
}
@ocaml.doc("<p>Properties of a proposal.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type proposalSummary = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>
         The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>.  After this date and time, if members have not cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> are not carried out.
      </p>")
  @as("ExpirationDate")
  expirationDate: option<timestamp_>,
  @ocaml.doc("<p>
         The date and time that the proposal was created.
      </p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the proposal. Values are as follows:</p>
         <ul>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>
            </li>
            <li>
               <p>
                  <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>
            </li>
            <li>
               <p>
                  <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> are not carried out.</p>
            </li>
            <li>
               <p>
                  <code>EXPIRED</code> - Members did not cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> are not carried out.</p>
            </li>
            <li>
               <p>
                  <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved could not be completed because of an error.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<proposalStatus>,
  @ocaml.doc("<p>
         The name of the member that created the proposal.
      </p>")
  @as("ProposedByMemberName")
  proposedByMemberName: option<networkMemberNameString>,
  @ocaml.doc("<p>
         The unique identifier of the member that created the proposal.
      </p>")
  @as("ProposedByMemberId")
  proposedByMemberId: option<resourceIdString>,
  @ocaml.doc("<p>
         The description of the proposal.
      </p>")
  @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>
         The unique identifier of the proposal.
      </p>")
  @as("ProposalId")
  proposalId: option<resourceIdString>,
}
type outputTagMap = Js.Dict.t<tagValue>
@ocaml.doc("<p>A summary of configuration properties for a node.</p>")
type nodeSummary = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>The EC2 instance type for the node.</p>") @as("InstanceType")
  instanceType: option<instanceTypeString>,
  @ocaml.doc("<p>The Availability Zone in which the node exists.</p>") @as("AvailabilityZone")
  availabilityZone: option<availabilityZoneString>,
  @ocaml.doc("<p>The date and time that the node was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the node.</p>") @as("Status") status: option<nodeStatus>,
  @ocaml.doc("<p>The unique identifier of the node.</p>") @as("Id") id: option<resourceIdString>,
}
@ocaml.doc(
  "<p>Attributes of Hyperledger Fabric for a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>"
)
type nodeFabricAttributes = {
  @ocaml.doc(
    "<p>The endpoint that identifies the peer node for peer channel-based event services.</p>"
  )
  @as("PeerEventEndpoint")
  peerEventEndpoint: option<string_>,
  @ocaml.doc(
    "<p>The endpoint that identifies the peer node for all services except peer channel-based event services.</p>"
  )
  @as("PeerEndpoint")
  peerEndpoint: option<string_>,
}
@ocaml.doc("<p>Attributes of an Ethereum node.</p>")
type nodeEthereumAttributes = {
  @ocaml.doc(
    "<p>The endpoint on which the Ethereum node listens to run Ethereum JSON-RPC methods over WebSockets connections from a client. Use this endpoint in client code for smart contracts when using a WebSockets connection. Connections to this endpoint are authenticated using <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p>"
  )
  @as("WebSocketEndpoint")
  webSocketEndpoint: option<string_>,
  @ocaml.doc(
    "<p>The endpoint on which the Ethereum node listens to run Ethereum JSON-RPC methods over HTTP connections from a client. Use this endpoint in client code for smart contracts when using an HTTP connection. Connections to this endpoint are authenticated using <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p>"
  )
  @as("HttpEndpoint")
  httpEndpoint: option<string_>,
}
@ocaml.doc("<p>A summary of network configuration properties.</p>")
type networkSummary = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>The date and time that the network was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The current status of the network.</p>") @as("Status")
  status: option<networkStatus>,
  @ocaml.doc("<p>The version of the blockchain framework that the network uses.</p>")
  @as("FrameworkVersion")
  frameworkVersion: option<frameworkVersionString>,
  @ocaml.doc("<p>The blockchain framework that the network uses.</p>") @as("Framework")
  framework: option<framework>,
  @ocaml.doc("<p>An optional description of the network.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the network.</p>") @as("Name") name: option<nameString>,
  @ocaml.doc("<p>The unique identifier of the network.</p>") @as("Id") id: option<resourceIdString>,
}
@ocaml.doc("<p>Hyperledger Fabric configuration properties for the network.</p>")
type networkFabricConfiguration = {
  @ocaml.doc(
    "<p>The edition of Amazon Managed Blockchain that the network uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>"
  )
  @as("Edition")
  edition: edition,
}
@ocaml.doc("<p>Attributes of Hyperledger Fabric for a network.</p>")
type networkFabricAttributes = {
  @ocaml.doc(
    "<p>The edition of Amazon Managed Blockchain that Hyperledger Fabric uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>"
  )
  @as("Edition")
  edition: option<edition>,
  @ocaml.doc("<p>The endpoint of the ordering service for the network.</p>")
  @as("OrderingServiceEndpoint")
  orderingServiceEndpoint: option<string_>,
}
@ocaml.doc("<p>Attributes of Ethereum for a network. </p>")
type networkEthereumAttributes = {
  @ocaml.doc("<p>The Ethereum <code>CHAIN_ID</code> associated with the Ethereum network. Chain IDs are as follows:</p>
         <ul>
            <li>
               <p>mainnet = <code>1</code>
               </p>
            </li>
            <li>
               <p>rinkeby = <code>4</code>
               </p>
            </li>
            <li>
               <p>ropsten = <code>3</code>
               </p>
            </li>
         </ul>")
  @as("ChainId")
  chainId: option<string_>,
}
@ocaml.doc("<p>A summary of configuration properties for a member.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type memberSummary = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc(
    "<p>An indicator of whether the member is owned by your AWS account or a different AWS account.</p>"
  )
  @as("IsOwned")
  isOwned: option<isOwned>,
  @ocaml.doc("<p>The date and time that the member was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the member.</p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code> - The AWS account is in the process of creating a member.</p>
            </li>
            <li>
               <p>
                  <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> - The AWS account attempted to create a member and creation failed.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The member is in the process of being updated.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> 
                  <code>PROPOSAL</code> to remove the member.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> 
                  <code>PROPOSAL</code> to remove the member.</p>
            </li>
            <li>
               <p>
                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in AWS Key Management Service (AWS KMS) for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
               <p>The effect of disabling or deleting a key, or revoking a grant is not immediate. The member resource might take some time to find that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<memberStatus>,
  @ocaml.doc("<p>An optional description of the member.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the member.</p>") @as("Name") name: option<networkMemberNameString>,
  @ocaml.doc("<p>The unique identifier of the member.</p>") @as("Id") id: option<resourceIdString>,
}
@ocaml.doc(
  "<p>Configuration properties for Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
)
type memberFabricConfiguration = {
  @ocaml.doc(
    "<p>The password for the member's initial administrative user. The <code>AdminPassword</code> must be at least eight characters long and no more than 32 characters. It must contain at least one uppercase letter, one lowercase letter, and one digit. It cannot have a single quotation mark (‘), a double quotation marks (“), a forward slash(/), a backward slash(\\), @, or a space.</p>"
  )
  @as("AdminPassword")
  adminPassword: passwordString,
  @ocaml.doc("<p>The user name for the member's initial administrative user.</p>")
  @as("AdminUsername")
  adminUsername: usernameString,
}
@ocaml.doc(
  "<p>Attributes of Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
)
type memberFabricAttributes = {
  @ocaml.doc("<p>The endpoint used to access the member's certificate authority.</p>")
  @as("CaEndpoint")
  caEndpoint: option<string_>,
  @ocaml.doc("<p>The user name for the initial administrator user for the member.</p>")
  @as("AdminUsername")
  adminUsername: option<usernameString>,
}
@ocaml.doc("<p>A configuration for logging events.</p>")
type logConfiguration = {
  @ocaml.doc("<p>Indicates whether logging is enabled.</p>") @as("Enabled")
  enabled: option<enabled>,
}
@ocaml.doc("<p>An action to invite a specific AWS account to create a member and join the network. The <code>InviteAction</code> is carried out when a <code>Proposal</code> is <code>APPROVED</code>.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type inviteAction = {
  @ocaml.doc("<p>The AWS account ID to invite.</p>") @as("Principal") principal: principalString,
}
type inputTagMap = Js.Dict.t<tagValue>
@ocaml.doc("<p>A policy type that defines the voting rules for the network. The rules decide if a proposal is approved. Approval may be based on criteria such as the percentage of <code>YES</code> votes and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type approvalThresholdPolicy = {
  @ocaml.doc(
    "<p>Determines whether the vote percentage must be greater than the <code>ThresholdPercentage</code> or must be greater than or equal to the <code>ThreholdPercentage</code> to be approved.</p>"
  )
  @as("ThresholdComparator")
  thresholdComparator: option<thresholdComparator>,
  @ocaml.doc(
    "<p>The duration from the time that a proposal is created until it expires. If members cast neither the required number of <code>YES</code> votes to approve the proposal nor the number of <code>NO</code> votes required to reject it before the duration expires, the proposal is <code>EXPIRED</code> and <code>ProposalActions</code> are not carried out.</p>"
  )
  @as("ProposalDurationInHours")
  proposalDurationInHours: option<proposalDurationInt>,
  @ocaml.doc(
    "<p>The percentage of votes among all members that must be <code>YES</code> for a proposal to be approved. For example, a <code>ThresholdPercentage</code> value of <code>50</code> indicates 50%. The <code>ThresholdComparator</code> determines the precise comparison. If a <code>ThresholdPercentage</code> value of <code>50</code> is specified on a network with 10 members, along with a <code>ThresholdComparator</code> value of <code>GREATER_THAN</code>, this indicates that 6 <code>YES</code> votes are required for the proposal to be approved.</p>"
  )
  @as("ThresholdPercentage")
  thresholdPercentage: option<thresholdPercentageInt>,
}
@ocaml.doc("<p>
         The voting rules for the network to decide if a proposal is accepted
      </p>
         <p>Applies only to Hyperledger Fabric.</p>")
type votingPolicy = {
  @ocaml.doc(
    "<p>Defines the rules for the network for voting on proposals, such as the percentage of <code>YES</code> votes required for the proposal to be approved and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>"
  )
  @as("ApprovalThresholdPolicy")
  approvalThresholdPolicy: option<approvalThresholdPolicy>,
}
type removeActionList = array<removeAction>
type proposalVoteList = array<voteSummary>
type proposalSummaryList = array<proposalSummary>
type nodeSummaryList = array<nodeSummary>
@ocaml.doc(
  "<p>Attributes relevant to a node on a Managed Blockchain network for the blockchain framework that the network uses.</p>"
)
type nodeFrameworkAttributes = {
  @ocaml.doc(
    "<p>Attributes of Ethereum for a node on a Managed Blockchain network that uses Ethereum. </p>"
  )
  @as("Ethereum")
  ethereum: option<nodeEthereumAttributes>,
  @ocaml.doc(
    "<p>Attributes of Hyperledger Fabric for a peer node on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
  )
  @as("Fabric")
  fabric: option<nodeFabricAttributes>,
}
type networkSummaryList = array<networkSummary>
@ocaml.doc("<p>
         Configuration properties relevant to the network for the blockchain framework that the network uses.
      </p>")
type networkFrameworkConfiguration = {
  @ocaml.doc("<p>
         Hyperledger Fabric configuration properties for a Managed Blockchain network that uses Hyperledger Fabric.
      </p>")
  @as("Fabric")
  fabric: option<networkFabricConfiguration>,
}
@ocaml.doc(
  "<p>Attributes relevant to the network for the blockchain framework that the network uses.</p>"
)
type networkFrameworkAttributes = {
  @ocaml.doc(
    "<p>Attributes of an Ethereum network for Managed Blockchain resources participating in an Ethereum network. </p>"
  )
  @as("Ethereum")
  ethereum: option<networkEthereumAttributes>,
  @ocaml.doc(
    "<p>Attributes of Hyperledger Fabric for a Managed Blockchain network that uses Hyperledger Fabric.</p>"
  )
  @as("Fabric")
  fabric: option<networkFabricAttributes>,
}
type memberSummaryList = array<memberSummary>
@ocaml.doc(
  "<p>Configuration properties relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
)
type memberFrameworkConfiguration = {
  @ocaml.doc(
    "<p>Attributes of Hyperledger Fabric for a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
  )
  @as("Fabric")
  fabric: option<memberFabricConfiguration>,
}
@ocaml.doc(
  "<p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
)
type memberFrameworkAttributes = {
  @ocaml.doc(
    "<p>Attributes of Hyperledger Fabric relevant to a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
  )
  @as("Fabric")
  fabric: option<memberFabricAttributes>,
}
@ocaml.doc("<p>A collection of log configurations.</p>")
type logConfigurations = {
  @ocaml.doc("<p>Parameters for publishing logs to Amazon CloudWatch Logs.</p>") @as("Cloudwatch")
  cloudwatch: option<logConfiguration>,
}
type inviteActionList = array<inviteAction>
@ocaml.doc("<p>An invitation to an AWS account to create a member and join the network.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type invitation = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the invitation. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @as("NetworkSummary") networkSummary: option<networkSummary>,
  @ocaml.doc("<p>The status of the invitation:</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code> - The invitee has not created a member to join the network, and the invitation has not yet expired.</p>
            </li>
            <li>
               <p>
                  <code>ACCEPTING</code> - The invitee has begun creating a member, and creation has not yet completed.</p>
            </li>
            <li>
               <p>
                  <code>ACCEPTED</code> - The invitee created a member and joined the network using the <code>InvitationID</code>.</p>
            </li>
            <li>
               <p>
                  <code>REJECTED</code> - The invitee rejected the invitation.</p>
            </li>
            <li>
               <p>
                  <code>EXPIRED</code> - The invitee neither created a member nor rejected the invitation before the <code>ExpirationDate</code>.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<invitationStatus>,
  @ocaml.doc(
    "<p>The date and time that the invitation expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, the invitee can no longer create a member and join the network using this <code>InvitationId</code>.</p>"
  )
  @as("ExpirationDate")
  expirationDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the invitation was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The unique identifier for the invitation.</p>") @as("InvitationId")
  invitationId: option<resourceIdString>,
}
@ocaml.doc("<p>
         The actions to carry out if a proposal is <code>APPROVED</code>.
      </p>
         <p>Applies only to Hyperledger Fabric.</p>")
type proposalActions = {
  @ocaml.doc("<p>
         The actions to perform for an <code>APPROVED</code> proposal to remove a member from the network, which deletes the member and all associated member resources from the network. 
      </p>")
  @as("Removals")
  removals: option<removeActionList>,
  @ocaml.doc("<p>
         The actions to perform for an <code>APPROVED</code> proposal to invite an AWS account to create a member and join the network. 
      </p>")
  @as("Invitations")
  invitations: option<inviteActionList>,
}
@ocaml.doc(
  "<p>Configuration properties for logging events associated with a peer node owned by a member in a Managed Blockchain network.</p>"
)
type nodeFabricLogPublishingConfiguration = {
  @ocaml.doc(
    "<p>Configuration properties for a peer node log. Peer node logs contain messages generated when your client submits transaction proposals to peer nodes, requests to join channels, enrolls an admin peer, and lists the chaincode instances on a peer node. </p>"
  )
  @as("PeerLogs")
  peerLogs: option<logConfigurations>,
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with chaincode execution on a peer node. Chaincode logs contain the results of instantiating, invoking, and querying the chaincode. A peer can run multiple instances of chaincode. When enabled, a log stream is created for all chaincodes, with an individual log stream for each chaincode.</p>"
  )
  @as("ChaincodeLogs")
  chaincodeLogs: option<logConfigurations>,
}
@ocaml.doc("<p>Network configuration properties.</p>")
type network = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the network. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>Tags assigned to the network. Each tag consists of a key and optional value.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
  @as("Tags")
  tags: option<outputTagMap>,
  @ocaml.doc("<p>The date and time that the network was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The current status of the network.</p>") @as("Status")
  status: option<networkStatus>,
  @ocaml.doc("<p>The voting rules for the network to decide if a proposal is accepted.</p>")
  @as("VotingPolicy")
  votingPolicy: option<votingPolicy>,
  @ocaml.doc(
    "<p>The VPC endpoint service name of the VPC endpoint service of the network. Members use the VPC endpoint service name to create a VPC endpoint to access network resources.</p>"
  )
  @as("VpcEndpointServiceName")
  vpcEndpointServiceName: option<string_>,
  @ocaml.doc("<p>Attributes of the blockchain framework that the network uses.</p>")
  @as("FrameworkAttributes")
  frameworkAttributes: option<networkFrameworkAttributes>,
  @ocaml.doc("<p>The version of the blockchain framework that the network uses.</p>")
  @as("FrameworkVersion")
  frameworkVersion: option<frameworkVersionString>,
  @ocaml.doc("<p>The blockchain framework that the network uses.</p>") @as("Framework")
  framework: option<framework>,
  @ocaml.doc("<p>Attributes of the blockchain framework for the network.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the network.</p>") @as("Name") name: option<nameString>,
  @ocaml.doc("<p>The unique identifier of the network.</p>") @as("Id") id: option<resourceIdString>,
}
@ocaml.doc(
  "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
)
type memberFabricLogPublishingConfiguration = {
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with a member's Certificate Authority (CA). CA logs help you determine when a member in your account joins the network, or when new peers register with a member CA.</p>"
  )
  @as("CaLogs")
  caLogs: option<logConfigurations>,
}
type invitationList = array<invitation>
@ocaml.doc("<p>Properties of a proposal on a Managed Blockchain network.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type proposal = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the proposal. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>Tags assigned to the proposal. Each tag consists of a key and optional value.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
  @as("Tags")
  tags: option<outputTagMap>,
  @ocaml.doc("<p>
         The number of votes remaining to be cast on the proposal by members. In other words, the number of members minus the sum of <code>YES</code> votes and <code>NO</code> votes.
      </p>")
  @as("OutstandingVoteCount")
  outstandingVoteCount: option<voteCount>,
  @ocaml.doc("<p>
         The current total of <code>NO</code> votes cast on the proposal by members.
      </p>")
  @as("NoVoteCount")
  noVoteCount: option<voteCount>,
  @ocaml.doc("<p>
         The current total of <code>YES</code> votes cast on the proposal by members.
      </p>")
  @as("YesVoteCount")
  yesVoteCount: option<voteCount>,
  @ocaml.doc("<p>
         The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, if members have not cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> are not carried out.
      </p>")
  @as("ExpirationDate")
  expirationDate: option<timestamp_>,
  @ocaml.doc("<p>
         The date and time that the proposal was created.
      </p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the proposal. Values are as follows:</p>
         <ul>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p>
            </li>
            <li>
               <p>
                  <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p>
            </li>
            <li>
               <p>
                  <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> are not carried out.</p>
            </li>
            <li>
               <p>
                  <code>EXPIRED</code> - Members did not cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> are not carried out.</p>
            </li>
            <li>
               <p>
                  <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved could not be completed because of an error. The <code>ACTION_FAILED</code> status occurs even if only one ProposalAction fails and other actions are successful.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<proposalStatus>,
  @ocaml.doc("<p>The name of the member that created the proposal.</p>") @as("ProposedByMemberName")
  proposedByMemberName: option<networkMemberNameString>,
  @ocaml.doc("<p>The unique identifier of the member that created the proposal.</p>")
  @as("ProposedByMemberId")
  proposedByMemberId: option<resourceIdString>,
  @ocaml.doc(
    "<p>The actions to perform on the network if the proposal is <code>APPROVED</code>.</p>"
  )
  @as("Actions")
  actions: option<proposalActions>,
  @ocaml.doc("<p>The description of the proposal.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The unique identifier of the network for which the proposal is made.</p>")
  @as("NetworkId")
  networkId: option<resourceIdString>,
  @ocaml.doc("<p>The unique identifier of the proposal.</p>") @as("ProposalId")
  proposalId: option<resourceIdString>,
}
@ocaml.doc(
  "<p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>"
)
type nodeLogPublishingConfiguration = {
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with a node that is owned by a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
  )
  @as("Fabric")
  fabric: option<nodeFabricLogPublishingConfiguration>,
}
@ocaml.doc(
  "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>"
)
type memberLogPublishingConfiguration = {
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
  )
  @as("Fabric")
  fabric: option<memberFabricLogPublishingConfiguration>,
}
@ocaml.doc("<p>Configuration properties of a node.</p>")
type nodeConfiguration = {
  @ocaml.doc("<p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>. When using an Amazon Managed Blockchain network with Hyperledger Fabric version 1.4 or later, the default is <code>CouchDB</code>.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
  @as("StateDB")
  stateDB: option<stateDBType>,
  @ocaml.doc("<p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.      
      </p>")
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
  @ocaml.doc("<p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>")
  @as("AvailabilityZone")
  availabilityZone: option<availabilityZoneString>,
  @ocaml.doc("<p>The Amazon Managed Blockchain instance type for the node.</p>") @as("InstanceType")
  instanceType: instanceTypeString,
}
@ocaml.doc("<p>Configuration properties of a node.</p>")
type node = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer managed key in AWS Key Management Service (AWS KMS) that the node uses for encryption at rest. If the value of this parameter is <code>\"AWS Owned KMS Key\"</code>, the node uses an AWS owned KMS key for encryption. The node inherits this parameter from the member that it belongs to.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the node. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc("<p>Tags assigned to the node. Each tag consists of a key and optional value.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
  @as("Tags")
  tags: option<outputTagMap>,
  @ocaml.doc("<p>The date and time that the node was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of the node.</p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code> - The AWS account is in the process of creating a node.</p>
            </li>
            <li>
               <p>
                  <code>AVAILABLE</code> - The node has been created and can participate in the network.</p>
            </li>
            <li>
               <p>
                  <code>UNHEALTHY</code> - The node is impaired and might not function as expected. Amazon Managed Blockchain automatically finds nodes in this state and tries to recover them. If a node is recoverable, it returns to <code>AVAILABLE</code>. Otherwise, it moves to <code>FAILED</code> status.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> - The AWS account attempted to create a node and creation failed.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The node is in the process of being updated.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - The node is in the process of being deleted.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The node can no longer participate on the network.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The node is no longer functional, cannot be recovered, and must be deleted.</p>
            </li>
            <li>
               <p>
                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The node is impaired and might not function as expected because it cannot access the specified customer managed key in AWS KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
               <p>The effect of disabling or deleting a key, or revoking a grant is not immediate. The node resource might take some time to find that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<nodeStatus>,
  @ocaml.doc("<p>The state database that the node uses. Values are <code>LevelDB</code> or <code>CouchDB</code>.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
  @as("StateDB")
  stateDB: option<stateDBType>,
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with a peer node on a Hyperledger Fabric network on Managed Blockchain.</p>"
  )
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
  @ocaml.doc("<p>Attributes of the blockchain framework being used.</p>") @as("FrameworkAttributes")
  frameworkAttributes: option<nodeFrameworkAttributes>,
  @ocaml.doc("<p>The Availability Zone in which the node exists. Required for Ethereum nodes. </p>")
  @as("AvailabilityZone")
  availabilityZone: option<availabilityZoneString>,
  @ocaml.doc("<p>The instance type of the node.</p>") @as("InstanceType")
  instanceType: option<instanceTypeString>,
  @ocaml.doc("<p>The unique identifier of the node.</p>") @as("Id") id: option<resourceIdString>,
  @ocaml.doc("<p>The unique identifier of the member to which the node belongs.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
  @as("MemberId")
  memberId: option<resourceIdString>,
  @ocaml.doc("<p>The unique identifier of the network that the node is on.</p>") @as("NetworkId")
  networkId: option<resourceIdString>,
}
@ocaml.doc("<p>Configuration properties of the member.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type memberConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer managed key in AWS Key Management Service (AWS KMS) to use for encryption at rest in the member. This parameter is inherited by any nodes that this member creates.</p>
         <p>Use one of the following options to specify this parameter:</p>
         <ul>
            <li>
               <p>
                  <b>Undefined or empty string</b> - The member uses an AWS owned KMS key for encryption by default.</p>
            </li>
            <li>
               <p>
                  <b>A valid symmetric customer managed KMS key</b> - The member uses the specified key for encryption.</p>
               <p>Amazon Managed Blockchain doesn't support asymmetric keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
               <p>The following is an example of a KMS key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>")
  @as("KmsKeyArn")
  kmsKeyArn: option<arnString>,
  @ocaml.doc("<p>Tags assigned to the member. Tags consist of a key and optional value. For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
         <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>")
  @as("Tags")
  tags: option<inputTagMap>,
  @ocaml.doc(
    "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>"
  )
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<memberLogPublishingConfiguration>,
  @ocaml.doc("<p>Configuration properties of the blockchain framework relevant to the member.</p>")
  @as("FrameworkConfiguration")
  frameworkConfiguration: memberFrameworkConfiguration,
  @ocaml.doc("<p>An optional description of the member.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the member.</p>") @as("Name") name: networkMemberNameString,
}
@ocaml.doc("<p>Member configuration properties.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
type member = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the customer managed key in AWS Key Management Service (AWS KMS) that the member uses for encryption at rest. If the value of this parameter is <code>\"AWS Owned KMS Key\"</code>, the member uses an AWS owned KMS key for encryption. This parameter is inherited by the nodes that this member owns.</p>"
  )
  @as("KmsKeyArn")
  kmsKeyArn: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the member. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
  )
  @as("Arn")
  arn: option<arnString>,
  @ocaml.doc(
    "<p>Tags assigned to the member. Tags consist of a key and optional value. For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>"
  )
  @as("Tags")
  tags: option<outputTagMap>,
  @ocaml.doc("<p>The date and time that the member was created.</p>") @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The status of a member.</p>
         <ul>
            <li>
               <p>
                  <code>CREATING</code> - The AWS account is in the process of creating a member.</p>
            </li>
            <li>
               <p>
                  <code>AVAILABLE</code> - The member has been created and can participate in the network.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> - The AWS account attempted to create a member and creation failed.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The member is in the process of being updated.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> 
                  <code>PROPOSAL</code> to remove the member.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> 
                  <code>PROPOSAL</code> to remove the member.</p>
            </li>
            <li>
               <p>
                  <code>INACCESSIBLE_ENCRYPTION_KEY</code> - The member is impaired and might not function as expected because it cannot access the specified customer managed key in AWS KMS for encryption at rest. Either the KMS key was disabled or deleted, or the grants on the key were revoked.</p>
               <p>The effect of disabling or deleting a key, or revoking a grant is not immediate. The member resource might take some time to find that the key is inaccessible. When a resource is in this state, we recommend deleting and recreating the resource.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<memberStatus>,
  @ocaml.doc("<p>Configuration properties for logging events associated with a member.</p>")
  @as("LogPublishingConfiguration")
  logPublishingConfiguration: option<memberLogPublishingConfiguration>,
  @ocaml.doc(
    "<p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
  )
  @as("FrameworkAttributes")
  frameworkAttributes: option<memberFrameworkAttributes>,
  @ocaml.doc("<p>An optional description for the member.</p>") @as("Description")
  description: option<descriptionString>,
  @ocaml.doc("<p>The name of the member.</p>") @as("Name") name: option<networkMemberNameString>,
  @ocaml.doc("<p>The unique identifier of the member.</p>") @as("Id") id: option<resourceIdString>,
  @ocaml.doc("<p>The unique identifier of the network to which the member belongs.</p>")
  @as("NetworkId")
  networkId: option<resourceIdString>,
}
@ocaml.doc("<p></p>
         <p>Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open-source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority.</p>
        <p>Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source frameworks. Because of fundamental differences between the frameworks, some API actions or data types may only apply in the context of one framework and not the other. For example, actions related to Hyperledger Fabric network members such as <code>CreateMember</code> and <code>DeleteMember</code> do not apply to Ethereum.</p>
        <p>The description for each action indicates the framework or frameworks to which it applies. Data types and properties that apply only in the context of a particular framework are similarly indicated.</p>")
module VoteOnProposal = {
  type t
  type request = {
    @ocaml.doc("<p>
         The value of the vote.
      </p>")
    @as("Vote")
    vote: voteValue,
    @ocaml.doc("<p>The unique identifier of the member casting the vote.
      </p>")
    @as("VoterMemberId")
    voterMemberId: resourceIdString,
    @ocaml.doc("<p>
         The unique identifier of the proposal.
      </p>")
    @as("ProposalId")
    proposalId: resourceIdString,
    @ocaml.doc("<p>
         The unique identifier of the network.
      </p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "VoteOnProposalCommand"
  let make = (~vote, ~voterMemberId, ~proposalId, ~networkId, ()) =>
    new({vote, voterMemberId, proposalId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RejectInvitation = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the invitation to reject.</p>") @as("InvitationId")
    invitationId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "RejectInvitationCommand"
  let make = (~invitationId, ()) => new({invitationId: invitationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteNode = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the node.</p>") @as("NodeId") nodeId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the member that owns this node.</p>
         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier of the network that the node is on.</p>
         <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
         <ul>
            <li>
               <p>
                  <code>n-ethereum-mainnet</code>
               </p>
            </li>
            <li>
               <p>
                  <code>n-ethereum-rinkeby</code>
               </p>
            </li>
            <li>
               <p>
                  <code>n-ethereum-ropsten</code>
               </p>
            </li>
         </ul>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "DeleteNodeCommand"
  let make = (~nodeId, ~networkId, ~memberId=?, ()) => new({nodeId, memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteMember = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the member to remove.</p>") @as("MemberId")
    memberId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the network from which the member is removed.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "DeleteMemberCommand"
  let make = (~memberId, ~networkId, ()) => new({memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    @as("ResourceArn")
    resourceArn: arnString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to assign to the specified resource. Tag values can be empty, for example, <code>\"MyTagKey\" : \"\"</code>. You can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>"
    )
    @as("Tags")
    tags: inputTagMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    @as("ResourceArn")
    resourceArn: arnString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>"
    )
    @as("ResourceArn")
    resourceArn: arnString,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the resource.</p>") @as("Tags") tags: option<outputTagMap>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProposals = {
  type t
  type request = {
    @ocaml.doc("<p>
         The pagination token that indicates the next set of results to retrieve.
      </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
         The maximum number of proposals to return.
      </p>")
    @as("MaxResults")
    maxResults: option<proposalListMaxResults>,
    @ocaml.doc("<p>
         The unique identifier of the network.
      </p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The summary of each proposal made on the network.</p>") @as("Proposals")
    proposals: option<proposalSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListProposalsCommand"
  let make = (~networkId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListProposalVotes = {
  type t
  type request = {
    @ocaml.doc("<p>
         The pagination token that indicates the next set of results to retrieve.
      </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
         The maximum number of votes to return.
      </p>")
    @as("MaxResults")
    maxResults: option<proposalListMaxResults>,
    @ocaml.doc("<p>
         The unique identifier of the proposal.
      </p>")
    @as("ProposalId")
    proposalId: resourceIdString,
    @ocaml.doc("<p>
         The unique identifier of the network.
      </p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>
         The pagination token that indicates the next set of results to retrieve.
      </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>
         The list of votes.
      </p>")
    @as("ProposalVotes")
    proposalVotes: option<proposalVoteList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListProposalVotesCommand"
  let make = (~proposalId, ~networkId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, proposalId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListNodes = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of nodes to list.</p>") @as("MaxResults")
    maxResults: option<nodeListMaxResults>,
    @ocaml.doc(
      "<p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>"
    )
    @as("Status")
    status: option<nodeStatus>,
    @ocaml.doc("<p>The unique identifier of the member who owns the nodes to list.</p>
         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier of the network for which to list nodes.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An array of <code>NodeSummary</code> objects that contain configuration properties for each node.</p>"
    )
    @as("Nodes")
    nodes: option<nodeSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "ListNodesCommand"
  let make = (~networkId, ~nextToken=?, ~maxResults=?, ~status=?, ~memberId=?, ()) =>
    new({nextToken, maxResults, status, memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListNetworks = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of networks to list.</p>") @as("MaxResults")
    maxResults: option<networkListMaxResults>,
    @ocaml.doc("<p>An optional status specifier. If provided, only networks currently in this status are listed.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
    @as("Status")
    status: option<networkStatus>,
    @ocaml.doc(
      "<p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>"
    )
    @as("Framework")
    framework: option<framework>,
    @ocaml.doc("<p>The name of the network.</p>") @as("Name") name: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An array of <code>NetworkSummary</code> objects that contain configuration properties for each network.</p>"
    )
    @as("Networks")
    networks: option<networkSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListNetworksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~status=?, ~framework=?, ~name=?, ()) =>
    new({nextToken, maxResults, status, framework, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of members to return in the request.</p>") @as("MaxResults")
    maxResults: option<memberListMaxResults>,
    @ocaml.doc("<p>An optional Boolean value. If provided, the request is limited either to
         members that the current AWS account owns (<code>true</code>) or that other AWS accounts
         own (<code>false</code>). If omitted, all members are listed.</p>")
    @as("IsOwned")
    isOwned: option<isOwned>,
    @ocaml.doc(
      "<p>An optional status specifier. If provided, only members currently in this status are listed.</p>"
    )
    @as("Status")
    status: option<memberStatus>,
    @ocaml.doc("<p>The optional name of the member to list.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>The unique identifier of the network for which to list members.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An array of <code>MemberSummary</code> objects. Each object contains details about a network member.</p>"
    )
    @as("Members")
    members: option<memberSummaryList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListMembersCommand"
  let make = (~networkId, ~nextToken=?, ~maxResults=?, ~isOwned=?, ~status=?, ~name=?, ()) =>
    new({nextToken, maxResults, isOwned, status, name, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of invitations to return.</p>") @as("MaxResults")
    maxResults: option<proposalListMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that indicates the next set of results to retrieve.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The invitations for the network.</p>") @as("Invitations")
    invitations: option<invitationList>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "ListInvitationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the network to get information about.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>An object containing network configuration parameters.</p>") @as("Network")
    network: option<network>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetNetworkCommand"
  let make = (~networkId, ()) => new({networkId: networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateProposal = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to assign to the proposal. Each tag consists of a key and optional value.</p>
         <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource. If the proposal is for a network invitation, the invitation inherits the tags added to the proposal.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
    @as("Tags")
    tags: option<inputTagMap>,
    @ocaml.doc(
      "<p>A description for the proposal that is visible to voting members, for example, \"Proposal to add Example Corp. as member.\"</p>"
    )
    @as("Description")
    description: option<descriptionString>,
    @ocaml.doc(
      "<p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>"
    )
    @as("Actions")
    actions: proposalActions,
    @ocaml.doc(
      "<p>The unique identifier of the member that is creating the proposal. This identifier is especially useful for identifying the member making the proposal when multiple members exist in a single AWS account.</p>"
    )
    @as("MemberId")
    memberId: resourceIdString,
    @ocaml.doc("<p>
         The unique identifier of the network for which the proposal is made.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestTokenString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the proposal.</p>") @as("ProposalId")
    proposalId: option<resourceIdString>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateProposalCommand"
  let make = (~actions, ~memberId, ~networkId, ~clientRequestToken, ~tags=?, ~description=?, ()) =>
    new({tags, description, actions, memberId, networkId, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateNode = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>")
    @as("LogPublishingConfiguration")
    logPublishingConfiguration: option<nodeLogPublishingConfiguration>,
    @ocaml.doc("<p>The unique identifier of the node.</p>") @as("NodeId") nodeId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the member that owns the node.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier of the network that the node is on.</p>") @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "UpdateNodeCommand"
  let make = (~nodeId, ~networkId, ~logPublishingConfiguration=?, ~memberId=?, ()) =>
    new({logPublishingConfiguration, nodeId, memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateMember = {
  type t
  type request = {
    @ocaml.doc("<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>")
    @as("LogPublishingConfiguration")
    logPublishingConfiguration: option<memberLogPublishingConfiguration>,
    @ocaml.doc("<p>The unique identifier of the member.</p>") @as("MemberId")
    memberId: resourceIdString,
    @ocaml.doc(
      "<p>The unique identifier of the Managed Blockchain network to which the member belongs.</p>"
    )
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {.}
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "UpdateMemberCommand"
  let make = (~memberId, ~networkId, ~logPublishingConfiguration=?, ()) =>
    new({logPublishingConfiguration, memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetProposal = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the proposal.</p>") @as("ProposalId")
    proposalId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the network for which the proposal is made.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>Information about a proposal.</p>") @as("Proposal") proposal: option<proposal>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "GetProposalCommand"
  let make = (~proposalId, ~networkId, ()) => new({proposalId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNode = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the node.</p>") @as("NodeId") nodeId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the member that owns the node.</p>
         <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier of the network that the node is on.</p>") @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>Properties of the node configuration.</p>") @as("Node") node: option<node>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetNodeCommand"
  let make = (~nodeId, ~networkId, ~memberId=?, ()) => new({nodeId, memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMember = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the member.</p>") @as("MemberId")
    memberId: resourceIdString,
    @ocaml.doc("<p>The unique identifier of the network to which the member belongs.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
  }
  type response = {
    @ocaml.doc("<p>The properties of a member.</p>") @as("Member") member: option<member>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "GetMemberCommand"
  let make = (~memberId, ~networkId, ()) => new({memberId, networkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateNode = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to assign to the node. Each tag consists of a key and optional value.</p>
         <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
    @as("Tags")
    tags: option<inputTagMap>,
    @ocaml.doc("<p>The properties of a node configuration.</p>") @as("NodeConfiguration")
    nodeConfiguration: nodeConfiguration,
    @ocaml.doc("<p>The unique identifier of the member that owns this node.</p>
         <p>Applies only to Hyperledger Fabric.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier of the network for the node.</p>
         <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
         <ul>
            <li>
               <p>
                  <code>n-ethereum-mainnet</code>
               </p>
            </li>
            <li>
               <p>
                  <code>n-ethereum-rinkeby</code>
               </p>
            </li>
            <li>
               <p>
                  <code>n-ethereum-ropsten</code>
               </p>
            </li>
         </ul>")
    @as("NetworkId")
    networkId: resourceIdString,
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestTokenString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the node.</p>") @as("NodeId")
    nodeId: option<resourceIdString>,
  }
  @module("@aws-sdk/client-managedblockchain") @new external new: request => t = "CreateNodeCommand"
  let make = (~nodeConfiguration, ~networkId, ~clientRequestToken, ~tags=?, ~memberId=?, ()) =>
    new({tags, nodeConfiguration, memberId, networkId, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to assign to the network. Each tag consists of a key and optional value.</p>
         <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href=\"https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html\">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>")
    @as("Tags")
    tags: option<inputTagMap>,
    @ocaml.doc("<p>Configuration properties for the first member within the network.</p>")
    @as("MemberConfiguration")
    memberConfiguration: memberConfiguration,
    @ocaml.doc("<p>
         The voting rules used by the network to determine if a proposal is approved.
      </p>")
    @as("VotingPolicy")
    votingPolicy: votingPolicy,
    @ocaml.doc("<p>
         Configuration properties of the blockchain framework relevant to the network configuration.
      </p>")
    @as("FrameworkConfiguration")
    frameworkConfiguration: option<networkFrameworkConfiguration>,
    @ocaml.doc("<p>The version of the blockchain framework that the network uses.</p>")
    @as("FrameworkVersion")
    frameworkVersion: frameworkVersionString,
    @ocaml.doc("<p>The blockchain framework that the network uses.</p>") @as("Framework")
    framework: framework,
    @ocaml.doc("<p>An optional description for the network.</p>") @as("Description")
    description: option<descriptionString>,
    @ocaml.doc("<p>The name of the network.</p>") @as("Name") name: nameString,
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestTokenString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the first member within the network.</p>")
    @as("MemberId")
    memberId: option<resourceIdString>,
    @ocaml.doc("<p>The unique identifier for the network.</p>") @as("NetworkId")
    networkId: option<resourceIdString>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateNetworkCommand"
  let make = (
    ~memberConfiguration,
    ~votingPolicy,
    ~frameworkVersion,
    ~framework,
    ~name,
    ~clientRequestToken,
    ~tags=?,
    ~frameworkConfiguration=?,
    ~description=?,
    (),
  ) =>
    new({
      tags,
      memberConfiguration,
      votingPolicy,
      frameworkConfiguration,
      frameworkVersion,
      framework,
      description,
      name,
      clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMember = {
  type t
  type request = {
    @ocaml.doc("<p>Member configuration parameters.</p>") @as("MemberConfiguration")
    memberConfiguration: memberConfiguration,
    @ocaml.doc("<p>The unique identifier of the network in which the member is created.</p>")
    @as("NetworkId")
    networkId: resourceIdString,
    @ocaml.doc(
      "<p>The unique identifier of the invitation that is sent to the member to join the network.</p>"
    )
    @as("InvitationId")
    invitationId: resourceIdString,
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: clientRequestTokenString,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the member.</p>") @as("MemberId")
    memberId: option<resourceIdString>,
  }
  @module("@aws-sdk/client-managedblockchain") @new
  external new: request => t = "CreateMemberCommand"
  let make = (~memberConfiguration, ~networkId, ~invitationId, ~clientRequestToken, ()) =>
    new({memberConfiguration, networkId, invitationId, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
