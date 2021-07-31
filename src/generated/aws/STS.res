type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type roleDurationSecondsType = int;
type regionDisabledMessage = string
type packedPolicyTooLargeMessage = string
type nonNegativeIntegerType = int;
type malformedPolicyDocumentMessage = string
type invalidIdentityTokenMessage = string
type invalidAuthorizationMessage = string
type idpRejectedClaimMessage = string
type idpCommunicationErrorMessage = string
type federatedIdType = string
type externalIdType = string
type expiredIdentityTokenMessage = string
type encodedMessageType = string
type durationSecondsType = int;
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
type sAMLAssertionType = string
type nameQualifier = string
type issuer = string
type audience = string
type tagKeyListType = array<tagKeyType>
type tag = {
@as("Value") value: option<tagValueType>,
@as("Key") key: option<tagKeyType>
}
type policyDescriptorType = {
@as("arn") arn: arnType
}
type federatedUser = {
@as("Arn") arn: option<arnType>,
@as("FederatedUserId") federatedUserId: option<federatedIdType>
}
type credentials = {
@as("Expiration") expiration: option<dateType>,
@as("SessionToken") sessionToken: option<tokenType>,
@as("SecretAccessKey") secretAccessKey: option<accessKeySecretType>,
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>
}
type assumedRoleUser = {
@as("Arn") arn: option<arnType>,
@as("AssumedRoleId") assumedRoleId: option<assumedRoleIdType>
}
type tagListType = array<tag>
type policyDescriptorListType = array<policyDescriptorType>
type clientType;
@module("@aws-sdk/client-sts") @new external createClient: unit => clientType = "STSClient";
module GetCallerIdentity = {
  type t;
  type request = unit
  type response = {
@as("Arn") arn: arnType,
@as("Account") account: accountType,
@as("UserId") userId: userIdType
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetCallerIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessKeyInfo = {
  type t;
  type request = {
@as("AccessKeyId") accessKeyId: option<accessKeyIdType>
}
  type response = {
@as("Account") account: accountType
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetAccessKeyInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DecodeAuthorizationMessage = {
  type t;
  type request = {
@as("EncodedMessage") encodedMessage: option<encodedMessageType>
}
  type response = {
@as("DecodedMessage") decodedMessage: decodedMessageType
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "DecodeAuthorizationMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSessionToken = {
  type t;
  type request = {
@as("TokenCode") tokenCode: tokenCodeType,
@as("SerialNumber") serialNumber: serialNumberType,
@as("DurationSeconds") durationSeconds: durationSecondsType
}
  type response = {
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetSessionTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFederationToken = {
  type t;
  type request = {
@as("Tags") tags: tagListType,
@as("DurationSeconds") durationSeconds: durationSecondsType,
@as("PolicyArns") policyArns: policyDescriptorListType,
@as("Policy") policy: sessionPolicyDocumentType,
@as("Name") name: option<userNameType>
}
  type response = {
@as("PackedPolicySize") packedPolicySize: nonNegativeIntegerType,
@as("FederatedUser") federatedUser: federatedUser,
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "GetFederationTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssumeRoleWithWebIdentity = {
  type t;
  type request = {
@as("DurationSeconds") durationSeconds: roleDurationSecondsType,
@as("Policy") policy: sessionPolicyDocumentType,
@as("PolicyArns") policyArns: policyDescriptorListType,
@as("ProviderId") providerId: urlType,
@as("WebIdentityToken") webIdentityToken: option<clientTokenType>,
@as("RoleSessionName") roleSessionName: option<roleSessionNameType>,
@as("RoleArn") roleArn: option<arnType>
}
  type response = {
@as("SourceIdentity") sourceIdentity: sourceIdentityType,
@as("Audience") audience: audience,
@as("Provider") provider: issuer,
@as("PackedPolicySize") packedPolicySize: nonNegativeIntegerType,
@as("AssumedRoleUser") assumedRoleUser: assumedRoleUser,
@as("SubjectFromWebIdentityToken") subjectFromWebIdentityToken: webIdentitySubjectType,
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleWithWebIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssumeRoleWithSAML = {
  type t;
  type request = {
@as("DurationSeconds") durationSeconds: roleDurationSecondsType,
@as("Policy") policy: sessionPolicyDocumentType,
@as("PolicyArns") policyArns: policyDescriptorListType,
@as("SAMLAssertion") sAMLAssertion: option<sAMLAssertionType>,
@as("PrincipalArn") principalArn: option<arnType>,
@as("RoleArn") roleArn: option<arnType>
}
  type response = {
@as("SourceIdentity") sourceIdentity: sourceIdentityType,
@as("NameQualifier") nameQualifier: nameQualifier,
@as("Audience") audience: audience,
@as("Issuer") issuer: issuer,
@as("SubjectType") subjectType: subjectType,
@as("Subject") subject: subject,
@as("PackedPolicySize") packedPolicySize: nonNegativeIntegerType,
@as("AssumedRoleUser") assumedRoleUser: assumedRoleUser,
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleWithSAMLCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssumeRole = {
  type t;
  type request = {
@as("SourceIdentity") sourceIdentity: sourceIdentityType,
@as("TokenCode") tokenCode: tokenCodeType,
@as("SerialNumber") serialNumber: serialNumberType,
@as("ExternalId") externalId: externalIdType,
@as("TransitiveTagKeys") transitiveTagKeys: tagKeyListType,
@as("Tags") tags: tagListType,
@as("DurationSeconds") durationSeconds: roleDurationSecondsType,
@as("Policy") policy: sessionPolicyDocumentType,
@as("PolicyArns") policyArns: policyDescriptorListType,
@as("RoleSessionName") roleSessionName: option<roleSessionNameType>,
@as("RoleArn") roleArn: option<arnType>
}
  type response = {
@as("SourceIdentity") sourceIdentity: sourceIdentityType,
@as("PackedPolicySize") packedPolicySize: nonNegativeIntegerType,
@as("AssumedRoleUser") assumedRoleUser: assumedRoleUser,
@as("Credentials") credentials: credentials
}
  @module("@aws-sdk/client-sts") @new external new_: (request) => t = "AssumeRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
