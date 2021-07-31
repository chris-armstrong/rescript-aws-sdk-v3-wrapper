type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type volumeSize = float;
type validationExceptionReason = [@as("INVALID_VOLUME_SIZE") #INVALID_VOLUME_SIZE | @as("INVALID_PARAMETER_VALUE") #INVALID_PARAMETER_VALUE | @as("INVALID_DEPENDENCY_REQUEST") #INVALID_DEPENDENCY_REQUEST | @as("INVALID_TAG") #INVALID_TAG | @as("INVALID_CONTENT_ENCODING") #INVALID_CONTENT_ENCODING | @as("INVALID_BLOCK") #INVALID_BLOCK | @as("UNRELATED_SNAPSHOTS") #UNRELATED_SNAPSHOTS | @as("INVALID_SNAPSHOT_ID") #INVALID_SNAPSHOT_ID | @as("INVALID_BLOCK_TOKEN") #INVALID_BLOCK_TOKEN | @as("INVALID_PAGE_TOKEN") #INVALID_PAGE_TOKEN | @as("INVALID_CUSTOMER_KEY") #INVALID_CUSTOMER_KEY]
type timeout = int;
type timeStamp = Js.Date.t;
type tagValue = string
type tagKey = string
type status = [@as("error") #error | @as("pending") #pending | @as("completed") #completed]
type snapshotId = string
type serviceQuotaExceededExceptionReason = [@as("DEPENDENCY_SERVICE_QUOTA_EXCEEDED") #DEPENDENCY_SERVICE_QUOTA_EXCEEDED]
type resourceNotFoundExceptionReason = [@as("DEPENDENCY_RESOURCE_NOT_FOUND") #DEPENDENCY_RESOURCE_NOT_FOUND | @as("SNAPSHOT_NOT_FOUND") #SNAPSHOT_NOT_FOUND]
type requestThrottledExceptionReason = [@as("DEPENDENCY_REQUEST_THROTTLED") #DEPENDENCY_REQUEST_THROTTLED | @as("ACCOUNT_THROTTLED") #ACCOUNT_THROTTLED]
type progress = int;
type pageToken = string
type ownerId = string
type maxResults = int;
type kmsKeyArn = string
type idempotencyToken = string
type errorMessage = string
type description = string
type dataLength = int;
type checksumAlgorithm = [@as("SHA256") #SHA256]
type checksumAggregationMethod = [@as("LINEAR") #LINEAR]
type checksum = string
type changedBlocksCount = int;
type amazonawsBoolean = bool;
type blockToken = string
type blockSize = int;
type blockIndex = int;
type blockData = NodeJs.Buffer.t;
type accessDeniedExceptionReason = [@as("DEPENDENCY_ACCESS_DENIED") #DEPENDENCY_ACCESS_DENIED | @as("UNAUTHORIZED_ACCOUNT") #UNAUTHORIZED_ACCOUNT]
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type changedBlock = {
@as("SecondBlockToken") secondBlockToken: blockToken,
@as("FirstBlockToken") firstBlockToken: blockToken,
@as("BlockIndex") blockIndex: blockIndex
}
type block = {
@as("BlockToken") blockToken: blockToken,
@as("BlockIndex") blockIndex: blockIndex
}
type tags = array<tag>
type changedBlocks = array<changedBlock>
type blocks = array<block>
type clientType;
@module("@aws-sdk/client-ebs") @new external createClient: unit => clientType = "EBSClient";
module PutSnapshotBlock = {
  type t;
  type request = {
@as("ChecksumAlgorithm") checksumAlgorithm: option<checksumAlgorithm>,
@as("Checksum") checksum: option<checksum>,
@as("Progress") progress: progress,
@as("DataLength") dataLength: option<dataLength>,
@as("BlockData") blockData: option<blockData>,
@as("BlockIndex") blockIndex: option<blockIndex>,
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = {
@as("ChecksumAlgorithm") checksumAlgorithm: checksumAlgorithm,
@as("Checksum") checksum: checksum
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "PutSnapshotBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSnapshotBlock = {
  type t;
  type request = {
@as("BlockToken") blockToken: option<blockToken>,
@as("BlockIndex") blockIndex: option<blockIndex>,
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = {
@as("ChecksumAlgorithm") checksumAlgorithm: checksumAlgorithm,
@as("Checksum") checksum: checksum,
@as("BlockData") blockData: blockData,
@as("DataLength") dataLength: dataLength
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "GetSnapshotBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CompleteSnapshot = {
  type t;
  type request = {
@as("ChecksumAggregationMethod") checksumAggregationMethod: checksumAggregationMethod,
@as("ChecksumAlgorithm") checksumAlgorithm: checksumAlgorithm,
@as("Checksum") checksum: checksum,
@as("ChangedBlocksCount") changedBlocksCount: option<changedBlocksCount>,
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = {
@as("Status") status: status
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "CompleteSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSnapshot = {
  type t;
  type request = {
@as("Timeout") timeout: timeout,
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("ClientToken") clientToken: idempotencyToken,
@as("Description") description: description,
@as("Tags") tags: tags,
@as("ParentSnapshotId") parentSnapshotId: snapshotId,
@as("VolumeSize") volumeSize: option<volumeSize>
}
  type response = {
@as("KmsKeyArn") kmsKeyArn: kmsKeyArn,
@as("ParentSnapshotId") parentSnapshotId: snapshotId,
@as("Tags") tags: tags,
@as("BlockSize") blockSize: blockSize,
@as("VolumeSize") volumeSize: volumeSize,
@as("StartTime") startTime: timeStamp,
@as("Status") status: status,
@as("OwnerId") ownerId: ownerId,
@as("SnapshotId") snapshotId: snapshotId,
@as("Description") description: description
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "StartSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSnapshotBlocks = {
  type t;
  type request = {
@as("StartingBlockIndex") startingBlockIndex: blockIndex,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: pageToken,
@as("SnapshotId") snapshotId: option<snapshotId>
}
  type response = {
@as("NextToken") nextToken: pageToken,
@as("BlockSize") blockSize: blockSize,
@as("VolumeSize") volumeSize: volumeSize,
@as("ExpiryTime") expiryTime: timeStamp,
@as("Blocks") blocks: blocks
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "ListSnapshotBlocksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChangedBlocks = {
  type t;
  type request = {
@as("StartingBlockIndex") startingBlockIndex: blockIndex,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: pageToken,
@as("SecondSnapshotId") secondSnapshotId: option<snapshotId>,
@as("FirstSnapshotId") firstSnapshotId: snapshotId
}
  type response = {
@as("NextToken") nextToken: pageToken,
@as("BlockSize") blockSize: blockSize,
@as("VolumeSize") volumeSize: volumeSize,
@as("ExpiryTime") expiryTime: timeStamp,
@as("ChangedBlocks") changedBlocks: changedBlocks
}
  @module("@aws-sdk/client-ebs") @new external new_: (request) => t = "ListChangedBlocksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
