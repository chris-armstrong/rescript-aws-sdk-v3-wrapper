type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-access-analyzer") @new
external createClient: unit => awsServiceClient = "AccessAnalyzerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type valueList = array<baseString>
type validationExceptionReason = [
  | @as("other") #Other
  | @as("fieldValidationFailed") #FieldValidationFailed
  | @as("cannotParse") #CannotParse
  | @as("unknownOperation") #UnknownOperation
]
@ocaml.doc("<p>Contains information about a validation exception.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>A message about the validation exception.</p>") message: baseString,
  @ocaml.doc("<p>The name of the validation exception.</p>") name: baseString,
}
type validatePolicyFindingType = [
  | @as("WARNING") #WARNING
  | @as("SUGGESTION") #SUGGESTION
  | @as("SECURITY_WARNING") #SECURITY_WARNING
  | @as("ERROR") #ERROR
]
type type_ = [@as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type token = string
type timestamp_ = Js.Date.t
type tagsMap = Js.Dict.t<baseString>
type tagKeys = array<baseString>
@ocaml.doc("<p>A reference to a substring of a literal string in a JSON document.</p>")
type substring = {
  @ocaml.doc("<p>The length of the substring.</p>") length: baseInteger,
  @ocaml.doc("<p>The start index of the substring, starting from 0.</p>") start: baseInteger,
}
type sqsQueuePolicy = string
type sharedViaList = array<baseString>
type secretsManagerSecretPolicy = string
type secretsManagerSecretKmsId = string
@ocaml.doc("<p>The <code>PublicAccessBlock</code> configuration to apply to this Amazon S3 bucket. If the
         proposed configuration is for an existing Amazon S3 bucket and the configuration is not
         specified, the access preview uses the existing setting. If the proposed configuration is
         for a new bucket and the configuration is not specified, the access preview uses
            <code>false</code>. If the proposed configuration is for a new access point and the
         access point BPA configuration is not specified, the access preview uses <code>true</code>.
         For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-publicaccessblockconfiguration.html\">PublicAccessBlockConfiguration</a>. </p>")
type s3PublicAccessBlockConfiguration = {
  @ocaml.doc(
    "<p> Specifies whether Amazon S3 should restrict public bucket policies for this bucket. </p>"
  )
  restrictPublicBuckets: baseBoolean,
  @ocaml.doc("<p> Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this
         bucket. </p>")
  ignorePublicAcls: baseBoolean,
}
type s3BucketPolicy = string
type roleArn = string
type retiringPrincipal = string
type resourceType = [
  | @as("AWS::SecretsManager::Secret") #AWS_SecretsManager_Secret
  | @as("AWS::KMS::Key") #AWS_KMS_Key
  | @as("AWS::Lambda::LayerVersion") #AWS_Lambda_LayerVersion
  | @as("AWS::Lambda::Function") #AWS_Lambda_Function
  | @as("AWS::SQS::Queue") #AWS_SQS_Queue
  | @as("AWS::IAM::Role") #AWS_IAM_Role
  | @as("AWS::S3::Bucket") #AWS_S3_Bucket
]
type resourceArn = string
type regionList = array<baseString>
type reasonCode = [
  | @as("SERVICE_LINKED_ROLE_CREATION_FAILED") #SERVICE_LINKED_ROLE_CREATION_FAILED
  | @as("ORGANIZATION_DELETED") #ORGANIZATION_DELETED
  | @as("DELEGATED_ADMINISTRATOR_DEREGISTERED") #DELEGATED_ADMINISTRATOR_DEREGISTERED
  | @as("AWS_SERVICE_ACCESS_DISABLED") #AWS_SERVICE_ACCESS_DISABLED
]
type principalMap = Js.Dict.t<baseString>
type principalArn = string
@ocaml.doc("<p>A position in a policy.</p>")
type position = {
  @ocaml.doc(
    "<p>The offset within the policy that corresponds to the position, starting from 0.</p>"
  )
  offset: baseInteger,
  @ocaml.doc("<p>The column of the position, starting from 0.</p>") column: baseInteger,
  @ocaml.doc("<p>The line of the position, starting from 1.</p>") line: baseInteger,
}
type policyType = [
  | @as("SERVICE_CONTROL_POLICY") #SERVICE_CONTROL_POLICY
  | @as("RESOURCE_POLICY") #RESOURCE_POLICY
  | @as("IDENTITY_POLICY") #IDENTITY_POLICY
]
type policyName = string
type policyDocument = string
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type locale = [
  | @as("ZH_TW") #ZH_TW
  | @as("ZH_CN") #ZH_CN
  | @as("PT_BR") #PT_BR
  | @as("KO") #KO
  | @as("JA") #JA
  | @as("IT") #IT
  | @as("FR") #FR
  | @as("ES") #ES
  | @as("EN") #EN
  | @as("DE") #DE
]
type learnMoreLink = string
type kmsKeyPolicy = string
type kmsGrantOperation = [
  | @as("Verify") #Verify
  | @as("Sign") #Sign
  | @as("RetireGrant") #RetireGrant
  | @as("ReEncryptTo") #ReEncryptTo
  | @as("ReEncryptFrom") #ReEncryptFrom
  | @as("GetPublicKey") #GetPublicKey
  | @as("GenerateDataKeyWithoutPlaintext") #GenerateDataKeyWithoutPlaintext
  | @as("GenerateDataKeyPairWithoutPlaintext") #GenerateDataKeyPairWithoutPlaintext
  | @as("GenerateDataKeyPair") #GenerateDataKeyPair
  | @as("GenerateDataKey") #GenerateDataKey
  | @as("Encrypt") #Encrypt
  | @as("DescribeKey") #DescribeKey
  | @as("Decrypt") #Decrypt
  | @as("CreateGrant") #CreateGrant
]
type kmsConstraintsValue = string
type kmsConstraintsKey = string
type jobStatus = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type jobId = string
type jobErrorCode = [
  | @as("SERVICE_ERROR") #SERVICE_ERROR
  | @as("SERVICE_QUOTA_EXCEEDED_ERROR") #SERVICE_QUOTA_EXCEEDED_ERROR
  | @as("RESOURCE_NOT_FOUND_ERROR") #RESOURCE_NOT_FOUND_ERROR
  | @as("AUTHORIZATION_ERROR") #AUTHORIZATION_ERROR
]
type issuingAccount = string
type issueCode = string
@ocaml.doc("<p>This configuration sets the Amazon S3 access point network origin to
         <code>Internet</code>.</p>")
type internetConfiguration = unit
type iamTrustPolicy = string
type granteePrincipal = string
@ocaml.doc("<p>Contains the text for the generated policy.</p>")
type generatedPolicy = {
  @ocaml.doc("<p>The text to use as the content for the new policy. The policy is created using the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html\">CreatePolicy</a> action.</p>")
  policy: baseString,
}
type findingStatusUpdate = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingStatus = [@as("RESOLVED") #RESOLVED | @as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingSourceType = [
  | @as("S3_ACCESS_POINT") #S3_ACCESS_POINT
  | @as("BUCKET_ACL") #BUCKET_ACL
  | @as("POLICY") #POLICY
]
@ocaml.doc("<p>Includes details about how the access that generated the finding is granted. This is
         populated for Amazon S3 bucket findings.</p>")
type findingSourceDetail = {
  @ocaml.doc("<p>The ARN of the access point that generated the finding.</p>")
  accessPointArn: option<baseString>,
}
type findingId = string
type findingChangeType = [@as("UNCHANGED") #UNCHANGED | @as("NEW") #NEW | @as("CHANGED") #CHANGED]
type configurationsMapKey = string
type conditionKeyMap = Js.Dict.t<baseString>
type cloudTrailArn = string

type analyzerStatus = [
  | @as("FAILED") #FAILED
  | @as("DISABLED") #DISABLED
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type analyzerArn = string

type actionList = array<baseString>
type aclUri = string
type aclPermission = [
  | @as("FULL_CONTROL") #FULL_CONTROL
  | @as("WRITE_ACP") #WRITE_ACP
  | @as("READ_ACP") #READ_ACP
  | @as("WRITE") #WRITE
  | @as("READ") #READ
]
type aclCanonicalId = string
type accessPreviewStatusReasonCode = [
  | @as("INVALID_CONFIGURATION") #INVALID_CONFIGURATION
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
]
type accessPreviewStatus = [
  | @as("FAILED") #FAILED
  | @as("CREATING") #CREATING
  | @as("COMPLETED") #COMPLETED
]
type accessPreviewId = string
type accessPreviewFindingId = string
type accessPointPolicy = string
type accessPointArn = string
@ocaml.doc("<p> The proposed virtual private cloud (VPC) configuration for the Amazon S3 access point. For
         more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_VpcConfiguration.html\">VpcConfiguration</a>.
      </p>")
type vpcConfiguration = {
  @ocaml.doc("<p> If this field is specified, this access point will only allow connections from the
         specified VPC ID. </p>")
  vpcId: vpcId,
}
type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc(
  "<p>Contains details about the CloudTrail trail being analyzed to generate a policy.</p>"
)
type trailProperties = {
  @ocaml.doc("<p>Possible values are <code>true</code> or <code>false</code>. If set to
         <code>true</code>, Access Analyzer retrieves CloudTrail data from all regions to analyze and
         generate a policy.</p>")
  allRegions: option<baseBoolean>,
  @ocaml.doc(
    "<p>A list of regions to get CloudTrail data from and analyze to generate a policy.</p>"
  )
  regions: option<regionList>,
  @ocaml.doc("<p>Specifies the ARN of the trail. The format of a trail ARN is
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>.</p>")
  cloudTrailArn: cloudTrailArn,
}
@ocaml.doc(
  "<p>Contains details about the CloudTrail trail being analyzed to generate a policy.</p>"
)
type trail = {
  @ocaml.doc("<p>Possible values are <code>true</code> or <code>false</code>. If set to
         <code>true</code>, Access Analyzer retrieves CloudTrail data from all regions to analyze and
         generate a policy.</p>")
  allRegions: option<baseBoolean>,
  @ocaml.doc(
    "<p>A list of regions to get CloudTrail data from and analyze to generate a policy.</p>"
  )
  regions: option<regionList>,
  @ocaml.doc("<p>Specifies the ARN of the trail. The format of a trail ARN is
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>.</p>")
  cloudTrailArn: cloudTrailArn,
}
@ocaml.doc("<p>Provides more details about the current status of the analyzer. For example, if the
         creation for the analyzer fails, a <code>Failed</code> status is returned. For an analyzer
         with organization as the type, this failure can be due to an issue with creating the
         service-linked roles required in the member accounts of the AWS organization.</p>")
type statusReason = {
  @ocaml.doc("<p>The reason code for the current status of the analyzer.</p>") code: reasonCode,
}
@ocaml.doc("<p>The proposed access control configuration for an SQS queue. You can propose a
         configuration for a new SQS queue or an existing SQS queue that you own by specifying the
         SQS policy. If the configuration is for an existing SQS queue and you do not specify the
         SQS policy, the access preview uses the existing SQS policy for the queue. If the access
         preview is for a new resource and you do not specify the policy, the access preview assumes
         an SQS queue without a policy. To propose deletion of an existing SQS queue policy, you can
         specify an empty string for the SQS policy. For more information about SQS policy limits,
         see <a href=\"https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-policies.html\">Quotas related
            to policies</a>.</p>")
type sqsQueueConfiguration = {
  @ocaml.doc("<p> The proposed resource policy for the SQS queue. </p>")
  queuePolicy: option<sqsQueuePolicy>,
}
@ocaml.doc("<p>A span in a policy. The span consists of a start position (inclusive) and end position
         (exclusive).</p>")
type span = {
  @ocaml.doc("<p>The end position of the span (exclusive).</p>") end: position,
  @ocaml.doc("<p>The start position of the span (inclusive).</p>") start: position,
}
@ocaml.doc("<p>The criteria used to sort.</p>")
type sortCriteria = {
  @ocaml.doc("<p>The sort order, ascending or descending.</p>") orderBy: option<orderBy>,
  @ocaml.doc("<p>The name of the attribute to sort on.</p>") attributeName: option<baseString>,
}
@ocaml.doc("<p>The configuration for a Secrets Manager secret. For more information, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html\">CreateSecret</a>.</p>
         <p>You can propose a configuration for a new secret or an existing secret that you own by
         specifying the secret policy and optional KMS encryption key. If the configuration is for
         an existing secret and you do not specify the secret policy, the access preview uses the
         existing policy for the secret. If the access preview is for a new resource and you do not
         specify the policy, the access preview assumes a secret without a policy. To propose
         deletion of an existing policy, you can specify an empty string. If the proposed
         configuration is for a new secret and you do not specify the KMS key ID, the access preview
         uses the default CMK of the AWS account. If you specify an empty string for the KMS key
         ID, the access preview uses the default CMK of the AWS account. For more information
         about secret policy limits, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_limits.html\">Quotas for AWS Secrets
            Manager.</a>.</p>")
type secretsManagerSecretConfiguration = {
  @ocaml.doc("<p>The proposed resource policy defining who can access or manage the secret.</p>")
  secretPolicy: option<secretsManagerSecretPolicy>,
  @ocaml.doc("<p>The proposed ARN, key ID, or alias of the AWS KMS customer master key (CMK).</p>")
  kmsKeyId: option<secretsManagerSecretKmsId>,
}
@ocaml.doc("<p>Contains the ARN details about the IAM entity for which the policy is
         generated.</p>")
type policyGenerationDetails = {
  @ocaml.doc(
    "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>"
  )
  principalArn: principalArn,
}
@ocaml.doc("<p>Contains details about the policy generation status and properties.</p>")
type policyGeneration = {
  @ocaml.doc("<p>A timestamp of when the policy generation was completed.</p>")
  completedOn: option<timestamp_>,
  @ocaml.doc("<p>A timestamp of when the policy generation started.</p>") startedOn: timestamp_,
  @ocaml.doc("<p>The status of the policy generation request.</p>") status: jobStatus,
  @ocaml.doc(
    "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>"
  )
  principalArn: principalArn,
  @ocaml.doc("<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
         operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
         retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
         the policy generation request.</p>")
  jobId: jobId,
}
@ocaml.doc("<p>A single element in a path through the JSON representation of a policy.</p>")
type pathElement = {
  @ocaml.doc("<p>Refers to the value associated with a given key in a JSON object.</p>")
  value: option<baseString>,
  @ocaml.doc("<p>Refers to a substring of a literal string in a JSON object.</p>")
  substring: option<substring>,
  @ocaml.doc("<p>Refers to a key in a JSON object.</p>") key: option<baseString>,
  @ocaml.doc("<p>Refers to an index in a JSON array.</p>") index: option<baseInteger>,
}
module PathElement = {
  type t = Value(baseString) | Substring(substring) | Key(baseString) | Index(baseInteger)
  exception PathElementUnspecified
  let classify = value =>
    switch value {
    | {value: Some(x)} => Value(x)
    | {substring: Some(x)} => Substring(x)
    | {key: Some(x)} => Key(x)
    | {index: Some(x)} => Index(x)
    | _ => raise(PathElementUnspecified)
    }

  let make = value =>
    switch value {
    | Value(x) => {value: Some(x), substring: None, key: None, index: None}
    | Substring(x) => {substring: Some(x), value: None, key: None, index: None}
    | Key(x) => {key: Some(x), value: None, substring: None, index: None}
    | Index(x) => {index: Some(x), value: None, substring: None, key: None}
    }
}
type kmsKeyPoliciesMap = Js.Dict.t<kmsKeyPolicy>
type kmsGrantOperationsList = array<kmsGrantOperation>
type kmsConstraintsMap = Js.Dict.t<kmsConstraintsValue>
@ocaml.doc("<p>Contains the details about the policy generation error.</p>")
type jobError = {
  @ocaml.doc("<p>Specific information about the error. For example, which service quota was exceeded or
         which resource was not found.</p>")
  message: baseString,
  @ocaml.doc("<p>The job error code.</p>") code: jobErrorCode,
}
@ocaml.doc("<p>The proposed access control configuration for an IAM role. You can propose a
         configuration for a new IAM role or an existing IAM role that you own by specifying the
         trust policy. If the configuration is for a new IAM role, you must specify the trust
         policy. If the configuration is for an existing IAM role that you own and you do not
         propose the trust policy, the access preview uses the existing trust policy for the role.
         The proposed trust policy cannot be an empty string. For more information about role trust
         policy limits, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS
         quotas</a>.</p>")
type iamRoleConfiguration = {
  @ocaml.doc("<p>The proposed trust policy for the IAM role.</p>")
  trustPolicy: option<iamTrustPolicy>,
}
type generatedPolicyList = array<generatedPolicy>
@ocaml.doc("<p>The source of the finding. This indicates how the access that generated the finding is
         granted. It is populated for Amazon S3 bucket findings.</p>")
type findingSource = {
  @ocaml.doc("<p>Includes details about how the access that generated the finding is granted. This is
         populated for Amazon S3 bucket findings.</p>")
  detail: option<findingSourceDetail>,
  @ocaml.doc("<p>Indicates the type of access that generated the finding.</p>") @as("type")
  type_: findingSourceType,
}
type findingIdList = array<findingId>
@ocaml.doc("<p>The criteria to use in the filter that defines the archive rule.</p>")
type criterion = {
  @ocaml.doc("<p>An \"exists\" operator to match for the filter used to create the rule. </p>")
  exists: option<baseBoolean>,
  @ocaml.doc("<p>A \"contains\" operator to match for the filter used to create the rule.</p>")
  contains: option<valueList>,
  @ocaml.doc("<p>A \"not equals\" operator to match for the filter used to create the rule.</p>")
  neq: option<valueList>,
  @ocaml.doc("<p>An \"equals\" operator to match for the filter used to create the rule.</p>")
  eq: option<valueList>,
}
@ocaml.doc("<p>Contains the ARN of the analyzed resource.</p>")
type analyzedResourceSummary = {
  @ocaml.doc("<p>The type of resource that was analyzed.</p>") resourceType: resourceType,
  @ocaml.doc("<p>The AWS account ID that owns the resource.</p>") resourceOwnerAccount: baseString,
  @ocaml.doc("<p>The ARN of the analyzed resource.</p>") resourceArn: resourceArn,
}
@ocaml.doc("<p>Contains details about the analyzed resource.</p>")
type analyzedResource = {
  @ocaml.doc("<p>An error message.</p>") error: option<baseString>,
  @ocaml.doc("<p>The AWS account ID that owns the resource.</p>") resourceOwnerAccount: baseString,
  @ocaml.doc("<p>The current status of the finding generated from the analyzed resource.</p>")
  status: option<findingStatus>,
  @ocaml.doc("<p>Indicates how the access that generated the finding is granted. This is populated for
         Amazon S3 bucket findings.</p>")
  sharedVia: option<sharedViaList>,
  @ocaml.doc("<p>The actions that an external principal is granted permission to use by the policy that
         generated the finding.</p>")
  actions: option<actionList>,
  @ocaml.doc("<p>Indicates whether the policy that generated the finding grants public access to the
         resource.</p>")
  isPublic: baseBoolean,
  @ocaml.doc("<p>The time at which the finding was updated.</p>") updatedAt: timestamp_,
  @ocaml.doc("<p>The time at which the resource was analyzed.</p>") analyzedAt: timestamp_,
  @ocaml.doc("<p>The time at which the finding was created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The type of the resource that was analyzed.</p>") resourceType: resourceType,
  @ocaml.doc("<p>The ARN of the resource that was analyzed.</p>") resourceArn: resourceArn,
}
@ocaml.doc("<p>You specify each grantee as a type-value pair using one of these types. You can specify
         only one type of grantee. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAcl.html\">PutBucketAcl</a>.</p>")
type aclGrantee = {
  @ocaml.doc("<p>Used for granting permissions to a predefined group.</p>") uri: option<aclUri>,
  @ocaml.doc("<p>The value specified is the canonical user ID of an AWS account.</p>")
  id: option<aclCanonicalId>,
}
module AclGrantee = {
  type t = Uri(aclUri) | Id(aclCanonicalId)
  exception AclGranteeUnspecified
  let classify = value =>
    switch value {
    | {uri: Some(x)} => Uri(x)
    | {id: Some(x)} => Id(x)
    | _ => raise(AclGranteeUnspecified)
    }

  let make = value =>
    switch value {
    | Uri(x) => {uri: Some(x), id: None}
    | Id(x) => {id: Some(x), uri: None}
    }
}
@ocaml.doc("<p>Provides more details about the current status of the access preview. For example, if
         the creation of the access preview fails, a <code>Failed</code> status is returned. This
         failure can be due to an internal issue with the analysis or due to an invalid proposed
         resource configuration.</p>")
type accessPreviewStatusReason = {
  @ocaml.doc("<p>The reason code for the current status of the access preview.</p>")
  code: accessPreviewStatusReasonCode,
}
type trailPropertiesList = array<trailProperties>
type trailList = array<trail>
@ocaml.doc("<p>A proposed access control list grant configuration for an Amazon S3 bucket. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#setting-acls\">How to Specify an
         ACL</a>.</p>")
type s3BucketAclGrantConfiguration = {
  @ocaml.doc("<p>The grantee to whom you’re assigning access rights.</p>") grantee: aclGrantee,
  @ocaml.doc("<p>The permissions being granted.</p>") permission: aclPermission,
}
type policyGenerationList = array<policyGeneration>
type pathElementList = array<pathElement>
@ocaml.doc("<p>The proposed <code>InternetConfiguration</code> or <code>VpcConfiguration</code> to
         apply to the Amazon S3 Access point. You can make the access point accessible from the internet,
         or you can specify that all requests made through that access point must originate from a
         specific virtual private cloud (VPC). You can specify only one type of network
         configuration. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/creating-access-points.html\">Creating access
         points</a>.</p>")
type networkOriginConfiguration = {
  @ocaml.doc(
    "<p>The configuration for the Amazon S3 access point with an <code>Internet</code> origin.</p>"
  )
  internetConfiguration: option<internetConfiguration>,
  vpcConfiguration: option<vpcConfiguration>,
}
module NetworkOriginConfiguration = {
  type t = InternetConfiguration(internetConfiguration) | VpcConfiguration(vpcConfiguration)
  exception NetworkOriginConfigurationUnspecified
  let classify = value =>
    switch value {
    | {internetConfiguration: Some(x)} => InternetConfiguration(x)
    | {vpcConfiguration: Some(x)} => VpcConfiguration(x)
    | _ => raise(NetworkOriginConfigurationUnspecified)
    }

  let make = value =>
    switch value {
    | InternetConfiguration(x) => {internetConfiguration: Some(x), vpcConfiguration: None}
    | VpcConfiguration(x) => {vpcConfiguration: Some(x), internetConfiguration: None}
    }
}
@ocaml.doc("<p>Use this structure to propose allowing <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic
            operations</a> in the grant only when the operation request includes the specified
            <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">encryption
         context</a>. You can specify only one type of encryption context. An empty map is
         treated as not specified. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_GrantConstraints.html\">GrantConstraints</a>.</p>")
type kmsGrantConstraints = {
  @ocaml.doc("<p>A list of key-value pairs that must be included in the encryption context of the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic
            operation</a> request. The grant allows the cryptographic operation only when the
         encryption context in the request includes the key-value pairs specified in this
         constraint, although it can include additional key-value pairs.</p>")
  encryptionContextSubset: option<kmsConstraintsMap>,
  @ocaml.doc("<p>A list of key-value pairs that must match the encryption context in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic
            operation</a> request. The grant allows the operation only when the encryption
         context in the request is the same as the encryption context specified in this
         constraint.</p>")
  encryptionContextEquals: option<kmsConstraintsMap>,
}
@ocaml.doc("<p>Contains details about the policy generation request.</p>")
type jobDetails = {
  jobError: option<jobError>,
  @ocaml.doc("<p>A timestamp of when the job was completed.</p>") completedOn: option<timestamp_>,
  @ocaml.doc("<p>A timestamp of when the job was started.</p>") startedOn: timestamp_,
  @ocaml.doc("<p>The status of the job request.</p>") status: jobStatus,
  @ocaml.doc("<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
         operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
         retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
         the policy generation request.</p>")
  jobId: jobId,
}
type findingSourceList = array<findingSource>
type filterCriteriaMap = Js.Dict.t<criterion>
@ocaml.doc("<p>Contains information about the analyzer.</p>")
type analyzerSummary = {
  @ocaml.doc("<p>The <code>statusReason</code> provides more details about the current status of the
         analyzer. For example, if the creation for the analyzer fails, a <code>Failed</code> status
         is returned. For an analyzer with organization as the type, this failure can be due to an
         issue with creating the service-linked roles required in the member accounts of the AWS
         organization.</p>")
  statusReason: option<statusReason>,
  @ocaml.doc("<p>The status of the analyzer. An <code>Active</code> analyzer successfully monitors
         supported resources and generates new findings. The analyzer is <code>Disabled</code> when
         a user action, such as removing trusted access for AWS IAM Access Analyzer from AWS Organizations,
         causes the analyzer to stop generating new findings. The status is <code>Creating</code>
         when the analyzer creation is in progress and <code>Failed</code> when the analyzer
         creation has failed. </p>")
  status: analyzerStatus,
  @ocaml.doc("<p>The tags added to the analyzer.</p>") tags: option<tagsMap>,
  @ocaml.doc("<p>The time at which the most recently analyzed resource was analyzed.</p>")
  lastResourceAnalyzedAt: option<timestamp_>,
  @ocaml.doc("<p>The resource that was most recently analyzed by the analyzer.</p>")
  lastResourceAnalyzed: option<baseString>,
  @ocaml.doc("<p>A timestamp for the time at which the analyzer was created.</p>")
  createdAt: timestamp_,
  @ocaml.doc("<p>The type of analyzer, which corresponds to the zone of trust chosen for the
         analyzer.</p>")
  @as("type")
  type_: type_,
  @ocaml.doc("<p>The name of the analyzer.</p>") name: name,
  @ocaml.doc("<p>The ARN of the analyzer.</p>") arn: analyzerArn,
}
type analyzedResourcesList = array<analyzedResourceSummary>
@ocaml.doc("<p>Contains a summary of information about an access preview.</p>")
type accessPreviewSummary = {
  statusReason: option<accessPreviewStatusReason>,
  @ocaml.doc("<p>The status of the access preview.</p>
         <ul>
            <li>
               <p>
                  <code>Creating</code> - The access preview creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>Completed</code> - The access preview is complete and previews the findings
               for external access to the resource.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - The access preview creation has failed.</p>
            </li>
         </ul>")
  status: accessPreviewStatus,
  @ocaml.doc("<p>The time at which the access preview was created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The ARN of the analyzer used to generate the access preview.</p>")
  analyzerArn: analyzerArn,
  @ocaml.doc("<p>The unique ID for the access preview.</p>") id: accessPreviewId,
}
type s3BucketAclGrantConfigurationsList = array<s3BucketAclGrantConfiguration>
@ocaml.doc("<p>The configuration for an Amazon S3 access point for the bucket. You can propose up to 10
         access points per bucket. If the proposed Amazon S3 access point configuration is for an
         existing bucket, the access preview uses the proposed access point configuration in place
         of the existing access points. To propose an access point without a policy, you can provide
         an empty string as the access point policy. For more information, see <a href=\"https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonS3/latest/dev/creating-access-points.html\">Creating access points</a>. For more information about access point policy limits,
         see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points-restrictions-limitations.html\">Access points
            restrictions and limitations</a>.</p>")
type s3AccessPointConfiguration = {
  @ocaml.doc("<p>The proposed <code>Internet</code> and <code>VpcConfiguration</code> to apply to this
         Amazon S3 access point. If the access preview is for a new resource and neither is specified,
         the access preview uses <code>Internet</code> for the network origin. If the access preview
         is for an existing resource and neither is specified, the access preview uses the exiting
         network origin.</p>")
  networkOrigin: option<networkOriginConfiguration>,
  @ocaml.doc("<p>The proposed <code>S3PublicAccessBlock</code> configuration to apply to this Amazon S3 Access
         Point.</p>")
  publicAccessBlock: option<s3PublicAccessBlockConfiguration>,
  @ocaml.doc("<p>The access point policy.</p>") accessPointPolicy: option<accessPointPolicy>,
}
@ocaml.doc("<p>A location in a policy that is represented as a path through the JSON representation and
         a corresponding span.</p>")
type location = {
  @ocaml.doc("<p>A span in a policy.</p>") span: span,
  @ocaml.doc("<p>A path in a policy, represented as a sequence of path elements.</p>")
  path: pathElementList,
}
@ocaml.doc(
  "<p>A proposed grant configuration for a KMS key. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html\">CreateGrant</a>.</p>"
)
type kmsGrantConfiguration = {
  @ocaml.doc("<p> The AWS account under which the grant was issued. The account is used to propose KMS
         grants issued by accounts other than the owner of the key.</p>")
  issuingAccount: issuingAccount,
  @ocaml.doc("<p>Use this structure to propose allowing <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic
            operations</a> in the grant only when the operation request includes the specified
            <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">encryption
         context</a>.</p>")
  constraints: option<kmsGrantConstraints>,
  @ocaml.doc(
    "<p>The principal that is given permission to retire the grant by using <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html\">RetireGrant</a> operation.</p>"
  )
  retiringPrincipal: option<retiringPrincipal>,
  @ocaml.doc("<p>The principal that is given permission to perform the operations that the grant
         permits.</p>")
  granteePrincipal: granteePrincipal,
  @ocaml.doc("<p>A list of operations that the grant permits.</p>")
  operations: kmsGrantOperationsList,
}
@ocaml.doc("<p>An criterion statement in an archive rule. Each archive rule may have multiple
         criteria.</p>")
type inlineArchiveRule = {
  @ocaml.doc("<p>The condition and values for a criterion.</p>") filter: filterCriteriaMap,
  @ocaml.doc("<p>The name of the rule.</p>") ruleName: name,
}
@ocaml.doc("<p>Contains information about a finding.</p>")
type findingSummary = {
  @ocaml.doc("<p>The sources of the finding. This indicates how the access that generated the finding is
         granted. It is populated for Amazon S3 bucket findings.</p>")
  sources: option<findingSourceList>,
  @ocaml.doc("<p>The error that resulted in an Error finding.</p>") error: option<baseString>,
  @ocaml.doc("<p>The AWS account ID that owns the resource.</p>") resourceOwnerAccount: baseString,
  @ocaml.doc("<p>The status of the finding.</p>") status: findingStatus,
  @ocaml.doc("<p>The time at which the finding was most recently updated.</p>")
  updatedAt: timestamp_,
  @ocaml.doc("<p>The time at which the resource-based policy that generated the finding was
         analyzed.</p>")
  analyzedAt: timestamp_,
  @ocaml.doc("<p>The time at which the finding was created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The condition in the analyzed policy statement that resulted in a finding.</p>")
  condition: conditionKeyMap,
  @ocaml.doc("<p>The type of the resource that the external principal has access to.</p>")
  resourceType: resourceType,
  @ocaml.doc("<p>Indicates whether the finding reports a resource that has a policy that allows public
         access.</p>")
  isPublic: option<baseBoolean>,
  @ocaml.doc("<p>The resource that the external principal has access to.</p>")
  resource: option<baseString>,
  @ocaml.doc("<p>The action in the analyzed policy statement that an external principal has permission to
         use.</p>")
  action: option<actionList>,
  @ocaml.doc(
    "<p>The external principal that has access to a resource within the zone of trust.</p>"
  )
  principal: option<principalMap>,
  @ocaml.doc("<p>The ID of the finding.</p>") id: findingId,
}
@ocaml.doc("<p>Contains information about a finding.</p>")
type finding = {
  @ocaml.doc("<p>The sources of the finding. This indicates how the access that generated the finding is
         granted. It is populated for Amazon S3 bucket findings.</p>")
  sources: option<findingSourceList>,
  @ocaml.doc("<p>An error.</p>") error: option<baseString>,
  @ocaml.doc("<p>The AWS account ID that owns the resource.</p>") resourceOwnerAccount: baseString,
  @ocaml.doc("<p>The current status of the finding.</p>") status: findingStatus,
  @ocaml.doc("<p>The time at which the finding was updated.</p>") updatedAt: timestamp_,
  @ocaml.doc("<p>The time at which the resource was analyzed.</p>") analyzedAt: timestamp_,
  @ocaml.doc("<p>The time at which the finding was generated.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>The condition in the analyzed policy statement that resulted in a finding.</p>")
  condition: conditionKeyMap,
  @ocaml.doc("<p>The type of the resource identified in the finding.</p>")
  resourceType: resourceType,
  @ocaml.doc("<p>Indicates whether the policy that generated the finding allows public access to the
         resource.</p>")
  isPublic: option<baseBoolean>,
  @ocaml.doc("<p>The resource that an external principal has access to.</p>")
  resource: option<baseString>,
  @ocaml.doc("<p>The action in the analyzed policy statement that an external principal has permission to
         use.</p>")
  action: option<actionList>,
  @ocaml.doc("<p>The external principal that access to a resource within the zone of trust.</p>")
  principal: option<principalMap>,
  @ocaml.doc("<p>The ID of the finding.</p>") id: findingId,
}
@ocaml.doc("<p>Contains information about CloudTrail access.</p>")
type cloudTrailProperties = {
  @ocaml.doc("<p>The end of the time range for which Access Analyzer reviews your CloudTrail events. Events with
         a timestamp after this time are not considered to generate a policy. If this is not
         included in the request, the default value is the current time.</p>")
  endTime: timestamp_,
  @ocaml.doc("<p>The start of the time range for which Access Analyzer reviews your CloudTrail events. Events
         with a timestamp before this time are not considered to generate a policy.</p>")
  startTime: timestamp_,
  @ocaml.doc("<p>A <code>TrailProperties</code> object that contains settings for trail
         properties.</p>")
  trailProperties: trailPropertiesList,
}
@ocaml.doc("<p>Contains information about CloudTrail access.</p>")
type cloudTrailDetails = {
  @ocaml.doc("<p>The end of the time range for which Access Analyzer reviews your CloudTrail events. Events with
         a timestamp after this time are not considered to generate a policy. If this is not
         included in the request, the default value is the current time.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The start of the time range for which Access Analyzer reviews your CloudTrail events. Events
         with a timestamp before this time are not considered to generate a policy.</p>")
  startTime: timestamp_,
  @ocaml.doc("<p>The ARN of the service role that Access Analyzer uses to access your CloudTrail trail and
         service last accessed information.</p>")
  accessRole: roleArn,
  @ocaml.doc("<p>A <code>Trail</code> object that contains settings for a trail.</p>")
  trails: trailList,
}
@ocaml.doc("<p>Contains information about an archive rule.</p>")
type archiveRuleSummary = {
  @ocaml.doc("<p>The time at which the archive rule was last updated.</p>") updatedAt: timestamp_,
  @ocaml.doc("<p>The time at which the archive rule was created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>A filter used to define the archive rule.</p>") filter: filterCriteriaMap,
  @ocaml.doc("<p>The name of the archive rule.</p>") ruleName: name,
}
type analyzersList = array<analyzerSummary>
type accessPreviewsList = array<accessPreviewSummary>
@ocaml.doc("<p>An access preview finding generated by the access preview.</p>")
type accessPreviewFinding = {
  @ocaml.doc("<p>The sources of the finding. This indicates how the access that generated the finding is
         granted. It is populated for Amazon S3 bucket findings.</p>")
  sources: option<findingSourceList>,
  @ocaml.doc("<p>An error.</p>") error: option<baseString>,
  @ocaml.doc("<p>The AWS account ID that owns the resource. For most AWS resources, the owning
         account is the account in which the resource was created.</p>")
  resourceOwnerAccount: baseString,
  @ocaml.doc("<p>The preview status of the finding. This is what the status of the finding would be after
         permissions deployment. For example, a <code>Changed</code> finding with preview status
            <code>Resolved</code> and existing status <code>Active</code> indicates the existing
            <code>Active</code> finding would become <code>Resolved</code> as a result of the
         proposed permissions change.</p>")
  status: findingStatus,
  @ocaml.doc("<p>Provides context on how the access preview finding compares to existing access
         identified in Access Analyzer.</p>
         <ul>
            <li>
               <p>
                  <code>New</code> - The finding is for newly-introduced access.</p>
            </li>
            <li>
               <p>
                  <code>Unchanged</code> - The preview finding is an existing finding that would
               remain unchanged.</p>
            </li>
            <li>
               <p>
                  <code>Changed</code> - The preview finding is an existing finding with a change in
               status.</p>
            </li>
         </ul>
         <p>For example, a <code>Changed</code> finding with preview status <code>Resolved</code>
         and existing status <code>Active</code> indicates the existing <code>Active</code> finding
         would become <code>Resolved</code> as a result of the proposed permissions change.</p>")
  changeType: findingChangeType,
  @ocaml.doc("<p>The time at which the access preview finding was created.</p>")
  createdAt: timestamp_,
  @ocaml.doc("<p>The type of the resource that can be accessed in the finding.</p>")
  resourceType: resourceType,
  @ocaml.doc("<p>Indicates whether the policy that generated the finding allows public access to the
         resource.</p>")
  isPublic: option<baseBoolean>,
  @ocaml.doc("<p>The resource that an external principal has access to. This is the resource associated
         with the access preview.</p>")
  resource: option<baseString>,
  @ocaml.doc("<p>The condition in the analyzed policy statement that resulted in a finding.</p>")
  condition: option<conditionKeyMap>,
  @ocaml.doc("<p>The action in the analyzed policy statement that an external principal has permission to
         perform.</p>")
  action: option<actionList>,
  @ocaml.doc(
    "<p>The external principal that has access to a resource within the zone of trust.</p>"
  )
  principal: option<principalMap>,
  @ocaml.doc("<p>The existing status of the finding, provided only for existing findings.</p>")
  existingFindingStatus: option<findingStatus>,
  @ocaml.doc(
    "<p>The existing ID of the finding in Access Analyzer, provided only for existing findings.</p>"
  )
  existingFindingId: option<findingId>,
  @ocaml.doc("<p>The ID of the access preview finding. This ID uniquely identifies the element in the
         list of access preview findings and is not related to the finding ID in Access
         Analyzer.</p>")
  id: accessPreviewFindingId,
}
type s3AccessPointConfigurationsMap = Js.Dict.t<s3AccessPointConfiguration>
type locationList = array<location>
type kmsGrantConfigurationsList = array<kmsGrantConfiguration>
type inlineArchiveRulesList = array<inlineArchiveRule>
@ocaml.doc("<p>Contains the generated policy details.</p>")
type generatedPolicyProperties = {
  @ocaml.doc("<p>Lists details about the <code>Trail</code> used to generated policy.</p>")
  cloudTrailProperties: option<cloudTrailProperties>,
  @ocaml.doc(
    "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>"
  )
  principalArn: principalArn,
  @ocaml.doc("<p>This value is set to <code>true</code> if the generated policy contains all possible actions for a
         service that Access Analyzer identified from the CloudTrail trail that you specified, and
         <code>false</code> otherwise.</p>")
  isComplete: option<baseBoolean>,
}
type findingsList = array<findingSummary>
type archiveRulesList = array<archiveRuleSummary>
type accessPreviewFindingsList = array<accessPreviewFinding>
@ocaml.doc("<p>A finding in a policy. Each finding is an actionable recommendation that can be used to
         improve the policy.</p>")
type validatePolicyFinding = {
  @ocaml.doc("<p>The list of locations in the policy document that are related to the finding. The issue
         code provides a summary of an issue identified by the finding.</p>")
  locations: locationList,
  @ocaml.doc("<p>A link to additional documentation about the type of finding.</p>")
  learnMoreLink: learnMoreLink,
  @ocaml.doc(
    "<p>The issue code provides an identifier of the issue associated with this finding.</p>"
  )
  issueCode: issueCode,
  @ocaml.doc("<p>The impact of the finding.</p>
         <p>Security warnings report when the policy allows access that we consider overly
         permissive.</p>
         <p>Errors report when a part of the policy is not functional.</p>
         <p>Warnings report non-security issues when a policy does not conform to policy writing
         best practices.</p>
         <p>Suggestions recommend stylistic improvements in the policy that do not impact
         access.</p>")
  findingType: validatePolicyFindingType,
  @ocaml.doc("<p>A localized message that explains the finding and provides guidance on how to address
         it.</p>")
  findingDetails: baseString,
}
@ocaml.doc("<p>Proposed access control configuration for an Amazon S3 bucket. You can propose a
         configuration for a new Amazon S3 bucket or an existing Amazon S3 bucket that you own by specifying
         the Amazon S3 bucket policy, bucket ACLs, bucket BPA settings, and Amazon S3 access points attached
         to the bucket. If the configuration is for an existing Amazon S3 bucket and you do not specify
         the Amazon S3 bucket policy, the access preview uses the existing policy attached to the bucket.
         If the access preview is for a new resource and you do not specify the Amazon S3 bucket policy,
         the access preview assumes a bucket without a policy. To propose deletion of an existing
         bucket policy, you can specify an empty string. For more information about bucket policy
         limits, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html\">Bucket Policy
         Examples</a>.</p>")
type s3BucketConfiguration = {
  @ocaml.doc("<p>The configuration of Amazon S3 access points for the bucket.</p>")
  accessPoints: option<s3AccessPointConfigurationsMap>,
  @ocaml.doc("<p>The proposed block public access configuration for the Amazon S3 bucket.</p>")
  bucketPublicAccessBlock: option<s3PublicAccessBlockConfiguration>,
  @ocaml.doc("<p>The proposed list of ACL grants for the Amazon S3 bucket. You can propose up to 100 ACL
         grants per bucket. If the proposed grant configuration is for an existing bucket, the
         access preview uses the proposed list of grant configurations in place of the existing
         grants. Otherwise, the access preview uses the existing grants for the bucket.</p>")
  bucketAclGrants: option<s3BucketAclGrantConfigurationsList>,
  @ocaml.doc("<p>The proposed bucket policy for the Amazon S3 bucket.</p>")
  bucketPolicy: option<s3BucketPolicy>,
}
@ocaml.doc("<p>Proposed access control configuration for a KMS key. You can propose a configuration for
         a new KMS key or an existing KMS key that you own by specifying the key policy and KMS
         grant configuration. If the configuration is for an existing key and you do not specify the
         key policy, the access preview uses the existing policy for the key. If the access preview
         is for a new resource and you do not specify the key policy, then the access preview uses
         the default key policy. The proposed key policy cannot be an empty string. For more
         information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default\">Default key
            policy</a>. For more information about key policy limits, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/resource-limits.html\">Resource
            quotas</a>.</p>
         <p/>")
type kmsKeyConfiguration = {
  @ocaml.doc("<p>A list of proposed grant configurations for the KMS key. If the proposed grant
         configuration is for an existing key, the access preview uses the proposed list of grant
         configurations in place of the existing grants. Otherwise, the access preview uses the
         existing grants for the key.</p>")
  grants: option<kmsGrantConfigurationsList>,
  @ocaml.doc("<p>Resource policy configuration for the KMS key. The only valid value for the name of the
         key policy is <code>default</code>. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default\">Default key
            policy</a>.</p>")
  keyPolicies: option<kmsKeyPoliciesMap>,
}
@ocaml.doc("<p>Contains the text for the generated policy and its details.</p>")
type generatedPolicyResult = {
  @ocaml.doc("<p>The text to use as the content for the new policy. The policy is created using the
            <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html\">CreatePolicy</a> action.</p>")
  generatedPolicies: option<generatedPolicyList>,
  @ocaml.doc("<p>A <code>GeneratedPolicyProperties</code> object that contains properties of the
         generated policy.</p>")
  properties: generatedPolicyProperties,
}
type validatePolicyFindingList = array<validatePolicyFinding>
@ocaml.doc("<p>Access control configuration structures for your resource. You specify the configuration
         as a type-value pair. You can specify only one type of access control configuration.</p>")
type configuration = {
  @ocaml.doc("<p>The access control configuration is for an SQS queue. </p>")
  sqsQueue: option<sqsQueueConfiguration>,
  @ocaml.doc("<p>The access control configuration is for an Amazon S3 Bucket. </p>")
  s3Bucket: option<s3BucketConfiguration>,
  @ocaml.doc("<p>The access control configuration is for a Secrets Manager secret.</p>")
  secretsManagerSecret: option<secretsManagerSecretConfiguration>,
  @ocaml.doc("<p>The access control configuration is for a KMS key. </p>")
  kmsKey: option<kmsKeyConfiguration>,
  @ocaml.doc("<p>The access control configuration is for an IAM role. </p>")
  iamRole: option<iamRoleConfiguration>,
}
module Configuration = {
  type t =
    | SqsQueue(sqsQueueConfiguration)
    | S3Bucket(s3BucketConfiguration)
    | SecretsManagerSecret(secretsManagerSecretConfiguration)
    | KmsKey(kmsKeyConfiguration)
    | IamRole(iamRoleConfiguration)
  exception ConfigurationUnspecified
  let classify = value =>
    switch value {
    | {sqsQueue: Some(x)} => SqsQueue(x)
    | {s3Bucket: Some(x)} => S3Bucket(x)
    | {secretsManagerSecret: Some(x)} => SecretsManagerSecret(x)
    | {kmsKey: Some(x)} => KmsKey(x)
    | {iamRole: Some(x)} => IamRole(x)
    | _ => raise(ConfigurationUnspecified)
    }

  let make = value =>
    switch value {
    | SqsQueue(x) => {
        sqsQueue: Some(x),
        s3Bucket: None,
        secretsManagerSecret: None,
        kmsKey: None,
        iamRole: None,
      }
    | S3Bucket(x) => {
        s3Bucket: Some(x),
        sqsQueue: None,
        secretsManagerSecret: None,
        kmsKey: None,
        iamRole: None,
      }
    | SecretsManagerSecret(x) => {
        secretsManagerSecret: Some(x),
        sqsQueue: None,
        s3Bucket: None,
        kmsKey: None,
        iamRole: None,
      }
    | KmsKey(x) => {
        kmsKey: Some(x),
        sqsQueue: None,
        s3Bucket: None,
        secretsManagerSecret: None,
        iamRole: None,
      }
    | IamRole(x) => {
        iamRole: Some(x),
        sqsQueue: None,
        s3Bucket: None,
        secretsManagerSecret: None,
        kmsKey: None,
      }
    }
}
type configurationsMap = Js.Dict.t<configuration>
@ocaml.doc("<p>Contains information about an access preview.</p>")
type accessPreview = {
  @ocaml.doc("<p>Provides more details about the current status of the access preview.</p>
         <p>For example, if the creation of the access preview fails, a <code>Failed</code> status
         is returned. This failure can be due to an internal issue with the analysis or due to an
         invalid resource configuration.</p>")
  statusReason: option<accessPreviewStatusReason>,
  @ocaml.doc("<p>The status of the access preview.</p>
         <ul>
            <li>
               <p>
                  <code>Creating</code> - The access preview creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>Completed</code> - The access preview is complete. You can preview findings
               for external access to the resource.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - The access preview creation has failed.</p>
            </li>
         </ul>")
  status: accessPreviewStatus,
  @ocaml.doc("<p>The time at which the access preview was created.</p>") createdAt: timestamp_,
  @ocaml.doc("<p>A map of resource ARNs for the proposed resource configuration.</p>")
  configurations: configurationsMap,
  @ocaml.doc("<p>The ARN of the analyzer used to generate the access preview.</p>")
  analyzerArn: analyzerArn,
  @ocaml.doc("<p>The unique ID for the access preview.</p>") id: accessPreviewId,
}
@ocaml.doc("<p>AWS IAM Access Analyzer helps identify potential resource-access risks by enabling you to identify
         any policies that grant access to an external principal. It does this by using logic-based
         reasoning to analyze resource-based policies in your AWS environment. An external
         principal can be another AWS account, a root user, an IAM user or role, a federated
         user, an AWS service, or an anonymous user. You can also use Access Analyzer to preview and
         validate public and cross-account access to your resources before deploying permissions
         changes. This guide describes the AWS IAM Access Analyzer operations that you can call
         programmatically. For general information about Access Analyzer, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html\">AWS IAM Access Analyzer</a> in the <b>IAM User Guide</b>.</p>
         <p>To start using Access Analyzer, you first need to create an analyzer.</p>")
module UpdateFindings = {
  type t
  @ocaml.doc("<p>Updates findings with the new values provided in the request.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The ARN of the resource identified in the finding.</p>")
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The IDs of the findings to update.</p>") ids: option<findingIdList>,
    @ocaml.doc("<p>The state represents the action to take to update the finding Status. Use
            <code>ARCHIVE</code> to change an Active finding to an Archived finding. Use
            <code>ACTIVE</code> to change an Archived finding to an Active finding.</p>")
    status: findingStatusUpdate,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> that generated the findings to update.</p>")
    analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UpdateFindingsCommand"
  let make = (~status, ~analyzerArn, ~clientToken=?, ~resourceArn=?, ~ids=?, ()) =>
    new({
      clientToken: clientToken,
      resourceArn: resourceArn,
      ids: ids,
      status: status,
      analyzerArn: analyzerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  @ocaml.doc("<p>Removes a tag from the specified resource.</p>")
  type request = {
    @ocaml.doc("<p>The key for the tag to add.</p>") tagKeys: tagKeys,
    @ocaml.doc("<p>The ARN of the resource to remove the tag from.</p>") resourceArn: baseString,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>Adds a tag to the specified resource.</p>")
  type request = {
    @ocaml.doc("<p>The tags to add to the resource.</p>") tags: tagsMap,
    @ocaml.doc("<p>The ARN of the resource to add the tag to.</p>") resourceArn: baseString,
  }

  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartResourceScan = {
  type t
  @ocaml.doc("<p>Starts a scan of the policies applied to the specified resource.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the resource to scan.</p>") resourceArn: resourceArn,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> to use to scan the policies applied to the specified
         resource.</p>")
    analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "StartResourceScanCommand"
  let make = (~resourceArn, ~analyzerArn, ()) =>
    new({resourceArn: resourceArn, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p>Retrieves a list of tags applied to the specified resource.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the resource to retrieve tags from.</p>") resourceArn: baseString,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>The tags that are applied to the specified resource.</p>") tags: option<tagsMap>,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnalyzedResource = {
  type t
  @ocaml.doc("<p>Retrieves an analyzed resource.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the resource to retrieve information about.</p>")
    resourceArn: resourceArn,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> to retrieve information from.</p>")
    analyzerArn: analyzerArn,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>An <code>AnalyzedResource</code> object that contains information that Access Analyzer found
         when it analyzed the resource.</p>")
    resource: option<analyzedResource>,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetAnalyzedResourceCommand"
  let make = (~resourceArn, ~analyzerArn, ()) =>
    new({resourceArn: resourceArn, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteArchiveRule = {
  type t
  @ocaml.doc("<p>Deletes an archive rule.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The name of the rule to delete.</p>") ruleName: name,
    @ocaml.doc("<p>The name of the analyzer that associated with the archive rule to delete.</p>")
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "DeleteArchiveRuleCommand"
  let make = (~ruleName, ~analyzerName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, ruleName: ruleName, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAnalyzer = {
  type t
  @ocaml.doc("<p>Deletes an analyzer.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The name of the analyzer to delete.</p>") analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "DeleteAnalyzerCommand"
  let make = (~analyzerName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelPolicyGeneration = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
         operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
         retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
         the policy generation request.</p>")
    jobId: jobId,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CancelPolicyGenerationCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ApplyArchiveRule = {
  type t
  @ocaml.doc("<p>Retroactively applies an archive rule.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The name of the rule to apply.</p>") ruleName: name,
    @ocaml.doc("<p>The Amazon resource name (ARN) of the analyzer.</p>") analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ApplyArchiveRuleCommand"
  let make = (~ruleName, ~analyzerArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, ruleName: ruleName, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateArchiveRule = {
  type t
  @ocaml.doc("<p>Updates the specified archive rule.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>A filter to match for the rules to update. Only rules that match the filter are
         updated.</p>")
    filter: filterCriteriaMap,
    @ocaml.doc("<p>The name of the rule to update.</p>") ruleName: name,
    @ocaml.doc("<p>The name of the analyzer to update the archive rules for.</p>")
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UpdateArchiveRuleCommand"
  let make = (~filter, ~ruleName, ~analyzerName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, filter: filter, ruleName: ruleName, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListPolicyGenerations = {
  type t
  type request = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>The ARN of the IAM entity (user or role) for which you are generating a policy. Use
         this with <code>ListGeneratedPolicies</code> to filter the results to only include results
         for a specific principal.</p>")
    principalArn: option<principalArn>,
  }
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A <code>PolicyGeneration</code> object that contains details about the generated
         policy.</p>")
    policyGenerations: policyGenerationList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListPolicyGenerationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~principalArn=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, principalArn: principalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnalyzedResources = {
  type t
  @ocaml.doc("<p>Retrieves a list of resources that have been analyzed.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The type of resource.</p>") resourceType: option<resourceType>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> to retrieve a list of analyzed resources from.</p>")
    analyzerArn: analyzerArn,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A list of resources that were analyzed.</p>")
    analyzedResources: analyzedResourcesList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAnalyzedResourcesCommand"
  let make = (~analyzerArn, ~maxResults=?, ~nextToken=?, ~resourceType=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceType: resourceType,
      analyzerArn: analyzerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnalyzer = {
  type t
  @ocaml.doc("<p>Retrieves an analyzer.</p>")
  type request = {@ocaml.doc("<p>The name of the analyzer retrieved.</p>") analyzerName: name}
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>An <code>AnalyzerSummary</code> object that contains information about the
         analyzer.</p>")
    analyzer: analyzerSummary,
  }
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "GetAnalyzerCommand"
  let make = (~analyzerName, ()) => new({analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateArchiveRule = {
  type t
  @ocaml.doc("<p>Creates an archive rule.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The criteria for the rule.</p>") filter: filterCriteriaMap,
    @ocaml.doc("<p>The name of the rule to create.</p>") ruleName: name,
    @ocaml.doc("<p>The name of the created analyzer.</p>") analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateArchiveRuleCommand"
  let make = (~filter, ~ruleName, ~analyzerName, ~clientToken=?, ()) =>
    new({clientToken: clientToken, filter: filter, ruleName: ruleName, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartPolicyGeneration = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, the subsequent retries with the
         same client token return the result from the original successful request and they have no
         additional effect.</p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<baseString>,
    @ocaml.doc("<p>A <code>CloudTrailDetails</code> object that contains details about a <code>Trail</code>
         that you want to analyze to generate policies.</p>")
    cloudTrailDetails: option<cloudTrailDetails>,
    @ocaml.doc("<p>Contains the ARN of the IAM entity (user or role) for which you are generating a
         policy.</p>")
    policyGenerationDetails: policyGenerationDetails,
  }
  type response = {
    @ocaml.doc("<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
         operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
         retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
         the policy generation request.</p>")
    jobId: jobId,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "StartPolicyGenerationCommand"
  let make = (~policyGenerationDetails, ~clientToken=?, ~cloudTrailDetails=?, ()) =>
    new({
      clientToken: clientToken,
      cloudTrailDetails: cloudTrailDetails,
      policyGenerationDetails: policyGenerationDetails,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnalyzers = {
  type t
  @ocaml.doc("<p>Retrieves a list of analyzers.</p>")
  type request = {
    @ocaml.doc("<p>The type of analyzer.</p>") @as("type") type_: option<type_>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The analyzers retrieved.</p>") analyzers: analyzersList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAnalyzersCommand"
  let make = (~type_=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({type_: type_, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPreviews = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> used to generate the access preview.</p>")
    analyzerArn: analyzerArn,
  }
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A list of access previews retrieved for the analyzer.</p>")
    accessPreviews: accessPreviewsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAccessPreviewsCommand"
  let make = (~analyzerArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFinding = {
  type t
  @ocaml.doc("<p>Retrieves a finding.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the finding to retrieve.</p>") id: findingId,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> that generated the finding.</p>")
    analyzerArn: analyzerArn,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>A <code>finding</code> object that contains finding details.</p>")
    finding: option<finding>,
  }
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "GetFindingCommand"
  let make = (~id, ~analyzerArn, ()) => new({id: id, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetArchiveRule = {
  type t
  @ocaml.doc("<p>Retrieves an archive rule.</p>")
  type request = {
    @ocaml.doc("<p>The name of the rule to retrieve.</p>") ruleName: name,
    @ocaml.doc("<p>The name of the analyzer to retrieve rules from.</p>") analyzerName: name,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {archiveRule: archiveRuleSummary}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetArchiveRuleCommand"
  let make = (~ruleName, ~analyzerName, ()) => new({ruleName: ruleName, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  @ocaml.doc("<p>Retrieves a list of findings generated by the specified analyzer.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The sort order for the findings returned.</p>") sort: option<sortCriteria>,
    @ocaml.doc("<p>A filter to match for the findings to return.</p>")
    filter: option<filterCriteriaMap>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> to retrieve findings from.</p>")
    analyzerArn: analyzerArn,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A list of findings retrieved from the analyzer that match the filter criteria specified,
         if any.</p>")
    findings: findingsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "ListFindingsCommand"
  let make = (~analyzerArn, ~maxResults=?, ~nextToken=?, ~sort=?, ~filter=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      sort: sort,
      filter: filter,
      analyzerArn: analyzerArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArchiveRules = {
  type t
  @ocaml.doc("<p>Retrieves a list of archive rules created for the specified analyzer.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the request.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The name of the analyzer to retrieve rules from.</p>") analyzerName: name,
  }
  @ocaml.doc("<p>The response to the request.</p>")
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A list of archive rules created for the specified analyzer.</p>")
    archiveRules: archiveRulesList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListArchiveRulesCommand"
  let make = (~analyzerName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, analyzerName: analyzerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPreviewFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>Criteria to filter the returned findings.</p>")
    filter: option<filterCriteriaMap>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> used to generate the access.</p>")
    analyzerArn: analyzerArn,
    @ocaml.doc("<p>The unique ID for the access preview.</p>") accessPreviewId: accessPreviewId,
  }
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>A list of access preview findings that match the specified filter criteria.</p>")
    findings: accessPreviewFindingsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAccessPreviewFindingsCommand"
  let make = (~analyzerArn, ~accessPreviewId, ~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filter: filter,
      analyzerArn: analyzerArn,
      accessPreviewId: accessPreviewId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnalyzer = {
  type t
  @ocaml.doc("<p>Creates an analyzer.</p>")
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>The tags to apply to the analyzer.</p>") tags: option<tagsMap>,
    @ocaml.doc("<p>Specifies the archive rules to add for the analyzer. Archive rules automatically archive
         findings that meet the criteria you define for the rule.</p>")
    archiveRules: option<inlineArchiveRulesList>,
    @ocaml.doc("<p>The type of analyzer to create. Only ACCOUNT and ORGANIZATION analyzers are supported.
         You can create only one analyzer per account per Region. You can create up to 5 analyzers
         per organization per Region.</p>")
    @as("type")
    type_: type_,
    @ocaml.doc("<p>The name of the analyzer to create.</p>") analyzerName: name,
  }
  @ocaml.doc("<p>The response to the request to create an analyzer.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the analyzer that was created by the request.</p>")
    arn: option<analyzerArn>,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateAnalyzerCommand"
  let make = (~type_, ~analyzerName, ~clientToken=?, ~tags=?, ~archiveRules=?, ()) =>
    new({
      clientToken: clientToken,
      tags: tags,
      archiveRules: archiveRules,
      type_: type_,
      analyzerName: analyzerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGeneratedPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The level of detail that you want to generate. You can specify whether to generate
         service-level policies. </p>
         <p>Access Analyzer uses <code>iam:servicelastaccessed</code> to identify services that have been
         used recently to create this service-level template.</p>")
    includeServiceLevelTemplate: option<baseBoolean>,
    @ocaml.doc("<p>The level of detail that you want to generate. You can specify whether to generate
         policies with placeholders for resource ARNs for actions that support resource level
         granularity in policies.</p>
         <p>For example, in the resource section of a policy, you can receive a placeholder such as
            <code>\"Resource\":\"arn:aws:s3:::${BucketName}\"</code> instead of <code>\"*\"</code>.</p>")
    includeResourcePlaceholders: option<baseBoolean>,
    @ocaml.doc("<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
         operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
         retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
         the policy generation request.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>A <code>GeneratedPolicyResult</code> object that contains the generated policies and
         associated details.</p>")
    generatedPolicyResult: generatedPolicyResult,
    @ocaml.doc("<p>A <code>GeneratedPolicyDetails</code> object that contains details about the generated
         policy.</p>")
    jobDetails: jobDetails,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetGeneratedPolicyCommand"
  let make = (~jobId, ~includeServiceLevelTemplate=?, ~includeResourcePlaceholders=?, ()) =>
    new({
      includeServiceLevelTemplate: includeServiceLevelTemplate,
      includeResourcePlaceholders: includeResourcePlaceholders,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidatePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The type of policy to validate. Identity policies grant permissions to IAM principals.
         Identity policies include managed and inline policies for IAM roles, users, and groups.
         They also include service-control policies (SCPs) that are attached to an AWS
         organization, organizational unit (OU), or an account.</p>
         <p>Resource policies grant permissions on AWS resources. Resource policies include trust
         policies for IAM roles and bucket policies for S3 buckets. You can provide a generic input
         such as identity policy or resource policy or a specific input such as managed policy or S3
         bucket policy. </p>")
    policyType: policyType,
    @ocaml.doc("<p>The JSON policy document to use as the content for the policy.</p>")
    policyDocument: policyDocument,
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<baseInteger>,
    @ocaml.doc("<p>The locale to use for localizing the findings.</p>") locale: option<locale>,
  }
  type response = {
    @ocaml.doc("<p>A token used for pagination of results returned.</p>") nextToken: option<token>,
    @ocaml.doc("<p>The list of findings in a policy returned by Access Analyzer based on its suite of policy
         checks.</p>")
    findings: validatePolicyFindingList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ValidatePolicyCommand"
  let make = (~policyType, ~policyDocument, ~nextToken=?, ~maxResults=?, ~locale=?, ()) =>
    new({
      policyType: policyType,
      policyDocument: policyDocument,
      nextToken: nextToken,
      maxResults: maxResults,
      locale: locale,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPreview = {
  type t
  type request = {
    @ocaml.doc("<p>A client token.</p>") clientToken: option<baseString>,
    @ocaml.doc("<p>Access control configuration for your resource that is used to generate the access
         preview. The access preview includes findings for external access allowed to the resource
         with the proposed access control configuration. The configuration must contain exactly one
         element.</p>")
    configurations: configurationsMap,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the account analyzer</a> used to generate the access preview. You can only create an
         access preview for analyzers with an <code>Account</code> type and <code>Active</code>
         status.</p>")
    analyzerArn: analyzerArn,
  }
  type response = {@ocaml.doc("<p>The unique ID for the access preview.</p>") id: accessPreviewId}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateAccessPreviewCommand"
  let make = (~configurations, ~analyzerArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, configurations: configurations, analyzerArn: analyzerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPreview = {
  type t
  type request = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of
            the analyzer</a> used to generate the access preview.</p>")
    analyzerArn: analyzerArn,
    @ocaml.doc("<p>The unique ID for the access preview.</p>") accessPreviewId: accessPreviewId,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about the access preview.</p>")
    accessPreview: accessPreview,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetAccessPreviewCommand"
  let make = (~analyzerArn, ~accessPreviewId, ()) =>
    new({analyzerArn: analyzerArn, accessPreviewId: accessPreviewId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
