type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ram") @new external createClient: unit => awsServiceClient = "RAMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type string_ = string
type resourceStatus = [
  | @as("PENDING") #PENDING
  | @as("UNAVAILABLE") #UNAVAILABLE
  | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED
  | @as("ZONAL_RESOURCE_INACCESSIBLE") #ZONAL_RESOURCE_INACCESSIBLE
  | @as("AVAILABLE") #AVAILABLE
]
type resourceShareStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING") #PENDING
]
type resourceShareInvitationStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("REJECTED") #REJECTED
  | @as("ACCEPTED") #ACCEPTED
  | @as("PENDING") #PENDING
]
type resourceShareFeatureSet = [
  | @as("STANDARD") #STANDARD
  | @as("PROMOTING_TO_STANDARD") #PROMOTING_TO_STANDARD
  | @as("CREATED_FROM_POLICY") #CREATED_FROM_POLICY
]
type resourceShareAssociationType = [@as("RESOURCE") #RESOURCE | @as("PRINCIPAL") #PRINCIPAL]
type resourceShareAssociationStatus = [
  | @as("DISASSOCIATED") #DISASSOCIATED
  | @as("DISASSOCIATING") #DISASSOCIATING
  | @as("FAILED") #FAILED
  | @as("ASSOCIATED") #ASSOCIATED
  | @as("ASSOCIATING") #ASSOCIATING
]
type resourceOwner = [@as("OTHER-ACCOUNTS") #OTHER_ACCOUNTS | @as("SELF") #SELF]
type policy = string
type maxResults = int
type integer_ = int
type dateTime = Js.Date.t
type boolean_ = bool
type tagValueList = array<tagValue>
type tagKeyList = array<tagKey>
type tag = {
  value: option<tagValue>,
  key: option<tagKey>,
}
type serviceNameAndResourceType = {
  serviceName: option<string_>,
  resourceType: option<string_>,
}
type resourceSharePermissionSummary = {
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  status: option<string_>,
  resourceType: option<string_>,
  name: option<string_>,
  defaultVersion: option<boolean_>,
  version: option<string_>,
  arn: option<string_>,
}
type resourceSharePermissionDetail = {
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  permission: option<string_>,
  resourceType: option<string_>,
  name: option<string_>,
  defaultVersion: option<boolean_>,
  version: option<string_>,
  arn: option<string_>,
}
type resourceShareInvitationArnList = array<string_>
type resourceShareAssociation = {
  @as("external") external_: option<boolean_>,
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  statusMessage: option<string_>,
  status: option<resourceShareAssociationStatus>,
  associationType: option<resourceShareAssociationType>,
  associatedEntity: option<string_>,
  resourceShareName: option<string_>,
  resourceShareArn: option<string_>,
}
type resourceShareArnList = array<string_>
type resourceArnList = array<string_>
type resource = {
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  statusMessage: option<string_>,
  status: option<resourceStatus>,
  resourceGroupArn: option<string_>,
  resourceShareArn: option<string_>,
  @as("type") type_: option<string_>,
  arn: option<string_>,
}
type principalArnOrIdList = array<string_>
type principal = {
  @as("external") external_: option<boolean_>,
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  resourceShareArn: option<string_>,
  id: option<string_>,
}
type policyList = array<policy>
type permissionArnList = array<string_>
type tagList_ = array<tag>
type tagFilter = {
  tagValues: option<tagValueList>,
  tagKey: option<tagKey>,
}
type serviceNameAndResourceTypeList = array<serviceNameAndResourceType>
type resourceSharePermissionList = array<resourceSharePermissionSummary>
type resourceShareAssociationList = array<resourceShareAssociation>
type resourceList = array<resource>
type principalList = array<principal>
type tagFilters = array<tagFilter>
type resourceShareInvitation = {
  resourceShareAssociations: option<resourceShareAssociationList>,
  status: option<resourceShareInvitationStatus>,
  invitationTimestamp: option<dateTime>,
  receiverAccountId: option<string_>,
  senderAccountId: option<string_>,
  resourceShareArn: option<string_>,
  resourceShareName: option<string_>,
  resourceShareInvitationArn: option<string_>,
}
type resourceShare = {
  featureSet: option<resourceShareFeatureSet>,
  lastUpdatedTime: option<dateTime>,
  creationTime: option<dateTime>,
  tags: option<tagList_>,
  statusMessage: option<string_>,
  status: option<resourceShareStatus>,
  allowExternalPrincipals: option<boolean_>,
  owningAccountId: option<string_>,
  name: option<string_>,
  resourceShareArn: option<string_>,
}
type resourceShareList = array<resourceShare>
type resourceShareInvitationList = array<resourceShareInvitation>

module PromoteResourceShareCreatedFromPolicy = {
  type t
  type request = {resourceShareArn: string_}
  type response = {returnValue: option<boolean_>}
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "PromoteResourceShareCreatedFromPolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSharingWithAwsOrganization = {
  type t
  type request = unit
  type response = {returnValue: option<boolean_>}
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "EnableSharingWithAwsOrganizationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateResourceSharePermission = {
  type t
  type request = {
    clientToken: option<string_>,
    permissionArn: string_,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "DisassociateResourceSharePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourceShare = {
  type t
  type request = {
    clientToken: option<string_>,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "DeleteResourceShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateResourceSharePermission = {
  type t
  type request = {
    clientToken: option<string_>,
    replace: option<boolean_>,
    permissionArn: string_,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "AssociateResourceSharePermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceShareArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-ram") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    principal: option<string_>,
    resourceArns: resourceArnList,
  }
  type response = {
    nextToken: option<string_>,
    policies: option<policyList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "GetResourcePoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPermission = {
  type t
  type request = {
    permissionVersion: option<integer_>,
    permissionArn: string_,
  }
  type response = {permission: option<resourceSharePermissionDetail>}
  @module("@aws-sdk/client-ram") @new external new_: request => t = "GetPermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceShareArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-ram") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResources = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceShareArns: option<resourceShareArnList>,
    resourceArns: option<resourceArnList>,
    resourceType: option<string_>,
    principal: option<string_>,
    resourceOwner: resourceOwner,
  }
  type response = {
    nextToken: option<string_>,
    resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "ListResourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceTypes = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    resourceTypes: option<serviceNameAndResourceTypeList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "ListResourceTypesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceSharePermissions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceShareArn: string_,
  }
  type response = {
    nextToken: option<string_>,
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "ListResourceSharePermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipals = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceShareArns: option<resourceShareArnList>,
    resourceType: option<string_>,
    principals: option<principalArnOrIdList>,
    resourceArn: option<string_>,
    resourceOwner: resourceOwner,
  }
  type response = {
    nextToken: option<string_>,
    principals: option<principalList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "ListPrincipalsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceType: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "ListPermissionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPendingInvitationResources = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceShareInvitationArn: string_,
  }
  type response = {
    nextToken: option<string_>,
    resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "ListPendingInvitationResourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShareAssociations = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    associationStatus: option<resourceShareAssociationStatus>,
    principal: option<string_>,
    resourceArn: option<string_>,
    resourceShareArns: option<resourceShareArnList>,
    associationType: resourceShareAssociationType,
  }
  type response = {
    nextToken: option<string_>,
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "GetResourceShareAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateResourceShare = {
  type t
  type request = {
    clientToken: option<string_>,
    principals: option<principalArnOrIdList>,
    resourceArns: option<resourceArnList>,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "DisassociateResourceShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateResourceShare = {
  type t
  type request = {
    clientToken: option<string_>,
    principals: option<principalArnOrIdList>,
    resourceArns: option<resourceArnList>,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "AssociateResourceShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceShare = {
  type t
  type request = {
    clientToken: option<string_>,
    allowExternalPrincipals: option<boolean_>,
    name: option<string_>,
    resourceShareArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShare: option<resourceShare>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "UpdateResourceShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectResourceShareInvitation = {
  type t
  type request = {
    clientToken: option<string_>,
    resourceShareInvitationArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShareInvitation: option<resourceShareInvitation>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "RejectResourceShareInvitationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceShare = {
  type t
  type request = {
    permissionArns: option<permissionArnList>,
    clientToken: option<string_>,
    allowExternalPrincipals: option<boolean_>,
    tags: option<tagList_>,
    principals: option<principalArnOrIdList>,
    resourceArns: option<resourceArnList>,
    name: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShare: option<resourceShare>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "CreateResourceShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptResourceShareInvitation = {
  type t
  type request = {
    clientToken: option<string_>,
    resourceShareInvitationArn: string_,
  }
  type response = {
    clientToken: option<string_>,
    resourceShareInvitation: option<resourceShareInvitation>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "AcceptResourceShareInvitationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShares = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    tagFilters: option<tagFilters>,
    name: option<string_>,
    resourceOwner: resourceOwner,
    resourceShareStatus: option<resourceShareStatus>,
    resourceShareArns: option<resourceShareArnList>,
  }
  type response = {
    nextToken: option<string_>,
    resourceShares: option<resourceShareList>,
  }
  @module("@aws-sdk/client-ram") @new external new_: request => t = "GetResourceSharesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShareInvitations = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<string_>,
    resourceShareArns: option<resourceShareArnList>,
    resourceShareInvitationArns: option<resourceShareInvitationArnList>,
  }
  type response = {
    nextToken: option<string_>,
    resourceShareInvitations: option<resourceShareInvitationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new_: request => t = "GetResourceShareInvitationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
