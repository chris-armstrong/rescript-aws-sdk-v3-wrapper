type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-chime") @new
external createClient: unit => awsServiceClient = "ChimeSDKIdentityClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userName = string
type userId = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type sensitiveString64 = string
type sensitiveString1600 = string
type sensitiveChimeArn = string
type retentionDays = int
type resourceName = string
type nonEmptySensitiveString1600 = string
type nonEmptyResourceName = string
type nextToken = string
type metadata = string
type maxResults = int
type errorCode = [
  | @as("PhoneNumberAssociationsExist") #PhoneNumberAssociationsExist
  | @as("VoiceConnectorGroupAssociationsExist") #VoiceConnectorGroupAssociationsExist
  | @as("Unprocessable") #Unprocessable
  | @as("Unauthorized") #Unauthorized
  | @as("Throttling") #Throttling
  | @as("Throttled") #Throttled
  | @as("ServiceUnavailable") #ServiceUnavailable
  | @as("AccessDenied") #AccessDenied
  | @as("ServiceFailure") #ServiceFailure
  | @as("ResourceLimitExceeded") #ResourceLimitExceeded
  | @as("PreconditionFailed") #PreconditionFailed
  | @as("NotFound") #NotFound
  | @as("Forbidden") #Forbidden
  | @as("Conflict") #Conflict
  | @as("BadRequest") #BadRequest
]
type endpointStatusReason = [
  | @as("INVALID_PINPOINT_ARN") #INVALID_PINPOINT_ARN
  | @as("INVALID_DEVICE_TOKEN") #INVALID_DEVICE_TOKEN
]
type endpointStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type clientRequestToken = string
type chimeArn = string
type appInstanceUserEndpointType = [
  | @as("GCM") #GCM
  | @as("APNS_SANDBOX") #APNS_SANDBOX
  | @as("APNS") #APNS
]
type allowMessages = [@as("NONE") #NONE | @as("ALL") #ALL]
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag object containing a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>The value in a tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key in a tag.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>The details of a user.</p>")
type identity = {
  @ocaml.doc("<p>The name in an Identity.</p>") @as("Name") name: option<resourceName>,
  @ocaml.doc("<p>The ARN in an Identity.</p>") @as("Arn") arn: option<chimeArn>,
}
@ocaml.doc("<p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive
               message. When INACTIVE, the corresponding reason will be conveyed through
               EndpointStatusReason.</p>
            </li>
            <li>
               <p>
                  <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
            </li>
            <li>
               <p>
                  <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input through the <code>ResourceArn</code> field.</p>
            </li>
         </ul>")
type endpointState = {
  @ocaml.doc("<p>The reason for the <code>EndpointStatus</code>.</p>") @as("StatusReason")
  statusReason: option<endpointStatusReason>,
  @ocaml.doc("<p>Enum that indicates the Status of an <code>AppInstanceUserEndpoint</code>.</p>")
  @as("Status")
  status: endpointStatus,
}
@ocaml.doc("<p>The attributes of an <code>Endpoint</code>.</p>")
type endpointAttributes = {
  @ocaml.doc("<p>The VOIP device token for the APNS and APNS_SANDBOX endpoint types.</p>")
  @as("VoipDeviceToken")
  voipDeviceToken: option<nonEmptySensitiveString1600>,
  @ocaml.doc("<p>The device token for the GCM, APNS, and APNS_SANDBOX endpoint types.</p>")
  @as("DeviceToken")
  deviceToken: nonEmptySensitiveString1600,
}
@ocaml.doc("<p>The details of the retention settings for a channel.</p>")
type channelRetentionSettings = {
  @ocaml.doc("<p>The time in days to retain the messages in a channel.</p>") @as("RetentionDays")
  retentionDays: option<retentionDays>,
}
@ocaml.doc("<p>Summary of the details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUserSummary = {
  @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of an <code>AppInstanceUser</code>.</p>") @as("Name")
  name: option<userName>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<chimeArn>,
}
@ocaml.doc("<p>The details of an <code>AppInstanceUser</code>.</p>")
type appInstanceUser = {
  @ocaml.doc("<p>The time at which the <code>AppInstanceUser</code> was last updated.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which the <code>AppInstanceUser</code> was created.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("Name")
  name: option<userName>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<chimeArn>,
}
@ocaml.doc("<p>Summary of the data for an <code>AppInstance</code>.</p>")
type appInstanceSummary = {
  @ocaml.doc("<p>The metadata of the <code>AppInstance</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The name of the <code>AppInstance</code>.</p>") @as("Name")
  name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>The <code>AppInstance</code> ARN.</p>") @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
}
@ocaml.doc("<p>The details of an <code>AppInstance</code>, an instance of an Amazon Chime SDK messaging
         application.</p>")
type appInstance = {
  @ocaml.doc("<p>The metadata of an <code>AppInstance</code>.</p>") @as("Metadata")
  metadata: option<metadata>,
  @ocaml.doc("<p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>"
  )
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of an <code>AppInstance</code>.</p>") @as("Name")
  name: option<nonEmptyResourceName>,
  @ocaml.doc("<p>The ARN of the messaging instance.</p>") @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
}
type tagList_ = array<tag>
type appInstanceUserList = array<appInstanceUserSummary>
@ocaml.doc("<p>Summary of the details of an <code>AppInstanceUserEndpoint</code>.</p>")
type appInstanceUserEndpointSummary = {
  @ocaml.doc(
    "<p>A read-only field that represent the state of an <code>AppInstanceUserEndpoint</code>.</p>"
  )
  @as("EndpointState")
  endpointState: option<endpointState>,
  @ocaml.doc("<p>BBoolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
         <code>NONE</code> indicates the endpoint will receive no messages.</p>")
  @as("AllowMessages")
  allowMessages: option<allowMessages>,
  @ocaml.doc("<p>The type of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Type")
  type_: option<appInstanceUserEndpointType>,
  @ocaml.doc("<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Name")
  name: option<sensitiveString1600>,
  @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
  @as("EndpointId")
  endpointId: option<sensitiveString64>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<sensitiveChimeArn>,
}
@ocaml.doc(
  "<p>An endpoint under an Amazon Chime <code>AppInstanceUser</code> that receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.</p>"
)
type appInstanceUserEndpoint = {
  @ocaml.doc("<p>A read-only field that represents the state of an <code>AppInstanceUserEndpoint</code>. Supported values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is active and able to receive messages. When <code>ACTIVE</code>, the <code>EndpointStatusReason</code> remains empty.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code>: The <code>AppInstanceUserEndpoint</code> is inactive and can't receive message. When <code>INACTIVE</code>, the corresponding reason will be 
            conveyed through <code>EndpointStatusReason</code>.</p>
            </li>
            <li>
               <p>
                  <code>INVALID_DEVICE_TOKEN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to invalid device token</p>
            </li>
            <li>
               <p>
                  <code>INVALID_PINPOINT_ARN</code> indicates that an <code>AppInstanceUserEndpoint</code> is <code>INACTIVE</code> due to an invalid pinpoint ARN that was input 
            through the <code>ResourceArn</code> field.</p>
            </li>
         </ul>")
  @as("EndpointState")
  endpointState: option<endpointState>,
  @ocaml.doc("<p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
         <code>NONE</code> indicates the endpoint will receive no messages.</p>")
  @as("AllowMessages")
  allowMessages: option<allowMessages>,
  @ocaml.doc("<p>The time at which an <code>AppInstanceUserEndpoint</code> was last updated.</p>")
  @as("LastUpdatedTimestamp")
  lastUpdatedTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The time at which an <code>AppInstanceUserEndpoint</code> was created.</p>")
  @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The attributes of an <code>Endpoint</code>.</p>") @as("EndpointAttributes")
  endpointAttributes: option<endpointAttributes>,
  @ocaml.doc("<p>The ARN of the resource to which the endpoint belongs.</p>") @as("ResourceArn")
  resourceArn: option<sensitiveChimeArn>,
  @ocaml.doc("<p>The type of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Type")
  type_: option<appInstanceUserEndpointType>,
  @ocaml.doc("<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Name")
  name: option<sensitiveString1600>,
  @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
  @as("EndpointId")
  endpointId: option<sensitiveString64>,
  @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
  appInstanceUserArn: option<sensitiveChimeArn>,
}
@ocaml.doc("<p>The details of the data-retention settings for an <code>AppInstance</code>.</p>")
type appInstanceRetentionSettings = {
  @ocaml.doc("<p>The length of time in days to retain the messages in a channel.</p>")
  @as("ChannelRetentionSettings")
  channelRetentionSettings: option<channelRetentionSettings>,
}
type appInstanceList = array<appInstanceSummary>
@ocaml.doc("<p>Summary of the details of an <code>AppInstanceAdmin</code>.</p>")
type appInstanceAdminSummary = {
  @ocaml.doc("<p>The details of the <code>AppInstanceAdmin</code>.</p>") @as("Admin")
  admin: option<identity>,
}
@ocaml.doc("<p>The details of an <code>AppInstanceAdmin</code>.</p>")
type appInstanceAdmin = {
  @ocaml.doc("<p>The time at which an administrator was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>"
  )
  @as("AppInstanceArn")
  appInstanceArn: option<chimeArn>,
  @ocaml.doc("<p>The <code>AppInstanceAdmin</code> data.</p>") @as("Admin") admin: option<identity>,
}
type appInstanceUserEndpointSummaryList = array<appInstanceUserEndpointSummary>
type appInstanceAdminList = array<appInstanceAdminSummary>
@ocaml.doc("<p>The Amazon Chime SDK Identity APIs in this section allow software developers to create
         and manage unique instances of their messaging applications. These APIs provide the
         overarching framework for creating and sending messages. For more information about the
         identity APIs, refer to <a href=\"https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html\">Amazon Chime SDK identity</a>.</p>")
module UpdateAppInstanceUserEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
         <code>NONE</code> indicates the endpoint will receive no messages.</p>")
    @as("AllowMessages")
    allowMessages: option<allowMessages>,
    @ocaml.doc("<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Name")
    name: option<sensitiveString1600>,
    @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
    @as("EndpointId")
    endpointId: sensitiveString64,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: sensitiveChimeArn,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
    @as("EndpointId")
    endpointId: option<sensitiveString64>,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<sensitiveChimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "UpdateAppInstanceUserEndpointCommand"
  let make = (~endpointId, ~appInstanceUserArn, ~allowMessages=?, ~name=?, ()) =>
    new({allowMessages, name, endpointId, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata of the <code>AppInstanceUser</code>.</p>") @as("Metadata")
    metadata: metadata,
    @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("Name") name: userName,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAppInstanceUserCommand"
  let make = (~metadata, ~name, ~appInstanceUserArn, ()) =>
    new({metadata, name, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata that you want to change.</p>") @as("Metadata") metadata: metadata,
    @ocaml.doc("<p>The name that you want to change.</p>") @as("Name") name: nonEmptyResourceName,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "UpdateAppInstanceCommand"
  let make = (~metadata, ~name, ~appInstanceArn, ()) => new({metadata, name, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeregisterAppInstanceUserEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
    @as("EndpointId")
    endpointId: sensitiveString64,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: sensitiveChimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DeregisterAppInstanceUserEndpointCommand"
  let make = (~endpointId, ~appInstanceUserArn, ()) => new({endpointId, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the user request being deleted.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceUserCommand"
  let make = (~appInstanceUserArn, ()) => new({appInstanceUserArn: appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>'s administrator.</p>")
    @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "DeleteAppInstanceCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterAppInstanceUserEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages. 
         <code>NONE</code> indicates the endpoint receives no messages.</p>")
    @as("AllowMessages")
    allowMessages: option<allowMessages>,
    @ocaml.doc("<p>The idempotency token for each client request. </p>") @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The attributes of an <code>Endpoint</code>.</p>") @as("EndpointAttributes")
    endpointAttributes: endpointAttributes,
    @ocaml.doc("<p>The ARN of the resource to which the endpoint belongs.</p>") @as("ResourceArn")
    resourceArn: sensitiveChimeArn,
    @ocaml.doc("<p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>
         <ul>
            <li>
               <p>
                  <code>APNS</code>: The mobile notification service for an Apple device.</p>
            </li>
            <li>
               <p>
                  <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>
            </li>
            <li>
               <p>
                  <code>GCM</code>: The mobile notification service for an Android device.</p>
            </li>
         </ul>
         <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>")
    @as("Type")
    type_: appInstanceUserEndpointType,
    @ocaml.doc("<p>The name of the <code>AppInstanceUserEndpoint</code>.</p>") @as("Name")
    name: option<sensitiveString1600>,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: sensitiveChimeArn,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
    @as("EndpointId")
    endpointId: option<sensitiveString64>,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<sensitiveChimeArn>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "RegisterAppInstanceUserEndpointCommand"
  let make = (
    ~clientRequestToken,
    ~endpointAttributes,
    ~resourceArn,
    ~type_,
    ~appInstanceUserArn,
    ~allowMessages=?,
    ~name=?,
    (),
  ) =>
    new({
      allowMessages,
      clientRequestToken,
      endpointAttributes,
      resourceArn,
      type_,
      name,
      appInstanceUserArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The name of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUser")
    appInstanceUser: option<appInstanceUser>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeAppInstanceUserCommand"
  let make = (~appInstanceUserArn, ()) => new({appInstanceUserArn: appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN, metadata, created and last-updated timestamps, and the name of the
            <code>AppInstance</code>. All timestamps use epoch milliseconds.</p>")
    @as("AppInstance")
    appInstance: option<appInstance>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "DescribeAppInstanceCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the administrator of the current <code>AppInstance</code>.</p>")
    @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the of the admin for the <code>AppInstance</code>.</p>")
    @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
    @ocaml.doc("<p>The name and ARN of the admin for the <code>AppInstance</code>.</p>")
    @as("AppInstanceAdmin")
    appInstanceAdmin: option<identity>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {.}
  @module("@aws-sdk/client-chime") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutAppInstanceRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The time in days to retain data. Data type: number.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: appInstanceRetentionSettings,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The time at which the API deletes data.</p>") @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The time in days to retain data. Data type: number.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "PutAppInstanceRetentionSettingsCommand"
  let make = (~appInstanceRetentionSettings, ~appInstanceArn, ()) =>
    new({appInstanceRetentionSettings, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceARN") resourceARN: chimeArn,
  }
  type response = {@ocaml.doc("<p>The tag key-value pairs.</p>") @as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The token passed by previous API requests until you reach the maximum number of
            <code>AppInstances</code>.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of <code>AppInstance</code>s that you want to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token passed by previous API requests until the maximum number of
            <code>AppInstance</code>s is reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each <code>AppInstance</code>.</p>") @as("AppInstances")
    appInstances: option<appInstanceList>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstanceUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of requests that you want returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested users are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each requested <code>AppInstanceUser</code>.</p>")
    @as("AppInstanceUsers")
    appInstanceUsers: option<appInstanceUserList>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstanceUsersCommand"
  let make = (~appInstanceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAppInstanceRetentionSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The timestamp representing the time at which the specified items are retained, in Epoch
         Seconds.</p>")
    @as("InitiateDeletionTimestamp")
    initiateDeletionTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The retention settings for the <code>AppInstance</code>.</p>")
    @as("AppInstanceRetentionSettings")
    appInstanceRetentionSettings: option<appInstanceRetentionSettings>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "GetAppInstanceRetentionSettingsCommand"
  let make = (~appInstanceArn, ()) => new({appInstanceArn: appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstanceUserEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>")
    @as("EndpointId")
    endpointId: sensitiveString64,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: sensitiveString1600,
  }
  type response = {
    @ocaml.doc("<p>The full details of an <code>AppInstanceUserEndpoint</code>: the <code>AppInstanceUserArn</code>, ID, name, type, resource ARN, attributes, 
         allow messages, state, and created and last updated timestamps. All timestamps use epoch milliseconds.</p>")
    @as("AppInstanceUserEndpoint")
    appInstanceUserEndpoint: option<appInstanceUserEndpoint>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeAppInstanceUserEndpointCommand"
  let make = (~endpointId, ~appInstanceUserArn, ()) => new({endpointId, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppInstanceAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceAdmin</code>.</p>") @as("AppInstanceAdminArn")
    appInstanceAdminArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the
            <code>AppInstance</code>, and the created and last-updated timestamps. All timestamps
         use epoch milliseconds.</p>")
    @as("AppInstanceAdmin")
    appInstanceAdmin: option<appInstanceAdmin>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "DescribeAppInstanceAdminCommand"
  let make = (~appInstanceArn, ~appInstanceAdminArn, ()) =>
    new({appInstanceArn, appInstanceAdminArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstanceUser = {
  type t
  type request = {
    @ocaml.doc("<p>Tags assigned to the <code>AppInstanceUser</code>.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The token assigned to the user requesting an <code>AppInstance</code>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The request's metadata. Limited to a 1KB string in UTF-8.</p>") @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The user's name.</p>") @as("Name") name: userName,
    @ocaml.doc("<p>The user ID of the <code>AppInstance</code>.</p>") @as("AppInstanceUserId")
    appInstanceUserId: userId,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code> request.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The user's ARN.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceUserCommand"
  let make = (
    ~clientRequestToken,
    ~name,
    ~appInstanceUserId,
    ~appInstanceArn,
    ~tags=?,
    ~metadata=?,
    (),
  ) => new({tags, clientRequestToken, metadata, name, appInstanceUserId, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAppInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Tags assigned to the <code>AppInstanceUser</code>.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>")
    @as("ClientRequestToken")
    clientRequestToken: clientRequestToken,
    @ocaml.doc(
      "<p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>"
    )
    @as("Metadata")
    metadata: option<metadata>,
    @ocaml.doc("<p>The name of the <code>AppInstance</code>.</p>") @as("Name")
    name: nonEmptyResourceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>")
    @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "CreateAppInstanceCommand"
  let make = (~clientRequestToken, ~name, ~tags=?, ~metadata=?, ()) =>
    new({tags, clientRequestToken, metadata, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstanceUserEndpoints = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested endpoints are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of endpoints that you want to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstanceUser</code>.</p>") @as("AppInstanceUserArn")
    appInstanceUserArn: sensitiveChimeArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token passed by previous API calls until all requested endpoints are returned.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each requested <code>AppInstanceUserEndpoint</code>.</p>")
    @as("AppInstanceUserEndpoints")
    appInstanceUserEndpoints: option<appInstanceUserEndpointSummaryList>,
  }
  @module("@aws-sdk/client-chime") @new
  external new: request => t = "ListAppInstanceUserEndpointsCommand"
  let make = (~appInstanceUserArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceUserArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppInstanceAdmins = {
  type t
  type request = {
    @ocaml.doc("<p>The token returned from previous API requests until the number of administrators is
         reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of administrators that you want to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: chimeArn,
  }
  type response = {
    @ocaml.doc("<p>The token returned from previous API requests until the number of administrators is
         reached.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The information for each administrator.</p>") @as("AppInstanceAdmins")
    appInstanceAdmins: option<appInstanceAdminList>,
    @ocaml.doc("<p>The ARN of the <code>AppInstance</code>.</p>") @as("AppInstanceArn")
    appInstanceArn: option<chimeArn>,
  }
  @module("@aws-sdk/client-chime") @new external new: request => t = "ListAppInstanceAdminsCommand"
  let make = (~appInstanceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, appInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
