type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELDVALIDATIONFAILED | @as("CANNOT_PARSE") #CANNOTPARSE | @as("UNKNOWN_OPERATION") #UNKNOWNOPERATION]
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
type receiptType = [@as("STOP") #STOP | @as("SENT") #SENT | @as("READ") #READ | @as("ERROR") #ERROR | @as("DELIVERED") #DELIVERED]
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
type dateTime = Js.Date.t;
type content = string
type contactType = [@as("ESCALATION") #ESCALATION | @as("PERSONAL") #PERSONAL]
type contactName = string
type contactAlias = string
type channelType = [@as("EMAIL") #EMAIL | @as("VOICE") #VOICE | @as("SMS") #SMS]
type channelName = string
type amazonResourceName = string
type activationStatus = [@as("NOT_ACTIVATED") #NOTACTIVATED | @as("ACTIVATED") #ACTIVATED]
type activationCode = string
type acceptType = [@as("READ") #READ | @as("DELIVERED") #DELIVERED]
type acceptCode = string
type validationExceptionField = {
@as("Message") message: string_,
@as("Name") name: string_
}
type timeRange = {
@as("EndTime") endTime: option<dateTime>,
@as("StartTime") startTime: option<dateTime>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type receipt = {
@as("ReceiptTime") receiptTime: dateTime,
@as("ReceiptInfo") receiptInfo: option<receiptInfo>,
@as("ReceiptType") receiptType: receiptType,
@as("ContactChannelArn") contactChannelArn: option<ssmContactsArn>
}
type page = {
@as("ReadTime") readTime: option<dateTime>,
@as("DeliveryTime") deliveryTime: option<dateTime>,
@as("SentTime") sentTime: option<dateTime>,
@as("IncidentId") incidentId: option<incidentId>,
@as("Sender") sender: sender,
@as("ContactArn") contactArn: ssmContactsArn,
@as("EngagementArn") engagementArn: ssmContactsArn,
@as("PageArn") pageArn: ssmContactsArn
}
type engagement = {
@as("StopTime") stopTime: option<dateTime>,
@as("StartTime") startTime: option<dateTime>,
@as("IncidentId") incidentId: option<incidentId>,
@as("Sender") sender: sender,
@as("ContactArn") contactArn: ssmContactsArn,
@as("EngagementArn") engagementArn: ssmContactsArn
}
type contactTargetInfo = {
@as("IsEssential") isEssential: isEssential,
@as("ContactId") contactId: option<ssmContactsArn>
}
type contactChannelAddress = {
@as("SimpleAddress") simpleAddress: option<simpleAddress>
}
type contact = {
@as("Type") type_: contactType,
@as("DisplayName") displayName: option<contactName>,
@as("Alias") alias: contactAlias,
@as("ContactArn") contactArn: ssmContactsArn
}
type channelTargetInfo = {
@as("RetryIntervalInMinutes") retryIntervalInMinutes: option<retryIntervalInMinutes>,
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
type validationExceptionFieldList = array<validationExceptionField>
type target = {
@as("ContactTargetInfo") contactTargetInfo: option<contactTargetInfo>,
@as("ChannelTargetInfo") channelTargetInfo: option<channelTargetInfo>
}
type tagsList = array<tag>
type receiptsList = array<receipt>
type pagesList = array<page>
type engagementsList = array<engagement>
type contactsList = array<contact>
type contactChannel = {
@as("ActivationStatus") activationStatus: activationStatus,
@as("DeliveryAddress") deliveryAddress: contactChannelAddress,
@as("Type") type_: option<channelType>,
@as("Name") name: channelName,
@as("ContactArn") contactArn: ssmContactsArn,
@as("ContactChannelArn") contactChannelArn: ssmContactsArn
}
type targetsList = array<target>
type contactChannelList = array<contactChannel>
type stage = {
@as("Targets") targets: targetsList,
@as("DurationInMinutes") durationInMinutes: stageDurationInMins
}
type stagesList = array<stage>
type plan = {
@as("Stages") stages: stagesList
}
type awsServiceClient;
@module("@aws-sdk/client-ssm-contacts") @new external createClient: unit => awsServiceClient = "SSMContactsClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContactChannel = {
  type t;
  type request = {
@as("DeliveryAddress") deliveryAddress: option<contactChannelAddress>,
@as("Name") name: option<channelName>,
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UpdateContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagsList,
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopEngagement = {
  type t;
  type request = {
@as("Reason") reason: option<stopReason>,
@as("EngagementId") engagementId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "StopEngagementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartEngagement = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("IncidentId") incidentId: option<incidentId>,
@as("PublicContent") publicContent: option<publicContent>,
@as("PublicSubject") publicSubject: option<publicSubject>,
@as("Content") content: content,
@as("Subject") subject: subject,
@as("Sender") sender: sender,
@as("ContactId") contactId: ssmContactsArn
}
  type response = {
@as("EngagementArn") engagementArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "StartEngagementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendActivationCode = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "SendActivationCodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutContactPolicy = {
  type t;
  type request = {
@as("Policy") policy: policy,
@as("ContactArn") contactArn: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "PutContactPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: amazonResourceName
}
  type response = {
@as("Tags") tags: option<tagsList>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPagesByEngagement = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>,
@as("EngagementId") engagementId: ssmContactsArn
}
  type response = {
@as("Pages") pages: pagesList,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPagesByEngagementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPagesByContact = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>,
@as("ContactId") contactId: ssmContactsArn
}
  type response = {
@as("Pages") pages: pagesList,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPagesByContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPageReceipts = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>,
@as("PageId") pageId: ssmContactsArn
}
  type response = {
@as("Receipts") receipts: option<receiptsList>,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListPageReceiptsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEngagements = {
  type t;
  type request = {
@as("TimeRangeValue") timeRangeValue: option<timeRange>,
@as("IncidentId") incidentId: option<incidentId>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("Engagements") engagements: engagementsList,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListEngagementsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContacts = {
  type t;
  type request = {
@as("Type") type_: option<contactType>,
@as("AliasPrefix") aliasPrefix: option<contactAlias>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>
}
  type response = {
@as("Contacts") contacts: option<contactsList>,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListContactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactPolicy = {
  type t;
  type request = {
@as("ContactArn") contactArn: ssmContactsArn
}
  type response = {
@as("Policy") policy: option<policy>,
@as("ContactArn") contactArn: option<ssmContactsArn>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = {
@as("ActivationStatus") activationStatus: option<activationStatus>,
@as("DeliveryAddress") deliveryAddress: contactChannelAddress,
@as("Type") type_: channelType,
@as("Name") name: channelName,
@as("ContactChannelArn") contactChannelArn: ssmContactsArn,
@as("ContactArn") contactArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePage = {
  type t;
  type request = {
@as("PageId") pageId: ssmContactsArn
}
  type response = {
@as("DeliveryTime") deliveryTime: option<dateTime>,
@as("ReadTime") readTime: option<dateTime>,
@as("SentTime") sentTime: option<dateTime>,
@as("IncidentId") incidentId: option<incidentId>,
@as("PublicContent") publicContent: option<publicContent>,
@as("PublicSubject") publicSubject: option<publicSubject>,
@as("Content") content: content,
@as("Subject") subject: subject,
@as("Sender") sender: sender,
@as("ContactArn") contactArn: ssmContactsArn,
@as("EngagementArn") engagementArn: ssmContactsArn,
@as("PageArn") pageArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DescribePageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEngagement = {
  type t;
  type request = {
@as("EngagementId") engagementId: ssmContactsArn
}
  type response = {
@as("StopTime") stopTime: option<dateTime>,
@as("StartTime") startTime: option<dateTime>,
@as("IncidentId") incidentId: option<incidentId>,
@as("PublicContent") publicContent: option<publicContent>,
@as("PublicSubject") publicSubject: option<publicSubject>,
@as("Content") content: content,
@as("Subject") subject: subject,
@as("Sender") sender: sender,
@as("EngagementArn") engagementArn: ssmContactsArn,
@as("ContactArn") contactArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DescribeEngagementCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeleteContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContact = {
  type t;
  type request = {
@as("ContactId") contactId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeleteContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeactivateContactChannel = {
  type t;
  type request = {
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "DeactivateContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContactChannel = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("DeferActivation") deferActivation: option<deferActivation>,
@as("DeliveryAddress") deliveryAddress: contactChannelAddress,
@as("Type") type_: channelType,
@as("Name") name: channelName,
@as("ContactId") contactId: ssmContactsArn
}
  type response = {
@as("ContactChannelArn") contactChannelArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "CreateContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivateContactChannel = {
  type t;
  type request = {
@as("ActivationCode") activationCode: activationCode,
@as("ContactChannelId") contactChannelId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ActivateContactChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptPage = {
  type t;
  type request = {
@as("AcceptCode") acceptCode: acceptCode,
@as("Note") note: option<receiptInfo>,
@as("AcceptType") acceptType: acceptType,
@as("ContactChannelId") contactChannelId: option<ssmContactsArn>,
@as("PageId") pageId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "AcceptPageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContactChannels = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<paginationToken>,
@as("ContactId") contactId: ssmContactsArn
}
  type response = {
@as("ContactChannels") contactChannels: contactChannelList,
@as("NextToken") nextToken: option<paginationToken>
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "ListContactChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContact = {
  type t;
  type request = {
@as("Plan") plan: option<plan>,
@as("DisplayName") displayName: option<contactName>,
@as("ContactId") contactId: ssmContactsArn
}
  type response = unit
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "UpdateContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContact = {
  type t;
  type request = {
@as("ContactId") contactId: ssmContactsArn
}
  type response = {
@as("Plan") plan: plan,
@as("Type") type_: contactType,
@as("DisplayName") displayName: option<contactName>,
@as("Alias") alias: contactAlias,
@as("ContactArn") contactArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "GetContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContact = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Tags") tags: option<tagsList>,
@as("Plan") plan: plan,
@as("Type") type_: contactType,
@as("DisplayName") displayName: option<contactName>,
@as("Alias") alias: contactAlias
}
  type response = {
@as("ContactArn") contactArn: ssmContactsArn
}
  @module("@aws-sdk/client-ssm-contacts") @new external new_: (request) => t = "CreateContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
