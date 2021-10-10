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
@ocaml.doc("<p>Revocation information for a signing profile.</p>")
type signingProfileRevocationRecord = {
  @ocaml.doc("<p>The identity of the revoker.</p>") revokedBy: option<string_>,
  @ocaml.doc("<p>The time when the signing profile was revoked.</p>") revokedAt: option<timestamp_>,
  @ocaml.doc("<p>The time when revocation becomes effective.</p>")
  revocationEffectiveFrom: option<timestamp_>,
}
type signingParameters = Js.Dict.t<signingParameterValue>
@ocaml.doc("<p>The ACM certificate that is used to sign your code.</p>")
type signingMaterial = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificates that is used to sign your
			code.</p>")
  certificateArn: certificateArn,
}
@ocaml.doc("<p>Revocation information for a signing job.</p>")
type signingJobRevocationRecord = {
  @ocaml.doc("<p>The identity of the revoker.</p>") revokedBy: option<string_>,
  @ocaml.doc("<p>The time of revocation.</p>") revokedAt: option<timestamp_>,
  @ocaml.doc("<p>A caller-supplied reason for revocation.</p>") reason: option<string_>,
}
@ocaml.doc("<p>A signing configuration that overrides the default encryption or hash algorithm of a
			signing job.</p>")
type signingConfigurationOverrides = {
  @ocaml.doc("<p>A specified override of the default hash algorithm that is used in a code signing
			job.</p>")
  hashAlgorithm: option<hashAlgorithm>,
  @ocaml.doc("<p>A specified override of the default encryption algorithm that is used in a code signing
			job.</p>")
  encryptionAlgorithm: option<encryptionAlgorithm>,
}
@ocaml.doc("<p>The validity period for a signing job.</p>")
type signatureValidityPeriod = {
  @ocaml.doc("<p>The time unit for signature
			validity.</p>")
  @as("type")
  type_: option<validityType>,
  @ocaml.doc("<p>The numerical value of the time unit for signature validity.</p>")
  value: option<integer_>,
}
@ocaml.doc("<p>Information about the S3 bucket where you saved your unsigned code.</p>")
type s3Source = {
  @ocaml.doc("<p>Version of your source image in your version enabled S3 bucket.</p>")
  version: version,
  @ocaml.doc("<p>Key name of the bucket object that contains your unsigned code.</p>") key: key,
  @ocaml.doc("<p>Name of the S3 bucket.</p>") bucketName: bucketName,
}
@ocaml.doc("<p>The S3 bucket name and key where code signing saved your signed code image.</p>")
type s3SignedObject = {
  @ocaml.doc("<p>Key name that uniquely identifies a signed code image in your bucket.</p>")
  key: option<key>,
  @ocaml.doc("<p>Name of the S3 bucket.</p>") bucketName: option<bucketName>,
}
@ocaml.doc(
  "<p>The name and prefix of the S3 bucket where code signing saves your signed objects.</p>"
)
type s3Destination = {
  @ocaml.doc("<p>An Amazon S3 prefix that you can use to limit responses to those that begin with the
			specified prefix.</p>")
  prefix: option<prefix>,
  @ocaml.doc("<p>Name of the S3 bucket.</p>") bucketName: option<bucketName>,
}
@ocaml.doc("<p>A cross-account permission for a signing profile.</p>")
type permission = {
  @ocaml.doc("<p>The signing profile version that a permission applies to.</p>")
  profileVersion: option<profileVersion>,
  @ocaml.doc("<p>A unique identifier for a cross-account permission statement.</p>")
  statementId: option<string_>,
  @ocaml.doc("<p>The AWS principal that has been granted a cross-account permission.</p>")
  principal: option<string_>,
  @ocaml.doc("<p>An AWS Signer action permitted as part of cross-account permissions.</p>")
  action: option<string_>,
}
type imageFormats = array<imageFormat>
type hashAlgorithms = array<hashAlgorithm>
type encryptionAlgorithms = array<encryptionAlgorithm>
@ocaml.doc("<p>An <code>S3Source</code> object that contains information about the S3 bucket where
			you saved your unsigned code.</p>")
type source = {@ocaml.doc("<p>The <code>S3Source</code> object.</p>") s3: option<s3Source>}
@ocaml.doc("<p>Contains information about the ACM certificates and code signing configuration parameters
			that can be used by a given code signing user.</p>")
type signingProfile = {
  @ocaml.doc("<p>A list of tags associated with the signing profile.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the signing profile.</p>") arn: option<string_>,
  @ocaml.doc("<p>The status of a code signing profile.</p>") status: option<signingProfileStatus>,
  @ocaml.doc("<p>The parameters that are available for use by a code signing user.</p>")
  signingParameters: option<signingParameters>,
  @ocaml.doc("<p>The name of the signing platform.</p>") platformDisplayName: option<displayName>,
  @ocaml.doc("<p>The ID of a platform that is available for use by a signing profile.</p>")
  platformId: option<platformId>,
  @ocaml.doc("<p>The validity period for a signing job created using this signing profile.</p>")
  signatureValidityPeriod: option<signatureValidityPeriod>,
  @ocaml.doc("<p>The ACM certificate that is available for use by a signing profile.</p>")
  signingMaterial: option<signingMaterial>,
  @ocaml.doc("<p>The ARN of a signing profile, including the profile version.</p>")
  profileVersionArn: option<arn>,
  @ocaml.doc("<p>The version of a signing profile.</p>") profileVersion: option<profileVersion>,
  @ocaml.doc("<p>The name of the signing profile.</p>") profileName: option<profileName>,
}
@ocaml.doc("<p>Any overrides that are applied to the signing configuration of a code signing
			platform.</p>")
type signingPlatformOverrides = {
  @ocaml.doc("<p>A signed image is a JSON object. When overriding the default signing platform
			configuration, a customer can select either of two signing formats,
				<code>JSONEmbedded</code> or <code>JSONDetached</code>. (A third format value,
				<code>JSON</code>, is reserved for future use.) With <code>JSONEmbedded</code>, the
			signing image has the payload embedded in it. With <code>JSONDetached</code>, the
			payload is not be embedded in the signing image.</p>")
  signingImageFormat: option<imageFormat>,
  @ocaml.doc("<p>A signing configuration that overrides the default encryption or hash algorithm of a
			signing job.</p>")
  signingConfiguration: option<signingConfigurationOverrides>,
}
@ocaml.doc("<p>The image format of a code signing platform or profile.</p>")
type signingImageFormat = {
  @ocaml.doc("<p>The default format of a code signing image.</p>") defaultFormat: imageFormat,
  @ocaml.doc("<p>The supported formats of a code signing image.</p>")
  supportedFormats: imageFormats,
}
@ocaml.doc("<p>Points to an <code>S3SignedObject</code> object that contains information about your
			signed code image.</p>")
type signedObject = {
  @ocaml.doc("<p>The <code>S3SignedObject</code>.</p>") s3: option<s3SignedObject>,
}
type permissions = array<permission>
@ocaml.doc("<p>The hash algorithms that are available to a code signing job.</p>")
type hashAlgorithmOptions = {
  @ocaml.doc("<p>The default hash algorithm that is used in a code signing job.</p>")
  defaultValue: hashAlgorithm,
  @ocaml.doc("<p>The set of accepted hash algorithms allowed in a code signing job.</p>")
  allowedValues: hashAlgorithms,
}
@ocaml.doc("<p>The encryption algorithm options that are available to a code signing job.</p>")
type encryptionAlgorithmOptions = {
  @ocaml.doc("<p>The default encryption algorithm that is used by a code signing job.</p>")
  defaultValue: encryptionAlgorithm,
  @ocaml.doc(
    "<p>The set of accepted encryption algorithms that are allowed in a code signing job.</p>"
  )
  allowedValues: encryptionAlgorithms,
}
@ocaml.doc("<p>Points to an <code>S3Destination</code> object that contains information about your S3
			bucket.</p>")
type destination = {
  @ocaml.doc("<p>The <code>S3Destination</code> object.</p>") s3: option<s3Destination>,
}
type signingProfiles = array<signingProfile>
@ocaml.doc("<p>Contains information about a signing job.</p>")
type signingJob = {
  @ocaml.doc("<p>The AWS account ID of the job invoker.</p>") jobInvoker: option<accountId>,
  @ocaml.doc("<p>The AWS account ID of the job owner.</p>") jobOwner: option<accountId>,
  @ocaml.doc("<p>The time when the signature of a signing job expires.</p>")
  signatureExpiresAt: option<timestamp_>,
  @ocaml.doc("<p>The name of a signing platform.</p>") platformDisplayName: option<displayName>,
  @ocaml.doc("<p>The unique identifier for a signing platform.</p>") platformId: option<platformId>,
  @ocaml.doc("<p>The version of the signing profile that created a signing job.</p>")
  profileVersion: option<profileVersion>,
  @ocaml.doc("<p>The name of the signing profile that created a signing job.</p>")
  profileName: option<profileName>,
  @ocaml.doc("<p>Indicates whether the signing job is revoked.</p>") isRevoked: option<bool_>,
  @ocaml.doc("<p>The status of the signing job.</p>") status: option<signingStatus>,
  @ocaml.doc("<p>The date and time that the signing job was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>A <code>SigningMaterial</code> object that contains the Amazon Resource Name (ARN) of
			the certificate used for the signing job.</p>")
  signingMaterial: option<signingMaterial>,
  @ocaml.doc("<p>A <code>SignedObject</code> structure that contains information about a signing job's
			signed code image.</p>")
  signedObject: option<signedObject>,
  @ocaml.doc("<p>A <code>Source</code> that contains information about a signing job's code image
			source.</p>")
  source: option<source>,
  @ocaml.doc("<p>The ID of the signing job.</p>") jobId: option<jobId>,
}
@ocaml.doc("<p>The configuration of a code signing operation.</p>")
type signingConfiguration = {
  @ocaml.doc("<p>The hash algorithm options that are available for a code signing job.</p>")
  hashAlgorithmOptions: hashAlgorithmOptions,
  @ocaml.doc("<p>The encryption algorithm options that are available for a code signing job.</p>")
  encryptionAlgorithmOptions: encryptionAlgorithmOptions,
}
@ocaml.doc("<p>Contains information about the signing configurations and parameters that are used to
			perform a code signing job.</p>")
type signingPlatform = {
  @ocaml.doc("<p>Indicates whether revocation is supported for the platform.</p>")
  revocationSupported: option<bool_>,
  @ocaml.doc(
    "<p>The maximum size (in MB) of code that can be signed by a code signing platform.</p>"
  )
  maxSizeInMB: option<maxSizeInMB>,
  signingImageFormat: option<signingImageFormat>,
  @ocaml.doc("<p>The configuration of a code signing platform. This includes the designated hash algorithm
			and encryption algorithm of a signing platform.</p>")
  signingConfiguration: option<signingConfiguration>,
  @ocaml.doc("<p>The category of a code signing platform.</p>") category: option<category>,
  @ocaml.doc("<p>The types of targets that can be signed by a code signing platform.</p>")
  target: option<string_>,
  @ocaml.doc("<p>Any partner entities linked to a code signing platform.</p>")
  partner: option<string_>,
  @ocaml.doc("<p>The display name of a code signing platform.</p>") displayName: option<string_>,
  @ocaml.doc("<p>The ID of a code signing; platform.</p>") platformId: option<string_>,
}
type signingJobs = array<signingJob>
type signingPlatforms = array<signingPlatform>
@ocaml.doc("<p>AWS Signer is a fully managed code signing service to help you ensure the trust and
			integrity of your code. </p>
		       <p>AWS Signer supports the following applications:</p>

		       <p>With <i>code signing for AWS Lambda</i>, you can sign AWS Lambda
			deployment packages. Integrated support is provided for Amazon S3, Amazon CloudWatch,
			and AWS CloudTrail. In order to sign code, you create a signing profile and then use
			Signer to sign Lambda zip files in S3. </p>
		
		       <p>With <i>code signing for IoT</i>, you can sign code for any IoT device that is
			supported by AWS. IoT code signing is available for <a href=\"http://docs.aws.amazon.com/freertos/latest/userguide/\">Amazon FreeRTOS</a> and <a href=\"http://docs.aws.amazon.com/iot/latest/developerguide/\">AWS IoT Device Management</a>, and is
			integrated with <a href=\"http://docs.aws.amazon.com/acm/latest/userguide/\">AWS Certificate Manager (ACM)</a>. In order to sign
			code, you import a third-party code signing certificate using ACM, and use that to
			sign updates in Amazon FreeRTOS and AWS IoT Device Management. </p>
		       <p>For more information about AWS Signer, see the <a href=\"http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html\">AWS Signer Developer Guide</a>.</p>
		
		       <p></p>")
module RevokeSigningProfile = {
  type t
  type request = {
    @ocaml.doc("<p>A timestamp for when revocation of a Signing Profile should become effective.
			Signatures generated using the signing profile after this timestamp are not
			trusted.</p>")
    effectiveTime: timestamp_,
    @ocaml.doc("<p>The reason for revoking a signing profile.</p>") reason: revocationReasonString,
    @ocaml.doc("<p>The version of the signing profile to be revoked.</p>")
    profileVersion: profileVersion,
    @ocaml.doc("<p>The name of the signing profile to be revoked.</p>") profileName: profileName,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "RevokeSigningProfileCommand"
  let make = (~effectiveTime, ~reason, ~profileVersion, ~profileName, ()) =>
    new({
      effectiveTime: effectiveTime,
      reason: reason,
      profileVersion: profileVersion,
      profileName: profileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RevokeSignature = {
  type t
  type request = {
    @ocaml.doc("<p>The reason for revoking the signing job.</p>") reason: revocationReasonString,
    @ocaml.doc("<p>AWS account ID of the job owner.</p>") jobOwner: option<accountId>,
    @ocaml.doc("<p>ID of the signing job to be revoked.</p>") jobId: jobId,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "RevokeSignatureCommand"
  let make = (~reason, ~jobId, ~jobOwner=?, ()) =>
    new({reason: reason, jobOwner: jobOwner, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveProfilePermission = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the cross-account permissions statement.</p>")
    statementId: string_,
    @ocaml.doc("<p>An identifier for the current revision of the signing profile permissions.</p>")
    revisionId: string_,
    @ocaml.doc(
      "<p>A human-readable name for the signing profile with permissions to be removed.</p>"
    )
    profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>An identifier for the current revision of the profile permissions.</p>")
    revisionId: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new
  external new: request => t = "RemoveProfilePermissionCommand"
  let make = (~statementId, ~revisionId, ~profileName, ()) =>
    new({statementId: statementId, revisionId: revisionId, profileName: profileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelSigningProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the signing profile to be canceled.</p>") profileName: profileName,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "CancelSigningProfileCommand"
  let make = (~profileName, ()) => new({profileName: profileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddProfilePermission = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the cross-account permission statement.</p>")
    statementId: string_,
    @ocaml.doc("<p>A unique identifier for the current profile revision.</p>")
    revisionId: option<string_>,
    @ocaml.doc("<p>The AWS principal receiving cross-account permissions. This may be an IAM role or
			another AWS account ID.</p>")
    principal: string_,
    @ocaml.doc("<p>The AWS Signer action permitted as part of cross-account permissions.</p>")
    action: string_,
    @ocaml.doc("<p>The version of the signing profile.</p>") profileVersion: option<profileVersion>,
    @ocaml.doc("<p>The human-readable name of the signing profile.</p>") profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the current profile revision.</p>")
    revisionId: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "AddProfilePermissionCommand"
  let make = (
    ~statementId,
    ~principal,
    ~action,
    ~profileName,
    ~revisionId=?,
    ~profileVersion=?,
    (),
  ) =>
    new({
      statementId: statementId,
      revisionId: revisionId,
      principal: principal,
      action: action,
      profileVersion: profileVersion,
      profileName: profileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to be removed from the signing profile.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the signing profile.</p>")
    resourceArn: string_,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags to be associated with the signing profile.</p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the signing profile.</p>")
    resourceArn: string_,
  }

  @module("@aws-sdk/client-signer") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the signing profile.</p>")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the signing profile.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSigningJob = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID of the signing profile owner.</p>")
    profileOwner: option<accountId>,
    @ocaml.doc("<p>String that identifies the signing request. All calls after the first that use this
			token return the same response as the first call.</p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The name of the signing profile.</p>") profileName: profileName,
    @ocaml.doc("<p>The S3 bucket in which to save your signed object. The destination contains the name
			of your bucket and an optional prefix.</p>")
    destination: destination,
    @ocaml.doc("<p>The S3 bucket that contains the object to sign or a BLOB that contains your raw
			code.</p>")
    source: source,
  }
  type response = {
    @ocaml.doc("<p>The AWS account ID of the signing job owner.</p>") jobOwner: option<accountId>,
    @ocaml.doc("<p>The ID of your signing job.</p>") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "StartSigningJobCommand"
  let make = (~clientRequestToken, ~profileName, ~destination, ~source, ~profileOwner=?, ()) =>
    new({
      profileOwner: profileOwner,
      clientRequestToken: clientRequestToken,
      profileName: profileName,
      destination: destination,
      source: source,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSigningProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to be associated with the signing profile that is being created.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Map of key-value pairs for signing. These can include any information that you want to
			use during signing.</p>")
    signingParameters: option<signingParameters>,
    @ocaml.doc("<p>A subfield of <code>platform</code>. This specifies any different configuration
			options that you want to apply to the chosen platform (such as a different
				<code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>")
    overrides: option<signingPlatformOverrides>,
    @ocaml.doc("<p>The ID of the signing platform to be created.</p>") platformId: platformId,
    @ocaml.doc("<p>The default validity period override for any signature generated using this signing
			profile. If unspecified, the default is 135 months.</p>")
    signatureValidityPeriod: option<signatureValidityPeriod>,
    @ocaml.doc("<p>The AWS Certificate Manager certificate that will be used to sign code with the new signing
			profile.</p>")
    signingMaterial: option<signingMaterial>,
    @ocaml.doc("<p>The name of the signing profile to be created.</p>") profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>The signing profile ARN, including the profile version.</p>")
    profileVersionArn: option<arn>,
    @ocaml.doc("<p>The version of the signing profile being created.</p>")
    profileVersion: option<profileVersion>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the signing profile created.</p>")
    arn: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "PutSigningProfileCommand"
  let make = (
    ~platformId,
    ~profileName,
    ~tags=?,
    ~signingParameters=?,
    ~overrides=?,
    ~signatureValidityPeriod=?,
    ~signingMaterial=?,
    (),
  ) =>
    new({
      tags: tags,
      signingParameters: signingParameters,
      overrides: overrides,
      platformId: platformId,
      signatureValidityPeriod: signatureValidityPeriod,
      signingMaterial: signingMaterial,
      profileName: profileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProfilePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>String for specifying the next set of paginated results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Name of the signing profile containing the cross-account permissions.</p>")
    profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>String for specifying the next set of paginated results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of permissions associated with the Signing Profile.</p>")
    permissions: option<permissions>,
    @ocaml.doc("<p>Total size of the policy associated with the Signing Profile in bytes.</p>")
    policySizeBytes: option<policySizeBytes>,
    @ocaml.doc("<p>The identifier for the current revision of profile permissions.</p>")
    revisionId: option<string_>,
  }
  @module("@aws-sdk/client-signer") @new
  external new: request => t = "ListProfilePermissionsCommand"
  let make = (~profileName, ~nextToken=?, ()) =>
    new({nextToken: nextToken, profileName: profileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSigningProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account ID of the profile owner.</p>") profileOwner: option<accountId>,
    @ocaml.doc("<p>The name of the target signing profile.</p>") profileName: profileName,
  }
  type response = {
    @ocaml.doc("<p>A list of tags associated with the signing profile.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the signing profile.</p>")
    arn: option<string_>,
    @ocaml.doc("<p>Reason for the status of the target signing profile.</p>")
    statusReason: option<string_>,
    @ocaml.doc("<p>The status of the target signing profile.</p>")
    status: option<signingProfileStatus>,
    @ocaml.doc("<p>A map of key-value pairs for signing operations that is attached to the target signing
			profile.</p>")
    signingParameters: option<signingParameters>,
    @ocaml.doc("<p>A list of overrides applied by the target signing profile for signing
			operations.</p>")
    overrides: option<signingPlatformOverrides>,
    signatureValidityPeriod: option<signatureValidityPeriod>,
    @ocaml.doc("<p>A human-readable name for the signing platform associated with the signing
			profile.</p>")
    platformDisplayName: option<displayName>,
    @ocaml.doc("<p>The ID of the platform that is used by the target signing profile.</p>")
    platformId: option<platformId>,
    @ocaml.doc(
      "<p>The ARN of the certificate that the target profile uses for signing operations.</p>"
    )
    signingMaterial: option<signingMaterial>,
    revocationRecord: option<signingProfileRevocationRecord>,
    @ocaml.doc("<p>The signing profile ARN, including the profile version.</p>")
    profileVersionArn: option<arn>,
    @ocaml.doc("<p>The current version of the signing profile.</p>")
    profileVersion: option<profileVersion>,
    @ocaml.doc("<p>The name of the target signing profile.</p>") profileName: option<profileName>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "GetSigningProfileCommand"
  let make = (~profileName, ~profileOwner=?, ()) =>
    new({profileOwner: profileOwner, profileName: profileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSigningJob = {
  type t
  type request = {@ocaml.doc("<p>The ID of the signing job on input.</p>") jobId: jobId}
  type response = {
    @ocaml.doc("<p>The IAM entity that initiated the signing job.</p>")
    jobInvoker: option<accountId>,
    @ocaml.doc("<p>The AWS account ID of the job owner.</p>") jobOwner: option<accountId>,
    @ocaml.doc("<p>Name of the S3 bucket where the signed code image is saved by code signing.</p>")
    signedObject: option<signedObject>,
    @ocaml.doc("<p>A revocation record if the signature generated by the signing job has been revoked.
			Contains a timestamp and the ID of the IAM entity that revoked the signature.</p>")
    revocationRecord: option<signingJobRevocationRecord>,
    @ocaml.doc("<p>String value that contains the status reason.</p>")
    statusReason: option<statusReason>,
    @ocaml.doc("<p>Status of the signing job.</p>") status: option<signingStatus>,
    @ocaml.doc("<p>The IAM principal that requested the signing job.</p>")
    requestedBy: option<requestedBy>,
    @ocaml.doc("<p>Thr expiration timestamp for the signature generated by the signing job.</p>")
    signatureExpiresAt: option<timestamp_>,
    @ocaml.doc("<p>Date and time that the signing job was completed.</p>")
    completedAt: option<timestamp_>,
    @ocaml.doc("<p>Date and time that the signing job was created.</p>")
    createdAt: option<timestamp_>,
    @ocaml.doc("<p>Map of user-assigned key-value pairs used during signing. These values contain any
			information that you specified for use in your signing job. </p>")
    signingParameters: option<signingParameters>,
    @ocaml.doc("<p>A list of any overrides that were applied to the signing operation.</p>")
    overrides: option<signingPlatformOverrides>,
    @ocaml.doc("<p>The version of the signing profile used to initiate the signing job.</p>")
    profileVersion: option<profileVersion>,
    @ocaml.doc("<p>The name of the profile that initiated the signing operation.</p>")
    profileName: option<profileName>,
    @ocaml.doc(
      "<p>A human-readable name for the signing platform associated with the signing job.</p>"
    )
    platformDisplayName: option<displayName>,
    @ocaml.doc("<p>The microcontroller platform to which your signed code image will be
			distributed.</p>")
    platformId: option<platformId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of your code signing certificate.</p>")
    signingMaterial: option<signingMaterial>,
    @ocaml.doc("<p>The object that contains the name of your S3 bucket or your raw code.</p>")
    source: option<source>,
    @ocaml.doc("<p>The ID of the signing job on output.</p>") jobId: option<jobId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "DescribeSigningJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>Filters results to return only signing jobs with statuses in the specified
			list.</p>")
    statuses: option<statuses>,
    @ocaml.doc("<p>Filters results to return only signing jobs initiated for a specified signing
			platform.</p>")
    platformId: option<platformId>,
    @ocaml.doc("<p>Value for specifying the next set of paginated results to return. After you receive a
			response with truncated results, use this parameter in a subsequent request. Set it to
			the value of <code>nextToken</code> from the response that you just received.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of profiles to be returned.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Designates whether to include profiles with the status of
			<code>CANCELED</code>.</p>")
    includeCanceled: option<bool_>,
  }
  type response = {
    @ocaml.doc("<p>Value for specifying the next set of paginated results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of profiles that are available in the AWS account. This includes profiles with
			the status of <code>CANCELED</code> if the <code>includeCanceled</code> parameter is set
			to <code>true</code>.</p>")
    profiles: option<signingProfiles>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningProfilesCommand"
  let make = (~statuses=?, ~platformId=?, ~nextToken=?, ~maxResults=?, ~includeCanceled=?, ()) =>
    new({
      statuses: statuses,
      platformId: platformId,
      nextToken: nextToken,
      maxResults: maxResults,
      includeCanceled: includeCanceled,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSigningPlatform = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the target signing platform.</p>") platformId: platformId,
  }
  type response = {
    @ocaml.doc("<p>A flag indicating whether signatures generated for the signing platform can be
			revoked.</p>")
    revocationSupported: option<bool_>,
    @ocaml.doc("<p>The maximum size (in MB) of the payload that can be signed by the target
			platform.</p>")
    maxSizeInMB: option<maxSizeInMB>,
    @ocaml.doc("<p>The format of the target platform's signing image.</p>")
    signingImageFormat: option<signingImageFormat>,
    @ocaml.doc("<p>A list of configurations applied to the target platform at signing.</p>")
    signingConfiguration: option<signingConfiguration>,
    @ocaml.doc("<p>The category type of the target signing platform.</p>")
    category: option<category>,
    @ocaml.doc("<p>The validation template that is used by the target signing platform.</p>")
    target: option<string_>,
    @ocaml.doc("<p>A list of partner entities that use the target signing platform.</p>")
    partner: option<string_>,
    @ocaml.doc("<p>The display name of the target signing platform.</p>")
    displayName: option<displayName>,
    @ocaml.doc("<p>The ID of the target signing platform.</p>") platformId: option<platformId>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "GetSigningPlatformCommand"
  let make = (~platformId, ()) => new({platformId: platformId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Filters results to return only signing jobs initiated by a specified IAM
			entity.</p>")
    jobInvoker: option<accountId>,
    @ocaml.doc("<p>Filters results to return only signing jobs with signatures expiring after a specified
			timestamp.</p>")
    signatureExpiresAfter: option<timestamp_>,
    @ocaml.doc("<p>Filters results to return only signing jobs with signatures expiring before a
			specified timestamp.</p>")
    signatureExpiresBefore: option<timestamp_>,
    @ocaml.doc("<p>Filters results to return only signing jobs with revoked signatures.</p>")
    isRevoked: option<bool_>,
    @ocaml.doc("<p>String for specifying the next set of paginated results to return. After you receive a
			response with truncated results, use this parameter in a subsequent request. Set it to
			the value of <code>nextToken</code> from the response that you just received.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the maximum number of items to return in the response. Use this parameter
			when paginating results. If additional items exist beyond the number you specify, the
				<code>nextToken</code> element is set in the response. Use the
				<code>nextToken</code> value in a subsequent request to retrieve additional items.
		</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The IAM principal that requested the signing job.</p>")
    requestedBy: option<requestedBy>,
    @ocaml.doc("<p>The ID of microcontroller platform that you specified for the distribution of your
			code image.</p>")
    platformId: option<platformId>,
    @ocaml.doc("<p>A status value with which to filter your results.</p>")
    status: option<signingStatus>,
  }
  type response = {
    @ocaml.doc("<p>String for specifying the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of your signing jobs.</p>") jobs: option<signingJobs>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningJobsCommand"
  let make = (
    ~jobInvoker=?,
    ~signatureExpiresAfter=?,
    ~signatureExpiresBefore=?,
    ~isRevoked=?,
    ~nextToken=?,
    ~maxResults=?,
    ~requestedBy=?,
    ~platformId=?,
    ~status=?,
    (),
  ) =>
    new({
      jobInvoker: jobInvoker,
      signatureExpiresAfter: signatureExpiresAfter,
      signatureExpiresBefore: signatureExpiresBefore,
      isRevoked: isRevoked,
      nextToken: nextToken,
      maxResults: maxResults,
      requestedBy: requestedBy,
      platformId: platformId,
      status: status,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSigningPlatforms = {
  type t
  type request = {
    @ocaml.doc("<p>Value for specifying the next set of paginated results to return. After you receive a
			response with truncated results, use this parameter in a subsequent request. Set it to
			the value of <code>nextToken</code> from the response that you just received.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to be returned by this operation.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The validation template that is used by the target signing platform.</p>")
    target: option<string_>,
    @ocaml.doc("<p>Any partner entities connected to a signing platform.</p>")
    partner: option<string_>,
    @ocaml.doc("<p>The category type of a signing platform.</p>") category: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Value for specifying the next set of paginated results to return.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of all platforms that match the request parameters.</p>")
    platforms: option<signingPlatforms>,
  }
  @module("@aws-sdk/client-signer") @new external new: request => t = "ListSigningPlatformsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~target=?, ~partner=?, ~category=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      target: target,
      partner: partner,
      category: category,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
