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
@ocaml.doc("<p>The target parameter specifies the identifier to which the home region is applied, which
      is always an <code>ACCOUNT</code>. It applies the home region to the current
        <code>ACCOUNT</code>.</p>")
type target = {
  @ocaml.doc("<p>The <code>TargetID</code> is a 12-character identifier of the <code>ACCOUNT</code> for
      which the control was created. (This must be the current account.) </p>")
  @as("Id")
  id: option<targetId>,
  @ocaml.doc("<p>The target type is always an <code>ACCOUNT</code>.</p>") @as("Type")
  type_: targetType,
}
@ocaml.doc("<p>A home region control is an object that specifies the home region for an account, with
      some additional information. It contains a target (always of type <code>ACCOUNT</code>), an
      ID, and a time at which the home region was set.</p>")
type homeRegionControl = {
  @ocaml.doc("<p>A timestamp representing the time when the customer called
        <code>CreateHomeregionControl</code> and set the home region for the account.</p>")
  @as("RequestedTime")
  requestedTime: option<requestedTime>,
  @ocaml.doc("<p>The target parameter specifies the identifier to which the home region is applied, which
      is always an <code>ACCOUNT</code>. It applies the home region to the current
        <code>ACCOUNT</code>.</p>")
  @as("Target")
  target: option<target>,
  @ocaml.doc("<p>The AWS Region that's been set as home region. For example, \"us-west-2\" or \"eu-central-1\"
      are valid home regions.</p>")
  @as("HomeRegion")
  homeRegion: option<homeRegion>,
  @ocaml.doc("<p>A unique identifier that's generated for each home region control. It's always a string
      that begins with \"hrc-\" followed by 12 lowercase letters and numbers.</p>")
  @as("ControlId")
  controlId: option<controlId>,
}
type homeRegionControls = array<homeRegionControl>
@ocaml.doc("<p>The AWS Migration Hub home region APIs are available specifically for working with your
      Migration Hub home region. You can use these APIs to determine a home region, as well as to
      create and work with controls that describe the home region.</p>

         <ul>
            <li>
               <p>You must make API calls for write actions (create, notify, associate, disassociate,
          import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
          error is returned.</p>
            </li>
            <li>
               <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of
          your home region.</p>
            </li>
            <li>
               <p>If you call a write API outside the home region, an <code>InvalidInputException</code>
          is returned.</p>
            </li>
            <li>
               <p>You can call <code>GetHomeRegion</code> action to obtain the account's Migration Hub
          home region.</p>
            </li>
         </ul>

         <p>For specific API usage, see the sections that follow in this AWS Migration Hub Home Region
      API reference. </p>")
module GetHomeRegion = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The name of the home region of the calling account.</p>") @as("HomeRegion")
    homeRegion: option<homeRegion>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "GetHomeRegionCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHomeRegionControl = {
  type t
  type request = {
    @ocaml.doc("<p>Optional Boolean flag to indicate whether any effect should take place. It tests whether
      the caller has permission to make the call.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>The account for which this command sets up a home region control. The <code>Target</code>
      is always of type <code>ACCOUNT</code>.</p>")
    @as("Target")
    target: target,
    @ocaml.doc("<p>The name of the home region of the calling account.</p>") @as("HomeRegion")
    homeRegion: homeRegion,
  }
  type response = {
    @ocaml.doc("<p>This object is the <code>HomeRegionControl</code> object that's returned by a successful
      call to <code>CreateHomeRegionControl</code>.</p>")
    @as("HomeRegionControl")
    homeRegionControl: option<homeRegionControl>,
  }
  @module("@aws-sdk/client-mgh") @new external new: request => t = "CreateHomeRegionControlCommand"
  let make = (~target, ~homeRegion, ~dryRun=?, ()) =>
    new({dryRun: dryRun, target: target, homeRegion: homeRegion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHomeRegionControls = {
  type t
  type request = {
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, more results are available.
      To retrieve the next page of results, make the call again using the returned token in
        <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of filtering results to display per page. </p>")
    @as("MaxResults")
    maxResults: option<describeHomeRegionControlsMaxResults>,
    @ocaml.doc("<p>The target parameter specifies the identifier to which the home region is applied, which
      is always of type <code>ACCOUNT</code>. It applies the home region to the current
        <code>ACCOUNT</code>.</p>")
    @as("Target")
    target: option<target>,
    @ocaml.doc("<p>The name of the home region you'd like to view.</p>") @as("HomeRegion")
    homeRegion: option<homeRegion>,
    @ocaml.doc("<p>The <code>ControlID</code> is a unique identifier string of your
        <code>HomeRegionControl</code> object.</p>")
    @as("ControlId")
    controlId: option<controlId>,
  }
  type response = {
    @ocaml.doc("<p>If a <code>NextToken</code> was returned by a previous call, more results are available.
      To retrieve the next page of results, make the call again using the returned token in
        <code>NextToken</code>.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array that contains your <code>HomeRegionControl</code> objects.</p>")
    @as("HomeRegionControls")
    homeRegionControls: option<homeRegionControls>,
  }
  @module("@aws-sdk/client-mgh") @new
  external new: request => t = "DescribeHomeRegionControlsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~target=?, ~homeRegion=?, ~controlId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      target: target,
      homeRegion: homeRegion,
      controlId: controlId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
