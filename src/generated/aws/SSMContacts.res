type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type tagValue = string
type tagKey = string
type subject = string
type amazonawsString = string
type stopReason = string
type stageDurationInMins = int;
type ssmContactsArn = string
type simpleAddress = string
type sender = string
type retryIntervalInMinutes = int;
type retryAfterSeconds = int;
type receiptType = [@as("STOP") #STOP | @as("SENT") #SENT | @as("READ") #READ | @as("ERROR") #ERROR | @as("DELIVERED") #DELIVERED]
type receiptInfo = string
type publicSubject = string
type publicContent = string
type policy = string
type paginationToken = string
type maxResults = int;
type isEssential = bool;
type incidentId = string
type idempotencyToken = string
type deferActivation = bool;
type dateTime = Js.Date.t;
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
type validationExceptionField = {
@as("Message") message: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
type timeRange = {
@as("EndTime") endTime: dateTime,
@as("StartTime") startTime: dateTime
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type receipt = {
@as("ReceiptTime") receiptTime: option<dateTime>,
@as("ReceiptInfo") receiptInfo: receiptInfo,
@as("ReceiptType") receiptType: option<receiptType>,
@as("ContactChannelArn") contactChannelArn: ssmContactsArn
}
type page = {
@as("ReadTime") readTime: dateTime,
@as("DeliveryTime") deliveryTime: dateTime,
@as("SentTime") sentTime: dateTime,
@as("IncidentId") incidentId: incidentId,
@as("Sender") sender: option<sender>,
@as("ContactArn") contactArn: option<ssmContactsArn>,
@as("EngagementArn") engagementArn: option<ssmContactsArn>,
@as("PageArn") pageArn: option<ssmContactsArn>
}
type engagement = {
@as("StopTime") stopTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("IncidentId") incidentId: incidentId,
@as("Sender") sender: option<sender>,
@as("ContactArn") contactArn: option<ssmContactsArn>,
@as("EngagementArn") engagementArn: option<ssmContactsArn>
}
type contactTargetInfo = {
@as("IsEssential") isEssential: option<isEssential>,
@as("ContactId") contactId: ssmContactsArn
}
type contactChannelAddress = {
@as("SimpleAddress") simpleAddress: simpleAddress
}
type contact = {
@as("Type") type_: option<contactType>,
@as("DisplayName") displayName: contactName,
@as("Alias") alias: option<contactAlias>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
type channelTargetInfo = {
@as("RetryIntervalInMinutes") retryIntervalInMinutes: retryIntervalInMinutes,
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
type validationExceptionFieldList = array<validationExceptionField>
type target = {
@as("ContactTargetInfo") contactTargetInfo: contactTargetInfo,
@as("ChannelTargetInfo") channelTargetInfo: channelTargetInfo
}
type tagsList = array<tag>
type receiptsList = array<receipt>
type pagesList = array<page>
type engagementsList = array<engagement>
type contactsList = array<contact>
type contactChannel = {
@as("ActivationStatus") activationStatus: option<activationStatus>,
@as("DeliveryAddress") deliveryAddress: option<contactChannelAddress>,
@as("Type") type_: channelType,
@as("Name") name: option<channelName>,
@as("ContactArn") contactArn: option<ssmContactsArn>,
@as("ContactChannelArn") contactChannelArn: option<ssmContactsArn>
}
type targetsList = array<target>
type contactChannelList = array<contactChannel>
type stage = {
@as("Targets") targets: option<targetsList>,
@as("DurationInMinutes") durationInMinutes: option<stageDurationInMins>
}
type stagesList = array<stage>
type plan = {
@as("Stages") stages: option<stagesList>
}
type clientType;
@module("@aws-sdk/client-ssm-contacts") @new external createClient: unit => clientType = "SSMContactsClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContactChannel = {
  type t;
  type request = {
@as("DeliveryAddress") deliveryAddress: contactChannelAddress,
@as("Name") name: channelName,
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UpdateContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagsList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopEngagement = {
  type t;
  type request = {
@as("Reason") reason: stopReason,
@as("EngagementId") engagementId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "StopEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartEngagement = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("IncidentId") incidentId: incidentId,
@as("PublicContent") publicContent: publicContent,
@as("PublicSubject") publicSubject: publicSubject,
@as("Content") content: option<content>,
@as("Subject") subject: option<subject>,
@as("Sender") sender: option<sender>,
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = {
@as("EngagementArn") engagementArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "StartEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendActivationCode = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "SendActivationCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutContactPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<policy>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "PutContactPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagsList
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPagesByEngagement = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken,
@as("EngagementId") engagementId: option<ssmContactsArn>
}
  type response = {
@as("Pages") pages: option<pagesList>,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPagesByEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPagesByContact = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken,
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = {
@as("Pages") pages: option<pagesList>,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPagesByContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPageReceipts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken,
@as("PageId") pageId: option<ssmContactsArn>
}
  type response = {
@as("Receipts") receipts: receiptsList,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPageReceiptsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEngagements = {
  type t;
  type request = {
@as("TimeRangeValue") timeRangeValue: timeRange,
@as("IncidentId") incidentId: incidentId,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("Engagements") engagements: option<engagementsList>,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListEngagementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContacts = {
  type t;
  type request = {
@as("Type") type_: contactType,
@as("AliasPrefix") aliasPrefix: contactAlias,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("Contacts") contacts: contactsList,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListContactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContactPolicy = {
  type t;
  type request = {
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  type response = {
@as("Policy") policy: policy,
@as("ContactArn") contactArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = {
@as("ActivationStatus") activationStatus: activationStatus,
@as("DeliveryAddress") deliveryAddress: option<contactChannelAddress>,
@as("Type") type_: option<channelType>,
@as("Name") name: option<channelName>,
@as("ContactChannelArn") contactChannelArn: option<ssmContactsArn>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePage = {
  type t;
  type request = {
@as("PageId") pageId: option<ssmContactsArn>
}
  type response = {
@as("DeliveryTime") deliveryTime: dateTime,
@as("ReadTime") readTime: dateTime,
@as("SentTime") sentTime: dateTime,
@as("IncidentId") incidentId: incidentId,
@as("PublicContent") publicContent: publicContent,
@as("PublicSubject") publicSubject: publicSubject,
@as("Content") content: option<content>,
@as("Subject") subject: option<subject>,
@as("Sender") sender: option<sender>,
@as("ContactArn") contactArn: option<ssmContactsArn>,
@as("EngagementArn") engagementArn: option<ssmContactsArn>,
@as("PageArn") pageArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DescribePageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEngagement = {
  type t;
  type request = {
@as("EngagementId") engagementId: option<ssmContactsArn>
}
  type response = {
@as("StopTime") stopTime: dateTime,
@as("StartTime") startTime: dateTime,
@as("IncidentId") incidentId: incidentId,
@as("PublicContent") publicContent: publicContent,
@as("PublicSubject") publicSubject: publicSubject,
@as("Content") content: option<content>,
@as("Subject") subject: option<subject>,
@as("Sender") sender: option<sender>,
@as("EngagementArn") engagementArn: option<ssmContactsArn>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DescribeEngagementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeleteContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContact = {
  type t;
  type request = {
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeleteContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeactivateContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeactivateContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContactChannel = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("DeferActivation") deferActivation: deferActivation,
@as("DeliveryAddress") deliveryAddress: option<contactChannelAddress>,
@as("Type") type_: option<channelType>,
@as("Name") name: option<channelName>,
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = {
@as("ContactChannelArn") contactChannelArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "CreateContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateContactChannel = {
  type t;
  type request = {
@as("ActivationCode") activationCode: option<activationCode>,
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ActivateContactChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptPage = {
  type t;
  type request = {
@as("AcceptCode") acceptCode: option<acceptCode>,
@as("Note") note: receiptInfo,
@as("AcceptType") acceptType: option<acceptType>,
@as("ContactChannelId") contactChannelId: ssmContactsArn,
@as("PageId") pageId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "AcceptPageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContactChannels = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: paginationToken,
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = {
@as("ContactChannels") contactChannels: option<contactChannelList>,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListContactChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContact = {
  type t;
  type request = {
@as("Plan") plan: plan,
@as("DisplayName") displayName: contactName,
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UpdateContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContact = {
  type t;
  type request = {
@as("ContactId") contactId: option<ssmContactsArn>
}
  type response = {
@as("Plan") plan: option<plan>,
@as("Type") type_: option<contactType>,
@as("DisplayName") displayName: contactName,
@as("Alias") alias: option<contactAlias>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContact = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("Tags") tags: tagsList,
@as("Plan") plan: option<plan>,
@as("Type") type_: option<contactType>,
@as("DisplayName") displayName: contactName,
@as("Alias") alias: option<contactAlias>
}
  type response = {
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "CreateContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
