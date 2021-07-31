type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type uuid = string
type typeName = string
type token = string
type timestamp = Js.Date.t;
type text = string
type stringifiedJson = string
type stringTo2048 = string
type string1To255 = string
type string1To1000 = string
type string0To255 = string
type string0To1000 = string
type sqsQueueUrl = string
type optionalBoolean = bool;
type name = string
type message = string
type maxSize100 = int;
type matchesNumber = int;
type long = float;
type expirationDaysInteger = int;
type encryptionKey = string
type boolean = bool;
type zendeskConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("GREATER_THAN") #GREATER_THAN | @as("PROJECTION") #PROJECTION]
type triggerType = [@as("OnDemand") #OnDemand | @as("Event") #Event | @as("Scheduled") #Scheduled]
type timezone = string
type taskType = [@as("Validate") #Validate | @as("Truncate") #Truncate | @as("Merge") #Merge | @as("Mask") #Mask | @as("Map") #Map | @as("Filter") #Filter | @as("Arithmetic") #Arithmetic]
type tagValue = string
type tagKey = string
type tagArn = string
type standardIdentifier = [@as("NEW_ONLY") #NEW_ONLY | @as("LOOKUP_ONLY") #LOOKUP_ONLY | @as("SECONDARY") #SECONDARY | @as("UNIQUE") #UNIQUE | @as("PROFILE") #PROFILE]
type sourceConnectorType = [@as("S3") #S3 | @as("Servicenow") #Servicenow | @as("Zendesk") #Zendesk | @as("Marketo") #Marketo | @as("Salesforce") #Salesforce]
type serviceNowConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("CONTAINS") #CONTAINS | @as("PROJECTION") #PROJECTION]
type scheduleOffset = float;
type scheduleExpression = string
type salesforceConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("CONTAINS") #CONTAINS | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type s3ConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("NOT_EQUAL_TO") #NOT_EQUAL_TO | @as("EQUAL_TO") #EQUAL_TO | @as("GREATER_THAN_OR_EQUAL_TO") #GREATER_THAN_OR_EQUAL_TO | @as("LESS_THAN_OR_EQUAL_TO") #LESS_THAN_OR_EQUAL_TO | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type property = string
type partyType = [@as("OTHER") #OTHER | @as("BUSINESS") #BUSINESS | @as("INDIVIDUAL") #INDIVIDUAL]
type operatorPropertiesKeys = [@as("SUBFIELD_CATEGORY_MAP") #SUBFIELD_CATEGORY_MAP | @as("CONCAT_FORMAT") #CONCAT_FORMAT | @as("MATH_OPERATION_FIELDS_ORDER") #MATH_OPERATION_FIELDS_ORDER | @as("TRUNCATE_LENGTH") #TRUNCATE_LENGTH | @as("MASK_LENGTH") #MASK_LENGTH | @as("MASK_VALUE") #MASK_VALUE | @as("VALIDATION_ACTION") #VALIDATION_ACTION | @as("DESTINATION_DATA_TYPE") #DESTINATION_DATA_TYPE | @as("SOURCE_DATA_TYPE") #SOURCE_DATA_TYPE | @as("LOWER_BOUND") #LOWER_BOUND | @as("UPPER_BOUND") #UPPER_BOUND | @as("DATA_TYPE") #DATA_TYPE | @as("VALUES") #VALUES | @as("VALUE") #VALUE]
type object = string
type marketoConnectorOperator = [@as("NO_OP") #NO_OP | @as("VALIDATE_NUMERIC") #VALIDATE_NUMERIC | @as("VALIDATE_NON_NEGATIVE") #VALIDATE_NON_NEGATIVE | @as("VALIDATE_NON_ZERO") #VALIDATE_NON_ZERO | @as("VALIDATE_NON_NULL") #VALIDATE_NON_NULL | @as("MASK_LAST_N") #MASK_LAST_N | @as("MASK_FIRST_N") #MASK_FIRST_N | @as("MASK_ALL") #MASK_ALL | @as("SUBTRACTION") #SUBTRACTION | @as("DIVISION") #DIVISION | @as("MULTIPLICATION") #MULTIPLICATION | @as("ADDITION") #ADDITION | @as("BETWEEN") #BETWEEN | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN") #LESS_THAN | @as("PROJECTION") #PROJECTION]
type kmsArn = string
type gender = [@as("UNSPECIFIED") #UNSPECIFIED | @as("FEMALE") #FEMALE | @as("MALE") #MALE]
type flowName = string
type flowDescription = string
type fieldContentType = [@as("NAME") #NAME | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS | @as("PHONE_NUMBER") #PHONE_NUMBER | @as("NUMBER") #NUMBER | @as("STRING") #STRING]
type destinationField = string
type datetimeTypeFieldName = string
type date = Js.Date.t;
type dataPullMode = [@as("Complete") #Complete | @as("Incremental") #Incremental]
type connectorProfileName = string
type bucketPrefix = string
type bucketName = string
type requestValueList = array<string1To255>
type zendeskSourceProperties = {
@as("Object") object: option<object>
}
type updateAttributes = Js.Dict.t< string0To255>
type updateAddress = {
@as("PostalCode") postalCode: string0To255,
@as("Country") country: string0To255,
@as("Province") province: string0To255,
@as("State") state: string0To255,
@as("County") county: string0To255,
@as("City") city: string0To255,
@as("Address4") address4: string0To255,
@as("Address3") address3: string0To255,
@as("Address2") address2: string0To255,
@as("Address1") address1: string0To255
}
type taskPropertiesMap = Js.Dict.t< property>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type standardIdentifierList = array<standardIdentifier>
type sourceFields = array<stringTo2048>
type serviceNowSourceProperties = {
@as("Object") object: option<object>
}
type scheduledTriggerProperties = {
@as("FirstExecutionFrom") firstExecutionFrom: date,
@as("ScheduleOffset") scheduleOffset: scheduleOffset,
@as("Timezone") timezone: timezone,
@as("ScheduleEndTime") scheduleEndTime: date,
@as("ScheduleStartTime") scheduleStartTime: date,
@as("DataPullMode") dataPullMode: dataPullMode,
@as("ScheduleExpression") scheduleExpression: option<scheduleExpression>
}
type salesforceSourceProperties = {
@as("IncludeDeletedRecords") includeDeletedRecords: boolean,
@as("EnableDynamicFieldUpdate") enableDynamicFieldUpdate: boolean,
@as("Object") object: option<object>
}
type s3SourceProperties = {
@as("BucketPrefix") bucketPrefix: bucketPrefix,
@as("BucketName") bucketName: option<bucketName>
}
type profileIdToBeMergedList = array<uuid>
type profileIdList = array<uuid>
type objectTypeField = {
@as("ContentType") contentType: fieldContentType,
@as("Target") target: text,
@as("Source") source: text
}
type matchingResponse = {
@as("Enabled") enabled: optionalBoolean
}
type matchingRequest = {
@as("Enabled") enabled: option<optionalBoolean>
}
type marketoSourceProperties = {
@as("Object") object: option<object>
}
type listProfileObjectsItem = {
@as("Object") object: stringifiedJson,
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: string1To255,
@as("ObjectTypeName") objectTypeName: typeName
}
type listProfileObjectTypeTemplateItem = {
@as("SourceObject") sourceObject: name,
@as("SourceName") sourceName: name,
@as("TemplateId") templateId: name
}
type incrementalPullConfig = {
@as("DatetimeTypeFieldName") datetimeTypeFieldName: datetimeTypeFieldName
}
type fieldNameList = array<name>
type domainStats = {
@as("TotalSize") totalSize: long,
@as("ObjectCount") objectCount: long,
@as("MeteringProfileCount") meteringProfileCount: long,
@as("ProfileCount") profileCount: long
}
type connectorOperator = {
@as("Zendesk") zendesk: zendeskConnectorOperator,
@as("ServiceNow") serviceNow: serviceNowConnectorOperator,
@as("Salesforce") salesforce: salesforceConnectorOperator,
@as("S3") s3: s3ConnectorOperator,
@as("Marketo") marketo: marketoConnectorOperator
}
type attributes = Js.Dict.t< string1To255>
type attributeSourceIdMap = Js.Dict.t< uuid>
type address = {
@as("PostalCode") postalCode: string1To255,
@as("Country") country: string1To255,
@as("Province") province: string1To255,
@as("State") state: string1To255,
@as("County") county: string1To255,
@as("City") city: string1To255,
@as("Address4") address4: string1To255,
@as("Address3") address3: string1To255,
@as("Address2") address2: string1To255,
@as("Address1") address1: string1To255
}
type triggerProperties = {
@as("Scheduled") scheduled: scheduledTriggerProperties
}
type task = {
@as("TaskType") taskType: option<taskType>,
@as("TaskProperties") taskProperties: taskPropertiesMap,
@as("SourceFields") sourceFields: option<sourceFields>,
@as("DestinationField") destinationField: destinationField,
@as("ConnectorOperator") connectorOperator: connectorOperator
}
type sourceConnectorProperties = {
@as("Zendesk") zendesk: zendeskSourceProperties,
@as("ServiceNow") serviceNow: serviceNowSourceProperties,
@as("Salesforce") salesforce: salesforceSourceProperties,
@as("S3") s3: s3SourceProperties,
@as("Marketo") marketo: marketoSourceProperties
}
type profileObjectTypeTemplateList = array<listProfileObjectTypeTemplateItem>
type profileObjectList = array<listProfileObjectsItem>
type profile = {
@as("Attributes") attributes: attributes,
@as("BillingAddress") billingAddress: address,
@as("MailingAddress") mailingAddress: address,
@as("ShippingAddress") shippingAddress: address,
@as("Address") address: address,
@as("BusinessEmailAddress") businessEmailAddress: string1To255,
@as("PersonalEmailAddress") personalEmailAddress: string1To255,
@as("EmailAddress") emailAddress: string1To255,
@as("BusinessPhoneNumber") businessPhoneNumber: string1To255,
@as("HomePhoneNumber") homePhoneNumber: string1To255,
@as("MobilePhoneNumber") mobilePhoneNumber: string1To255,
@as("PhoneNumber") phoneNumber: string1To255,
@as("Gender") gender: gender,
@as("BirthDate") birthDate: string1To255,
@as("LastName") lastName: string1To255,
@as("MiddleName") middleName: string1To255,
@as("FirstName") firstName: string1To255,
@as("BusinessName") businessName: string1To255,
@as("PartyType") partyType: partyType,
@as("AdditionalInformation") additionalInformation: string1To1000,
@as("AccountNumber") accountNumber: string1To255,
@as("ProfileId") profileId: uuid
}
type objectTypeKey = {
@as("FieldNames") fieldNames: fieldNameList,
@as("StandardIdentifiers") standardIdentifiers: standardIdentifierList
}
type matchItem = {
@as("ProfileIds") profileIds: profileIdList,
@as("MatchId") matchId: string1To255
}
type listProfileObjectTypeItem = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: timestamp,
@as("CreatedAt") createdAt: timestamp,
@as("Description") description: option<text>,
@as("ObjectTypeName") objectTypeName: option<typeName>
}
type listIntegrationItem = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: option<name>
}
type listDomainItem = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("DomainName") domainName: option<name>
}
type fieldSourceProfileIds = {
@as("Attributes") attributes: attributeSourceIdMap,
@as("BillingAddress") billingAddress: uuid,
@as("MailingAddress") mailingAddress: uuid,
@as("ShippingAddress") shippingAddress: uuid,
@as("Address") address: uuid,
@as("BusinessEmailAddress") businessEmailAddress: uuid,
@as("PersonalEmailAddress") personalEmailAddress: uuid,
@as("EmailAddress") emailAddress: uuid,
@as("BusinessPhoneNumber") businessPhoneNumber: uuid,
@as("HomePhoneNumber") homePhoneNumber: uuid,
@as("MobilePhoneNumber") mobilePhoneNumber: uuid,
@as("PhoneNumber") phoneNumber: uuid,
@as("Gender") gender: uuid,
@as("BirthDate") birthDate: uuid,
@as("LastName") lastName: uuid,
@as("MiddleName") middleName: uuid,
@as("FirstName") firstName: uuid,
@as("BusinessName") businessName: uuid,
@as("PartyType") partyType: uuid,
@as("AdditionalInformation") additionalInformation: uuid,
@as("AccountNumber") accountNumber: uuid
}
type fieldMap = Js.Dict.t< objectTypeField>
type triggerConfig = {
@as("TriggerProperties") triggerProperties: triggerProperties,
@as("TriggerType") triggerType: option<triggerType>
}
type tasks = array<task>
type sourceFlowConfig = {
@as("SourceConnectorProperties") sourceConnectorProperties: option<sourceConnectorProperties>,
@as("IncrementalPullConfig") incrementalPullConfig: incrementalPullConfig,
@as("ConnectorType") connectorType: option<sourceConnectorType>,
@as("ConnectorProfileName") connectorProfileName: connectorProfileName
}
type profileObjectTypeList = array<listProfileObjectTypeItem>
type profileList = array<profile>
type objectTypeKeyList = array<objectTypeKey>
type matchesList = array<matchItem>
type integrationList = array<listIntegrationItem>
type domainList = array<listDomainItem>
type keyMap = Js.Dict.t< objectTypeKeyList>
type flowDefinition = {
@as("TriggerConfig") triggerConfig: option<triggerConfig>,
@as("Tasks") tasks: option<tasks>,
@as("SourceFlowConfig") sourceFlowConfig: option<sourceFlowConfig>,
@as("KmsArn") kmsArn: option<kmsArn>,
@as("FlowName") flowName: option<flowName>,
@as("Description") description: flowDescription
}
type clientType;
@module("@aws-sdk/client-profile") @new external createClient: unit => clientType = "CustomerProfilesClient";
module PutProfileObject = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("Object") object: option<stringifiedJson>,
@as("ObjectTypeName") objectTypeName: option<typeName>
}
  type response = {
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: string1To255
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "PutProfileObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileObjectType = {
  type t;
  type request = {
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteProfileObjectTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileObject = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("ProfileObjectUniqueKey") profileObjectUniqueKey: option<string1To255>,
@as("ProfileId") profileId: option<uuid>
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteProfileObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProfile = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("ProfileId") profileId: option<uuid>
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIntegration = {
  type t;
  type request = {
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Message") message: option<message>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProfile = {
  type t;
  type request = {
@as("Attributes") attributes: updateAttributes,
@as("BillingAddress") billingAddress: updateAddress,
@as("MailingAddress") mailingAddress: updateAddress,
@as("ShippingAddress") shippingAddress: updateAddress,
@as("Address") address: updateAddress,
@as("BusinessEmailAddress") businessEmailAddress: string0To255,
@as("PersonalEmailAddress") personalEmailAddress: string0To255,
@as("EmailAddress") emailAddress: string0To255,
@as("BusinessPhoneNumber") businessPhoneNumber: string0To255,
@as("HomePhoneNumber") homePhoneNumber: string0To255,
@as("MobilePhoneNumber") mobilePhoneNumber: string0To255,
@as("PhoneNumber") phoneNumber: string0To255,
@as("Gender") gender: gender,
@as("BirthDate") birthDate: string0To255,
@as("LastName") lastName: string0To255,
@as("MiddleName") middleName: string0To255,
@as("FirstName") firstName: string0To255,
@as("BusinessName") businessName: string0To255,
@as("PartyType") partyType: partyType,
@as("AccountNumber") accountNumber: string0To255,
@as("AdditionalInformation") additionalInformation: string0To1000,
@as("ProfileId") profileId: option<uuid>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("ProfileId") profileId: option<uuid>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "UpdateProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomain = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Matching") matching: matchingRequest,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: sqsQueueUrl,
@as("DefaultEncryptionKey") defaultEncryptionKey: encryptionKey,
@as("DefaultExpirationDays") defaultExpirationDays: expirationDaysInteger,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("Matching") matching: matchingResponse,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: sqsQueueUrl,
@as("DefaultEncryptionKey") defaultEncryptionKey: encryptionKey,
@as("DefaultExpirationDays") defaultExpirationDays: expirationDaysInteger,
@as("DomainName") domainName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "UpdateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<tagArn>
}
  type response = unit
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<tagArn>
}
  type response = unit
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<tagArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIntegration = {
  type t;
  type request = {
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "GetIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("Matching") matching: matchingResponse,
@as("Stats") stats: domainStats,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: sqsQueueUrl,
@as("DefaultEncryptionKey") defaultEncryptionKey: encryptionKey,
@as("DefaultExpirationDays") defaultExpirationDays: expirationDaysInteger,
@as("DomainName") domainName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "GetDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProfileKey = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("Values") values: option<requestValueList>,
@as("KeyName") keyName: option<name>,
@as("ProfileId") profileId: option<uuid>
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "DeleteProfileKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProfile = {
  type t;
  type request = {
@as("Attributes") attributes: attributes,
@as("BillingAddress") billingAddress: address,
@as("MailingAddress") mailingAddress: address,
@as("ShippingAddress") shippingAddress: address,
@as("Address") address: address,
@as("BusinessEmailAddress") businessEmailAddress: string1To255,
@as("PersonalEmailAddress") personalEmailAddress: string1To255,
@as("EmailAddress") emailAddress: string1To255,
@as("BusinessPhoneNumber") businessPhoneNumber: string1To255,
@as("HomePhoneNumber") homePhoneNumber: string1To255,
@as("MobilePhoneNumber") mobilePhoneNumber: string1To255,
@as("PhoneNumber") phoneNumber: string1To255,
@as("Gender") gender: gender,
@as("BirthDate") birthDate: string1To255,
@as("LastName") lastName: string1To255,
@as("MiddleName") middleName: string1To255,
@as("FirstName") firstName: string1To255,
@as("BusinessName") businessName: string1To255,
@as("PartyType") partyType: partyType,
@as("AdditionalInformation") additionalInformation: string1To1000,
@as("AccountNumber") accountNumber: string1To255,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("ProfileId") profileId: option<uuid>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "CreateProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Matching") matching: matchingRequest,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: sqsQueueUrl,
@as("DefaultEncryptionKey") defaultEncryptionKey: encryptionKey,
@as("DefaultExpirationDays") defaultExpirationDays: option<expirationDaysInteger>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("Matching") matching: matchingResponse,
@as("DeadLetterQueueUrl") deadLetterQueueUrl: sqsQueueUrl,
@as("DefaultEncryptionKey") defaultEncryptionKey: encryptionKey,
@as("DefaultExpirationDays") defaultExpirationDays: option<expirationDaysInteger>,
@as("DomainName") domainName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "CreateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddProfileKey = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("Values") values: option<requestValueList>,
@as("KeyName") keyName: option<name>,
@as("ProfileId") profileId: option<uuid>
}
  type response = {
@as("Values") values: requestValueList,
@as("KeyName") keyName: name
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "AddProfileKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergeProfiles = {
  type t;
  type request = {
@as("FieldSourceProfileIds") fieldSourceProfileIds: fieldSourceProfileIds,
@as("ProfileIdsToBeMerged") profileIdsToBeMerged: option<profileIdToBeMergedList>,
@as("MainProfileId") mainProfileId: option<uuid>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Message") message: message
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "MergeProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjects = {
  type t;
  type request = {
@as("ProfileId") profileId: option<uuid>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("DomainName") domainName: option<name>,
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: profileObjectList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListProfileObjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjectTypeTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: profileObjectTypeTemplateList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListProfileObjectTypeTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchProfiles = {
  type t;
  type request = {
@as("Values") values: option<requestValueList>,
@as("KeyName") keyName: option<name>,
@as("DomainName") domainName: option<name>,
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: profileList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "SearchProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProfileObjectTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: profileObjectTypeList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListProfileObjectTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: integrationList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListIntegrationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: domainList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountIntegrations = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token,
@as("Uri") uri: option<string1To255>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Items") items: integrationList
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "ListAccountIntegrationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMatches = {
  type t;
  type request = {
@as("DomainName") domainName: option<name>,
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: token
}
  type response = {
@as("Matches") matches: matchesList,
@as("PotentialMatches") potentialMatches: matchesNumber,
@as("MatchGenerationDate") matchGenerationDate: timestamp,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "GetMatchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutProfileObjectType = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("Keys") keys: keyMap,
@as("Fields") fields: fieldMap,
@as("AllowProfileCreation") allowProfileCreation: boolean,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("ExpirationDays") expirationDays: expirationDaysInteger,
@as("TemplateId") templateId: name,
@as("Description") description: option<text>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: timestamp,
@as("CreatedAt") createdAt: timestamp,
@as("Keys") keys: keyMap,
@as("Fields") fields: fieldMap,
@as("AllowProfileCreation") allowProfileCreation: boolean,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("ExpirationDays") expirationDays: expirationDaysInteger,
@as("TemplateId") templateId: name,
@as("Description") description: option<text>,
@as("ObjectTypeName") objectTypeName: option<typeName>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "PutProfileObjectTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutIntegration = {
  type t;
  type request = {
@as("FlowDefinition") flowDefinition: flowDefinition,
@as("Tags") tags: tagMap,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("Uri") uri: string1To255,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: option<timestamp>,
@as("CreatedAt") createdAt: option<timestamp>,
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("Uri") uri: option<string1To255>,
@as("DomainName") domainName: option<name>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "PutIntegrationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProfileObjectTypeTemplate = {
  type t;
  type request = {
@as("TemplateId") templateId: option<name>
}
  type response = {
@as("Keys") keys: keyMap,
@as("Fields") fields: fieldMap,
@as("AllowProfileCreation") allowProfileCreation: boolean,
@as("SourceObject") sourceObject: name,
@as("SourceName") sourceName: name,
@as("TemplateId") templateId: name
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "GetProfileObjectTypeTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProfileObjectType = {
  type t;
  type request = {
@as("ObjectTypeName") objectTypeName: option<typeName>,
@as("DomainName") domainName: option<name>
}
  type response = {
@as("Tags") tags: tagMap,
@as("LastUpdatedAt") lastUpdatedAt: timestamp,
@as("CreatedAt") createdAt: timestamp,
@as("Keys") keys: keyMap,
@as("Fields") fields: fieldMap,
@as("AllowProfileCreation") allowProfileCreation: boolean,
@as("EncryptionKey") encryptionKey: encryptionKey,
@as("ExpirationDays") expirationDays: expirationDaysInteger,
@as("TemplateId") templateId: name,
@as("Description") description: option<text>,
@as("ObjectTypeName") objectTypeName: option<typeName>
}
  @module("@aws-sdk/client-profile") @new external new_: (Js.Promise.t<request>) => t = "GetProfileObjectTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
