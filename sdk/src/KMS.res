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
@ocaml.doc("<p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are
      both required, but tag values can be empty (null) strings.</p>
         <p>For information about the rules that apply to tag keys and tag values, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html\">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User
        Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("TagValue") tagValue: tagValueType,
  @ocaml.doc("<p>The key of the tag.</p>") @as("TagKey") tagKey: tagKeyType,
}
type signingAlgorithmSpecList = array<signingAlgorithmSpec>
type policyNameList = array<policyNameType>
@ocaml.doc("<p>Contains information about each entry in the key list.</p>")
type keyListEntry = {
  @ocaml.doc("<p>ARN of the key.</p>") @as("KeyArn") keyArn: option<arnType>,
  @ocaml.doc("<p>Unique identifier of the key.</p>") @as("KeyId") keyId: option<keyIdType>,
}
type grantTokenList = array<grantTokenType>
type grantOperationList = array<grantOperation>
type encryptionContextType = Js.Dict.t<encryptionContextValue>
type encryptionAlgorithmSpecList = array<encryptionAlgorithmSpec>
@ocaml.doc("<p>Contains information about each custom key store in the custom key store list.</p>")
type customKeyStoresListEntry = {
  @ocaml.doc("<p>The date and time when the custom key store was created.</p>") @as("CreationDate")
  creationDate: option<dateType>,
  @ocaml.doc("<p>Describes the connection error. This field appears in the response only when the <code>ConnectionState</code> is <code>FAILED</code>. For help resolving these errors, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed\">How to Fix a Connection Failure</a> in <i>AWS Key Management Service Developer Guide</i>.</p>
         <p>Valid values are:</p>
         <ul>
            <li>
               <p>
                  <code>CLUSTER_NOT_FOUND</code> - AWS KMS cannot find the AWS CloudHSM cluster with the
          specified cluster ID.</p>
            </li>
            <li>
               <p>
                  <code>INSUFFICIENT_CLOUDHSM_HSMS</code> - The associated AWS CloudHSM cluster does not
          contain any active HSMs. To connect a custom key store to its AWS CloudHSM cluster, the cluster
          must contain at least one active HSM.</p>
            </li>
            <li>
               <p>
                  <code>INTERNAL_ERROR</code> - AWS KMS could not complete the request due to an internal
          error. Retry the request. For <code>ConnectCustomKeyStore</code> requests, disconnect the
          custom key store before trying to connect again.</p>
            </li>
            <li>
               <p>
                  <code>INVALID_CREDENTIALS</code> - AWS KMS does not have the correct password for the
            <code>kmsuser</code> crypto user in the AWS CloudHSM cluster. Before you can connect your
          custom key store to its AWS CloudHSM cluster, you must change the <code>kmsuser</code> account
          password and update the key store password value for the custom key store.</p>
            </li>
            <li>
               <p>
                  <code>NETWORK_ERRORS</code> - Network errors are preventing AWS KMS from connecting to
          the custom key store.</p>
            </li>
            <li>
               <p>
                  <code>SUBNET_NOT_FOUND</code> - A subnet in the AWS CloudHSM cluster
          configuration was deleted. If AWS KMS cannot find all of the subnets in the cluster configuration, attempts to connect the custom key store to the AWS CloudHSM cluster fail. To fix this error, create a cluster from a recent backup and associate it with your custom key store. (This process creates a new cluster configuration with a VPC and private subnets.) For details, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-failed\">How to Fix a Connection Failure</a> in the
          <i>AWS Key Management Service Developer Guide</i>.</p>
            </li>
            <li>
               <p>
                  <code>USER_LOCKED_OUT</code> - The <code>kmsuser</code> CU account is locked out of
          the associated AWS CloudHSM cluster due to too many failed password attempts. Before you can
          connect your custom key store to its AWS CloudHSM cluster, you must change the
            <code>kmsuser</code> account password and update the key store password value for the custom key
          store.</p>
            </li>
            <li>
               <p>
                  <code>USER_LOGGED_IN</code> - The <code>kmsuser</code> CU account is logged into the
          the associated AWS CloudHSM cluster. This prevents AWS KMS from rotating the <code>kmsuser</code> account password and logging into the cluster. Before you can
          connect your custom key store to its AWS CloudHSM cluster, you must log the <code>kmsuser</code> CU out of the cluster. If you changed the <code>kmsuser</code> password to log into the cluster, you must also and update the key store password value for the custom key
          store. For help, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#login-kmsuser-2\">How to Log Out and Reconnect</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
            </li>
            <li>
               <p>
                  <code>USER_NOT_FOUND</code> - AWS KMS cannot find a <code>kmsuser</code> CU account in the associated AWS CloudHSM cluster. Before you can
          connect your custom key store to its AWS CloudHSM cluster, you must create a <code>kmsuser</code> CU account in the cluster, and then update the key store password value for the custom key
          store.</p>
            </li>
         </ul>")
  @as("ConnectionErrorCode")
  connectionErrorCode: option<connectionErrorCodeType>,
  @ocaml.doc("<p>Indicates whether the custom key store is connected to its AWS CloudHSM cluster.</p>
         <p>You can create and use CMKs in your custom key stores only when its connection state is
        <code>CONNECTED</code>.</p>
         <p>The value is <code>DISCONNECTED</code> if the key store has never been connected or you
      use the <a>DisconnectCustomKeyStore</a> operation to disconnect it. If the value is
        <code>CONNECTED</code> but you are having trouble using the custom key store, make sure that
      its associated AWS CloudHSM cluster is active and contains at least one active HSM.</p>
         <p>A value of <code>FAILED</code> indicates that an attempt to connect was unsuccessful. The <code>ConnectionErrorCode</code> field in the response indicates the cause of the failure. For
      help resolving a connection failure, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html\">Troubleshooting a Custom Key Store</a> in the
      <i>AWS Key Management Service Developer Guide</i>.</p>")
  @as("ConnectionState")
  connectionState: option<connectionStateType>,
  @ocaml.doc("<p>The trust anchor certificate of the associated AWS CloudHSM cluster. When you <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr\">initialize the
        cluster</a>, you create this certificate and save it in the <code>customerCA.crt</code>
      file.</p>")
  @as("TrustAnchorCertificate")
  trustAnchorCertificate: option<trustAnchorCertificateType>,
  @ocaml.doc("<p>A unique identifier for the AWS CloudHSM cluster that is associated with the custom key
      store.</p>")
  @as("CloudHsmClusterId")
  cloudHsmClusterId: option<cloudHsmClusterIdType>,
  @ocaml.doc("<p>The user-specified friendly name for the custom key store.</p>")
  @as("CustomKeyStoreName")
  customKeyStoreName: option<customKeyStoreNameType>,
  @ocaml.doc("<p>A unique identifier for the custom key store.</p>") @as("CustomKeyStoreId")
  customKeyStoreId: option<customKeyStoreIdType>,
}
@ocaml.doc("<p>Contains information about an alias.</p>")
type aliasListEntry = {
  @as("LastUpdatedDate") lastUpdatedDate: option<dateType>,
  @as("CreationDate") creationDate: option<dateType>,
  @ocaml.doc("<p>String that contains the key identifier referred to by the alias.</p>")
  @as("TargetKeyId")
  targetKeyId: option<keyIdType>,
  @ocaml.doc("<p>String that contains the key ARN.</p>") @as("AliasArn") aliasArn: option<arnType>,
  @ocaml.doc("<p>String that contains the alias. This value begins with <code>alias/</code>.</p>")
  @as("AliasName")
  aliasName: option<aliasNameType>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Contains metadata about a customer master key (CMK).</p>
         <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>")
type keyMetadata = {
  @ocaml.doc("<p>The signing algorithms that the CMK supports. You cannot use the CMK with other
      signing algorithms within AWS KMS.</p>
         <p>This field appears only when the <code>KeyUsage</code> of the CMK is
        <code>SIGN_VERIFY</code>.</p>")
  @as("SigningAlgorithms")
  signingAlgorithms: option<signingAlgorithmSpecList>,
  @ocaml.doc("<p>The encryption algorithms that the CMK supports. You cannot use the CMK with other
      encryption algorithms within AWS KMS.</p>
         <p>This field appears only when the <code>KeyUsage</code> of the CMK is
        <code>ENCRYPT_DECRYPT</code>.</p>")
  @as("EncryptionAlgorithms")
  encryptionAlgorithms: option<encryptionAlgorithmSpecList>,
  @ocaml.doc("<p>Describes the type of key material in the CMK.</p>") @as("CustomerMasterKeySpec")
  customerMasterKeySpec: option<customerMasterKeySpec>,
  @ocaml.doc("<p>The manager of the CMK. CMKs in your AWS account are either customer managed or AWS
      managed. For more information about the difference, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys\">Customer Master Keys</a> in the
      <i>AWS Key Management Service Developer Guide</i>.</p>")
  @as("KeyManager")
  keyManager: option<keyManagerType>,
  @ocaml.doc("<p>Specifies whether the CMK's key material expires. This value is present only when
        <code>Origin</code> is <code>EXTERNAL</code>, otherwise this value is omitted.</p>")
  @as("ExpirationModel")
  expirationModel: option<expirationModelType>,
  @ocaml.doc("<p>The cluster ID of the AWS CloudHSM cluster that contains the key material for the CMK. When you
      create a CMK in a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a>, AWS KMS creates the key material for the CMK in the
      associated AWS CloudHSM cluster. This value is present only when the CMK is created in a custom key
      store.</p>")
  @as("CloudHsmClusterId")
  cloudHsmClusterId: option<cloudHsmClusterIdType>,
  @ocaml.doc("<p>A unique identifier for the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a> that contains the CMK. This value is present
      only when the CMK is created in a custom key store.</p>")
  @as("CustomKeyStoreId")
  customKeyStoreId: option<customKeyStoreIdType>,
  @ocaml.doc("<p>The source of the CMK's key material. When this value is <code>AWS_KMS</code>, AWS KMS
      created the key material. When this value is <code>EXTERNAL</code>, the key material was
      imported from your existing key management infrastructure or the CMK lacks key material. When
      this value is <code>AWS_CLOUDHSM</code>, the key material was created in the AWS CloudHSM cluster
      associated with a custom key store.</p>")
  @as("Origin")
  origin: option<originType>,
  @ocaml.doc("<p>The time at which the imported key material expires. When the key material expires, AWS KMS
      deletes the key material and the CMK becomes unusable. This value is present only for CMKs
      whose <code>Origin</code> is <code>EXTERNAL</code> and whose <code>ExpirationModel</code> is
        <code>KEY_MATERIAL_EXPIRES</code>, otherwise this value is omitted.</p>")
  @as("ValidTo")
  validTo: option<dateType>,
  @ocaml.doc("<p>The date and time after which AWS KMS deletes the CMK. This value is present only when
        <code>KeyState</code> is <code>PendingDeletion</code>.</p>")
  @as("DeletionDate")
  deletionDate: option<dateType>,
  @ocaml.doc("<p>The current status of the CMK.</p>
         <p>For more information about how key state affects the use of a CMK, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html\">Key state: Effect on your CMK</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
  @as("KeyState")
  keyState: option<keyState>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> for which you can use the CMK.</p>"
  )
  @as("KeyUsage")
  keyUsage: option<keyUsageType>,
  @ocaml.doc("<p>The description of the CMK.</p>") @as("Description")
  description: option<descriptionType>,
  @ocaml.doc("<p>Specifies whether the CMK is enabled. When <code>KeyState</code> is <code>Enabled</code>
      this value is true, otherwise it is false.</p>")
  @as("Enabled")
  enabled: option<booleanType>,
  @ocaml.doc("<p>The date and time when the CMK was created.</p>") @as("CreationDate")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CMK. For examples, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms\">AWS Key Management Service
        (AWS KMS)</a> in the Example ARNs section of the <i>AWS General
        Reference</i>.</p>")
  @as("Arn")
  arn: option<arnType>,
  @ocaml.doc("<p>The globally unique identifier for the CMK.</p>") @as("KeyId") keyId: keyIdType,
  @ocaml.doc("<p>The twelve-digit account ID of the AWS account that owns the CMK.</p>")
  @as("AWSAccountId")
  awsaccountId: option<awsaccountIdType>,
}
type keyList = array<keyListEntry>
@ocaml.doc("<p>Use this structure to allow <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> in the grant only when the operation request
      includes the specified <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">encryption context</a>. </p>
         <p>AWS KMS applies the grant constraints only to cryptographic operations that support an
      encryption context, that is, all cryptographic operations with a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#symmetric-cmks\">symmetric CMK</a>. Grant
      constraints are not applied to operations that do not support an encryption context, such as
      cryptographic operations with asymmetric CMKs and management operations, such as <a>DescribeKey</a> or <a>RetireGrant</a>.</p>
         <important>
            <p>In a cryptographic operation, the encryption context in the decryption operation must be
        an exact, case-sensitive match for the keys and values in the encryption context of the
        encryption operation. Only the order of the pairs can vary.</p>
            <p>However, in a grant constraint, the key in each key-value pair is not case sensitive,
        but the value is case sensitive.</p>
            <p>To avoid confusion, do not use multiple encryption context pairs that differ only by
        case. To require a fully case-sensitive encryption context, use the
          <code>kms:EncryptionContext:</code> and <code>kms:EncryptionContextKeys</code> conditions
        in an IAM or key policy. For details, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context\">kms:EncryptionContext:</a> in the <i>
                  <i>AWS Key Management Service Developer Guide</i>
               </i>.</p>
         </important>")
type grantConstraints = {
  @ocaml.doc("<p>A list of key-value pairs that must match the encryption context in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operation</a> request. The grant allows the operation only when the encryption context in the
      request is the same as the encryption context specified in this constraint.</p>")
  @as("EncryptionContextEquals")
  encryptionContextEquals: option<encryptionContextType>,
  @ocaml.doc("<p>A list of key-value pairs that must be included in the encryption context of the
      <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operation</a> request. The grant allows the cryptographic operation only when the
      encryption context in the request includes the key-value pairs specified in this constraint,
      although it can include additional key-value pairs.</p>")
  @as("EncryptionContextSubset")
  encryptionContextSubset: option<encryptionContextType>,
}
type customKeyStoresList = array<customKeyStoresListEntry>
type aliasList = array<aliasListEntry>
@ocaml.doc("<p>Contains information about a grant.</p>")
type grantListEntry = {
  @ocaml.doc("<p>A list of key-value pairs that must be present in the encryption context of certain
      subsequent operations that the grant allows.</p>")
  @as("Constraints")
  constraints: option<grantConstraints>,
  @ocaml.doc("<p>The list of operations permitted by the grant.</p>") @as("Operations")
  operations: option<grantOperationList>,
  @ocaml.doc("<p>The AWS account under which the grant was issued.</p>") @as("IssuingAccount")
  issuingAccount: option<principalIdType>,
  @ocaml.doc("<p>The principal that can retire the grant.</p>") @as("RetiringPrincipal")
  retiringPrincipal: option<principalIdType>,
  @ocaml.doc("<p>The identity that gets the permissions in the grant.</p>
         <p>The <code>GranteePrincipal</code> field in the <code>ListGrants</code> response usually contains the
        user or role designated as the grantee principal in the grant. However, when the grantee
        principal in the grant is an AWS service, the <code>GranteePrincipal</code> field contains
        the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services\">service
          principal</a>, which might represent several different grantee principals.</p>")
  @as("GranteePrincipal")
  granteePrincipal: option<principalIdType>,
  @ocaml.doc("<p>The date and time when the grant was created.</p>") @as("CreationDate")
  creationDate: option<dateType>,
  @ocaml.doc(
    "<p>The friendly name that identifies the grant. If a name was provided in the <a>CreateGrant</a> request, that name is returned. Otherwise this value is null.</p>"
  )
  @as("Name")
  name: option<grantNameType>,
  @ocaml.doc("<p>The unique identifier for the grant.</p>") @as("GrantId")
  grantId: option<grantIdType>,
  @ocaml.doc(
    "<p>The unique identifier for the customer master key (CMK) to which the grant applies.</p>"
  )
  @as("KeyId")
  keyId: option<keyIdType>,
}
type grantList = array<grantListEntry>
@ocaml.doc("<fullname>AWS Key Management Service</fullname>
         <p>AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes
      the AWS KMS operations that you can call programmatically. For general information about AWS KMS,
      see the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/\">
               <i>AWS Key Management Service Developer Guide</i>
            </a>.</p>
         <note>
            <p>AWS provides SDKs that consist of libraries and sample code for various programming
        languages and platforms (Java, Ruby, .Net, macOS, Android, etc.). The SDKs provide a
        convenient way to create programmatic access to AWS KMS and other AWS services. For example,
        the SDKs take care of tasks such as signing requests (see below), managing errors, and
        retrying requests automatically. For more information about the AWS SDKs, including how to
        download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web
          Services</a>.</p>
         </note>
         <p>We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS.</p>
         <p>Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients
      must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral
      Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems
      such as Java 7 and later support these modes.</p>
         <p>
            <b>Signing Requests</b>
         </p>
         <p>Requests must be signed by using an access key ID and a secret access key. We strongly
      recommend that you <i>do not</i> use your AWS account (root) access key ID and
      secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key
      for an IAM user. You can also use the AWS Security Token Service to generate temporary
      security credentials that you can use to sign requests.</p>
         <p>All AWS KMS operations require <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p>
         <p>
            <b>Logging API Requests</b>
         </p>
         <p>AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS
      account and delivers them to an Amazon S3 bucket that you specify. By using the information
      collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request,
      when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find
      your log files, see the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/\">AWS CloudTrail User Guide</a>.</p>
         <p>
            <b>Additional Resources</b>
         </p>
         <p>For more information about credentials and request signing, see the following:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html\">AWS Security
            Credentials</a> - This topic provides general information about the types of
          credentials used for accessing AWS.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html\">Temporary
            Security Credentials</a> - This section of the <i>IAM User Guide</i>
          describes how to create and use temporary security credentials.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version
            4 Signing Process</a> - This set of topics walks you through the process of signing
          a request using an access key ID and a secret access key.</p>
            </li>
         </ul>
         <p>
            <b>Commonly Used API Operations</b>
         </p>
         <p>Of the API operations discussed in this guide, the following will prove the most useful
      for most applications. You will likely perform operations other than these, such as creating
      keys and assigning policies, by using the console.</p>
         <ul>
            <li>
               <p>
                  <a>Encrypt</a>
               </p>
            </li>
            <li>
               <p>
                  <a>Decrypt</a>
               </p>
            </li>
            <li>
               <p>
                  <a>GenerateDataKey</a>
               </p>
            </li>
            <li>
               <p>
                  <a>GenerateDataKeyWithoutPlaintext</a>
               </p>
            </li>
         </ul>")
module UpdateKeyDescription = {
  type t
  type request = {
    @ocaml.doc("<p>New description for the CMK.</p>") @as("Description")
    description: descriptionType,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "UpdateKeyDescriptionCommand"
  let make = (~description, ~keyId, ()) => new({description: description, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateCustomKeyStore = {
  type t
  type request = {
    @ocaml.doc("<p>Associates the custom key store with a related AWS CloudHSM cluster. </p>
         <p>Enter the cluster ID of the cluster that you used to create the custom key store or a
      cluster that shares a backup history and has the same cluster certificate as the original
      cluster. You cannot use this parameter to associate a custom key store with an unrelated
      cluster. In addition, the replacement cluster must <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore\">fulfill the requirements</a> for
      a cluster associated with a custom key store. To view the cluster certificate of a cluster,
      use the <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html\">DescribeClusters</a> operation.</p>")
    @as("CloudHsmClusterId")
    cloudHsmClusterId: option<cloudHsmClusterIdType>,
    @ocaml.doc("<p>Enter the current password of the <code>kmsuser</code> crypto user (CU) in the AWS CloudHSM
      cluster that is associated with the custom key store.</p>
         <p>This parameter tells AWS KMS the current password of the <code>kmsuser</code> crypto user
      (CU). It does not set or change the password of any users in the AWS CloudHSM cluster.</p>")
    @as("KeyStorePassword")
    keyStorePassword: option<keyStorePasswordType>,
    @ocaml.doc("<p>Changes the friendly name of the custom key store to the value that you specify. The
      custom key store name must be unique in the AWS account.</p>")
    @as("NewCustomKeyStoreName")
    newCustomKeyStoreName: option<customKeyStoreNameType>,
    @ocaml.doc("<p>Identifies the custom key store that you want to update. Enter the ID of the custom key
      store. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>")
    @as("CustomKeyStoreId")
    customKeyStoreId: customKeyStoreIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "UpdateCustomKeyStoreCommand"
  let make = (
    ~customKeyStoreId,
    ~cloudHsmClusterId=?,
    ~keyStorePassword=?,
    ~newCustomKeyStoreName=?,
    (),
  ) =>
    new({
      cloudHsmClusterId: cloudHsmClusterId,
      keyStorePassword: keyStorePassword,
      newCustomKeyStoreName: newCustomKeyStoreName,
      customKeyStoreId: customKeyStoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk\">customer managed CMK</a> to associate with the alias. You don't have permission
      to associate an alias with an <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk\">AWS managed CMK</a>.</p>
         <p>The CMK must be in the same AWS account and Region as the alias. Also, the new target CMK
      must be the same type as the current target CMK (both symmetric or both asymmetric) and they
      must have the same key usage. </p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
         <p>To verify that the alias
      is mapped to the correct CMK, use <a>ListAliases</a>.</p>")
    @as("TargetKeyId")
    targetKeyId: keyIdType,
    @ocaml.doc("<p>Identifies the alias that is changing its CMK. This value must begin with
        <code>alias/</code> followed by the alias name, such as <code>alias/ExampleAlias</code>. You
      cannot use UpdateAlias to change the alias name.</p>")
    @as("AliasName")
    aliasName: aliasNameType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "UpdateAliasCommand"
  let make = (~targetKeyId, ~aliasName, ()) => new({targetKeyId: targetKeyId, aliasName: aliasName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ScheduleKeyDeletion = {
  type t
  type request = {
    @ocaml.doc("<p>The waiting period, specified in number of days. After the waiting period ends, AWS KMS
      deletes the customer master key (CMK).</p>
         <p>This value is optional. If you include a value, it must be between 7 and 30, inclusive. If
      you do not include a value, it defaults to 30.</p>")
    @as("PendingWindowInDays")
    pendingWindowInDays: option<pendingWindowInDaysType>,
    @ocaml.doc("<p>The unique identifier of the customer master key (CMK) to delete.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time after which AWS KMS deletes the customer master key (CMK).</p>"
    )
    @as("DeletionDate")
    deletionDate: option<dateType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK whose deletion is scheduled.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ScheduleKeyDeletionCommand"
  let make = (~keyId, ~pendingWindowInDays=?, ()) =>
    new({pendingWindowInDays: pendingWindowInDays, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier of the grant to be revoked.</p>") @as("GrantId") grantId: grantIdType,
    @ocaml.doc("<p>A unique identifier for the customer master key associated with the grant.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a
different AWS account, you must use the key ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "RevokeGrantCommand"
  let make = (~grantId, ~keyId, ()) => new({grantId: grantId, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RetireGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Unique identifier of the grant to retire. The grant ID is returned in the response to a
        <code>CreateGrant</code> operation.</p>
         <ul>
            <li>
               <p>Grant ID Example -
          0123456789012345678901234567890123456789012345678901234567890123</p>
            </li>
         </ul>")
    @as("GrantId")
    grantId: option<grantIdType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CMK associated with the grant. </p>
         <p>For example: <code>arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
         </p>")
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>Token that identifies the grant to be retired.</p>") @as("GrantToken")
    grantToken: option<grantTokenType>,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "RetireGrantCommand"
  let make = (~grantId=?, ~keyId=?, ~grantToken=?, ()) =>
    new({grantId: grantId, keyId: keyId, grantToken: grantToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutKeyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A flag to indicate whether to bypass the key policy lockout safety check.</p>
         <important>
            <p>Setting this value to true increases the risk that the CMK becomes unmanageable. Do not
        set this value to true indiscriminately.</p>
            <p>For more information, refer to the scenario in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam\">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p>
         </important>
         <p>Use this parameter only when you intend to prevent the principal that is making the
      request from making a subsequent <code>PutKeyPolicy</code> request on the CMK.</p>
         <p>The default value is false.</p>")
    @as("BypassPolicyLockoutSafetyCheck")
    bypassPolicyLockoutSafetyCheck: option<booleanType>,
    @ocaml.doc("<p>The key policy to attach to the CMK.</p>
         <p>The key policy must meet the following criteria:</p>
         <ul>
            <li>
               <p>If you don't set <code>BypassPolicyLockoutSafetyCheck</code> to true, the key policy
          must allow the principal that is making the <code>PutKeyPolicy</code> request to make a
          subsequent <code>PutKeyPolicy</code> request on the CMK. This reduces the risk that the
          CMK becomes unmanageable. For more information, refer to the scenario in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam\">Default Key Policy</a> section of the <i>AWS Key Management Service Developer Guide</i>.</p>
            </li>
            <li>
               <p>Each statement in the key policy must contain one or more principals. The principals
          in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal
          (for example, an IAM user or role), you might need to enforce a delay before including the
          new principal in a key policy because the new principal might not be immediately visible
          to AWS KMS. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency\">Changes that I make are not always immediately visible</a> in the <i>AWS
            Identity and Access Management User Guide</i>.</p>
            </li>
         </ul>
         <p>The key policy cannot exceed 32 kilobytes (32768 bytes). For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/resource-limits.html\">Resource Quotas</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("Policy")
    policy: policyType,
    @ocaml.doc("<p>The name of the key policy. The only valid value is <code>default</code>.</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "PutKeyPolicyCommand"
  let make = (~policy, ~policyName, ~keyId, ~bypassPolicyLockoutSafetyCheck=?, ()) =>
    new({
      bypassPolicyLockoutSafetyCheck: bypassPolicyLockoutSafetyCheck,
      policy: policy,
      policyName: policyName,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ImportKeyMaterial = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether the key material expires. The default is
        <code>KEY_MATERIAL_EXPIRES</code>, in which case you must include the <code>ValidTo</code>
      parameter. When this parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must
      omit the <code>ValidTo</code> parameter.</p>")
    @as("ExpirationModel")
    expirationModel: option<expirationModelType>,
    @ocaml.doc("<p>The time at which the imported key material expires. When the key material expires, AWS KMS
      deletes the key material and the CMK becomes unusable. You must omit this parameter when the
        <code>ExpirationModel</code> parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>.
      Otherwise it is required.</p>")
    @as("ValidTo")
    validTo: option<dateType>,
    @ocaml.doc("<p>The encrypted key material to import. The key material must be encrypted with the public
      wrapping key that <a>GetParametersForImport</a> returned, using the wrapping
      algorithm that you specified in the same <code>GetParametersForImport</code> request.</p>")
    @as("EncryptedKeyMaterial")
    encryptedKeyMaterial: ciphertextType,
    @ocaml.doc("<p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained
      the public key that you used to encrypt the key material.</p>")
    @as("ImportToken")
    importToken: ciphertextType,
    @ocaml.doc("<p>The identifier of the symmetric CMK that receives the imported key material. The CMK's
        <code>Origin</code> must be <code>EXTERNAL</code>. This must be the same CMK specified in
      the <code>KeyID</code> parameter of the corresponding <a>GetParametersForImport</a>
      request.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "ImportKeyMaterialCommand"
  let make = (~encryptedKeyMaterial, ~importToken, ~keyId, ~expirationModel=?, ~validTo=?, ()) =>
    new({
      expirationModel: expirationModel,
      validTo: validTo,
      encryptedKeyMaterial: encryptedKeyMaterial,
      importToken: importToken,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetParametersForImport = {
  type t
  type request = {
    @ocaml.doc("<p>The type of wrapping key (public key) to return in the response. Only 2048-bit RSA public
      keys are supported.</p>")
    @as("WrappingKeySpec")
    wrappingKeySpec: wrappingKeySpec,
    @ocaml.doc("<p>The algorithm you will use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html\">Encrypt the Key Material</a>
      in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("WrappingAlgorithm")
    wrappingAlgorithm: algorithmSpec,
    @ocaml.doc("<p>The identifier of the symmetric CMK into which you will import key material. The
        <code>Origin</code> of the CMK must be <code>EXTERNAL</code>.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The time at which the import token and public key are no longer valid. After this time,
      you cannot use them to make an <a>ImportKeyMaterial</a> request and you must send
      another <code>GetParametersForImport</code> request to get new ones.</p>")
    @as("ParametersValidTo")
    parametersValidTo: option<dateType>,
    @ocaml.doc(
      "<p>The public key to use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>.</p>"
    )
    @as("PublicKey")
    publicKey: option<plaintextType>,
    @ocaml.doc("<p>The import token to send in a subsequent <a>ImportKeyMaterial</a>
      request.</p>")
    @as("ImportToken")
    importToken: option<ciphertextType>,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK to use in a subsequent <a>ImportKeyMaterial</a>
      request. This is the same CMK specified in the <code>GetParametersForImport</code>
      request.</p>")
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GetParametersForImportCommand"
  let make = (~wrappingKeySpec, ~wrappingAlgorithm, ~keyId, ()) =>
    new({wrappingKeySpec: wrappingKeySpec, wrappingAlgorithm: wrappingAlgorithm, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyRotationStatus = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a
different AWS account, you must use the key ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>A Boolean value that specifies whether key rotation is enabled.</p>")
    @as("KeyRotationEnabled")
    keyRotationEnabled: option<booleanType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GetKeyRotationStatusCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the name of the key policy. The only valid name is <code>default</code>. To get
      the names of key policies, use <a>ListKeyPolicies</a>.</p>")
    @as("PolicyName")
    policyName: policyNameType,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>A key policy document in JSON format.</p>") @as("Policy")
    policy: option<policyType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GetKeyPolicyCommand"
  let make = (~policyName, ~keyId, ()) => new({policyName: policyName, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateRandom = {
  type t
  type request = {
    @ocaml.doc("<p>Generates the random byte string in the AWS CloudHSM cluster that is associated with the
      specified <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a>. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>")
    @as("CustomKeyStoreId")
    customKeyStoreId: option<customKeyStoreIdType>,
    @ocaml.doc("<p>The length of the byte string.</p>") @as("NumberOfBytes")
    numberOfBytes: option<numberOfBytesType>,
  }
  type response = {
    @ocaml.doc(
      "<p>The random byte string. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("Plaintext")
    plaintext: option<plaintextType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GenerateRandomCommand"
  let make = (~customKeyStoreId=?, ~numberOfBytes=?, ()) =>
    new({customKeyStoreId: customKeyStoreId, numberOfBytes: numberOfBytes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableKeyRotation = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies a symmetric customer master key (CMK). You cannot enable automatic rotation of asymmetric CMKs, CMKs with imported key material, or CMKs in a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a>.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "EnableKeyRotationCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableKey = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "EnableKeyCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisconnectCustomKeyStore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Enter the ID of the custom key store you want to disconnect. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>"
    )
    @as("CustomKeyStoreId")
    customKeyStoreId: customKeyStoreIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "DisconnectCustomKeyStoreCommand"
  let make = (~customKeyStoreId, ()) => new({customKeyStoreId: customKeyStoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableKeyRotation = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies a symmetric customer master key (CMK). You cannot enable or disable automatic
      rotation of <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks\">asymmetric CMKs</a>, CMKs
      with <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html\">imported key
        material</a>, or CMKs in a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a>.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "DisableKeyRotationCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableKey = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "DisableKeyCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteImportedKeyMaterial = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies the CMK from which you are deleting imported key material. The
        <code>Origin</code> of the CMK must be <code>EXTERNAL</code>.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new
  external new: request => t = "DeleteImportedKeyMaterialCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomKeyStore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Enter the ID of the custom key store you want to delete. To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>"
    )
    @as("CustomKeyStoreId")
    customKeyStoreId: customKeyStoreIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "DeleteCustomKeyStoreCommand"
  let make = (~customKeyStoreId, ()) => new({customKeyStoreId: customKeyStoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The alias to be deleted. The alias name must begin with <code>alias/</code> followed by
      the alias name, such as <code>alias/ExampleAlias</code>.</p>")
    @as("AliasName")
    aliasName: aliasNameType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "DeleteAliasCommand"
  let make = (~aliasName, ()) => new({aliasName: aliasName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCustomKeyStore = {
  type t
  type request = {
    @ocaml.doc("<p>Enter the password of the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser\">
               <code>kmsuser</code> crypto user
        (CU) account</a> in the specified AWS CloudHSM cluster. AWS KMS logs into the cluster as this
      user to manage key material on your behalf.</p>
         <p>The password must be a string of 7 to 32 characters. Its value is case sensitive.</p>
         <p>This parameter tells AWS KMS the <code>kmsuser</code> account password; it does not change
      the password in the AWS CloudHSM cluster.</p>")
    @as("KeyStorePassword")
    keyStorePassword: keyStorePasswordType,
    @ocaml.doc("<p>Enter the content of the trust anchor certificate for the cluster. This is the content of
      the <code>customerCA.crt</code> file that you created when you <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html\">initialized the cluster</a>.</p>")
    @as("TrustAnchorCertificate")
    trustAnchorCertificate: trustAnchorCertificateType,
    @ocaml.doc("<p>Identifies the AWS CloudHSM cluster for the custom key store. Enter the cluster ID of any active
      AWS CloudHSM cluster that is not already associated with a custom key store. To find the cluster ID,
      use the <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html\">DescribeClusters</a> operation.</p>")
    @as("CloudHsmClusterId")
    cloudHsmClusterId: cloudHsmClusterIdType,
    @ocaml.doc("<p>Specifies a friendly name for the custom key store. The name must be unique in your AWS
      account.</p>")
    @as("CustomKeyStoreName")
    customKeyStoreName: customKeyStoreNameType,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the new custom key store.</p>") @as("CustomKeyStoreId")
    customKeyStoreId: option<customKeyStoreIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "CreateCustomKeyStoreCommand"
  let make = (
    ~keyStorePassword,
    ~trustAnchorCertificate,
    ~cloudHsmClusterId,
    ~customKeyStoreName,
    (),
  ) =>
    new({
      keyStorePassword: keyStorePassword,
      trustAnchorCertificate: trustAnchorCertificate,
      cloudHsmClusterId: cloudHsmClusterId,
      customKeyStoreName: customKeyStoreName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>Associates the alias with the specified <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk\">customer managed CMK</a>. The CMK must be
      in the same AWS Region. </p>
         <p>A valid CMK ID is required. If you supply a null or empty string value, this operation
      returns an error.</p>
         <p>For help finding the key ID and ARN, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn\">Finding the Key ID and
        ARN</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
        
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("TargetKeyId")
    targetKeyId: keyIdType,
    @ocaml.doc("<p>Specifies the alias name. This value must begin with <code>alias/</code> followed by a
      name, such as <code>alias/ExampleAlias</code>. </p>
         <p>The <code>AliasName</code> value must be string of 1-256 characters. It can contain only alphanumeric characters,
      forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with <code>alias/aws/</code>. The <code>alias/aws/</code> prefix is reserved
      for <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk\">AWS managed CMKs</a>.</p>")
    @as("AliasName")
    aliasName: aliasNameType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "CreateAliasCommand"
  let make = (~targetKeyId, ~aliasName, ()) => new({targetKeyId: targetKeyId, aliasName: aliasName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ConnectCustomKeyStore = {
  type t
  type request = {
    @ocaml.doc("<p>Enter the key store ID of the custom key store that you want to connect.
      To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>")
    @as("CustomKeyStoreId")
    customKeyStoreId: customKeyStoreIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "ConnectCustomKeyStoreCommand"
  let make = (~customKeyStoreId, ()) => new({customKeyStoreId: customKeyStoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelKeyDeletion = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the customer master key (CMK) for which to cancel
      deletion.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK whose deletion is canceled.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "CancelKeyDeletionCommand"
  let make = (~keyId, ()) => new({keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Verify = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>The signing algorithm that was used to sign the message. If you submit a different
      algorithm, the signature verification fails.</p>")
    @as("SigningAlgorithm")
    signingAlgorithm: signingAlgorithmSpec,
    @ocaml.doc("<p>The signature that the <code>Sign</code> operation generated.</p>")
    @as("Signature")
    signature: ciphertextType,
    @ocaml.doc("<p>Tells AWS KMS whether the value of the <code>Message</code> parameter is a message or
      message digest. The default value, RAW, indicates a message. To indicate a message digest,
      enter <code>DIGEST</code>.</p>
         <important>
            <p>Use the <code>DIGEST</code> value only when the value of the <code>Message</code>
        parameter is a message digest. If you use the <code>DIGEST</code> value with a raw message,
        the security of the verification operation can be compromised.</p>
         </important>")
    @as("MessageType")
    messageType: option<messageType>,
    @ocaml.doc("<p>Specifies the message that was signed. You can submit a raw message of up to 4096 bytes,
      or a hash digest of the message. If you submit a digest, use the <code>MessageType</code>
      parameter with a value of <code>DIGEST</code>.</p>
         <p>If the message specified here is different from the message that was signed, the signature
      verification fails. A message and its hash digest are considered to be the same
      message.</p>")
    @as("Message")
    message: plaintextType,
    @ocaml.doc("<p>Identifies the asymmetric CMK that will be used to verify the signature. This must be the
      same CMK that was used to generate the signature. If you specify a different CMK, the
      signature verification fails.</p>
    
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The signing algorithm that was used to verify the signature.</p>")
    @as("SigningAlgorithm")
    signingAlgorithm: option<signingAlgorithmSpec>,
    @ocaml.doc("<p>A Boolean value that indicates whether the signature was verified. A value of
        <code>True</code> indicates that the <code>Signature</code> was produced by signing the
        <code>Message</code> with the specified <code>KeyID</code> and
        <code>SigningAlgorithm.</code> If the signature is not verified, the <code>Verify</code>
      operation fails with a <code>KMSInvalidSignatureException</code> exception. </p>")
    @as("SignatureValid")
    signatureValid: option<booleanType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the asymmetric CMK that was used to verify the signature.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "VerifyCommand"
  let make = (
    ~signingAlgorithm,
    ~signature,
    ~message,
    ~keyId,
    ~grantTokens=?,
    ~messageType=?,
    (),
  ) =>
    new({
      grantTokens: grantTokens,
      signingAlgorithm: signingAlgorithm,
      signature: signature,
      messageType: messageType,
      message: message,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tag keys. Specify only the tag keys, not the tag values.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>Identifies the CMK from which you are removing tags.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~keyId, ()) => new({tagKeys: tagKeys, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module Sign = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the signing algorithm to use when signing the message. </p>
         <p>Choose an algorithm that is compatible with the type and size of the specified asymmetric
      CMK.</p>")
    @as("SigningAlgorithm")
    signingAlgorithm: signingAlgorithmSpec,
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Tells AWS KMS whether the value of the <code>Message</code> parameter is a message or
      message digest. The default value, RAW, indicates a message. To indicate a message digest,
      enter <code>DIGEST</code>.</p>")
    @as("MessageType")
    messageType: option<messageType>,
    @ocaml.doc("<p>Specifies the message or message digest to sign. Messages can be 0-4096 bytes. To sign a
      larger message, provide the message digest.</p>
         <p>If you provide a message, AWS KMS generates a hash digest of the message and then signs
      it.</p>")
    @as("Message")
    message: plaintextType,
    @ocaml.doc("<p>Identifies an asymmetric CMK. AWS KMS uses the private key in the asymmetric CMK to sign the
      message. The <code>KeyUsage</code> type of the CMK must be <code>SIGN_VERIFY</code>. To find
      the <code>KeyUsage</code> of a CMK, use the <a>DescribeKey</a> operation.</p>
    
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The signing algorithm that was used to sign the message.</p>")
    @as("SigningAlgorithm")
    signingAlgorithm: option<signingAlgorithmSpec>,
    @ocaml.doc("<p>The cryptographic signature that was generated for the message. </p>
         <ul>
            <li>
               <p>When used with the supported RSA signing algorithms, the encoding of this value is
          defined by <a href=\"https://tools.ietf.org/html/rfc8017\">PKCS #1 in RFC
          8017</a>.</p>
            </li>
            <li>
               <p>When used with the <code>ECDSA_SHA_256</code>, <code>ECDSA_SHA_384</code>, or
            <code>ECDSA_SHA_512</code> signing algorithms, this value is a DER-encoded object as
          defined by ANS X9.62–2005 and <a href=\"https://tools.ietf.org/html/rfc3279#section-2.2.3\">RFC 3279 Section 2.2.3</a>.
          This is the most commonly used signature format and is appropriate for most uses.
          </p>
            </li>
         </ul>
         <p>When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>")
    @as("Signature")
    signature: option<ciphertextType>,
    @ocaml.doc("<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the asymmetric CMK that was used to sign the
      message.</p>")
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "SignCommand"
  let make = (~signingAlgorithm, ~message, ~keyId, ~grantTokens=?, ~messageType=?, ()) =>
    new({
      signingAlgorithm: signingAlgorithm,
      grantTokens: grantTokens,
      messageType: messageType,
      message: message,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReEncrypt = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Specifies the encryption algorithm that AWS KMS will use to reecrypt the data after it has
      decrypted it. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the encryption
      algorithm used for symmetric CMKs.</p>
         <p>This parameter is required only when the destination CMK is an asymmetric CMK.</p>")
    @as("DestinationEncryptionAlgorithm")
    destinationEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc("<p>Specifies the encryption algorithm that AWS KMS will use to decrypt the ciphertext before it
      is reencrypted. The default value, <code>SYMMETRIC_DEFAULT</code>, represents the algorithm
      used for symmetric CMKs.</p>
         <p>Specify the same algorithm that was used to encrypt the ciphertext. If you specify a
      different algorithm, the decrypt attempt fails.</p>
         <p>This parameter is required only when the ciphertext was encrypted under an asymmetric
      CMK.</p>")
    @as("SourceEncryptionAlgorithm")
    sourceEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc("<p>Specifies that encryption context to use when the reencrypting the data.</p>
         <p>A destination encryption context is valid only when the destination CMK is a symmetric
      CMK. The standard ciphertext format for asymmetric CMKs does not include fields for
      metadata.</p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("DestinationEncryptionContext")
    destinationEncryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>A unique identifier for the CMK that is used to reencrypt the data. Specify a symmetric or
      asymmetric CMK with a <code>KeyUsage</code> value of <code>ENCRYPT_DECRYPT</code>. To find the
        <code>KeyUsage</code> value of a CMK, use the <a>DescribeKey</a>
      operation.</p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("DestinationKeyId")
    destinationKeyId: keyIdType,
    @ocaml.doc("<p>Specifies the customer master key (CMK) that
    AWS KMS will use to decrypt the ciphertext before it is re-encrypted. Enter a key ID of the CMK
    that was used to encrypt the ciphertext.</p>
         <p>This parameter is required only when the ciphertext was encrypted under an asymmetric CMK.
      If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the
      symmetric ciphertext blob. However, it is always recommended as a best practice. This practice
      ensures that you use the CMK that you intend.</p>
    
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("SourceKeyId")
    sourceKeyId: option<keyIdType>,
    @ocaml.doc("<p>Specifies the encryption context to use to decrypt the ciphertext. Enter the same
      encryption context that was used to encrypt the ciphertext.</p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("SourceEncryptionContext")
    sourceEncryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>Ciphertext of the data to reencrypt.</p>") @as("CiphertextBlob")
    ciphertextBlob: ciphertextType,
  }
  type response = {
    @ocaml.doc("<p>The encryption algorithm that was used to reencrypt the data.</p>")
    @as("DestinationEncryptionAlgorithm")
    destinationEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc("<p>The encryption algorithm that was used to decrypt the ciphertext before it was
      reencrypted.</p>")
    @as("SourceEncryptionAlgorithm")
    sourceEncryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that was used to reencrypt the data.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>Unique identifier of the CMK used to originally encrypt the data.</p>")
    @as("SourceKeyId")
    sourceKeyId: option<keyIdType>,
    @ocaml.doc(
      "<p>The reencrypted data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("CiphertextBlob")
    ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ReEncryptCommand"
  let make = (
    ~destinationKeyId,
    ~ciphertextBlob,
    ~grantTokens=?,
    ~destinationEncryptionAlgorithm=?,
    ~sourceEncryptionAlgorithm=?,
    ~destinationEncryptionContext=?,
    ~sourceKeyId=?,
    ~sourceEncryptionContext=?,
    (),
  ) =>
    new({
      grantTokens: grantTokens,
      destinationEncryptionAlgorithm: destinationEncryptionAlgorithm,
      sourceEncryptionAlgorithm: sourceEncryptionAlgorithm,
      destinationEncryptionContext: destinationEncryptionContext,
      destinationKeyId: destinationKeyId,
      sourceKeyId: sourceKeyId,
      sourceEncryptionContext: sourceEncryptionContext,
      ciphertextBlob: ciphertextBlob,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeyPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between
    1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
         <p>Only one policy can be attached to a key.</p>")
    @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of key policy names. The only valid value is <code>default</code>.</p>")
    @as("PolicyNames")
    policyNames: option<policyNameList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListKeyPoliciesCommand"
  let make = (~keyId, ~marker=?, ~limit=?, ()) => new({marker: marker, limit: limit, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Identifies the asymmetric CMK that includes the public key.</p>
    
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The signing algorithms that AWS KMS supports for this key.</p>
         <p>This field appears in the response only when the <code>KeyUsage</code> of the public key
      is <code>SIGN_VERIFY</code>.</p>")
    @as("SigningAlgorithms")
    signingAlgorithms: option<signingAlgorithmSpecList>,
    @ocaml.doc("<p>The encryption algorithms that AWS KMS supports for this key. </p>
         <p>This information is critical. If a public key encrypts data outside of AWS KMS by using an
      unsupported encryption algorithm, the ciphertext cannot be decrypted. </p>
         <p>This field appears in the response only when the <code>KeyUsage</code> of the public key
      is <code>ENCRYPT_DECRYPT</code>.</p>")
    @as("EncryptionAlgorithms")
    encryptionAlgorithms: option<encryptionAlgorithmSpecList>,
    @ocaml.doc("<p>The permitted use of the public key. Valid values are <code>ENCRYPT_DECRYPT</code> or
        <code>SIGN_VERIFY</code>. </p>
         <p>This information is critical. If a public key with <code>SIGN_VERIFY</code> key usage
      encrypts data outside of AWS KMS, the ciphertext cannot be decrypted. </p>")
    @as("KeyUsage")
    keyUsage: option<keyUsageType>,
    @ocaml.doc("<p>The type of the of the public key that was downloaded.</p>")
    @as("CustomerMasterKeySpec")
    customerMasterKeySpec: option<customerMasterKeySpec>,
    @ocaml.doc("<p>The exported public key. </p>
         <p>The value is a DER-encoded X.509 public key, also known as
        <code>SubjectPublicKeyInfo</code> (SPKI), as defined in <a href=\"https://tools.ietf.org/html/rfc5280\">RFC 5280</a>. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
         <p></p>")
    @as("PublicKey")
    publicKey: option<publicKeyType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the asymmetric CMK from which the public key was downloaded.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GetPublicKeyCommand"
  let make = (~keyId, ~grantTokens=?, ()) => new({grantTokens: grantTokens, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyWithoutPlaintext = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>The length of the data key in bytes. For example, use the value 64 to generate a 512-bit
      data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys),
      we recommend that you use the <code>KeySpec</code> field instead of this one.</p>")
    @as("NumberOfBytes")
    numberOfBytes: option<numberOfBytesType>,
    @ocaml.doc("<p>The length of the data key. Use <code>AES_128</code> to generate a 128-bit symmetric key,
      or <code>AES_256</code> to generate a 256-bit symmetric key.</p>")
    @as("KeySpec")
    keySpec: option<dataKeySpec>,
    @ocaml.doc("<p>Specifies the encryption context that will be used when encrypting the data key.</p>
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>The identifier of the symmetric customer master key (CMK) that encrypts the data
      key.</p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that encrypted the data key.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc(
      "<p>The encrypted data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("CiphertextBlob")
    ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new
  external new: request => t = "GenerateDataKeyWithoutPlaintextCommand"
  let make = (~keyId, ~grantTokens=?, ~numberOfBytes=?, ~keySpec=?, ~encryptionContext=?, ()) =>
    new({
      grantTokens: grantTokens,
      numberOfBytes: numberOfBytes,
      keySpec: keySpec,
      encryptionContext: encryptionContext,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyPairWithoutPlaintext = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Determines the type of data key pair that is generated.</p>
         <p>The AWS KMS rule that restricts the use of asymmetric RSA CMKs to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC CMKs only to sign and verify, are not effective outside of AWS KMS.</p>")
    @as("KeyPairSpec")
    keyPairSpec: dataKeyPairSpec,
    @ocaml.doc("<p>Specifies the CMK that encrypts the private key in the data key pair. You must specify a
      symmetric CMK. You cannot use an asymmetric CMK or a CMK in a custom key store. To get the
      type and origin of your CMK, use the <a>DescribeKey</a> operation. </p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
    @ocaml.doc("<p>Specifies the encryption context that will be used when encrypting the private key in the
      data key pair.</p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
  }
  type response = {
    @ocaml.doc("<p>The type of data key pair that was generated.</p>") @as("KeyPairSpec")
    keyPairSpec: option<dataKeyPairSpec>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that encrypted the private key.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>The public key (in plaintext).</p>") @as("PublicKey")
    publicKey: option<publicKeyType>,
    @ocaml.doc(
      "<p>The encrypted copy of the private key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("PrivateKeyCiphertextBlob")
    privateKeyCiphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new
  external new: request => t = "GenerateDataKeyPairWithoutPlaintextCommand"
  let make = (~keyPairSpec, ~keyId, ~grantTokens=?, ~encryptionContext=?, ()) =>
    new({
      grantTokens: grantTokens,
      keyPairSpec: keyPairSpec,
      keyId: keyId,
      encryptionContext: encryptionContext,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Determines the type of data key pair that is generated. </p>
         <p>The AWS KMS rule that restricts the use of asymmetric RSA CMKs to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC CMKs only to sign and verify, are not effective outside of AWS KMS.</p>")
    @as("KeyPairSpec")
    keyPairSpec: dataKeyPairSpec,
    @ocaml.doc("<p>Specifies the symmetric CMK that encrypts the private key in the data key pair. You cannot
      specify an asymmetric CMK or a CMK in a custom key store. To get the type and origin of your
      CMK, use the <a>DescribeKey</a> operation.</p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
    @ocaml.doc("<p>Specifies the encryption context that will be used when encrypting the private key in the
      data key pair.</p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
  }
  type response = {
    @ocaml.doc("<p>The type of data key pair that was generated.</p>") @as("KeyPairSpec")
    keyPairSpec: option<dataKeyPairSpec>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that encrypted the private key.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>The public key (in plaintext).</p>") @as("PublicKey")
    publicKey: option<publicKeyType>,
    @ocaml.doc(
      "<p>The plaintext copy of the private key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("PrivateKeyPlaintext")
    privateKeyPlaintext: option<plaintextType>,
    @ocaml.doc(
      "<p>The encrypted copy of the private key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("PrivateKeyCiphertextBlob")
    privateKeyCiphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GenerateDataKeyPairCommand"
  let make = (~keyPairSpec, ~keyId, ~grantTokens=?, ~encryptionContext=?, ()) =>
    new({
      grantTokens: grantTokens,
      keyPairSpec: keyPairSpec,
      keyId: keyId,
      encryptionContext: encryptionContext,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GenerateDataKey = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Specifies the length of the data key. Use <code>AES_128</code> to generate a 128-bit
      symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
         <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
      parameter (but not both) in every <code>GenerateDataKey</code> request.</p>")
    @as("KeySpec")
    keySpec: option<dataKeySpec>,
    @ocaml.doc("<p>Specifies the length of the data key in bytes. For example, use the value 64 to generate a
      512-bit data key (64 bytes is 512 bits). For 128-bit (16-byte) and 256-bit (32-byte) data
      keys, use the <code>KeySpec</code> parameter.</p>
         <p>You must specify either the <code>KeySpec</code> or the <code>NumberOfBytes</code>
      parameter (but not both) in every <code>GenerateDataKey</code> request.</p>")
    @as("NumberOfBytes")
    numberOfBytes: option<numberOfBytesType>,
    @ocaml.doc("<p>Specifies the encryption context that will be used when encrypting the data key.</p>
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>Identifies the symmetric CMK that encrypts the data key.</p>
    
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that encrypted the data key.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>The plaintext data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded. Use this data key to encrypt your data outside of
      KMS. Then, remove it from memory as soon as possible.</p>")
    @as("Plaintext")
    plaintext: option<plaintextType>,
    @ocaml.doc(
      "<p>The encrypted copy of the data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("CiphertextBlob")
    ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "GenerateDataKeyCommand"
  let make = (~keyId, ~grantTokens=?, ~keySpec=?, ~numberOfBytes=?, ~encryptionContext=?, ()) =>
    new({
      grantTokens: grantTokens,
      keySpec: keySpec,
      numberOfBytes: numberOfBytes,
      encryptionContext: encryptionContext,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Encrypt = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the encryption algorithm that AWS KMS will use to encrypt the plaintext message.
      The algorithm must be compatible with the CMK that you specify.</p>
         <p>This parameter is required only for asymmetric CMKs. The default value,
        <code>SYMMETRIC_DEFAULT</code>, is the algorithm used for symmetric CMKs. If you are using
      an asymmetric CMK, we recommend RSAES_OAEP_SHA_256.</p>")
    @as("EncryptionAlgorithm")
    encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Specifies the encryption context that will be used to encrypt the data.
      An encryption context is valid only for <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> with a symmetric CMK. The standard asymmetric encryption algorithms that AWS KMS uses do not support an encryption context. </p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>Data to be encrypted.</p>") @as("Plaintext") plaintext: plaintextType,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The encryption algorithm that was used to encrypt the plaintext.</p>")
    @as("EncryptionAlgorithm")
    encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that was used to encrypt the plaintext.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc(
      "<p>The encrypted plaintext. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("CiphertextBlob")
    ciphertextBlob: option<ciphertextType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "EncryptCommand"
  let make = (
    ~plaintext,
    ~keyId,
    ~encryptionAlgorithm=?,
    ~grantTokens=?,
    ~encryptionContext=?,
    (),
  ) =>
    new({
      encryptionAlgorithm: encryptionAlgorithm,
      grantTokens: grantTokens,
      encryptionContext: encryptionContext,
      plaintext: plaintext,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Decrypt = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the encryption algorithm that will be used to decrypt the ciphertext. Specify
      the same algorithm that was used to encrypt the data. If you specify a different algorithm,
      the <code>Decrypt</code> operation fails.</p>
         <p>This parameter is required only when the ciphertext was encrypted under an asymmetric CMK.
      The default value, <code>SYMMETRIC_DEFAULT</code>, represents the only supported algorithm
      that is valid for symmetric CMKs.</p>")
    @as("EncryptionAlgorithm")
    encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc("<p>Specifies the customer master key (CMK) that AWS KMS uses to decrypt the ciphertext. Enter a
      key ID of the CMK that was used to encrypt the ciphertext.</p>
         <p>This parameter is required only when the ciphertext was encrypted under an asymmetric CMK.
      If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the
      symmetric ciphertext blob. However, it is always recommended as a best practice. This practice
      ensures that you use the CMK that you intend.</p>
     
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: option<keyIdType>,
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Specifies the encryption context to use when decrypting the data.
      An encryption context is valid only for <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> with a symmetric CMK. The standard asymmetric encryption algorithms that AWS KMS uses do not support an encryption context.</p> 
         <p>An <i>encryption context</i> is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended.</p>
         <p>For more information, see
        <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("EncryptionContext")
    encryptionContext: option<encryptionContextType>,
    @ocaml.doc("<p>Ciphertext to be decrypted. The blob includes metadata.</p>")
    @as("CiphertextBlob")
    ciphertextBlob: ciphertextType,
  }
  type response = {
    @ocaml.doc("<p>The encryption algorithm that was used to decrypt the ciphertext.</p>")
    @as("EncryptionAlgorithm")
    encryptionAlgorithm: option<encryptionAlgorithmSpec>,
    @ocaml.doc(
      "<p>Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>"
    )
    @as("Plaintext")
    plaintext: option<plaintextType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN\">key ARN</a>) of the CMK that was used to decrypt the ciphertext.</p>"
    )
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "DecryptCommand"
  let make = (
    ~ciphertextBlob,
    ~encryptionAlgorithm=?,
    ~keyId=?,
    ~grantTokens=?,
    ~encryptionContext=?,
    (),
  ) =>
    new({
      encryptionAlgorithm: encryptionAlgorithm,
      keyId: keyId,
      grantTokens: grantTokens,
      encryptionContext: encryptionContext,
      ciphertextBlob: ciphertextBlob,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags. </p>
         <p>Each tag consists of a tag key and a tag value. The tag value can be an empty (null)
      string. </p>
         <p>You cannot have more than one tag on a CMK with the same tag key. If you specify an
      existing tag key with a different tag value, AWS KMS replaces the current tag value with the
      specified one.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>Identifies a customer managed CMK in the account and Region.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }

  @module("@aws-sdk/client-kms") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~keyId, ()) => new({tags: tags, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResourceTags = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>
         <p>Do not attempt to construct this value. Use only the value of <code>NextMarker</code> from
      the truncated response you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between 1 and 50, inclusive. If
      you do not include a value, it defaults to 50.</p>")
    @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>A unique identifier for the customer master key (CMK).</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>
         <p>Do not assume or infer any information from this value.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of tags. Each tag consists of a tag key and a tag value.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListResourceTagsCommand"
  let make = (~keyId, ~marker=?, ~limit=?, ()) => new({marker: marker, limit: limit, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeys = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between
    1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>")
    @as("Limit")
    limit: option<limitType>,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of customer master keys (CMKs).</p>") @as("Keys") keys: option<keyList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListKeysCommand"
  let make = (~marker=?, ~limit=?, ()) => new({marker: marker, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between 1
    and 100, inclusive. If you do not include a value, it defaults to 50.</p>")
    @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>Lists only aliases that are associated with the specified CMK. Enter a CMK in your AWS
      account. </p>
         <p>This parameter is optional. If you omit it, <code>ListAliases</code> returns all aliases
      in the account and Region.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: option<keyIdType>,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of aliases.</p>") @as("Aliases") aliases: option<aliasList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListAliasesCommand"
  let make = (~marker=?, ~limit=?, ~keyId=?, ()) =>
    new({marker: marker, limit: limit, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKey = {
  type t
  type request = {
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Describes the specified customer master key (CMK). </p>
         <p>If you specify a predefined AWS alias (an AWS alias with no key ID), KMS associates the
      alias with an <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys\">AWS
        managed CMK</a> and returns its <code>KeyId</code> and <code>Arn</code> in the
      response.</p> 
         <p>To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with <code>\"alias/\"</code>. To specify a CMK in a different AWS account, you must use the key ARN or alias ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>. To get the alias name and alias ARN, use <a>ListAliases</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>Metadata associated with the key.</p>") @as("KeyMetadata")
    keyMetadata: option<keyMetadata>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "DescribeKeyCommand"
  let make = (~keyId, ~grantTokens=?, ()) => new({grantTokens: grantTokens, keyId: keyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomKeyStores = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>")
    @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>Gets only information about the specified custom key store. Enter the friendly name of the
      custom key store.</p>
         <p>By default, this operation gets information about all custom key stores in the account and
      region. To limit the output to a particular custom key store, you can use either the
        <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
      both.</p>")
    @as("CustomKeyStoreName")
    customKeyStoreName: option<customKeyStoreNameType>,
    @ocaml.doc("<p>Gets only information about the specified custom key store. Enter the key store ID.</p>
         <p>By default, this operation gets information about all custom key stores in the account and
      region. To limit the output to a particular custom key store, you can use either the
        <code>CustomKeyStoreId</code> or <code>CustomKeyStoreName</code> parameter, but not
      both.</p>")
    @as("CustomKeyStoreId")
    customKeyStoreId: option<customKeyStoreIdType>,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>Contains metadata about each custom key store.</p>") @as("CustomKeyStores")
    customKeyStores: option<customKeyStoresList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "DescribeCustomKeyStoresCommand"
  let make = (~marker=?, ~limit=?, ~customKeyStoreName=?, ~customKeyStoreId=?, ()) =>
    new({
      marker: marker,
      limit: limit,
      customKeyStoreName: customKeyStoreName,
      customKeyStoreId: customKeyStoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKey = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags. Each tag consists of a tag key and a tag value. Both the tag key and the
      tag value are required, but the tag value can be an empty (null) string. </p>
         <p>When you add tags to an AWS resource, AWS generates a cost allocation
              report with usage and costs aggregated by tags. For information about adding, changing, deleting and listing tags for CMKs,
              see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html\">Tagging Keys</a>.</p> 
         <p>Use this parameter to tag the CMK when it is created. To add tags to an
      existing CMK, use the <a>TagResource</a> operation.</p>
         <p>To use this parameter, you must have <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html\">kms:TagResource</a> permission in an IAM policy.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A flag to indicate whether to bypass the key policy lockout safety check.</p>
         <important>
            <p>Setting this value to true increases the risk that the CMK becomes unmanageable. Do not
        set this value to true indiscriminately.</p>
            <p>For more information, refer to the scenario in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam\">Default Key Policy</a> section in the <i>
                  <i>AWS Key Management Service Developer Guide</i>
               </i>.</p>
         </important>
         <p>Use this parameter only when you include a policy in the request and you intend to prevent
      the principal that is making the request from making a subsequent <a>PutKeyPolicy</a> request on the CMK.</p>
         <p>The default value is false.</p>")
    @as("BypassPolicyLockoutSafetyCheck")
    bypassPolicyLockoutSafetyCheck: option<booleanType>,
    @ocaml.doc("<p>Creates the CMK in the specified <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a> and the key material in its associated
      AWS CloudHSM cluster. To create a CMK in a custom key store, you must also specify the
        <code>Origin</code> parameter with a value of <code>AWS_CLOUDHSM</code>. The AWS CloudHSM cluster
      that is associated with the custom key store must have at least two active HSMs, each in a
      different Availability Zone in the Region.</p>
         <p>This parameter is valid only for symmetric CMKs. You cannot create an asymmetric CMK in a
      custom key store.</p>
         <p>To find the ID of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p>
         <p>The response includes the custom key store ID and the ID of the AWS CloudHSM cluster.</p>
         <p>This operation is part of the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">Custom Key Store feature</a> feature in AWS KMS, which
combines the convenience and extensive integration of AWS KMS with the isolation and control of a
single-tenant key store.</p>")
    @as("CustomKeyStoreId")
    customKeyStoreId: option<customKeyStoreIdType>,
    @ocaml.doc("<p>The source of the key material for the CMK. You cannot change the origin after you create
      the CMK. The default is <code>AWS_KMS</code>, which means AWS KMS creates the key
      material.</p>
         <p>When the parameter value is <code>EXTERNAL</code>, AWS KMS creates a CMK without key
      material so that you can import key material from your existing key management infrastructure.
      For more information about importing key material into AWS KMS, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html\">Importing Key Material</a> in the
      <i>AWS Key Management Service Developer Guide</i>. This value is valid only for symmetric CMKs.</p>
         <p>When the parameter value is <code>AWS_CLOUDHSM</code>, AWS KMS creates the CMK in an AWS KMS
      <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html\">custom key store</a> and creates its key material in the associated AWS CloudHSM cluster. You must also
      use the <code>CustomKeyStoreId</code> parameter to identify the custom key store. This value
      is valid only for symmetric CMKs.</p>")
    @as("Origin")
    origin: option<originType>,
    @ocaml.doc("<p>Specifies the type of CMK to create. The default value, <code>SYMMETRIC_DEFAULT</code>,
      creates a CMK with a 256-bit symmetric key for encryption and decryption. For help choosing a
      key spec for your CMK, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html\">How to Choose Your CMK
        Configuration</a> in the <i>AWS Key Management Service Developer
          Guide</i>.</p>
         <p>The <code>CustomerMasterKeySpec</code> determines whether the CMK contains a symmetric key
      or an asymmetric key pair. It also determines the encryption algorithms or signing algorithms
      that the CMK supports. You can't change the <code>CustomerMasterKeySpec</code> after the CMK
      is created. To further restrict the algorithms that can be used with the CMK, use a condition
      key in its key policy or IAM policy. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm\">kms:EncryptionAlgorithm</a> or <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm\">kms:Signing Algorithm</a> in the <i>AWS Key Management Service Developer
        Guide</i>.</p>
         <important>
            <p>
               <a href=\"http://aws.amazon.com/kms/features/#AWS_Service_Integration\">AWS services that
        are integrated with AWS KMS</a> use symmetric CMKs to protect your data. These
        services do not support asymmetric CMKs. For help determining whether a CMK is symmetric or
        asymmetric, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html\">Identifying Symmetric and Asymmetric
          CMKs</a> in the <i>AWS Key Management Service Developer
            Guide</i>.</p>
         </important>
         <p>AWS KMS supports the following key specs for CMKs:</p>
         <ul>
            <li>
               <p>Symmetric key (default)</p>
               <ul>
                  <li>
                     <p>
                        <code>SYMMETRIC_DEFAULT</code> (AES-256-GCM)</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Asymmetric RSA key pairs</p>
               <ul>
                  <li>
                     <p>
                        <code>RSA_2048</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>RSA_3072</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>RSA_4096</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Asymmetric NIST-recommended elliptic curve key pairs</p>
               <ul>
                  <li>
                     <p>
                        <code>ECC_NIST_P256</code> (secp256r1)</p>
                  </li>
                  <li>
                     <p>
                        <code>ECC_NIST_P384</code> (secp384r1)</p>
                  </li>
                  <li>
                     <p>
                        <code>ECC_NIST_P521</code> (secp521r1)</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>Other asymmetric elliptic curve key pairs</p>
               <ul>
                  <li>
                     <p>
                        <code>ECC_SECG_P256K1</code> (secp256k1), commonly used for
              cryptocurrencies.</p>
                  </li>
               </ul>
            </li>
         </ul>")
    @as("CustomerMasterKeySpec")
    customerMasterKeySpec: option<customerMasterKeySpec>,
    @ocaml.doc("<p>Determines the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> for which you can use the CMK. The default value
      is <code>ENCRYPT_DECRYPT</code>. This parameter is required only for asymmetric CMKs. You
      can't change the <code>KeyUsage</code> value after the CMK is created.</p>
         <p>Select only one valid value.</p>
         <ul>
            <li>
               <p>For symmetric CMKs, omit the parameter or specify <code>ENCRYPT_DECRYPT</code>.</p>
            </li>
            <li>
               <p>For asymmetric CMKs with RSA key material, specify <code>ENCRYPT_DECRYPT</code> or
            <code>SIGN_VERIFY</code>.</p>
            </li>
            <li>
               <p>For asymmetric CMKs with ECC key material, specify <code>SIGN_VERIFY</code>.</p>
            </li>
         </ul>")
    @as("KeyUsage")
    keyUsage: option<keyUsageType>,
    @ocaml.doc("<p>A description of the CMK.</p>
         <p>Use a description that helps you decide whether the CMK is appropriate for a task.</p>")
    @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>The key policy to attach to the CMK.</p>
         <p>If you provide a key policy, it must meet the following criteria:</p>
         <ul>
            <li>
               <p>If you don't set <code>BypassPolicyLockoutSafetyCheck</code> to true, the key policy
          must allow the principal that is making the <code>CreateKey</code> request to make a
          subsequent <a>PutKeyPolicy</a> request on the CMK. This reduces the risk that
          the CMK becomes unmanageable. For more information, refer to the scenario in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam\">Default Key Policy</a> section of the <i>
                     <i>AWS Key Management Service Developer Guide</i>
                  </i>.</p>
            </li>
            <li>
               <p>Each statement in the key policy must contain one or more principals. The principals
          in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal
          (for example, an IAM user or role), you might need to enforce a delay before including the
          new principal in a key policy because the new principal might not be immediately visible
          to AWS KMS. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency\">Changes that I make are not always immediately visible</a> in the <i>AWS
            Identity and Access Management User Guide</i>.</p>
            </li>
         </ul>
         <p>If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK. For
      more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default\">Default Key Policy</a> in the
      <i>AWS Key Management Service Developer Guide</i>. </p>
         <p>The key policy size quota is 32 kilobytes (32768 bytes).</p>
         <p>For help writing and formatting a JSON policy document, see the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html\">IAM JSON Policy Reference</a> in the <i>
               <i>IAM User Guide</i>
            </i>.</p>")
    @as("Policy")
    policy: option<policyType>,
  }
  type response = {
    @ocaml.doc("<p>Metadata associated with the CMK.</p>") @as("KeyMetadata")
    keyMetadata: option<keyMetadata>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "CreateKeyCommand"
  let make = (
    ~tags=?,
    ~bypassPolicyLockoutSafetyCheck=?,
    ~customKeyStoreId=?,
    ~origin=?,
    ~customerMasterKeySpec=?,
    ~keyUsage=?,
    ~description=?,
    ~policy=?,
    (),
  ) =>
    new({
      tags: tags,
      bypassPolicyLockoutSafetyCheck: bypassPolicyLockoutSafetyCheck,
      customKeyStoreId: customKeyStoreId,
      origin: origin,
      customerMasterKeySpec: customerMasterKeySpec,
      keyUsage: keyUsage,
      description: description,
      policy: policy,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGrant = {
  type t
  type request = {
    @ocaml.doc("<p>A friendly name for the grant. Use this value to prevent the unintended
      creation of duplicate grants when retrying this request.</p>
         <p>When this value is absent, all <code>CreateGrant</code> requests result in a new grant
      with a unique <code>GrantId</code> even if all the supplied parameters are identical. This can
      result in unintended duplicates when you retry the <code>CreateGrant</code> request.</p>
         <p>When this value is present, you can retry a <code>CreateGrant</code> request with
      identical parameters; if the grant already exists, the original <code>GrantId</code> is
      returned without creating a new grant. Note that the returned grant token is unique with every
        <code>CreateGrant</code> request, even when a duplicate <code>GrantId</code> is returned.
      All grant tokens for the same grant ID can be used interchangeably.</p>")
    @as("Name")
    name: option<grantNameType>,
    @ocaml.doc("<p>A list of grant tokens.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantTokens")
    grantTokens: option<grantTokenList>,
    @ocaml.doc("<p>Allows a <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operation</a> only when the encryption context matches or includes the encryption
      context specified in this structure. For more information about encryption context, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption
        Context</a> in the <i>
               <i>AWS Key Management Service Developer Guide</i>
            </i>.</p>
         <p>Grant constraints are not applied to operations that do not support an encryption context,
      such as cryptographic operations with asymmetric CMKs and management operations, such as
      <a>DescribeKey</a> or <a>RetireGrant</a>.</p>")
    @as("Constraints")
    constraints: option<grantConstraints>,
    @ocaml.doc("<p>A list of operations that the grant permits.</p>") @as("Operations")
    operations: grantOperationList,
    @ocaml.doc("<p>The principal that is given permission to retire the grant by using <a>RetireGrant</a> operation.</p>
         <p>To specify the principal, use the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of an AWS
      principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and
      assumed role users. For examples of the ARN syntax to use for specifying a principal, see
        <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam\">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the
        <i>AWS General Reference</i>.</p>")
    @as("RetiringPrincipal")
    retiringPrincipal: option<principalIdType>,
    @ocaml.doc("<p>The principal that is given permission to perform the operations that the grant
      permits.</p>
         <p>To specify the principal, use the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of an AWS
      principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated
      users, and assumed role users. For examples of the ARN syntax to use for specifying a
      principal, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam\">AWS Identity and Access
        Management (IAM)</a> in the Example ARNs section of the <i>AWS General
        Reference</i>.</p>")
    @as("GranteePrincipal")
    granteePrincipal: principalIdType,
    @ocaml.doc("<p>The unique identifier for the customer master key (CMK) that the grant applies to.</p>
    
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a
different AWS account, you must use the key ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier for the grant.</p>
         <p>You can use the <code>GrantId</code> in a <a>ListGrants</a>, <a>RetireGrant</a>, or <a>RevokeGrant</a> operation.</p>")
    @as("GrantId")
    grantId: option<grantIdType>,
    @ocaml.doc("<p>The grant token.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token\">Grant Tokens</a> in the
    <i>AWS Key Management Service Developer Guide</i>.</p>")
    @as("GrantToken")
    grantToken: option<grantTokenType>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "CreateGrantCommand"
  let make = (
    ~operations,
    ~granteePrincipal,
    ~keyId,
    ~name=?,
    ~grantTokens=?,
    ~constraints=?,
    ~retiringPrincipal=?,
    (),
  ) =>
    new({
      name: name,
      grantTokens: grantTokens,
      constraints: constraints,
      operations: operations,
      retiringPrincipal: retiringPrincipal,
      granteePrincipal: granteePrincipal,
      keyId: keyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRetirableGrants = {
  type t
  type request = {
    @ocaml.doc("<p>The retiring principal for which to list grants. Enter a principal in your AWS
      account.</p>
         <p>To specify the retiring principal, use the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Name (ARN)</a> of an AWS
      principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and
      assumed role users. For examples of the ARN syntax for specifying a principal, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam\">AWS
        Identity and Access Management (IAM)</a> in the Example ARNs section of the
        <i>Amazon Web Services General Reference</i>.</p>")
    @as("RetiringPrincipal")
    retiringPrincipal: principalIdType,
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between 1
    and 100, inclusive. If you do not include a value, it defaults to 50.</p>")
    @as("Limit")
    limit: option<limitType>,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of grants.</p>") @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListRetirableGrantsCommand"
  let make = (~retiringPrincipal, ~marker=?, ~limit=?, ()) =>
    new({retiringPrincipal: retiringPrincipal, marker: marker, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGrants = {
  type t
  type request = {
    @ocaml.doc("<p>Returns only grants where the specified principal is the grantee principal for the
      grant.</p>")
    @as("GranteePrincipal")
    granteePrincipal: option<principalIdType>,
    @ocaml.doc("<p>Returns only the grant with the specified grant ID. The grant ID uniquely identifies the
      grant. </p>")
    @as("GrantId")
    grantId: option<grantIdType>,
    @ocaml.doc("<p>Returns only grants for the specified customer master key (CMK). This parameter is
      required.</p> 
         <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a
different AWS account, you must use the key ARN.</p>
         <p>For example:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
         </ul>
         <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>")
    @as("KeyId")
    keyId: keyIdType,
    @ocaml.doc("<p>Use this parameter in a subsequent request after you receive a response with
    truncated results. Set it to the value of <code>NextMarker</code> from the truncated response
    you just received.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>Use this parameter to specify the maximum number of items to return. When this
    value is present, AWS KMS does not return more than the specified number of items, but it might
    return fewer.</p>
         <p>This value is optional. If you include a value, it must be between 1
    and 100, inclusive. If you do not include a value, it defaults to 50.</p>")
    @as("Limit")
    limit: option<limitType>,
  }
  type response = {
    @ocaml.doc("<p>A flag that indicates whether there are more items in the list. When this
    value is true, the list in this response is truncated. To get more items, pass the value of
    the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    subsequent request.</p>")
    @as("Truncated")
    truncated: option<booleanType>,
    @ocaml.doc("<p>When <code>Truncated</code> is true, this element is present and contains the
    value to use for the <code>Marker</code> parameter in a subsequent request.</p>")
    @as("NextMarker")
    nextMarker: option<markerType>,
    @ocaml.doc("<p>A list of grants.</p>") @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-kms") @new external new: request => t = "ListGrantsCommand"
  let make = (~keyId, ~granteePrincipal=?, ~grantId=?, ~marker=?, ~limit=?, ()) =>
    new({
      granteePrincipal: granteePrincipal,
      grantId: grantId,
      keyId: keyId,
      marker: marker,
      limit: limit,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
