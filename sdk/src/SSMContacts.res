type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ssm-contacts") @new
external createClient: unit => awsServiceClient = "SSMContactsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type tagValue = string
type tagKey = string
type subject = string
type string_ = string
type stopReason = string
type stageDurationInMins = int
type ssmContactsArn = string
type simpleAddress = string
type sender = string
type retryIntervalInMinutes = int
type retryAfterSeconds = int
type receiptType = [
  | @as("STOP") #STOP
  | @as("SENT") #SENT
  | @as("READ") #READ
  | @as("ERROR") #ERROR
  | @as("DELIVERED") #DELIVERED
]
type receiptInfo = string
type publicSubject = string
type publicContent = string
type policy = string
type paginationToken = string
type maxResults = int
type isEssential = bool
type incidentId = string
type idempotencyToken = string
type deferActivation = bool
type dateTime = Js.Date.t
type content = string
type contactType = [@as("ESCALATION") #ESCALATION | @as("PERSONAL") #PERSONAL]
type contactName = string
type contactAlias = string
type channelType = [@as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS]
type channelName = string
type amazonResourceName = string
type activationStatus = [@as("NOT_ACTIVATED") #NOT_ACTIVATED | @as("ACTIVATED") #ACTIVATED]
type activationCode = string
type acceptType = [@as("READ") #READ | @as("DELIVERED") #DELIVERED]
type acceptCode = string
@ocaml.doc("<p>Provides information about which field caused the exception.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>Information about what caused the field to cause an exception.</p>") @as("Message")
  message: string_,
  @ocaml.doc("<p>The name of the field that caused the exception.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>A range of between two set times</p>")
type timeRange = {
  @ocaml.doc("<p>The end of the time range.</p>") @as("EndTime") endTime: option<dateTime>,
  @ocaml.doc("<p>The start of the time range.</p>") @as("StartTime") startTime: option<dateTime>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A container of a key-value name pair.</p>")
type tag = {
  @ocaml.doc("<p>Value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>Name of the
         object
         key.</p>")
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>Records events during an engagement.</p>")
type receipt = {
  @ocaml.doc("<p>The time receipt was <code>SENT</code>, <code>DELIVERED</code>, or
         <code>READ</code>.</p>")
  @as("ReceiptTime")
  receiptTime: dateTime,
  @ocaml.doc("<p>Information provided during the page acknowledgement.</p>") @as("ReceiptInfo")
  receiptInfo: option<receiptInfo>,
  @ocaml.doc("<p>The type follows the engagement cycle, <code>SENT</code>, <code>DELIVERED</code>, and
            <code>READ</code>.</p>")
  @as("ReceiptType")
  receiptType: receiptType,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the contact channel Incident Manager engaged.</p>"
  )
  @as("ContactChannelArn")
  contactChannelArn: option<ssmContactsArn>,
}
@ocaml.doc("<p>Incident Manager engaging a contact's contact channel.</p>")
type page = {
  @ocaml.doc("<p>The time that the contact channel acknowledged engagement.</p>") @as("ReadTime")
  readTime: option<dateTime>,
  @ocaml.doc("<p>The time the message was delivered to the contact channel.</p>")
  @as("DeliveryTime")
  deliveryTime: option<dateTime>,
  @ocaml.doc("<p>The time that Incident Manager engaged the contact channel.</p>") @as("SentTime")
  sentTime: option<dateTime>,
  @ocaml.doc("<p>The ARN of the incident that's engaging the contact channel.</p>")
  @as("IncidentId")
  incidentId: option<incidentId>,
  @ocaml.doc("<p>The user that started the engagement.</p>") @as("Sender") sender: sender,
  @ocaml.doc("<p>The ARN of the contact that Incident Manager is engaging.</p>") @as("ContactArn")
  contactArn: ssmContactsArn,
  @ocaml.doc("<p>The ARN of the engagement that this page is part of.</p>") @as("EngagementArn")
  engagementArn: ssmContactsArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the page to the contact channel.</p>")
  @as("PageArn")
  pageArn: ssmContactsArn,
}
@ocaml.doc("<p>Incident Manager reaching out to a contact or escalation plan to engage contact during an
         incident.</p>")
type engagement = {
  @ocaml.doc("<p>The time that the engagement ended.</p>") @as("StopTime")
  stopTime: option<dateTime>,
  @ocaml.doc("<p>The time that the engagement began.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>The ARN of the incident that's engaging the contact.</p>") @as("IncidentId")
  incidentId: option<incidentId>,
  @ocaml.doc("<p>The user that started the engagement.</p>") @as("Sender") sender: sender,
  @ocaml.doc("<p>The ARN of the escalation plan or contact that Incident Manager is engaging.</p>")
  @as("ContactArn")
  contactArn: ssmContactsArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement.</p>") @as("EngagementArn")
  engagementArn: ssmContactsArn,
}
@ocaml.doc("<p>The contact that Incident Manager is engaging during an incident.</p>")
type contactTargetInfo = {
  @ocaml.doc("<p>A Boolean value determining if the contact's acknowledgement stops the progress of
         stages in the plan.</p>")
  @as("IsEssential")
  isEssential: isEssential,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact.</p>") @as("ContactId")
  contactId: option<ssmContactsArn>,
}
@ocaml.doc(
  "<p>The details that Incident Manager uses when trying to engage the contact channel. </p>"
)
type contactChannelAddress = {
  @ocaml.doc("<p>The format is dependent on the type of the contact channel. The following are the
         expected formats:</p>
         <ul>
            <li>
               <p>SMS - '+' followed by the country code and phone number</p>
            </li>
            <li>
               <p>VOICE - '+' followed by the country code and phone number</p>
            </li>
            <li>
               <p>EMAIL - any standard email format</p>
            </li>
         </ul>")
  @as("SimpleAddress")
  simpleAddress: option<simpleAddress>,
}
@ocaml.doc("<p>A personal contact or escalation plan that Incident Manager engages during an
         incident.</p>")
type contact = {
  @ocaml.doc("<p>Refers to the type of contact. A single contact is type <code>PERSONAL</code> and an
         escalation plan is type <code>ESCALATION</code>.</p>")
  @as("Type")
  type_: contactType,
  @ocaml.doc("<p>The full name of the contact or escalation plan.</p>") @as("DisplayName")
  displayName: option<contactName>,
  @ocaml.doc("<p>The unique and identifiable alias of the contact or escalation plan.</p>")
  @as("Alias")
  alias: contactAlias,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
  @as("ContactArn")
  contactArn: ssmContactsArn,
}
@ocaml.doc("<p>Information about the contact channel that Incident Manager uses to engage the
         contact.</p>")
type channelTargetInfo = {
  @ocaml.doc("<p>The number of minutes to wait to retry sending engagement in the case the engagement
         initially fails.</p>")
  @as("RetryIntervalInMinutes")
  retryIntervalInMinutes: option<retryIntervalInMinutes>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>")
  @as("ContactChannelId")
  contactChannelId: ssmContactsArn,
}
type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("<p>The contact or contact channel that is being engaged.</p>")
type target = {
  @ocaml.doc("<p>Information about the contact that Incident Manager is engaging.</p>")
  @as("ContactTargetInfo")
  contactTargetInfo: option<contactTargetInfo>,
  @ocaml.doc("<p>Information about the contact channel Incident Manager is engaging.</p>")
  @as("ChannelTargetInfo")
  channelTargetInfo: option<channelTargetInfo>,
}
type tagsList = array<tag>
type receiptsList = array<receipt>
type pagesList = array<page>
type engagementsList = array<engagement>
type contactsList = array<contact>
@ocaml.doc("<p>The method that Incident Manager uses to engage a contact.</p>")
type contactChannel = {
  @ocaml.doc("<p>A Boolean value describing if the contact channel has been activated or not. If the
         contact channel isn't activated, Incident Manager can't engage the contact through it. </p>")
  @as("ActivationStatus")
  activationStatus: activationStatus,
  @ocaml.doc(
    "<p>The details that Incident Manager uses when trying to engage the contact channel.</p>"
  )
  @as("DeliveryAddress")
  deliveryAddress: contactChannelAddress,
  @ocaml.doc("<p>The type of the contact channel. Incident Manager supports three contact methods:</p>
         <ul>
            <li>
               <p>SMS</p>
            </li>
            <li>
               <p>VOICE</p>
            </li>
            <li>
               <p>EMAIL</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<channelType>,
  @ocaml.doc("<p>The name of the contact channel.</p>") @as("Name") name: channelName,
  @ocaml.doc("<p>The ARN of the contact that contains the contact channel.</p>") @as("ContactArn")
  contactArn: ssmContactsArn,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>")
  @as("ContactChannelArn")
  contactChannelArn: ssmContactsArn,
}
type targetsList = array<target>
type contactChannelList = array<contactChannel>
@ocaml.doc("<p>A set amount of time that an escalation plan or engagement plan engages the specified
         contacts or contact methods.</p>")
type stage = {
  @ocaml.doc("<p>The contacts or contact methods that the escalation plan or engagement plan is
         engaging.</p>")
  @as("Targets")
  targets: targetsList,
  @ocaml.doc("<p>The time to wait until beginning the next stage.</p>") @as("DurationInMinutes")
  durationInMinutes: stageDurationInMins,
}
type stagesList = array<stage>
@ocaml.doc("<p>The stages that an escalation plan or engagement plan engages contacts and contact
         methods in.</p>")
type plan = {
  @ocaml.doc("<p>A list of stages that the escalation plan or engagement plan uses to engage contacts and
         contact methods.</p>")
  @as("Stages")
  stages: stagesList,
}
@ocaml.doc("<p></p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key of the tag that you want to remove.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateContactChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The details that Incident Manager uses when trying to engage the contact channel. </p>"
    )
    @as("DeliveryAddress")
    deliveryAddress: option<contactChannelAddress>,
    @ocaml.doc("<p>The name of the contact channel</p>") @as("Name") name: option<channelName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>")
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "UpdateContactChannelCommand"
  let make = (~contactChannelId, ~deliveryAddress=?, ~name=?, ()) =>
    new({deliveryAddress: deliveryAddress, name: name, contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags that you are adding to the contact or escalation plan.</p>")
    @as("Tags")
    tags: tagsList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopEngagement = {
  type t
  type request = {
    @ocaml.doc("<p>The reason that you're stopping the engagement. </p>") @as("Reason")
    reason: option<stopReason>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement.</p>") @as("EngagementId")
    engagementId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "StopEngagementCommand"
  let make = (~engagementId, ~reason=?, ()) => new({reason: reason, engagementId: engagementId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartEngagement = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>The ARN of the incident that the engagement is part of.</p>") @as("IncidentId")
    incidentId: option<incidentId>,
    @ocaml.doc("<p>The insecure content of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicContent")
    publicContent: option<publicContent>,
    @ocaml.doc("<p>The insecure subject of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicSubject")
    publicSubject: option<publicSubject>,
    @ocaml.doc("<p>The secure content of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>")
    @as("Content")
    content: content,
    @ocaml.doc("<p>The secure subject of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>")
    @as("Subject")
    subject: subject,
    @ocaml.doc("<p>The user that started the engagement.</p>") @as("Sender") sender: sender,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact being engaged.</p>")
    @as("ContactId")
    contactId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the engagement.</p>") @as("EngagementArn")
    engagementArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "StartEngagementCommand"
  let make = (
    ~content,
    ~subject,
    ~sender,
    ~contactId,
    ~idempotencyToken=?,
    ~incidentId=?,
    ~publicContent=?,
    ~publicSubject=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      incidentId: incidentId,
      publicContent: publicContent,
      publicSubject: publicSubject,
      content: content,
      subject: subject,
      sender: sender,
      contactId: contactId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendActivationCode = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>")
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "SendActivationCodeCommand"
  let make = (~contactChannelId, ()) => new({contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutContactPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Details of the resource policy.</p>") @as("Policy") policy: policy,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ContactArn")
    contactArn: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "PutContactPolicyCommand"
  let make = (~policy, ~contactArn, ()) => new({policy: policy, contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The tags related to the contact or escalation plan.</p>") @as("Tags")
    tags: option<tagsList>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPagesByEngagement = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of engagements to contact channels to list per page of
         results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement.</p>") @as("EngagementId")
    engagementId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The list of engagements to contact channels.</p>") @as("Pages") pages: pagesList,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ListPagesByEngagementCommand"
  let make = (~engagementId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, engagementId: engagementId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPagesByContact = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of engagements to contact channels to list per page of results. </p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>"
    )
    @as("ContactId")
    contactId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The list of engagements to a contact's contact channel.</p>") @as("Pages")
    pages: pagesList,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ListPagesByContactCommand"
  let make = (~contactId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPageReceipts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of acknowledgements per page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>"
    )
    @as("PageId")
    pageId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>A list of each acknowledgement.</p>") @as("Receipts")
    receipts: option<receiptsList>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ListPageReceiptsCommand"
  let make = (~pageId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, pageId: pageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEngagements = {
  type t
  type request = {
    @ocaml.doc("<p>The time range to lists engagements for an incident.</p>") @as("TimeRangeValue")
    timeRangeValue: option<timeRange>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>"
    )
    @as("IncidentId")
    incidentId: option<incidentId>,
    @ocaml.doc("<p>The maximum number of engagements per page of results.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of each engagement that occurred during the specified time range of an
         incident.</p>")
    @as("Engagements")
    engagements: engagementsList,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "ListEngagementsCommand"
  let make = (~timeRangeValue=?, ~incidentId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      timeRangeValue: timeRangeValue,
      incidentId: incidentId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContacts = {
  type t
  type request = {
    @ocaml.doc("<p>The type of contact. A contact is type <code>PERSONAL</code> and an escalation plan is
         type <code>ESCALATION</code>.</p>")
    @as("Type")
    type_: option<contactType>,
    @ocaml.doc("<p>Used to list only contacts who's aliases start with the specified prefix.</p>")
    @as("AliasPrefix")
    aliasPrefix: option<contactAlias>,
    @ocaml.doc("<p>The maximum number of contacts and escalation plans per page of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of the contacts and escalation plans in your Incident Manager account.</p>"
    )
    @as("Contacts")
    contacts: option<contactsList>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "ListContactsCommand"
  let make = (~type_=?, ~aliasPrefix=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({type_: type_, aliasPrefix: aliasPrefix, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContactPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ContactArn")
    contactArn: ssmContactsArn,
  }
  type response = {
    @ocaml.doc(
      "<p>Details about the resource policy attached to the contact or escalation plan.</p>"
    )
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc("<p>The ARN of the contact or escalation plan.</p>") @as("ContactArn")
    contactArn: option<ssmContactsArn>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "GetContactPolicyCommand"
  let make = (~contactArn, ()) => new({contactArn: contactArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContactChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>"
    )
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc(
      "<p>A Boolean value indicating if the contact channel has been activated or not.</p>"
    )
    @as("ActivationStatus")
    activationStatus: option<activationStatus>,
    @ocaml.doc(
      "<p>The details that Incident Manager uses when trying to engage the contact channel. </p>"
    )
    @as("DeliveryAddress")
    deliveryAddress: contactChannelAddress,
    @ocaml.doc("<p>The type of contact channel. The type is <code>SMS</code>, <code>VOICE</code>, or
            <code>EMAIL</code>.</p>")
    @as("Type")
    type_: channelType,
    @ocaml.doc("<p>The name of the contact channel</p>") @as("Name") name: channelName,
    @ocaml.doc("<p>The ARN of the contact channel.</p>") @as("ContactChannelArn")
    contactChannelArn: ssmContactsArn,
    @ocaml.doc("<p>The ARN of the contact that the channel belongs to.</p>") @as("ContactArn")
    contactArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "GetContactChannelCommand"
  let make = (~contactChannelId, ()) => new({contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePage = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the engagement to a contact channel.</p>") @as("PageId")
    pageId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The time that the contact channel received the engagement.</p>")
    @as("DeliveryTime")
    deliveryTime: option<dateTime>,
    @ocaml.doc("<p>The time that the contact channel acknowledged the engagement.</p>")
    @as("ReadTime")
    readTime: option<dateTime>,
    @ocaml.doc("<p>The time the engagement was sent to the contact channel.</p>") @as("SentTime")
    sentTime: option<dateTime>,
    @ocaml.doc("<p>The ARN of the incident that engaged the contact channel.</p>") @as("IncidentId")
    incidentId: option<incidentId>,
    @ocaml.doc("<p>The insecure content of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicContent")
    publicContent: option<publicContent>,
    @ocaml.doc("<p>The insecure subject of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicSubject")
    publicSubject: option<publicSubject>,
    @ocaml.doc("<p>The secure content of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>")
    @as("Content")
    content: content,
    @ocaml.doc("<p>The secure subject of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>")
    @as("Subject")
    subject: subject,
    @ocaml.doc("<p>The user that started the engagement.</p>") @as("Sender") sender: sender,
    @ocaml.doc("<p>The ARN of the contact that was engaged.</p>") @as("ContactArn")
    contactArn: ssmContactsArn,
    @ocaml.doc("<p>The ARN of the engagement that engaged the contact channel.</p>")
    @as("EngagementArn")
    engagementArn: ssmContactsArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>")
    @as("PageArn")
    pageArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "DescribePageCommand"
  let make = (~pageId, ()) => new({pageId: pageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngagement = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>")
    @as("EngagementId")
    engagementId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The time that the engagement ended.</p>") @as("StopTime")
    stopTime: option<dateTime>,
    @ocaml.doc("<p>The time that the engagement started.</p>") @as("StartTime")
    startTime: option<dateTime>,
    @ocaml.doc("<p>The ARN of the incident in which the engagement occurred.</p>") @as("IncidentId")
    incidentId: option<incidentId>,
    @ocaml.doc("<p>The insecure content of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicContent")
    publicContent: option<publicContent>,
    @ocaml.doc("<p>The insecure subject of the message that was sent to the contact. Use this field for
         engagements to <code>SMS</code>.</p>")
    @as("PublicSubject")
    publicSubject: option<publicSubject>,
    @ocaml.doc("<p>The secure content of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>")
    @as("Content")
    content: content,
    @ocaml.doc("<p>The secure subject of the message that was sent to the contact. Use this field for
         engagements to <code>VOICE</code> and <code>EMAIL</code>.</p>")
    @as("Subject")
    subject: subject,
    @ocaml.doc("<p>The user that started the engagement.</p>") @as("Sender") sender: sender,
    @ocaml.doc("<p>The ARN of the engagement.</p>") @as("EngagementArn")
    engagementArn: ssmContactsArn,
    @ocaml.doc("<p>The ARN of the escalation plan or contacts involved in the engagement.</p>")
    @as("ContactArn")
    contactArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "DescribeEngagementCommand"
  let make = (~engagementId, ()) => new({engagementId: engagementId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContactChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>")
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "DeleteContactChannelCommand"
  let make = (~contactChannelId, ()) => new({contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContact = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>")
    @as("ContactId")
    contactId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "DeleteContactCommand"
  let make = (~contactId, ()) => new({contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeactivateContactChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>")
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "DeactivateContactChannelCommand"
  let make = (~contactChannelId, ()) => new({contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateContactChannel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>If you want to activate the channel at a later time, you can choose to defer activation.
         Incident Manager can't engage your contact channel until it has been activated.</p>")
    @as("DeferActivation")
    deferActivation: option<deferActivation>,
    @ocaml.doc("<p>The details that Incident Manager uses when trying to engage the contact channel. The format
         is dependent on the type of the contact channel. The following are the expected
         formats:</p>
         <ul>
            <li>
               <p>SMS - '+' followed by the country code and phone number</p>
            </li>
            <li>
               <p>VOICE - '+' followed by the country code and phone number</p>
            </li>
            <li>
               <p>EMAIL - any standard email format</p>
            </li>
         </ul>")
    @as("DeliveryAddress")
    deliveryAddress: contactChannelAddress,
    @ocaml.doc("<p>Incident Manager supports three types of contact channels:</p>
         <ul>
            <li>
               <p>
                  <code>SMS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>VOICE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>EMAIL</code>
               </p>
            </li>
         </ul>")
    @as("Type")
    type_: channelType,
    @ocaml.doc("<p>The name of the contact channel.</p>") @as("Name") name: channelName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>") @as("ContactId")
    contactId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the contact channel.</p>") @as("ContactChannelArn")
    contactChannelArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "CreateContactChannelCommand"
  let make = (
    ~deliveryAddress,
    ~type_,
    ~name,
    ~contactId,
    ~idempotencyToken=?,
    ~deferActivation=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      deferActivation: deferActivation,
      deliveryAddress: deliveryAddress,
      type_: type_,
      name: name,
      contactId: contactId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ActivateContactChannel = {
  type t
  type request = {
    @ocaml.doc("<p>The code sent to the contact channel when it was created in the contact. </p>")
    @as("ActivationCode")
    activationCode: activationCode,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact channel.</p>")
    @as("ContactChannelId")
    contactChannelId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ActivateContactChannelCommand"
  let make = (~activationCode, ~contactChannelId, ()) =>
    new({activationCode: activationCode, contactChannelId: contactChannelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptPage = {
  type t
  type request = {
    @ocaml.doc("<p>The accept code is a 6-digit code used to acknowledge the page.</p>")
    @as("AcceptCode")
    acceptCode: acceptCode,
    @ocaml.doc("<p>Information provided by the user when the user acknowledges the page.</p>")
    @as("Note")
    note: option<receiptInfo>,
    @ocaml.doc(
      "<p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>"
    )
    @as("AcceptType")
    acceptType: acceptType,
    @ocaml.doc("<p>The ARN of the contact channel.</p>") @as("ContactChannelId")
    contactChannelId: option<ssmContactsArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>")
    @as("PageId")
    pageId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "AcceptPageCommand"
  let make = (~acceptCode, ~acceptType, ~pageId, ~note=?, ~contactChannelId=?, ()) =>
    new({
      acceptCode: acceptCode,
      note: note,
      acceptType: acceptType,
      contactChannelId: contactChannelId,
      pageId: pageId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListContactChannels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of contact channels per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact. </p>") @as("ContactId")
    contactId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>A list of contact channels related to the specified contact.</p>")
    @as("ContactChannels")
    contactChannels: contactChannelList,
    @ocaml.doc("<p>The pagination token to continue to the next page of results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-ssm-contacts") @new
  external new: request => t = "ListContactChannelsCommand"
  let make = (~contactId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContact = {
  type t
  type request = {
    @ocaml.doc("<p>A list of stages. A contact has an engagement plan with stages for specified contact
         channels. An escalation plan uses these stages to contact specified contacts. </p>")
    @as("Plan")
    plan: option<plan>,
    @ocaml.doc("<p>The full name of the contact or escalation plan.</p>") @as("DisplayName")
    displayName: option<contactName>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>"
    )
    @as("ContactId")
    contactId: ssmContactsArn,
  }

  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "UpdateContactCommand"
  let make = (~contactId, ~plan=?, ~displayName=?, ()) =>
    new({plan: plan, displayName: displayName, contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetContact = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>")
    @as("ContactId")
    contactId: ssmContactsArn,
  }
  type response = {
    @ocaml.doc("<p>Details about the specific timing or stages and targets of the escalation plan or
         engagement plan.</p>")
    @as("Plan")
    plan: plan,
    @ocaml.doc(
      "<p>The type of contact, either <code>PERSONAL</code> or <code>ESCALATION</code>. </p>"
    )
    @as("Type")
    type_: contactType,
    @ocaml.doc("<p>The full name of the contact or escalation plan.</p>") @as("DisplayName")
    displayName: option<contactName>,
    @ocaml.doc("<p>The alias of the contact or escalation plan. The alias is unique and
         identifiable.</p>")
    @as("Alias")
    alias: contactAlias,
    @ocaml.doc("<p>The ARN of the contact or escalation plan.</p>") @as("ContactArn")
    contactArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "GetContactCommand"
  let make = (~contactId, ()) => new({contactId: contactId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContact = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    @as("IdempotencyToken")
    idempotencyToken: option<idempotencyToken>,
    @ocaml.doc("<p>Adds a tag to the target. You can only tag resources created in the first Region of your
         replication set. </p>")
    @as("Tags")
    tags: option<tagsList>,
    @ocaml.doc("<p>A list of stages. A contact has an engagement plan with stages that contact specified
         contact channels. An escalation plan uses stages that contact specified contacts. </p>")
    @as("Plan")
    plan: plan,
    @ocaml.doc("<p>To create an escalation plan use <code>ESCALATION</code>. To create a contact use
            <code>PERSONAL</code>.</p>")
    @as("Type")
    type_: contactType,
    @ocaml.doc("<p>The full name of the contact or escalation plan.  </p>") @as("DisplayName")
    displayName: option<contactName>,
    @ocaml.doc("<p>The short name to quickly identify a contact or escalation plan. The contact alias must
         be unique and identifiable. </p>")
    @as("Alias")
    alias: contactAlias,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the created contact or escalation plan.</p>")
    @as("ContactArn")
    contactArn: ssmContactsArn,
  }
  @module("@aws-sdk/client-ssm-contacts") @new external new: request => t = "CreateContactCommand"
  let make = (~plan, ~type_, ~alias, ~idempotencyToken=?, ~tags=?, ~displayName=?, ()) =>
    new({
      idempotencyToken: idempotencyToken,
      tags: tags,
      plan: plan,
      type_: type_,
      displayName: displayName,
      alias: alias,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
