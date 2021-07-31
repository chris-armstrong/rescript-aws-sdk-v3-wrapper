type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type valueList = array<apiString>
type validationExceptionReason = [@as("other") #other | @as("fieldValidationFailed") #fieldValidationFailed | @as("cannotParse") #cannotParse | @as("unknownOperation") #unknownOperation]
type validationExceptionField = {
@as("message") message: option<apiString>,
@as("name") name: option<apiString>
}
type validatePolicyFindingType = [@as("WARNING") #WARNING | @as("SUGGESTION") #SUGGESTION | @as("SECURITY_WARNING") #SECURITY_WARNING | @as("ERROR") #ERROR]
type type_ = [@as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type token = string
type amazonawsTimestamp = Js.Date.t;
type tagsMap = Js.Dict.t< apiString>
type tagKeys = array<apiString>
type substring = {
@as("length") length: option<apiInteger>,
@as("start") start: option<apiInteger>
}
type sqsQueuePolicy = string
type sharedViaList = array<apiString>
type secretsManagerSecretPolicy = string
type secretsManagerSecretKmsId = string
type s3PublicAccessBlockConfiguration = {
@as("restrictPublicBuckets") restrictPublicBuckets: option<apiBoolean>,
@as("ignorePublicAcls") ignorePublicAcls: option<apiBoolean>
}
type s3BucketPolicy = string
type roleArn = string
type retiringPrincipal = string
type resourceType = [@as("AWS::SecretsManager::Secret") #AWS__SecretsManager__Secret | @as("AWS::KMS::Key") #AWS__KMS__Key | @as("AWS::Lambda::LayerVersion") #AWS__Lambda__LayerVersion | @as("AWS::Lambda::Function") #AWS__Lambda__Function | @as("AWS::SQS::Queue") #AWS__SQS__Queue | @as("AWS::IAM::Role") #AWS__IAM__Role | @as("AWS::S3::Bucket") #AWS__S3__Bucket]
type resourceArn = string
type regionList = array<apiString>
type reasonCode = [@as("SERVICE_LINKED_ROLE_CREATION_FAILED") #SERVICE_LINKED_ROLE_CREATION_FAILED | @as("ORGANIZATION_DELETED") #ORGANIZATION_DELETED | @as("DELEGATED_ADMINISTRATOR_DEREGISTERED") #DELEGATED_ADMINISTRATOR_DEREGISTERED | @as("AWS_SERVICE_ACCESS_DISABLED") #AWS_SERVICE_ACCESS_DISABLED]
type principalMap = Js.Dict.t< apiString>
type principalArn = string
type position = {
@as("offset") offset: option<apiInteger>,
@as("column") column: option<apiInteger>,
@as("line") line: option<apiInteger>
}
type policyType = [@as("SERVICE_CONTROL_POLICY") #SERVICE_CONTROL_POLICY | @as("RESOURCE_POLICY") #RESOURCE_POLICY | @as("IDENTITY_POLICY") #IDENTITY_POLICY]
type policyName = string
type policyDocument = string
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type locale = [@as("ZH_TW") #ZH_TW | @as("ZH_CN") #ZH_CN | @as("PT_BR") #PT_BR | @as("KO") #KO | @as("JA") #JA | @as("IT") #IT | @as("FR") #FR | @as("ES") #ES | @as("EN") #EN | @as("DE") #DE]
type learnMoreLink = string
type kmsKeyPolicy = string
type kmsGrantOperation = [@as("Verify") #Verify | @as("Sign") #Sign | @as("RetireGrant") #RetireGrant | @as("ReEncryptTo") #ReEncryptTo | @as("ReEncryptFrom") #ReEncryptFrom | @as("GetPublicKey") #GetPublicKey | @as("GenerateDataKeyWithoutPlaintext") #GenerateDataKeyWithoutPlaintext | @as("GenerateDataKeyPairWithoutPlaintext") #GenerateDataKeyPairWithoutPlaintext | @as("GenerateDataKeyPair") #GenerateDataKeyPair | @as("GenerateDataKey") #GenerateDataKey | @as("Encrypt") #Encrypt | @as("DescribeKey") #DescribeKey | @as("Decrypt") #Decrypt | @as("CreateGrant") #CreateGrant]
type kmsConstraintsValue = string
type kmsConstraintsKey = string
type jobStatus = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type jobId = string
type jobErrorCode = [@as("SERVICE_ERROR") #SERVICE_ERROR | @as("SERVICE_QUOTA_EXCEEDED_ERROR") #SERVICE_QUOTA_EXCEEDED_ERROR | @as("RESOURCE_NOT_FOUND_ERROR") #RESOURCE_NOT_FOUND_ERROR | @as("AUTHORIZATION_ERROR") #AUTHORIZATION_ERROR]
type issuingAccount = string
type issueCode = string
type internetConfiguration = unit
type iamTrustPolicy = string
type granteePrincipal = string
type generatedPolicy = {
@as("policy") policy: option<apiString>
}
type findingStatusUpdate = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingStatus = [@as("RESOLVED") #RESOLVED | @as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingSourceType = [@as("S3_ACCESS_POINT") #S3_ACCESS_POINT | @as("BUCKET_ACL") #BUCKET_ACL | @as("POLICY") #POLICY]
type findingSourceDetail = {
@as("accessPointArn") accessPointArn: apiString
}
type findingId = string
type findingChangeType = [@as("UNCHANGED") #UNCHANGED | @as("NEW") #NEW | @as("CHANGED") #CHANGED]
type configurationsMapKey = string
type conditionKeyMap = Js.Dict.t< apiString>
type cloudTrailArn = string

type analyzerStatus = [@as("FAILED") #FAILED | @as("DISABLED") #DISABLED | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type analyzerArn = string

type actionList = array<apiString>
type aclUri = string
type aclPermission = [@as("FULL_CONTROL") #FULL_CONTROL | @as("WRITE_ACP") #WRITE_ACP | @as("READ_ACP") #READ_ACP | @as("WRITE") #WRITE | @as("READ") #READ]
type aclCanonicalId = string
type accessPreviewStatusReasonCode = [@as("INVALID_CONFIGURATION") #INVALID_CONFIGURATION | @as("INTERNAL_ERROR") #INTERNAL_ERROR]
type accessPreviewStatus = [@as("FAILED") #FAILED | @as("CREATING") #CREATING | @as("COMPLETED") #COMPLETED]
type accessPreviewId = string
type accessPreviewFindingId = string
type accessPointPolicy = string
type accessPointArn = string
type vpcConfiguration = {
@as("vpcId") vpcId: option<vpcId>
}
type validationExceptionFieldList = array<validationExceptionField>
type trailProperties = {
@as("allRegions") allRegions: apiBoolean,
@as("regions") regions: regionList,
@as("cloudTrailArn") cloudTrailArn: option<cloudTrailArn>
}
type trail = {
@as("allRegions") allRegions: apiBoolean,
@as("regions") regions: regionList,
@as("cloudTrailArn") cloudTrailArn: option<cloudTrailArn>
}
type statusReason = {
@as("code") code: option<reasonCode>
}
type sqsQueueConfiguration = {
@as("queuePolicy") queuePolicy: sqsQueuePolicy
}
type span = {
@as("end") end: option<position>,
@as("start") start: option<position>
}
type sortCriteria = {
@as("orderBy") orderBy: orderBy,
@as("attributeName") attributeName: apiString
}
type secretsManagerSecretConfiguration = {
@as("secretPolicy") secretPolicy: secretsManagerSecretPolicy,
@as("kmsKeyId") kmsKeyId: secretsManagerSecretKmsId
}
type policyGenerationDetails = {
@as("principalArn") principalArn: option<principalArn>
}
type policyGeneration = {
@as("completedOn") completedOn: amazonawsTimestamp,
@as("startedOn") startedOn: option<amazonawsTimestamp>,
@as("status") status: option<jobStatus>,
@as("principalArn") principalArn: option<principalArn>,
@as("jobId") jobId: option<jobId>
}
type pathElement = Value(apiString) | Substring(substring) | Key(apiString) | Index(apiInteger);
type kmsKeyPoliciesMap = Js.Dict.t< kmsKeyPolicy>
type kmsGrantOperationsList = array<kmsGrantOperation>
type kmsConstraintsMap = Js.Dict.t< kmsConstraintsValue>
type jobError = {
@as("message") message: option<apiString>,
@as("code") code: option<jobErrorCode>
}
type iamRoleConfiguration = {
@as("trustPolicy") trustPolicy: iamTrustPolicy
}
type generatedPolicyList = array<generatedPolicy>
type findingSource = {
@as("detail") detail: findingSourceDetail,
@as("type") type_: option<findingSourceType>
}
type findingIdList = array<findingId>
type criterion = {
@as("exists") exists: apiBoolean,
@as("contains") contains: valueList,
@as("neq") neq: valueList,
@as("eq") eq: valueList
}
type analyzedResourceSummary = {
@as("resourceType") resourceType: option<resourceType>,
@as("resourceOwnerAccount") resourceOwnerAccount: option<apiString>,
@as("resourceArn") resourceArn: option<resourceArn>
}
type analyzedResource = {
@as("error") error: apiString,
@as("resourceOwnerAccount") resourceOwnerAccount: option<apiString>,
@as("status") status: findingStatus,
@as("sharedVia") sharedVia: sharedViaList,
@as("actions") actions: actionList,
@as("isPublic") isPublic: option<apiBoolean>,
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("analyzedAt") analyzedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("resourceType") resourceType: option<resourceType>,
@as("resourceArn") resourceArn: option<resourceArn>
}
type aclGrantee = Uri(aclUri) | Id(aclCanonicalId);
type accessPreviewStatusReason = {
@as("code") code: option<accessPreviewStatusReasonCode>
}
type trailPropertiesList = array<trailProperties>
type trailList = array<trail>
type s3BucketAclGrantConfiguration = {
@as("grantee") grantee: option<aclGrantee>,
@as("permission") permission: option<aclPermission>
}
type policyGenerationList = array<policyGeneration>
type pathElementList = array<pathElement>
type networkOriginConfiguration = InternetConfiguration(internetConfiguration) | VpcConfiguration(vpcConfiguration);
type kmsGrantConstraints = {
@as("encryptionContextSubset") encryptionContextSubset: kmsConstraintsMap,
@as("encryptionContextEquals") encryptionContextEquals: kmsConstraintsMap
}
type jobDetails = {
@as("jobError") jobError: jobError,
@as("completedOn") completedOn: amazonawsTimestamp,
@as("startedOn") startedOn: option<amazonawsTimestamp>,
@as("status") status: option<jobStatus>,
@as("jobId") jobId: option<jobId>
}
type findingSourceList = array<findingSource>
type filterCriteriaMap = Js.Dict.t< criterion>
type analyzerSummary = {
@as("statusReason") statusReason: statusReason,
@as("status") status: option<analyzerStatus>,
@as("tags") tags: tagsMap,
@as("lastResourceAnalyzedAt") lastResourceAnalyzedAt: amazonawsTimestamp,
@as("lastResourceAnalyzed") lastResourceAnalyzed: apiString,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("type") type_: option<type_>,
@as("name") name: option<name>,
@as("arn") arn: option<analyzerArn>
}
type analyzedResourcesList = array<analyzedResourceSummary>
type accessPreviewSummary = {
@as("statusReason") statusReason: accessPreviewStatusReason,
@as("status") status: option<accessPreviewStatus>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("analyzerArn") analyzerArn: option<analyzerArn>,
@as("id") id: option<accessPreviewId>
}
type s3BucketAclGrantConfigurationsList = array<s3BucketAclGrantConfiguration>
type s3AccessPointConfiguration = {
@as("networkOrigin") networkOrigin: networkOriginConfiguration,
@as("publicAccessBlock") publicAccessBlock: s3PublicAccessBlockConfiguration,
@as("accessPointPolicy") accessPointPolicy: accessPointPolicy
}
type location = {
@as("span") span: option<span>,
@as("path") path: option<pathElementList>
}
type kmsGrantConfiguration = {
@as("issuingAccount") issuingAccount: option<issuingAccount>,
@as("constraints") constraints: kmsGrantConstraints,
@as("retiringPrincipal") retiringPrincipal: retiringPrincipal,
@as("granteePrincipal") granteePrincipal: option<granteePrincipal>,
@as("operations") operations: option<kmsGrantOperationsList>
}
type inlineArchiveRule = {
@as("filter") filter: option<filterCriteriaMap>,
@as("ruleName") ruleName: option<name>
}
type findingSummary = {
@as("sources") sources: findingSourceList,
@as("error") error: apiString,
@as("resourceOwnerAccount") resourceOwnerAccount: option<apiString>,
@as("status") status: option<findingStatus>,
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("analyzedAt") analyzedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("condition") condition: option<conditionKeyMap>,
@as("resourceType") resourceType: option<resourceType>,
@as("isPublic") isPublic: apiBoolean,
@as("resource") resource: apiString,
@as("action") action: actionList,
@as("principal") principal: principalMap,
@as("id") id: option<findingId>
}
type finding = {
@as("sources") sources: findingSourceList,
@as("error") error: apiString,
@as("resourceOwnerAccount") resourceOwnerAccount: option<apiString>,
@as("status") status: option<findingStatus>,
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("analyzedAt") analyzedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("condition") condition: option<conditionKeyMap>,
@as("resourceType") resourceType: option<resourceType>,
@as("isPublic") isPublic: apiBoolean,
@as("resource") resource: apiString,
@as("action") action: actionList,
@as("principal") principal: principalMap,
@as("id") id: option<findingId>
}
type cloudTrailProperties = {
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("trailProperties") trailProperties: option<trailPropertiesList>
}
type cloudTrailDetails = {
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("accessRole") accessRole: option<roleArn>,
@as("trails") trails: option<trailList>
}
type archiveRuleSummary = {
@as("updatedAt") updatedAt: option<amazonawsTimestamp>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("filter") filter: option<filterCriteriaMap>,
@as("ruleName") ruleName: option<name>
}
type analyzersList = array<analyzerSummary>
type accessPreviewsList = array<accessPreviewSummary>
type accessPreviewFinding = {
@as("sources") sources: findingSourceList,
@as("error") error: apiString,
@as("resourceOwnerAccount") resourceOwnerAccount: option<apiString>,
@as("status") status: option<findingStatus>,
@as("changeType") changeType: option<findingChangeType>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("resourceType") resourceType: option<resourceType>,
@as("isPublic") isPublic: apiBoolean,
@as("resource") resource: apiString,
@as("condition") condition: conditionKeyMap,
@as("action") action: actionList,
@as("principal") principal: principalMap,
@as("existingFindingStatus") existingFindingStatus: findingStatus,
@as("existingFindingId") existingFindingId: findingId,
@as("id") id: option<accessPreviewFindingId>
}
type s3AccessPointConfigurationsMap = Js.Dict.t< s3AccessPointConfiguration>
type locationList = array<location>
type kmsGrantConfigurationsList = array<kmsGrantConfiguration>
type inlineArchiveRulesList = array<inlineArchiveRule>
type generatedPolicyProperties = {
@as("cloudTrailProperties") cloudTrailProperties: cloudTrailProperties,
@as("principalArn") principalArn: option<principalArn>,
@as("isComplete") isComplete: apiBoolean
}
type findingsList = array<findingSummary>
type archiveRulesList = array<archiveRuleSummary>
type accessPreviewFindingsList = array<accessPreviewFinding>
type validatePolicyFinding = {
@as("locations") locations: option<locationList>,
@as("learnMoreLink") learnMoreLink: option<learnMoreLink>,
@as("issueCode") issueCode: option<issueCode>,
@as("findingType") findingType: option<validatePolicyFindingType>,
@as("findingDetails") findingDetails: option<apiString>
}
type s3BucketConfiguration = {
@as("accessPoints") accessPoints: s3AccessPointConfigurationsMap,
@as("bucketPublicAccessBlock") bucketPublicAccessBlock: s3PublicAccessBlockConfiguration,
@as("bucketAclGrants") bucketAclGrants: s3BucketAclGrantConfigurationsList,
@as("bucketPolicy") bucketPolicy: s3BucketPolicy
}
type kmsKeyConfiguration = {
@as("grants") grants: kmsGrantConfigurationsList,
@as("keyPolicies") keyPolicies: kmsKeyPoliciesMap
}
type generatedPolicyResult = {
@as("generatedPolicies") generatedPolicies: generatedPolicyList,
@as("properties") properties: option<generatedPolicyProperties>
}
type validatePolicyFindingList = array<validatePolicyFinding>
type configuration = SqsQueue(sqsQueueConfiguration) | S3Bucket(s3BucketConfiguration) | SecretsManagerSecret(secretsManagerSecretConfiguration) | KmsKey(kmsKeyConfiguration) | IamRole(iamRoleConfiguration);
type configurationsMap = Js.Dict.t< configuration>
type accessPreview = {
@as("statusReason") statusReason: accessPreviewStatusReason,
@as("status") status: option<accessPreviewStatus>,
@as("createdAt") createdAt: option<amazonawsTimestamp>,
@as("configurations") configurations: option<configurationsMap>,
@as("analyzerArn") analyzerArn: option<analyzerArn>,
@as("id") id: option<accessPreviewId>
}
type clientType;
@module("@aws-sdk/client-access-analyzer") @new external createClient: unit => clientType = "AccessAnalyzerClient";
module UpdateFindings = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("resourceArn") resourceArn: resourceArn,
@as("ids") ids: findingIdList,
@as("status") status: option<findingStatusUpdate>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UpdateFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagsMap>,
@as("resourceArn") resourceArn: option<apiString>
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartResourceScan = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "StartResourceScanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<apiString>
}
  type response = {
@as("tags") tags: tagsMap
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAnalyzedResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("resource") resource: analyzedResource
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAnalyzedResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteArchiveRule = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("ruleName") ruleName: option<name>,
@as("analyzerName") analyzerName: option<name>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "DeleteArchiveRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAnalyzer = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("analyzerName") analyzerName: option<name>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "DeleteAnalyzerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelPolicyGeneration = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CancelPolicyGenerationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplyArchiveRule = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("ruleName") ruleName: option<name>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ApplyArchiveRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateArchiveRule = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("filter") filter: option<filterCriteriaMap>,
@as("ruleName") ruleName: option<name>,
@as("analyzerName") analyzerName: option<name>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UpdateArchiveRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListPolicyGenerations = {
  type t;
  type request = {
@as("nextToken") nextToken: token,
@as("maxResults") maxResults: apiInteger,
@as("principalArn") principalArn: principalArn
}
  type response = {
@as("nextToken") nextToken: token,
@as("policyGenerations") policyGenerations: option<policyGenerationList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListPolicyGenerationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnalyzedResources = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token,
@as("resourceType") resourceType: resourceType,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("nextToken") nextToken: token,
@as("analyzedResources") analyzedResources: option<analyzedResourcesList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAnalyzedResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAnalyzer = {
  type t;
  type request = {
@as("analyzerName") analyzerName: option<name>
}
  type response = {
@as("analyzer") analyzer: option<analyzerSummary>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAnalyzerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateArchiveRule = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("filter") filter: option<filterCriteriaMap>,
@as("ruleName") ruleName: option<name>,
@as("analyzerName") analyzerName: option<name>
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateArchiveRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartPolicyGeneration = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("cloudTrailDetails") cloudTrailDetails: cloudTrailDetails,
@as("policyGenerationDetails") policyGenerationDetails: option<policyGenerationDetails>
}
  type response = {
@as("jobId") jobId: option<jobId>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "StartPolicyGenerationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnalyzers = {
  type t;
  type request = {
@as("type") type_: type_,
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("analyzers") analyzers: option<analyzersList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAnalyzersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessPreviews = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("nextToken") nextToken: token,
@as("accessPreviews") accessPreviews: option<accessPreviewsList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAccessPreviewsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFinding = {
  type t;
  type request = {
@as("id") id: option<findingId>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("finding") finding: finding
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetFindingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetArchiveRule = {
  type t;
  type request = {
@as("ruleName") ruleName: option<name>,
@as("analyzerName") analyzerName: option<name>
}
  type response = {
@as("archiveRule") archiveRule: option<archiveRuleSummary>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetArchiveRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token,
@as("sort") sort: sortCriteria,
@as("filter") filter: filterCriteriaMap,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("nextToken") nextToken: token,
@as("findings") findings: option<findingsList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListArchiveRules = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token,
@as("analyzerName") analyzerName: option<name>
}
  type response = {
@as("nextToken") nextToken: token,
@as("archiveRules") archiveRules: option<archiveRulesList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListArchiveRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessPreviewFindings = {
  type t;
  type request = {
@as("maxResults") maxResults: apiInteger,
@as("nextToken") nextToken: token,
@as("filter") filter: filterCriteriaMap,
@as("analyzerArn") analyzerArn: option<analyzerArn>,
@as("accessPreviewId") accessPreviewId: option<accessPreviewId>
}
  type response = {
@as("nextToken") nextToken: token,
@as("findings") findings: option<accessPreviewFindingsList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAccessPreviewFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAnalyzer = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("tags") tags: tagsMap,
@as("archiveRules") archiveRules: inlineArchiveRulesList,
@as("type") type_: option<type_>,
@as("analyzerName") analyzerName: option<name>
}
  type response = {
@as("arn") arn: analyzerArn
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateAnalyzerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGeneratedPolicy = {
  type t;
  type request = {
@as("includeServiceLevelTemplate") includeServiceLevelTemplate: apiBoolean,
@as("includeResourcePlaceholders") includeResourcePlaceholders: apiBoolean,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("generatedPolicyResult") generatedPolicyResult: option<generatedPolicyResult>,
@as("jobDetails") jobDetails: option<jobDetails>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetGeneratedPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidatePolicy = {
  type t;
  type request = {
@as("policyType") policyType: option<policyType>,
@as("policyDocument") policyDocument: option<policyDocument>,
@as("nextToken") nextToken: token,
@as("maxResults") maxResults: apiInteger,
@as("locale") locale: locale
}
  type response = {
@as("nextToken") nextToken: token,
@as("findings") findings: option<validatePolicyFindingList>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ValidatePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPreview = {
  type t;
  type request = {
@as("clientToken") clientToken: apiString,
@as("configurations") configurations: option<configurationsMap>,
@as("analyzerArn") analyzerArn: option<analyzerArn>
}
  type response = {
@as("id") id: option<accessPreviewId>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateAccessPreviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessPreview = {
  type t;
  type request = {
@as("analyzerArn") analyzerArn: option<analyzerArn>,
@as("accessPreviewId") accessPreviewId: option<accessPreviewId>
}
  type response = {
@as("accessPreview") accessPreview: option<accessPreview>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAccessPreviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
