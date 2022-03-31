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
type resourceRegionScopeFilter = [
  | @as("GLOBAL") #GLOBAL
  | @as("REGIONAL") #REGIONAL
  | @as("ALL") #ALL
]
type resourceRegionScope = [@as("GLOBAL") #GLOBAL | @as("REGIONAL") #REGIONAL]
type resourceOwner = [@as("OTHER-ACCOUNTS") #OTHER_ACCOUNTS | @as("SELF") #SELF]
type policy = string
type maxResults = int
type integer_ = int
type dateTime = Js.Date.t
type boolean_ = bool
type tagValueList = array<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A structure containing a tag. A tag is metadata that you can attach to your resources
            to help organize and categorize them. You can also use them to help you secure your
            resources. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Controlling access to Amazon Web Services resources
                using tags</a>.</p>
        <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a> in the
                <i>Amazon Web Services General Reference Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The string value attached to the tag. The value can be an empty string. Key values are
            case sensitive.</p>")
  value: option<tagValue>,
  @ocaml.doc("<p>The key, or name, attached to the tag. Every tag must have a key. Key names are case
            sensitive.</p>")
  key: option<tagKey>,
}
@ocaml.doc("<p>Information about a shareable resource type and the Amazon Web Services service to which resources
            of that type belong.</p>")
type serviceNameAndResourceType = {
  @ocaml.doc("<p>Specifies the scope of visibility of resources of this type:</p>
        <ul>
            <li>
                <p>
                  <b>REGIONAL</b> – The resource can be
                    accessed only by using requests that target the Amazon Web Services Region in which the
                    resource exists.</p>
            </li>
            <li>
                <p>
                  <b>GLOBAL</b> – The resource can be accessed
                    from any Amazon Web Services Region.</p>
            </li>
         </ul>")
  resourceRegionScope: option<resourceRegionScope>,
  @ocaml.doc(
    "<p>The name of the Amazon Web Services service to which resources of this type belong.</p>"
  )
  serviceName: option<string_>,
  @ocaml.doc("<p>The type of the resource.</p>") resourceType: option<string_>,
}
@ocaml.doc("<p>Information about an RAM permission that is associated with a resource share and any of its
            resources of a specified type.</p>")
type resourceSharePermissionSummary = {
  @ocaml.doc("<p>Specifies whether the version of the permission represented in this structure is the
            default version for all resources of this resource type.</p>")
  isResourceTypeDefault: option<boolean_>,
  @ocaml.doc("<p>The date and time when the permission was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the permission was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The current status of the permission.</p>") status: option<string_>,
  @ocaml.doc("<p>The type of resource to which this permission applies.</p>")
  resourceType: option<string_>,
  @ocaml.doc("<p>The name of this permission.</p>") name: option<string_>,
  @ocaml.doc("<p>Specifies whether the version of the permission represented in this structure is the
            default version for this permission.</p>")
  defaultVersion: option<boolean_>,
  @ocaml.doc("<p>The version of the permission represented in this structure.</p>")
  version: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the permission you want information about.</p>"
  )
  arn: option<string_>,
}
@ocaml.doc("<p>Information about an RAM permission.</p>")
type resourceSharePermissionDetail = {
  @ocaml.doc("<p>Specifies whether the version of the permission represented in this structure is the
            default version for all resources of this resource type.</p>")
  isResourceTypeDefault: option<boolean_>,
  @ocaml.doc("<p>The date and time when the permission was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the permission was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The permission's effect and actions in JSON format. The <code>effect</code> indicates
            whether the specified actions are allowed or denied. The <code>actions</code> list the
            operations to which the principal is granted or denied access.</p>")
  permission: option<string_>,
  @ocaml.doc("<p>The resource type to which this permission applies.</p>")
  resourceType: option<string_>,
  @ocaml.doc("<p>The name of this permission.</p>") name: option<string_>,
  @ocaml.doc("<p>Specifies whether the version of the permission represented in this structure is the
            default version for this permission.</p>")
  defaultVersion: option<boolean_>,
  @ocaml.doc("<p>The version of the permission represented in this structure.</p>")
  version: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of this RAM permission.</p>"
  )
  arn: option<string_>,
}
type resourceShareInvitationArnList = array<string_>
@ocaml.doc(
  "<p>Describes an association with a resource share and either a principal or a resource.</p>"
)
type resourceShareAssociation = {
  @ocaml.doc("<p>Indicates whether the principal belongs to the same organization in Organizations as the
            Amazon Web Services account that owns the resource share.</p>")
  @as("external")
  external_: option<boolean_>,
  @ocaml.doc("<p>The date and time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the association was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A message about the status of the association.</p>")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The current status of the association.</p>")
  status: option<resourceShareAssociationStatus>,
  @ocaml.doc("<p>The type of entity included in this association.</p>")
  associationType: option<resourceShareAssociationType>,
  @ocaml.doc("<p>The associated entity. This can be either of the following:</p>
        <ul>
            <li>
                <p>For a resource association, this is the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource.</p>
            </li>
            <li>
                <p>For principal associations, this is one of the following:</p>
                <ul>
                  <li>
                        <p>The ID of an Amazon Web Services account</p>
                    </li>
                  <li>
                        <p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an organization in Organizations</p>
                    </li>
                  <li>
                        <p>The ARN of an organizational unit (OU) in Organizations</p>
                    </li>
                  <li>
                        <p>The ARN of an IAM role</p>
                    </li>
                  <li>
                        <p>The ARN of an IAM user</p>
                    </li>
               </ul>
            </li>
         </ul>")
  associatedEntity: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") resourceShareName: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share.</p>"
  )
  resourceShareArn: option<string_>,
}
type resourceShareArnList = array<string_>
type resourceArnList = array<string_>
@ocaml.doc("<p>Describes a resource associated with a resource share in RAM.</p>")
type resource = {
  @ocaml.doc("<p>Specifies the scope of visibility of this resource:</p>
        <ul>
            <li>
                <p>
                  <b>REGIONAL</b> – The resource can be
                    accessed only by using requests that target the Amazon Web Services Region in which the
                    resource exists.</p>
            </li>
            <li>
                <p>
                  <b>GLOBAL</b> – The resource can be accessed
                    from any Amazon Web Services Region.</p>
            </li>
         </ul>")
  resourceRegionScope: option<resourceRegionScope>,
  @ocaml.doc("<p>The date an time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the resource was associated with the resource share.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>A message about the status of the resource.</p>") statusMessage: option<string_>,
  @ocaml.doc("<p>The current status of the resource.</p>") status: option<resourceStatus>,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource group. This value is available only if the resource is
            part of a resource group.</p>")
  resourceGroupArn: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share this resource is associated with.</p>"
  )
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The resource type. This takes the form of:
                <code>service-code</code>:<code>resource-code</code>
         </p>")
  @as("type")
  type_: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource.</p>"
  )
  arn: option<string_>,
}
type principalArnOrIdList = array<string_>
@ocaml.doc("<p>Describes a principal for use with Resource Access Manager.</p>")
type principal = {
  @ocaml.doc("<p>Indicates whether the principal belongs to the same organization in Organizations as the
            Amazon Web Services account that owns the resource share.</p>")
  @as("external")
  external_: option<boolean_>,
  @ocaml.doc("<p>The date and time when the association was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the principal was associated with the resource share.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of a resource share the principal is associated with.</p>"
  )
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The ID of the principal.</p>") id: option<string_>,
}
type policyList = array<policy>
type permissionArnList = array<string_>
type tagList_ = array<tag>
@ocaml.doc("<p>A tag key and optional list of possible values that you can use to filter results for
            tagged resources.</p>")
type tagFilter = {
  @ocaml.doc("<p>A list of zero or more tag values. If no values are provided, then the filter matches
            any tag with the specified key, regardless of its value.</p>")
  tagValues: option<tagValueList>,
  @ocaml.doc("<p>The tag key. This must have a valid string value and can't be empty.</p>")
  tagKey: option<tagKey>,
}
type serviceNameAndResourceTypeList = array<serviceNameAndResourceType>
type resourceSharePermissionList = array<resourceSharePermissionSummary>
type resourceShareAssociationList = array<resourceShareAssociation>
type resourceList = array<resource>
type principalList = array<principal>
type tagFilters = array<tagFilter>
@ocaml.doc(
  "<p>Describes an invitation for an Amazon Web Services account to join a resource share.</p>"
)
type resourceShareInvitation = {
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the IAM user or role that received the invitation.</p>"
  )
  receiverArn: option<string_>,
  @ocaml.doc(
    "<p>To view the resources associated with a pending resource share invitation, use <a>ListPendingInvitationResources</a>.</p>"
  )
  resourceShareAssociations: option<resourceShareAssociationList>,
  @ocaml.doc("<p>The current status of the invitation.</p>")
  status: option<resourceShareInvitationStatus>,
  @ocaml.doc("<p>The date and time when the invitation was sent.</p>")
  invitationTimestamp: option<dateTime>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that received the invitation.</p>")
  receiverAccountId: option<string_>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that sent the invitation.</p>")
  senderAccountId: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share</p>"
  )
  resourceShareArn: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") resourceShareName: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the invitation.</p>"
  )
  resourceShareInvitationArn: option<string_>,
}
@ocaml.doc("<p>Describes a resource share in RAM.</p>")
type resourceShare = {
  @ocaml.doc("<p>Indicates how the resource share was created. Possible values include:</p>
        <ul>
            <li>
                <p>
                  <code>CREATED_FROM_POLICY</code> - Indicates that the resource share was created from an
                    Identity and Access Management (IAM) resource-based permission policy attached to the resource.
                    This type of resource share is visible only to the Amazon Web Services account that created it. You
                    can't modify it in RAM unless you promote it. For more information, see <a>PromoteResourceShareCreatedFromPolicy</a>.</p>
            </li>
            <li>
                <p>
                  <code>PROMOTING_TO_STANDARD</code> - The resource share is in the process of being
                    promoted. For more information, see <a>PromoteResourceShareCreatedFromPolicy</a>.</p>
            </li>
            <li>
                <p>
                  <code>STANDARD</code> - Indicates that the resource share was created in RAM using the
                    console or APIs. These resource shares are visible to all principals you share the resource share
                    with. You can modify these resource shares in RAM using the console or APIs.</p>
            </li>
         </ul>")
  featureSet: option<resourceShareFeatureSet>,
  @ocaml.doc("<p>The date and time when the resource share was last updated.</p>")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The date and time when the resource share was created.</p>")
  creationTime: option<dateTime>,
  @ocaml.doc("<p>The tag key and value pairs attached to the resource share.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>A message about the status of the resource share.</p>")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The current status of the resource share.</p>")
  status: option<resourceShareStatus>,
  @ocaml.doc("<p>Indicates whether principals outside your organization in Organizations can be associated
            with a resource share.</p>")
  allowExternalPrincipals: option<boolean_>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the resource share.</p>")
  owningAccountId: option<string_>,
  @ocaml.doc("<p>The name of the resource share.</p>") name: option<string_>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share</p>"
  )
  resourceShareArn: option<string_>,
}
type resourceShareList = array<resourceShare>
type resourceShareInvitationList = array<resourceShareInvitation>
@ocaml.doc("<p>This is the <i>Resource Access Manager API Reference</i>. This documentation provides
            descriptions and syntax for each of the actions and data types in RAM. RAM is a
            service that helps you securely share your Amazon Web Services resources across Amazon Web Services accounts. If you
            have multiple Amazon Web Services accounts, you can use RAM to share those resources with other
            accounts. If you use Organizations to manage your accounts, then you share your resources
            with your organization or organizational units (OUs). For supported resource types, you
            can also share resources with individual Identity and Access Management (IAM) roles an users. </p>
        
        <p>To learn more about RAM, see the following resources:</p>
        <ul>
            <li>
                <p>
                    <a href=\"http://aws.amazon.com/ram\">Resource Access Manager product page</a>
               </p>
            </li>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/\">Resource Access Manager User
                        Guide</a>
               </p>
            </li>
         </ul>")
module PromoteResourceShareCreatedFromPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share to promote.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>A return value of <code>true</code> indicates that the request succeeded. 
             A value of <code>false</code> indicates that the request failed.</p>")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "PromoteResourceShareCreatedFromPolicyCommand"
  let make = (~resourceShareArn, ()) => new({resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSharingWithAwsOrganization = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>A return value of <code>true</code> indicates that the request succeeded. 
             A value of <code>false</code> indicates that the request failed.</p>")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "EnableSharingWithAwsOrganizationCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateResourceSharePermission = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the permission to disassociate from the resource share. Changes to permissions
            take effect immediately.</p>")
    permissionArn: string_,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share from which you want to disassociate a permission.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>A return value of <code>true</code> indicates that the request succeeded. 
             A value of <code>false</code> indicates that the request failed.</p>")
    returnValue: option<boolean_>,
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share to delete.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>A return value of <code>true</code> indicates that the request succeeded. 
             A value of <code>false</code> indicates that the request failed.</p>")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "DeleteResourceShareCommand"
  let make = (~resourceShareArn, ~clientToken=?, ()) =>
    new({clientToken: clientToken, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateResourceSharePermission = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the version of the RAM permission to associate with the resource share. If you don't
            specify this parameter, the operation uses the version designated as the default. You
            can use the <a>ListPermissionVersions</a> operation to discover the available
            versions of a permission.</p>")
    permissionVersion: option<integer_>,
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>Specifies whether the specified permission should replace or add to the existing
            permission associated with the resource share. Use <code>true</code> to replace the current
            permissions. Use <code>false</code> to add the permission to the current permission. The
            default value is <code>false</code>.</p>
        <note>
            <p>A resource share can have only one permission per resource type. If a resource share already has a
                permission for the specified resource type and you don't set <code>replace</code> to
                    <code>true</code> then the operation returns an error. This helps prevent
                accidental overwriting of a permission.</p>
        </note>")
    replace: option<boolean_>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the RAM permission to associate with the resource share.
            To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href=\"https://console.aws.amazon.com/ram/home#Permissions:\">Permissions library</a> page in the RAM console and 
             then choose the name of the permission. The ARN is displayed on the detail page.</p>")
    permissionArn: string_,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share to which you want to add or replace
            permissions.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>A return value of <code>true</code> indicates that the request succeeded. 
             A value of <code>false</code> indicates that the request failed.</p>")
    returnValue: option<boolean_>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "AssociateResourceSharePermissionCommand"
  let make = (
    ~permissionArn,
    ~resourceShareArn,
    ~permissionVersion=?,
    ~clientToken=?,
    ~replace=?,
    (),
  ) =>
    new({
      permissionVersion: permissionVersion,
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
    @ocaml.doc("<p>Specifies a list of one or more tag keys that you want to remove.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove tags from. The tags are
            removed from the resource share, not the resources in the resource share.</p>")
    resourceShareArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-ram") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceShareArn, ()) =>
    new({tagKeys: tagKeys, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourcePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the principal.</p>") principal: option<string_>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of the resources whose policies you want to retrieve.</p>"
    )
    resourceArns: resourceArnList,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of resource policy documents in JSON format.</p>")
    policies: option<policyList>,
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
    @ocaml.doc("<p>Specifies identifier for the version of the RAM permission to retrieve. If you don't
            specify this parameter, the operation retrieves the default version.</p>")
    permissionVersion: option<integer_>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the permission whose contents you want to retrieve.
            To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href=\"https://console.aws.amazon.com/ram/home#Permissions:\">Permissions library</a> page in the RAM console and 
             then choose the name of the permission. The ARN is displayed on the detail page.</p>")
    permissionArn: string_,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about the permission.</p>")
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
    @ocaml.doc("<p>A list of one or more tag key and value pairs. The tag key must be present and not be
            an empty string. The tag value must be present but can be an empty string.</p>")
    tags: tagList_,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share that you want to add tags to.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-ram") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceShareArn, ()) => new({tags: tags, resourceShareArn: resourceShareArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies that you want the results to include only 
            resources that have the specified scope.</p>
            <ul>
            <li>
               <p>
                  <code>ALL</code> – the results include both global and 
                    regional resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>GLOBAL</code> – the results include only global 
                    resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>REGIONAL</code> – the results include only regional 
                    resources or resource types.</p>
            </li>
         </ul>
            <p>The default value is <code>ALL</code>.</p>")
    resourceRegionScope: option<resourceRegionScopeFilter>,
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list only resources in the resource shares identified by the
            specified <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>Specifies that you want to list only the resource shares that include resources with the
            specified <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>Specifies that you want to list only the resource shares that include resources of the specified
            resource type.</p>
        <p>For valid values, query the <a>ListResourceTypes</a> operation.</p>")
    resourceType: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list only the resource shares that are associated with the specified
            principal.</p>")
    principal: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list only the resource shares that match the following:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>SELF</code>
                  </b> – resources that
                    your account shares with other accounts</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>OTHER-ACCOUNTS</code>
                  </b> –
                    resources that other accounts share with your account</p>
            </li>
         </ul>")
    resourceOwner: resourceOwner,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain information about the resources.</p>")
    resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListResourcesCommand"
  let make = (
    ~resourceOwner,
    ~resourceRegionScope=?,
    ~maxResults=?,
    ~nextToken=?,
    ~resourceShareArns=?,
    ~resourceArns=?,
    ~resourceType=?,
    ~principal=?,
    (),
  ) =>
    new({
      resourceRegionScope: resourceRegionScope,
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
    @ocaml.doc("<p>Specifies that you want the results to include only 
            resources that have the specified scope.</p>
            <ul>
            <li>
               <p>
                  <code>ALL</code> – the results include both global and 
                    regional resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>GLOBAL</code> – the results include only global 
                    resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>REGIONAL</code> – the results include only regional 
                    resources or resource types.</p>
            </li>
         </ul>
            <p>The default value is <code>ALL</code>.</p>")
    resourceRegionScope: option<resourceRegionScopeFilter>,
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain information about the resource types that can be
            shared using RAM.</p>")
    resourceTypes: option<serviceNameAndResourceTypeList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListResourceTypesCommand"
  let make = (~resourceRegionScope=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({resourceRegionScope: resourceRegionScope, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceSharePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share for which you want to retrieve the associated
            permissions.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>An array of objects that describe the permissions associated with the resource share.</p>"
    )
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
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list information for only principals associated with the
            resource shares specified by a list the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>Specifies that you want to list information for only principals associated with resource shares
            that include the specified resource type.</p>
        <p>For a list of valid values, query the <a>ListResourceTypes</a>
            operation.</p>")
    resourceType: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list information for only the listed principals.</p>
        <p>You can include the following values:</p>
        <ul>
            <li>
                <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
               </p>
            </li>
            <li>
                <p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
                        <code>organizations::123456789012:organization/o-exampleorgid</code>
               </p>
            </li>
            <li>
                <p>An ARN of an organizational unit (OU) in Organizations, for example:
                        <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM role, for example:
                        <code>iam::123456789012:role/rolename</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM user, for example:
                        <code>iam::123456789012user/username</code>
               </p>
            </li>
         </ul>
        <note>
            <p>Not all resource types can be shared with IAM roles and users. 
             For more information, see <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types\">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
                    Guide</i>.</p>
         </note>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>Specifies that you want to list principal information for the resource share with the specified
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a>.</p>")
    resourceArn: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list information for only resource shares that match the
            following:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>SELF</code>
                  </b> – principals that
                    your account is sharing resources with</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>OTHER-ACCOUNTS</code>
                  </b> –
                    principals that are sharing resources with your account</p>
            </li>
         </ul>")
    resourceOwner: resourceOwner,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain the details about the principals.</p>")
    principals: option<principalList>,
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
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want to list permissions for only the specified resource type. For
            example, to list only permissions that apply to EC2 subnets, specify
                <code>ec2:Subnet</code>. You can use the <a>ListResourceTypes</a>
            operation to get the specific string required.</p>")
    resourceType: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects with information about the permissions.</p>")
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListPermissionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~resourceType=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissionVersions = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the RAM permission whose versions you want to list. You
            can use the <code>permissionVersion</code> parameter on the <a>AssociateResourceSharePermission</a> operation to specify a non-default
            version to attach.</p>")
    permissionArn: string_,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>An array of objects that contain details for each of the available versions.</p>"
    )
    permissions: option<resourceSharePermissionList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "ListPermissionVersionsCommand"
  let make = (~permissionArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, permissionArn: permissionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPendingInvitationResources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies that you want the results to include only 
            resources that have the specified scope.</p>
            <ul>
            <li>
               <p>
                  <code>ALL</code> – the results include both global and 
                    regional resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>GLOBAL</code> – the results include only global 
                    resources or resource types.</p>
            </li>
            <li>
               <p>
                  <code>REGIONAL</code> – the results include only regional 
                    resources or resource types.</p>
            </li>
         </ul>
            <p>The default value is <code>ALL</code>.</p>")
    resourceRegionScope: option<resourceRegionScopeFilter>,
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the invitation. You can use <a>GetResourceShareInvitations</a> to find the ARN of the invitation.</p>"
    )
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain the information about the resources included the
            specified resource share.</p>")
    resources: option<resourceList>,
  }
  @module("@aws-sdk/client-ram") @new
  external new: request => t = "ListPendingInvitationResourcesCommand"
  let make = (
    ~resourceShareInvitationArn,
    ~resourceRegionScope=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      resourceRegionScope: resourceRegionScope,
      maxResults: maxResults,
      nextToken: nextToken,
      resourceShareInvitationArn: resourceShareInvitationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceShareAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want to retrieve only associations with this status.</p>")
    associationStatus: option<resourceShareAssociationStatus>,
    @ocaml.doc("<p>Specifies the ID of the principal whose resource shares you want to retrieve. This can be an
            Amazon Web Services account ID, an organization ID, an organizational unit ID, or the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an
            individual IAM user or role.</p>
        <p>You cannot specify this parameter if the association type is
            <code>RESOURCE</code>.</p>")
    principal: option<string_>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource whose resource shares you want to retrieve.</p>
        <p>You cannot specify this parameter if the association type is
            <code>PRINCIPAL</code>.</p>")
    resourceArn: option<string_>,
    @ocaml.doc("<p>Specifies a list of <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of the resource share whose associations you want to
            retrieve.</p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc("<p>Specifies whether you want to retrieve the associations that involve a specified
            resource or principal.</p>
        <ul>
            <li>
                <p>
                  <code>PRINCIPAL</code> – list the principals that are associated with
                    the specified resource share.</p>
            </li>
            <li>
                <p>
                  <code>RESOURCE</code> – list the resources that are associated with the
                    specified resource share.</p>
            </li>
         </ul>")
    associationType: resourceShareAssociationType,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain the details about the associations.</p>")
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>Specifies a list of one or more principals that no longer are to have access to the
            resources in this resource share.</p>
        <p>You can include the following values:</p>
        <ul>
            <li>
                <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
               </p>
            </li>
            <li>
                <p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
                        <code>organizations::123456789012:organization/o-exampleorgid</code>
               </p>
            </li>
            <li>
                <p>An ARN of an organizational unit (OU) in Organizations, for example:
                        <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM role, for example:
                        <code>iam::123456789012:role/rolename</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM user, for example:
                        <code>iam::123456789012user/username</code>
               </p>
            </li>
         </ul>
        <note>
            <p>Not all resource types can be shared with IAM roles and users. 
             For more information, see <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types\">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
                    Guide</i>.</p>
         </note>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>Specifies a list of <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> for one or more resources that you want to remove from
            the resource share. After the operation runs, these resources are no longer shared with principals
            outside of the Amazon Web Services account that created the resources.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc(
      "<p>Specifies <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove resources from.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain information about the updated associations for this
            resource share.</p>")
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>Specifies a list of principals to whom you want to the resource share. This can be
                <code>null</code> if you want to add only resources.</p>
        <p>What the principals can do with the resources in the share is determined by the RAM
            permissions that you associate with the resource share. See <a>AssociateResourceSharePermission</a>.</p>
        <p>You can include the following values:</p>
        <ul>
            <li>
                <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
               </p>
            </li>
            <li>
                <p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
                        <code>organizations::123456789012:organization/o-exampleorgid</code>
               </p>
            </li>
            <li>
                <p>An ARN of an organizational unit (OU) in Organizations, for example:
                        <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM role, for example:
                        <code>iam::123456789012:role/rolename</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM user, for example:
                        <code>iam::123456789012user/username</code>
               </p>
            </li>
         </ul>
        <note>
            <p>Not all resource types can be shared with IAM roles and users. 
             For more information, see <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types\">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
                    Guide</i>.</p>
         </note>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>Specifies a list of <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of the resources that you want to share. This can be
                <code>null</code> if you want to add only principals.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share that you want to add principals or resources
            to.</p>")
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain information about the associations.</p>")
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>Specifies whether principals outside your organization in Organizations can be associated
            with a resource share.</p>")
    allowExternalPrincipals: option<boolean_>,
    @ocaml.doc("<p>If specified, the new name that you want to attach to the resource share.</p>")
    name: option<string_>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the resource share that you want to modify.</p>"
    )
    resourceShareArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the invitation that you want to reject.</p>"
    )
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>An object that contains the details about the rejected invitation.</p>")
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
    @ocaml.doc("<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of the RAM permission to associate with the resource share. If you do
            not specify an ARN for the permission, RAM automatically attaches the default version
            of the permission for each resource type. You can associate only one permission with
            each resource type included in the resource share.</p>")
    permissionArns: option<permissionArnList>,
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>Specifies whether principals outside your organization in Organizations can be associated
            with a resource share. A value of <code>true</code> lets you share with individual Amazon Web Services accounts
            that are <i>not</i> in your organization. A value of <code>false</code>
            only has meaning if your account is a member of an Amazon Web Services Organization. The default value
            is <code>true</code>.</p>")
    allowExternalPrincipals: option<boolean_>,
    @ocaml.doc("<p>Specifies one or more tags to attach to the resource share itself. It doesn't attach the tags to
            the resources associated with the resource share.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies a list of one or more principals to associate with the resource share.</p>
        <p>You can include the following values:</p>
        <ul>
            <li>
                <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
               </p>
            </li>
            <li>
                <p>An <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
                        <code>organizations::123456789012:organization/o-exampleorgid</code>
               </p>
            </li>
            <li>
                <p>An ARN of an organizational unit (OU) in Organizations, for example:
                        <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM role, for example:
                        <code>iam::123456789012:role/rolename</code>
               </p>
            </li>
            <li>
                <p>An ARN of an IAM user, for example:
                        <code>iam::123456789012user/username</code>
               </p>
            </li>
         </ul>
        <note>
            <p>Not all resource types can be shared with IAM roles and users. 
             For more information, see <a href=\"https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types\">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
                    Guide</i>.</p>
         </note>")
    principals: option<principalArnOrIdList>,
    @ocaml.doc("<p>Specifies a list of one or more ARNs of the resources to associate with the
            resource share.</p>")
    resourceArns: option<resourceArnList>,
    @ocaml.doc("<p>Specifies the name of the resource share.</p>") name: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>An object with information about the new resource share.</p>")
    resourceShare: option<resourceShare>,
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
    @ocaml.doc("<p>Specifies a unique, case-sensitive identifier that you provide to
             ensure the idempotency of the request. This lets you safely retry the request without
             accidentally performing the same operation a second time. Passing the same value to a
             later call to an operation requires that you also pass the same value for all other 
             parameters. We recommend that you use a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID type of 
             value.</a>.</p>
             <p>If you don't provide this value, then Amazon Web Services generates a random one for
             you.</p>")
    clientToken: option<string_>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a> of the invitation that you want to accept.</p>"
    )
    resourceShareInvitationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The idempotency identifier associated with this request. If you
             want to repeat the same operation in an idempotent manner then you must include this
             value in the <code>clientToken</code> request parameter of that later call. All other 
             parameters must also have the same values that you used in the first call.</p>")
    clientToken: option<string_>,
    @ocaml.doc("<p>An object that contains information about the specified invitation.</p>")
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
    @ocaml.doc("<p>Specifies that you want to retrieve details of only those resource shares that use the RAM
            permission with this <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resoure Name (ARN)</a>.</p>")
    permissionArn: option<string_>,
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want to retrieve details of only those resource shares that match the
            specified tag keys and values.</p>")
    tagFilters: option<tagFilters>,
    @ocaml.doc("<p>Specifies the name of an individual resource share that you want to retrieve details
            about.</p>")
    name: option<string_>,
    @ocaml.doc("<p>Specifies that you want to retrieve details of only those resource shares that match the
            following:</p>
        <ul>
            <li>
                <p>
                  <b>
                     <code>SELF</code>
                  </b> – resource shares that your
                    account shares with other accounts</p>
            </li>
            <li>
                <p>
                  <b>
                     <code>OTHER-ACCOUNTS</code>
                  </b> – resource shares
                    that other accounts share with your account</p>
            </li>
         </ul>")
    resourceOwner: resourceOwner,
    @ocaml.doc("<p>Specifies that you want to retrieve details of only those resource shares that have this
            status.</p>")
    resourceShareStatus: option<resourceShareStatus>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of individual resource shares that you want information about.</p>"
    )
    resourceShareArns: option<resourceShareArnList>,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain the information about the resource shares.</p>")
    resourceShares: option<resourceShareList>,
  }
  @module("@aws-sdk/client-ram") @new external new: request => t = "GetResourceSharesCommand"
  let make = (
    ~resourceOwner,
    ~permissionArn=?,
    ~maxResults=?,
    ~nextToken=?,
    ~tagFilters=?,
    ~name=?,
    ~resourceShareStatus=?,
    ~resourceShareArns=?,
    (),
  ) =>
    new({
      permissionArn: permissionArn,
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
    @ocaml.doc("<p>Specifies the total number of results that you want included on each page 
             of the response. If you do not include this parameter, it defaults to a value that is 
             specific to the operation. If additional items exist beyond the number you specify, the
             <code>NextToken</code> response element is returned with a value (not null).
             Include the specified value as the <code>NextToken</code> request parameter in the next 
             call to the operation to get the next part of the results. Note that the service might 
             return fewer results than the maximum even when there are more results available. You 
             should check <code>NextToken</code> after every operation to ensure that you receive all
             of the results.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies that you want to receive the next page of results. Valid 
             only if you received a <code>NextToken</code> response in the previous request. If you
             did, it indicates that more output is available. Set this parameter to the value 
             provided by the previous call's <code>NextToken</code> response to request the 
             next page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>Specifies that you want details about invitations only for the resource shares described by this
            list of <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a>
         </p>")
    resourceShareArns: option<resourceShareArnList>,
    @ocaml.doc(
      "<p>Specifies the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> of the resource share invitations you want information about.</p>"
    )
    resourceShareInvitationArns: option<resourceShareInvitationArnList>,
  }
  type response = {
    @ocaml.doc("<p>If present, this value indicates that more output is available than 
             is included in the current response. Use this value in the <code>NextToken</code> 
             request parameter in a subsequent call to the operation to get the next part of the 
             output. You should repeat this until the <code>NextToken</code> response element comes 
             back as <code>null</code>. This indicates that this is the last page of results.</p>")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain the details about the invitations.</p>")
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
