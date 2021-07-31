type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type long = float
type zipCode = string
type transferable = [@as("DONT_KNOW") #DONTKNOW | @as("UNTRANSFERABLE") #UNTRANSFERABLE | @as("TRANSFERABLE") #TRANSFERABLE]
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type state = string
type reseller = string
type registryDomainId = string
type registrarWhoIsServer = string
type registrarUrl = string
type registrarName = string
type reachabilityStatus = [@as("EXPIRED") #EXPIRED | @as("DONE") #DONE | @as("PENDING") #PENDING]
type price = float
type pageMaxItems = int
type pageMarker = string
type operationType = [@as("INTERNAL_TRANSFER_IN_DOMAIN") #INTERNALTRANSFERINDOMAIN | @as("INTERNAL_TRANSFER_OUT_DOMAIN") #INTERNALTRANSFEROUTDOMAIN | @as("PUSH_DOMAIN") #PUSHDOMAIN | @as("RENEW_DOMAIN") #RENEWDOMAIN | @as("CHANGE_DOMAIN_OWNER") #CHANGEDOMAINOWNER | @as("TRANSFER_OUT_DOMAIN") #TRANSFEROUTDOMAIN | @as("EXPIRE_DOMAIN") #EXPIREDOMAIN | @as("REMOVE_DNSSEC") #REMOVEDNSSEC | @as("ADD_DNSSEC") #ADDDNSSEC | @as("DISABLE_AUTORENEW") #DISABLEAUTORENEW | @as("ENABLE_AUTORENEW") #ENABLEAUTORENEW | @as("DOMAIN_LOCK") #DOMAINLOCK | @as("CHANGE_PRIVACY_PROTECTION") #CHANGEPRIVACYPROTECTION | @as("UPDATE_NAMESERVER") #UPDATENAMESERVER | @as("UPDATE_DOMAIN_CONTACT") #UPDATEDOMAINCONTACT | @as("TRANSFER_IN_DOMAIN") #TRANSFERINDOMAIN | @as("DELETE_DOMAIN") #DELETEDOMAIN | @as("REGISTER_DOMAIN") #REGISTERDOMAIN]
type operationStatus = [@as("FAILED") #FAILED | @as("SUCCESSFUL") #SUCCESSFUL | @as("ERROR") #ERROR | @as("IN_PROGRESS") #INPROGRESS | @as("SUBMITTED") #SUBMITTED]
type operationId = string
type langCode = string
type invoiceId = string
type integer_ = int
type hostName = string
type glueIp = string
type fiauthKey = string
type extraParamValue = string
type extraParamName = [@as("UK_COMPANY_NUMBER") #UKCOMPANYNUMBER | @as("UK_CONTACT_TYPE") #UKCONTACTTYPE | @as("VAT_NUMBER") #VATNUMBER | @as("SG_ID_NUMBER") #SGIDNUMBER | @as("SE_ID_NUMBER") #SEIDNUMBER | @as("RU_PASSPORT_DATA") #RUPASSPORTDATA | @as("IT_REGISTRANT_ENTITY_TYPE") #ITREGISTRANTENTITYTYPE | @as("IT_PIN") #ITPIN | @as("IT_NATIONALITY") #ITNATIONALITY | @as("FI_ORGANIZATION_TYPE") #FIORGANIZATIONTYPE | @as("FI_NATIONALITY") #FINATIONALITY | @as("FI_ID_NUMBER") #FIIDNUMBER | @as("FI_BUSINESS_NUMBER") #FIBUSINESSNUMBER | @as("ES_LEGAL_FORM") #ESLEGALFORM | @as("ES_IDENTIFICATION_TYPE") #ESIDENTIFICATIONTYPE | @as("ES_IDENTIFICATION") #ESIDENTIFICATION | @as("CA_LEGAL_REPRESENTATIVE_CAPACITY") #CALEGALREPRESENTATIVECAPACITY | @as("CA_LEGAL_REPRESENTATIVE") #CALEGALREPRESENTATIVE | @as("CA_BUSINESS_ENTITY_TYPE") #CABUSINESSENTITYTYPE | @as("CA_LEGAL_TYPE") #CALEGALTYPE | @as("AU_ID_TYPE") #AUIDTYPE | @as("AU_ID_NUMBER") #AUIDNUMBER | @as("DOCUMENT_NUMBER") #DOCUMENTNUMBER | @as("BIRTH_CITY") #BIRTHCITY | @as("BIRTH_COUNTRY") #BIRTHCOUNTRY | @as("BIRTH_DATE_IN_YYYY_MM_DD") #BIRTHDATEINYYYYMMDD | @as("BIRTH_DEPARTMENT") #BIRTHDEPARTMENT | @as("BRAND_NUMBER") #BRANDNUMBER | @as("DUNS_NUMBER") #DUNSNUMBER]
type errorMessage = string
type email = string
type durationInYears = int
type domainStatus = string
type domainName = string
type domainAvailability = [@as("DONT_KNOW") #DONTKNOW | @as("RESERVED") #RESERVED | @as("UNAVAILABLE_RESTRICTED") #UNAVAILABLERESTRICTED | @as("UNAVAILABLE_PREMIUM") #UNAVAILABLEPREMIUM | @as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE_PREORDER") #AVAILABLEPREORDER | @as("AVAILABLE_RESERVED") #AVAILABLERESERVED | @as("AVAILABLE") #AVAILABLE]
type domainAuthCode = string
type dnssec = string
type currentExpiryYear = int
type countryCode = [@as("ZW") #ZW | @as("ZM") #ZM | @as("ZA") #ZA | @as("YT") #YT | @as("YE") #YE | @as("WS") #WS | @as("WF") #WF | @as("VU") #VU | @as("VN") #VN | @as("VI") #VI | @as("VG") #VG | @as("VE") #VE | @as("VC") #VC | @as("VA") #VA | @as("UZ") #UZ | @as("UY") #UY | @as("US") #US | @as("UG") #UG | @as("UA") #UA | @as("TZ") #TZ | @as("TW") #TW | @as("TV") #TV | @as("TT") #TT | @as("TR") #TR | @as("TO") #TO | @as("TN") #TN | @as("TM") #TM | @as("TL") #TL | @as("TK") #TK | @as("TJ") #TJ | @as("TH") #TH | @as("TG") #TG | @as("TD") #TD | @as("TC") #TC | @as("SZ") #SZ | @as("SY") #SY | @as("SV") #SV | @as("ST") #ST | @as("SR") #SR | @as("SO") #SO | @as("SN") #SN | @as("SM") #SM | @as("SL") #SL | @as("SK") #SK | @as("SI") #SI | @as("SH") #SH | @as("SG") #SG | @as("SE") #SE | @as("SD") #SD | @as("SC") #SC | @as("SB") #SB | @as("SA") #SA | @as("RW") #RW | @as("RU") #RU | @as("RS") #RS | @as("RO") #RO | @as("QA") #QA | @as("PY") #PY | @as("PW") #PW | @as("PT") #PT | @as("PR") #PR | @as("PN") #PN | @as("PM") #PM | @as("PL") #PL | @as("PK") #PK | @as("PH") #PH | @as("PG") #PG | @as("PF") #PF | @as("PE") #PE | @as("PA") #PA | @as("OM") #OM | @as("NZ") #NZ | @as("NU") #NU | @as("NR") #NR | @as("NP") #NP | @as("NO") #NO | @as("NL") #NL | @as("NI") #NI | @as("NG") #NG | @as("NE") #NE | @as("NC") #NC | @as("NA") #NA | @as("MZ") #MZ | @as("MY") #MY | @as("MX") #MX | @as("MW") #MW | @as("MV") #MV | @as("MU") #MU | @as("MT") #MT | @as("MS") #MS | @as("MR") #MR | @as("MP") #MP | @as("MO") #MO | @as("MN") #MN | @as("MM") #MM | @as("ML") #ML | @as("MK") #MK | @as("MH") #MH | @as("MG") #MG | @as("MF") #MF | @as("ME") #ME | @as("MD") #MD | @as("MC") #MC | @as("MA") #MA | @as("LY") #LY | @as("LV") #LV | @as("LU") #LU | @as("LT") #LT | @as("LS") #LS | @as("LR") #LR | @as("LK") #LK | @as("LI") #LI | @as("LC") #LC | @as("LB") #LB | @as("LA") #LA | @as("KZ") #KZ | @as("KY") #KY | @as("KW") #KW | @as("KR") #KR | @as("KP") #KP | @as("KN") #KN | @as("KM") #KM | @as("KI") #KI | @as("KH") #KH | @as("KG") #KG | @as("KE") #KE | @as("JP") #JP | @as("JO") #JO | @as("JM") #JM | @as("IT") #IT | @as("IS") #IS | @as("IR") #IR | @as("IQ") #IQ | @as("IN") #IN | @as("IM") #IM | @as("IL") #IL | @as("IE") #IE | @as("ID") #ID | @as("HU") #HU | @as("HT") #HT | @as("HR") #HR | @as("HN") #HN | @as("HK") #HK | @as("GY") #GY | @as("GW") #GW | @as("GU") #GU | @as("GT") #GT | @as("GR") #GR | @as("GQ") #GQ | @as("GN") #GN | @as("GM") #GM | @as("GL") #GL | @as("GI") #GI | @as("GH") #GH | @as("GE") #GE | @as("GD") #GD | @as("GB") #GB | @as("GA") #GA | @as("FR") #FR | @as("FO") #FO | @as("FM") #FM | @as("FK") #FK | @as("FJ") #FJ | @as("FI") #FI | @as("ET") #ET | @as("ES") #ES | @as("ER") #ER | @as("EG") #EG | @as("EE") #EE | @as("EC") #EC | @as("DZ") #DZ | @as("DO") #DO | @as("DM") #DM | @as("DK") #DK | @as("DJ") #DJ | @as("DE") #DE | @as("CZ") #CZ | @as("CY") #CY | @as("CX") #CX | @as("CV") #CV | @as("CU") #CU | @as("CR") #CR | @as("CO") #CO | @as("CN") #CN | @as("CM") #CM | @as("CL") #CL | @as("CK") #CK | @as("CI") #CI | @as("CH") #CH | @as("CG") #CG | @as("CF") #CF | @as("CD") #CD | @as("CC") #CC | @as("CA") #CA | @as("BZ") #BZ | @as("BY") #BY | @as("BW") #BW | @as("BT") #BT | @as("BS") #BS | @as("BR") #BR | @as("BO") #BO | @as("BN") #BN | @as("BM") #BM | @as("BL") #BL | @as("BJ") #BJ | @as("BI") #BI | @as("BH") #BH | @as("BG") #BG | @as("BF") #BF | @as("BE") #BE | @as("BD") #BD | @as("BB") #BB | @as("BA") #BA | @as("AZ") #AZ | @as("AW") #AW | @as("AU") #AU | @as("AT") #AT | @as("AS") #AS | @as("AR") #AR | @as("AQ") #AQ | @as("AO") #AO | @as("AN") #AN | @as("AM") #AM | @as("AL") #AL | @as("AI") #AI | @as("AG") #AG | @as("AF") #AF | @as("AE") #AE | @as("AD") #AD]
type contactType = [@as("RESELLER") #RESELLER | @as("PUBLIC_BODY") #PUBLICBODY | @as("ASSOCIATION") #ASSOCIATION | @as("COMPANY") #COMPANY | @as("PERSON") #PERSON]
type contactNumber = string
type contactName = string
type city = string
type boolean_ = bool
type addressLine = string
type accountId = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type operationSummary = {
@as("SubmittedDate") submittedDate: timestamp_,
@as("Type") type_: operationType,
@as("Status") status: operationStatus,
@as("OperationId") operationId: operationId
}
type glueIpList = array<glueIp>
type extraParam = {
@as("Value") value: extraParamValue,
@as("Name") name: extraParamName
}
type domainTransferability = {
@as("Transferable") transferable: option<transferable>
}
type domainSummary = {
@as("Expiry") expiry: option<timestamp_>,
@as("TransferLock") transferLock: option<boolean_>,
@as("AutoRenew") autoRenew: option<boolean_>,
@as("DomainName") domainName: domainName
}
type domainSuggestion = {
@as("Availability") availability: option<string_>,
@as("DomainName") domainName: option<domainName>
}
type domainStatusList = array<domainStatus>
type billingRecord = {
@as("Price") price: option<price>,
@as("BillDate") billDate: option<timestamp_>,
@as("InvoiceId") invoiceId: option<invoiceId>,
@as("Operation") operation: option<operationType>,
@as("DomainName") domainName: option<domainName>
}
type tagList_ = array<tag>
type operationSummaryList = array<operationSummary>
type nameserver = {
@as("GlueIps") glueIps: option<glueIpList>,
@as("Name") name: hostName
}
type extraParamList = array<extraParam>
type domainSummaryList = array<domainSummary>
type domainSuggestionsList = array<domainSuggestion>
type billingRecords = array<billingRecord>
type nameserverList = array<nameserver>
type contactDetail = {
@as("ExtraParams") extraParams: option<extraParamList>,
@as("Fax") fax: option<contactNumber>,
@as("Email") email: option<email>,
@as("PhoneNumber") phoneNumber: option<contactNumber>,
@as("ZipCode") zipCode: option<zipCode>,
@as("CountryCode") countryCode: option<countryCode>,
@as("State") state: option<state>,
@as("City") city: option<city>,
@as("AddressLine2") addressLine2: option<addressLine>,
@as("AddressLine1") addressLine1: option<addressLine>,
@as("OrganizationName") organizationName: option<contactName>,
@as("ContactType") contactType: option<contactType>,
@as("LastName") lastName: option<contactName>,
@as("FirstName") firstName: option<contactName>
}
type awsServiceClient;
@module("@aws-sdk/client-route53domains") @new external createClient: unit => awsServiceClient = "Route53DomainsClient";
module UpdateDomainContactPrivacy = {
  type t;
  type request = {
@as("TechPrivacy") techPrivacy: option<boolean_>,
@as("RegistrantPrivacy") registrantPrivacy: option<boolean_>,
@as("AdminPrivacy") adminPrivacy: option<boolean_>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainContactPrivacyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TransferDomainToAnotherAwsAccount = {
  type t;
  type request = {
@as("AccountId") accountId: accountId,
@as("DomainName") domainName: domainName
}
  type response = {
@as("Password") password: option<string_>,
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "TransferDomainToAnotherAwsAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetrieveDomainAuthCode = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("AuthCode") authCode: domainAuthCode
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RetrieveDomainAuthCodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResendContactReachabilityEmail = {
  type t;
  type request = {
domainName: option<domainName>
}
  type response = {
isAlreadyVerified: option<boolean_>,
emailAddress: option<email>,
domainName: option<domainName>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ResendContactReachabilityEmailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RenewDomain = {
  type t;
  type request = {
@as("CurrentExpiryYear") currentExpiryYear: currentExpiryYear,
@as("DurationInYears") durationInYears: option<durationInYears>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RenewDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RejectDomainTransferFromAnotherAwsAccount = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RejectDomainTransferFromAnotherAwsAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOperationDetail = {
  type t;
  type request = {
@as("OperationId") operationId: operationId
}
  type response = {
@as("SubmittedDate") submittedDate: option<timestamp_>,
@as("Type") type_: option<operationType>,
@as("DomainName") domainName: option<domainName>,
@as("Message") message: option<errorMessage>,
@as("Status") status: option<operationStatus>,
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetOperationDetailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactReachabilityStatus = {
  type t;
  type request = {
domainName: option<domainName>
}
  type response = {
status: option<reachabilityStatus>,
domainName: option<domainName>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetContactReachabilityStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableDomainTransferLock = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "EnableDomainTransferLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableDomainAutoRenew = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "EnableDomainAutoRenewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableDomainTransferLock = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DisableDomainTransferLockCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableDomainAutoRenew = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DisableDomainAutoRenewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckDomainAvailability = {
  type t;
  type request = {
@as("IdnLangCode") idnLangCode: option<langCode>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("Availability") availability: domainAvailability
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CheckDomainAvailabilityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelDomainTransferToAnotherAwsAccount = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CancelDomainTransferToAnotherAwsAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptDomainTransferFromAnotherAwsAccount = {
  type t;
  type request = {
@as("Password") password: string_,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "AcceptDomainTransferFromAnotherAwsAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTagsForDomain = {
  type t;
  type request = {
@as("TagsToDelete") tagsToDelete: tagKeyList,
@as("DomainName") domainName: domainName
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DeleteTagsForDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckDomainTransferability = {
  type t;
  type request = {
@as("AuthCode") authCode: option<domainAuthCode>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("Transferability") transferability: domainTransferability
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CheckDomainTransferabilityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ViewBilling = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<pageMaxItems>,
@as("Marker") marker: option<pageMarker>,
@as("End") end: option<timestamp_>,
@as("Start") start: option<timestamp_>
}
  type response = {
@as("BillingRecords") billingRecords: option<billingRecords>,
@as("NextPageMarker") nextPageMarker: option<pageMarker>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ViewBillingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTagsForDomain = {
  type t;
  type request = {
@as("TagsToUpdate") tagsToUpdate: option<tagList_>,
@as("DomainName") domainName: domainName
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateTagsForDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("TagList") tagList_: tagList_
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListTagsForDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOperations = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<pageMaxItems>,
@as("Marker") marker: option<pageMarker>,
@as("SubmittedSince") submittedSince: option<timestamp_>
}
  type response = {
@as("NextPageMarker") nextPageMarker: option<pageMarker>,
@as("Operations") operations: operationSummaryList
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxItems") maxItems: option<pageMaxItems>,
@as("Marker") marker: option<pageMarker>
}
  type response = {
@as("NextPageMarker") nextPageMarker: option<pageMarker>,
@as("Domains") domains: domainSummaryList
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainSuggestions = {
  type t;
  type request = {
@as("OnlyAvailable") onlyAvailable: boolean_,
@as("SuggestionCount") suggestionCount: integer_,
@as("DomainName") domainName: domainName
}
  type response = {
@as("SuggestionsList") suggestionsList: option<domainSuggestionsList>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetDomainSuggestionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainNameservers = {
  type t;
  type request = {
@as("Nameservers") nameservers: nameserverList,
@as("FIAuthKey") fiauthKey: option<fiauthKey>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainNameserversCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainContact = {
  type t;
  type request = {
@as("TechContact") techContact: option<contactDetail>,
@as("RegistrantContact") registrantContact: option<contactDetail>,
@as("AdminContact") adminContact: option<contactDetail>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainContactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TransferDomain = {
  type t;
  type request = {
@as("PrivacyProtectTechContact") privacyProtectTechContact: option<boolean_>,
@as("PrivacyProtectRegistrantContact") privacyProtectRegistrantContact: option<boolean_>,
@as("PrivacyProtectAdminContact") privacyProtectAdminContact: option<boolean_>,
@as("TechContact") techContact: contactDetail,
@as("RegistrantContact") registrantContact: contactDetail,
@as("AdminContact") adminContact: contactDetail,
@as("AutoRenew") autoRenew: option<boolean_>,
@as("AuthCode") authCode: option<domainAuthCode>,
@as("Nameservers") nameservers: option<nameserverList>,
@as("DurationInYears") durationInYears: durationInYears,
@as("IdnLangCode") idnLangCode: option<langCode>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "TransferDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterDomain = {
  type t;
  type request = {
@as("PrivacyProtectTechContact") privacyProtectTechContact: option<boolean_>,
@as("PrivacyProtectRegistrantContact") privacyProtectRegistrantContact: option<boolean_>,
@as("PrivacyProtectAdminContact") privacyProtectAdminContact: option<boolean_>,
@as("TechContact") techContact: contactDetail,
@as("RegistrantContact") registrantContact: contactDetail,
@as("AdminContact") adminContact: contactDetail,
@as("AutoRenew") autoRenew: option<boolean_>,
@as("DurationInYears") durationInYears: durationInYears,
@as("IdnLangCode") idnLangCode: option<langCode>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RegisterDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomainDetail = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("StatusList") statusList: option<domainStatusList>,
@as("DnsSec") dnsSec: option<dnssec>,
@as("Reseller") reseller: option<reseller>,
@as("ExpirationDate") expirationDate: option<timestamp_>,
@as("UpdatedDate") updatedDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("RegistryDomainId") registryDomainId: option<registryDomainId>,
@as("AbuseContactPhone") abuseContactPhone: option<contactNumber>,
@as("AbuseContactEmail") abuseContactEmail: option<email>,
@as("RegistrarUrl") registrarUrl: option<registrarUrl>,
@as("WhoIsServer") whoIsServer: option<registrarWhoIsServer>,
@as("RegistrarName") registrarName: option<registrarName>,
@as("TechPrivacy") techPrivacy: option<boolean_>,
@as("RegistrantPrivacy") registrantPrivacy: option<boolean_>,
@as("AdminPrivacy") adminPrivacy: option<boolean_>,
@as("TechContact") techContact: contactDetail,
@as("RegistrantContact") registrantContact: contactDetail,
@as("AdminContact") adminContact: contactDetail,
@as("AutoRenew") autoRenew: option<boolean_>,
@as("Nameservers") nameservers: nameserverList,
@as("DomainName") domainName: domainName
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetDomainDetailCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
