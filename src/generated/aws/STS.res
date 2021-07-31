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
type timestamp_ = Js.Date.t;
type long = float
type webIdentitySubjectType = string
type userNameType = string
type userIdType = string
type urlType = string
type tokenType = string
type tokenCodeType = string
type tagValueType = string
type tagKeyType = string
type sourceIdentityType = string
type sessionPolicyDocumentType = string
type serialNumberType = string
type roleSessionNameType = string
type roleDurationSecondsType = int
type regionDisabledMessage = string
type packedPolicyTooLargeMessage = string
type nonNegativeIntegerType = int
type malformedPolicyDocumentMessage = string
type invalidIdentityTokenMessage = string
type invalidAuthorizationMessage = string
type idpRejectedClaimMessage = string
type idpCommunicationErrorMessage = string
type federatedIdType = string
type externalIdType = string
type expiredIdentityTokenMessage = string
type encodedMessageType = string
type durationSecondsType = int
type decodedMessageType = string
type dateType = Js.Date.t;
type clientTokenType = string
type assumedRoleIdType = string
type arnType = string
type accountType = string
type accessKeySecretType = string
type accessKeyIdType = string
type subjectType = string
type subject = string
type samlassertionType = string
type nameQualifier = string
type issuer = string
type audience = string
type tagKeyListType = array<tagKeyType>
type tag = {
@as("Value") value: tagValueType,
@as("Key") key: tagKeyType
}
type policyDescriptorType = {
arn: option<arnType>
}
type federatedUser = {
@as("Arn") arn: arnType,
@as("FederatedUserId") federatedUserId: federatedIdType
}
type credentials = {
@as("Expiration") expiration: dateType,
@as("SessionToken") sessionToken: tokenType,
@as("SecretAccessKey") secretAccessKey: accessKeySecretType,
@as("AccessKeyId") accessKeyId: accessKeyIdType
}
type assumedRoleUser = {
@as("Arn") arn: arnType,
@as("AssumedRoleId") assumedRoleId: assumedRoleIdType
}
type tagListType = array<tag>
type policyDescriptorListType = array<policyDescriptorType>
type awsServiceClient;
@module("@aws-sdk/client-sts") @new external createClient: unit => awsServiceClient = "STSClient";
module GetCallerIdentity = {
  type t;
  type request = unit
  type response = {
@as("Arn") arn: option<arnType>,
@as("Account") account: option<accountType>,
@as("UserId") userId: option<userIdType>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetCallerIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccessKeyInfo = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: accessKeyIdType
}
  type response = {
@as("Account") account: option<accountType>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetAccessKeyInfoCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DecodeAuthorizationMessage = {
  type t;
  type request = {
@as("EncodedMessage") encodedMessage: encodedMessageType
}
  type response = {
@as("DecodedMessage") decodedMessage: option<decodedMessageType>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "DecodeAuthorizationMessageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSessionToken = {
  type t;
  type request = {
@as("TokenCode") tokenCode: option<tokenCodeType>,
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("DurationSeconds") durationSeconds: option<durationSecondsType>
}
  type response = {
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetSessionTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFederationToken = {
  type t;
  type request = {
@as("Tags") tags: option<tagListType>,
@as("DurationSeconds") durationSeconds: option<durationSecondsType>,
@as("PolicyArns") policyArns: option<policyDescriptorListType>,
@as("Policy") policy: option<sessionPolicyDocumentType>,
@as("Name") name: userNameType
}
  type response = {
@as("PackedPolicySize") packedPolicySize: option<nonNegativeIntegerType>,
@as("FederatedUser") federatedUser: option<federatedUser>,
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetFederationTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssumeRoleWithWebIdentity = {
  type t;
  type request = {
@as("DurationSeconds") durationSeconds: option<roleDurationSecondsType>,
@as("Policy") policy: option<sessionPolicyDocumentType>,
@as("PolicyArns") policyArns: option<policyDescriptorListType>,
@as("ProviderId") providerId: option<urlType>,
@as("WebIdentityToken") webIdentityToken: clientTokenType,
@as("RoleSessionName") roleSessionName: roleSessionNameType,
@as("RoleArn") roleArn: arnType
}
  type response = {
@as("SourceIdentity") sourceIdentity: option<sourceIdentityType>,
@as("Audience") audience: option<audience>,
@as("Provider") provider: option<issuer>,
@as("PackedPolicySize") packedPolicySize: option<nonNegativeIntegerType>,
@as("AssumedRoleUser") assumedRoleUser: option<assumedRoleUser>,
@as("SubjectFromWebIdentityToken") subjectFromWebIdentityToken: option<webIdentitySubjectType>,
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleWithWebIdentityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssumeRoleWithSAML = {
  type t;
  type request = {
@as("DurationSeconds") durationSeconds: option<roleDurationSecondsType>,
@as("Policy") policy: option<sessionPolicyDocumentType>,
@as("PolicyArns") policyArns: option<policyDescriptorListType>,
@as("SAMLAssertion") samlassertion: samlassertionType,
@as("PrincipalArn") principalArn: arnType,
@as("RoleArn") roleArn: arnType
}
  type response = {
@as("SourceIdentity") sourceIdentity: option<sourceIdentityType>,
@as("NameQualifier") nameQualifier: option<nameQualifier>,
@as("Audience") audience: option<audience>,
@as("Issuer") issuer: option<issuer>,
@as("SubjectType") subjectType: option<subjectType>,
@as("Subject") subject: option<subject>,
@as("PackedPolicySize") packedPolicySize: option<nonNegativeIntegerType>,
@as("AssumedRoleUser") assumedRoleUser: option<assumedRoleUser>,
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleWithSAMLCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssumeRole = {
  type t;
  type request = {
@as("SourceIdentity") sourceIdentity: option<sourceIdentityType>,
@as("TokenCode") tokenCode: option<tokenCodeType>,
@as("SerialNumber") serialNumber: option<serialNumberType>,
@as("ExternalId") externalId: option<externalIdType>,
@as("TransitiveTagKeys") transitiveTagKeys: option<tagKeyListType>,
@as("Tags") tags: option<tagListType>,
@as("DurationSeconds") durationSeconds: option<roleDurationSecondsType>,
@as("Policy") policy: option<sessionPolicyDocumentType>,
@as("PolicyArns") policyArns: option<policyDescriptorListType>,
@as("RoleSessionName") roleSessionName: roleSessionNameType,
@as("RoleArn") roleArn: arnType
}
  type response = {
@as("SourceIdentity") sourceIdentity: option<sourceIdentityType>,
@as("PackedPolicySize") packedPolicySize: option<nonNegativeIntegerType>,
@as("AssumedRoleUser") assumedRoleUser: option<assumedRoleUser>,
@as("Credentials") credentials: option<credentials>
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
