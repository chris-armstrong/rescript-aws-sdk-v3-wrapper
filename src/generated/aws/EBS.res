type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type volumeSize = float
type validationExceptionReason = [@as("INVALID_VOLUME_SIZE") #INVALIDVOLUMESIZE | @as("INVALID_PARAMETER_VALUE") #INVALIDPARAMETERVALUE | @as("INVALID_DEPENDENCY_REQUEST") #INVALIDDEPENDENCYREQUEST | @as("INVALID_TAG") #INVALIDTAG | @as("INVALID_CONTENT_ENCODING") #INVALIDCONTENTENCODING | @as("INVALID_BLOCK") #INVALIDBLOCK | @as("UNRELATED_SNAPSHOTS") #UNRELATEDSNAPSHOTS | @as("INVALID_SNAPSHOT_ID") #INVALIDSNAPSHOTID | @as("INVALID_BLOCK_TOKEN") #INVALIDBLOCKTOKEN | @as("INVALID_PAGE_TOKEN") #INVALIDPAGETOKEN | @as("INVALID_CUSTOMER_KEY") #INVALIDCUSTOMERKEY]
type timeout = int
type timeStamp = Js.Date.t;
type tagValue = string
type tagKey = string
type status = [@as("error") #Error | @as("pending") #Pending | @as("completed") #Completed]
type snapshotId = string
type serviceQuotaExceededExceptionReason = [@as("DEPENDENCY_SERVICE_QUOTA_EXCEEDED") #DEPENDENCYSERVICEQUOTAEXCEEDED]
type resourceNotFoundExceptionReason = [@as("DEPENDENCY_RESOURCE_NOT_FOUND") #DEPENDENCYRESOURCENOTFOUND | @as("SNAPSHOT_NOT_FOUND") #SNAPSHOTNOTFOUND]
type requestThrottledExceptionReason = [@as("DEPENDENCY_REQUEST_THROTTLED") #DEPENDENCYREQUESTTHROTTLED | @as("ACCOUNT_THROTTLED") #ACCOUNTTHROTTLED]
type progress = int
type pageToken = string
type ownerId = string
type maxResults = int
type kmsKeyArn = string
type idempotencyToken = string
type errorMessage = string
type description = string
type dataLength = int
type checksumAlgorithm = [@as("SHA256") #SHA256]
type checksumAggregationMethod = [@as("LINEAR") #LINEAR]
type checksum = string
type changedBlocksCount = int
type boolean_ = bool
type blockToken = string
type blockSize = int
type blockIndex = int
type blockData = NodeJs.Buffer.t
type accessDeniedExceptionReason = [@as("DEPENDENCY_ACCESS_DENIED") #DEPENDENCYACCESSDENIED | @as("UNAUTHORIZED_ACCOUNT") #UNAUTHORIZEDACCOUNT]
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type changedBlock = {
@as("SecondBlockToken") secondBlockToken: option<blockToken>,
@as("FirstBlockToken") firstBlockToken: option<blockToken>,
@as("BlockIndex") blockIndex: option<blockIndex>
}
type block = {
@as("BlockToken") blockToken: option<blockToken>,
@as("BlockIndex") blockIndex: option<blockIndex>
}
type tags = array<tag>
type changedBlocks = array<changedBlock>
type blocks = array<block>
type awsServiceClient;
@module("@aws-sdk/client-ebs") @new external createClient: unit => awsServiceClient = "EBSClient";
module PutSnapshotBlock = {
  type t;
  type request = {
@as("ChecksumAlgorithm") checksumAlgorithm: checksumAlgorithm,
@as("Checksum") checksum: checksum,
@as("Progress") progress: option<progress>,
@as("DataLength") dataLength: dataLength,
@as("BlockData") blockData: blockData,
@as("BlockIndex") blockIndex: blockIndex,
@as("SnapshotId") snapshotId: snapshotId
}
  type response = {
@as("ChecksumAlgorithm") checksumAlgorithm: option<checksumAlgorithm>,
@as("Checksum") checksum: option<checksum>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "PutSnapshotBlockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSnapshotBlock = {
  type t;
  type request = {
@as("BlockToken") blockToken: blockToken,
@as("BlockIndex") blockIndex: blockIndex,
@as("SnapshotId") snapshotId: snapshotId
}
  type response = {
@as("ChecksumAlgorithm") checksumAlgorithm: option<checksumAlgorithm>,
@as("Checksum") checksum: option<checksum>,
@as("BlockData") blockData: option<blockData>,
@as("DataLength") dataLength: option<dataLength>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "GetSnapshotBlockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CompleteSnapshot = {
  type t;
  type request = {
@as("ChecksumAggregationMethod") checksumAggregationMethod: option<checksumAggregationMethod>,
@as("ChecksumAlgorithm") checksumAlgorithm: option<checksumAlgorithm>,
@as("Checksum") checksum: option<checksum>,
@as("ChangedBlocksCount") changedBlocksCount: changedBlocksCount,
@as("SnapshotId") snapshotId: snapshotId
}
  type response = {
@as("Status") status: option<status>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "CompleteSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartSnapshot = {
  type t;
  type request = {
@as("Timeout") timeout: option<timeout>,
@as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
@as("Encrypted") encrypted: option<boolean_>,
@as("ClientToken") clientToken: option<idempotencyToken>,
@as("Description") description: option<description>,
@as("Tags") tags: option<tags>,
@as("ParentSnapshotId") parentSnapshotId: option<snapshotId>,
@as("VolumeSize") volumeSize: volumeSize
}
  type response = {
@as("KmsKeyArn") kmsKeyArn: option<kmsKeyArn>,
@as("ParentSnapshotId") parentSnapshotId: option<snapshotId>,
@as("Tags") tags: option<tags>,
@as("BlockSize") blockSize: option<blockSize>,
@as("VolumeSize") volumeSize: option<volumeSize>,
@as("StartTime") startTime: option<timeStamp>,
@as("Status") status: option<status>,
@as("OwnerId") ownerId: option<ownerId>,
@as("SnapshotId") snapshotId: option<snapshotId>,
@as("Description") description: option<description>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "StartSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSnapshotBlocks = {
  type t;
  type request = {
@as("StartingBlockIndex") startingBlockIndex: option<blockIndex>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<pageToken>,
@as("SnapshotId") snapshotId: snapshotId
}
  type response = {
@as("NextToken") nextToken: option<pageToken>,
@as("BlockSize") blockSize: option<blockSize>,
@as("VolumeSize") volumeSize: option<volumeSize>,
@as("ExpiryTime") expiryTime: option<timeStamp>,
@as("Blocks") blocks: option<blocks>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "ListSnapshotBlocksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChangedBlocks = {
  type t;
  type request = {
@as("StartingBlockIndex") startingBlockIndex: option<blockIndex>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<pageToken>,
@as("SecondSnapshotId") secondSnapshotId: snapshotId,
@as("FirstSnapshotId") firstSnapshotId: option<snapshotId>
}
  type response = {
@as("NextToken") nextToken: option<pageToken>,
@as("BlockSize") blockSize: option<blockSize>,
@as("VolumeSize") volumeSize: option<volumeSize>,
@as("ExpiryTime") expiryTime: option<timeStamp>,
@as("ChangedBlocks") changedBlocks: option<changedBlocks>
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "ListChangedBlocksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
