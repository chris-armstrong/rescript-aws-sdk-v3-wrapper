type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ebs") @new external createClient: unit => awsServiceClient = "EBSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type volumeSize = float
type validationExceptionReason = [
  | @as("INVALID_VOLUME_SIZE") #INVALID_VOLUME_SIZE
  | @as("INVALID_PARAMETER_VALUE") #INVALID_PARAMETER_VALUE
  | @as("INVALID_DEPENDENCY_REQUEST") #INVALID_DEPENDENCY_REQUEST
  | @as("INVALID_TAG") #INVALID_TAG
  | @as("INVALID_CONTENT_ENCODING") #INVALID_CONTENT_ENCODING
  | @as("INVALID_BLOCK") #INVALID_BLOCK
  | @as("UNRELATED_SNAPSHOTS") #UNRELATED_SNAPSHOTS
  | @as("INVALID_SNAPSHOT_ID") #INVALID_SNAPSHOT_ID
  | @as("INVALID_BLOCK_TOKEN") #INVALID_BLOCK_TOKEN
  | @as("INVALID_PAGE_TOKEN") #INVALID_PAGE_TOKEN
  | @as("INVALID_CUSTOMER_KEY") #INVALID_CUSTOMER_KEY
]
type timeout = int
type timeStamp = Js.Date.t
type tagValue = string
type tagKey = string
type status = [@as("error") #Error | @as("pending") #Pending | @as("completed") #Completed]
type snapshotId = string
type serviceQuotaExceededExceptionReason = [
  | @as("DEPENDENCY_SERVICE_QUOTA_EXCEEDED") #DEPENDENCY_SERVICE_QUOTA_EXCEEDED
]
type resourceNotFoundExceptionReason = [
  | @as("DEPENDENCY_RESOURCE_NOT_FOUND") #DEPENDENCY_RESOURCE_NOT_FOUND
  | @as("SNAPSHOT_NOT_FOUND") #SNAPSHOT_NOT_FOUND
]
type requestThrottledExceptionReason = [
  | @as("DEPENDENCY_REQUEST_THROTTLED") #DEPENDENCY_REQUEST_THROTTLED
  | @as("ACCOUNT_THROTTLED") #ACCOUNT_THROTTLED
]
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
type accessDeniedExceptionReason = [
  | @as("DEPENDENCY_ACCESS_DENIED") #DEPENDENCY_ACCESS_DENIED
  | @as("UNAUTHORIZED_ACCOUNT") #UNAUTHORIZED_ACCOUNT
]
@ocaml.doc("<p>Describes a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: option<tagKey>,
}
@ocaml.doc("<p>A block of data in an Amazon Elastic Block Store snapshot that is different from another snapshot of
            the same volume/snapshot lineage.</p>")
type changedBlock = {
  @ocaml.doc("<p>The block token for the block index of the <code>SecondSnapshotId</code> specified in
            the <code>ListChangedBlocks</code> operation.</p>")
  @as("SecondBlockToken")
  secondBlockToken: option<blockToken>,
  @ocaml.doc("<p>The block token for the block index of the <code>FirstSnapshotId</code> specified in
            the <code>ListChangedBlocks</code> operation. This value is absent if the first snapshot
            does not have the changed block that is on the second snapshot.</p>")
  @as("FirstBlockToken")
  firstBlockToken: option<blockToken>,
  @ocaml.doc("<p>The block index.</p>") @as("BlockIndex") blockIndex: option<blockIndex>,
}
@ocaml.doc("<p>A block of data in an Amazon Elastic Block Store snapshot.</p>")
type block = {
  @ocaml.doc("<p>The block token for the block index.</p>") @as("BlockToken")
  blockToken: option<blockToken>,
  @ocaml.doc("<p>The block index.</p>") @as("BlockIndex") blockIndex: option<blockIndex>,
}
type tags = array<tag>
type changedBlocks = array<changedBlock>
type blocks = array<block>
@ocaml.doc("<p>You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create EBS snapshots, write data directly to 
    		your snapshots, read data on your snapshots, and identify the differences or changes between 
    		two snapshots. If you’re an independent software vendor (ISV) who offers backup services for 
    		Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on 
    		your EBS volumes through snapshots. This can be done without having to create new volumes 
    		from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences.</p>
    		
    	    <p>You can create incremental snapshots directly from data on-premises into EBS volumes and the 
    		cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can 
    		write your on-premises data to an EBS snapshot during a disaster. Then after recovery, you can 
    		restore it back to AWS or on-premises from the snapshot. You no longer need to build and 
    		maintain complex mechanisms to copy data to and from Amazon EBS.</p>


        <p>This API reference provides detailed information about the actions, data types,
            parameters, and errors of the EBS direct APIs. For more information about the elements that
            make up the EBS direct APIs, and examples of how to use them effectively, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html\">Accessing the Contents of an EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User
                Guide</i>. For more information about the supported AWS Regions, endpoints,
            and service quotas for the EBS direct APIs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/ebs-service.html\">Amazon Elastic Block Store Endpoints and Quotas</a> in
            the <i>AWS General Reference</i>.</p>")
module PutSnapshotBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The algorithm used to generate the checksum. Currently, the only supported algorithm
            is <code>SHA256</code>.</p>")
    @as("ChecksumAlgorithm")
    checksumAlgorithm: checksumAlgorithm,
    @ocaml.doc("<p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
            supported.</p>")
    @as("Checksum")
    checksum: checksum,
    @ocaml.doc("<p>The progress of the write process, as a percentage.</p>") @as("Progress")
    progress: option<progress>,
    @ocaml.doc("<p>The size of the data to write to the block, in bytes. Currently, the only supported
            size is <code>524288</code>.</p>
        <p>Valid values: <code>524288</code>
         </p>")
    @as("DataLength")
    dataLength: dataLength,
    @ocaml.doc("<p>The data to write to the block.</p>
        <p>The block data is not signed as part of the Signature Version 4 signing process. As a
            result, you must generate and provide a Base64-encoded SHA256 checksum for the block
            data using the <b>x-amz-Checksum</b> header. Also, you 
        	must specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b> 
        	header. The checksum that you provide is part of the Signature Version 4 signing process. 
        	It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity 
        	of the data. If the checksums do not correspond, the request fails. For more information, 
        	see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums\">
                Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User
                Guide</i>.</p>")
    @as("BlockData")
    blockData: blockData,
    @ocaml.doc("<p>The block index of the block in which to write the data. A block index is a logical 
    	index in units of <code>512</code> KiB blocks. To identify the block index, divide 
        	the logical offset of the data in the logical volume by the block size (logical offset of 
        	data/<code>524288</code>). The logical offset of the data must be <code>512</code> 
        	KiB aligned.</p>")
    @as("BlockIndex")
    blockIndex: blockIndex,
    @ocaml.doc("<p>The ID of the snapshot.</p>") @as("SnapshotId") snapshotId: snapshotId,
  }
  type response = {
    @ocaml.doc("<p>The algorithm used by Amazon EBS to generate the checksum.</p>")
    @as("ChecksumAlgorithm")
    checksumAlgorithm: option<checksumAlgorithm>,
    @ocaml.doc("<p>The SHA256 checksum generated for the block data by Amazon EBS.</p>")
    @as("Checksum")
    checksum: option<checksum>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "PutSnapshotBlockCommand"
  let make = (
    ~checksumAlgorithm,
    ~checksum,
    ~dataLength,
    ~blockData,
    ~blockIndex,
    ~snapshotId,
    ~progress=?,
    (),
  ) =>
    new({
      checksumAlgorithm: checksumAlgorithm,
      checksum: checksum,
      progress: progress,
      dataLength: dataLength,
      blockData: blockData,
      blockIndex: blockIndex,
      snapshotId: snapshotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSnapshotBlock = {
  type t
  type request = {
    @ocaml.doc("<p>The block token of the block from which to get data.</p>


        <p>Obtain the <code>BlockToken</code> by running the <code>ListChangedBlocks</code> or
                <code>ListSnapshotBlocks</code> operations.</p>")
    @as("BlockToken")
    blockToken: blockToken,
    @ocaml.doc("<p>The block index of the block from which to get data.</p>


        <p>Obtain the <code>BlockIndex</code> by running the <code>ListChangedBlocks</code> or
                <code>ListSnapshotBlocks</code> operations.</p>")
    @as("BlockIndex")
    blockIndex: blockIndex,
    @ocaml.doc("<p>The ID of the snapshot containing the block from which to get data.</p>")
    @as("SnapshotId")
    snapshotId: snapshotId,
  }
  type response = {
    @ocaml.doc("<p>The algorithm used to generate the checksum for the block, such as SHA256.</p>")
    @as("ChecksumAlgorithm")
    checksumAlgorithm: option<checksumAlgorithm>,
    @ocaml.doc("<p>The checksum generated for the block, which is Base64 encoded.</p>")
    @as("Checksum")
    checksum: option<checksum>,
    @ocaml.doc("<p>The data content of the block.</p>") @as("BlockData")
    blockData: option<blockData>,
    @ocaml.doc("<p>The size of the data in the block.</p>") @as("DataLength")
    dataLength: option<dataLength>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "GetSnapshotBlockCommand"
  let make = (~blockToken, ~blockIndex, ~snapshotId, ()) =>
    new({blockToken: blockToken, blockIndex: blockIndex, snapshotId: snapshotId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CompleteSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The aggregation method used to generate the checksum. Currently, the only supported
            aggregation method is <code>LINEAR</code>.</p>")
    @as("ChecksumAggregationMethod")
    checksumAggregationMethod: option<checksumAggregationMethod>,
    @ocaml.doc("<p>The algorithm used to generate the checksum. Currently, the only supported algorithm
            is <code>SHA256</code>.</p>")
    @as("ChecksumAlgorithm")
    checksumAlgorithm: option<checksumAlgorithm>,
    @ocaml.doc("<p>An aggregated Base-64 SHA256 checksum based on the checksums of each written
            block.</p>
        <p>To generate the aggregated checksum using the linear aggregation method, arrange the
            checksums for each written block in ascending order of their block index, concatenate
            them to form a single string, and then generate the checksum on the entire string using
            the SHA256 algorithm.</p>")
    @as("Checksum")
    checksum: option<checksum>,
    @ocaml.doc("<p>The number of blocks that were written to the snapshot.</p>")
    @as("ChangedBlocksCount")
    changedBlocksCount: changedBlocksCount,
    @ocaml.doc("<p>The ID of the snapshot.</p>") @as("SnapshotId") snapshotId: snapshotId,
  }
  type response = {
    @ocaml.doc("<p>The status of the snapshot.</p>") @as("Status") status: option<status>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "CompleteSnapshotCommand"
  let make = (
    ~changedBlocksCount,
    ~snapshotId,
    ~checksumAggregationMethod=?,
    ~checksumAlgorithm=?,
    ~checksum=?,
    (),
  ) =>
    new({
      checksumAggregationMethod: checksumAggregationMethod,
      checksumAlgorithm: checksumAlgorithm,
      checksum: checksum,
      changedBlocksCount: changedBlocksCount,
      snapshotId: snapshotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The amount of time (in minutes) after which the snapshot is automatically cancelled
            if:</p>
        <ul>
            <li>
                <p>No blocks are written to the snapshot.</p>
            </li>
            <li>
                <p>The snapshot is not completed after writing the last block of data.</p>
            </li>
         </ul>
        <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) 
        	customer master key (CMK) to be used to encrypt the snapshot. If you do not specify a 
        	CMK, the default AWS managed CMK is used.</p>
        <p>If you specify a <b>ParentSnapshotId</b>, omit this
            parameter; the snapshot will be encrypted using the same CMK that was used to encrypt
            the parent snapshot.</p>
        <p>If <b>Encrypted</b> is set to <code>true</code>, 
        	you must specify a CMK ARN. </p>")
    @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>Indicates whether to encrypt the snapshot. To create an encrypted snapshot, specify
                <code>true</code>. To create an unencrypted snapshot, omit this parameter.</p>
        <p>If you specify a value for <b>ParentSnapshotId</b>, omit
            this parameter.</p>
        <p>If you specify <code>true</code>, the snapshot is encrypted using the CMK specified
            using the <b>KmsKeyArn</b> parameter. If no value is specified
            for <b>KmsKeyArn</b>, the default CMK for your account is 
        	used. If no default CMK has been specified for your account, the AWS managed CMK is used. 
        	To set a default CMK for your account, use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyEbsDefaultKmsKeyId.html\">
        		ModifyEbsDefaultKmsKeyId</a>.</p>
        <p>If your account is enabled for encryption by default, you cannot set this parameter to
                <code>false</code>. In this case, you can omit this parameter.</p>

        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-encryption\">
                Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>")
    @as("Encrypted")
    encrypted: option<boolean_>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request. Idempotency ensures that an API request completes only once. With an idempotent 
            request, if the original request completes successfully. The subsequent retries with the same 
            client token return the result from the original successful request and they have no additional 
            effect.</p>
        <p>If you do not specify a client token, one is automatically generated by the AWS SDK.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html\">
    		Idempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>A description for the snapshot.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The tags to apply to the snapshot.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating
            the first snapshot for an on-premises volume, omit this parameter.</p>
        <p>If your account is enabled for encryption by default, you cannot use an unencrypted
            snapshot as a parent snapshot. You must first create an encrypted copy of the parent
            snapshot using <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CopySnapshot.html\">CopySnapshot</a>.</p>")
    @as("ParentSnapshotId")
    parentSnapshotId: option<snapshotId>,
    @ocaml.doc("<p>The size of the volume, in GiB. The maximum size is <code>16384</code> GiB (16
            TiB).</p>")
    @as("VolumeSize")
    volumeSize: volumeSize,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer
            master key (CMK) used to encrypt the snapshot.</p>")
    @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The ID of the parent snapshot.</p>") @as("ParentSnapshotId")
    parentSnapshotId: option<snapshotId>,
    @ocaml.doc("<p>The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\"> Tagging your Amazon EC2
                resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The size of the blocks in the snapshot, in bytes.</p>") @as("BlockSize")
    blockSize: option<blockSize>,
    @ocaml.doc("<p>The size of the volume, in GiB.</p>") @as("VolumeSize")
    volumeSize: option<volumeSize>,
    @ocaml.doc("<p>The timestamp when the snapshot was created.</p>") @as("StartTime")
    startTime: option<timeStamp>,
    @ocaml.doc("<p>The status of the snapshot.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The AWS account ID of the snapshot owner.</p>") @as("OwnerId")
    ownerId: option<ownerId>,
    @ocaml.doc("<p>The ID of the snapshot.</p>") @as("SnapshotId") snapshotId: option<snapshotId>,
    @ocaml.doc("<p>The description of the snapshot.</p>") @as("Description")
    description: option<description>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "StartSnapshotCommand"
  let make = (
    ~volumeSize,
    ~timeout=?,
    ~kmsKeyArn=?,
    ~encrypted=?,
    ~clientToken=?,
    ~description=?,
    ~tags=?,
    ~parentSnapshotId=?,
    (),
  ) =>
    new({
      timeout: timeout,
      kmsKeyArn: kmsKeyArn,
      encrypted: encrypted,
      clientToken: clientToken,
      description: description,
      tags: tags,
      parentSnapshotId: parentSnapshotId,
      volumeSize: volumeSize,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSnapshotBlocks = {
  type t
  type request = {
    @ocaml.doc("<p>The block index from which the list should start. The list in the response will start
            from this block index or the next valid block index in the snapshot.</p>")
    @as("StartingBlockIndex")
    startingBlockIndex: option<blockIndex>,
    @ocaml.doc("<p>The number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The ID of the snapshot from which to get block indexes and block tokens.</p>")
    @as("SnapshotId")
    snapshotId: snapshotId,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there
            are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The size of the block.</p>") @as("BlockSize") blockSize: option<blockSize>,
    @ocaml.doc("<p>The size of the volume in GB.</p>") @as("VolumeSize")
    volumeSize: option<volumeSize>,
    @ocaml.doc("<p>The time when the <code>BlockToken</code> expires.</p>") @as("ExpiryTime")
    expiryTime: option<timeStamp>,
    @ocaml.doc("<p>An array of objects containing information about the blocks.</p>") @as("Blocks")
    blocks: option<blocks>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "ListSnapshotBlocksCommand"
  let make = (~snapshotId, ~startingBlockIndex=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      startingBlockIndex: startingBlockIndex,
      maxResults: maxResults,
      nextToken: nextToken,
      snapshotId: snapshotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListChangedBlocks = {
  type t
  type request = {
    @ocaml.doc("<p>The block index from which the comparison should start.</p>
        <p>The list in the response will start from this block index or the next valid block
            index in the snapshots.</p>")
    @as("StartingBlockIndex")
    startingBlockIndex: option<blockIndex>,
    @ocaml.doc("<p>The number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The ID of the second snapshot to use for the comparison.</p>
        <important>
            <p>The <code>SecondSnapshotId</code> parameter must be specified with a
                    <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p>
        </important>")
    @as("SecondSnapshotId")
    secondSnapshotId: snapshotId,
    @ocaml.doc("<p>The ID of the first snapshot to use for the comparison.</p>
        <important>
            <p>The <code>FirstSnapshotID</code> parameter must be specified with a
                    <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p>
        </important>")
    @as("FirstSnapshotId")
    firstSnapshotId: option<snapshotId>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. This value is null when there
            are no more results to return.</p>")
    @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The size of the block.</p>") @as("BlockSize") blockSize: option<blockSize>,
    @ocaml.doc("<p>The size of the volume in GB.</p>") @as("VolumeSize")
    volumeSize: option<volumeSize>,
    @ocaml.doc("<p>The time when the <code>BlockToken</code> expires.</p>") @as("ExpiryTime")
    expiryTime: option<timeStamp>,
    @ocaml.doc("<p>An array of objects containing information about the changed blocks.</p>")
    @as("ChangedBlocks")
    changedBlocks: option<changedBlocks>,
  }
  @module("@aws-sdk/client-ebs") @new external new: request => t = "ListChangedBlocksCommand"
  let make = (
    ~secondSnapshotId,
    ~startingBlockIndex=?,
    ~maxResults=?,
    ~nextToken=?,
    ~firstSnapshotId=?,
    (),
  ) =>
    new({
      startingBlockIndex: startingBlockIndex,
      maxResults: maxResults,
      nextToken: nextToken,
      secondSnapshotId: secondSnapshotId,
      firstSnapshotId: firstSnapshotId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
