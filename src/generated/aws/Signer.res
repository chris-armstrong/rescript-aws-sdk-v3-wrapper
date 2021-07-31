type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-signer") @new
external createClient: unit => awsServiceClient = "SignerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type bool_ = bool
type version = string
type validityType = [@as("YEARS") #YEARS | @as("MONTHS") #MONTHS | @as("DAYS") #DAYS]
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type statusReason = string
type signingStatus = [
  | @as("Succeeded") #Succeeded
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
]
type signingProfileStatus = [
  | @as("Revoked") #Revoked
  | @as("Canceled") #Canceled
  | @as("Active") #Active
]
type signingParameterValue = string
type signingParameterKey = string
type revocationReasonString = string
type requestedBy = string
type profileVersion = string
type profileName = string
type prefix = string
type policySizeBytes = int
type platformId = string
type nextToken = string
type maxSizeInMB = int
type maxResults = int
type key = string
type jobId = string
type integer_ = int
type imageFormat = [
  | @as("JSONDetached") #JSONDetached
  | @as("JSONEmbedded") #JSONEmbedded
  | @as("JSON") #JSON
]
type hashAlgorithm = [@as("SHA256") #SHA256 | @as("SHA1") #SHA1]
type errorMessage = string
type errorCode = string
type encryptionAlgorithm = [@as("ECDSA") #ECDSA | @as("RSA") #RSA]
type displayName = string
type clientRequestToken = string
type certificateArn = string
type category = [@as("AWSIoT") #AWSIoT]
type bucketName = string
type arn = string
type accountId = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type statuses = array<signingProfileStatus>
type signingProfileRevocationRecord = {
  revokedBy: option<string_>,
  revokedAt: option<timestamp_>,
  revocationEffectiveFrom: option<timestamp_>,
}
type signingParameters = Js.Dict.t<signingParameterValue>
type signingMaterial = {certificateArn: certificateArn}
type signingJobRevocationRecord = {
  revokedBy: option<string_>,
  revokedAt: option<timestamp_>,
  reason: option<string_>,
}
type signingConfigurationOverrides = {
  hashAlgorithm: option<hashAlgorithm>,
  encryptionAlgorithm: option<encryptionAlgorithm>,
}
type signatureValidityPeriod = {
  @as("type") type_: option<validityType>,
  value: option<integer_>,
}
type s3Source = {
  version: version,
  key: key,
  bucketName: bucketName,
}
type s3SignedObject = {
  key: option<key>,
  bucketName: option<bucketName>,
}
type s3Destination = {
  prefix: option<prefix>,
  bucketName: option<bucketName>,
}
type permission = {
  profileVersion: option<profileVersion>,
  statementId: option<string_>,
  principal: option<string_>,
  action: option<string_>,
}
type imageFormats = array<imageFormat>
type hashAlgorithms = array<hashAlgorithm>
type encryptionAlgorithms = array<encryptionAlgorithm>
type source = {s3: option<s3Source>}
type signingProfile = {
  tags: option<tagMap>,
  arn: option<string_>,
  status: option<signingProfileStatus>,
  signingParameters: option<signingParameters>,
  platformDisplayName: option<displayName>,
  platformId: option<platformId>,
  signatureValidityPeriod: option<signatureValidityPeriod>,
  signingMaterial: option<signingMaterial>,
  profileVersionArn: option<arn>,
  profileVersion: option<profileVersion>,
  profileName: option<profileName>,
}
type signingPlatformOverrides = {
  signingImageFormat: option<imageFormat>,
  signingConfiguration: option<signingConfigurationOverrides>,
}
type signingImageFormat = {
  defaultFormat: imageFormat,
  supportedFormats: imageFormats,
}
type signedObject = {s3: option<s3SignedObject>}
type permissions = array<permission>
type hashAlgorithmOptions = {
  defaultValue: hashAlgorithm,
  allowedValues: hashAlgorithms,
}
type encryptionAlgorithmOptions = {
  defaultValue: encryptionAlgorithm,
  allowedValues: encryptionAlgorithms,
}
type destination = {s3: option<s3Destination>}
type signingProfiles = array<signingProfile>
type signingJob = {
  jobInvoker: option<accountId>,
  jobOwner: option<accountId>,
  signatureExpiresAt: option<timestamp_>,
  platformDisplayName: option<displayName>,
  platformId: option<platformId>,
  profileVersion: option<profileVersion>,
  profileName: option<profileName>,
  isRevoked: option<bool_>,
  status: option<signingStatus>,
  createdAt: option<timestamp_>,
  signingMaterial: option<signingMaterial>,
  signedObject: option<signedObject>,
  source: option<source>,
  jobId: option<jobId>,
}
type signingConfiguration = {
  hashAlgorithmOptions: hashAlgorithmOptions,
  encryptionAlgorithmOptions: encryptionAlgorithmOptions,
}
type signingPlatform = {
  revocationSupported: option<bool_>,
  maxSizeInMB: option<maxSizeInMB>,
  signingImageFormat: option<signingImageFormat>,
  signingConfiguration: option<signingConfiguration>,
  category: option<category>,
  target: option<string_>,
  partner: option<string_>,
  displayName: option<string_>,
  platformId: option<string_>,
}
type signingJobs = array<signingJob>
type signingPlatforms = array<signingPlatform>

module RevokeSigningProfile = {
  type t
  type request = {
    effectiveTime: timestamp_,
    reason: revocationReasonString,
    profileVersion: profileVersion,
    profileName: profileName,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "RevokeSigningProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RevokeSignature = {
  type t
  type request = {
    reason: revocationReasonString,
    jobOwner: option<accountId>,
    jobId: jobId,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "RevokeSignatureCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveProfilePermission = {
  type t
  type request = {
    statementId: string_,
    revisionId: string_,
    profileName: profileName,
  }
  type response = {revisionId: option<string_>}
  @module("@aws-sdk/client-signer") @new
  external new: request => t = "RemoveProfilePermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSigningProfile = {
  type t
  type request = {profileName: profileName}

  @module("@aws-sdk/client-signer") @new external new: request => t = "CancelSigningProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddProfilePermission = {
  type t
  type request = {
    statementId: string_,
    revisionId: option<string_>,
    principal: string_,
    action: string_,
    profileVersion: option<profileVersion>,
    profileName: profileName,
  }
  type response = {revisionId: option<string_>}
  @module("@aws-sdk/client-signer") @new external new: request => t = "AddProfilePermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-signer") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-signer") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: string_}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSigningJob = {
  type t
  type request = {
    profileOwner: option<accountId>,
    clientRequestToken: clientRequestToken,
    profileName: profileName,
    destination: destination,
    source: source,
  }
  type response = {
    jobOwner: option<accountId>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "StartSigningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSigningProfile = {
  type t
  type request = {
    tags: option<tagMap>,
    signingParameters: option<signingParameters>,
    overrides: option<signingPlatformOverrides>,
    platformId: platformId,
    signatureValidityPeriod: option<signatureValidityPeriod>,
    signingMaterial: option<signingMaterial>,
    profileName: profileName,
  }
  type response = {
    profileVersionArn: option<arn>,
    profileVersion: option<profileVersion>,
    arn: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "PutSigningProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProfilePermissions = {
  type t
  type request = {
    nextToken: option<string_>,
    profileName: profileName,
  }
  type response = {
    nextToken: option<string_>,
    permissions: option<permissions>,
    policySizeBytes: option<policySizeBytes>,
    revisionId: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new
  external new: request => t = "ListProfilePermissionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSigningProfile = {
  type t
  type request = {
    profileOwner: option<accountId>,
    profileName: profileName,
  }
  type response = {
    tags: option<tagMap>,
    arn: option<string_>,
    statusReason: option<string_>,
    status: option<signingProfileStatus>,
    signingParameters: option<signingParameters>,
    overrides: option<signingPlatformOverrides>,
    signatureValidityPeriod: option<signatureValidityPeriod>,
    platformDisplayName: option<displayName>,
    platformId: option<platformId>,
    signingMaterial: option<signingMaterial>,
    revocationRecord: option<signingProfileRevocationRecord>,
    profileVersionArn: option<arn>,
    profileVersion: option<profileVersion>,
    profileName: option<profileName>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "GetSigningProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSigningJob = {
  type t
  type request = {jobId: jobId}
  type response = {
    jobInvoker: option<accountId>,
    jobOwner: option<accountId>,
    signedObject: option<signedObject>,
    revocationRecord: option<signingJobRevocationRecord>,
    statusReason: option<statusReason>,
    status: option<signingStatus>,
    requestedBy: option<requestedBy>,
    signatureExpiresAt: option<timestamp_>,
    completedAt: option<timestamp_>,
    createdAt: option<timestamp_>,
    signingParameters: option<signingParameters>,
    overrides: option<signingPlatformOverrides>,
    profileVersion: option<profileVersion>,
    profileName: option<profileName>,
    platformDisplayName: option<displayName>,
    platformId: option<platformId>,
    signingMaterial: option<signingMaterial>,
    source: option<source>,
    jobId: option<jobId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "DescribeSigningJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningProfiles = {
  type t
  type request = {
    statuses: option<statuses>,
    platformId: option<platformId>,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    includeCanceled: option<bool_>,
  }
  type response = {
    nextToken: option<nextToken>,
    profiles: option<signingProfiles>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSigningPlatform = {
  type t
  type request = {platformId: platformId}
  type response = {
    revocationSupported: option<bool_>,
    maxSizeInMB: option<maxSizeInMB>,
    signingImageFormat: option<signingImageFormat>,
    signingConfiguration: option<signingConfiguration>,
    category: option<category>,
    target: option<string_>,
    partner: option<string_>,
    displayName: option<displayName>,
    platformId: option<platformId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "GetSigningPlatformCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningJobs = {
  type t
  type request = {
    jobInvoker: option<accountId>,
    signatureExpiresAfter: option<timestamp_>,
    signatureExpiresBefore: option<timestamp_>,
    isRevoked: option<bool_>,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    requestedBy: option<requestedBy>,
    platformId: option<platformId>,
    status: option<signingStatus>,
  }
  type response = {
    nextToken: option<nextToken>,
    jobs: option<signingJobs>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningPlatforms = {
  type t
  type request = {
    nextToken: option<string_>,
    maxResults: option<maxResults>,
    target: option<string_>,
    partner: option<string_>,
    category: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    platforms: option<signingPlatforms>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningPlatformsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
