type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timestampType = Js.Date.t;
type tagValueType = string
type tagKeyType = string
type statusType = [@as("InProgress") #InProgress | @as("Failed") #Failed | @as("InSync") #InSync]
type statusMessageType = string
type sortOrderType = [@as("desc") #desc | @as("asc") #asc]
type secretVersionStageType = string
type secretVersionIdType = string
type secretStringType = string
type secretNameType = string
type secretIdType = string
type secretBinaryType = NodeJs.Buffer.t;
type secretARNType = string
type rotationLambdaARNType = string
type rotationEnabledType = bool;
type requireEachIncludedTypeType = bool;
type regionType = string
type recoveryWindowInDaysType = float;
type randomPasswordType = string
type passwordLengthType = float;
type owningServiceType = string
type nonEmptyResourcePolicyType = string
type nextTokenType = string
type nameType = string
type maxResultsType = int;
type lastRotatedDateType = Js.Date.t;
type lastChangedDateType = Js.Date.t;
type lastAccessedDateType = Js.Date.t;
type kmsKeyIdType = string
type includeSpaceType = bool;
type filterValueStringType = string
type filterNameStringType = [@as("all") #all | @as("primary-region") #primary_region | @as("tag-value") #tag_value | @as("tag-key") #tag_key | @as("name") #name | @as("description") #description]
type excludeUppercaseType = bool;
type excludePunctuationType = bool;
type excludeNumbersType = bool;
type excludeLowercaseType = bool;
type excludeCharactersType = string
type errorMessage = string
type descriptionType = string
type deletionDateType = Js.Date.t;
type deletedDateType = Js.Date.t;
type createdDateType = Js.Date.t;
type clientRequestTokenType = string
type booleanType = bool;
type automaticallyRotateAfterDaysType = float;
type validationErrorsEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("CheckName") checkName: nameType
}
type tagKeyListType = array<tagKeyType>
type tag = {
@as("Value") value: tagValueType,
@as("Key") key: tagKeyType
}
type secretVersionStagesType = array<secretVersionStageType>
type rotationRulesType = {
@as("AutomaticallyAfterDays") automaticallyAfterDays: automaticallyRotateAfterDaysType
}
type replicationStatusType = {
@as("LastAccessedDate") lastAccessedDate: lastAccessedDateType,
@as("StatusMessage") statusMessage: statusMessageType,
@as("Status") status: statusType,
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Region") region: regionType
}
type replicaRegionType = {
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Region") region: regionType
}
type removeReplicaRegionListType = array<regionType>
type filterValuesStringList = array<filterValueStringType>
type validationErrorsType = array<validationErrorsEntry>
type tagListType = array<tag>
type secretVersionsToStagesMapType = Js.Dict.t< secretVersionStagesType>
type secretVersionsListEntry = {
@as("CreatedDate") createdDate: createdDateType,
@as("LastAccessedDate") lastAccessedDate: lastAccessedDateType,
@as("VersionStages") versionStages: secretVersionStagesType,
@as("VersionId") versionId: secretVersionIdType
}
type replicationStatusListType = array<replicationStatusType>
type filter = {
@as("Values") values: filterValuesStringList,
@as("Key") key: filterNameStringType
}
type addReplicaRegionListType = array<replicaRegionType>
type secretVersionsListType = array<secretVersionsListEntry>
type secretListEntry = {
@as("PrimaryRegion") primaryRegion: regionType,
@as("CreatedDate") createdDate: timestampType,
@as("OwningService") owningService: owningServiceType,
@as("SecretVersionsToStages") secretVersionsToStages: secretVersionsToStagesMapType,
@as("Tags") tags: tagListType,
@as("DeletedDate") deletedDate: deletedDateType,
@as("LastAccessedDate") lastAccessedDate: lastAccessedDateType,
@as("LastChangedDate") lastChangedDate: lastChangedDateType,
@as("LastRotatedDate") lastRotatedDate: lastRotatedDateType,
@as("RotationRules") rotationRules: rotationRulesType,
@as("RotationLambdaARN") rotationLambdaARN: rotationLambdaARNType,
@as("RotationEnabled") rotationEnabled: rotationEnabledType,
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Description") description: descriptionType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
type filtersListType = array<filter>
type secretListType = array<secretListEntry>
type clientType;
@module("@aws-sdk/client-secretsmanager") @new external createClient: unit => clientType = "SecretsManagerClient";
module UpdateSecretVersionStage = {
  type t;
  type request = {
@as("MoveToVersionId") moveToVersionId: secretVersionIdType,
@as("RemoveFromVersionId") removeFromVersionId: secretVersionIdType,
@as("VersionStage") versionStage: option<secretVersionStageType>,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "UpdateSecretVersionStageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSecret = {
  type t;
  type request = {
@as("SecretString") secretString: secretStringType,
@as("SecretBinary") secretBinary: secretBinaryType,
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Description") description: descriptionType,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "UpdateSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopReplicationToReplica = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "StopReplicationToReplicaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreSecret = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "RestoreSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("BlockPublicPolicy") blockPublicPolicy: booleanType,
@as("ResourcePolicy") resourcePolicy: option<nonEmptyResourcePolicyType>,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("Name") name: nameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicy = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("ResourcePolicy") resourcePolicy: nonEmptyResourcePolicyType,
@as("Name") name: nameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "GetResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRandomPassword = {
  type t;
  type request = {
@as("RequireEachIncludedType") requireEachIncludedType: requireEachIncludedTypeType,
@as("IncludeSpace") includeSpace: includeSpaceType,
@as("ExcludeLowercase") excludeLowercase: excludeLowercaseType,
@as("ExcludeUppercase") excludeUppercase: excludeUppercaseType,
@as("ExcludePunctuation") excludePunctuation: excludePunctuationType,
@as("ExcludeNumbers") excludeNumbers: excludeNumbersType,
@as("ExcludeCharacters") excludeCharacters: excludeCharactersType,
@as("PasswordLength") passwordLength: passwordLengthType
}
  type response = {
@as("RandomPassword") randomPassword: randomPasswordType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "GetRandomPasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSecret = {
  type t;
  type request = {
@as("ForceDeleteWithoutRecovery") forceDeleteWithoutRecovery: booleanType,
@as("RecoveryWindowInDays") recoveryWindowInDays: recoveryWindowInDaysType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("DeletionDate") deletionDate: deletionDateType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "DeleteSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("Name") name: nameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelRotateSecret = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "CancelRotateSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyListType>,
@as("SecretId") secretId: option<secretIdType>
}
  
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RotateSecret = {
  type t;
  type request = {
@as("RotationRules") rotationRules: rotationRulesType,
@as("RotationLambdaARN") rotationLambdaARN: rotationLambdaARNType,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "RotateSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSecretValue = {
  type t;
  type request = {
@as("VersionStages") versionStages: secretVersionStagesType,
@as("SecretString") secretString: secretStringType,
@as("SecretBinary") secretBinary: secretBinaryType,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("VersionStages") versionStages: secretVersionStagesType,
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "PutSecretValueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSecretValue = {
  type t;
  type request = {
@as("VersionStage") versionStage: secretVersionStageType,
@as("VersionId") versionId: secretVersionIdType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("CreatedDate") createdDate: createdDateType,
@as("VersionStages") versionStages: secretVersionStagesType,
@as("SecretString") secretString: secretStringType,
@as("SecretBinary") secretBinary: secretBinaryType,
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "GetSecretValueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidateResourcePolicy = {
  type t;
  type request = {
@as("ResourcePolicy") resourcePolicy: option<nonEmptyResourcePolicyType>,
@as("SecretId") secretId: secretIdType
}
  type response = {
@as("ValidationErrors") validationErrors: validationErrorsType,
@as("PolicyValidationPassed") policyValidationPassed: booleanType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "ValidateResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("SecretId") secretId: option<secretIdType>
}
  
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ReplicateSecretToRegions = {
  type t;
  type request = {
@as("ForceOverwriteReplicaSecret") forceOverwriteReplicaSecret: booleanType,
@as("AddReplicaRegions") addReplicaRegions: option<addReplicaRegionListType>,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("ReplicationStatus") replicationStatus: replicationStatusListType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "ReplicateSecretToRegionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveRegionsFromReplication = {
  type t;
  type request = {
@as("RemoveReplicaRegions") removeReplicaRegions: option<removeReplicaRegionListType>,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("ReplicationStatus") replicationStatus: replicationStatusListType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "RemoveRegionsFromReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSecret = {
  type t;
  type request = {
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("ReplicationStatus") replicationStatus: replicationStatusListType,
@as("PrimaryRegion") primaryRegion: regionType,
@as("CreatedDate") createdDate: timestampType,
@as("OwningService") owningService: owningServiceType,
@as("VersionIdsToStages") versionIdsToStages: secretVersionsToStagesMapType,
@as("Tags") tags: tagListType,
@as("DeletedDate") deletedDate: deletedDateType,
@as("LastAccessedDate") lastAccessedDate: lastAccessedDateType,
@as("LastChangedDate") lastChangedDate: lastChangedDateType,
@as("LastRotatedDate") lastRotatedDate: lastRotatedDateType,
@as("RotationRules") rotationRules: rotationRulesType,
@as("RotationLambdaARN") rotationLambdaARN: rotationLambdaARNType,
@as("RotationEnabled") rotationEnabled: rotationEnabledType,
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Description") description: descriptionType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "DescribeSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSecret = {
  type t;
  type request = {
@as("ForceOverwriteReplicaSecret") forceOverwriteReplicaSecret: booleanType,
@as("AddReplicaRegions") addReplicaRegions: addReplicaRegionListType,
@as("Tags") tags: tagListType,
@as("SecretString") secretString: secretStringType,
@as("SecretBinary") secretBinary: secretBinaryType,
@as("KmsKeyId") kmsKeyId: kmsKeyIdType,
@as("Description") description: descriptionType,
@as("ClientRequestToken") clientRequestToken: clientRequestTokenType,
@as("Name") name: option<nameType>
}
  type response = {
@as("ReplicationStatus") replicationStatus: replicationStatusListType,
@as("VersionId") versionId: secretVersionIdType,
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "CreateSecretCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecretVersionIds = {
  type t;
  type request = {
@as("IncludeDeprecated") includeDeprecated: booleanType,
@as("NextToken") nextToken: nextTokenType,
@as("MaxResults") maxResults: maxResultsType,
@as("SecretId") secretId: option<secretIdType>
}
  type response = {
@as("Name") name: secretNameType,
@as("ARN") aRN: secretARNType,
@as("NextToken") nextToken: nextTokenType,
@as("Versions") versions: secretVersionsListType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "ListSecretVersionIdsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecrets = {
  type t;
  type request = {
@as("SortOrder") sortOrder: sortOrderType,
@as("Filters") filters: filtersListType,
@as("NextToken") nextToken: nextTokenType,
@as("MaxResults") maxResults: maxResultsType
}
  type response = {
@as("NextToken") nextToken: nextTokenType,
@as("SecretList") secretList: secretListType
}
  @module("@aws-sdk/client-secretsmanager") @new external new_: (request) => t = "ListSecretsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
