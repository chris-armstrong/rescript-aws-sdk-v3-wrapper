type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-kms") @new external createClient: unit => awsServiceClient = "KMSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type wrappingKeySpec = [@as("RSA_2048") #RSA_2048]
type trustAnchorCertificateType = string
type tagValueType = string
type tagKeyType = string
type signingAlgorithmSpec = [
  | @as("ECDSA_SHA_512") #ECDSA_SHA_512
  | @as("ECDSA_SHA_384") #ECDSA_SHA_384
  | @as("ECDSA_SHA_256") #ECDSA_SHA_256
  | @as("RSASSA_PKCS1_V1_5_SHA_512") #RSASSA_PKCS1_V1_5_SHA_512
  | @as("RSASSA_PKCS1_V1_5_SHA_384") #RSASSA_PKCS1_V1_5_SHA_384
  | @as("RSASSA_PKCS1_V1_5_SHA_256") #RSASSA_PKCS1_V1_5_SHA_256
  | @as("RSASSA_PSS_SHA_512") #RSASSA_PSS_SHA_512
  | @as("RSASSA_PSS_SHA_384") #RSASSA_PSS_SHA_384
  | @as("RSASSA_PSS_SHA_256") #RSASSA_PSS_SHA_256
]
type publicKeyType = NodeJs.Buffer.t
type principalIdType = string
type policyType = string
type policyNameType = string
type plaintextType = NodeJs.Buffer.t
type pendingWindowInDaysType = int
type originType = [
  | @as("AWS_CLOUDHSM") #AWS_CLOUDHSM
  | @as("EXTERNAL") #EXTERNAL
  | @as("AWS_KMS") #AWS_KMS
]
type numberOfBytesType = int
type messageType = [@as("DIGEST") #DIGEST | @as("RAW") #RAW]
type markerType = string
type limitType = int
type keyUsageType = [@as("ENCRYPT_DECRYPT") #ENCRYPT_DECRYPT | @as("SIGN_VERIFY") #SIGN_VERIFY]
type keyStorePasswordType = string
type keyState = [
  | @as("Unavailable") #Unavailable
  | @as("PendingImport") #PendingImport
  | @as("PendingDeletion") #PendingDeletion
  | @as("Disabled") #Disabled
  | @as("Enabled") #Enabled
]
type keyManagerType = [@as("CUSTOMER") #CUSTOMER | @as("AWS") #AWS]
type keyIdType = string
type grantTokenType = string
type grantOperation = [
  | @as("GenerateDataKeyPairWithoutPlaintext") #GenerateDataKeyPairWithoutPlaintext
  | @as("GenerateDataKeyPair") #GenerateDataKeyPair
  | @as("DescribeKey") #DescribeKey
  | @as("RetireGrant") #RetireGrant
  | @as("CreateGrant") #CreateGrant
  | @as("GetPublicKey") #GetPublicKey
  | @as("Verify") #Verify
  | @as("Sign") #Sign
  | @as("ReEncryptTo") #ReEncryptTo
  | @as("ReEncryptFrom") #ReEncryptFrom
  | @as("GenerateDataKeyWithoutPlaintext") #GenerateDataKeyWithoutPlaintext
  | @as("GenerateDataKey") #GenerateDataKey
  | @as("Encrypt") #Encrypt
  | @as("Decrypt") #Decrypt
]
type grantNameType = string
type grantIdType = string
type expirationModelType = [
  | @as("KEY_MATERIAL_DOES_NOT_EXPIRE") #KEY_MATERIAL_DOES_NOT_EXPIRE
  | @as("KEY_MATERIAL_EXPIRES") #KEY_MATERIAL_EXPIRES
]
type errorMessageType = string
type encryptionContextValue = string
type encryptionContextKey = string
type encryptionAlgorithmSpec = [
  | @as("RSAES_OAEP_SHA_256") #RSAES_OAEP_SHA_256
  | @as("RSAES_OAEP_SHA_1") #RSAES_OAEP_SHA_1
  | @as("SYMMETRIC_DEFAULT") #SYMMETRIC_DEFAULT
]
type descriptionType = string
type dateType = Js.Date.t
type dataKeySpec = [@as("AES_128") #AES_128 | @as("AES_256") #AES_256]
type dataKeyPairSpec = [
  | @as("ECC_SECG_P256K1") #ECC_SECG_P256K1
  | @as("ECC_NIST_P521") #ECC_NIST_P521
  | @as("ECC_NIST_P384") #ECC_NIST_P384
  | @as("ECC_NIST_P256") #ECC_NIST_P256
  | @as("RSA_4096") #RSA_4096
  | @as("RSA_3072") #RSA_3072
  | @as("RSA_2048") #RSA_2048
]
type customerMasterKeySpec = [
  | @as("SYMMETRIC_DEFAULT") #SYMMETRIC_DEFAULT
  | @as("ECC_SECG_P256K1") #ECC_SECG_P256K1
  | @as("ECC_NIST_P521") #ECC_NIST_P521
  | @as("ECC_NIST_P384") #ECC_NIST_P384
  | @as("ECC_NIST_P256") #ECC_NIST_P256
  | @as("RSA_4096") #RSA_4096
  | @as("RSA_3072") #RSA_3072
  | @as("RSA_2048") #RSA_2048
]
type customKeyStoreNameType = string
type customKeyStoreIdType = string
type connectionStateType = [
  | @as("DISCONNECTING") #DISCONNECTING
  | @as("DISCONNECTED") #DISCONNECTED
  | @as("FAILED") #FAILED
  | @as("CONNECTING") #CONNECTING
  | @as("CONNECTED") #CONNECTED
]
type connectionErrorCodeType = [
  | @as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND
  | @as("USER_LOGGED_IN") #USER_LOGGED_IN
  | @as("USER_NOT_FOUND") #USER_NOT_FOUND
  | @as("USER_LOCKED_OUT") #USER_LOCKED_OUT
  | @as("INSUFFICIENT_CLOUDHSM_HSMS") #INSUFFICIENT_CLOUDHSM_HSMS
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("NETWORK_ERRORS") #NETWORK_ERRORS
  | @as("CLUSTER_NOT_FOUND") #CLUSTER_NOT_FOUND
  | @as("INVALID_CREDENTIALS") #INVALID_CREDENTIALS
]
type cloudHsmClusterIdType = string
type ciphertextType = NodeJs.Buffer.t
type booleanType = bool
type arnType = string
type aliasNameType = string
type algorithmSpec = [
  | @as("RSAES_OAEP_SHA_256") #RSAES_OAEP_SHA_256
  | @as("RSAES_OAEP_SHA_1") #RSAES_OAEP_SHA_1
  | @as("RSAES_PKCS1_V1_5") #RSAES_PKCS1_V1_5
]
type awsaccountIdType = string
type tagKeyList = array<tagKeyType>
type tag = {
  @as("TagValue") tagValue: tagValueType,
  @as("TagKey") tagKey: tagKeyType,
}
type signingAlgorithmSpecList = array<signingAlgorithmSpec>
type policyNameList = array<policyNameType>
type keyListEntry = {
  @as("KeyArn") keyArn: option<arnType>,
  @as("KeyId") keyId: option<keyIdType>,
}
type grantTokenList = array<grantTokenType>
type grantOperationList = array<grantOperation>
type encryptionContextType = Js.Dict.t<encryptionContextValue>
type encryptionAlgorithmSpecList = array<encryptionAlgorithmSpec>
type customKeyStoresListEntry = {
  @as("CreationDate") creationDate: option<dateType>,
  @as("ConnectionErrorCode") connectionErrorCode: option<connectionErrorCodeType>,
  @as("ConnectionState") connectionState: option<connectionStateType>,
  @as("TrustAnchorCertificate") trustAnchorCertificate: option<trustAnchorCertificateType>,
  @as("CloudHsmClusterId") cloudHsmClusterId: option<cloudHsmClusterIdType>,
  @as("CustomKeyStoreName") customKeyStoreName: option<customKeyStoreNameType>,
  @as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>,
}
type aliasListEntry = {
  @as("LastUpdatedDate") lastUpdatedDate: option<dateType>,
  @as("CreationDate") creationDate: option<dateType>,
  @as("TargetKeyId") targetKeyId: option<keyIdType>,
  @as("AliasArn") aliasArn: option<arnType>,
  @as("AliasName") aliasName: option<aliasNameType>,
}
type tagList_ = array<tag>
type keyMetadata = {
  @as("SigningAlgorithms") signingAlgorithms: option<signingAlgorithmSpecList>,
  @as("EncryptionAlgorithms") encryptionAlgorithms: option<encryptionAlgorithmSpecList>,
  @as("CustomerMasterKeySpec") customerMasterKeySpec: option<customerMasterKeySpec>,
  @as("KeyManager") keyManager: option<keyManagerType>,
  @as("ExpirationModel") expirationModel: option<expirationModelType>,
  @as("CloudHsmClusterId") cloudHsmClusterId: option<cloudHsmClusterIdType>,
  @as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>,
  @as("Origin") origin: option<originType>,
  @as("ValidTo") validTo: option<dateType>,
  @as("DeletionDate") deletionDate: option<dateType>,
  @as("KeyState") keyState: option<keyState>,
  @as("KeyUsage") keyUsage: option<keyUsageType>,
  @as("Description") description: option<descriptionType>,
  @as("Enabled") enabled: option<booleanType>,
  @as("CreationDate") creationDate: option<dateType>,
  @as("Arn") arn: option<arnType>,
  @as("KeyId") keyId: keyIdType,
  @as("AWSAccountId") awsaccountId: option<awsaccountIdType>,
}
type keyList = array<keyListEntry>
type grantConstraints = {
  @as("EncryptionContextEquals") encryptionContextEquals: option<encryptionContextType>,
  @as("EncryptionContextSubset") encryptionContextSubset: option<encryptionContextType>,
}
type customKeyStoresList = array<customKeyStoresListEntry>
type aliasList = array<aliasListEntry>
type grantListEntry = {
  @as("Constraints") constraints: option<grantConstraints>,
  @as("Operations") operations: option<grantOperationList>,
  @as("IssuingAccount") issuingAccount: option<principalIdType>,
  @as("RetiringPrincipal") retiringPrincipal: option<principalIdType>,
  @as("GranteePrincipal") granteePrincipal: option<principalIdType>,
  @as("CreationDate") creationDate: option<dateType>,
  @as("Name") name: option<grantNameType>,
  @as("GrantId") grantId: option<grantIdType>,
  @as("KeyId") keyId: option<keyIdType>,
}
type grantList = array<grantListEntry>

module UpdateKeyDescription = {
  type t
  type request = {
    @as("Description") description: descriptionType,
    @as("KeyId") keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "UpdateKeyDescriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCustomKeyStore = {
  type t
  type request = {
    @as("CloudHsmClusterId") cloudHsmClusterId: option<cloudHsmClusterIdType>,
    @as("KeyStorePassword") keyStorePassword: option<keyStorePasswordType>,
    @as("NewCustomKeyStoreName") newCustomKeyStoreName: option<customKeyStoreNameType>,
    @as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType,
  }
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: request => t = "UpdateCustomKeyStoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlias = {
  type t
  type request = {
    @as("TargetKeyId") targetKeyId: keyIdType,
    @as("AliasName") aliasName: aliasNameType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "UpdateAliasCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ScheduleKeyDeletion = {
  type t
  type request = {
    @as("PendingWindowInDays") pendingWindowInDays: option<pendingWindowInDaysType>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("DeletionDate") deletionDate: option<dateType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ScheduleKeyDeletionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeGrant = {
  type t
  type request = {
    @as("GrantId") grantId: grantIdType,
    @as("KeyId") keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "RevokeGrantCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RetireGrant = {
  type t
  type request = {
    @as("GrantId") grantId: option<grantIdType>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("GrantToken") grantToken: option<grantTokenType>,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "RetireGrantCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutKeyPolicy = {
  type t
  type request = {
    @as("BypassPolicyLockoutSafetyCheck") bypassPolicyLockoutSafetyCheck: option<booleanType>,
    @as("Policy") policy: policyType,
    @as("PolicyName") policyName: policyNameType,
    @as("KeyId") keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "PutKeyPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportKeyMaterial = {
  type t
  type request = {
    @as("ExpirationModel") expirationModel: option<expirationModelType>,
    @as("ValidTo") validTo: option<dateType>,
    @as("EncryptedKeyMaterial") encryptedKeyMaterial: ciphertextType,
    @as("ImportToken") importToken: ciphertextType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ImportKeyMaterialCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParametersForImport = {
  type t
  type request = {
    @as("WrappingKeySpec") wrappingKeySpec: wrappingKeySpec,
    @as("WrappingAlgorithm") wrappingAlgorithm: algorithmSpec,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("ParametersValidTo") parametersValidTo: option<dateType>,
    @as("PublicKey") publicKey: option<plaintextType>,
    @as("ImportToken") importToken: option<ciphertextType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GetParametersForImportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyRotationStatus = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}
  type response = {@as("KeyRotationEnabled") keyRotationEnabled: option<booleanType>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GetKeyRotationStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyPolicy = {
  type t
  type request = {
    @as("PolicyName") policyName: policyNameType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {@as("Policy") policy: option<policyType>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GetKeyPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateRandom = {
  type t
  type request = {
    @as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>,
    @as("NumberOfBytes") numberOfBytes: option<numberOfBytesType>,
  }
  type response = {@as("Plaintext") plaintext: option<plaintextType>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GenerateRandomCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableKeyRotation = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}

  @module("@aws-sdk/client-kms") @new external new_: request => t = "EnableKeyRotationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableKey = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}

  @module("@aws-sdk/client-kms") @new external new_: request => t = "EnableKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisconnectCustomKeyStore = {
  type t
  type request = {@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType}
  type response = unit
  @module("@aws-sdk/client-kms") @new
  external new_: request => t = "DisconnectCustomKeyStoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableKeyRotation = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}

  @module("@aws-sdk/client-kms") @new external new_: request => t = "DisableKeyRotationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableKey = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}

  @module("@aws-sdk/client-kms") @new external new_: request => t = "DisableKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteImportedKeyMaterial = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}

  @module("@aws-sdk/client-kms") @new
  external new_: request => t = "DeleteImportedKeyMaterialCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomKeyStore = {
  type t
  type request = {@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: request => t = "DeleteCustomKeyStoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAlias = {
  type t
  type request = {@as("AliasName") aliasName: aliasNameType}

  @module("@aws-sdk/client-kms") @new external new_: request => t = "DeleteAliasCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCustomKeyStore = {
  type t
  type request = {
    @as("KeyStorePassword") keyStorePassword: keyStorePasswordType,
    @as("TrustAnchorCertificate") trustAnchorCertificate: trustAnchorCertificateType,
    @as("CloudHsmClusterId") cloudHsmClusterId: cloudHsmClusterIdType,
    @as("CustomKeyStoreName") customKeyStoreName: customKeyStoreNameType,
  }
  type response = {@as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "CreateCustomKeyStoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @as("TargetKeyId") targetKeyId: keyIdType,
    @as("AliasName") aliasName: aliasNameType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "CreateAliasCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ConnectCustomKeyStore = {
  type t
  type request = {@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ConnectCustomKeyStoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelKeyDeletion = {
  type t
  type request = {@as("KeyId") keyId: keyIdType}
  type response = {@as("KeyId") keyId: option<keyIdType>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "CancelKeyDeletionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Verify = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("SigningAlgorithm") signingAlgorithm: signingAlgorithmSpec,
    @as("Signature") signature: ciphertextType,
    @as("MessageType") messageType: option<messageType>,
    @as("Message") message: plaintextType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithmSpec>,
    @as("SignatureValid") signatureValid: option<booleanType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "VerifyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("KeyId") keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module Sign = {
  type t
  type request = {
    @as("SigningAlgorithm") signingAlgorithm: signingAlgorithmSpec,
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("MessageType") messageType: option<messageType>,
    @as("Message") message: plaintextType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithmSpec>,
    @as("Signature") signature: option<ciphertextType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "SignCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReEncrypt = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("DestinationEncryptionAlgorithm")
    destinationEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("SourceEncryptionAlgorithm") sourceEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("DestinationEncryptionContext") destinationEncryptionContext: option<encryptionContextType>,
    @as("DestinationKeyId") destinationKeyId: keyIdType,
    @as("SourceKeyId") sourceKeyId: option<keyIdType>,
    @as("SourceEncryptionContext") sourceEncryptionContext: option<encryptionContextType>,
    @as("CiphertextBlob") ciphertextBlob: ciphertextType,
  }
  type response = {
    @as("DestinationEncryptionAlgorithm")
    destinationEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("SourceEncryptionAlgorithm") sourceEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("SourceKeyId") sourceKeyId: option<keyIdType>,
    @as("CiphertextBlob") ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ReEncryptCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeyPolicies = {
  type t
  type request = {
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("PolicyNames") policyNames: option<policyNameList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListKeyPoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicKey = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("SigningAlgorithms") signingAlgorithms: option<signingAlgorithmSpecList>,
    @as("EncryptionAlgorithms") encryptionAlgorithms: option<encryptionAlgorithmSpecList>,
    @as("KeyUsage") keyUsage: option<keyUsageType>,
    @as("CustomerMasterKeySpec") customerMasterKeySpec: option<customerMasterKeySpec>,
    @as("PublicKey") publicKey: option<publicKeyType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GetPublicKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyWithoutPlaintext = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("NumberOfBytes") numberOfBytes: option<numberOfBytesType>,
    @as("KeySpec") keySpec: option<dataKeySpec>,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("KeyId") keyId: option<keyIdType>,
    @as("CiphertextBlob") ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new
  external new_: request => t = "GenerateDataKeyWithoutPlaintextCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyPairWithoutPlaintext = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("KeyPairSpec") keyPairSpec: dataKeyPairSpec,
    @as("KeyId") keyId: keyIdType,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
  }
  type response = {
    @as("KeyPairSpec") keyPairSpec: option<dataKeyPairSpec>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("PublicKey") publicKey: option<publicKeyType>,
    @as("PrivateKeyCiphertextBlob") privateKeyCiphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new
  external new_: request => t = "GenerateDataKeyPairWithoutPlaintextCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyPair = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("KeyPairSpec") keyPairSpec: dataKeyPairSpec,
    @as("KeyId") keyId: keyIdType,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
  }
  type response = {
    @as("KeyPairSpec") keyPairSpec: option<dataKeyPairSpec>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("PublicKey") publicKey: option<publicKeyType>,
    @as("PrivateKeyPlaintext") privateKeyPlaintext: option<plaintextType>,
    @as("PrivateKeyCiphertextBlob") privateKeyCiphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GenerateDataKeyPairCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKey = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("KeySpec") keySpec: option<dataKeySpec>,
    @as("NumberOfBytes") numberOfBytes: option<numberOfBytesType>,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("KeyId") keyId: option<keyIdType>,
    @as("Plaintext") plaintext: option<plaintextType>,
    @as("CiphertextBlob") ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "GenerateDataKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Encrypt = {
  type t
  type request = {
    @as("EncryptionAlgorithm") encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
    @as("Plaintext") plaintext: plaintextType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("EncryptionAlgorithm") encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("CiphertextBlob") ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "EncryptCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Decrypt = {
  type t
  type request = {
    @as("EncryptionAlgorithm") encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("KeyId") keyId: option<keyIdType>,
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("EncryptionContext") encryptionContext: option<encryptionContextType>,
    @as("CiphertextBlob") ciphertextBlob: ciphertextType,
  }
  type response = {
    @as("EncryptionAlgorithm") encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @as("Plaintext") plaintext: option<plaintextType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "DecryptCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("KeyId") keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResourceTags = {
  type t
  type request = {
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListResourceTagsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeys = {
  type t
  type request = {
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("Keys") keys: option<keyList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListKeysCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  type request = {
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
    @as("KeyId") keyId: option<keyIdType>,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("Aliases") aliases: option<aliasList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListAliasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKey = {
  type t
  type request = {
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {@as("KeyMetadata") keyMetadata: option<keyMetadata>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "DescribeKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomKeyStores = {
  type t
  type request = {
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
    @as("CustomKeyStoreName") customKeyStoreName: option<customKeyStoreNameType>,
    @as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("CustomKeyStores") customKeyStores: option<customKeyStoresList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "DescribeCustomKeyStoresCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKey = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("BypassPolicyLockoutSafetyCheck") bypassPolicyLockoutSafetyCheck: option<booleanType>,
    @as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>,
    @as("Origin") origin: option<originType>,
    @as("CustomerMasterKeySpec") customerMasterKeySpec: option<customerMasterKeySpec>,
    @as("KeyUsage") keyUsage: option<keyUsageType>,
    @as("Description") description: option<descriptionType>,
    @as("Policy") policy: option<policyType>,
  }
  type response = {@as("KeyMetadata") keyMetadata: option<keyMetadata>}
  @module("@aws-sdk/client-kms") @new external new_: request => t = "CreateKeyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGrant = {
  type t
  type request = {
    @as("Name") name: option<grantNameType>,
    @as("GrantTokens") grantTokens: option<grantTokenList>,
    @as("Constraints") constraints: option<grantConstraints>,
    @as("Operations") operations: grantOperationList,
    @as("RetiringPrincipal") retiringPrincipal: option<principalIdType>,
    @as("GranteePrincipal") granteePrincipal: principalIdType,
    @as("KeyId") keyId: keyIdType,
  }
  type response = {
    @as("GrantId") grantId: option<grantIdType>,
    @as("GrantToken") grantToken: option<grantTokenType>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "CreateGrantCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRetirableGrants = {
  type t
  type request = {
    @as("RetiringPrincipal") retiringPrincipal: principalIdType,
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListRetirableGrantsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGrants = {
  type t
  type request = {
    @as("GranteePrincipal") granteePrincipal: option<principalIdType>,
    @as("GrantId") grantId: option<grantIdType>,
    @as("KeyId") keyId: keyIdType,
    @as("Marker") marker: option<markerType>,
    @as("Limit") limit: option<limitType>,
  }
  type response = {
    @as("Truncated") truncated: option<booleanType>,
    @as("NextMarker") nextMarker: option<markerType>,
    @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-kms") @new external new_: request => t = "ListGrantsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
