type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagValue = string
type tagKey = string
type amazonawsString = string
type resourceStatus = [@as("PENDING") #PENDING | @as("UNAVAILABLE") #UNAVAILABLE | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED | @as("ZONAL_RESOURCE_INACCESSIBLE") #ZONAL_RESOURCE_INACCESSIBLE | @as("AVAILABLE") #AVAILABLE]
type resourceShareStatus = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
type resourceShareInvitationStatus = [@as("EXPIRED") #EXPIRED | @as("REJECTED") #REJECTED | @as("ACCEPTED") #ACCEPTED | @as("PENDING") #PENDING]
type resourceShareFeatureSet = [@as("STANDARD") #STANDARD | @as("PROMOTING_TO_STANDARD") #PROMOTING_TO_STANDARD | @as("CREATED_FROM_POLICY") #CREATED_FROM_POLICY]
type resourceShareAssociationType = [@as("RESOURCE") #RESOURCE | @as("PRINCIPAL") #PRINCIPAL]
type resourceShareAssociationStatus = [@as("DISASSOCIATED") #DISASSOCIATED | @as("DISASSOCIATING") #DISASSOCIATING | @as("FAILED") #FAILED | @as("ASSOCIATED") #ASSOCIATED | @as("ASSOCIATING") #ASSOCIATING]
type resourceOwner = [@as("OTHER-ACCOUNTS") #OTHER_ACCOUNTS | @as("SELF") #SELF]
type policy = string
type maxResults = int;
type amazonawsInteger = int;
type dateTime = Js.Date.t;
type amazonawsBoolean = bool;
type tagValueList = array<tagValue>
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: tagValue,
@as("key") key: tagKey
}
type serviceNameAndResourceType = {
@as("serviceName") serviceName: amazonawsString,
@as("resourceType") resourceType: amazonawsString
}
type resourceSharePermissionSummary = {
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("status") status: amazonawsString,
@as("resourceType") resourceType: amazonawsString,
@as("name") name: amazonawsString,
@as("defaultVersion") defaultVersion: amazonawsBoolean,
@as("version") version: amazonawsString,
@as("arn") arn: amazonawsString
}
type resourceSharePermissionDetail = {
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("permission") permission: amazonawsString,
@as("resourceType") resourceType: amazonawsString,
@as("name") name: amazonawsString,
@as("defaultVersion") defaultVersion: amazonawsBoolean,
@as("version") version: amazonawsString,
@as("arn") arn: amazonawsString
}
type resourceShareInvitationArnList = array<amazonawsString>
type resourceShareAssociation = {
@as("external") external: amazonawsBoolean,
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("statusMessage") statusMessage: amazonawsString,
@as("status") status: resourceShareAssociationStatus,
@as("associationType") associationType: resourceShareAssociationType,
@as("associatedEntity") associatedEntity: amazonawsString,
@as("resourceShareName") resourceShareName: amazonawsString,
@as("resourceShareArn") resourceShareArn: amazonawsString
}
type resourceShareArnList = array<amazonawsString>
type resourceArnList = array<amazonawsString>
type resource = {
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("statusMessage") statusMessage: amazonawsString,
@as("status") status: resourceStatus,
@as("resourceGroupArn") resourceGroupArn: amazonawsString,
@as("resourceShareArn") resourceShareArn: amazonawsString,
@as("type") type_: amazonawsString,
@as("arn") arn: amazonawsString
}
type principalArnOrIdList = array<amazonawsString>
type principal = {
@as("external") external: amazonawsBoolean,
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("resourceShareArn") resourceShareArn: amazonawsString,
@as("id") id: amazonawsString
}
type policyList = array<policy>
type permissionArnList = array<amazonawsString>
type tagList = array<tag>
type tagFilter = {
@as("tagValues") tagValues: tagValueList,
@as("tagKey") tagKey: tagKey
}
type serviceNameAndResourceTypeList = array<serviceNameAndResourceType>
type resourceSharePermissionList = array<resourceSharePermissionSummary>
type resourceShareAssociationList = array<resourceShareAssociation>
type resourceList = array<resource>
type principalList = array<principal>
type tagFilters = array<tagFilter>
type resourceShareInvitation = {
@as("resourceShareAssociations") resourceShareAssociations: resourceShareAssociationList,
@as("status") status: resourceShareInvitationStatus,
@as("invitationTimestamp") invitationTimestamp: dateTime,
@as("receiverAccountId") receiverAccountId: amazonawsString,
@as("senderAccountId") senderAccountId: amazonawsString,
@as("resourceShareArn") resourceShareArn: amazonawsString,
@as("resourceShareName") resourceShareName: amazonawsString,
@as("resourceShareInvitationArn") resourceShareInvitationArn: amazonawsString
}
type resourceShare = {
@as("featureSet") featureSet: resourceShareFeatureSet,
@as("lastUpdatedTime") lastUpdatedTime: dateTime,
@as("creationTime") creationTime: dateTime,
@as("tags") tags: tagList,
@as("statusMessage") statusMessage: amazonawsString,
@as("status") status: resourceShareStatus,
@as("allowExternalPrincipals") allowExternalPrincipals: amazonawsBoolean,
@as("owningAccountId") owningAccountId: amazonawsString,
@as("name") name: amazonawsString,
@as("resourceShareArn") resourceShareArn: amazonawsString
}
type resourceShareList = array<resourceShare>
type resourceShareInvitationList = array<resourceShareInvitation>
type clientType;
@module("@aws-sdk/client-ram") @new external createClient: unit => clientType = "RAMClient";
module PromoteResourceShareCreatedFromPolicy = {
  type t;
  type request = {
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("returnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "PromoteResourceShareCreatedFromPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableSharingWithAwsOrganization = {
  type t;
  type request = unit
  type response = {
@as("returnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "EnableSharingWithAwsOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResourceSharePermission = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("permissionArn") permissionArn: option<amazonawsString>,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("returnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "DisassociateResourceSharePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteResourceShare = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("returnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "DeleteResourceShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResourceSharePermission = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("replace") replace: amazonawsBoolean,
@as("permissionArn") permissionArn: option<amazonawsString>,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("returnValue") returnValue: amazonawsBoolean
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "AssociateResourceSharePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicies = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("principal") principal: amazonawsString,
@as("resourceArns") resourceArns: option<resourceArnList>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("policies") policies: policyList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "GetResourcePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPermission = {
  type t;
  type request = {
@as("permissionVersion") permissionVersion: amazonawsInteger,
@as("permissionArn") permissionArn: option<amazonawsString>
}
  type response = {
@as("permission") permission: resourceSharePermissionDetail
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "GetPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareArns") resourceShareArns: resourceShareArnList,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceType") resourceType: amazonawsString,
@as("principal") principal: amazonawsString,
@as("resourceOwner") resourceOwner: option<resourceOwner>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resources") resources: resourceList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resourceTypes") resourceTypes: serviceNameAndResourceTypeList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListResourceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceSharePermissions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("permissions") permissions: resourceSharePermissionList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListResourceSharePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPrincipals = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareArns") resourceShareArns: resourceShareArnList,
@as("resourceType") resourceType: amazonawsString,
@as("principals") principals: principalArnOrIdList,
@as("resourceArn") resourceArn: amazonawsString,
@as("resourceOwner") resourceOwner: option<resourceOwner>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("principals") principals: principalList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListPrincipalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceType") resourceType: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("permissions") permissions: resourceSharePermissionList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPendingInvitationResources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareInvitationArn") resourceShareInvitationArn: option<amazonawsString>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resources") resources: resourceList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "ListPendingInvitationResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceShareAssociations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("associationStatus") associationStatus: resourceShareAssociationStatus,
@as("principal") principal: amazonawsString,
@as("resourceArn") resourceArn: amazonawsString,
@as("resourceShareArns") resourceShareArns: resourceShareArnList,
@as("associationType") associationType: option<resourceShareAssociationType>
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareAssociations") resourceShareAssociations: resourceShareAssociationList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "GetResourceShareAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateResourceShare = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("principals") principals: principalArnOrIdList,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareAssociations") resourceShareAssociations: resourceShareAssociationList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "DisassociateResourceShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateResourceShare = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("principals") principals: principalArnOrIdList,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareAssociations") resourceShareAssociations: resourceShareAssociationList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "AssociateResourceShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateResourceShare = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("allowExternalPrincipals") allowExternalPrincipals: amazonawsBoolean,
@as("name") name: amazonawsString,
@as("resourceShareArn") resourceShareArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShare") resourceShare: resourceShare
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "UpdateResourceShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectResourceShareInvitation = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareInvitationArn") resourceShareInvitationArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareInvitation") resourceShareInvitation: resourceShareInvitation
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "RejectResourceShareInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateResourceShare = {
  type t;
  type request = {
@as("permissionArns") permissionArns: permissionArnList,
@as("clientToken") clientToken: amazonawsString,
@as("allowExternalPrincipals") allowExternalPrincipals: amazonawsBoolean,
@as("tags") tags: tagList,
@as("principals") principals: principalArnOrIdList,
@as("resourceArns") resourceArns: resourceArnList,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShare") resourceShare: resourceShare
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "CreateResourceShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptResourceShareInvitation = {
  type t;
  type request = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareInvitationArn") resourceShareInvitationArn: option<amazonawsString>
}
  type response = {
@as("clientToken") clientToken: amazonawsString,
@as("resourceShareInvitation") resourceShareInvitation: resourceShareInvitation
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "AcceptResourceShareInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceShares = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("tagFilters") tagFilters: tagFilters,
@as("name") name: amazonawsString,
@as("resourceOwner") resourceOwner: option<resourceOwner>,
@as("resourceShareStatus") resourceShareStatus: resourceShareStatus,
@as("resourceShareArns") resourceShareArns: resourceShareArnList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resourceShares") resourceShares: resourceShareList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "GetResourceSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceShareInvitations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareArns") resourceShareArns: resourceShareArnList,
@as("resourceShareInvitationArns") resourceShareInvitationArns: resourceShareInvitationArnList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("resourceShareInvitations") resourceShareInvitations: resourceShareInvitationList
}
  @module("@aws-sdk/client-ram") @new external new_: (request) => t = "GetResourceShareInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
