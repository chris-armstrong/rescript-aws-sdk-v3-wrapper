type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type integer_ = int
type uuid = string
type typeName = string
type token = string
type timestamp_ = Js.Date.t;
type text = string
type stringifiedJson = string
type stringTo2048 = string
type string1To255 = string
type string1To1000 = string
type string0To255 = string
type string0To1000 = string
type sqsQueueUrl = string
type optionalBoolean = bool
type name = string
type message = string
type maxSize100 = int
type matchesNumber = int
type long = float
type expirationDaysInteger = int
type encryptionKey = string
type boolean_ = bool
type zendeskConnectorOperator = [@as("NO_OP") #NOOP | @as("VALIDATE_NUMERIC") #VALIDATENUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATENONNEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATENONZERO | @as("VALIDATE_NON_NULL") #VALIDATENONNULL | @as("MASK_LAST_N") #MASKLASTN | @as("MASK_FIRST_N") #MASKFIRSTN | @as("MASK_ALL") #MASKALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("GREATER_THAN") #GREATERTHAN | @as("PROJECTION") #PROJECTION]
type triggerType = [@as("OnDemand") #OnDemand | @as("Event") #Event | @as("Scheduled") #Scheduled]
type timezone = string
type taskType = [@as("Validate") #Validate | @as("Truncate") #Truncate | @as("Merge") #Merge | @as("Mask") #Mask | @as("Map") #Map | @as("Filter") #Filter | @as("Arithmetic") #Arithmetic]
type tagValue = string
type tagKey = string
type tagArn = string
type standardIdentifier = [@as("NEW_ONLY") #NEWONLY | @as("LOOKUP_ONLY") #LOOKUPONLY | @as("SECONDARY") #SECONDARY | @as("UNIQUE") #UNIQUE | @as("PROFILE") #PROFILE]
type sourceConnectorType = [@as("S3") #S3 | @as("Servicenow") #Servicenow | @as("Zendesk") #Zendesk | @as("Marketo") #Marketo | @as("Salesforce") #Salesforce]
type serviceNowConnectorOperator = [@as("NO_OP") #NOOP | @as("VALIDATE_NUMERIC") #VALIDATENUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATENONNEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATENONZERO | @as("VALIDATE_NON_NULL") #VALIDATENONNULL | @as("MASK_LAST_N") #MASKLASTN | @as("MASK_FIRST_N") #MASKFIRSTN | @as("MASK_ALL") #MASKALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOTEQUALTO | @as("EQUAL_TO") #EQUALTO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATERTHANOREQUALTO | @as("LESS_THAN_OR_EQUAL_TO") #LESSTHANOREQUALTO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATERTHAN | @as("LESS_THAN") #LESSTHAN | @as("CONTAINS") #CONTAINS | @as("PROJECTION") #PROJECTION]
type scheduleOffset = float
type scheduleExpression = string
type salesforceConnectorOperator = [@as("NO_OP") #NOOP | @as("VALIDATE_NUMERIC") #VALIDATENUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATENONNEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATENONZERO | @as("VALIDATE_NON_NULL") #VALIDATENONNULL | @as("MASK_LAST_N") #MASKLASTN | @as("MASK_FIRST_N") #MASKFIRSTN | @as("MASK_ALL") #MASKALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOTEQUALTO | @as("EQUAL_TO") #EQUALTO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATERTHANOREQUALTO | @as("LESS_THAN_OR_EQUAL_TO") #LESSTHANOREQUALTO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATERTHAN | @as("CONTAINS") #CONTAINS | @as("LESS_THAN") #LESSTHAN | @as("PROJECTION") #PROJECTION]
type s3ConnectorOperator = [@as("NO_OP") #NOOP | @as("VALIDATE_NUMERIC") #VALIDATENUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATENONNEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATENONZERO | @as("VALIDATE_NON_NULL") #VALIDATENONNULL | @as("MASK_LAST_N") #MASKLASTN | @as("MASK_FIRST_N") #MASKFIRSTN | @as("MASK_ALL") #MASKALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOTEQUALTO | @as("EQUAL_TO") #EQUALTO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATERTHANOREQUALTO | @as("LESS_THAN_OR_EQUAL_TO") #LESSTHANOREQUALTO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATERTHAN | @as("LESS_THAN") #LESSTHAN | @as("PROJECTION") #PROJECTION]
type property = string
type partyType = [@as("OTHER") #OTHER | @as("BUSINESS") #BUSINESS | @as("INDIVIDUAL") #INDIVIDUAL]
type operatorPropertiesKeys = [@as("SUBFIELD_CATEGORY_MAP") #SUBFIELDCATEGORYMAP | @as("CONCAT_FORMAT") #CONCATFORMAT | @as("MATH_OPERATION_FIELDS_ORDER") #MATHOPERATIONFIELDSORDER | @as("TRUNCATE_LENGTH") #TRUNCATELENGTH | @as("MASK_LENGTH") #MASKLENGTH | @as("MASK_VALUE") #MASKVALUE | @as("VALIDATION_ACTION") #VALIDATIONACTION | @as("DESTINATION_DATA_TYPE") #DESTINATIONDATATYPE | @as("SOURCE_DATA_TYPE") #SOURCEDATATYPE | @as("LOWER_BOUND") #LOWERBOUND | @as("UPPER_BOUND") #UPPERBOUND | @as("DATA_TYPE") #DATATYPE | @as("VALUES") #VALUES | @as("VALUE") #VALUE]
type object_ = string
type marketoConnectorOperator = [@as("NO_OP") #NOOP | @as("VALIDATE_NUMERIC") #VALIDATENUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATENONNEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATENONZERO | @as("VALIDATE_NON_NULL") #VALIDATENONNULL | @as("MASK_LAST_N") #MASKLASTN | @as("MASK_FIRST_N") #MASKFIRSTN | @as("MASK_ALL") #MASKALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATERTHAN | @as("LESS_THAN") #LESSTHAN | @as("PROJECTION") #PROJECTION]
type kmsArn = string
type gender = [@as("UNSPECIFIED") #UNSPECIFIED | @as("FEMALE") #FEMALE | @as("MALE") #MALE]
type flowName = string
type flowDescription = string
type fieldContentType = [@as("NAME") #NAME | @as("EMAIL_ADDRESS") #EMAILADDRESS | @as("PHONE_NUMBER") #PHONENUMBER | @as("NUMBER") #NUMBER | @as("STRING") #STRING]
type destinationField = string
type datetimeTypeFieldName = string
type date = Js.Date.t;
type dataPullMode = [@as("Complete") #Complete | @as("Incremental") #Incremental]
type connectorProfileName = string
type bucketPrefix = string
type bucketName = string
type requestValueList = array<string1To255>
type zendeskSourceProperties = {
@as("Object") object_: object_
}
type updateAttributes = Js.Dict.t< string0To255>
type updateAddress = {
@as("PostalCode") postalCode: option<string0To255>,
@as("Country") country: option<string0To255>,
@as("Province") province: option<string0To255>,
@as("State") state: option<string0To255>,
@as("County") county: option<string0To255>,
@as("City") city: option<string0To255>,
@as("Address4") address4: option<string0To255>,
@as("Address3") address3: option<string0To255>,
@as("Address2") address2: option<string0To255>,
@as("Address1") address1: option<string0To255>
}
type taskPropertiesMap = Js.Dict.t< property>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type standardIdentifierList = array<standardIdentifier>
type sourceFields = array<stringTo2048>
type serviceNowSourceProperties = {
@as("Object") object_: object_
}
type scheduledTriggerProperties = {
@as("FirstExecutionFrom") firstExecutionFrom: option<date>,
@as("ScheduleOffset") scheduleOffset: option<scheduleOffset>,
@as("Timezone") timezone: option<timezone>,
@as("ScheduleEndTime") scheduleEndTime: option<date>,
@as("ScheduleStartTime") scheduleStartTime: option<date>,
@as("DataPullMode") dataPullMode: option<dataPullMode>,
@as("ScheduleExpression") scheduleExpression: scheduleExpression
}
type salesforceSourceProperties = {
@as("IncludeDeletedRecords") includeDeletedRecords: option<boolean_>,
@as("EnableDynamicFieldUpdate") enableDynamicFieldUpdate: option<boolean_>,
@as("Object") object_: object_
}
type s3SourceProperties = {
@as("BucketPrefix") bucketPrefix: option<bucketPrefix>,
@as("BucketName") bucketName: bucketName
}
type profileIdToBeMergedList = array<uuid>
type profileIdList = array<uuid>
type objectTypeField = {
@as("ContentType") contentType: option<fieldContentType>,
@as("Target") target: option<text>,
@as("Source") source: option<text>
}
type matchingResponse = {
@as("Enabled") enabled: option<optionalBoolean>
}
type matchingRequest = {
@as("Enabled") enabled: optionalBoolean
}
type marketoSourceProperties = {
@as("Object") object_: object_
}
type listProfileObjectsItem = {
@as("Object") object_: option<stringifiedJson>,
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: option<string1To255>,
@as("ObjectTypeName") objectTypeName: option<typeName>
}
type listProfileObjectTypeTemplateItem = {
@as("SourceObject") sourceObject: option<name>,
@as("SourceName") sourceName: option<name>,
@as("TemplateId") templateId: option<name>
}
type incrementalPullConfig = {
@as("DatetimeTypeFieldName") datetimeTypeFieldName: option<datetimeTypeFieldName>
}
type fieldNameList = array<name>
type domainStats = {
@as("TotalSize") totalSize: option<long>,
@as("ObjectCount") objectCount: option<long>,
@as("MeteringProfileCount") meteringProfileCount: option<long>,
@as("ProfileCount") profileCount: option<long>
}
type connectorOperator = {
@as("Zendesk") zendesk: option<zendeskConnectorOperator>,
@as("ServiceNow") serviceNow: option<serviceNowConnectorOperator>,
@as("Salesforce") salesforce: option<salesforceConnectorOperator>,
@as("S3") s3: option<s3ConnectorOperator>,
@as("Marketo") marketo: option<marketoConnectorOperator>
}
type attributes = Js.Dict.t< string1To255>
type attributeSourceIdMap = Js.Dict.t< uuid>
type address = {
@as("PostalCode") postalCode: option<string1To255>,
@as("Country") country: option<string1To255>,
@as("Province") province: option<string1To255>,
@as("State") state: option<string1To255>,
@as("County") county: option<string1To255>,
@as("City") city: option<string1To255>,
@as("Address4") address4: option<string1To255>,
@as("Address3") address3: option<string1To255>,
@as("Address2") address2: option<string1To255>,
@as("Address1") address1: option<string1To255>
}
type triggerProperties = {
@as("Scheduled") scheduled: option<scheduledTriggerProperties>
}
type task = {
@as("TaskType") taskType: taskType,
@as("TaskProperties") taskProperties: option<taskPropertiesMap>,
@as("SourceFields") sourceFields: sourceFields,
@as("DestinationField") destinationField: option<destinationField>,
@as("ConnectorOperator") connectorOperator: option<connectorOperator>
}
type sourceConnectorProperties = {
@as("Zendesk") zendesk: option<zendeskSourceProperties>,
@as("ServiceNow") serviceNow: option<serviceNowSourceProperties>,
@as("Salesforce") salesforce: option<salesforceSourceProperties>,
@as("S3") s3: option<s3SourceProperties>,
@as("Marketo") marketo: option<marketoSourceProperties>
}
type profileObjectTypeTemplateList = array<listProfileObjectTypeTemplateItem>
type profileObjectList = array<listProfileObjectsItem>
type profile = {
@as("Attributes") attributes: option<attributes>,
@as("BillingAddress") billingAddress: option<address>,
@as("MailingAddress") mailingAddress: option<address>,
@as("ShippingAddress") shippingAddress: option<address>,
@as("Address") address: option<address>,
@as("BusinessEmailAddress") businessEmailAddress: option<string1To255>,
@as("PersonalEmailAddress") personalEmailAddress: option<string1To255>,
@as("EmailAddress") emailAddress: option<string1To255>,
@as("BusinessPhoneNumber") businessPhoneNumber: option<string1To255>,
@as("HomePhoneNumber") homePhoneNumber: option<string1To255>,
@as("MobilePhoneNumber") mobilePhoneNumber: option<string1To255>,
@as("PhoneNumber") phoneNumber: option<string1To255>,
@as("Gender") gender: option<gender>,
@as("BirthDate") birthDate: option<string1To255>,
@as("LastName") lastName: option<string1To255>,
@as("MiddleName") middleName: option<string1To255>,
@as("FirstName") firstName: option<string1To255>,
@as("BusinessName") businessName: option<string1To255>,
@as("PartyType") partyType: option<partyType>,
@as("AdditionalInformation") additionalInformation: option<string1To1000>,
@as("AccountNumber") accountNumber: option<string1To255>,
@as("ProfileId") profileId: option<uuid>
}
type objectTypeKey = {
@as("FieldNames") fieldNames: option<fieldNameList>,
@as("StandardIdentifiers") standardIdentifiers: option<standardIdentifierList>
}
type matchItem = {
@as("ProfileIds") profileIds: option<profileIdList>,
@as("MatchId") matchId: option<string1To255>
}
type listProfileObjectTypeItem = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Description") description: text,
@as("ObjectTypeName") objectTypeName: typeName
}
type listIntegrationItem = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("ObjectTypeName") objectTypeName: typeName,
@as("Uri") uri: string1To255,
@as("DomainName") domainName: name
}
type listDomainItem = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("DomainName") domainName: name
}
type fieldSourceProfileIds = {
@as("Attributes") attributes: option<attributeSourceIdMap>,
@as("BillingAddress") billingAddress: option<uuid>,
@as("MailingAddress") mailingAddress: option<uuid>,
@as("ShippingAddress") shippingAddress: option<uuid>,
@as("Address") address: option<uuid>,
@as("BusinessEmailAddress") businessEmailAddress: option<uuid>,
@as("PersonalEmailAddress") personalEmailAddress: option<uuid>,
@as("EmailAddress") emailAddress: option<uuid>,
@as("BusinessPhoneNumber") businessPhoneNumber: option<uuid>,
@as("HomePhoneNumber") homePhoneNumber: option<uuid>,
@as("MobilePhoneNumber") mobilePhoneNumber: option<uuid>,
@as("PhoneNumber") phoneNumber: option<uuid>,
@as("Gender") gender: option<uuid>,
@as("BirthDate") birthDate: option<uuid>,
@as("LastName") lastName: option<uuid>,
@as("MiddleName") middleName: option<uuid>,
@as("FirstName") firstName: option<uuid>,
@as("BusinessName") businessName: option<uuid>,
@as("PartyType") partyType: option<uuid>,
@as("AdditionalInformation") additionalInformation: option<uuid>,
@as("AccountNumber") accountNumber: option<uuid>
}
type fieldMap = Js.Dict.t< objectTypeField>
type triggerConfig = {
@as("TriggerProperties") triggerProperties: option<triggerProperties>,
@as("TriggerType") triggerType: triggerType
}
type tasks = array<task>
type sourceFlowConfig = {
@as("SourceConnectorProperties") sourceConnectorProperties: sourceConnectorProperties,
@as("IncrementalPullConfig") incrementalPullConfig: option<incrementalPullConfig>,
@as("ConnectorType") connectorType: sourceConnectorType,
@as("ConnectorProfileName") connectorProfileName: option<connectorProfileName>
}
type profileObjectTypeList = array<listProfileObjectTypeItem>
type profileList = array<profile>
type objectTypeKeyList = array<objectTypeKey>
type matchesList = array<matchItem>
type integrationList = array<listIntegrationItem>
type domainList = array<listDomainItem>
type keyMap = Js.Dict.t< objectTypeKeyList>
type flowDefinition = {
@as("TriggerConfig") triggerConfig: triggerConfig,
@as("Tasks") tasks: tasks,
@as("SourceFlowConfig") sourceFlowConfig: sourceFlowConfig,
@as("KmsArn") kmsArn: kmsArn,
@as("FlowName") flowName: flowName,
@as("Description") description: option<flowDescription>
}
type awsServiceClient;
@module("@aws-sdk/client-profile") @new external createClient: unit => awsServiceClient = "CustomerProfilesClient";
module PutProfileObject = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("Object") object_: stringifiedJson,
@as("ObjectTypeName") objectTypeName: typeName
}
  type response = {
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: option<string1To255>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "PutProfileObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileObjectType = {
  type t;
  type request = {
@as("ObjectTypeName") objectTypeName: typeName,
@as("DomainName") domainName: name
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteProfileObjectTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileObject = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("ObjectTypeName") objectTypeName: typeName,
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: string1To255,
@as("ProfileId") profileId: uuid
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteProfileObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProfile = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("ProfileId") profileId: uuid
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteIntegration = {
  type t;
  type request = {
@as("Uri") uri: string1To255,
@as("DomainName") domainName: name
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("DomainName") domainName: name
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProfile = {
  type t;
  type request = {
@as("Attributes") attributes: option<updateAttributes>,
@as("BillingAddress") billingAddress: option<updateAddress>,
@as("MailingAddress") mailingAddress: option<updateAddress>,
@as("ShippingAddress") shippingAddress: option<updateAddress>,
@as("Address") address: option<updateAddress>,
@as("BusinessEmailAddress") businessEmailAddress: option<string0To255>,
@as("PersonalEmailAddress") personalEmailAddress: option<string0To255>,
@as("EmailAddress") emailAddress: option<string0To255>,
@as("BusinessPhoneNumber") businessPhoneNumber: option<string0To255>,
@as("HomePhoneNumber") homePhoneNumber: option<string0To255>,
@as("MobilePhoneNumber") mobilePhoneNumber: option<string0To255>,
@as("PhoneNumber") phoneNumber: option<string0To255>,
@as("Gender") gender: option<gender>,
@as("BirthDate") birthDate: option<string0To255>,
@as("LastName") lastName: option<string0To255>,
@as("MiddleName") middleName: option<string0To255>,
@as("FirstName") firstName: option<string0To255>,
@as("BusinessName") businessName: option<string0To255>,
@as("PartyType") partyType: option<partyType>,
@as("AccountNumber") accountNumber: option<string0To255>,
@as("AdditionalInformation") additionalInformation: option<string0To1000>,
@as("ProfileId") profileId: uuid,
@as("DomainName") domainName: name
}
  type response = {
@as("ProfileId") profileId: uuid
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "UpdateProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomain = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Matching") matching: option<matchingRequest>,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: option<sqsQueueUrl>,
@as("DefaultEncryptionKey") defaultEncryptionKey: option<encryptionKey>,
@as("DefaultExpirationDays") defaultExpirationDays: option<expirationDaysInteger>,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("Matching") matching: option<matchingResponse>,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: option<sqsQueueUrl>,
@as("DefaultEncryptionKey") defaultEncryptionKey: option<encryptionKey>,
@as("DefaultExpirationDays") defaultExpirationDays: option<expirationDaysInteger>,
@as("DomainName") domainName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "UpdateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: tagArn
}
  type response = unit
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: tagArn
}
  type response = unit
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: tagArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetIntegration = {
  type t;
  type request = {
@as("Uri") uri: string1To255,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("ObjectTypeName") objectTypeName: typeName,
@as("Uri") uri: string1To255,
@as("DomainName") domainName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "GetIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomain = {
  type t;
  type request = {
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("Matching") matching: option<matchingResponse>,
@as("Stats") stats: option<domainStats>,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: option<sqsQueueUrl>,
@as("DefaultEncryptionKey") defaultEncryptionKey: option<encryptionKey>,
@as("DefaultExpirationDays") defaultExpirationDays: option<expirationDaysInteger>,
@as("DomainName") domainName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "GetDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileKey = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("Values") values: requestValueList,
@as("KeyName") keyName: name,
@as("ProfileId") profileId: uuid
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "DeleteProfileKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProfile = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributes>,
@as("BillingAddress") billingAddress: option<address>,
@as("MailingAddress") mailingAddress: option<address>,
@as("ShippingAddress") shippingAddress: option<address>,
@as("Address") address: option<address>,
@as("BusinessEmailAddress") businessEmailAddress: option<string1To255>,
@as("PersonalEmailAddress") personalEmailAddress: option<string1To255>,
@as("EmailAddress") emailAddress: option<string1To255>,
@as("BusinessPhoneNumber") businessPhoneNumber: option<string1To255>,
@as("HomePhoneNumber") homePhoneNumber: option<string1To255>,
@as("MobilePhoneNumber") mobilePhoneNumber: option<string1To255>,
@as("PhoneNumber") phoneNumber: option<string1To255>,
@as("Gender") gender: option<gender>,
@as("BirthDate") birthDate: option<string1To255>,
@as("LastName") lastName: option<string1To255>,
@as("MiddleName") middleName: option<string1To255>,
@as("FirstName") firstName: option<string1To255>,
@as("BusinessName") businessName: option<string1To255>,
@as("PartyType") partyType: option<partyType>,
@as("AdditionalInformation") additionalInformation: option<string1To1000>,
@as("AccountNumber") accountNumber: option<string1To255>,
@as("DomainName") domainName: name
}
  type response = {
@as("ProfileId") profileId: uuid
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "CreateProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Matching") matching: option<matchingRequest>,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: option<sqsQueueUrl>,
@as("DefaultEncryptionKey") defaultEncryptionKey: option<encryptionKey>,
@as("DefaultExpirationDays") defaultExpirationDays: expirationDaysInteger,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("Matching") matching: option<matchingResponse>,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: option<sqsQueueUrl>,
@as("DefaultEncryptionKey") defaultEncryptionKey: option<encryptionKey>,
@as("DefaultExpirationDays") defaultExpirationDays: expirationDaysInteger,
@as("DomainName") domainName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddProfileKey = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("Values") values: requestValueList,
@as("KeyName") keyName: name,
@as("ProfileId") profileId: uuid
}
  type response = {
@as("Values") values: option<requestValueList>,
@as("KeyName") keyName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "AddProfileKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergeProfiles = {
  type t;
  type request = {
@as("FieldSourceProfileIds") fieldSourceProfileIds: option<fieldSourceProfileIds>,
@as("ProfileIdsToBeMerged") profileIdsToBeMerged: profileIdToBeMergedList,
@as("MainProfileId") mainProfileId: uuid,
@as("DomainName") domainName: name
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "MergeProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjects = {
  type t;
  type request = {
@as("ProfileId") profileId: uuid,
@as("ObjectTypeName") objectTypeName: typeName,
@as("DomainName") domainName: name,
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<profileObjectList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListProfileObjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjectTypeTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<profileObjectTypeTemplateList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListProfileObjectTypeTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchProfiles = {
  type t;
  type request = {
@as("Values") values: requestValueList,
@as("KeyName") keyName: name,
@as("DomainName") domainName: name,
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<profileList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "SearchProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjectTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>,
@as("DomainName") domainName: name
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<profileObjectTypeList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListProfileObjectTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>,
@as("DomainName") domainName: name
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<integrationList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListIntegrationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<domainList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>,
@as("Uri") uri: string1To255
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Items") items: option<integrationList>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "ListAccountIntegrationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMatches = {
  type t;
  type request = {
@as("DomainName") domainName: name,
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("Matches") matches: option<matchesList>,
@as("PotentialMatches") potentialMatches: option<matchesNumber>,
@as("MatchGenerationDate") matchGenerationDate: option<timestamp_>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "GetMatchesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutProfileObjectType = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("Keys") keys: option<keyMap>,
@as("Fields") fields: option<fieldMap>,
@as("AllowProfileCreation") allowProfileCreation: option<boolean_>,
@as("EncryptionKey") encryptionKey: option<encryptionKey>,
@as("ExpirationDays") expirationDays: option<expirationDaysInteger>,
@as("TemplateId") templateId: option<name>,
@as("Description") description: text,
@as("ObjectTypeName") objectTypeName: typeName,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Keys") keys: option<keyMap>,
@as("Fields") fields: option<fieldMap>,
@as("AllowProfileCreation") allowProfileCreation: option<boolean_>,
@as("EncryptionKey") encryptionKey: option<encryptionKey>,
@as("ExpirationDays") expirationDays: option<expirationDaysInteger>,
@as("TemplateId") templateId: option<name>,
@as("Description") description: text,
@as("ObjectTypeName") objectTypeName: typeName
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "PutProfileObjectTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutIntegration = {
  type t;
  type request = {
@as("FlowDefinition") flowDefinition: option<flowDefinition>,
@as("Tags") tags: option<tagMap>,
@as("ObjectTypeName") objectTypeName: typeName,
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: timestamp_,
@as("CreatedAt") createdAt: timestamp_,
@as("ObjectTypeName") objectTypeName: typeName,
@as("Uri") uri: string1To255,
@as("DomainName") domainName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "PutIntegrationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetProfileObjectTypeTemplate = {
  type t;
  type request = {
@as("TemplateId") templateId: name
}
  type response = {
@as("Keys") keys: option<keyMap>,
@as("Fields") fields: option<fieldMap>,
@as("AllowProfileCreation") allowProfileCreation: option<boolean_>,
@as("SourceObject") sourceObject: option<name>,
@as("SourceName") sourceName: option<name>,
@as("TemplateId") templateId: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "GetProfileObjectTypeTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetProfileObjectType = {
  type t;
  type request = {
@as("ObjectTypeName") objectTypeName: typeName,
@as("DomainName") domainName: name
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp_>,
@as("CreatedAt") createdAt: option<timestamp_>,
@as("Keys") keys: option<keyMap>,
@as("Fields") fields: option<fieldMap>,
@as("AllowProfileCreation") allowProfileCreation: option<boolean_>,
@as("EncryptionKey") encryptionKey: option<encryptionKey>,
@as("ExpirationDays") expirationDays: option<expirationDaysInteger>,
@as("TemplateId") templateId: option<name>,
@as("Description") description: text,
@as("ObjectTypeName") objectTypeName: typeName
}
  @module("@aws-sdk/client-profile") @new external new_: (request) => t = "GetProfileObjectTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
