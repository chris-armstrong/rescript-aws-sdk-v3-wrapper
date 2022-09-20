type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rum") @new external createClient: unit => awsServiceClient = "RUMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc(
  "<p>A structure that contains information about the user session that this batch of events was collected from.</p>"
)
type userDetails = {
  @ocaml.doc("<p>The session ID that the performance events are from.</p>")
  sessionId: option<baseString>,
  @ocaml.doc("<p>The ID of the user for this user session. This ID is generated by RUM and does not include any 
      personally identifiable information about the user.</p>")
  userId: option<baseString>,
}
type url = string
type token = string
type telemetry = [@as("http") #Http | @as("performance") #Performance | @as("errors") #Errors]
type tagValue = string
type tagKey = string
type stateEnum = [@as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("CREATED") #CREATED]
type sessionSampleRate = float
type queryTimestamp = float
type queryFilterValue = string
type queryFilterKey = string
type maxQueryResults = int
type jsonValue = string
type identityPoolId = string
type isotimestampString = string
type favoritePages = array<baseString>
type eventData = string
@ocaml.doc("<p>A structure that contains the information about whether the app monitor stores copies of the data
      that RUM collects in CloudWatch Logs. If it does, this structure also contains the name of the log group.</p>")
type cwLog = {
  @ocaml.doc("<p>The name of the log group where the copies are stored.</p>") @as("CwLogGroup")
  cwLogGroup: option<baseString>,
  @ocaml.doc("<p>Indicated whether the app monitor stores copies of the data
         that RUM collects in CloudWatch Logs.</p>")
  @as("CwLogEnabled")
  cwLogEnabled: option<baseBoolean>,
}
type arn = string

type appMonitorName = string
type appMonitorId = string
type appMonitorDomain = string
@ocaml.doc("<p>A structure that contains information about the RUM app monitor.</p>")
type appMonitorDetails = {
  @ocaml.doc("<p>The version of the app monitor.</p>") version: option<baseString>,
  @ocaml.doc("<p>The unique ID of the app monitor.</p>") id: option<baseString>,
  @ocaml.doc("<p>The name of the app monitor.</p>") name: option<baseString>,
}
@ocaml.doc("<p>A structure that defines the time range that you want to retrieve results from.</p>")
type timeRange = {
  @ocaml.doc("<p>The end of the time range to retrieve performance events from. If you omit this, the time 
      range extends to the time that this operation is performed.</p>")
  @as("Before")
  before: option<queryTimestamp>,
  @ocaml.doc("<p>The beginning of the time range to retrieve performance events from.</p>")
  @as("After")
  after: queryTimestamp,
}
type telemetries = array<telemetry>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A structure that contains the information for one performance event that RUM collects from a user session with your
      application.</p>")
type rumEvent = {
  @ocaml.doc("<p>A string containing details about the event.</p>") details: jsonValue,
  @ocaml.doc("<p>Metadata about this event, which contains a JSON serialization of the identity of the user for
         this session. The user information comes from information such as the HTTP user-agent request header
         and document interface.</p>")
  metadata: option<jsonValue>,
  @ocaml.doc(
    "<p>The JSON schema that denotes the type of event this is, such as a page load or a new session.</p>"
  )
  @as("type")
  type_: baseString,
  @ocaml.doc("<p>The exact time that this event occurred.</p>") @as("timestamp")
  timestamp_: baseTimestamp,
  @ocaml.doc("<p>A unique ID for this event.</p>") id: baseString,
}
type queryFilterValueList = array<queryFilterValue>
type pages = array<url>
type eventDataList = array<eventData>
@ocaml.doc("<p>A structure that contains information about whether this app monitor stores a copy of
         the telemetry data that RUM collects using CloudWatch Logs.</p>")
type dataStorage = {
  @ocaml.doc("<p>A structure that contains the information about whether the app monitor stores copies of the data
         that RUM collects in CloudWatch Logs. If it does, this structure also contains the name of the log group.</p>")
  @as("CwLog")
  cwLog: option<cwLog>,
}
@ocaml.doc("<p>A structure that includes some data about app monitors and their settings.</p>")
type appMonitorSummary = {
  @ocaml.doc("<p>The current state of this app monitor.</p>") @as("State") state: option<stateEnum>,
  @ocaml.doc(
    "<p>The date and time of the most recent changes to this app monitor's configuration.</p>"
  )
  @as("LastModified")
  lastModified: option<isotimestampString>,
  @ocaml.doc("<p>The date and time that the app monitor was created.</p>") @as("Created")
  created: option<isotimestampString>,
  @ocaml.doc("<p>The unique ID of this app monitor.</p>") @as("Id") id: option<appMonitorId>,
  @ocaml.doc("<p>The name of this app monitor.</p>") @as("Name") name: option<appMonitorName>,
}
type rumEventList = array<rumEvent>
@ocaml.doc("<p>A structure that defines a key and values that you can use to filter the results. The
         only performance events that are returned are those that have values matching the ones that
         you specify in one of your <code>QueryFilter</code> structures.</p>
         <p>For example, you could specify <code>Browser</code> as the <code>Name</code>
      and specify <code>Chrome,Firefox</code> as the <code>Values</code> to return 
      events generated only from those browsers.</p>
         <p>Specifying <code>Invert</code> as the <code>Name</code>
         works as a \"not equal to\" filter. For example, specify <code>Invert</code> as the <code>Name</code>
         and specify <code>Chrome</code> as the value to return all events except events from 
         user sessions with the Chrome browser.</p>")
type queryFilter = {
  @ocaml.doc(
    "<p>The values of the <code>Name</code> that are to be be included in the returned results.</p>"
  )
  @as("Values")
  values: option<queryFilterValueList>,
  @ocaml.doc("<p>The name of a key to search for. 
      The filter returns only the events that match the <code>Name</code>
         and <code>Values</code> that you specify.
      </p>
         <p>Valid values for <code>Name</code> are <code>Browser</code> | <code>Device</code> | <code>Country</code> |
         <code>Page</code> | <code>OS</code> | <code>EventType</code> | <code>Invert</code>
         </p>")
  @as("Name")
  name: option<queryFilterKey>,
}
type appMonitorSummaryList = array<appMonitorSummary>
@ocaml.doc("<p>This structure contains much of the configuration data for the app monitor.</p>")
type appMonitorConfiguration = {
  @ocaml.doc("<p>If you set this to <code>true</code>, RUM enables X-Ray tracing for
         the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed
         HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
         You can see traces and segments from these user sessions in the X-Ray console
         and the CloudWatch ServiceLens console. For more information, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/aws-xray.html\">What is X-Ray?</a>
         </p>")
  @as("EnableXRay")
  enableXRay: option<baseBoolean>,
  @ocaml.doc("<p>An array that lists the types of telemetry data that this app monitor is to collect.</p>
         <ul>
            <li>
               <p>
                  <code>errors</code> indicates that RUM collects data about unhandled JavaScript errors raised
         by your application.</p>
            </li>
            <li>
               <p>
                  <code>performance</code> indicates that RUM collects performance data about how your application
            and its resources are loaded and rendered. This includes Core Web Vitals.</p>
            </li>
            <li>
               <p>
                  <code>http</code> indicates that RUM collects data about HTTP errors thrown by your application.</p>
            </li>
         </ul>")
  @as("Telemetries")
  telemetries: option<telemetries>,
  @ocaml.doc("<p>If you set this to <code>true</code>, the RUM web client sets two cookies, a session
         cookie and a user cookie. The cookies allow the RUM web client to collect data relating to
         the number of users an application has and the behavior of the application across a
         sequence of events. Cookies are stored in the top-level domain of the current page.</p>")
  @as("AllowCookies")
  allowCookies: option<baseBoolean>,
  @ocaml.doc("<p>The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool 
      that is used to authorize the sending of data to RUM.</p>")
  @as("GuestRoleArn")
  guestRoleArn: option<arn>,
  @ocaml.doc("<p>Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you
      more data but also incurs more costs.</p>
         <p>The number you specify is the percentage of user sessions that will be used.</p>
         <p>If you omit this parameter, the default of 10 is used.</p>")
  @as("SessionSampleRate")
  sessionSampleRate: option<sessionSampleRate>,
  @ocaml.doc(
    "<p>A list of pages in the CloudWatch RUM console that are to be displayed with a \"favorite\" icon.</p>"
  )
  @as("FavoritePages")
  favoritePages: option<favoritePages>,
  @ocaml.doc("<p>If this app monitor is to collect data from only certain pages in your application, this structure lists those pages. </p>
      
         <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>")
  @as("IncludedPages")
  includedPages: option<pages>,
  @ocaml.doc("<p>A list of URLs in your website or application to exclude from RUM data collection.</p>
         <p>You can't include both <code>ExcludedPages</code> and <code>IncludedPages</code> in the same operation.</p>")
  @as("ExcludedPages")
  excludedPages: option<pages>,
  @ocaml.doc("<p>The ID of the Amazon Cognito identity pool 
         that is used to authorize the sending of data to RUM.</p>")
  @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
}
type queryFilters = array<queryFilter>
@ocaml.doc("<p>A RUM app monitor collects telemetry data from your application and sends that
         data to RUM. The data includes performance and reliability information such as page load time, client-side errors, 
         and user behavior.</p>")
type appMonitor = {
  @ocaml.doc("<p>A structure that contains information about whether this app monitor stores a copy of
         the telemetry data that RUM collects using CloudWatch Logs.</p>")
  @as("DataStorage")
  dataStorage: option<dataStorage>,
  @ocaml.doc("<p>A structure that contains much of the configuration data for the app monitor.</p>")
  @as("AppMonitorConfiguration")
  appMonitorConfiguration: option<appMonitorConfiguration>,
  @ocaml.doc("<p>The current state of the app monitor.</p>") @as("State") state: option<stateEnum>,
  @ocaml.doc("<p>The list of tag keys and values associated with this app monitor.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc(
    "<p>The date and time of the most recent changes to this app monitor's configuration.</p>"
  )
  @as("LastModified")
  lastModified: option<isotimestampString>,
  @ocaml.doc("<p>The date and time that this app monitor was created.</p>") @as("Created")
  created: option<isotimestampString>,
  @ocaml.doc("<p>The unique ID of this app monitor.</p>") @as("Id") id: option<appMonitorId>,
  @ocaml.doc(
    "<p>The top-level internet domain name for which your application has administrative authority.</p>"
  )
  @as("Domain")
  domain: option<appMonitorDomain>,
  @ocaml.doc("<p>The name of the app monitor.</p>") @as("Name") name: option<appMonitorName>,
}
@ocaml.doc("<p>With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about 
       your web application performance from actual user sessions in real time. The data collected includes page load 
       times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and 
       also see breakdowns by the browsers and devices that your customers use.</p>
       
         <p>You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch 
       RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error 
       messages, stack traces, and user sessions. You can also use RUM to 
       understand the range of end-user impact including the number of users, geolocations, and browsers used.</p>")
module DeleteAppMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the app monitor to delete.</p>") @as("Name") name: appMonitorName,
  }
  type response = {.}
  @module("@aws-sdk/client-rum") @new external new: request => t = "DeleteAppMonitorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the CloudWatch RUM resource that you're removing tags from.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-rum") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of key-value pairs to associate with the resource.</p>") @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the CloudWatch RUM resource that you're adding tags to.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-rum") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource that you want to see the tags of.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The list of tag keys and values associated with the resource you specified.</p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource that you are viewing.</p>") @as("ResourceArn")
    resourceArn: arn,
  }
  @module("@aws-sdk/client-rum") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAppMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM 
         sends a copy of this telemetry data to Amazon CloudWatch Logs
         in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
         Amazon CloudWatch Logs charges.</p>")
    @as("CwLogEnabled")
    cwLogEnabled: option<baseBoolean>,
    @ocaml.doc("<p>A structure that contains much of the configuration data for the app monitor. If you are using 
         Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the 
         Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own 
         authorization method. For more information, see 
         <a href=\"https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html\">Authorize your application
            to send data to Amazon Web Services</a>.</p>")
    @as("AppMonitorConfiguration")
    appMonitorConfiguration: option<appMonitorConfiguration>,
    @ocaml.doc(
      "<p>The top-level internet domain name for which your application has administrative authority.</p>"
    )
    @as("Domain")
    domain: option<appMonitorDomain>,
    @ocaml.doc("<p>The name of the app monitor to update.</p>") @as("Name") name: appMonitorName,
  }
  type response = {.}
  @module("@aws-sdk/client-rum") @new external new: request => t = "UpdateAppMonitorCommand"
  let make = (~name, ~cwLogEnabled=?, ~appMonitorConfiguration=?, ~domain=?, ()) =>
    new({
      cwLogEnabled: cwLogEnabled,
      appMonitorConfiguration: appMonitorConfiguration,
      domain: domain,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRumEvents = {
  type t
  type request = {
    @ocaml.doc("<p>An array of structures that contain the telemetry event data.</p>")
    @as("RumEvents")
    rumEvents: rumEventList,
    @ocaml.doc(
      "<p>A structure that contains information about the user session that this batch of events was collected from.</p>"
    )
    @as("UserDetails")
    userDetails: userDetails,
    @ocaml.doc(
      "<p>A structure that contains information about the app monitor that collected this telemetry information.</p>"
    )
    @as("AppMonitorDetails")
    appMonitorDetails: appMonitorDetails,
    @ocaml.doc("<p>A unique identifier for this batch of RUM event data.</p>") @as("BatchId")
    batchId: baseString,
    @ocaml.doc("<p>The ID of the app monitor that is sending this data.</p>") @as("Id")
    id: appMonitorId,
  }
  type response = {.}
  @module("@aws-sdk/client-rum") @new external new: request => t = "PutRumEventsCommand"
  let make = (~rumEvents, ~userDetails, ~appMonitorDetails, ~batchId, ~id, ()) =>
    new({
      rumEvents: rumEvents,
      userDetails: userDetails,
      appMonitorDetails: appMonitorDetails,
      batchId: batchId,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListAppMonitors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Use the token returned by the previous operation to request the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<baseString>,
    @ocaml.doc("<p>The maximum number of results to return in one operation. </p>")
    @as("MaxResults")
    maxResults: option<baseInteger>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of structures that contain information about the returned app monitors.</p>"
    )
    @as("AppMonitorSummaries")
    appMonitorSummaries: option<appMonitorSummaryList>,
    @ocaml.doc("<p>A token that you can use in a subsequent operation to retrieve the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<baseString>,
  }
  @module("@aws-sdk/client-rum") @new external new: request => t = "ListAppMonitorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAppMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM 
         sends a copy of this telemetry data to Amazon CloudWatch Logs
         in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
         Amazon CloudWatch Logs charges.</p>
         <p>If you omit this parameter, the default is <code>false</code>.</p>")
    @as("CwLogEnabled")
    cwLogEnabled: option<baseBoolean>,
    @ocaml.doc("<p>A structure that contains much of the configuration data for the app monitor. If you are using 
         Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the 
         Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own 
         authorization method. For more information, see 
         <a href=\"https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html\">Authorize your application
            to send data to Amazon Web Services</a>.</p>
         <p>If you omit this argument, the sample rate used for RUM is set to 10% of the user sessions.</p>")
    @as("AppMonitorConfiguration")
    appMonitorConfiguration: option<appMonitorConfiguration>,
    @ocaml.doc("<p>Assigns one or more tags (key-value pairs) to the app monitor.</p>
         <p>Tags can help you organize and categorize your resources. You can also use them to scope user
         permissions by granting a user
         permission to access or change only resources with certain tag values.</p>
         <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    
         <p>You can associate as many as 50 tags with an app monitor.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>The top-level internet domain name for which your application has administrative authority.</p>"
    )
    @as("Domain")
    domain: appMonitorDomain,
    @ocaml.doc("<p>A name for the app monitor.</p>") @as("Name") name: appMonitorName,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the new app monitor.</p>") @as("Id") id: option<appMonitorId>,
  }
  @module("@aws-sdk/client-rum") @new external new: request => t = "CreateAppMonitorCommand"
  let make = (~domain, ~name, ~cwLogEnabled=?, ~appMonitorConfiguration=?, ~tags=?, ()) =>
    new({
      cwLogEnabled: cwLogEnabled,
      appMonitorConfiguration: appMonitorConfiguration,
      tags: tags,
      domain: domain,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppMonitorData = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Use the token returned by the previous operation to request the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return in one operation. </p>")
    @as("MaxResults")
    maxResults: option<maxQueryResults>,
    @ocaml.doc("<p>An array of structures that you can use to filter the results to those that match one or
         more sets of key-value pairs that you specify.</p>")
    @as("Filters")
    filters: option<queryFilters>,
    @ocaml.doc(
      "<p>A structure that defines the time range that you want to retrieve results from.</p>"
    )
    @as("TimeRange")
    timeRange: timeRange,
    @ocaml.doc(
      "<p>The name of the app monitor that collected the data that you want to retrieve.</p>"
    )
    @as("Name")
    name: appMonitorName,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent operation to retrieve the next set of
         results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The events that RUM collected that match your request.</p>") @as("Events")
    events: option<eventDataList>,
  }
  @module("@aws-sdk/client-rum") @new external new: request => t = "GetAppMonitorDataCommand"
  let make = (~timeRange, ~name, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      timeRange: timeRange,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppMonitor = {
  type t
  type request = {
    @ocaml.doc("<p>The app monitor to retrieve information for.</p>") @as("Name")
    name: appMonitorName,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure containing all the configuration information for the app monitor.</p>"
    )
    @as("AppMonitor")
    appMonitor: option<appMonitor>,
  }
  @module("@aws-sdk/client-rum") @new external new: request => t = "GetAppMonitorCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
