type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type zipCode = string
type transferable = [@as("DONT_KNOW") #DONT_KNOW | @as("UNTRANSFERABLE") #UNTRANSFERABLE | @as("TRANSFERABLE") #TRANSFERABLE]
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type state = string
type reseller = string
type registryDomainId = string
type registrarWhoIsServer = string
type registrarUrl = string
type registrarName = string
type reachabilityStatus = [@as("EXPIRED") #EXPIRED | @as("DONE") #DONE | @as("PENDING") #PENDING]
type price = float;
type pageMaxItems = int;
type pageMarker = string
type operationType = [@as("INTERNAL_TRANSFER_IN_DOMAIN") #INTERNAL_TRANSFER_IN_DOMAIN | @as("INTERNAL_TRANSFER_OUT_DOMAIN") #INTERNAL_TRANSFER_OUT_DOMAIN | @as("PUSH_DOMAIN") #PUSH_DOMAIN | @as("RENEW_DOMAIN") #RENEW_DOMAIN | @as("CHANGE_DOMAIN_OWNER") #CHANGE_DOMAIN_OWNER | @as("TRANSFER_OUT_DOMAIN") #TRANSFER_OUT_DOMAIN | @as("EXPIRE_DOMAIN") #EXPIRE_DOMAIN | @as("REMOVE_DNSSEC") #REMOVE_DNSSEC | @as("ADD_DNSSEC") #ADD_DNSSEC | @as("DISABLE_AUTORENEW") #DISABLE_AUTORENEW | @as("ENABLE_AUTORENEW") #ENABLE_AUTORENEW | @as("DOMAIN_LOCK") #DOMAIN_LOCK | @as("CHANGE_PRIVACY_PROTECTION") #CHANGE_PRIVACY_PROTECTION | @as("UPDATE_NAMESERVER") #UPDATE_NAMESERVER | @as("UPDATE_DOMAIN_CONTACT") #UPDATE_DOMAIN_CONTACT | @as("TRANSFER_IN_DOMAIN") #TRANSFER_IN_DOMAIN | @as("DELETE_DOMAIN") #DELETE_DOMAIN | @as("REGISTER_DOMAIN") #REGISTER_DOMAIN]
type operationStatus = [@as("FAILED") #FAILED | @as("SUCCESSFUL") #SUCCESSFUL | @as("ERROR") #ERROR | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUBMITTED") #SUBMITTED]
type operationId = string
type langCode = string
type invoiceId = string
type amazonawsInteger = int;
type hostName = string
type glueIp = string
type fIAuthKey = string
type extraParamValue = string
type extraParamName = [@as("UK_COMPANY_NUMBER") #UK_COMPANY_NUMBER | @as("UK_CONTACT_TYPE") #UK_CONTACT_TYPE | @as("VAT_NUMBER") #VAT_NUMBER | @as("SG_ID_NUMBER") #SG_ID_NUMBER | @as("SE_ID_NUMBER") #SE_ID_NUMBER | @as("RU_PASSPORT_DATA") #RU_PASSPORT_DATA | @as("IT_REGISTRANT_ENTITY_TYPE") #IT_REGISTRANT_ENTITY_TYPE | @as("IT_PIN") #IT_PIN | @as("IT_NATIONALITY") #IT_NATIONALITY | @as("FI_ORGANIZATION_TYPE") #FI_ORGANIZATION_TYPE | @as("FI_NATIONALITY") #FI_NATIONALITY | @as("FI_ID_NUMBER") #FI_ID_NUMBER | @as("FI_BUSINESS_NUMBER") #FI_BUSINESS_NUMBER | @as("ES_LEGAL_FORM") #ES_LEGAL_FORM | @as("ES_IDENTIFICATION_TYPE") #ES_IDENTIFICATION_TYPE | @as("ES_IDENTIFICATION") #ES_IDENTIFICATION | @as("CA_LEGAL_REPRESENTATIVE_CAPACITY") #CA_LEGAL_REPRESENTATIVE_CAPACITY | @as("CA_LEGAL_REPRESENTATIVE") #CA_LEGAL_REPRESENTATIVE | @as("CA_BUSINESS_ENTITY_TYPE") #CA_BUSINESS_ENTITY_TYPE | @as("CA_LEGAL_TYPE") #CA_LEGAL_TYPE | @as("AU_ID_TYPE") #AU_ID_TYPE | @as("AU_ID_NUMBER") #AU_ID_NUMBER | @as("DOCUMENT_NUMBER") #DOCUMENT_NUMBER | @as("BIRTH_CITY") #BIRTH_CITY | @as("BIRTH_COUNTRY") #BIRTH_COUNTRY | @as("BIRTH_DATE_IN_YYYY_MM_DD") #BIRTH_DATE_IN_YYYY_MM_DD | @as("BIRTH_DEPARTMENT") #BIRTH_DEPARTMENT | @as("BRAND_NUMBER") #BRAND_NUMBER | @as("DUNS_NUMBER") #DUNS_NUMBER]
type errorMessage = string
type email = string
type durationInYears = int;
type domainStatus = string
type domainName = string
type domainAvailability = [@as("DONT_KNOW") #DONT_KNOW | @as("RESERVED") #RESERVED | @as("UNAVAILABLE_RESTRICTED") #UNAVAILABLE_RESTRICTED | @as("UNAVAILABLE_PREMIUM") #UNAVAILABLE_PREMIUM | @as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE_PREORDER") #AVAILABLE_PREORDER | @as("AVAILABLE_RESERVED") #AVAILABLE_RESERVED | @as("AVAILABLE") #AVAILABLE]
type domainAuthCode = string
type dNSSec = string
type currentExpiryYear = int;
type countryCode = [@as("ZW") #ZW | @as("ZM") #ZM | @as("ZA") #ZA | @as("YT") #YT | @as("YE") #YE | @as("WS") #WS | @as("WF") #WF | @as("VU") #VU | @as("VN") #VN | @as("VI") #VI | @as("VG") #VG | @as("VE") #VE | @as("VC") #VC | @as("VA") #VA | @as("UZ") #UZ | @as("UY") #UY | @as("US") #US | @as("UG") #UG | @as("UA") #UA | @as("TZ") #TZ | @as("TW") #TW | @as("TV") #TV | @as("TT") #TT | @as("TR") #TR | @as("TO") #TO | @as("TN") #TN | @as("TM") #TM | @as("TL") #TL | @as("TK") #TK | @as("TJ") #TJ | @as("TH") #TH | @as("TG") #TG | @as("TD") #TD | @as("TC") #TC | @as("SZ") #SZ | @as("SY") #SY | @as("SV") #SV | @as("ST") #ST | @as("SR") #SR | @as("SO") #SO | @as("SN") #SN | @as("SM") #SM | @as("SL") #SL | @as("SK") #SK | @as("SI") #SI | @as("SH") #SH | @as("SG") #SG | @as("SE") #SE | @as("SD") #SD | @as("SC") #SC | @as("SB") #SB | @as("SA") #SA | @as("RW") #RW | @as("RU") #RU | @as("RS") #RS | @as("RO") #RO | @as("QA") #QA | @as("PY") #PY | @as("PW") #PW | @as("PT") #PT | @as("PR") #PR | @as("PN") #PN | @as("PM") #PM | @as("PL") #PL | @as("PK") #PK | @as("PH") #PH | @as("PG") #PG | @as("PF") #PF | @as("PE") #PE | @as("PA") #PA | @as("OM") #OM | @as("NZ") #NZ | @as("NU") #NU | @as("NR") #NR | @as("NP") #NP | @as("NO") #NO | @as("NL") #NL | @as("NI") #NI | @as("NG") #NG | @as("NE") #NE | @as("NC") #NC | @as("NA") #NA | @as("MZ") #MZ | @as("MY") #MY | @as("MX") #MX | @as("MW") #MW | @as("MV") #MV | @as("MU") #MU | @as("MT") #MT | @as("MS") #MS | @as("MR") #MR | @as("MP") #MP | @as("MO") #MO | @as("MN") #MN | @as("MM") #MM | @as("ML") #ML | @as("MK") #MK | @as("MH") #MH | @as("MG") #MG | @as("MF") #MF | @as("ME") #ME | @as("MD") #MD | @as("MC") #MC | @as("MA") #MA | @as("LY") #LY | @as("LV") #LV | @as("LU") #LU | @as("LT") #LT | @as("LS") #LS | @as("LR") #LR | @as("LK") #LK | @as("LI") #LI | @as("LC") #LC | @as("LB") #LB | @as("LA") #LA | @as("KZ") #KZ | @as("KY") #KY | @as("KW") #KW | @as("KR") #KR | @as("KP") #KP | @as("KN") #KN | @as("KM") #KM | @as("KI") #KI | @as("KH") #KH | @as("KG") #KG | @as("KE") #KE | @as("JP") #JP | @as("JO") #JO | @as("JM") #JM | @as("IT") #IT | @as("IS") #IS | @as("IR") #IR | @as("IQ") #IQ | @as("IN") #IN | @as("IM") #IM | @as("IL") #IL | @as("IE") #IE | @as("ID") #ID | @as("HU") #HU | @as("HT") #HT | @as("HR") #HR | @as("HN") #HN | @as("HK") #HK | @as("GY") #GY | @as("GW") #GW | @as("GU") #GU | @as("GT") #GT | @as("GR") #GR | @as("GQ") #GQ | @as("GN") #GN | @as("GM") #GM | @as("GL") #GL | @as("GI") #GI | @as("GH") #GH | @as("GE") #GE | @as("GD") #GD | @as("GB") #GB | @as("GA") #GA | @as("FR") #FR | @as("FO") #FO | @as("FM") #FM | @as("FK") #FK | @as("FJ") #FJ | @as("FI") #FI | @as("ET") #ET | @as("ES") #ES | @as("ER") #ER | @as("EG") #EG | @as("EE") #EE | @as("EC") #EC | @as("DZ") #DZ | @as("DO") #DO | @as("DM") #DM | @as("DK") #DK | @as("DJ") #DJ | @as("DE") #DE | @as("CZ") #CZ | @as("CY") #CY | @as("CX") #CX | @as("CV") #CV | @as("CU") #CU | @as("CR") #CR | @as("CO") #CO | @as("CN") #CN | @as("CM") #CM | @as("CL") #CL | @as("CK") #CK | @as("CI") #CI | @as("CH") #CH | @as("CG") #CG | @as("CF") #CF | @as("CD") #CD | @as("CC") #CC | @as("CA") #CA | @as("BZ") #BZ | @as("BY") #BY | @as("BW") #BW | @as("BT") #BT | @as("BS") #BS | @as("BR") #BR | @as("BO") #BO | @as("BN") #BN | @as("BM") #BM | @as("BL") #BL | @as("BJ") #BJ | @as("BI") #BI | @as("BH") #BH | @as("BG") #BG | @as("BF") #BF | @as("BE") #BE | @as("BD") #BD | @as("BB") #BB | @as("BA") #BA | @as("AZ") #AZ | @as("AW") #AW | @as("AU") #AU | @as("AT") #AT | @as("AS") #AS | @as("AR") #AR | @as("AQ") #AQ | @as("AO") #AO | @as("AN") #AN | @as("AM") #AM | @as("AL") #AL | @as("AI") #AI | @as("AG") #AG | @as("AF") #AF | @as("AE") #AE | @as("AD") #AD]
type contactType = [@as("RESELLER") #RESELLER | @as("PUBLIC_BODY") #PUBLIC_BODY | @as("ASSOCIATION") #ASSOCIATION | @as("COMPANY") #COMPANY | @as("PERSON") #PERSON]
type contactNumber = string
type contactName = string
type city = string
type amazonawsBoolean = bool;
type addressLine = string
type accountId = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type operationSummary = {
@as("SubmittedDate") submittedDate: option<amazonawsTimestamp>,
@as("Type") type_: option<operationType>,
@as("Status") status: option<operationStatus>,
@as("OperationId") operationId: option<operationId>
}
type glueIpList = array<glueIp>
type extraParam = {
@as("Value") value: option<extraParamValue>,
@as("Name") name: option<extraParamName>
}
type domainTransferability = {
@as("Transferable") transferable: transferable
}
type domainSummary = {
@as("Expiry") expiry: amazonawsTimestamp,
@as("TransferLock") transferLock: amazonawsBoolean,
@as("AutoRenew") autoRenew: amazonawsBoolean,
@as("DomainName") domainName: option<domainName>
}
type domainSuggestion = {
@as("Availability") availability: amazonawsString,
@as("DomainName") domainName: domainName
}
type domainStatusList = array<domainStatus>
type billingRecord = {
@as("Price") price: price,
@as("BillDate") billDate: amazonawsTimestamp,
@as("InvoiceId") invoiceId: invoiceId,
@as("Operation") operation: operationType,
@as("DomainName") domainName: domainName
}
type tagList = array<tag>
type operationSummaryList = array<operationSummary>
type nameserver = {
@as("GlueIps") glueIps: glueIpList,
@as("Name") name: option<hostName>
}
type extraParamList = array<extraParam>
type domainSummaryList = array<domainSummary>
type domainSuggestionsList = array<domainSuggestion>
type billingRecords = array<billingRecord>
type nameserverList = array<nameserver>
type contactDetail = {
@as("ExtraParams") extraParams: extraParamList,
@as("Fax") fax: contactNumber,
@as("Email") email: email,
@as("PhoneNumber") phoneNumber: contactNumber,
@as("ZipCode") zipCode: zipCode,
@as("CountryCode") countryCode: countryCode,
@as("State") state: state,
@as("City") city: city,
@as("AddressLine2") addressLine2: addressLine,
@as("AddressLine1") addressLine1: addressLine,
@as("OrganizationName") organizationName: contactName,
@as("ContactType") contactType: contactType,
@as("LastName") lastName: contactName,
@as("FirstName") firstName: contactName
}
type clientType;
@module("@aws-sdk/client-route53domains") @new external createClient: unit => clientType = "Route53DomainsClient";
module UpdateDomainContactPrivacy = {
  type t;
  type request = {
@as("TechPrivacy") techPrivacy: amazonawsBoolean,
@as("RegistrantPrivacy") registrantPrivacy: amazonawsBoolean,
@as("AdminPrivacy") adminPrivacy: amazonawsBoolean,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainContactPrivacyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TransferDomainToAnotherAwsAccount = {
  type t;
  type request = {
@as("AccountId") accountId: option<accountId>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Password") password: amazonawsString,
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "TransferDomainToAnotherAwsAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetrieveDomainAuthCode = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("AuthCode") authCode: option<domainAuthCode>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RetrieveDomainAuthCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResendContactReachabilityEmail = {
  type t;
  type request = {
@as("domainName") domainName: domainName
}
  type response = {
@as("isAlreadyVerified") isAlreadyVerified: amazonawsBoolean,
@as("emailAddress") emailAddress: email,
@as("domainName") domainName: domainName
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ResendContactReachabilityEmailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RenewDomain = {
  type t;
  type request = {
@as("CurrentExpiryYear") currentExpiryYear: option<currentExpiryYear>,
@as("DurationInYears") durationInYears: durationInYears,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RenewDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectDomainTransferFromAnotherAwsAccount = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RejectDomainTransferFromAnotherAwsAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOperationDetail = {
  type t;
  type request = {
@as("OperationId") operationId: option<operationId>
}
  type response = {
@as("SubmittedDate") submittedDate: amazonawsTimestamp,
@as("Type") type_: operationType,
@as("DomainName") domainName: domainName,
@as("Message") message: errorMessage,
@as("Status") status: operationStatus,
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetOperationDetailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContactReachabilityStatus = {
  type t;
  type request = {
@as("domainName") domainName: domainName
}
  type response = {
@as("status") status: reachabilityStatus,
@as("domainName") domainName: domainName
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetContactReachabilityStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableDomainTransferLock = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "EnableDomainTransferLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableDomainAutoRenew = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "EnableDomainAutoRenewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableDomainTransferLock = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DisableDomainTransferLockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableDomainAutoRenew = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DisableDomainAutoRenewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckDomainAvailability = {
  type t;
  type request = {
@as("IdnLangCode") idnLangCode: langCode,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Availability") availability: option<domainAvailability>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CheckDomainAvailabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelDomainTransferToAnotherAwsAccount = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CancelDomainTransferToAnotherAwsAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptDomainTransferFromAnotherAwsAccount = {
  type t;
  type request = {
@as("Password") password: option<amazonawsString>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: operationId
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "AcceptDomainTransferFromAnotherAwsAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTagsForDomain = {
  type t;
  type request = {
@as("TagsToDelete") tagsToDelete: option<tagKeyList>,
@as("DomainName") domainName: option<domainName>
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "DeleteTagsForDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckDomainTransferability = {
  type t;
  type request = {
@as("AuthCode") authCode: domainAuthCode,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("Transferability") transferability: option<domainTransferability>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "CheckDomainTransferabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ViewBilling = {
  type t;
  type request = {
@as("MaxItems") maxItems: pageMaxItems,
@as("Marker") marker: pageMarker,
@as("End") end: amazonawsTimestamp,
@as("Start") start: amazonawsTimestamp
}
  type response = {
@as("BillingRecords") billingRecords: billingRecords,
@as("NextPageMarker") nextPageMarker: pageMarker
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ViewBillingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTagsForDomain = {
  type t;
  type request = {
@as("TagsToUpdate") tagsToUpdate: tagList,
@as("DomainName") domainName: option<domainName>
}
  type response = unit
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateTagsForDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("TagList") tagList: option<tagList>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListTagsForDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOperations = {
  type t;
  type request = {
@as("MaxItems") maxItems: pageMaxItems,
@as("Marker") marker: pageMarker,
@as("SubmittedSince") submittedSince: amazonawsTimestamp
}
  type response = {
@as("NextPageMarker") nextPageMarker: pageMarker,
@as("Operations") operations: option<operationSummaryList>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxItems") maxItems: pageMaxItems,
@as("Marker") marker: pageMarker
}
  type response = {
@as("NextPageMarker") nextPageMarker: pageMarker,
@as("Domains") domains: option<domainSummaryList>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainSuggestions = {
  type t;
  type request = {
@as("OnlyAvailable") onlyAvailable: option<amazonawsBoolean>,
@as("SuggestionCount") suggestionCount: option<amazonawsInteger>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("SuggestionsList") suggestionsList: domainSuggestionsList
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetDomainSuggestionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainNameservers = {
  type t;
  type request = {
@as("Nameservers") nameservers: option<nameserverList>,
@as("FIAuthKey") fIAuthKey: fIAuthKey,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainNameserversCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainContact = {
  type t;
  type request = {
@as("TechContact") techContact: contactDetail,
@as("RegistrantContact") registrantContact: contactDetail,
@as("AdminContact") adminContact: contactDetail,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "UpdateDomainContactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TransferDomain = {
  type t;
  type request = {
@as("PrivacyProtectTechContact") privacyProtectTechContact: amazonawsBoolean,
@as("PrivacyProtectRegistrantContact") privacyProtectRegistrantContact: amazonawsBoolean,
@as("PrivacyProtectAdminContact") privacyProtectAdminContact: amazonawsBoolean,
@as("TechContact") techContact: option<contactDetail>,
@as("RegistrantContact") registrantContact: option<contactDetail>,
@as("AdminContact") adminContact: option<contactDetail>,
@as("AutoRenew") autoRenew: amazonawsBoolean,
@as("AuthCode") authCode: domainAuthCode,
@as("Nameservers") nameservers: nameserverList,
@as("DurationInYears") durationInYears: option<durationInYears>,
@as("IdnLangCode") idnLangCode: langCode,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "TransferDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterDomain = {
  type t;
  type request = {
@as("PrivacyProtectTechContact") privacyProtectTechContact: amazonawsBoolean,
@as("PrivacyProtectRegistrantContact") privacyProtectRegistrantContact: amazonawsBoolean,
@as("PrivacyProtectAdminContact") privacyProtectAdminContact: amazonawsBoolean,
@as("TechContact") techContact: option<contactDetail>,
@as("RegistrantContact") registrantContact: option<contactDetail>,
@as("AdminContact") adminContact: option<contactDetail>,
@as("AutoRenew") autoRenew: amazonawsBoolean,
@as("DurationInYears") durationInYears: option<durationInYears>,
@as("IdnLangCode") idnLangCode: langCode,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("OperationId") operationId: option<operationId>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "RegisterDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomainDetail = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("StatusList") statusList: domainStatusList,
@as("DnsSec") dnsSec: dNSSec,
@as("Reseller") reseller: reseller,
@as("ExpirationDate") expirationDate: amazonawsTimestamp,
@as("UpdatedDate") updatedDate: amazonawsTimestamp,
@as("CreationDate") creationDate: amazonawsTimestamp,
@as("RegistryDomainId") registryDomainId: registryDomainId,
@as("AbuseContactPhone") abuseContactPhone: contactNumber,
@as("AbuseContactEmail") abuseContactEmail: email,
@as("RegistrarUrl") registrarUrl: registrarUrl,
@as("WhoIsServer") whoIsServer: registrarWhoIsServer,
@as("RegistrarName") registrarName: registrarName,
@as("TechPrivacy") techPrivacy: amazonawsBoolean,
@as("RegistrantPrivacy") registrantPrivacy: amazonawsBoolean,
@as("AdminPrivacy") adminPrivacy: amazonawsBoolean,
@as("TechContact") techContact: option<contactDetail>,
@as("RegistrantContact") registrantContact: option<contactDetail>,
@as("AdminContact") adminContact: option<contactDetail>,
@as("AutoRenew") autoRenew: amazonawsBoolean,
@as("Nameservers") nameservers: option<nameserverList>,
@as("DomainName") domainName: option<domainName>
}
  @module("@aws-sdk/client-route53domains") @new external new_: (request) => t = "GetDomainDetailCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
