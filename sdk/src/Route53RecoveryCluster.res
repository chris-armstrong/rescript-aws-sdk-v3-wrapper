type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-route53-recovery-cluster") @new
external createClient: unit => awsServiceClient = "Route53RecoveryClusterClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("Reason the request failed validation")
type validationExceptionReason = [
  | @as("other") #Other
  | @as("fieldValidationFailed") #FieldValidationFailed
  | @as("cannotParse") #CannotParse
  | @as("unknownOperation") #UnknownOperation
]
type string_ = string
type routingControlState = [@as("Off") #Off | @as("On") #On]
type routingControlName = string
@ocaml.doc("Advice to clients on when the call can be safely retried") type retryAfterSeconds = int
type pageToken = string
type maxResults = int
type controlPanelName = string
type arn = string
@ocaml.doc("<p>There was a validation error on the request.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>Information about the validation exception.</p>") message: string_,
  @ocaml.doc("<p>The field that had the validation exception.</p>") name: string_,
}
@ocaml.doc("<p>A routing control state entry.</p>")
type updateRoutingControlStateEntry = {
  @ocaml.doc("<p>The routing control state in a set of routing control state entries.</p>")
  @as("RoutingControlState")
  routingControlState: routingControlState,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a routing control state entry.</p>")
  @as("RoutingControlArn")
  routingControlArn: arn,
}
@ocaml.doc("<p>A routing control, which is a simple on/off switch that you
			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
			the state is Off, traffic does not flow. </p>")
type routingControl = {
  @ocaml.doc("<p>The current state of the routing control. When a routing control state is On, traffic flows to a cell. When
			the state is Off, traffic does not flow. </p>")
  @as("RoutingControlState")
  routingControlState: option<routingControlState>,
  @ocaml.doc("<p>The name of the routing control.</p>") @as("RoutingControlName")
  routingControlName: option<routingControlName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the routing control.</p>")
  @as("RoutingControlArn")
  routingControlArn: option<arn>,
  @ocaml.doc("<p>The name of the control panel where the routing control is located.</p>")
  @as("ControlPanelName")
  controlPanelName: option<controlPanelName>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the control panel where the routing control is located.</p>"
  )
  @as("ControlPanelArn")
  controlPanelArn: option<arn>,
}
type arns = array<arn>
@ocaml.doc("The fields that caused the error, if applicable")
type validationExceptionFieldList = array<validationExceptionField>
type updateRoutingControlStateEntries = array<updateRoutingControlStateEntry>
type routingControls = array<routingControl>
@ocaml.doc("<p>Welcome to the Routing Control (Recovery Cluster) API Reference Guide for Amazon Route 53 Application Recovery Controller.</p>
			      <p>With Route 53 ARC, you can use routing control with extreme reliability to
			recover applications by rerouting traffic across
			Availability Zones or Amazon Web Services Regions. Routing controls are simple on/off switches hosted
			on a highly available cluster in Route 53 ARC. A cluster provides a set of five redundant Regional endpoints against which you
			can run API calls to get or update the state of routing controls. To implement failover, you set 
			one routing control On and another one Off, to reroute traffic from one Availability Zone or Amazon Web Services Region 
			to another. </p>
			      <p>
            <i>Be aware that you must specify a Regional endpoint for a cluster when you work with API cluster operations 
				to get or update routing control states in Route 53 ARC.</i> In addition, you must specify the US West (Oregon) Region 
				for Route 53 ARC API calls. For example, use the parameter <code>--region us-west-2</code> with AWS CLI commands.
				For more information, see
				<a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html\">
					Get and update routing control states using the API</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
		       <p>This API guide includes information about the API operations for how to get and update routing control states
			in Route 53 ARC. To work with routing control in Route 53 ARC, you must first create the required components (clusters, control 
			panels, and routing controls) using the recovery cluster configuration API.</p>
			      <p>For more information about working with routing control in Route 53 ARC, see the following:</p>
		       <ul>
            <li>
				           <p>Create clusters, control panels, and routing controls by using API operations. For more information, 
					see the <a href=\"https://docs.aws.amazon.com/recovery-cluster/latest/api/\">Recovery Control Configuration API Reference Guide for Amazon Route 53 Application Recovery Controller</a>.</p>
			         </li>
            <li>
               <p>Learn about the components in recovery control, including clusters,
				routing controls, and control panels, and how to work with Route 53 ARC in the Amazon Web Services console. For more 
				information, see <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing\">
					Recovery control components</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
            </li>
            <li>
				           <p>Route 53 ARC also provides readiness checks that continually audit resources to help make sure that your
					applications are scaled and ready to handle failover traffic. For more information about
					the related API operations, see the <a href=\"https://docs.aws.amazon.com/recovery-readiness/latest/api/\">Recovery Readiness API Reference Guide for Amazon Route 53 Application Recovery Controller</a>.</p>
			         </li>
            <li>
				           <p>For more information about creating resilient applications and preparing for
					recovery readiness with Route 53 ARC, see the <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/\">Amazon Route 53 Application Recovery Controller Developer Guide</a>.</p>
			         </li>
         </ul>")
module UpdateRoutingControlStates = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing
			control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated 
			by commas.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html\">
			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>")
    @as("SafetyRulesToOverride")
    safetyRulesToOverride: option<arns>,
    @ocaml.doc("<p>A set of routing control entries that you want to update.</p>")
    @as("UpdateRoutingControlStateEntries")
    updateRoutingControlStateEntries: updateRoutingControlStateEntries,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-cluster") @new
  external new: request => t = "UpdateRoutingControlStatesCommand"
  let make = (~updateRoutingControlStateEntries, ~safetyRulesToOverride=?, ()) =>
    new({
      safetyRulesToOverride: safetyRulesToOverride,
      updateRoutingControlStateEntries: updateRoutingControlStateEntries,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoutingControlState = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of
			a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated 
			by commas.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html\">
			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>")
    @as("SafetyRulesToOverride")
    safetyRulesToOverride: option<arns>,
    @ocaml.doc("<p>The state of the routing control. You can set the value to be On or Off.</p>")
    @as("RoutingControlState")
    routingControlState: routingControlState,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the routing control that you want to update the state for.</p>"
    )
    @as("RoutingControlArn")
    routingControlArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-route53-recovery-cluster") @new
  external new: request => t = "UpdateRoutingControlStateCommand"
  let make = (~routingControlState, ~routingControlArn, ~safetyRulesToOverride=?, ()) =>
    new({
      safetyRulesToOverride: safetyRulesToOverride,
      routingControlState: routingControlState,
      routingControlArn: routingControlArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListRoutingControls = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The number of routing controls objects that you want to return with this call. The default value is 500.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the control panel of the routing controls to list.</p>"
    )
    @as("ControlPanelArn")
    controlPanelArn: option<arn>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. You receive this token from a previous call.</p>"
    )
    @as("NextToken")
    nextToken: option<pageToken>,
    @ocaml.doc("<p>The list of routing controls.</p>") @as("RoutingControls")
    routingControls: routingControls,
  }
  @module("@aws-sdk/client-route53-recovery-cluster") @new
  external new: request => t = "ListRoutingControlsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~controlPanelArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, controlPanelArn: controlPanelArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRoutingControlState = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the routing control that you want to get the state for.</p>"
    )
    @as("RoutingControlArn")
    routingControlArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The routing control name.</p>") @as("RoutingControlName")
    routingControlName: option<routingControlName>,
    @ocaml.doc("<p>The state of the routing control.</p>") @as("RoutingControlState")
    routingControlState: routingControlState,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the response.</p>") @as("RoutingControlArn")
    routingControlArn: arn,
  }
  @module("@aws-sdk/client-route53-recovery-cluster") @new
  external new: request => t = "GetRoutingControlStateCommand"
  let make = (~routingControlArn, ()) => new({routingControlArn: routingControlArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
