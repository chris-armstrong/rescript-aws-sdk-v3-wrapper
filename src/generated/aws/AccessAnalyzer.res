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
type validationExceptionField = {
  message: baseString,
  name: baseString,
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
type substring = {
  length: baseInteger,
  start: baseInteger,
}
type sqsQueuePolicy = string
type sharedViaList = array<baseString>
type secretsManagerSecretPolicy = string
type secretsManagerSecretKmsId = string
type s3PublicAccessBlockConfiguration = {
  restrictPublicBuckets: baseBoolean,
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
type position = {
  offset: baseInteger,
  column: baseInteger,
  line: baseInteger,
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
type internetConfiguration = unit
type iamTrustPolicy = string
type granteePrincipal = string
type generatedPolicy = {policy: baseString}
type findingStatusUpdate = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingStatus = [@as("RESOLVED") #RESOLVED | @as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingSourceType = [
  | @as("S3_ACCESS_POINT") #S3_ACCESS_POINT
  | @as("BUCKET_ACL") #BUCKET_ACL
  | @as("POLICY") #POLICY
]
type findingSourceDetail = {accessPointArn: option<baseString>}
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
type vpcConfiguration = {vpcId: vpcId}
type validationExceptionFieldList = array<validationExceptionField>
type trailProperties = {
  allRegions: option<baseBoolean>,
  regions: option<regionList>,
  cloudTrailArn: cloudTrailArn,
}
type trail = {
  allRegions: option<baseBoolean>,
  regions: option<regionList>,
  cloudTrailArn: cloudTrailArn,
}
type statusReason = {code: reasonCode}
type sqsQueueConfiguration = {queuePolicy: option<sqsQueuePolicy>}
type span = {
  end: position,
  start: position,
}
type sortCriteria = {
  orderBy: option<orderBy>,
  attributeName: option<baseString>,
}
type secretsManagerSecretConfiguration = {
  secretPolicy: option<secretsManagerSecretPolicy>,
  kmsKeyId: option<secretsManagerSecretKmsId>,
}
type policyGenerationDetails = {principalArn: principalArn}
type policyGeneration = {
  completedOn: option<timestamp_>,
  startedOn: timestamp_,
  status: jobStatus,
  principalArn: principalArn,
  jobId: jobId,
}
type pathElement = {
  value: option<baseString>,
  substring: option<substring>,
  key: option<baseString>,
  index: option<baseInteger>,
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
type jobError = {
  message: baseString,
  code: jobErrorCode,
}
type iamRoleConfiguration = {trustPolicy: option<iamTrustPolicy>}
type generatedPolicyList = array<generatedPolicy>
type findingSource = {
  detail: option<findingSourceDetail>,
  @as("type") type_: findingSourceType,
}
type findingIdList = array<findingId>
type criterion = {
  exists: option<baseBoolean>,
  contains: option<valueList>,
  neq: option<valueList>,
  eq: option<valueList>,
}
type analyzedResourceSummary = {
  resourceType: resourceType,
  resourceOwnerAccount: baseString,
  resourceArn: resourceArn,
}
type analyzedResource = {
  error: option<baseString>,
  resourceOwnerAccount: baseString,
  status: option<findingStatus>,
  sharedVia: option<sharedViaList>,
  actions: option<actionList>,
  isPublic: baseBoolean,
  updatedAt: timestamp_,
  analyzedAt: timestamp_,
  createdAt: timestamp_,
  resourceType: resourceType,
  resourceArn: resourceArn,
}
type aclGrantee = {
  uri: option<aclUri>,
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
type accessPreviewStatusReason = {code: accessPreviewStatusReasonCode}
type trailPropertiesList = array<trailProperties>
type trailList = array<trail>
type s3BucketAclGrantConfiguration = {
  grantee: aclGrantee,
  permission: aclPermission,
}
type policyGenerationList = array<policyGeneration>
type pathElementList = array<pathElement>
type networkOriginConfiguration = {
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
type kmsGrantConstraints = {
  encryptionContextSubset: option<kmsConstraintsMap>,
  encryptionContextEquals: option<kmsConstraintsMap>,
}
type jobDetails = {
  jobError: option<jobError>,
  completedOn: option<timestamp_>,
  startedOn: timestamp_,
  status: jobStatus,
  jobId: jobId,
}
type findingSourceList = array<findingSource>
type filterCriteriaMap = Js.Dict.t<criterion>
type analyzerSummary = {
  statusReason: option<statusReason>,
  status: analyzerStatus,
  tags: option<tagsMap>,
  lastResourceAnalyzedAt: option<timestamp_>,
  lastResourceAnalyzed: option<baseString>,
  createdAt: timestamp_,
  @as("type") type_: type_,
  name: name,
  arn: analyzerArn,
}
type analyzedResourcesList = array<analyzedResourceSummary>
type accessPreviewSummary = {
  statusReason: option<accessPreviewStatusReason>,
  status: accessPreviewStatus,
  createdAt: timestamp_,
  analyzerArn: analyzerArn,
  id: accessPreviewId,
}
type s3BucketAclGrantConfigurationsList = array<s3BucketAclGrantConfiguration>
type s3AccessPointConfiguration = {
  networkOrigin: option<networkOriginConfiguration>,
  publicAccessBlock: option<s3PublicAccessBlockConfiguration>,
  accessPointPolicy: option<accessPointPolicy>,
}
type location = {
  span: span,
  path: pathElementList,
}
type kmsGrantConfiguration = {
  issuingAccount: issuingAccount,
  constraints: option<kmsGrantConstraints>,
  retiringPrincipal: option<retiringPrincipal>,
  granteePrincipal: granteePrincipal,
  operations: kmsGrantOperationsList,
}
type inlineArchiveRule = {
  filter: filterCriteriaMap,
  ruleName: name,
}
type findingSummary = {
  sources: option<findingSourceList>,
  error: option<baseString>,
  resourceOwnerAccount: baseString,
  status: findingStatus,
  updatedAt: timestamp_,
  analyzedAt: timestamp_,
  createdAt: timestamp_,
  condition: conditionKeyMap,
  resourceType: resourceType,
  isPublic: option<baseBoolean>,
  resource: option<baseString>,
  action: option<actionList>,
  principal: option<principalMap>,
  id: findingId,
}
type finding = {
  sources: option<findingSourceList>,
  error: option<baseString>,
  resourceOwnerAccount: baseString,
  status: findingStatus,
  updatedAt: timestamp_,
  analyzedAt: timestamp_,
  createdAt: timestamp_,
  condition: conditionKeyMap,
  resourceType: resourceType,
  isPublic: option<baseBoolean>,
  resource: option<baseString>,
  action: option<actionList>,
  principal: option<principalMap>,
  id: findingId,
}
type cloudTrailProperties = {
  endTime: timestamp_,
  startTime: timestamp_,
  trailProperties: trailPropertiesList,
}
type cloudTrailDetails = {
  endTime: option<timestamp_>,
  startTime: timestamp_,
  accessRole: roleArn,
  trails: trailList,
}
type archiveRuleSummary = {
  updatedAt: timestamp_,
  createdAt: timestamp_,
  filter: filterCriteriaMap,
  ruleName: name,
}
type analyzersList = array<analyzerSummary>
type accessPreviewsList = array<accessPreviewSummary>
type accessPreviewFinding = {
  sources: option<findingSourceList>,
  error: option<baseString>,
  resourceOwnerAccount: baseString,
  status: findingStatus,
  changeType: findingChangeType,
  createdAt: timestamp_,
  resourceType: resourceType,
  isPublic: option<baseBoolean>,
  resource: option<baseString>,
  condition: option<conditionKeyMap>,
  action: option<actionList>,
  principal: option<principalMap>,
  existingFindingStatus: option<findingStatus>,
  existingFindingId: option<findingId>,
  id: accessPreviewFindingId,
}
type s3AccessPointConfigurationsMap = Js.Dict.t<s3AccessPointConfiguration>
type locationList = array<location>
type kmsGrantConfigurationsList = array<kmsGrantConfiguration>
type inlineArchiveRulesList = array<inlineArchiveRule>
type generatedPolicyProperties = {
  cloudTrailProperties: option<cloudTrailProperties>,
  principalArn: principalArn,
  isComplete: option<baseBoolean>,
}
type findingsList = array<findingSummary>
type archiveRulesList = array<archiveRuleSummary>
type accessPreviewFindingsList = array<accessPreviewFinding>
type validatePolicyFinding = {
  locations: locationList,
  learnMoreLink: learnMoreLink,
  issueCode: issueCode,
  findingType: validatePolicyFindingType,
  findingDetails: baseString,
}
type s3BucketConfiguration = {
  accessPoints: option<s3AccessPointConfigurationsMap>,
  bucketPublicAccessBlock: option<s3PublicAccessBlockConfiguration>,
  bucketAclGrants: option<s3BucketAclGrantConfigurationsList>,
  bucketPolicy: option<s3BucketPolicy>,
}
type kmsKeyConfiguration = {
  grants: option<kmsGrantConfigurationsList>,
  keyPolicies: option<kmsKeyPoliciesMap>,
}
type generatedPolicyResult = {
  generatedPolicies: option<generatedPolicyList>,
  properties: generatedPolicyProperties,
}
type validatePolicyFindingList = array<validatePolicyFinding>
type configuration = {
  sqsQueue: option<sqsQueueConfiguration>,
  s3Bucket: option<s3BucketConfiguration>,
  secretsManagerSecret: option<secretsManagerSecretConfiguration>,
  kmsKey: option<kmsKeyConfiguration>,
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
type accessPreview = {
  statusReason: option<accessPreviewStatusReason>,
  status: accessPreviewStatus,
  createdAt: timestamp_,
  configurations: configurationsMap,
  analyzerArn: analyzerArn,
  id: accessPreviewId,
}

module UpdateFindings = {
  type t
  type request = {
    clientToken: option<baseString>,
    resourceArn: option<resourceArn>,
    ids: option<findingIdList>,
    status: findingStatusUpdate,
    analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UpdateFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeys,
    resourceArn: baseString,
  }
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagsMap,
    resourceArn: baseString,
  }
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartResourceScan = {
  type t
  type request = {
    resourceArn: resourceArn,
    analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "StartResourceScanCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: baseString}
  type response = {tags: option<tagsMap>}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnalyzedResource = {
  type t
  type request = {
    resourceArn: resourceArn,
    analyzerArn: analyzerArn,
  }
  type response = {resource: option<analyzedResource>}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetAnalyzedResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteArchiveRule = {
  type t
  type request = {
    clientToken: option<baseString>,
    ruleName: name,
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "DeleteArchiveRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAnalyzer = {
  type t
  type request = {
    clientToken: option<baseString>,
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "DeleteAnalyzerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelPolicyGeneration = {
  type t
  type request = {jobId: jobId}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CancelPolicyGenerationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyArchiveRule = {
  type t
  type request = {
    clientToken: option<baseString>,
    ruleName: name,
    analyzerArn: analyzerArn,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ApplyArchiveRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateArchiveRule = {
  type t
  type request = {
    clientToken: option<baseString>,
    filter: filterCriteriaMap,
    ruleName: name,
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "UpdateArchiveRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListPolicyGenerations = {
  type t
  type request = {
    nextToken: option<token>,
    maxResults: option<baseInteger>,
    principalArn: option<principalArn>,
  }
  type response = {
    nextToken: option<token>,
    policyGenerations: policyGenerationList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListPolicyGenerationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnalyzedResources = {
  type t
  type request = {
    maxResults: option<baseInteger>,
    nextToken: option<token>,
    resourceType: option<resourceType>,
    analyzerArn: analyzerArn,
  }
  type response = {
    nextToken: option<token>,
    analyzedResources: analyzedResourcesList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAnalyzedResourcesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnalyzer = {
  type t
  type request = {analyzerName: name}
  type response = {analyzer: analyzerSummary}
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "GetAnalyzerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateArchiveRule = {
  type t
  type request = {
    clientToken: option<baseString>,
    filter: filterCriteriaMap,
    ruleName: name,
    analyzerName: name,
  }

  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateArchiveRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartPolicyGeneration = {
  type t
  type request = {
    clientToken: option<baseString>,
    cloudTrailDetails: option<cloudTrailDetails>,
    policyGenerationDetails: policyGenerationDetails,
  }
  type response = {jobId: jobId}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "StartPolicyGenerationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnalyzers = {
  type t
  type request = {
    @as("type") type_: option<type_>,
    maxResults: option<baseInteger>,
    nextToken: option<token>,
  }
  type response = {
    nextToken: option<token>,
    analyzers: analyzersList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAnalyzersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPreviews = {
  type t
  type request = {
    maxResults: option<baseInteger>,
    nextToken: option<token>,
    analyzerArn: analyzerArn,
  }
  type response = {
    nextToken: option<token>,
    accessPreviews: accessPreviewsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAccessPreviewsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFinding = {
  type t
  type request = {
    id: findingId,
    analyzerArn: analyzerArn,
  }
  type response = {finding: option<finding>}
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "GetFindingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetArchiveRule = {
  type t
  type request = {
    ruleName: name,
    analyzerName: name,
  }
  type response = {archiveRule: archiveRuleSummary}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetArchiveRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  type request = {
    maxResults: option<baseInteger>,
    nextToken: option<token>,
    sort: option<sortCriteria>,
    filter: option<filterCriteriaMap>,
    analyzerArn: analyzerArn,
  }
  type response = {
    nextToken: option<token>,
    findings: findingsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new external new: request => t = "ListFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArchiveRules = {
  type t
  type request = {
    maxResults: option<baseInteger>,
    nextToken: option<token>,
    analyzerName: name,
  }
  type response = {
    nextToken: option<token>,
    archiveRules: archiveRulesList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListArchiveRulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPreviewFindings = {
  type t
  type request = {
    maxResults: option<baseInteger>,
    nextToken: option<token>,
    filter: option<filterCriteriaMap>,
    analyzerArn: analyzerArn,
    accessPreviewId: accessPreviewId,
  }
  type response = {
    nextToken: option<token>,
    findings: accessPreviewFindingsList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ListAccessPreviewFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAnalyzer = {
  type t
  type request = {
    clientToken: option<baseString>,
    tags: option<tagsMap>,
    archiveRules: option<inlineArchiveRulesList>,
    @as("type") type_: type_,
    analyzerName: name,
  }
  type response = {arn: option<analyzerArn>}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateAnalyzerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGeneratedPolicy = {
  type t
  type request = {
    includeServiceLevelTemplate: option<baseBoolean>,
    includeResourcePlaceholders: option<baseBoolean>,
    jobId: jobId,
  }
  type response = {
    generatedPolicyResult: generatedPolicyResult,
    jobDetails: jobDetails,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetGeneratedPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidatePolicy = {
  type t
  type request = {
    policyType: policyType,
    policyDocument: policyDocument,
    nextToken: option<token>,
    maxResults: option<baseInteger>,
    locale: option<locale>,
  }
  type response = {
    nextToken: option<token>,
    findings: validatePolicyFindingList,
  }
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "ValidatePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPreview = {
  type t
  type request = {
    clientToken: option<baseString>,
    configurations: configurationsMap,
    analyzerArn: analyzerArn,
  }
  type response = {id: accessPreviewId}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "CreateAccessPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessPreview = {
  type t
  type request = {
    analyzerArn: analyzerArn,
    accessPreviewId: accessPreviewId,
  }
  type response = {accessPreview: accessPreview}
  @module("@aws-sdk/client-access-analyzer") @new
  external new: request => t = "GetAccessPreviewCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
