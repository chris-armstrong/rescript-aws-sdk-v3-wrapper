type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-route53-recovery-control-config") @new
external createClient: unit => awsServiceClient = "Route53RecoveryControlConfigClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __stringMin1Max8096PatternS = string
type __stringMin1Max64PatternS = string
type __stringMin1Max32PatternS = string
type __stringMin1Max256PatternAZaZ09 = string
type __stringMin1Max128PatternAZaZ09 = string
type __stringMin0Max256PatternS = string
type __stringMax36PatternS = string
type __string = string
type __integer = int
type __boolean = bool
@ocaml.doc(
  "<p>The deployment status of a resource. Status can be one of the following:</p> <p>PENDING: Amazon Route 53 Application Recovery Controller is creating the resource.</p> <p>DEPLOYED: The resource is deployed and ready to use.</p> <p>PENDING_DELETION: Amazon Route 53 Application Recovery Controller is deleting the resource.</p>"
)
type status = [
  | @as("PENDING_DELETION") #PENDING_DELETION
  | @as("DEPLOYED") #DEPLOYED
  | @as("PENDING") #PENDING
]
@ocaml.doc(
  "<p>An enumerated type that determines how the evaluated rules are processed. RuleType can be one of the following:</p> <p>ATLEAST - At least N routing controls must be set. You specify N as the Threshold in the rule configuration.</p> <p>AND - All routing controls must be set. This is a shortcut for \"At least N,\" where N is the total number of controls in the rule.</p> <p>OR - Any control must be set. This is a shortcut for \"At least N,\" where N is 1.</p>"
)
type ruleType = [@as("OR") #OR | @as("AND") #AND | @as("ATLEAST") #ATLEAST]
type maxResults = int
type __mapOf__stringMin0Max256PatternS = Js.Dict.t<__stringMin0Max256PatternS>
type __listOf__stringMin1Max256PatternAZaZ09 = array<__stringMin1Max256PatternAZaZ09>
type __listOf__stringMax36PatternS = array<__stringMax36PatternS>
type __listOf__string = array<__string>
@ocaml.doc(
  "<p>The rule configuration for an assertion rule. That is, the criteria that you set for specific assertion controls (routing controls) that specify how many control states must be ON after a transaction completes.</p>"
)
type ruleConfig = {
  @ocaml.doc("<p>A rule can be one of the following: ATLEAST, AND, or OR.</p>") @as("Type")
  type_: ruleType,
  @ocaml.doc(
    "<p>The value of N, when you specify an ATLEAST rule type. That is, Threshold is the number of controls that must be set when you specify an ATLEAST type.</p>"
  )
  @as("Threshold")
  threshold: __integer,
  @ocaml.doc(
    "<p>Logical negation of the rule. If the rule would usually evaluate true, it's evaluated as false, and vice versa.</p>"
  )
  @as("Inverted")
  inverted: __boolean,
}
@ocaml.doc(
  "<p>A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing.</p>"
)
type routingControl = {
  @ocaml.doc(
    "<p>The deployment status of a routing control. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"
  )
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control.</p>")
  @as("RoutingControlArn")
  routingControlArn: option<__stringMin1Max256PatternAZaZ09>,
  @ocaml.doc("<p>The name of the routing control.</p>") @as("Name")
  name: option<__stringMin1Max64PatternS>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>"
  )
  @as("ControlPanelArn")
  controlPanelArn: option<__stringMin1Max256PatternAZaZ09>,
}
@ocaml.doc(
  "<p>Update to a gating rule. You can update the name or the evaluation period (wait period). If you don't specify one of the items to update, the item is unchanged.</p>"
)
type gatingRuleUpdate = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gating rule.</p>") @as("SafetyRuleArn")
  safetyRuleArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The name for the gating rule. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: __stringMin1Max64PatternS,
}
@ocaml.doc(
  "<p>A control panel represents a group of routing controls that can be changed together in a single transaction.</p>"
)
type controlPanel = {
  @ocaml.doc(
    "<p>The deployment status of control panel. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"
  )
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The number of routing controls in the control panel.</p>")
  @as("RoutingControlCount")
  routingControlCount: option<__integer>,
  @ocaml.doc(
    "<p>The name of the control panel. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: option<__stringMin1Max64PatternS>,
  @ocaml.doc(
    "<p>A flag that Amazon Route 53 Application Recovery Controller sets to true to designate the default control panel for a cluster. When you create a cluster, Amazon Route 53 Application Recovery Controller creates a control panel, and sets this flag for that control panel. If you create a control panel yourself, this flag is set to false.</p>"
  )
  @as("DefaultControlPanel")
  defaultControlPanel: option<__boolean>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
  controlPanelArn: option<__stringMin1Max256PatternAZaZ09>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the cluster that includes the control panel.</p>"
  )
  @as("ClusterArn")
  clusterArn: option<__stringMin1Max256PatternAZaZ09>,
}
@ocaml.doc(
  "<p>A cluster endpoint. Specify an endpoint when you want to set or retrieve a routing control state in the cluster.</p>"
)
type clusterEndpoint = {
  @ocaml.doc("<p>The Amazon Web Services Region for a cluster endpoint.</p>") @as("Region")
  region: option<__stringMin1Max32PatternS>,
  @ocaml.doc(
    "<p>A cluster endpoint. Specify an endpoint and Amazon Web Services Region when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>"
  )
  @as("Endpoint")
  endpoint: option<__stringMin1Max128PatternAZaZ09>,
}
@ocaml.doc(
  "<p>An update to an assertion rule. You can update the name or the evaluation period (wait period). If you don't specify one of the items to update, the item is unchanged.</p>"
)
type assertionRuleUpdate = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assertion rule.</p>") @as("SafetyRuleArn")
  safetyRuleArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The name of the assertion rule. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: __stringMin1Max64PatternS,
}
type __listOfRoutingControl = array<routingControl>
type __listOfControlPanel = array<controlPanel>
type __listOfClusterEndpoint = array<clusterEndpoint>
@ocaml.doc("<p>A new gating rule for a control panel.</p>")
type newGatingRule = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc(
    "<p>Routing controls that can only be set or unset if the specified RuleConfig evaluates to true for the specified GatingControls. For example, say you have three gating controls, one for each of three Amazon Web Services Regions. Now you specify AtLeast 2 as your RuleConfig. With these settings, you can only change (set or unset) the routing controls that you have specified as TargetControls if that rule evaluates to true.</p> <p>In other words, your ability to change the routing controls that you have specified as TargetControls is gated by the rule that you set for the routing controls in GatingControls.</p>"
  )
  @as("TargetControls")
  targetControls: __listOf__stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The criteria that you set for specific gating controls (routing controls) that designates how many control states must be ON to allow you to change (set or unset) the target control states.</p>"
  )
  @as("RuleConfig")
  ruleConfig: ruleConfig,
  @ocaml.doc("<p>The name for the new gating rule.</p>") @as("Name")
  name: __stringMin1Max64PatternS,
  @ocaml.doc(
    "<p>The gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify.</p>"
  )
  @as("GatingControls")
  gatingControls: __listOf__stringMin1Max256PatternAZaZ09,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
  controlPanelArn: __stringMin1Max256PatternAZaZ09,
}
@ocaml.doc("<p>A new assertion rule for a control panel.</p>")
type newAssertionRule = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc(
    "<p>The criteria that you set for specific assertion controls (routing controls) that designate how many control states must be ON as the result of a transaction. For example, if you have three assertion controls, you might specify ATLEAST 2for your rule configuration. This means that at least two assertion controls must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>"
  )
  @as("RuleConfig")
  ruleConfig: ruleConfig,
  @ocaml.doc(
    "<p>The name of the assertion rule. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: __stringMin1Max64PatternS,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the control panel.</p>") @as("ControlPanelArn")
  controlPanelArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>"
  )
  @as("AssertedControls")
  assertedControls: __listOf__stringMin1Max256PatternAZaZ09,
}
@ocaml.doc(
  "<p>A gating rule verifies that a gating routing control or set of gating rounting controls, evaluates as true, based on a rule configuration that you specify, which allows a set of routing control state changes to complete.</p> <p>For example, if you specify one gating routing control and you set the Type in the rule configuration to OR, that indicates that you must set the gating routing control to On for the rule to evaluate as true; that is, for the gating control \"switch\" to be \"On\". When you do that, then you can update the routing control states for the target routing controls that you specify in the gating rule.</p>"
)
type gatingRule = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc(
    "<p>An array of target routing control Amazon Resource Names (ARNs) for which the states can only be updated if the rule configuration that you specify evaluates to true for the gating routing control. As a simple example, if you have a single gating control, it acts as an overall \"on/off\" switch for a set of target routing controls. You can use this to manually override automated fail over, for example.</p>"
  )
  @as("TargetControls")
  targetControls: __listOf__stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The deployment status of a gating rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"
  )
  @as("Status")
  status: status,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gating rule.</p>") @as("SafetyRuleArn")
  safetyRuleArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The criteria that you set for gating routing controls that designates how many of the routing control states must be ON to allow you to update target routing control states.</p>"
  )
  @as("RuleConfig")
  ruleConfig: ruleConfig,
  @ocaml.doc(
    "<p>The name for the gating rule. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: __stringMin1Max64PatternS,
  @ocaml.doc(
    "<p>An array of gating routing control Amazon Resource Names (ARNs). For a simple \"on/off\" switch, specify the ARN for one routing control. The gating routing controls are evaluated by the rule configuration that you specify to determine if the target routing control states can be changed.</p>"
  )
  @as("GatingControls")
  gatingControls: __listOf__stringMin1Max256PatternAZaZ09,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
  controlPanelArn: __stringMin1Max256PatternAZaZ09,
}
@ocaml.doc(
  "<p>An assertion rule enforces that, when you change a routing control state, that the criteria that you set in the rule configuration is met. Otherwise, the change to the routing control is not accepted. For example, the criteria might be that at least one routing control state is On after the transation so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p>"
)
type assertionRule = {
  @ocaml.doc(
    "<p>An evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail. This helps prevent \"flapping\" of state. The wait period is 5000 ms by default, but you can choose a custom value.</p>"
  )
  @as("WaitPeriodMs")
  waitPeriodMs: __integer,
  @ocaml.doc(
    "<p>The deployment status of an assertion rule. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"
  )
  @as("Status")
  status: status,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assertion rule.</p>") @as("SafetyRuleArn")
  safetyRuleArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The criteria that you set for specific assertion routing controls (AssertedControls) that designate how many routing control states must be ON as the result of a transaction. For example, if you have three assertion routing controls, you might specify atleast 2 for your rule configuration. This means that at least two assertion routing control states must be ON, so that at least two Amazon Web Services Regions have traffic flowing to them.</p>"
  )
  @as("RuleConfig")
  ruleConfig: ruleConfig,
  @ocaml.doc(
    "<p>Name of the assertion rule. You can use any non-white space character in the name.</p>"
  )
  @as("Name")
  name: __stringMin1Max64PatternS,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
  controlPanelArn: __stringMin1Max256PatternAZaZ09,
  @ocaml.doc(
    "<p>The routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed. For example, you might include three routing controls, one for each of three Amazon Web Services Regions.</p>"
  )
  @as("AssertedControls")
  assertedControls: __listOf__stringMin1Max256PatternAZaZ09,
}
@ocaml.doc("<p>A safety rule. A safety rule can be an assertion rule or a gating rule.</p>")
type rule = {
  @ocaml.doc(
    "<p>A gating rule verifies that a gating routing control or set of gating rounting controls, evaluates as true, based on a rule configuration that you specify, which allows a set of routing control state changes to complete.</p> <p>For example, if you specify one gating routing control and you set the Type in the rule configuration to OR, that indicates that you must set the gating routing control to On for the rule to evaluate as true; that is, for the gating control \"switch\" to be \"On\". When you do that, then you can update the routing control states for the target routing controls that you specify in the gating rule.</p>"
  )
  @as("GATING")
  gating: option<gatingRule>,
  @ocaml.doc(
    "<p>An assertion rule enforces that, when a routing control state is changed, the criteria set by the rule configuration is met. Otherwise, the change to the routing control state is not accepted. For example, the criteria might be that at least one routing control state is On after the transation so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario.</p>"
  )
  @as("ASSERTION")
  assertion: option<assertionRule>,
}
@ocaml.doc(
  "<p>A set of five redundant Regional endpoints against which you can execute API calls to update or get the state of routing controls. You can host multiple control panels and routing controls on one cluster.</p>"
)
type cluster = {
  @ocaml.doc(
    "<p>Deployment status of a resource. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.</p>"
  )
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The name of the cluster.</p>") @as("Name") name: option<__stringMin1Max64PatternS>,
  @ocaml.doc(
    "<p>Endpoints for a cluster. Specify one of these endpoints when you want to set or retrieve a routing control state in the cluster.</p> <p>To get or update the routing control state, see the Amazon Route 53 Application Recovery Controller Routing Control Actions.</p>"
  )
  @as("ClusterEndpoints")
  clusterEndpoints: option<__listOfClusterEndpoint>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
  clusterArn: option<__stringMin1Max256PatternAZaZ09>,
}
type __listOfRule = array<rule>
type __listOfCluster = array<cluster>
@ocaml.doc(
  "<p>Recovery Control Configuration API Reference for Amazon Route 53 Application Recovery Controller</p>"
)
module DeleteSafetyRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the safety rule.</p>") @as("SafetyRuleArn") safetyRuleArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DeleteSafetyRuleCommand"
  let make = (~safetyRuleArn, ()) => new({safetyRuleArn: safetyRuleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoutingControl = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control that you're deleting.</p>")
    @as("RoutingControlArn")
    routingControlArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DeleteRoutingControlCommand"
  let make = (~routingControlArn, ()) => new({routingControlArn: routingControlArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteControlPanel = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
    controlPanelArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DeleteControlPanelCommand"
  let make = (~controlPanelArn, ()) => new({controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster that you're deleting.</p>")
    @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DeleteClusterCommand"
  let make = (~clusterArn, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoutingControl = {
  type t
  @ocaml.doc("<p>The details of the routing control that you're updating.</p>")
  type request = {
    @ocaml.doc("<p>The name of the routing control.</p>") @as("RoutingControlName")
    routingControlName: __stringMin1Max64PatternS,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control.</p>")
    @as("RoutingControlArn")
    routingControlArn: __stringMin1Max256PatternAZaZ09,
  }
  type response = {
    @ocaml.doc("<p>The routing control that was updated.</p>") @as("RoutingControl")
    routingControl: option<routingControl>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "UpdateRoutingControlCommand"
  let make = (~routingControlName, ~routingControlArn, ()) =>
    new({routingControlName: routingControlName, routingControlArn: routingControlArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateControlPanel = {
  type t
  @ocaml.doc("<p>The details of the control panel that you're updating.</p>")
  type request = {
    @ocaml.doc("<p>The name of the control panel.</p>") @as("ControlPanelName")
    controlPanelName: __stringMin1Max64PatternS,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
    controlPanelArn: __stringMin1Max256PatternAZaZ09,
  }
  type response = {
    @ocaml.doc("<p>The control panel to update.</p>") @as("ControlPanel")
    controlPanel: option<controlPanel>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "UpdateControlPanelCommand"
  let make = (~controlPanelName, ~controlPanelArn, ()) =>
    new({controlPanelName: controlPanelName, controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Keys for the tags to be removed.</p>") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>Request of adding tag to the resource</p>")
  type request = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("Tags")
    tags: __mapOf__stringMin0Max256PatternS,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource that's tagged.</p>")
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("Tags")
    tags: option<__mapOf__stringMin0Max256PatternS>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociatedRoute53HealthChecks = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control.</p>")
    @as("RoutingControlArn")
    routingControlArn: __string,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Next token for listing health checks.</p>") @as("NextToken")
    nextToken: option<__stringMin1Max8096PatternS>,
    @ocaml.doc("<p>Identifiers for the health checks.</p>") @as("HealthCheckIds")
    healthCheckIds: option<__listOf__stringMax36PatternS>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListAssociatedRoute53HealthChecksCommand"
  let make = (~routingControlArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({routingControlArn: routingControlArn, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoutingControl = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control.</p>")
    @as("RoutingControlArn")
    routingControlArn: __string,
  }
  type response = {
    @ocaml.doc("<p>Information about the routing control.</p>") @as("RoutingControl")
    routingControl: option<routingControl>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DescribeRoutingControlCommand"
  let make = (~routingControlArn, ()) => new({routingControlArn: routingControlArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeControlPanel = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
    controlPanelArn: __string,
  }
  type response = {
    @ocaml.doc("<p>Information about the control panel.</p>") @as("ControlPanel")
    controlPanel: option<controlPanel>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DescribeControlPanelCommand"
  let make = (~controlPanelArn, ()) => new({controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoutingControl = {
  type t
  @ocaml.doc("<p>The details of the routing control that you're creating.</p>")
  type request = {
    @ocaml.doc("<p>The name of the routing control.</p>") @as("RoutingControlName")
    routingControlName: __stringMin1Max64PatternS,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the control panel that includes the routing control.</p>"
    )
    @as("ControlPanelArn")
    controlPanelArn: option<__stringMin1Max256PatternAZaZ09>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the cluster that includes the routing control.</p>"
    )
    @as("ClusterArn")
    clusterArn: __stringMin1Max256PatternAZaZ09,
    @ocaml.doc(
      "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>"
    )
    @as("ClientToken")
    clientToken: option<__stringMin1Max64PatternS>,
  }
  type response = {
    @ocaml.doc("<p>The routing control that is created.</p>") @as("RoutingControl")
    routingControl: option<routingControl>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "CreateRoutingControlCommand"
  let make = (~routingControlName, ~clusterArn, ~controlPanelArn=?, ~clientToken=?, ()) =>
    new({
      routingControlName: routingControlName,
      controlPanelArn: controlPanelArn,
      clusterArn: clusterArn,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateControlPanel = {
  type t
  @ocaml.doc("<p>The details of the control panel that you're creating.</p>")
  type request = {
    @ocaml.doc("<p>The tags associated with the control panel.</p>") @as("Tags")
    tags: option<__mapOf__stringMin0Max256PatternS>,
    @ocaml.doc("<p>The name of the control panel.</p>") @as("ControlPanelName")
    controlPanelName: __stringMin1Max64PatternS,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster for the control panel.</p>")
    @as("ClusterArn")
    clusterArn: __stringMin1Max256PatternAZaZ09,
    @ocaml.doc(
      "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>"
    )
    @as("ClientToken")
    clientToken: option<__stringMin1Max64PatternS>,
  }
  type response = {
    @ocaml.doc("<p>Information about a control panel.</p>") @as("ControlPanel")
    controlPanel: option<controlPanel>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "CreateControlPanelCommand"
  let make = (~controlPanelName, ~clusterArn, ~tags=?, ~clientToken=?, ()) =>
    new({
      tags: tags,
      controlPanelName: controlPanelName,
      clusterArn: clusterArn,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSafetyRule = {
  type t
  @ocaml.doc(
    "<p>A rule that you add to Application Recovery Controller to ensure that recovery actions don't accidentally impair your application's availability.</p>"
  )
  type request = {
    @ocaml.doc("<p>The gating rule to update.</p>") @as("GatingRuleUpdate")
    gatingRuleUpdate: option<gatingRuleUpdate>,
    @ocaml.doc("<p>The assertion rule to update.</p>") @as("AssertionRuleUpdate")
    assertionRuleUpdate: option<assertionRuleUpdate>,
  }
  type response = {
    @ocaml.doc("<p>The gating rule updated.</p>") @as("GatingRule") gatingRule: option<gatingRule>,
    @ocaml.doc("<p>The assertion rule updated.</p>") @as("AssertionRule")
    assertionRule: option<assertionRule>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "UpdateSafetyRuleCommand"
  let make = (~gatingRuleUpdate=?, ~assertionRuleUpdate=?, ()) =>
    new({gatingRuleUpdate: gatingRuleUpdate, assertionRuleUpdate: assertionRuleUpdate})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoutingControls = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
    controlPanelArn: __string,
  }
  type response = {
    @ocaml.doc("<p>An array of routing controls.</p>") @as("RoutingControls")
    routingControls: option<__listOfRoutingControl>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__stringMin1Max8096PatternS>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListRoutingControlsCommand"
  let make = (~controlPanelArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListControlPanels = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a cluster.</p>") @as("ClusterArn")
    clusterArn: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__stringMin1Max8096PatternS>,
    @ocaml.doc("<p>The result of a successful ListControlPanel request.</p>") @as("ControlPanels")
    controlPanels: option<__listOfControlPanel>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListControlPanelsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~clusterArn=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSafetyRule = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the safety rule.</p>") @as("SafetyRuleArn") safetyRuleArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The gating rule in the response.</p>") @as("GatingRule")
    gatingRule: option<gatingRule>,
    @ocaml.doc("<p>The assertion rule in the response.</p>") @as("AssertionRule")
    assertionRule: option<assertionRule>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DescribeSafetyRuleCommand"
  let make = (~safetyRuleArn, ()) => new({safetyRuleArn: safetyRuleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSafetyRule = {
  type t
  @ocaml.doc("<p>The request body that you include when you create a safety rule.</p>")
  type request = {
    @ocaml.doc("<p>The tags associated with the safety rule.</p>") @as("Tags")
    tags: option<__mapOf__stringMin0Max256PatternS>,
    @ocaml.doc("<p>The gating rule requested.</p>") @as("GatingRule")
    gatingRule: option<newGatingRule>,
    @ocaml.doc(
      "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>"
    )
    @as("ClientToken")
    clientToken: option<__stringMin1Max64PatternS>,
    @ocaml.doc("<p>The assertion rule requested.</p>") @as("AssertionRule")
    assertionRule: option<newAssertionRule>,
  }
  type response = {
    @ocaml.doc("<p>The gating rule created.</p>") @as("GatingRule") gatingRule: option<gatingRule>,
    @ocaml.doc("<p>The assertion rule created.</p>") @as("AssertionRule")
    assertionRule: option<assertionRule>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "CreateSafetyRuleCommand"
  let make = (~tags=?, ~gatingRule=?, ~clientToken=?, ~assertionRule=?, ()) =>
    new({
      tags: tags,
      gatingRule: gatingRule,
      clientToken: clientToken,
      assertionRule: assertionRule,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the cluster.</p>") @as("ClusterArn")
    clusterArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The cluster for the DescribeCluster request.</p>") @as("Cluster")
    cluster: option<cluster>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "DescribeClusterCommand"
  let make = (~clusterArn, ()) => new({clusterArn: clusterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  @ocaml.doc("<p>Creates a cluster.</p>")
  type request = {
    @ocaml.doc("<p>The tags associated with the cluster.</p>") @as("Tags")
    tags: option<__mapOf__stringMin0Max256PatternS>,
    @ocaml.doc("<p>The name of the cluster.</p>") @as("ClusterName")
    clusterName: __stringMin1Max64PatternS,
    @ocaml.doc(
      "<p>A unique, case-sensitive string of up to 64 ASCII characters. To make an idempotent API request with an action, specify a client token in the request.</p>"
    )
    @as("ClientToken")
    clientToken: option<__stringMin1Max64PatternS>,
  }
  type response = {
    @ocaml.doc("<p>The cluster that was created.</p>") @as("Cluster") cluster: option<cluster>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "CreateClusterCommand"
  let make = (~clusterName, ~tags=?, ~clientToken=?, ()) =>
    new({tags: tags, clusterName: clusterName, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSafetyRules = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The number of objects that you want to return with this call.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the control panel.</p>") @as("ControlPanelArn")
    controlPanelArn: __string,
  }
  type response = {
    @ocaml.doc("<p>The list of safety rules in a control panel.</p>") @as("SafetyRules")
    safetyRules: option<__listOfRule>,
    @ocaml.doc("<p>The token that identifies which batch of results you want to see.</p>")
    @as("NextToken")
    nextToken: option<__stringMin1Max8096PatternS>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListSafetyRulesCommand"
  let make = (~controlPanelArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListClusters = {
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
    nextToken: option<__stringMin1Max8096PatternS>,
    @ocaml.doc("<p>An array of the clusters in an account.</p>") @as("Clusters")
    clusters: option<__listOfCluster>,
  }
  @module("@aws-sdk/client-route53-recovery-control-config") @new
  external new: request => t = "ListClustersCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
