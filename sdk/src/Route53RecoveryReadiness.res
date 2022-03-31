type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-route53-recovery-readiness") @new
external createClient: unit => awsServiceClient = "Route53RecoveryReadinessClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __stringPatternAWSAZaZ09AZaZ09 = string
type __stringMax64PatternAAZAZ09Z = string
type __stringMax64 = string
type __stringMax256 = string
type __string = string
@ocaml.doc(
  "<p>The time (UTC) that the cell was last checked for readiness, in ISO-8601 format.</p>"
)
type readinessCheckTimestamp = Js.Date.t
@ocaml.doc("<p>The readiness status.</p>")
type readiness = [
  | @as("NOT_AUTHORIZED") #NOT_AUTHORIZED
  | @as("UNKNOWN") #UNKNOWN
  | @as("NOT_READY") #NOT_READY
  | @as("READY") #READY
]
type maxResults = int
@ocaml.doc(
  "<p>The time that a recovery group was last assessed for recommendations, in UTC ISO-8601 format.</p>"
)
type lastAuditTimestamp = Js.Date.t
@ocaml.doc("<p>CrossAccountAuthorization</p>") type crossAccountAuthorization = string
type __listOf__string = array<__string>
type __listOfCrossAccountAuthorization = array<crossAccountAuthorization>
@ocaml.doc("<p>A collection of tags associated with a resource.</p>")
type tags = Js.Dict.t<__string>
@ocaml.doc(
  "<p>The result of a successful Resource request, with status for an individual resource.</p>"
)
type resourceResult = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<__string>,
  @ocaml.doc("<p>The readiness of a resource.</p>") @as("Readiness") readiness: readiness,
  @ocaml.doc(
    "<p>The time (UTC) that the resource was last checked for readiness, in ISO-8601 format.</p>"
  )
  @as("LastCheckedTimestamp")
  lastCheckedTimestamp: readinessCheckTimestamp,
  @ocaml.doc("<p>The component id of the resource.</p>") @as("ComponentId")
  componentId: option<__string>,
}
@ocaml.doc(
  "<p>Recommendations that are provided to make an application more recovery resilient.</p>"
)
type recommendation = {
  @ocaml.doc(
    "<p>Text of the recommendations that are provided to make an application more recovery resilient.</p>"
  )
  @as("RecommendationText")
  recommendationText: __string,
}
@ocaml.doc(
  "<p>Summary of all readiness check statuses in a recovery group, paginated in GetRecoveryGroupReadinessSummary and GetCellReadinessSummary.</p>"
)
type readinessCheckSummary = {
  @ocaml.doc("<p>The name of a readiness check.</p>") @as("ReadinessCheckName")
  readinessCheckName: option<__string>,
  @ocaml.doc("<p>The readiness status of this readiness check.</p>") @as("Readiness")
  readiness: option<readiness>,
}
@ocaml.doc("<p>The Route 53 resource that a DNS target resource record points to.</p>")
type r53ResourceRecord = {
  @ocaml.doc("<p>The Route 53 Resource Record Set ID.</p>") @as("RecordSetId")
  recordSetId: option<__string>,
  @ocaml.doc("<p>The DNS target domain name.</p>") @as("DomainName") domainName: option<__string>,
}
@ocaml.doc("<p>The Network Load Balancer resource that a DNS target resource points to.</p>")
type nlbresource = {
  @ocaml.doc("<p>The Network Load Balancer resource Amazon Resource Name (ARN).</p>") @as("Arn")
  arn: option<__string>,
}
@ocaml.doc("<p>Information relating to readiness check status.</p>")
type message = {
  @ocaml.doc("<p>The text of a readiness check message.</p>") @as("MessageText")
  messageText: option<__string>,
}
@ocaml.doc(
  "<p>Readiness rule information, including the resource type, rule ID, and rule description.</p>"
)
type listRulesOutput = {
  @ocaml.doc("<p>The ID for the readiness rule.</p>") @as("RuleId") ruleId: __stringMax64,
  @ocaml.doc("<p>The description of a readiness rule.</p>") @as("RuleDescription")
  ruleDescription: __stringMax256,
  @ocaml.doc("<p>The resource type that the readiness rule applies to.</p>") @as("ResourceType")
  resourceType: __stringMax64,
}
type __listOfResourceResult = array<resourceResult>
type __listOfRecommendation = array<recommendation>
type __listOfReadinessCheckSummary = array<readinessCheckSummary>
type __listOfMessage = array<message>
type __listOfListRulesOutput = array<listRulesOutput>
@ocaml.doc("<p>The target resource that the Route 53 record points to.</p>")
type targetResource = {
  @ocaml.doc("<p>The Route 53 resource.</p>") @as("R53Resource")
  r53Resource: option<r53ResourceRecord>,
  @ocaml.doc("<p>The Network Load Balancer Resource.</p>") @as("NLBResource")
  nlbresource: option<nlbresource>,
}
@ocaml.doc("<p>A representation of the application, typically containing multiple cells.</p>")
type recoveryGroupOutput = {
  @ocaml.doc("<p>The tags associated with the recovery group.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The name of the recovery group.</p>") @as("RecoveryGroupName")
  recoveryGroupName: __stringMax64PatternAAZAZ09Z,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recovery group.</p>")
  @as("RecoveryGroupArn")
  recoveryGroupArn: __stringMax256,
  @ocaml.doc("<p>A list of a cell's Amazon Resource Names (ARNs).</p>") @as("Cells")
  cells: __listOf__string,
}
@ocaml.doc("<p>A readiness check.</p>")
type readinessCheckOutput = {
  @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>Name of the resource set to be checked.</p>") @as("ResourceSet")
  resourceSet: __stringMax64PatternAAZAZ09Z,
  @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
  readinessCheckName: option<__stringMax64PatternAAZAZ09Z>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with a readiness check.</p>")
  @as("ReadinessCheckArn")
  readinessCheckArn: __stringMax256,
}
@ocaml.doc("<p>Information about a cell.</p>")
type cellOutput = {
  @ocaml.doc("<p>Tags on the resources.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc(
    "<p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>"
  )
  @as("ParentReadinessScopes")
  parentReadinessScopes: __listOf__string,
  @ocaml.doc("<p>A list of cell ARNs.</p>") @as("Cells") cells: __listOf__string,
  @ocaml.doc("<p>The name of the cell.</p>") @as("CellName") cellName: __stringMax64PatternAAZAZ09Z,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cell.</p>") @as("CellArn")
  cellArn: __stringMax256,
}
type __listOfRecoveryGroupOutput = array<recoveryGroupOutput>
type __listOfReadinessCheckOutput = array<readinessCheckOutput>
type __listOfCellOutput = array<cellOutput>
@ocaml.doc("<p>The result of a successful Rule request, with status for an individual rule.</p>")
type ruleResult = {
  @ocaml.doc("<p>The identifier of the rule.</p>") @as("RuleId") ruleId: __string,
  @ocaml.doc("<p>The readiness at rule level.</p>") @as("Readiness") readiness: readiness,
  @ocaml.doc("<p>Details about the resource's readiness.</p>") @as("Messages")
  messages: __listOfMessage,
  @ocaml.doc(
    "<p>The time the resource was last checked for readiness, in ISO-8601 format, UTC.</p>"
  )
  @as("LastCheckedTimestamp")
  lastCheckedTimestamp: readinessCheckTimestamp,
}
@ocaml.doc("<p>A component for DNS/routing control readiness checks and architecture checks.</p>")
type dnstargetResource = {
  @ocaml.doc("<p>The target resource of the DNS target resource.</p>") @as("TargetResource")
  targetResource: option<targetResource>,
  @ocaml.doc("<p>The type of DNS record of the target resource.</p>") @as("RecordType")
  recordType: option<__string>,
  @ocaml.doc(
    "<p>The Route 53 record set ID that uniquely identifies a DNS record, given a name and a type.</p>"
  )
  @as("RecordSetId")
  recordSetId: option<__string>,
  @ocaml.doc(
    "<p>The hosted zone Amazon Resource Name (ARN) that contains the DNS record with the provided name of the target resource.</p>"
  )
  @as("HostedZoneArn")
  hostedZoneArn: option<__string>,
  @ocaml.doc(
    "<p>The domain name that acts as an ingress point to a portion of the customer application.</p>"
  )
  @as("DomainName")
  domainName: option<__string>,
}
type __listOfRuleResult = array<ruleResult>
@ocaml.doc("<p>The resource element of a resource set.</p>")
type resource = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>")
  @as("ResourceArn")
  resourceArn: option<__string>,
  @ocaml.doc(
    "<p>A list of recovery group Amazon Resource Names (ARNs) and cell ARNs that this resource is contained within.</p>"
  )
  @as("ReadinessScopes")
  readinessScopes: option<__listOf__string>,
  @ocaml.doc("<p>The DNS target resource.</p>") @as("DnsTargetResource")
  dnsTargetResource: option<dnstargetResource>,
  @ocaml.doc(
    "<p>The component identifier of the resource, generated when DNS target resource is used.</p>"
  )
  @as("ComponentId")
  componentId: option<__string>,
}
type __listOfResource = array<resource>
@ocaml.doc("<p>A collection of resources of the same type.</p>")
type resourceSetOutput = {
  @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>A list of resource objects.</p>") @as("Resources") resources: __listOfResource,
  @ocaml.doc(
    "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
  )
  @as("ResourceSetType")
  resourceSetType: __stringPatternAWSAZaZ09AZaZ09,
  @ocaml.doc("<p>The name of the resource set.</p>") @as("ResourceSetName")
  resourceSetName: __stringMax64PatternAAZAZ09Z,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource set.</p>") @as("ResourceSetArn")
  resourceSetArn: __stringMax256,
}
type __listOfResourceSetOutput = array<resourceSetOutput>
@ocaml.doc("<p>Recovery readiness</p>")
module DeleteResourceSet = {
  type t
  type request = {
    @ocaml.doc("<p>Name of a resource set.</p>") @as("ResourceSetName") resourceSetName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "DeleteResourceSetCommand"
  let make = (~resourceSetName, ()) => new({resourceSetName: resourceSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRecoveryGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "DeleteRecoveryGroupCommand"
  let make = (~recoveryGroupName, ()) => new({recoveryGroupName: recoveryGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteReadinessCheck = {
  type t
  type request = {
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "DeleteReadinessCheckCommand"
  let make = (~readinessCheckName, ()) => new({readinessCheckName: readinessCheckName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCrossAccountAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The cross-account authorization.</p>") @as("CrossAccountAuthorization")
    crossAccountAuthorization: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "DeleteCrossAccountAuthorizationCommand"
  let make = (~crossAccountAuthorization, ()) =>
    new({crossAccountAuthorization: crossAccountAuthorization})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCell = {
  type t
  type request = {@ocaml.doc("<p>The name of the cell.</p>") @as("CellName") cellName: __string}
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "DeleteCellCommand"
  let make = (~cellName, ()) => new({cellName: cellName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateCrossAccountAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The cross-account authorization.</p>") @as("CrossAccountAuthorization")
    crossAccountAuthorization: crossAccountAuthorization,
  }
  type response = {
    @ocaml.doc("<p>The cross-account authorization.</p>") @as("CrossAccountAuthorization")
    crossAccountAuthorization: option<crossAccountAuthorization>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "CreateCrossAccountAuthorizationCommand"
  let make = (~crossAccountAuthorization, ()) =>
    new({crossAccountAuthorization: crossAccountAuthorization})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecoveryGroup = {
  type t
  @ocaml.doc("<p>Name of a recovery group.</p>")
  type request = {
    @ocaml.doc("<p>The name of a recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
    @ocaml.doc(
      "<p>A list of cell Amazon Resource Names (ARNs). This list completely replaces the previous list.</p>"
    )
    @as("Cells")
    cells: __listOf__string,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the recovery group.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The name of the recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recovery group.</p>")
    @as("RecoveryGroupArn")
    recoveryGroupArn: option<__stringMax256>,
    @ocaml.doc("<p>A list of a cell's Amazon Resource Names (ARNs).</p>") @as("Cells")
    cells: option<__listOf__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "UpdateRecoveryGroupCommand"
  let make = (~recoveryGroupName, ~cells, ()) =>
    new({recoveryGroupName: recoveryGroupName, cells: cells})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateReadinessCheck = {
  type t
  @ocaml.doc("<p>Name of a readiness check to describe.</p>")
  type request = {
    @ocaml.doc("<p>The name of the resource set to be checked.</p>") @as("ResourceSetName")
    resourceSetName: __string,
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>Name of the resource set to be checked.</p>") @as("ResourceSet")
    resourceSet: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with a readiness check.</p>")
    @as("ReadinessCheckArn")
    readinessCheckArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "UpdateReadinessCheckCommand"
  let make = (~resourceSetName, ~readinessCheckName, ()) =>
    new({resourceSetName: resourceSetName, readinessCheckName: readinessCheckName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCell = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of cell Amazon Resource Names (ARNs), which completely replaces the previous list.</p>"
    )
    @as("Cells")
    cells: __listOf__string,
    @ocaml.doc("<p>The name of the cell.</p>") @as("CellName") cellName: __string,
  }
  type response = {
    @ocaml.doc("<p>Tags on the resources.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>"
    )
    @as("ParentReadinessScopes")
    parentReadinessScopes: option<__listOf__string>,
    @ocaml.doc("<p>A list of cell ARNs.</p>") @as("Cells") cells: option<__listOf__string>,
    @ocaml.doc("<p>The name of the cell.</p>") @as("CellName")
    cellName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cell.</p>") @as("CellArn")
    cellArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "UpdateCellCommand"
  let make = (~cells, ~cellName, ()) => new({cells: cells, cellName: cellName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys for tags you add to resources.</p>") @as("TagKeys")
    tagKeys: __listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResources = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a resource.</p>") @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {@ocaml.doc("<p></p>") @as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListTagsForResourcesCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCrossAccountAuthorizations = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of cross-account authorizations.</p>") @as("CrossAccountAuthorizations")
    crossAccountAuthorizations: option<__listOfCrossAccountAuthorization>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListCrossAccountAuthorizationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecoveryGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the recovery group.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The name of the recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recovery group.</p>")
    @as("RecoveryGroupArn")
    recoveryGroupArn: option<__stringMax256>,
    @ocaml.doc("<p>A list of a cell's Amazon Resource Names (ARNs).</p>") @as("Cells")
    cells: option<__listOf__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetRecoveryGroupCommand"
  let make = (~recoveryGroupName, ()) => new({recoveryGroupName: recoveryGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReadinessCheck = {
  type t
  type request = {
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>Name of the resource set to be checked.</p>") @as("ResourceSet")
    resourceSet: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with a readiness check.</p>")
    @as("ReadinessCheckArn")
    readinessCheckArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetReadinessCheckCommand"
  let make = (~readinessCheckName, ()) => new({readinessCheckName: readinessCheckName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCell = {
  type t
  type request = {@ocaml.doc("<p>The name of the cell.</p>") @as("CellName") cellName: __string}
  type response = {
    @ocaml.doc("<p>Tags on the resources.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>"
    )
    @as("ParentReadinessScopes")
    parentReadinessScopes: option<__listOf__string>,
    @ocaml.doc("<p>A list of cell ARNs.</p>") @as("Cells") cells: option<__listOf__string>,
    @ocaml.doc("<p>The name of the cell.</p>") @as("CellName")
    cellName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cell.</p>") @as("CellArn")
    cellArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetCellCommand"
  let make = (~cellName, ()) => new({cellName: cellName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRecoveryGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the recovery group to create.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
    @ocaml.doc("<p>A list of the cell Amazon Resource Names (ARNs) in the recovery group.</p>")
    @as("Cells")
    cells: option<__listOf__string>,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the recovery group.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The name of the recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recovery group.</p>")
    @as("RecoveryGroupArn")
    recoveryGroupArn: option<__stringMax256>,
    @ocaml.doc("<p>A list of a cell's Amazon Resource Names (ARNs).</p>") @as("Cells")
    cells: option<__listOf__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "CreateRecoveryGroupCommand"
  let make = (~recoveryGroupName, ~tags=?, ~cells=?, ()) =>
    new({tags: tags, recoveryGroupName: recoveryGroupName, cells: cells})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateReadinessCheck = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the resource set to check.</p>") @as("ResourceSetName")
    resourceSetName: __string,
    @ocaml.doc("<p>The name of the readiness check to create.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>Name of the resource set to be checked.</p>") @as("ResourceSet")
    resourceSet: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with a readiness check.</p>")
    @as("ReadinessCheckArn")
    readinessCheckArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "CreateReadinessCheckCommand"
  let make = (~resourceSetName, ~readinessCheckName, ~tags=?, ()) =>
    new({tags: tags, resourceSetName: resourceSetName, readinessCheckName: readinessCheckName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCell = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>A list of cell Amazon Resource Names (ARNs) contained within this cell, for use in nested cells. For example, Availability Zones within specific Amazon Web Services Regions.</p>"
    )
    @as("Cells")
    cells: option<__listOf__string>,
    @ocaml.doc("<p>The name of the cell to create.</p>") @as("CellName") cellName: __string,
  }
  type response = {
    @ocaml.doc("<p>Tags on the resources.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The readiness scope for the cell, which can be a cell Amazon Resource Name (ARN) or a recovery group ARN. This is a list but currently can have only one element.</p>"
    )
    @as("ParentReadinessScopes")
    parentReadinessScopes: option<__listOf__string>,
    @ocaml.doc("<p>A list of cell ARNs.</p>") @as("Cells") cells: option<__listOf__string>,
    @ocaml.doc("<p>The name of the cell.</p>") @as("CellName")
    cellName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the cell.</p>") @as("CellArn")
    cellArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "CreateCellCommand"
  let make = (~cellName, ~tags=?, ~cells=?, ()) =>
    new({tags: tags, cells: cells, cellName: cellName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRules = {
  type t
  type request = {
    @ocaml.doc("<p>The resource type that a readiness rule applies to.</p>") @as("ResourceType")
    resourceType: option<__string>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of readiness rules for a specific resource type.</p>") @as("Rules")
    rules: option<__listOfListRulesOutput>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListRulesCommand"
  let make = (~resourceType=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({resourceType: resourceType, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecoveryGroupReadinessSummary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Summaries of the readiness checks for the recovery group.</p>")
    @as("ReadinessChecks")
    readinessChecks: option<__listOfReadinessCheckSummary>,
    @ocaml.doc("<p>The readiness status at a recovery group level.</p>") @as("Readiness")
    readiness: option<readiness>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetRecoveryGroupReadinessSummaryCommand"
  let make = (~recoveryGroupName, ~nextToken=?, ~maxResults=?, ()) =>
    new({recoveryGroupName: recoveryGroupName, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReadinessCheckStatus = {
  type t
  type request = {
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Summary of the readiness of resources.</p>") @as("Resources")
    resources: option<__listOfResourceResult>,
    @ocaml.doc("<p>The readiness at rule level.</p>") @as("Readiness") readiness: option<readiness>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>Top level messages for readiness check status</p>") @as("Messages")
    messages: option<__listOfMessage>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetReadinessCheckStatusCommand"
  let make = (~readinessCheckName, ~nextToken=?, ~maxResults=?, ()) =>
    new({readinessCheckName: readinessCheckName, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCellReadinessSummary = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the cell.</p>") @as("CellName") cellName: __string,
  }
  type response = {
    @ocaml.doc("<p>Summaries for the readiness checks that make up the cell.</p>")
    @as("ReadinessChecks")
    readinessChecks: option<__listOfReadinessCheckSummary>,
    @ocaml.doc("<p>The readiness at a cell level.</p>") @as("Readiness")
    readiness: option<readiness>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetCellReadinessSummaryCommand"
  let make = (~cellName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, cellName: cellName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetArchitectureRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a recovery group.</p>") @as("RecoveryGroupName")
    recoveryGroupName: __string,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of the recommendations for the customer's application.</p>")
    @as("Recommendations")
    recommendations: option<__listOfRecommendation>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "<p>The time that a recovery group was last assessed for recommendations, in UTC ISO-8601 format.</p>"
    )
    @as("LastAuditTimestamp")
    lastAuditTimestamp: option<lastAuditTimestamp>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetArchitectureRecommendationsCommand"
  let make = (~recoveryGroupName, ~nextToken=?, ~maxResults=?, ()) =>
    new({recoveryGroupName: recoveryGroupName, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecoveryGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of recovery groups.</p>") @as("RecoveryGroups")
    recoveryGroups: option<__listOfRecoveryGroupOutput>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListRecoveryGroupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReadinessChecks = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of readiness checks associated with the account.</p>")
    @as("ReadinessChecks")
    readinessChecks: option<__listOfReadinessCheckOutput>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListReadinessChecksCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCells = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of cells.</p>") @as("Cells") cells: option<__listOfCellOutput>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListCellsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReadinessCheckResourceStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The resource identifier, which is the Amazon Resource Name (ARN) or the identifier generated for the resource by Application Recovery Controller (for example, for a DNS target resource).</p>"
    )
    @as("ResourceIdentifier")
    resourceIdentifier: __string,
    @ocaml.doc("<p>Name of a readiness check.</p>") @as("ReadinessCheckName")
    readinessCheckName: __string,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Details of the rule's results.</p>") @as("Rules")
    rules: option<__listOfRuleResult>,
    @ocaml.doc("<p>The readiness at a rule level.</p>") @as("Readiness")
    readiness: option<readiness>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetReadinessCheckResourceStatusCommand"
  let make = (~resourceIdentifier, ~readinessCheckName, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      resourceIdentifier: resourceIdentifier,
      readinessCheckName: readinessCheckName,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceSet = {
  type t
  @ocaml.doc("<p>Name of a resource set.</p>")
  type request = {
    @ocaml.doc("<p>A list of resource objects.</p>") @as("Resources") resources: __listOfResource,
    @ocaml.doc(
      "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
    )
    @as("ResourceSetType")
    resourceSetType: __stringPatternAWSAZaZ09AZaZ09,
    @ocaml.doc("<p>Name of a resource set.</p>") @as("ResourceSetName") resourceSetName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of resource objects.</p>") @as("Resources")
    resources: option<__listOfResource>,
    @ocaml.doc(
      "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
    )
    @as("ResourceSetType")
    resourceSetType: option<__stringPatternAWSAZaZ09AZaZ09>,
    @ocaml.doc("<p>The name of the resource set.</p>") @as("ResourceSetName")
    resourceSetName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource set.</p>") @as("ResourceSetArn")
    resourceSetArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "UpdateResourceSetCommand"
  let make = (~resources, ~resourceSetType, ~resourceSetName, ()) =>
    new({resources: resources, resourceSetType: resourceSetType, resourceSetName: resourceSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceSet = {
  type t
  type request = {
    @ocaml.doc("<p>Name of a resource set.</p>") @as("ResourceSetName") resourceSetName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of resource objects.</p>") @as("Resources")
    resources: option<__listOfResource>,
    @ocaml.doc(
      "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
    )
    @as("ResourceSetType")
    resourceSetType: option<__stringPatternAWSAZaZ09AZaZ09>,
    @ocaml.doc("<p>The name of the resource set.</p>") @as("ResourceSetName")
    resourceSetName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource set.</p>") @as("ResourceSetArn")
    resourceSetArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "GetResourceSetCommand"
  let make = (~resourceSetName, ()) => new({resourceSetName: resourceSetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceSet = {
  type t
  type request = {
    @ocaml.doc("<p>A tag to associate with the parameters for a resource set.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A list of resource objects in the resource set.</p>") @as("Resources")
    resources: __listOfResource,
    @ocaml.doc(
      "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
    )
    @as("ResourceSetType")
    resourceSetType: __stringPatternAWSAZaZ09AZaZ09,
    @ocaml.doc("<p>The name of the resource set to create.</p>") @as("ResourceSetName")
    resourceSetName: __string,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A list of resource objects.</p>") @as("Resources")
    resources: option<__listOfResource>,
    @ocaml.doc(
      "<p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>"
    )
    @as("ResourceSetType")
    resourceSetType: option<__stringPatternAWSAZaZ09AZaZ09>,
    @ocaml.doc("<p>The name of the resource set.</p>") @as("ResourceSetName")
    resourceSetName: option<__stringMax64PatternAAZAZ09Z>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource set.</p>") @as("ResourceSetArn")
    resourceSetArn: option<__stringMax256>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "CreateResourceSetCommand"
  let make = (~resources, ~resourceSetType, ~resourceSetName, ~tags=?, ()) =>
    new({
      tags: tags,
      resources: resources,
      resourceSetType: resourceSetType,
      resourceSetName: resourceSetName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceSets = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A list of resource sets associated with the account.</p>") @as("ResourceSets")
    resourceSets: option<__listOfResourceSetOutput>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-route53-recovery-readiness") @new
  external new: request => t = "ListResourceSetsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
