type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type wrappingKeySpec = [@as("RSA_2048") #RSA_2048]
type trustAnchorCertificateType = string
type tagValueType = string
type tagKeyType = string
type signingAlgorithmSpec = [@as("ECDSA_SHA_512") #ECDSA_SHA_512 | @as("ECDSA_SHA_384") #ECDSA_SHA_384 | @as("ECDSA_SHA_256") #ECDSA_SHA_256 | @as("RSASSA_PKCS1_V1_5_SHA_512") #RSASSA_PKCS1_V1_5_SHA_512 | @as("RSASSA_PKCS1_V1_5_SHA_384") #RSASSA_PKCS1_V1_5_SHA_384 | @as("RSASSA_PKCS1_V1_5_SHA_256") #RSASSA_PKCS1_V1_5_SHA_256 | @as("RSASSA_PSS_SHA_512") #RSASSA_PSS_SHA_512 | @as("RSASSA_PSS_SHA_384") #RSASSA_PSS_SHA_384 | @as("RSASSA_PSS_SHA_256") #RSASSA_PSS_SHA_256]
type publicKeyType = NodeJs.Buffer.t;
type principalIdType = string
type policyType = string
type policyNameType = string
type plaintextType = NodeJs.Buffer.t;
type pendingWindowInDaysType = int;
type originType = [@as("AWS_CLOUDHSM") #AWS_CLOUDHSM | @as("EXTERNAL") #EXTERNAL | @as("AWS_KMS") #AWS_KMS]
type numberOfBytesType = int;
type messageType = [@as("DIGEST") #DIGEST | @as("RAW") #RAW]
type markerType = string
type limitType = int;
type keyUsageType = [@as("ENCRYPT_DECRYPT") #ENCRYPT_DECRYPT | @as("SIGN_VERIFY") #SIGN_VERIFY]
type keyStorePasswordType = string
type keyState = [@as("Unavailable") #Unavailable | @as("PendingImport") #PendingImport | @as("PendingDeletion") #PendingDeletion | @as("Disabled") #Disabled | @as("Enabled") #Enabled]
type keyManagerType = [@as("CUSTOMER") #CUSTOMER | @as("AWS") #AWS]
type keyIdType = string
type grantTokenType = string
type grantOperation = [@as("GenerateDataKeyPairWithoutPlaintext") #GenerateDataKeyPairWithoutPlaintext | @as("GenerateDataKeyPair") #GenerateDataKeyPair | @as("DescribeKey") #DescribeKey | @as("RetireGrant") #RetireGrant | @as("CreateGrant") #CreateGrant | @as("GetPublicKey") #GetPublicKey | @as("Verify") #Verify | @as("Sign") #Sign | @as("ReEncryptTo") #ReEncryptTo | @as("ReEncryptFrom") #ReEncryptFrom | @as("GenerateDataKeyWithoutPlaintext") #GenerateDataKeyWithoutPlaintext | @as("GenerateDataKey") #GenerateDataKey | @as("Encrypt") #Encrypt | @as("Decrypt") #Decrypt]
type grantNameType = string
type grantIdType = string
type expirationModelType = [@as("KEY_MATERIAL_DOES_NOT_EXPIRE") #KEY_MATERIAL_DOES_NOT_EXPIRE | @as("KEY_MATERIAL_EXPIRES") #KEY_MATERIAL_EXPIRES]
type errorMessageType = string
type encryptionContextValue = string
type encryptionContextKey = string
type encryptionAlgorithmSpec = [@as("RSAES_OAEP_SHA_256") #RSAES_OAEP_SHA_256 | @as("RSAES_OAEP_SHA_1") #RSAES_OAEP_SHA_1 | @as("SYMMETRIC_DEFAULT") #SYMMETRIC_DEFAULT]
type descriptionType = string
type dateType = Js.Date.t;
type dataKeySpec = [@as("AES_128") #AES_128 | @as("AES_256") #AES_256]
type dataKeyPairSpec = [@as("ECC_SECG_P256K1") #ECC_SECG_P256K1 | @as("ECC_NIST_P521") #ECC_NIST_P521 | @as("ECC_NIST_P384") #ECC_NIST_P384 | @as("ECC_NIST_P256") #ECC_NIST_P256 | @as("RSA_4096") #RSA_4096 | @as("RSA_3072") #RSA_3072 | @as("RSA_2048") #RSA_2048]
type customerMasterKeySpec = [@as("SYMMETRIC_DEFAULT") #SYMMETRIC_DEFAULT | @as("ECC_SECG_P256K1") #ECC_SECG_P256K1 | @as("ECC_NIST_P521") #ECC_NIST_P521 | @as("ECC_NIST_P384") #ECC_NIST_P384 | @as("ECC_NIST_P256") #ECC_NIST_P256 | @as("RSA_4096") #RSA_4096 | @as("RSA_3072") #RSA_3072 | @as("RSA_2048") #RSA_2048]
type customKeyStoreNameType = string
type customKeyStoreIdType = string
type connectionStateType = [@as("DISCONNECTING") #DISCONNECTING | @as("DISCONNECTED") #DISCONNECTED | @as("FAILED") #FAILED | @as("CONNECTING") #CONNECTING | @as("CONNECTED") #CONNECTED]
type connectionErrorCodeType = [@as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND | @as("USER_LOGGED_IN") #USER_LOGGED_IN | @as("USER_NOT_FOUND") #USER_NOT_FOUND | @as("USER_LOCKED_OUT") #USER_LOCKED_OUT | @as("INSUFFICIENT_CLOUDHSM_HSMS") #INSUFFICIENT_CLOUDHSM_HSMS | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("NETWORK_ERRORS") #NETWORK_ERRORS | @as("CLUSTER_NOT_FOUND") #CLUSTER_NOT_FOUND | @as("INVALID_CREDENTIALS") #INVALID_CREDENTIALS]
type cloudHsmClusterIdType = string
type ciphertextType = NodeJs.Buffer.t;
type booleanType = bool;
type arnType = string
type aliasNameType = string
type algorithmSpec = [@as("RSAES_OAEP_SHA_256") #RSAES_OAEP_SHA_256 | @as("RSAES_OAEP_SHA_1") #RSAES_OAEP_SHA_1 | @as("RSAES_PKCS1_V1_5") #RSAES_PKCS1_V1_5]
type aWSAccountIdType = string
type tagKeyList = array<tagKeyType>
type tag = {
@as("TagValue") tagValue: option<tagValueType>,
@as("TagKey") tagKey: option<tagKeyType>
}
type signingAlgorithmSpecList = array<signingAlgorithmSpec>
type policyNameList = array<policyNameType>
type keyListEntry = {
@as("KeyArn") keyArn: arnType,
@as("KeyId") keyId: keyIdType
}
type grantTokenList = array<grantTokenType>
type grantOperationList = array<grantOperation>
type encryptionContextType = Js.Dict.t< encryptionContextValue>
type encryptionAlgorithmSpecList = array<encryptionAlgorithmSpec>
type customKeyStoresListEntry = {
@as("CreationDate") creationDate: dateType,
@as("ConnectionErrorCode") connectionErrorCode: connectionErrorCodeType,
@as("ConnectionState") connectionState: connectionStateType,
@as("TrustAnchorCertificate") trustAnchorCertificate: trustAnchorCertificateType,
@as("CloudHsmClusterId") cloudHsmClusterId: cloudHsmClusterIdType,
@as("CustomKeyStoreName") customKeyStoreName: customKeyStoreNameType,
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType
}
type aliasListEntry = {
@as("LastUpdatedDate") lastUpdatedDate: dateType,
@as("CreationDate") creationDate: dateType,
@as("TargetKeyId") targetKeyId: keyIdType,
@as("AliasArn") aliasArn: arnType,
@as("AliasName") aliasName: aliasNameType
}
type tagList = array<tag>
type keyMetadata = {
@as("SigningAlgorithms") signingAlgorithms: signingAlgorithmSpecList,
@as("EncryptionAlgorithms") encryptionAlgorithms: encryptionAlgorithmSpecList,
@as("CustomerMasterKeySpec") customerMasterKeySpec: customerMasterKeySpec,
@as("KeyManager") keyManager: keyManagerType,
@as("ExpirationModel") expirationModel: expirationModelType,
@as("CloudHsmClusterId") cloudHsmClusterId: cloudHsmClusterIdType,
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType,
@as("Origin") origin: originType,
@as("ValidTo") validTo: dateType,
@as("DeletionDate") deletionDate: dateType,
@as("KeyState") keyState: keyState,
@as("KeyUsage") keyUsage: keyUsageType,
@as("Description") description: descriptionType,
@as("Enabled") enabled: booleanType,
@as("CreationDate") creationDate: dateType,
@as("Arn") arn: arnType,
@as("KeyId") keyId: option<keyIdType>,
@as("AWSAccountId") aWSAccountId: aWSAccountIdType
}
type keyList = array<keyListEntry>
type grantConstraints = {
@as("EncryptionContextEquals") encryptionContextEquals: encryptionContextType,
@as("EncryptionContextSubset") encryptionContextSubset: encryptionContextType
}
type customKeyStoresList = array<customKeyStoresListEntry>
type aliasList = array<aliasListEntry>
type grantListEntry = {
@as("Constraints") constraints: grantConstraints,
@as("Operations") operations: grantOperationList,
@as("IssuingAccount") issuingAccount: principalIdType,
@as("RetiringPrincipal") retiringPrincipal: principalIdType,
@as("GranteePrincipal") granteePrincipal: principalIdType,
@as("CreationDate") creationDate: dateType,
@as("Name") name: grantNameType,
@as("GrantId") grantId: grantIdType,
@as("KeyId") keyId: keyIdType
}
type grantList = array<grantListEntry>
type clientType;
@module("@aws-sdk/client-kms") @new external createClient: unit => clientType = "KMSClient";
module UpdateKeyDescription = {
  type t;
  type request = {
@as("Description") description: option<descriptionType>,
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "UpdateKeyDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateCustomKeyStore = {
  type t;
  type request = {
@as("CloudHsmClusterId") cloudHsmClusterId: cloudHsmClusterIdType,
@as("KeyStorePassword") keyStorePassword: keyStorePasswordType,
@as("NewCustomKeyStoreName") newCustomKeyStoreName: customKeyStoreNameType,
@as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>
}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomKeyStoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAlias = {
  type t;
  type request = {
@as("TargetKeyId") targetKeyId: option<keyIdType>,
@as("AliasName") aliasName: option<aliasNameType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "UpdateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ScheduleKeyDeletion = {
  type t;
  type request = {
@as("PendingWindowInDays") pendingWindowInDays: pendingWindowInDaysType,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("DeletionDate") deletionDate: dateType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ScheduleKeyDeletionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeGrant = {
  type t;
  type request = {
@as("GrantId") grantId: option<grantIdType>,
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "RevokeGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RetireGrant = {
  type t;
  type request = {
@as("GrantId") grantId: grantIdType,
@as("KeyId") keyId: keyIdType,
@as("GrantToken") grantToken: grantTokenType
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "RetireGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutKeyPolicy = {
  type t;
  type request = {
@as("BypassPolicyLockoutSafetyCheck") bypassPolicyLockoutSafetyCheck: booleanType,
@as("Policy") policy: option<policyType>,
@as("PolicyName") policyName: option<policyNameType>,
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "PutKeyPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ImportKeyMaterial = {
  type t;
  type request = {
@as("ExpirationModel") expirationModel: expirationModelType,
@as("ValidTo") validTo: dateType,
@as("EncryptedKeyMaterial") encryptedKeyMaterial: option<ciphertextType>,
@as("ImportToken") importToken: option<ciphertextType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ImportKeyMaterialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetParametersForImport = {
  type t;
  type request = {
@as("WrappingKeySpec") wrappingKeySpec: option<wrappingKeySpec>,
@as("WrappingAlgorithm") wrappingAlgorithm: option<algorithmSpec>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("ParametersValidTo") parametersValidTo: dateType,
@as("PublicKey") publicKey: plaintextType,
@as("ImportToken") importToken: ciphertextType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GetParametersForImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyRotationStatus = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("KeyRotationEnabled") keyRotationEnabled: booleanType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GetKeyRotationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyPolicy = {
  type t;
  type request = {
@as("PolicyName") policyName: option<policyNameType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("Policy") policy: policyType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GetKeyPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateRandom = {
  type t;
  type request = {
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType,
@as("NumberOfBytes") numberOfBytes: numberOfBytesType
}
  type response = {
@as("Plaintext") plaintext: plaintextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GenerateRandomCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableKeyRotation = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "EnableKeyRotationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableKey = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "EnableKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisconnectCustomKeyStore = {
  type t;
  type request = {
@as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>
}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DisconnectCustomKeyStoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableKeyRotation = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DisableKeyRotationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableKey = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DisableKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteImportedKeyMaterial = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DeleteImportedKeyMaterialCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomKeyStore = {
  type t;
  type request = {
@as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>
}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomKeyStoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlias = {
  type t;
  type request = {
@as("AliasName") aliasName: option<aliasNameType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DeleteAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateCustomKeyStore = {
  type t;
  type request = {
@as("KeyStorePassword") keyStorePassword: option<keyStorePasswordType>,
@as("TrustAnchorCertificate") trustAnchorCertificate: option<trustAnchorCertificateType>,
@as("CloudHsmClusterId") cloudHsmClusterId: option<cloudHsmClusterIdType>,
@as("CustomKeyStoreName") customKeyStoreName: option<customKeyStoreNameType>
}
  type response = {
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomKeyStoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("TargetKeyId") targetKeyId: option<keyIdType>,
@as("AliasName") aliasName: option<aliasNameType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "CreateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ConnectCustomKeyStore = {
  type t;
  type request = {
@as("CustomKeyStoreId") customKeyStoreId: option<customKeyStoreIdType>
}
  type response = unit
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ConnectCustomKeyStoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelKeyDeletion = {
  type t;
  type request = {
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "CancelKeyDeletionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Verify = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithmSpec>,
@as("Signature") signature: option<ciphertextType>,
@as("MessageType") messageType: messageType,
@as("Message") message: option<plaintextType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("SigningAlgorithm") signingAlgorithm: signingAlgorithmSpec,
@as("SignatureValid") signatureValid: booleanType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "VerifyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module Sign = {
  type t;
  type request = {
@as("SigningAlgorithm") signingAlgorithm: option<signingAlgorithmSpec>,
@as("GrantTokens") grantTokens: grantTokenList,
@as("MessageType") messageType: messageType,
@as("Message") message: option<plaintextType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("SigningAlgorithm") signingAlgorithm: signingAlgorithmSpec,
@as("Signature") signature: ciphertextType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "SignCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReEncrypt = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("DestinationEncryptionAlgorithm") destinationEncryptionAlgorithm: encryptionAlgorithmSpec,
@as("SourceEncryptionAlgorithm") sourceEncryptionAlgorithm: encryptionAlgorithmSpec,
@as("DestinationEncryptionContext") destinationEncryptionContext: encryptionContextType,
@as("DestinationKeyId") destinationKeyId: option<keyIdType>,
@as("SourceKeyId") sourceKeyId: keyIdType,
@as("SourceEncryptionContext") sourceEncryptionContext: encryptionContextType,
@as("CiphertextBlob") ciphertextBlob: option<ciphertextType>
}
  type response = {
@as("DestinationEncryptionAlgorithm") destinationEncryptionAlgorithm: encryptionAlgorithmSpec,
@as("SourceEncryptionAlgorithm") sourceEncryptionAlgorithm: encryptionAlgorithmSpec,
@as("KeyId") keyId: keyIdType,
@as("SourceKeyId") sourceKeyId: keyIdType,
@as("CiphertextBlob") ciphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ReEncryptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKeyPolicies = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("PolicyNames") policyNames: policyNameList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListKeyPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPublicKey = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("SigningAlgorithms") signingAlgorithms: signingAlgorithmSpecList,
@as("EncryptionAlgorithms") encryptionAlgorithms: encryptionAlgorithmSpecList,
@as("KeyUsage") keyUsage: keyUsageType,
@as("CustomerMasterKeySpec") customerMasterKeySpec: customerMasterKeySpec,
@as("PublicKey") publicKey: publicKeyType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GetPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateDataKeyWithoutPlaintext = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("NumberOfBytes") numberOfBytes: numberOfBytesType,
@as("KeySpec") keySpec: dataKeySpec,
@as("EncryptionContext") encryptionContext: encryptionContextType,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("KeyId") keyId: keyIdType,
@as("CiphertextBlob") ciphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GenerateDataKeyWithoutPlaintextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateDataKeyPairWithoutPlaintext = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("KeyPairSpec") keyPairSpec: option<dataKeyPairSpec>,
@as("KeyId") keyId: option<keyIdType>,
@as("EncryptionContext") encryptionContext: encryptionContextType
}
  type response = {
@as("KeyPairSpec") keyPairSpec: dataKeyPairSpec,
@as("KeyId") keyId: keyIdType,
@as("PublicKey") publicKey: publicKeyType,
@as("PrivateKeyCiphertextBlob") privateKeyCiphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GenerateDataKeyPairWithoutPlaintextCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateDataKeyPair = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("KeyPairSpec") keyPairSpec: option<dataKeyPairSpec>,
@as("KeyId") keyId: option<keyIdType>,
@as("EncryptionContext") encryptionContext: encryptionContextType
}
  type response = {
@as("KeyPairSpec") keyPairSpec: dataKeyPairSpec,
@as("KeyId") keyId: keyIdType,
@as("PublicKey") publicKey: publicKeyType,
@as("PrivateKeyPlaintext") privateKeyPlaintext: plaintextType,
@as("PrivateKeyCiphertextBlob") privateKeyCiphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GenerateDataKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GenerateDataKey = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("KeySpec") keySpec: dataKeySpec,
@as("NumberOfBytes") numberOfBytes: numberOfBytesType,
@as("EncryptionContext") encryptionContext: encryptionContextType,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("KeyId") keyId: keyIdType,
@as("Plaintext") plaintext: plaintextType,
@as("CiphertextBlob") ciphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "GenerateDataKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Encrypt = {
  type t;
  type request = {
@as("EncryptionAlgorithm") encryptionAlgorithm: encryptionAlgorithmSpec,
@as("GrantTokens") grantTokens: grantTokenList,
@as("EncryptionContext") encryptionContext: encryptionContextType,
@as("Plaintext") plaintext: option<plaintextType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("EncryptionAlgorithm") encryptionAlgorithm: encryptionAlgorithmSpec,
@as("KeyId") keyId: keyIdType,
@as("CiphertextBlob") ciphertextBlob: ciphertextType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "EncryptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Decrypt = {
  type t;
  type request = {
@as("EncryptionAlgorithm") encryptionAlgorithm: encryptionAlgorithmSpec,
@as("KeyId") keyId: keyIdType,
@as("GrantTokens") grantTokens: grantTokenList,
@as("EncryptionContext") encryptionContext: encryptionContextType,
@as("CiphertextBlob") ciphertextBlob: option<ciphertextType>
}
  type response = {
@as("EncryptionAlgorithm") encryptionAlgorithm: encryptionAlgorithmSpec,
@as("Plaintext") plaintext: plaintextType,
@as("KeyId") keyId: keyIdType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DecryptCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("KeyId") keyId: option<keyIdType>
}
  
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListResourceTags = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListResourceTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKeys = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("Keys") keys: keyList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAliases = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("KeyId") keyId: keyIdType
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("Aliases") aliases: aliasList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeKey = {
  type t;
  type request = {
@as("GrantTokens") grantTokens: grantTokenList,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("KeyMetadata") keyMetadata: keyMetadata
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DescribeKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomKeyStores = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("CustomKeyStoreName") customKeyStoreName: customKeyStoreNameType,
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("CustomKeyStores") customKeyStores: customKeyStoresList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomKeyStoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKey = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("BypassPolicyLockoutSafetyCheck") bypassPolicyLockoutSafetyCheck: booleanType,
@as("CustomKeyStoreId") customKeyStoreId: customKeyStoreIdType,
@as("Origin") origin: originType,
@as("CustomerMasterKeySpec") customerMasterKeySpec: customerMasterKeySpec,
@as("KeyUsage") keyUsage: keyUsageType,
@as("Description") description: descriptionType,
@as("Policy") policy: policyType
}
  type response = {
@as("KeyMetadata") keyMetadata: keyMetadata
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "CreateKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGrant = {
  type t;
  type request = {
@as("Name") name: grantNameType,
@as("GrantTokens") grantTokens: grantTokenList,
@as("Constraints") constraints: grantConstraints,
@as("Operations") operations: option<grantOperationList>,
@as("RetiringPrincipal") retiringPrincipal: principalIdType,
@as("GranteePrincipal") granteePrincipal: option<principalIdType>,
@as("KeyId") keyId: option<keyIdType>
}
  type response = {
@as("GrantId") grantId: grantIdType,
@as("GrantToken") grantToken: grantTokenType
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "CreateGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRetirableGrants = {
  type t;
  type request = {
@as("RetiringPrincipal") retiringPrincipal: option<principalIdType>,
@as("Marker") marker: markerType,
@as("Limit") limit: limitType
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("Grants") grants: grantList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListRetirableGrantsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGrants = {
  type t;
  type request = {
@as("GranteePrincipal") granteePrincipal: principalIdType,
@as("GrantId") grantId: grantIdType,
@as("KeyId") keyId: option<keyIdType>,
@as("Marker") marker: markerType,
@as("Limit") limit: limitType
}
  type response = {
@as("Truncated") truncated: booleanType,
@as("NextMarker") nextMarker: markerType,
@as("Grants") grants: grantList
}
  @module("@aws-sdk/client-kms") @new external new_: (Js.Promise.t<request>) => t = "ListGrantsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
