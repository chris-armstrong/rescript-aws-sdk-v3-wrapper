type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rbin") @new external createClient: unit => awsServiceClient = "RbinClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("INVALID_PARAMETER_VALUE") #INVALID_PARAMETER_VALUE
  | @as("INVALID_PAGE_TOKEN") #INVALID_PAGE_TOKEN
]
type tagValue = string
type tagKey = string
type serviceQuotaExceededExceptionReason = [@as("SERVICE_QUOTA_EXCEEDED") #SERVICE_QUOTA_EXCEEDED]
type ruleStatus = [@as("available") #Available | @as("pending") #Pending]
type ruleIdentifier = string
type ruleArn = string
type retentionPeriodValue = int
type retentionPeriodUnit = [@as("DAYS") #DAYS]
type resourceType = [@as("EC2_IMAGE") #EC2_IMAGE | @as("EBS_SNAPSHOT") #EBS_SNAPSHOT]
type resourceTagValue = string
type resourceTagKey = string
type resourceNotFoundExceptionReason = [@as("RULE_NOT_FOUND") #RULE_NOT_FOUND]
type nextToken = string
type maxResults = int
type errorMessage = string
type description = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Information about the tags to assign to the retention rule.</p>")
type tag = {
  @ocaml.doc("<p>The tag value.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: tagKey,
}
@ocaml.doc(
  "<p>Information about the retention period for which the retention rule is to retain resources.</p>"
)
type retentionPeriod = {
  @ocaml.doc("<p>The unit of time in which the retention period is measured. Currently, only <code>DAYS</code> 
      is supported.</p>")
  @as("RetentionPeriodUnit")
  retentionPeriodUnit: retentionPeriodUnit,
  @ocaml.doc("<p>The period value for which the retention rule is to retain resources. The period is measured using 
      the unit specified for <b>RetentionPeriodUnit</b>.</p>")
  @as("RetentionPeriodValue")
  retentionPeriodValue: retentionPeriodValue,
}
@ocaml.doc("<p>Information about the resource tags used to identify resources that are retained by the retention 
      rule.</p>")
type resourceTag = {
  @ocaml.doc("<p>The tag value.</p>") @as("ResourceTagValue")
  resourceTagValue: option<resourceTagValue>,
  @ocaml.doc("<p>The tag key.</p>") @as("ResourceTagKey") resourceTagKey: resourceTagKey,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Information about a Recycle Bin retention rule.</p>")
type ruleSummary = {
  @ocaml.doc(
    "<p>Information about the retention period for which the retention rule is to retain resources.</p>"
  )
  @as("RetentionPeriod")
  retentionPeriod: option<retentionPeriod>,
  @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
  identifier: option<ruleIdentifier>,
}
type resourceTags = array<resourceTag>
type ruleSummaryList = array<ruleSummary>
@ocaml.doc("<p>This is the <i>Recycle Bin API Reference</i>. This documentation provides 
      descriptions and syntax for each of the actions and data types in Recycle Bin.</p>
    
         <p>Recycle Bin is a resource recovery feature that enables you to restore accidentally 
      deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your resources are 
      deleted, they are retained in the Recycle Bin for a time period that you specify.</p> 
    
         <p>You can restore a resource from the Recycle Bin at any time before its retention period 
      expires. After you restore a resource from the Recycle Bin, the resource is removed from the 
      Recycle Bin, and you can then use it in the same way you use any other resource of that type 
      in your account. If the retention period expires and the resource is not restored, the resource 
      is permanently deleted from the Recycle Bin and is no longer available for recovery. For more 
      information about Recycle Bin, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-recycle-bin.html\">
        Recycle Bin</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>")
module DeleteRule = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: ruleIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-rbin") @new external new: request => t = "DeleteRuleCommand"
  let make = (~identifier, ()) => new({identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the retention rule.</p>") @as("ResourceArn")
    resourceArn: ruleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-rbin") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateRule = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the resource tags to use to identify resources that are to be retained by a 
  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
         <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
         <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
      does not have any resource tags specified. It retains all deleted resources of the specified 
      resource type in the Region in which the rule is created, even if the resources are not tagged.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc("<p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots 
      and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To 
      retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>Information about the retention period for which the retention rule is to retain resources.</p>"
    )
    @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: ruleIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
      state retain resources.</p>")
    @as("Status")
    status: option<ruleStatus>,
    @ocaml.doc("<p>Information about the resource tags used to identify resources that are retained by the retention 
      rule.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc("<p>The resource type retained by the retention rule.</p>") @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
    description: option<description>,
    @as("RetentionPeriod") retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: option<ruleIdentifier>,
  }
  @module("@aws-sdk/client-rbin") @new external new: request => t = "UpdateRuleCommand"
  let make = (
    ~identifier,
    ~resourceTags=?,
    ~resourceType=?,
    ~description=?,
    ~retentionPeriod=?,
    (),
  ) => new({resourceTags, resourceType, description, retentionPeriod, identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the tags to assign to the retention rule.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the retention rule.</p>") @as("ResourceArn")
    resourceArn: ruleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-rbin") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the retention rule.</p>") @as("ResourceArn")
    resourceArn: ruleArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags assigned to the retention rule.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-rbin") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRule = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: ruleIdentifier,
  }
  type response = {
    @ocaml.doc("<p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
      state retain resources.</p>")
    @as("Status")
    status: option<ruleStatus>,
    @ocaml.doc("<p>Information about the resource tags used to identify resources that are retained by the retention 
      rule.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc(
      "<p>Information about the retention period for which the retention rule is to retain resources.</p>"
    )
    @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The resource type retained by the retention rule.</p>") @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: option<ruleIdentifier>,
  }
  @module("@aws-sdk/client-rbin") @new external new: request => t = "GetRuleCommand"
  let make = (~identifier, ()) => new({identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRule = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the resource tags to use to identify resources that are to be retained by a 
  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
         <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
         <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
      does not have any resource tags specified. It retains all deleted resources of the specified 
      resource type in the Region in which the rule is created, even if the resources are not tagged.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc("<p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots 
      and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To 
      retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>")
    @as("ResourceType")
    resourceType: resourceType,
    @ocaml.doc("<p>Information about the tags to assign to the retention rule.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc(
      "<p>Information about the retention period for which the retention rule is to retain resources.</p>"
    )
    @as("RetentionPeriod")
    retentionPeriod: retentionPeriod,
  }
  type response = {
    @ocaml.doc("<p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
      state retain resources.</p>")
    @as("Status")
    status: option<ruleStatus>,
    @ocaml.doc("<p>Information about the resource tags used to identify resources that are retained by the retention 
      rule.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc("<p>The resource type retained by the retention rule.</p>") @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>Information about the tags assigned to the retention rule.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The retention rule description.</p>") @as("Description")
    description: option<description>,
    @as("RetentionPeriod") retentionPeriod: option<retentionPeriod>,
    @ocaml.doc("<p>The unique ID of the retention rule.</p>") @as("Identifier")
    identifier: option<ruleIdentifier>,
  }
  @module("@aws-sdk/client-rbin") @new external new: request => t = "CreateRuleCommand"
  let make = (~resourceType, ~retentionPeriod, ~resourceTags=?, ~tags=?, ~description=?, ()) =>
    new({resourceTags, resourceType, tags, description, retentionPeriod})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRules = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the resource tags used to identify resources that are retained by the retention 
      rule.</p>")
    @as("ResourceTags")
    resourceTags: option<resourceTags>,
    @ocaml.doc("<p>The resource type retained by the retention rule. Only retention rules that retain 
      the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed 
      AMIs are supported. To list retention rules that retain snapshots, specify 
      <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify 
      <code>EC2_IMAGE</code>.</p>")
    @as("ResourceType")
    resourceType: resourceType,
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the retention rules.</p>") @as("Rules")
    rules: option<ruleSummaryList>,
  }
  @module("@aws-sdk/client-rbin") @new external new: request => t = "ListRulesCommand"
  let make = (~resourceType, ~resourceTags=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({resourceTags, resourceType, nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
