type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-secretsmanager") @new
external createClient: unit => awsServiceClient = "SecretsManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestampType = Js.Date.t
type tagValueType = string
type tagKeyType = string
type statusType = [@as("InProgress") #InProgress | @as("Failed") #Failed | @as("InSync") #InSync]
type statusMessageType = string
type sortOrderType = [@as("desc") #Desc | @as("asc") #Asc]
type secretVersionStageType = string
type secretVersionIdType = string
type secretStringType = string
type secretNameType = string
type secretIdType = string
type secretBinaryType = NodeJs.Buffer.t
type secretARNType = string
type rotationLambdaARNType = string
type rotationEnabledType = bool
type requireEachIncludedTypeType = bool
type regionType = string
type recoveryWindowInDaysType = float
type randomPasswordType = string
type passwordLengthType = float
type owningServiceType = string
type nonEmptyResourcePolicyType = string
type nextTokenType = string
type nameType = string
type maxResultsType = int
type lastRotatedDateType = Js.Date.t
type lastChangedDateType = Js.Date.t
type lastAccessedDateType = Js.Date.t
type kmsKeyIdType = string
type includeSpaceType = bool
type filterValueStringType = string
type filterNameStringType = [
  | @as("all") #All
  | @as("primary-region") #Primary_Region
  | @as("tag-value") #Tag_Value
  | @as("tag-key") #Tag_Key
  | @as("name") #Name
  | @as("description") #Description
]
type excludeUppercaseType = bool
type excludePunctuationType = bool
type excludeNumbersType = bool
type excludeLowercaseType = bool
type excludeCharactersType = string
type errorMessage = string
type descriptionType = string
type deletionDateType = Js.Date.t
type deletedDateType = Js.Date.t
type createdDateType = Js.Date.t
type clientRequestTokenType = string
type booleanType = bool
type automaticallyRotateAfterDaysType = float
type validationErrorsEntry = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("CheckName") checkName: option<nameType>,
}
type tagKeyListType = array<tagKeyType>
type tag = {
  @as("Value") value: option<tagValueType>,
  @as("Key") key: option<tagKeyType>,
}
type secretVersionStagesType = array<secretVersionStageType>
type rotationRulesType = {
  @as("AutomaticallyAfterDays") automaticallyAfterDays: option<automaticallyRotateAfterDaysType>,
}
type replicationStatusType = {
  @as("LastAccessedDate") lastAccessedDate: option<lastAccessedDateType>,
  @as("StatusMessage") statusMessage: option<statusMessageType>,
  @as("Status") status: option<statusType>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
  @as("Region") region: option<regionType>,
}
type replicaRegionType = {
  @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
  @as("Region") region: option<regionType>,
}
type removeReplicaRegionListType = array<regionType>
type filterValuesStringList = array<filterValueStringType>
type validationErrorsType = array<validationErrorsEntry>
type tagListType = array<tag>
type secretVersionsToStagesMapType = Js.Dict.t<secretVersionStagesType>
type secretVersionsListEntry = {
  @as("CreatedDate") createdDate: option<createdDateType>,
  @as("LastAccessedDate") lastAccessedDate: option<lastAccessedDateType>,
  @as("VersionStages") versionStages: option<secretVersionStagesType>,
  @as("VersionId") versionId: option<secretVersionIdType>,
}
type replicationStatusListType = array<replicationStatusType>
type filter = {
  @as("Values") values: option<filterValuesStringList>,
  @as("Key") key: option<filterNameStringType>,
}
type addReplicaRegionListType = array<replicaRegionType>
type secretVersionsListType = array<secretVersionsListEntry>
type secretListEntry = {
  @as("PrimaryRegion") primaryRegion: option<regionType>,
  @as("CreatedDate") createdDate: option<timestampType>,
  @as("OwningService") owningService: option<owningServiceType>,
  @as("SecretVersionsToStages") secretVersionsToStages: option<secretVersionsToStagesMapType>,
  @as("Tags") tags: option<tagListType>,
  @as("DeletedDate") deletedDate: option<deletedDateType>,
  @as("LastAccessedDate") lastAccessedDate: option<lastAccessedDateType>,
  @as("LastChangedDate") lastChangedDate: option<lastChangedDateType>,
  @as("LastRotatedDate") lastRotatedDate: option<lastRotatedDateType>,
  @as("RotationRules") rotationRules: option<rotationRulesType>,
  @as("RotationLambdaARN") rotationLambdaARN: option<rotationLambdaARNType>,
  @as("RotationEnabled") rotationEnabled: option<rotationEnabledType>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
  @as("Description") description: option<descriptionType>,
  @as("Name") name: option<secretNameType>,
  @as("ARN") arn: option<secretARNType>,
}
type filtersListType = array<filter>
type secretListType = array<secretListEntry>

module UpdateSecretVersionStage = {
  type t
  type request = {
    @as("MoveToVersionId") moveToVersionId: option<secretVersionIdType>,
    @as("RemoveFromVersionId") removeFromVersionId: option<secretVersionIdType>,
    @as("VersionStage") versionStage: secretVersionStageType,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "UpdateSecretVersionStageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecret = {
  type t
  type request = {
    @as("SecretString") secretString: option<secretStringType>,
    @as("SecretBinary") secretBinary: option<secretBinaryType>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
    @as("Description") description: option<descriptionType>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "UpdateSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopReplicationToReplica = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {@as("ARN") arn: option<secretARNType>}
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "StopReplicationToReplicaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreSecret = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "RestoreSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @as("BlockPublicPolicy") blockPublicPolicy: option<booleanType>,
    @as("ResourcePolicy") resourcePolicy: nonEmptyResourcePolicyType,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("Name") name: option<nameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "PutResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicy = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {
    @as("ResourcePolicy") resourcePolicy: option<nonEmptyResourcePolicyType>,
    @as("Name") name: option<nameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "GetResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRandomPassword = {
  type t
  type request = {
    @as("RequireEachIncludedType") requireEachIncludedType: option<requireEachIncludedTypeType>,
    @as("IncludeSpace") includeSpace: option<includeSpaceType>,
    @as("ExcludeLowercase") excludeLowercase: option<excludeLowercaseType>,
    @as("ExcludeUppercase") excludeUppercase: option<excludeUppercaseType>,
    @as("ExcludePunctuation") excludePunctuation: option<excludePunctuationType>,
    @as("ExcludeNumbers") excludeNumbers: option<excludeNumbersType>,
    @as("ExcludeCharacters") excludeCharacters: option<excludeCharactersType>,
    @as("PasswordLength") passwordLength: option<passwordLengthType>,
  }
  type response = {@as("RandomPassword") randomPassword: option<randomPasswordType>}
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "GetRandomPasswordCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSecret = {
  type t
  type request = {
    @as("ForceDeleteWithoutRecovery") forceDeleteWithoutRecovery: option<booleanType>,
    @as("RecoveryWindowInDays") recoveryWindowInDays: option<recoveryWindowInDaysType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("DeletionDate") deletionDate: option<deletionDateType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "DeleteSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {
    @as("Name") name: option<nameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "DeleteResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelRotateSecret = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "CancelRotateSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyListType,
    @as("SecretId") secretId: secretIdType,
  }

  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RotateSecret = {
  type t
  type request = {
    @as("RotationRules") rotationRules: option<rotationRulesType>,
    @as("RotationLambdaARN") rotationLambdaARN: option<rotationLambdaARNType>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "RotateSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSecretValue = {
  type t
  type request = {
    @as("VersionStages") versionStages: option<secretVersionStagesType>,
    @as("SecretString") secretString: option<secretStringType>,
    @as("SecretBinary") secretBinary: option<secretBinaryType>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("VersionStages") versionStages: option<secretVersionStagesType>,
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "PutSecretValueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSecretValue = {
  type t
  type request = {
    @as("VersionStage") versionStage: option<secretVersionStageType>,
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("CreatedDate") createdDate: option<createdDateType>,
    @as("VersionStages") versionStages: option<secretVersionStagesType>,
    @as("SecretString") secretString: option<secretStringType>,
    @as("SecretBinary") secretBinary: option<secretBinaryType>,
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "GetSecretValueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidateResourcePolicy = {
  type t
  type request = {
    @as("ResourcePolicy") resourcePolicy: nonEmptyResourcePolicyType,
    @as("SecretId") secretId: option<secretIdType>,
  }
  type response = {
    @as("ValidationErrors") validationErrors: option<validationErrorsType>,
    @as("PolicyValidationPassed") policyValidationPassed: option<booleanType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "ValidateResourcePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagListType,
    @as("SecretId") secretId: secretIdType,
  }

  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ReplicateSecretToRegions = {
  type t
  type request = {
    @as("ForceOverwriteReplicaSecret") forceOverwriteReplicaSecret: option<booleanType>,
    @as("AddReplicaRegions") addReplicaRegions: addReplicaRegionListType,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("ReplicationStatus") replicationStatus: option<replicationStatusListType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "ReplicateSecretToRegionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveRegionsFromReplication = {
  type t
  type request = {
    @as("RemoveReplicaRegions") removeReplicaRegions: removeReplicaRegionListType,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("ReplicationStatus") replicationStatus: option<replicationStatusListType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "RemoveRegionsFromReplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecret = {
  type t
  type request = {@as("SecretId") secretId: secretIdType}
  type response = {
    @as("ReplicationStatus") replicationStatus: option<replicationStatusListType>,
    @as("PrimaryRegion") primaryRegion: option<regionType>,
    @as("CreatedDate") createdDate: option<timestampType>,
    @as("OwningService") owningService: option<owningServiceType>,
    @as("VersionIdsToStages") versionIdsToStages: option<secretVersionsToStagesMapType>,
    @as("Tags") tags: option<tagListType>,
    @as("DeletedDate") deletedDate: option<deletedDateType>,
    @as("LastAccessedDate") lastAccessedDate: option<lastAccessedDateType>,
    @as("LastChangedDate") lastChangedDate: option<lastChangedDateType>,
    @as("LastRotatedDate") lastRotatedDate: option<lastRotatedDateType>,
    @as("RotationRules") rotationRules: option<rotationRulesType>,
    @as("RotationLambdaARN") rotationLambdaARN: option<rotationLambdaARNType>,
    @as("RotationEnabled") rotationEnabled: option<rotationEnabledType>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
    @as("Description") description: option<descriptionType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "DescribeSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecret = {
  type t
  type request = {
    @as("ForceOverwriteReplicaSecret") forceOverwriteReplicaSecret: option<booleanType>,
    @as("AddReplicaRegions") addReplicaRegions: option<addReplicaRegionListType>,
    @as("Tags") tags: option<tagListType>,
    @as("SecretString") secretString: option<secretStringType>,
    @as("SecretBinary") secretBinary: option<secretBinaryType>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyIdType>,
    @as("Description") description: option<descriptionType>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestTokenType>,
    @as("Name") name: nameType,
  }
  type response = {
    @as("ReplicationStatus") replicationStatus: option<replicationStatusListType>,
    @as("VersionId") versionId: option<secretVersionIdType>,
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "CreateSecretCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecretVersionIds = {
  type t
  type request = {
    @as("IncludeDeprecated") includeDeprecated: option<booleanType>,
    @as("NextToken") nextToken: option<nextTokenType>,
    @as("MaxResults") maxResults: option<maxResultsType>,
    @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @as("Name") name: option<secretNameType>,
    @as("ARN") arn: option<secretARNType>,
    @as("NextToken") nextToken: option<nextTokenType>,
    @as("Versions") versions: option<secretVersionsListType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new_: request => t = "ListSecretVersionIdsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecrets = {
  type t
  type request = {
    @as("SortOrder") sortOrder: option<sortOrderType>,
    @as("Filters") filters: option<filtersListType>,
    @as("NextToken") nextToken: option<nextTokenType>,
    @as("MaxResults") maxResults: option<maxResultsType>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextTokenType>,
    @as("SecretList") secretList: option<secretListType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new_: request => t = "ListSecretsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
