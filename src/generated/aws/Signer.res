type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type bool = bool;
type version = string
type validityType = [@as("YEARS") #YEARS | @as("MONTHS") #MONTHS | @as("DAYS") #DAYS]
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type statusReason = string
type signingStatus = [@as("Succeeded") #Succeeded | @as("Failed") #Failed | @as("InProgress") #InProgress]
type signingProfileStatus = [@as("Revoked") #Revoked | @as("Canceled") #Canceled | @as("Active") #Active]
type signingParameterValue = string
type signingParameterKey = string
type revocationReasonString = string
type requestedBy = string
type profileVersion = string
type profileName = string
type prefix = string
type policySizeBytes = int;
type platformId = string
type nextToken = string
type maxSizeInMB = int;
type maxResults = int;
type key = string
type jobId = string
type amazonawsInteger = int;
type imageFormat = [@as("JSONDetached") #JSONDetached | @as("JSONEmbedded") #JSONEmbedded | @as("JSON") #JSON]
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
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type statuses = array<signingProfileStatus>
type signingProfileRevocationRecord = {
@as("revokedBy") revokedBy: amazonawsString,
@as("revokedAt") revokedAt: amazonawsTimestamp,
@as("revocationEffectiveFrom") revocationEffectiveFrom: amazonawsTimestamp
}
type signingParameters = Js.Dict.t< signingParameterValue>
type signingMaterial = {
@as("certificateArn") certificateArn: option<certificateArn>
}
type signingJobRevocationRecord = {
@as("revokedBy") revokedBy: amazonawsString,
@as("revokedAt") revokedAt: amazonawsTimestamp,
@as("reason") reason: amazonawsString
}
type signingConfigurationOverrides = {
@as("hashAlgorithm") hashAlgorithm: hashAlgorithm,
@as("encryptionAlgorithm") encryptionAlgorithm: encryptionAlgorithm
}
type signatureValidityPeriod = {
@as("type") type_: validityType,
@as("value") value: amazonawsInteger
}
type s3Source = {
@as("version") version: option<version>,
@as("key") key: option<key>,
@as("bucketName") bucketName: option<bucketName>
}
type s3SignedObject = {
@as("key") key: key,
@as("bucketName") bucketName: bucketName
}
type s3Destination = {
@as("prefix") prefix: prefix,
@as("bucketName") bucketName: bucketName
}
type permission = {
@as("profileVersion") profileVersion: profileVersion,
@as("statementId") statementId: amazonawsString,
@as("principal") principal: amazonawsString,
@as("action") action: amazonawsString
}
type imageFormats = array<imageFormat>
type hashAlgorithms = array<hashAlgorithm>
type encryptionAlgorithms = array<encryptionAlgorithm>
type source = {
@as("s3") s3: s3Source
}
type signingProfile = {
@as("tags") tags: tagMap,
@as("arn") arn: amazonawsString,
@as("status") status: signingProfileStatus,
@as("signingParameters") signingParameters: signingParameters,
@as("platformDisplayName") platformDisplayName: displayName,
@as("platformId") platformId: platformId,
@as("signatureValidityPeriod") signatureValidityPeriod: signatureValidityPeriod,
@as("signingMaterial") signingMaterial: signingMaterial,
@as("profileVersionArn") profileVersionArn: arn,
@as("profileVersion") profileVersion: profileVersion,
@as("profileName") profileName: profileName
}
type signingPlatformOverrides = {
@as("signingImageFormat") signingImageFormat: imageFormat,
@as("signingConfiguration") signingConfiguration: signingConfigurationOverrides
}
type signingImageFormat = {
@as("defaultFormat") defaultFormat: option<imageFormat>,
@as("supportedFormats") supportedFormats: option<imageFormats>
}
type signedObject = {
@as("s3") s3: s3SignedObject
}
type permissions = array<permission>
type hashAlgorithmOptions = {
@as("defaultValue") defaultValue: option<hashAlgorithm>,
@as("allowedValues") allowedValues: option<hashAlgorithms>
}
type encryptionAlgorithmOptions = {
@as("defaultValue") defaultValue: option<encryptionAlgorithm>,
@as("allowedValues") allowedValues: option<encryptionAlgorithms>
}
type destination = {
@as("s3") s3: s3Destination
}
type signingProfiles = array<signingProfile>
type signingJob = {
@as("jobInvoker") jobInvoker: accountId,
@as("jobOwner") jobOwner: accountId,
@as("signatureExpiresAt") signatureExpiresAt: amazonawsTimestamp,
@as("platformDisplayName") platformDisplayName: displayName,
@as("platformId") platformId: platformId,
@as("profileVersion") profileVersion: profileVersion,
@as("profileName") profileName: profileName,
@as("isRevoked") isRevoked: bool,
@as("status") status: signingStatus,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("signingMaterial") signingMaterial: signingMaterial,
@as("signedObject") signedObject: signedObject,
@as("source") source: source,
@as("jobId") jobId: jobId
}
type signingConfiguration = {
@as("hashAlgorithmOptions") hashAlgorithmOptions: option<hashAlgorithmOptions>,
@as("encryptionAlgorithmOptions") encryptionAlgorithmOptions: option<encryptionAlgorithmOptions>
}
type signingPlatform = {
@as("revocationSupported") revocationSupported: bool,
@as("maxSizeInMB") maxSizeInMB: maxSizeInMB,
@as("signingImageFormat") signingImageFormat: signingImageFormat,
@as("signingConfiguration") signingConfiguration: signingConfiguration,
@as("category") category: category,
@as("target") target: amazonawsString,
@as("partner") partner: amazonawsString,
@as("displayName") displayName: amazonawsString,
@as("platformId") platformId: amazonawsString
}
type signingJobs = array<signingJob>
type signingPlatforms = array<signingPlatform>
type clientType;
@module("@aws-sdk/client-signer") @new external createClient: unit => clientType = "SignerClient";
module RevokeSigningProfile = {
  type t;
  type request = {
@as("effectiveTime") effectiveTime: option<amazonawsTimestamp>,
@as("reason") reason: option<revocationReasonString>,
@as("profileVersion") profileVersion: option<profileVersion>,
@as("profileName") profileName: option<profileName>
}
  
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "RevokeSigningProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RevokeSignature = {
  type t;
  type request = {
@as("reason") reason: option<revocationReasonString>,
@as("jobOwner") jobOwner: accountId,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "RevokeSignatureCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveProfilePermission = {
  type t;
  type request = {
@as("statementId") statementId: option<amazonawsString>,
@as("revisionId") revisionId: option<amazonawsString>,
@as("profileName") profileName: option<profileName>
}
  type response = {
@as("revisionId") revisionId: amazonawsString
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "RemoveProfilePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelSigningProfile = {
  type t;
  type request = {
@as("profileName") profileName: option<profileName>
}
  
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "CancelSigningProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddProfilePermission = {
  type t;
  type request = {
@as("statementId") statementId: option<amazonawsString>,
@as("revisionId") revisionId: amazonawsString,
@as("principal") principal: option<amazonawsString>,
@as("action") action: option<amazonawsString>,
@as("profileVersion") profileVersion: profileVersion,
@as("profileName") profileName: option<profileName>
}
  type response = {
@as("revisionId") revisionId: amazonawsString
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "AddProfilePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartSigningJob = {
  type t;
  type request = {
@as("profileOwner") profileOwner: accountId,
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("profileName") profileName: option<profileName>,
@as("destination") destination: option<destination>,
@as("source") source: option<source>
}
  type response = {
@as("jobOwner") jobOwner: accountId,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "StartSigningJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSigningProfile = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("signingParameters") signingParameters: signingParameters,
@as("overrides") overrides: signingPlatformOverrides,
@as("platformId") platformId: option<platformId>,
@as("signatureValidityPeriod") signatureValidityPeriod: signatureValidityPeriod,
@as("signingMaterial") signingMaterial: signingMaterial,
@as("profileName") profileName: option<profileName>
}
  type response = {
@as("profileVersionArn") profileVersionArn: arn,
@as("profileVersion") profileVersion: profileVersion,
@as("arn") arn: amazonawsString
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "PutSigningProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProfilePermissions = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("profileName") profileName: option<profileName>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("permissions") permissions: permissions,
@as("policySizeBytes") policySizeBytes: policySizeBytes,
@as("revisionId") revisionId: amazonawsString
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "ListProfilePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSigningProfile = {
  type t;
  type request = {
@as("profileOwner") profileOwner: accountId,
@as("profileName") profileName: option<profileName>
}
  type response = {
@as("tags") tags: tagMap,
@as("arn") arn: amazonawsString,
@as("statusReason") statusReason: amazonawsString,
@as("status") status: signingProfileStatus,
@as("signingParameters") signingParameters: signingParameters,
@as("overrides") overrides: signingPlatformOverrides,
@as("signatureValidityPeriod") signatureValidityPeriod: signatureValidityPeriod,
@as("platformDisplayName") platformDisplayName: displayName,
@as("platformId") platformId: platformId,
@as("signingMaterial") signingMaterial: signingMaterial,
@as("revocationRecord") revocationRecord: signingProfileRevocationRecord,
@as("profileVersionArn") profileVersionArn: arn,
@as("profileVersion") profileVersion: profileVersion,
@as("profileName") profileName: profileName
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "GetSigningProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSigningJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("jobInvoker") jobInvoker: accountId,
@as("jobOwner") jobOwner: accountId,
@as("signedObject") signedObject: signedObject,
@as("revocationRecord") revocationRecord: signingJobRevocationRecord,
@as("statusReason") statusReason: statusReason,
@as("status") status: signingStatus,
@as("requestedBy") requestedBy: requestedBy,
@as("signatureExpiresAt") signatureExpiresAt: amazonawsTimestamp,
@as("completedAt") completedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("signingParameters") signingParameters: signingParameters,
@as("overrides") overrides: signingPlatformOverrides,
@as("profileVersion") profileVersion: profileVersion,
@as("profileName") profileName: profileName,
@as("platformDisplayName") platformDisplayName: displayName,
@as("platformId") platformId: platformId,
@as("signingMaterial") signingMaterial: signingMaterial,
@as("source") source: source,
@as("jobId") jobId: jobId
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "DescribeSigningJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSigningProfiles = {
  type t;
  type request = {
@as("statuses") statuses: statuses,
@as("platformId") platformId: platformId,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("includeCanceled") includeCanceled: bool
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("profiles") profiles: signingProfiles
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "ListSigningProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSigningPlatform = {
  type t;
  type request = {
@as("platformId") platformId: option<platformId>
}
  type response = {
@as("revocationSupported") revocationSupported: bool,
@as("maxSizeInMB") maxSizeInMB: maxSizeInMB,
@as("signingImageFormat") signingImageFormat: signingImageFormat,
@as("signingConfiguration") signingConfiguration: signingConfiguration,
@as("category") category: category,
@as("target") target: amazonawsString,
@as("partner") partner: amazonawsString,
@as("displayName") displayName: displayName,
@as("platformId") platformId: platformId
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "GetSigningPlatformCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSigningJobs = {
  type t;
  type request = {
@as("jobInvoker") jobInvoker: accountId,
@as("signatureExpiresAfter") signatureExpiresAfter: amazonawsTimestamp,
@as("signatureExpiresBefore") signatureExpiresBefore: amazonawsTimestamp,
@as("isRevoked") isRevoked: bool,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("requestedBy") requestedBy: requestedBy,
@as("platformId") platformId: platformId,
@as("status") status: signingStatus
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("jobs") jobs: signingJobs
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "ListSigningJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSigningPlatforms = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: maxResults,
@as("target") target: amazonawsString,
@as("partner") partner: amazonawsString,
@as("category") category: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("platforms") platforms: signingPlatforms
}
  @module("@aws-sdk/client-signer") @new external new_: (Js.Promise.t<request>) => t = "ListSigningPlatformsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
