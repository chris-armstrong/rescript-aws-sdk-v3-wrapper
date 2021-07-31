type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type long = float
type vpcId = string
type valueList = array<string_>
type validationExceptionReason = [@as("other") #Other | @as("fieldValidationFailed") #FieldValidationFailed | @as("cannotParse") #CannotParse | @as("unknownOperation") #UnknownOperation]
type validationExceptionField = {
message: string_,
name: string_
}
type validatePolicyFindingType = [@as("WARNING") #WARNING | @as("SUGGESTION") #SUGGESTION | @as("SECURITY_WARNING") #SECURITYWARNING | @as("ERROR") #ERROR]
type type_ = [@as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type token = string
type timestamp_ = Js.Date.t;
type tagsMap = Js.Dict.t< string_>
type tagKeys = array<string_>
type substring = {
length: integer_,
start: integer_
}
type sqsQueuePolicy = string
type sharedViaList = array<string_>
type secretsManagerSecretPolicy = string
type secretsManagerSecretKmsId = string
type s3PublicAccessBlockConfiguration = {
restrictPublicBuckets: boolean_,
ignorePublicAcls: boolean_
}
type s3BucketPolicy = string
type roleArn = string
type retiringPrincipal = string
type resourceType = [@as("AWS::SecretsManager::Secret") #AWSSecretsManagerSecret | @as("AWS::KMS::Key") #AWSKMSKey | @as("AWS::Lambda::LayerVersion") #AWSLambdaLayerVersion | @as("AWS::Lambda::Function") #AWSLambdaFunction | @as("AWS::SQS::Queue") #AWSSQSQueue | @as("AWS::IAM::Role") #AWSIAMRole | @as("AWS::S3::Bucket") #AWSS3Bucket]
type resourceArn = string
type regionList = array<string_>
type reasonCode = [@as("SERVICE_LINKED_ROLE_CREATION_FAILED") #SERVICELINKEDROLECREATIONFAILED | @as("ORGANIZATION_DELETED") #ORGANIZATIONDELETED | @as("DELEGATED_ADMINISTRATOR_DEREGISTERED") #DELEGATEDADMINISTRATORDEREGISTERED | @as("AWS_SERVICE_ACCESS_DISABLED") #AWSSERVICEACCESSDISABLED]
type principalMap = Js.Dict.t< string_>
type principalArn = string
type position = {
offset: integer_,
column: integer_,
line: integer_
}
type policyType = [@as("SERVICE_CONTROL_POLICY") #SERVICECONTROLPOLICY | @as("RESOURCE_POLICY") #RESOURCEPOLICY | @as("IDENTITY_POLICY") #IDENTITYPOLICY]
type policyName = string
type policyDocument = string
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type locale = [@as("ZH_TW") #ZHTW | @as("ZH_CN") #ZHCN | @as("PT_BR") #PTBR | @as("KO") #KO | @as("JA") #JA | @as("IT") #IT | @as("FR") #FR | @as("ES") #ES | @as("EN") #EN | @as("DE") #DE]
type learnMoreLink = string
type kmsKeyPolicy = string
type kmsGrantOperation = [@as("Verify") #Verify | @as("Sign") #Sign | @as("RetireGrant") #RetireGrant | @as("ReEncryptTo") #ReEncryptTo | @as("ReEncryptFrom") #ReEncryptFrom | @as("GetPublicKey") #GetPublicKey | @as("GenerateDataKeyWithoutPlaintext") #GenerateDataKeyWithoutPlaintext | @as("GenerateDataKeyPairWithoutPlaintext") #GenerateDataKeyPairWithoutPlaintext | @as("GenerateDataKeyPair") #GenerateDataKeyPair | @as("GenerateDataKey") #GenerateDataKey | @as("Encrypt") #Encrypt | @as("DescribeKey") #DescribeKey | @as("Decrypt") #Decrypt | @as("CreateGrant") #CreateGrant]
type kmsConstraintsValue = string
type kmsConstraintsKey = string
type jobStatus = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #INPROGRESS]
type jobId = string
type jobErrorCode = [@as("SERVICE_ERROR") #SERVICEERROR | @as("SERVICE_QUOTA_EXCEEDED_ERROR") #SERVICEQUOTAEXCEEDEDERROR | @as("RESOURCE_NOT_FOUND_ERROR") #RESOURCENOTFOUNDERROR | @as("AUTHORIZATION_ERROR") #AUTHORIZATIONERROR]
type issuingAccount = string
type issueCode = string
type internetConfiguration = unit
type iamTrustPolicy = string
type granteePrincipal = string
type generatedPolicy = {
policy: string_
}
type findingStatusUpdate = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingStatus = [@as("RESOLVED") #RESOLVED | @as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type findingSourceType = [@as("S3_ACCESS_POINT") #S3ACCESSPOINT | @as("BUCKET_ACL") #BUCKETACL | @as("POLICY") #POLICY]
type findingSourceDetail = {
accessPointArn: option<string_>
}
type findingId = string
type findingChangeType = [@as("UNCHANGED") #UNCHANGED | @as("NEW") #NEW | @as("CHANGED") #CHANGED]
type configurationsMapKey = string
type conditionKeyMap = Js.Dict.t< string_>
type cloudTrailArn = string

type analyzerStatus = [@as("FAILED") #FAILED | @as("DISABLED") #DISABLED | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type analyzerArn = string

type actionList = array<string_>
type aclUri = string
type aclPermission = [@as("FULL_CONTROL") #FULLCONTROL | @as("WRITE_ACP") #WRITEACP | @as("READ_ACP") #READACP | @as("WRITE") #WRITE | @as("READ") #READ]
type aclCanonicalId = string
type accessPreviewStatusReasonCode = [@as("INVALID_CONFIGURATION") #INVALIDCONFIGURATION | @as("INTERNAL_ERROR") #INTERNALERROR]
type accessPreviewStatus = [@as("FAILED") #FAILED | @as("CREATING") #CREATING | @as("COMPLETED") #COMPLETED]
type accessPreviewId = string
type accessPreviewFindingId = string
type accessPointPolicy = string
type accessPointArn = string
type vpcConfiguration = {
vpcId: vpcId
}
type validationExceptionFieldList = array<validationExceptionField>
type trailProperties = {
allRegions: option<boolean_>,
regions: option<regionList>,
cloudTrailArn: cloudTrailArn
}
type trail = {
allRegions: option<boolean_>,
regions: option<regionList>,
cloudTrailArn: cloudTrailArn
}
type statusReason = {
code: reasonCode
}
type sqsQueueConfiguration = {
queuePolicy: option<sqsQueuePolicy>
}
type span = {
end: position,
start: position
}
type sortCriteria = {
orderBy: option<orderBy>,
attributeName: option<string_>
}
type secretsManagerSecretConfiguration = {
secretPolicy: option<secretsManagerSecretPolicy>,
kmsKeyId: option<secretsManagerSecretKmsId>
}
type policyGenerationDetails = {
principalArn: principalArn
}
type policyGeneration = {
completedOn: option<timestamp_>,
startedOn: timestamp_,
status: jobStatus,
principalArn: principalArn,
jobId: jobId
}
type pathElement = Value(string_) | Substring(substring) | Key(string_) | Index(integer_);
type kmsKeyPoliciesMap = Js.Dict.t< kmsKeyPolicy>
type kmsGrantOperationsList = array<kmsGrantOperation>
type kmsConstraintsMap = Js.Dict.t< kmsConstraintsValue>
type jobError = {
message: string_,
code: jobErrorCode
}
type iamRoleConfiguration = {
trustPolicy: option<iamTrustPolicy>
}
type generatedPolicyList = array<generatedPolicy>
type findingSource = {
detail: option<findingSourceDetail>,
@as("type") type_: findingSourceType
}
type findingIdList = array<findingId>
type criterion = {
exists: option<boolean_>,
contains: option<valueList>,
neq: option<valueList>,
eq: option<valueList>
}
type analyzedResourceSummary = {
resourceType: resourceType,
resourceOwnerAccount: string_,
resourceArn: resourceArn
}
type analyzedResource = {
error: option<string_>,
resourceOwnerAccount: string_,
status: option<findingStatus>,
sharedVia: option<sharedViaList>,
actions: option<actionList>,
isPublic: boolean_,
updatedAt: timestamp_,
analyzedAt: timestamp_,
createdAt: timestamp_,
resourceType: resourceType,
resourceArn: resourceArn
}
type aclGrantee = Uri(aclUri) | Id(aclCanonicalId);
type accessPreviewStatusReason = {
code: accessPreviewStatusReasonCode
}
type trailPropertiesList = array<trailProperties>
type trailList = array<trail>
type s3BucketAclGrantConfiguration = {
grantee: aclGrantee,
permission: aclPermission
}
type policyGenerationList = array<policyGeneration>
type pathElementList = array<pathElement>
type networkOriginConfiguration = InternetConfiguration(internetConfiguration) | VpcConfiguration(vpcConfiguration);
type kmsGrantConstraints = {
encryptionContextSubset: option<kmsConstraintsMap>,
encryptionContextEquals: option<kmsConstraintsMap>
}
type jobDetails = {
jobError: option<jobError>,
completedOn: option<timestamp_>,
startedOn: timestamp_,
status: jobStatus,
jobId: jobId
}
type findingSourceList = array<findingSource>
type filterCriteriaMap = Js.Dict.t< criterion>
type analyzerSummary = {
statusReason: option<statusReason>,
status: analyzerStatus,
tags: option<tagsMap>,
lastResourceAnalyzedAt: option<timestamp_>,
lastResourceAnalyzed: option<string_>,
createdAt: timestamp_,
@as("type") type_: type_,
name: name,
arn: analyzerArn
}
type analyzedResourcesList = array<analyzedResourceSummary>
type accessPreviewSummary = {
statusReason: option<accessPreviewStatusReason>,
status: accessPreviewStatus,
createdAt: timestamp_,
analyzerArn: analyzerArn,
id: accessPreviewId
}
type s3BucketAclGrantConfigurationsList = array<s3BucketAclGrantConfiguration>
type s3AccessPointConfiguration = {
networkOrigin: option<networkOriginConfiguration>,
publicAccessBlock: option<s3PublicAccessBlockConfiguration>,
accessPointPolicy: option<accessPointPolicy>
}
type location = {
span: span,
path: pathElementList
}
type kmsGrantConfiguration = {
issuingAccount: issuingAccount,
constraints: option<kmsGrantConstraints>,
retiringPrincipal: option<retiringPrincipal>,
granteePrincipal: granteePrincipal,
operations: kmsGrantOperationsList
}
type inlineArchiveRule = {
filter: filterCriteriaMap,
ruleName: name
}
type findingSummary = {
sources: option<findingSourceList>,
error: option<string_>,
resourceOwnerAccount: string_,
status: findingStatus,
updatedAt: timestamp_,
analyzedAt: timestamp_,
createdAt: timestamp_,
condition: conditionKeyMap,
resourceType: resourceType,
isPublic: option<boolean_>,
resource: option<string_>,
action: option<actionList>,
principal: option<principalMap>,
id: findingId
}
type finding = {
sources: option<findingSourceList>,
error: option<string_>,
resourceOwnerAccount: string_,
status: findingStatus,
updatedAt: timestamp_,
analyzedAt: timestamp_,
createdAt: timestamp_,
condition: conditionKeyMap,
resourceType: resourceType,
isPublic: option<boolean_>,
resource: option<string_>,
action: option<actionList>,
principal: option<principalMap>,
id: findingId
}
type cloudTrailProperties = {
endTime: timestamp_,
startTime: timestamp_,
trailProperties: trailPropertiesList
}
type cloudTrailDetails = {
endTime: option<timestamp_>,
startTime: timestamp_,
accessRole: roleArn,
trails: trailList
}
type archiveRuleSummary = {
updatedAt: timestamp_,
createdAt: timestamp_,
filter: filterCriteriaMap,
ruleName: name
}
type analyzersList = array<analyzerSummary>
type accessPreviewsList = array<accessPreviewSummary>
type accessPreviewFinding = {
sources: option<findingSourceList>,
error: option<string_>,
resourceOwnerAccount: string_,
status: findingStatus,
changeType: findingChangeType,
createdAt: timestamp_,
resourceType: resourceType,
isPublic: option<boolean_>,
resource: option<string_>,
condition: option<conditionKeyMap>,
action: option<actionList>,
principal: option<principalMap>,
existingFindingStatus: option<findingStatus>,
existingFindingId: option<findingId>,
id: accessPreviewFindingId
}
type s3AccessPointConfigurationsMap = Js.Dict.t< s3AccessPointConfiguration>
type locationList = array<location>
type kmsGrantConfigurationsList = array<kmsGrantConfiguration>
type inlineArchiveRulesList = array<inlineArchiveRule>
type generatedPolicyProperties = {
cloudTrailProperties: option<cloudTrailProperties>,
principalArn: principalArn,
isComplete: option<boolean_>
}
type findingsList = array<findingSummary>
type archiveRulesList = array<archiveRuleSummary>
type accessPreviewFindingsList = array<accessPreviewFinding>
type validatePolicyFinding = {
locations: locationList,
learnMoreLink: learnMoreLink,
issueCode: issueCode,
findingType: validatePolicyFindingType,
findingDetails: string_
}
type s3BucketConfiguration = {
accessPoints: option<s3AccessPointConfigurationsMap>,
bucketPublicAccessBlock: option<s3PublicAccessBlockConfiguration>,
bucketAclGrants: option<s3BucketAclGrantConfigurationsList>,
bucketPolicy: option<s3BucketPolicy>
}
type kmsKeyConfiguration = {
grants: option<kmsGrantConfigurationsList>,
keyPolicies: option<kmsKeyPoliciesMap>
}
type generatedPolicyResult = {
generatedPolicies: option<generatedPolicyList>,
properties: generatedPolicyProperties
}
type validatePolicyFindingList = array<validatePolicyFinding>
type configuration = SqsQueue(sqsQueueConfiguration) | S3Bucket(s3BucketConfiguration) | SecretsManagerSecret(secretsManagerSecretConfiguration) | KmsKey(kmsKeyConfiguration) | IamRole(iamRoleConfiguration);
type configurationsMap = Js.Dict.t< configuration>
type accessPreview = {
statusReason: option<accessPreviewStatusReason>,
status: accessPreviewStatus,
createdAt: timestamp_,
configurations: configurationsMap,
analyzerArn: analyzerArn,
id: accessPreviewId
}
type awsServiceClient;
@module("@aws-sdk/client-access-analyzer") @new external createClient: unit => awsServiceClient = "AccessAnalyzerClient";
module UpdateFindings = {
  type t;
  type request = {
clientToken: option<string_>,
resourceArn: option<resourceArn>,
ids: option<findingIdList>,
status: findingStatusUpdate,
analyzerArn: analyzerArn
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UpdateFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagsMap,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartResourceScan = {
  type t;
  type request = {
resourceArn: resourceArn,
analyzerArn: analyzerArn
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "StartResourceScanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: string_
}
  type response = {
tags: option<tagsMap>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAnalyzedResource = {
  type t;
  type request = {
resourceArn: resourceArn,
analyzerArn: analyzerArn
}
  type response = {
resource: option<analyzedResource>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAnalyzedResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteArchiveRule = {
  type t;
  type request = {
clientToken: option<string_>,
ruleName: name,
analyzerName: name
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "DeleteArchiveRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAnalyzer = {
  type t;
  type request = {
clientToken: option<string_>,
analyzerName: name
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "DeleteAnalyzerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CancelPolicyGeneration = {
  type t;
  type request = {
jobId: jobId
}
  type response = unit
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CancelPolicyGenerationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ApplyArchiveRule = {
  type t;
  type request = {
clientToken: option<string_>,
ruleName: name,
analyzerArn: analyzerArn
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ApplyArchiveRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateArchiveRule = {
  type t;
  type request = {
clientToken: option<string_>,
filter: filterCriteriaMap,
ruleName: name,
analyzerName: name
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "UpdateArchiveRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListPolicyGenerations = {
  type t;
  type request = {
nextToken: option<token>,
maxResults: option<integer_>,
principalArn: option<principalArn>
}
  type response = {
nextToken: option<token>,
policyGenerations: policyGenerationList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListPolicyGenerationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAnalyzedResources = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>,
resourceType: option<resourceType>,
analyzerArn: analyzerArn
}
  type response = {
nextToken: option<token>,
analyzedResources: analyzedResourcesList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAnalyzedResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAnalyzer = {
  type t;
  type request = {
analyzerName: name
}
  type response = {
analyzer: analyzerSummary
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAnalyzerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateArchiveRule = {
  type t;
  type request = {
clientToken: option<string_>,
filter: filterCriteriaMap,
ruleName: name,
analyzerName: name
}
  
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateArchiveRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartPolicyGeneration = {
  type t;
  type request = {
clientToken: option<string_>,
cloudTrailDetails: option<cloudTrailDetails>,
policyGenerationDetails: policyGenerationDetails
}
  type response = {
jobId: jobId
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "StartPolicyGenerationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAnalyzers = {
  type t;
  type request = {
@as("type") type_: option<type_>,
maxResults: option<integer_>,
nextToken: option<token>
}
  type response = {
nextToken: option<token>,
analyzers: analyzersList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAnalyzersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccessPreviews = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>,
analyzerArn: analyzerArn
}
  type response = {
nextToken: option<token>,
accessPreviews: accessPreviewsList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAccessPreviewsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFinding = {
  type t;
  type request = {
id: findingId,
analyzerArn: analyzerArn
}
  type response = {
finding: option<finding>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetFindingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetArchiveRule = {
  type t;
  type request = {
ruleName: name,
analyzerName: name
}
  type response = {
archiveRule: archiveRuleSummary
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetArchiveRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>,
sort: option<sortCriteria>,
filter: option<filterCriteriaMap>,
analyzerArn: analyzerArn
}
  type response = {
nextToken: option<token>,
findings: findingsList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListArchiveRules = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>,
analyzerName: name
}
  type response = {
nextToken: option<token>,
archiveRules: archiveRulesList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListArchiveRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccessPreviewFindings = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<token>,
filter: option<filterCriteriaMap>,
analyzerArn: analyzerArn,
accessPreviewId: accessPreviewId
}
  type response = {
nextToken: option<token>,
findings: accessPreviewFindingsList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ListAccessPreviewFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAnalyzer = {
  type t;
  type request = {
clientToken: option<string_>,
tags: option<tagsMap>,
archiveRules: option<inlineArchiveRulesList>,
@as("type") type_: type_,
analyzerName: name
}
  type response = {
arn: option<analyzerArn>
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateAnalyzerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGeneratedPolicy = {
  type t;
  type request = {
includeServiceLevelTemplate: option<boolean_>,
includeResourcePlaceholders: option<boolean_>,
jobId: jobId
}
  type response = {
generatedPolicyResult: generatedPolicyResult,
jobDetails: jobDetails
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetGeneratedPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ValidatePolicy = {
  type t;
  type request = {
policyType: policyType,
policyDocument: policyDocument,
nextToken: option<token>,
maxResults: option<integer_>,
locale: option<locale>
}
  type response = {
nextToken: option<token>,
findings: validatePolicyFindingList
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "ValidatePolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPreview = {
  type t;
  type request = {
clientToken: option<string_>,
configurations: configurationsMap,
analyzerArn: analyzerArn
}
  type response = {
id: accessPreviewId
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "CreateAccessPreviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccessPreview = {
  type t;
  type request = {
analyzerArn: analyzerArn,
accessPreviewId: accessPreviewId
}
  type response = {
accessPreview: accessPreview
}
  @module("@aws-sdk/client-access-analyzer") @new external new_: (request) => t = "GetAccessPreviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
