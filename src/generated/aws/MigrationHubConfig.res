type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mgh") @new
external createClient: unit => awsServiceClient = "MigrationHubConfigClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
type targetType = [@as("ACCOUNT") #ACCOUNT]
type targetId = string
type retryAfterSeconds = int
type requestedTime = Js.Date.t
type homeRegion = string
type errorMessage = string
type dryRun = bool
type describeHomeRegionControlsMaxResults = int
type controlId = string
type target = {
  @as("Id") id: option<targetId>,
  @as("Type") type_: targetType,
}
type homeRegionControl = {
  @as("RequestedTime") requestedTime: option<requestedTime>,
  @as("Target") target: option<target>,
  @as("HomeRegion") homeRegion: option<homeRegion>,
  @as("ControlId") controlId: option<controlId>,
}
type homeRegionControls = array<homeRegionControl>

module GetHomeRegion = {
  type t
  type request = unit
  type response = {@as("HomeRegion") homeRegion: option<homeRegion>}
  @module("@aws-sdk/client-mgh") @new external new: request => t = "GetHomeRegionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHomeRegionControl = {
  type t
  type request = {
    @as("DryRun") dryRun: option<dryRun>,
    @as("Target") target: target,
    @as("HomeRegion") homeRegion: homeRegion,
  }
  type response = {@as("HomeRegionControl") homeRegionControl: option<homeRegionControl>}
  @module("@aws-sdk/client-mgh") @new external new: request => t = "CreateHomeRegionControlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHomeRegionControls = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<describeHomeRegionControlsMaxResults>,
    @as("Target") target: option<target>,
    @as("HomeRegion") homeRegion: option<homeRegion>,
    @as("ControlId") controlId: option<controlId>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("HomeRegionControls") homeRegionControls: option<homeRegionControls>,
  }
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DescribeHomeRegionControlsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
