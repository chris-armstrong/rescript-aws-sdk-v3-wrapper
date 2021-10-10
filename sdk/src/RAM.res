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
@ocaml.doc("<p>Information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") key: option<tagKey>,
}
@ocaml.doc(
  "<p>Information about the shareable resource types and the AWS services to which they belong.</p>"
)
type serviceNameAndResourceType = {
  @ocaml.doc("<p>The name of the AWS services to which the resources belong.</p>")
  serviceName: option<string_>,
  @ocaml.doc("<p>The shareable resource types.</p>") resourceType: option<string_>,
}
@ocaml.doc("<p>Information about a permission that is associated with a resource share.</p>")
type resourceSharePermissionSummary = {
  @ocaml.doc("<p>The date and time when the permission was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the permission was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The current status of the permission.</p>") status: option<string_>,
  @ocaml.doc("<p>The type of resource to which the permission applies.</p>")
  resourceType: option<string_>,
  @ocaml.doc("<p>The name of the permission.</p>") name: option<string_>,
  @ocaml.doc(
    "<p>The identifier for the version of the permission that is set as the default version.</p>"
  )
  defaultVersion: option<boolean_>,
  @ocaml.doc("<p>The identifier for the version of the permission.</p>") version: option<string_>,
  @ocaml.doc("<p>The ARN of the permission.</p>") arn: option<string_>,
}
@ocaml.doc("<p>Information about an AWS RAM permission.</p>")
type resourceSharePermissionDetail = {
  @ocaml.doc("<p>The date and time when the permission was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the permission was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The permission's effect and actions in JSON format. The <code>effect</code> indicates whether
			the actions are allowed or denied. The <code>actions</code> list the API actions to
			which the principal is granted or denied access.</p>")
  permission: option<string_>,
  @ocaml.doc("<p>The resource type to which the permission applies.</p>")
  resourceType: option<string_>,
  @ocaml.doc("<p>The name of the permission.</p>") name: option<string_>,
  @ocaml.doc("<p>The identifier for the version of the permission that is set as the 
    		default version.</p>")
  defaultVersion: option<boolean_>,
  @ocaml.doc("<p>The identifier for the version of the permission.</p>") version: option<string_>,
  @ocaml.doc("<p>The ARN of the permission.</p>") arn: option<string_>,
}
type resourceShareInvitationArnList = array<string_>
@ocaml.doc("<p>Describes an association with a resource share.</p>")
type resourceShareAssociation = {
  @ocaml.doc(
    "<p>Indicates whether the principal belongs to the same AWS organization as the AWS account that owns the resource share.</p>"
  )
  @as("external")
  external_: option<boolean_>,
  @ocaml.doc("<p>The time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The time when the association was created.</p>") creationTime: option<dateTime>,
  @ocaml.doc("<p>A message about the status of the association.</p>")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The status of the association.</p>")
  status: option<resourceShareAssociationStatus>,
  @ocaml.doc("<p>The association type.</p>") associationType: option<resourceShareAssociationType>,
  @ocaml.doc("<p>The associated entity. For resource associations, this is the ARN of the resource.
       For principal associations, this is the ID of an AWS account or the ARN of an OU or
       organization from AWS Organizations.</p>")
  associatedEntity: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") resourceShareName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
  resourceShareArn: option<string_>,
}
type resourceShareArnList = array<string_>
type resourceArnList = array<string_>
@ocaml.doc("<p>Describes a resource associated with a resource share.</p>")
type resource = {
  @ocaml.doc("<p>The time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The time when the resource was associated with the resource share.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A message about the status of the resource.</p>") statusMessage: option<string_>,
  @ocaml.doc("<p>The status of the resource.</p>") status: option<resourceStatus>,
  @ocaml.doc("<p>The ARN of the resource group. This value is returned only if the resource is a resource
			group.</p>")
  resourceGroupArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The resource type.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") arn: option<string_>,
}
type principalArnOrIdList = array<string_>
@ocaml.doc("<p>Describes a principal for use with AWS Resource Access Manager.</p>")
type principal = {
  @ocaml.doc(
    "<p>Indicates whether the principal belongs to the same AWS organization as the AWS account that owns the resource share.</p>"
  )
  @as("external")
  external_: option<boolean_>,
  @ocaml.doc("<p>The time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The time when the principal was associated with the resource share.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The ID of the principal.</p>") id: option<string_>,
}
type policyList = array<policy>
type permissionArnList = array<string_>
type tagList_ = array<tag>
@ocaml.doc("<p>Used to filter information based on tags.</p>")
type tagFilter = {
  @ocaml.doc("<p>The tag values.</p>") tagValues: option<tagValueList>,
  @ocaml.doc("<p>The tag key.</p>") tagKey: option<tagKey>,
}
type serviceNameAndResourceTypeList = array<serviceNameAndResourceType>
type resourceSharePermissionList = array<resourceSharePermissionSummary>
type resourceShareAssociationList = array<resourceShareAssociation>
type resourceList = array<resource>
type principalList = array<principal>
type tagFilters = array<tagFilter>
@ocaml.doc("<p>Describes an invitation to join a resource share.</p>")
type resourceShareInvitation = {
  @ocaml.doc("<p>To view the resources associated with a pending resource share invitation, use 
      	<a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_ListPendingInvitationResources.html\">
      		ListPendingInvitationResources</a>.</p>")
  resourceShareAssociations: option<resourceShareAssociationList>,
  @ocaml.doc("<p>The status of the invitation.</p>") status: option<resourceShareInvitationStatus>,
  @ocaml.doc("<p>The date and time when the invitation was sent.</p>")
  invitationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The ID of the AWS account that received the invitation.</p>")
  receiverAccountId: option<string_>,
  @ocaml.doc("<p>The ID of the AWS account that sent the invitation.</p>")
  senderAccountId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") resourceShareName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the invitation.</p>")
  resourceShareInvitationArn: option<string_>,
}
@ocaml.doc("<p>Describes a resource share.</p>")
type resourceShare = {
  @ocaml.doc("<p>Indicates how the resource share was created. Possible values include:</p>
	        <ul>
            <li>
			            <p>
                  <code>CREATED_FROM_POLICY</code> - Indicates that the resource share was created from an AWS Identity
					and Access Management (AWS IAM) policy attached to a resource. These resource shares are
					visible only to the AWS account that created it. They cannot be modified in
					AWS RAM.</p>
		          </li>
            <li>
			            <p>
                  <code>PROMOTING_TO_STANDARD</code> - The resource share is in the process 
				of being promoted. For more information, see 
				<a>PromoteResourceShareCreatedFromPolicy</a>.</p>
		          </li>
            <li>
			            <p>
                  <code>STANDARD</code> - Indicates that the resource share was created in AWS RAM using the console or
					APIs. These resource shares are visible to all principals. They can be modified
					in AWS RAM.</p>
		          </li>
         </ul>")
  featureSet: option<resourceShareFeatureSet>,
  @ocaml.doc("<p>The time when the resource share was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The time when the resource share was created.</p>") creationTime: option<dateTime>,
  @ocaml.doc("<p>The tags for the resource share.</p>") tags: option<tagList_>,
  @ocaml.doc("<p>A message about the status of the resource share.</p>")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The status of the resource share.</p>") status: option<resourceShareStatus>,
  @ocaml.doc(
    "<p>Indicates whether principals outside your AWS organization can be associated with a resource share.</p>"
  )
  allowExternalPrincipals: option<boolean_>,
  @ocaml.doc("<p>The ID of the AWS account that owns the resource share.</p>")
  owningAccountId: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") name: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
  resourceShareArn: option<string_>,
}
type resourceShareList = array<resourceShare>
type resourceShareInvitationList = array<resourceShareInvitation>
@ocaml.doc("<p>Use AWS Resource Access Manager to share AWS resources between AWS accounts. To share a resource, you
          create a resource share, associate the resource with the resource share, and specify the principals that
          can access the resources associated with the resource share. The following principals are supported:
          AWS accounts, organizational units (OU) from AWS Organizations, and organizations from
          AWS Organizations.</p>
         <p>For more information, see the <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/\">AWS Resource Access Manager User Guide</a>.</p>")
module PromoteResourceShareCreatedFromPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource share to promote.</p>") resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether the request succeeded.</p>") returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "PromoteResourceShareCreatedFromPolicyCommand"
  let make = (~resourceShareArn, ()) => new({resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSharingWithAwsOrganization = {
  type t

  type response = {
    @ocaml.doc("<p>Indicates whether the request succeeded.</p>") returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: unit => t = "EnableSharingWithAwsOrganizationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateResourceSharePermission = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The ARN of the permission to disassociate from the resource share.</p>")
    permissionArn: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Indicates whether the request succeeded.</p>") returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "DisassociateResourceSharePermissionCommand"
  let make = (~permissionArn, ~resourceShareArn, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      permissionArn: permissionArn,
      resourceShareArn: resourceShareArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourceShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Indicates whether the request succeeded.</p>") returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "DeleteResourceShareCommand"
  let make = (~resourceShareArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateResourceSharePermission = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Indicates whether the permission should replace the permissions that are currently 
        	associated with the resource share. Use <code>true</code> to replace the current permissions. 
        	Use <code>false</code> to add the permission to the current permission.</p>")
    replace: option<boolean_>,
    @ocaml.doc("<p>The ARN of the AWS RAM permission to associate with the resource share.</p>")
    permissionArn: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Indicates whether the request succeeded.</p>") returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "AssociateResourceSharePermissionCommand"
  let make = (~permissionArn, ~resourceShareArn, ~clientToken=?, ~replace=?, ()) =>
    new({
      clientToken: clientToken,
      replace: replace,
      permissionArn: permissionArn,
      resourceShareArn: resourceShareArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys of the tags to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }

  @module("@aws-sdk/client-ram") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceShareArn, ()) =>
    new({tagKeys: tagKeys, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The principal.</p>") principal: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resources.</p>")
    resourceArns: resourceArnList,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>A key policy document, in JSON format.</p>") policies: option<policyList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "GetResourcePoliciesCommand"
  let make = (~resourceArns, ~maxResults=?, ~nextToken=?, ~principal=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      principal: principal,
      resourceArns: resourceArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPermission = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the version of the permission.</p>")
    permissionVersion: option<integer_>,
    @ocaml.doc("<p>The ARN of the permission.</p>") permissionArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the permission.</p>")
    permission: option<resourceSharePermissionDetail>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "GetPermissionCommand"
  let make = (~permissionArn, ~permissionVersion=?, ()) =>
    new({permissionVersion: permissionVersion, permissionArn: permissionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }

  @module("@aws-sdk/client-ram") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceShareArn, ()) => new({tags: tags, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resource shares.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resources.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>The resource type.</p>
   	     <p>Valid values: <code>acm-pca:CertificateAuthority</code> | <code>appmesh:Mesh</code> | <code>codebuild:Project</code> | <code>codebuild:ReportGroup</code> | <code>ec2:CapacityReservation</code> | <code>ec2:DedicatedHost</code> | <code>ec2:LocalGatewayRouteTable</code> | <code>ec2:PrefixList</code> | <code>ec2:Subnet</code> | <code>ec2:TrafficMirrorTarget</code> | <code>ec2:TransitGateway</code> | <code>imagebuilder:Component</code> | <code>imagebuilder:Image</code> | <code>imagebuilder:ImageRecipe</code> | <code>imagebuilder:ContainerRecipe</code> | <code>glue:Catalog</code> | <code>glue:Database</code> | <code>glue:Table</code> | <code>license-manager:LicenseConfiguration</code> I <code>network-firewall:FirewallPolicy</code> | <code>network-firewall:StatefulRuleGroup</code> | <code>network-firewall:StatelessRuleGroup</code> | <code>outposts:Outpost</code> | <code>resource-groups:Group</code> | <code>rds:Cluster</code> | <code>route53resolver:FirewallRuleGroup</code> |<code>route53resolver:ResolverQueryLogConfig</code> | <code>route53resolver:ResolverRule</code>
         </p>")
    resourceType: option<string_>,
    @ocaml.doc("<p>The principal.</p>") principal: option<string_>,
    @ocaml.doc("<p>The type of owner.</p>") resourceOwner: resourceOwner,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the resources.</p>") resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListResourcesCommand"
  let make = (
    ~resourceOwner,
    ~maxResults=?,
    ~nextToken=?,
    ~resourceShareArns=?,
    ~resourceArns=?,
    ~resourceType=?,
    ~principal=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceShareArns: resourceShareArns,
      resourceArns: resourceArns,
      resourceType: resourceType,
      principal: principal,
      resourceOwner: resourceOwner,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>The shareable resource types supported by AWS RAM.</p>")
    resourceTypes: option<serviceNameAndResourceTypeList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListResourceTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceSharePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>The permissions associated with the resource share.</p>")
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "ListResourceSharePermissionsCommand"
  let make = (~resourceShareArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipals = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resource shares.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>The resource type.</p>
   	     <p>Valid values: <code>acm-pca:CertificateAuthority</code> | <code>appmesh:Mesh</code> | <code>codebuild:Project</code> | <code>codebuild:ReportGroup</code> | <code>ec2:CapacityReservation</code> | <code>ec2:DedicatedHost</code> | <code>ec2:LocalGatewayRouteTable</code> | <code>ec2:PrefixList</code> | <code>ec2:Subnet</code> | <code>ec2:TrafficMirrorTarget</code> | <code>ec2:TransitGateway</code> | <code>imagebuilder:Component</code> | <code>imagebuilder:Image</code> | <code>imagebuilder:ImageRecipe</code> | <code>imagebuilder:ContainerRecipe</code> | <code>glue:Catalog</code> | <code>glue:Database</code> | <code>glue:Table</code> | <code>license-manager:LicenseConfiguration</code> I <code>network-firewall:FirewallPolicy</code> | <code>network-firewall:StatefulRuleGroup</code> | <code>network-firewall:StatelessRuleGroup</code> | <code>outposts:Outpost</code> | <code>resource-groups:Group</code> | <code>rds:Cluster</code> | <code>route53resolver:FirewallRuleGroup</code> |<code>route53resolver:ResolverQueryLogConfig</code> | <code>route53resolver:ResolverRule</code>
         </p>")
    resourceType: option<string_>,
    @ocaml.doc("<p>The principals.</p>") principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>")
    resourceArn: option<string_>,
    @ocaml.doc("<p>The type of owner.</p>") resourceOwner: resourceOwner,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>The principals.</p>") principals: option<principalList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListPrincipalsCommand"
  let make = (
    ~resourceOwner,
    ~maxResults=?,
    ~nextToken=?,
    ~resourceShareArns=?,
    ~resourceType=?,
    ~principals=?,
    ~resourceArn=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceShareArns: resourceShareArns,
      resourceType: resourceType,
      principals: principals,
      resourceArn: resourceArn,
      resourceOwner: resourceOwner,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the resource type for which to list permissions. For example, to list only 
		permissions that apply to EC2 subnets, specify <code>ec2:Subnet</code>.</p>")
    resourceType: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the permissions.</p>")
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListPermissionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~resourceType=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPendingInvitationResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the invitation.</p>")
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the resources included the resource share.</p>")
    resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "ListPendingInvitationResourcesCommand"
  let make = (~resourceShareInvitationArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceShareInvitationArn: resourceShareInvitationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShareAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The association status.</p>")
    associationStatus: option<resourceShareAssociationStatus>,
    @ocaml.doc("<p>The principal. You cannot specify this parameter if the association type is 
     	<code>RESOURCE</code>.</p>")
    principal: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. You cannot specify this parameter if the 
      	association type is <code>PRINCIPAL</code>.</p>")
    resourceArn: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resource shares.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>The association type. Specify <code>PRINCIPAL</code> to list the principals that are 
   		associated with the specified resource share. Specify <code>RESOURCE</code> to list 
   		the resources that are associated with the specified resource share.</p>")
    associationType: resourceShareAssociationType,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the associations.</p>")
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "GetResourceShareAssociationsCommand"
  let make = (
    ~associationType,
    ~maxResults=?,
    ~nextToken=?,
    ~associationStatus=?,
    ~principal=?,
    ~resourceArn=?,
    ~resourceShareArns=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      associationStatus: associationStatus,
      principal: principal,
      resourceArn: resourceArn,
      resourceShareArns: resourceShareArns,
      associationType: associationType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateResourceShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The principals.</p>") principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the resources.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the associations.</p>")
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "DisassociateResourceShareCommand"
  let make = (~resourceShareArn, ~clientToken=?, ~principals=?, ~resourceArns=?, ()) =>
    new({
      clientToken: clientToken,
      principals: principals,
      resourceArns: resourceArns,
      resourceShareArn: resourceShareArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateResourceShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The principals to associate with the resource share. The possible values are IDs of 
       	AWS accounts, and the ARNs of organizational units (OU) or organizations from AWS 
       	Organizations.</p>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resources.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the associations.</p>")
    resourceShareAssociations: option<resourceShareAssociationList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "AssociateResourceShareCommand"
  let make = (~resourceShareArn, ~clientToken=?, ~principals=?, ~resourceArns=?, ()) =>
    new({
      clientToken: clientToken,
      principals: principals,
      resourceArns: resourceArns,
      resourceShareArn: resourceShareArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc(
      "<p>Indicates whether principals outside your AWS organization can be associated with a resource share.</p>"
    )
    allowExternalPrincipals: option<boolean_>,
    @ocaml.doc("<p>The name of the resource share.</p>") name: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the resource share.</p>") resourceShare: option<resourceShare>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "UpdateResourceShareCommand"
  let make = (~resourceShareArn, ~clientToken=?, ~allowExternalPrincipals=?, ~name=?, ()) =>
    new({
      clientToken: clientToken,
      allowExternalPrincipals: allowExternalPrincipals,
      name: name,
      resourceShareArn: resourceShareArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectResourceShareInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the invitation.</p>")
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the invitation.</p>")
    resourceShareInvitation: option<resourceShareInvitation>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "RejectResourceShareInvitationCommand"
  let make = (~resourceShareInvitationArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, resourceShareInvitationArn: resourceShareInvitationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceShare = {
  type t
  type request = {
    @ocaml.doc("<p>The ARNs of the permissions to associate with the resource share. If you do not specify an ARN
			for the permission, AWS RAM automatically attaches the default version of the permission
			for each resource type.</p>")
    permissionArns: option<permissionArnList>,
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc(
      "<p>Indicates whether principals outside your AWS organization can be associated with a resource share.</p>"
    )
    allowExternalPrincipals: option<boolean_>,
    @ocaml.doc("<p>One or more tags.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The principals to associate with the resource share. The possible values are IDs of AWS accounts,
          the ARN of an OU or organization from AWS Organizations.</p>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc(
      "<p>The Amazon Resource Names (ARN) of the resources to associate with the resource share.</p>"
    )
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>The name of the resource share.</p>") name: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the resource share.</p>") resourceShare: option<resourceShare>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "CreateResourceShareCommand"
  let make = (
    ~name,
    ~permissionArns=?,
    ~clientToken=?,
    ~allowExternalPrincipals=?,
    ~tags=?,
    ~principals=?,
    ~resourceArns=?,
    (),
  ) =>
    new({
      permissionArns: permissionArns,
      clientToken: clientToken,
      allowExternalPrincipals: allowExternalPrincipals,
      tags: tags,
      principals: principals,
      resourceArns: resourceArns,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptResourceShareInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the invitation.</p>")
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: option<string_>,
    @ocaml.doc("<p>Information about the invitation.</p>")
    resourceShareInvitation: option<resourceShareInvitation>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "AcceptResourceShareInvitationCommand"
  let make = (~resourceShareInvitationArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, resourceShareInvitationArn: resourceShareInvitationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShares = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>One or more tag filters.</p>") tagFilters: option<tagFilters>,
    @ocaml.doc("<p>The name of the resource share.</p>") name: option<string_>,
    @ocaml.doc("<p>The type of owner.</p>") resourceOwner: resourceOwner,
    @ocaml.doc("<p>The status of the resource share.</p>")
    resourceShareStatus: option<resourceShareStatus>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resource shares.</p>")
    resourceShareArns: option<resourceShareArnList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the resource shares.</p>")
    resourceShares: option<resourceShareList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "GetResourceSharesCommand"
  let make = (
    ~resourceOwner,
    ~maxResults=?,
    ~nextToken=?,
    ~tagFilters=?,
    ~name=?,
    ~resourceShareStatus=?,
    ~resourceShareArns=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      tagFilters: tagFilters,
      name: name,
      resourceOwner: resourceOwner,
      resourceShareStatus: resourceShareStatus,
      resourceShareArns: resourceShareArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShareInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return with a single call.
  To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the resource shares.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARN) of the invitations.</p>")
    resourceShareInvitationArns: option<resourceShareInvitationArnList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the invitations.</p>")
    resourceShareInvitations: option<resourceShareInvitationList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "GetResourceShareInvitationsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~resourceShareArns=?,
    ~resourceShareInvitationArns=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceShareArns: resourceShareArns,
      resourceShareInvitationArns: resourceShareInvitationArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
