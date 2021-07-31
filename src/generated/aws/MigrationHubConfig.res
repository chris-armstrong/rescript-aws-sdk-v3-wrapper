type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type token = string
type targetType = [@as("ACCOUNT") #ACCOUNT]
type targetId = string
type retryAfterSeconds = int;
type requestedTime = Js.Date.t;
type homeRegion = string
type errorMessage = string
type dryRun = bool;
type describeHomeRegionControlsMaxResults = int;
type controlId = string
type target = {
@as("Id") id: targetId,
@as("Type") type_: option<targetType>
}
type homeRegionControl = {
@as("RequestedTime") requestedTime: requestedTime,
@as("Target") target: target,
@as("HomeRegion") homeRegion: homeRegion,
@as("ControlId") controlId: controlId
}
type homeRegionControls = array<homeRegionControl>
type clientType;
@module("@aws-sdk/client-mgh") @new external createClient: unit => clientType = "MigrationHubConfigClient";
module GetHomeRegion = {
  type t;
  type request = unit
  type response = {
@as("HomeRegion") homeRegion: homeRegion
}
  @module("@aws-sdk/client-mgh") @new external new_: (Js.Promise.t<request>) => t = "GetHomeRegionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHomeRegionControl = {
  type t;
  type request = {
@as("DryRun") dryRun: dryRun,
@as("Target") target: option<target>,
@as("HomeRegion") homeRegion: option<homeRegion>
}
  type response = {
@as("HomeRegionControl") homeRegionControl: homeRegionControl
}
  @module("@aws-sdk/client-mgh") @new external new_: (Js.Promise.t<request>) => t = "CreateHomeRegionControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHomeRegionControls = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: describeHomeRegionControlsMaxResults,
@as("Target") target: target,
@as("HomeRegion") homeRegion: homeRegion,
@as("ControlId") controlId: controlId
}
  type response = {
@as("NextToken") nextToken: token,
@as("HomeRegionControls") homeRegionControls: homeRegionControls
}
  @module("@aws-sdk/client-mgh") @new external new_: (Js.Promise.t<request>) => t = "DescribeHomeRegionControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
