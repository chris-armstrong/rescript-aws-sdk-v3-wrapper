type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-route53domains") @new
external createClient: unit => awsServiceClient = "Route53DomainsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type zipCode = string
@ocaml.doc("<p>Whether the domain name can be transferred to Route 53.</p>
		       <note>
            <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> for <code>Transferable</code>.</p>
         </note>
		
		       <p>Valid values:</p>
		       <dl>
            <dt>TRANSFERABLE</dt>
            <dd>
               <p>The domain name can be transferred to Route 53.</p>
            </dd>
            <dt>UNTRANSFERRABLE</dt>
            <dd>
               <p>The domain name can't be transferred to Route 53.</p>
            </dd>
            <dt>DONT_KNOW</dt>
            <dd>
               <p>Reserved for future use.</p>
            </dd>
         </dl>")
type transferable = [
  | @as("DONT_KNOW") #DONT_KNOW
  | @as("UNTRANSFERABLE") #UNTRANSFERABLE
  | @as("TRANSFERABLE") #TRANSFERABLE
]
type timestamp_ = Js.Date.t
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
type operationType = [
  | @as("INTERNAL_TRANSFER_IN_DOMAIN") #INTERNAL_TRANSFER_IN_DOMAIN
  | @as("INTERNAL_TRANSFER_OUT_DOMAIN") #INTERNAL_TRANSFER_OUT_DOMAIN
  | @as("PUSH_DOMAIN") #PUSH_DOMAIN
  | @as("RENEW_DOMAIN") #RENEW_DOMAIN
  | @as("CHANGE_DOMAIN_OWNER") #CHANGE_DOMAIN_OWNER
  | @as("TRANSFER_OUT_DOMAIN") #TRANSFER_OUT_DOMAIN
  | @as("EXPIRE_DOMAIN") #EXPIRE_DOMAIN
  | @as("REMOVE_DNSSEC") #REMOVE_DNSSEC
  | @as("ADD_DNSSEC") #ADD_DNSSEC
  | @as("DISABLE_AUTORENEW") #DISABLE_AUTORENEW
  | @as("ENABLE_AUTORENEW") #ENABLE_AUTORENEW
  | @as("DOMAIN_LOCK") #DOMAIN_LOCK
  | @as("CHANGE_PRIVACY_PROTECTION") #CHANGE_PRIVACY_PROTECTION
  | @as("UPDATE_NAMESERVER") #UPDATE_NAMESERVER
  | @as("UPDATE_DOMAIN_CONTACT") #UPDATE_DOMAIN_CONTACT
  | @as("TRANSFER_IN_DOMAIN") #TRANSFER_IN_DOMAIN
  | @as("DELETE_DOMAIN") #DELETE_DOMAIN
  | @as("REGISTER_DOMAIN") #REGISTER_DOMAIN
]
type operationStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESSFUL") #SUCCESSFUL
  | @as("ERROR") #ERROR
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type operationId = string
type langCode = string
type invoiceId = string
type integer_ = int
type hostName = string
type glueIp = string
type fiauthKey = string
type extraParamValue = string
type extraParamName = [
  | @as("UK_COMPANY_NUMBER") #UK_COMPANY_NUMBER
  | @as("UK_CONTACT_TYPE") #UK_CONTACT_TYPE
  | @as("VAT_NUMBER") #VAT_NUMBER
  | @as("SG_ID_NUMBER") #SG_ID_NUMBER
  | @as("SE_ID_NUMBER") #SE_ID_NUMBER
  | @as("RU_PASSPORT_DATA") #RU_PASSPORT_DATA
  | @as("IT_REGISTRANT_ENTITY_TYPE") #IT_REGISTRANT_ENTITY_TYPE
  | @as("IT_PIN") #IT_PIN
  | @as("IT_NATIONALITY") #IT_NATIONALITY
  | @as("FI_ORGANIZATION_TYPE") #FI_ORGANIZATION_TYPE
  | @as("FI_NATIONALITY") #FI_NATIONALITY
  | @as("FI_ID_NUMBER") #FI_ID_NUMBER
  | @as("FI_BUSINESS_NUMBER") #FI_BUSINESS_NUMBER
  | @as("ES_LEGAL_FORM") #ES_LEGAL_FORM
  | @as("ES_IDENTIFICATION_TYPE") #ES_IDENTIFICATION_TYPE
  | @as("ES_IDENTIFICATION") #ES_IDENTIFICATION
  | @as("CA_LEGAL_REPRESENTATIVE_CAPACITY") #CA_LEGAL_REPRESENTATIVE_CAPACITY
  | @as("CA_LEGAL_REPRESENTATIVE") #CA_LEGAL_REPRESENTATIVE
  | @as("CA_BUSINESS_ENTITY_TYPE") #CA_BUSINESS_ENTITY_TYPE
  | @as("CA_LEGAL_TYPE") #CA_LEGAL_TYPE
  | @as("AU_ID_TYPE") #AU_ID_TYPE
  | @as("AU_ID_NUMBER") #AU_ID_NUMBER
  | @as("DOCUMENT_NUMBER") #DOCUMENT_NUMBER
  | @as("BIRTH_CITY") #BIRTH_CITY
  | @as("BIRTH_COUNTRY") #BIRTH_COUNTRY
  | @as("BIRTH_DATE_IN_YYYY_MM_DD") #BIRTH_DATE_IN_YYYY_MM_DD
  | @as("BIRTH_DEPARTMENT") #BIRTH_DEPARTMENT
  | @as("BRAND_NUMBER") #BRAND_NUMBER
  | @as("DUNS_NUMBER") #DUNS_NUMBER
]
type errorMessage = string
type email = string
type durationInYears = int
type domainStatus = string
type domainName = string
type domainAvailability = [
  | @as("DONT_KNOW") #DONT_KNOW
  | @as("RESERVED") #RESERVED
  | @as("UNAVAILABLE_RESTRICTED") #UNAVAILABLE_RESTRICTED
  | @as("UNAVAILABLE_PREMIUM") #UNAVAILABLE_PREMIUM
  | @as("UNAVAILABLE") #UNAVAILABLE
  | @as("AVAILABLE_PREORDER") #AVAILABLE_PREORDER
  | @as("AVAILABLE_RESERVED") #AVAILABLE_RESERVED
  | @as("AVAILABLE") #AVAILABLE
]
type domainAuthCode = string
type dnssec = string
type currentExpiryYear = int
type countryCode = [
  | @as("ZW") #ZW
  | @as("ZM") #ZM
  | @as("ZA") #ZA
  | @as("YT") #YT
  | @as("YE") #YE
  | @as("WS") #WS
  | @as("WF") #WF
  | @as("VU") #VU
  | @as("VN") #VN
  | @as("VI") #VI
  | @as("VG") #VG
  | @as("VE") #VE
  | @as("VC") #VC
  | @as("VA") #VA
  | @as("UZ") #UZ
  | @as("UY") #UY
  | @as("US") #US
  | @as("UG") #UG
  | @as("UA") #UA
  | @as("TZ") #TZ
  | @as("TW") #TW
  | @as("TV") #TV
  | @as("TT") #TT
  | @as("TR") #TR
  | @as("TO") #TO
  | @as("TN") #TN
  | @as("TM") #TM
  | @as("TL") #TL
  | @as("TK") #TK
  | @as("TJ") #TJ
  | @as("TH") #TH
  | @as("TG") #TG
  | @as("TD") #TD
  | @as("TC") #TC
  | @as("SZ") #SZ
  | @as("SY") #SY
  | @as("SV") #SV
  | @as("ST") #ST
  | @as("SR") #SR
  | @as("SO") #SO
  | @as("SN") #SN
  | @as("SM") #SM
  | @as("SL") #SL
  | @as("SK") #SK
  | @as("SI") #SI
  | @as("SH") #SH
  | @as("SG") #SG
  | @as("SE") #SE
  | @as("SD") #SD
  | @as("SC") #SC
  | @as("SB") #SB
  | @as("SA") #SA
  | @as("RW") #RW
  | @as("RU") #RU
  | @as("RS") #RS
  | @as("RO") #RO
  | @as("QA") #QA
  | @as("PY") #PY
  | @as("PW") #PW
  | @as("PT") #PT
  | @as("PR") #PR
  | @as("PN") #PN
  | @as("PM") #PM
  | @as("PL") #PL
  | @as("PK") #PK
  | @as("PH") #PH
  | @as("PG") #PG
  | @as("PF") #PF
  | @as("PE") #PE
  | @as("PA") #PA
  | @as("OM") #OM
  | @as("NZ") #NZ
  | @as("NU") #NU
  | @as("NR") #NR
  | @as("NP") #NP
  | @as("NO") #NO
  | @as("NL") #NL
  | @as("NI") #NI
  | @as("NG") #NG
  | @as("NE") #NE
  | @as("NC") #NC
  | @as("NA") #NA
  | @as("MZ") #MZ
  | @as("MY") #MY
  | @as("MX") #MX
  | @as("MW") #MW
  | @as("MV") #MV
  | @as("MU") #MU
  | @as("MT") #MT
  | @as("MS") #MS
  | @as("MR") #MR
  | @as("MP") #MP
  | @as("MO") #MO
  | @as("MN") #MN
  | @as("MM") #MM
  | @as("ML") #ML
  | @as("MK") #MK
  | @as("MH") #MH
  | @as("MG") #MG
  | @as("MF") #MF
  | @as("ME") #ME
  | @as("MD") #MD
  | @as("MC") #MC
  | @as("MA") #MA
  | @as("LY") #LY
  | @as("LV") #LV
  | @as("LU") #LU
  | @as("LT") #LT
  | @as("LS") #LS
  | @as("LR") #LR
  | @as("LK") #LK
  | @as("LI") #LI
  | @as("LC") #LC
  | @as("LB") #LB
  | @as("LA") #LA
  | @as("KZ") #KZ
  | @as("KY") #KY
  | @as("KW") #KW
  | @as("KR") #KR
  | @as("KP") #KP
  | @as("KN") #KN
  | @as("KM") #KM
  | @as("KI") #KI
  | @as("KH") #KH
  | @as("KG") #KG
  | @as("KE") #KE
  | @as("JP") #JP
  | @as("JO") #JO
  | @as("JM") #JM
  | @as("IT") #IT
  | @as("IS") #IS
  | @as("IR") #IR
  | @as("IQ") #IQ
  | @as("IN") #IN
  | @as("IM") #IM
  | @as("IL") #IL
  | @as("IE") #IE
  | @as("ID") #ID
  | @as("HU") #HU
  | @as("HT") #HT
  | @as("HR") #HR
  | @as("HN") #HN
  | @as("HK") #HK
  | @as("GY") #GY
  | @as("GW") #GW
  | @as("GU") #GU
  | @as("GT") #GT
  | @as("GR") #GR
  | @as("GQ") #GQ
  | @as("GN") #GN
  | @as("GM") #GM
  | @as("GL") #GL
  | @as("GI") #GI
  | @as("GH") #GH
  | @as("GE") #GE
  | @as("GD") #GD
  | @as("GB") #GB
  | @as("GA") #GA
  | @as("FR") #FR
  | @as("FO") #FO
  | @as("FM") #FM
  | @as("FK") #FK
  | @as("FJ") #FJ
  | @as("FI") #FI
  | @as("ET") #ET
  | @as("ES") #ES
  | @as("ER") #ER
  | @as("EG") #EG
  | @as("EE") #EE
  | @as("EC") #EC
  | @as("DZ") #DZ
  | @as("DO") #DO
  | @as("DM") #DM
  | @as("DK") #DK
  | @as("DJ") #DJ
  | @as("DE") #DE
  | @as("CZ") #CZ
  | @as("CY") #CY
  | @as("CX") #CX
  | @as("CV") #CV
  | @as("CU") #CU
  | @as("CR") #CR
  | @as("CO") #CO
  | @as("CN") #CN
  | @as("CM") #CM
  | @as("CL") #CL
  | @as("CK") #CK
  | @as("CI") #CI
  | @as("CH") #CH
  | @as("CG") #CG
  | @as("CF") #CF
  | @as("CD") #CD
  | @as("CC") #CC
  | @as("CA") #CA
  | @as("BZ") #BZ
  | @as("BY") #BY
  | @as("BW") #BW
  | @as("BT") #BT
  | @as("BS") #BS
  | @as("BR") #BR
  | @as("BO") #BO
  | @as("BN") #BN
  | @as("BM") #BM
  | @as("BL") #BL
  | @as("BJ") #BJ
  | @as("BI") #BI
  | @as("BH") #BH
  | @as("BG") #BG
  | @as("BF") #BF
  | @as("BE") #BE
  | @as("BD") #BD
  | @as("BB") #BB
  | @as("BA") #BA
  | @as("AZ") #AZ
  | @as("AW") #AW
  | @as("AU") #AU
  | @as("AT") #AT
  | @as("AS") #AS
  | @as("AR") #AR
  | @as("AQ") #AQ
  | @as("AO") #AO
  | @as("AN") #AN
  | @as("AM") #AM
  | @as("AL") #AL
  | @as("AI") #AI
  | @as("AG") #AG
  | @as("AF") #AF
  | @as("AE") #AE
  | @as("AD") #AD
]
type contactType = [
  | @as("RESELLER") #RESELLER
  | @as("PUBLIC_BODY") #PUBLIC_BODY
  | @as("ASSOCIATION") #ASSOCIATION
  | @as("COMPANY") #COMPANY
  | @as("PERSON") #PERSON
]
type contactNumber = string
type contactName = string
type city = string
type boolean_ = bool
type addressLine = string
type accountId = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Each tag includes the following elements.</p>")
type tag = {
  @ocaml.doc("<p>The value of a tag.</p>
		       <p>Valid values: A-Z, a-z, 0-9, space, \".:/=+\\-@\"</p>
		       <p>Constraints: Each value can be 0-256 characters long.</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The key (name) of a tag.</p>
		       <p>Valid values: A-Z, a-z, 0-9, space, \".:/=+\\-@\"</p>
		       <p>Constraints: Each key can be 1-128 characters long.</p>")
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>OperationSummary includes the following elements.</p>")
type operationSummary = {
  @ocaml.doc("<p>The date when the request was submitted.</p>") @as("SubmittedDate")
  submittedDate: timestamp_,
  @ocaml.doc("<p>Type of the action requested.</p>") @as("Type") type_: operationType,
  @ocaml.doc("<p>The current status of the requested operation in the system.</p>") @as("Status")
  status: operationStatus,
  @ocaml.doc("<p>Identifier returned to track the requested action.</p>") @as("OperationId")
  operationId: operationId,
}
type glueIpList = array<glueIp>
@ocaml.doc("<p>ExtraParam includes the following elements.</p>")
type extraParam = {
  @ocaml.doc("<p>The value that corresponds with the name of an extra parameter.</p>") @as("Value")
  value: extraParamValue,
  @ocaml.doc("<p>The name of an additional parameter that is required by a top-level domain. Here are the top-level domains that require 
			additional parameters and the names of the parameters that they require:</p>

		       <dl>
            <dt>.com.au and .net.au</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>AU_ID_NUMBER</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AU_ID_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>ABN</code> (Australian business number)</p>
                        </li>
                        <li>
                           <p>
                              <code>ACN</code> (Australian company number)</p>
                        </li>
                        <li>
                           <p>
                              <code>TM</code> (Trademark number)</p>
                        </li>
                     </ul>
						            </li>
               </ul>
				        </dd>
            <dt>.ca</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>BRAND_NUMBER</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>CA_BUSINESS_ENTITY_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>BANK</code> (Bank)</p>
                        </li>
                        <li>
                           <p>
                              <code>COMMERCIAL_COMPANY</code> (Commercial company)</p>
                        </li>
                        <li>
                           <p>
                              <code>COMPANY</code> (Company)</p>
                        </li>
                        <li>
                           <p>
                              <code>COOPERATION</code> (Cooperation)</p>
                        </li>
                        <li>
                           <p>
                              <code>COOPERATIVE</code> (Cooperative)</p>
                        </li>
                        <li>
                           <p>
                              <code>COOPRIX</code> (Cooprix)</p>
                        </li>
                        <li>
                           <p>
                              <code>CORP</code> (Corporation)</p>
                        </li>
                        <li>
                           <p>
                              <code>CREDIT_UNION</code> (Credit union)</p>
                        </li>
                        <li>
                           <p>
                              <code>FOMIA</code> (Federation of mutual insurance associations)</p>
                        </li>
                        <li>
                           <p>
                              <code>INC</code> (Incorporated)</p>
                        </li>
                        <li>
                           <p>
                              <code>LTD</code> (Limited)</p>
                        </li>
                        <li>
                           <p>
                              <code>LTEE</code> (Limitée)</p>
                        </li>
                        <li>
                           <p>
                              <code>LLC</code> (Limited liability corporation)</p>
                        </li>
                        <li>
                           <p>
                              <code>LLP</code> (Limited liability partnership)</p>
                        </li>
                        <li>
                           <p>
                              <code>LTE</code> (Lte.)</p>
                        </li>
                        <li>
                           <p>
                              <code>MBA</code> (Mutual benefit association)</p>
                        </li>
                        <li>
                           <p>
                              <code>MIC</code> (Mutual insurance company)</p>
                        </li>
                        <li>
                           <p>
                              <code>NFP</code> (Not-for-profit corporation)</p>
                        </li>
                        <li>
                           <p>
                              <code>SA</code> (S.A.)</p>
                        </li>
                        <li>
                           <p>
                              <code>SAVINGS_COMPANY</code> (Savings company)</p>
                        </li>
                        <li>
                           <p>
                              <code>SAVINGS_UNION</code> (Savings union)</p>
                        </li>
                        <li>
                           <p>
                              <code>SARL</code> (Société à responsabilité limitée)</p>
                        </li>
                        <li>
                           <p>
                              <code>TRUST</code> (Trust)</p>
                        </li>
                        <li>
                           <p>
                              <code>ULC</code> (Unlimited liability corporation)</p>
                        </li>
                     </ul>
						            </li>
                  <li>
                     <p>
                        <code>CA_LEGAL_TYPE</code>
                     </p>
							              <p>When <code>ContactType</code> is <code>PERSON</code>, valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>ABO</code> (Aboriginal Peoples indigenous to Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>CCT</code> (Canadian citizen)</p>
                        </li>
                        <li>
                           <p>
                              <code>LGR</code> (Legal Representative of a Canadian Citizen or Permanent Resident)</p>
                        </li>
                        <li>
                           <p>
                              <code>RES</code> (Permanent resident of Canada)</p>
                        </li>
                     </ul>

							              <p>When <code>ContactType</code> is a value other than <code>PERSON</code>, valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>ASS</code> (Canadian unincorporated association)</p>
                        </li>
                        <li>
                           <p>
                              <code>CCO</code> (Canadian corporation)</p>
                        </li>
                        <li>
                           <p>
                              <code>EDU</code> (Canadian educational institution)</p>
                        </li>
                        <li>
                           <p>
                              <code>GOV</code> (Government or government entity in Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>HOP</code> (Canadian Hospital)</p>
                        </li>
                        <li>
                           <p>
                              <code>INB</code> (Indian Band recognized by the Indian Act of Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>LAM</code> (Canadian Library, Archive, or Museum)</p>
                        </li>
                        <li>
                           <p>
                              <code>MAJ</code> (Her/His Majesty the Queen/King)</p>
                        </li>
                        <li>
                           <p>
                              <code>OMK</code> (Official mark registered in Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>PLT</code> (Canadian Political Party)</p>
                        </li>
                        <li>
                           <p>
                              <code>PRT</code> (Partnership Registered in Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>TDM</code> (Trademark registered in Canada)</p>
                        </li>
                        <li>
                           <p>
                              <code>TRD</code> (Canadian Trade Union)</p>
                        </li>
                        <li>
                           <p>
                              <code>TRS</code> (Trust established in Canada)</p>
                        </li>
                     </ul>

						            </li>
               </ul>
				        </dd>
            <dt>.es</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>ES_IDENTIFICATION</code>
                     </p>
							              <p>Specify the applicable value:</p>
							              <ul>
                        <li>
                           <p>
                              <b>For contacts inside Spain:</b> Enter your passport ID.</p>
                        </li>
                        <li>
                           <p>
                              <b>For contacts outside of Spain:</b> Enter the VAT identification number 
									for the company.</p>
									                  <note>
                              <p>For .es domains, the value of <code>ContactType</code> must be <code>PERSON</code>.</p>
                           </note>
								                </li>
                     </ul>
						            </li>
                  <li>
                     <p>
                        <code>ES_IDENTIFICATION_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>DNI_AND_NIF</code> (For Spanish contacts)</p>
                        </li>
                        <li>
                           <p>
                              <code>NIE</code> (For foreigners with legal residence)</p>
                        </li>
                        <li>
                           <p>
                              <code>OTHER</code> (For contacts outside of Spain)</p>
                        </li>
                     </ul>
						            </li>
                  <li>
                     <p>
                        <code>ES_LEGAL_FORM</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>ASSOCIATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>CENTRAL_GOVERNMENT_BODY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>CIVIL_SOCIETY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>COMMUNITY_OF_OWNERS</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>COMMUNITY_PROPERTY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>CONSULATE</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>COOPERATIVE</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>DESIGNATION_OF_ORIGIN_SUPERVISORY_COUNCIL</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>ECONOMIC_INTEREST_GROUP</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>EMBASSY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>ENTITY_MANAGING_NATURAL_AREAS</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>FARM_PARTNERSHIP</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>FOUNDATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>GENERAL_AND_LIMITED_PARTNERSHIP</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>GENERAL_PARTNERSHIP</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>INDIVIDUAL</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>LIMITED_COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>LOCAL_AUTHORITY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>LOCAL_PUBLIC_ENTITY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>MUTUAL_INSURANCE_COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>NATIONAL_PUBLIC_ENTITY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>ORDER_OR_RELIGIOUS_INSTITUTION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>OTHERS (Only for contacts outside of Spain)</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>POLITICAL_PARTY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>PROFESSIONAL_ASSOCIATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>PUBLIC_LAW_ASSOCIATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>PUBLIC_LIMITED_COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>REGIONAL_GOVERNMENT_BODY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>REGIONAL_PUBLIC_ENTITY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>SAVINGS_BANK</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>SPANISH_OFFICE</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>SPORTS_ASSOCIATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>SPORTS_FEDERATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>SPORTS_LIMITED_COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>TEMPORARY_ALLIANCE_OF_ENTERPRISES</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>TRADE_UNION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>WORKER_OWNED_COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>WORKER_OWNED_LIMITED_COMPANY</code>
                           </p>
                        </li>
                     </ul>
							
						            </li>
               </ul>
				        </dd>
            <dt>.fi</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>FI_BUSINESS_NUMBER</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>FI_ID_NUMBER</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>FI_NATIONALITY</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>FINNISH</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>NOT_FINNISH</code>
                           </p>
                        </li>
                     </ul>
						            </li>
                  <li>
                     <p>
                        <code>FI_ORGANIZATION_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>COMPANY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>CORPORATION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>GOVERNMENT</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>INSTITUTION</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>POLITICAL_PARTY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>PUBLIC_COMMUNITY</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>TOWNSHIP</code>
                           </p>
                        </li>
                     </ul>
						            </li>
               </ul>
				        </dd>
            <dt>.fr</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>BIRTH_CITY</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>BIRTH_COUNTRY</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>BIRTH_DEPARTMENT</code>: Specify the INSEE code that corresponds with the department where the contact was born. 
							If the contact was born somewhere other than France or its overseas departments, specify <code>99</code>. For more information, 
							including a list of departments and the corresponding INSEE numbers, see the Wikipedia entry 
							<a href=\"https://en.wikipedia.org/wiki/Departments_of_France\">Departments of France</a>.</p>
                  </li>
                  <li>
                     <p>
                        <code>BRAND_NUMBER</code>
                     </p>
                  </li>
               </ul>
				        </dd>
            <dt>.it</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>IT_NATIONALITY</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>IT_PIN</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>IT_REGISTRANT_ENTITY_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>FOREIGNERS</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>FREELANCE_WORKERS</code> (Freelance workers and professionals)</p>
                        </li>
                        <li>
                           <p>
                              <code>ITALIAN_COMPANIES</code> (Italian companies and one-person companies)</p>
                        </li>
                        <li>
                           <p>
                              <code>NON_PROFIT_ORGANIZATIONS</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>OTHER_SUBJECTS</code>
                           </p>
                        </li>
                        <li>
                           <p>
                              <code>PUBLIC_ORGANIZATIONS</code>
                           </p>
                        </li>
                     </ul>
						            </li>
               </ul>
				        </dd>
            <dt>.ru</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>RU_PASSPORT_DATA</code>
                     </p>
                  </li>
               </ul>
				        </dd>
            <dt>.se</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>BIRTH_COUNTRY</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>SE_ID_NUMBER</code>
                     </p>
                  </li>
               </ul>
				        </dd>
            <dt>.sg</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>SG_ID_NUMBER</code>
                     </p>
                  </li>
               </ul>
				        </dd>
            <dt>.co.uk, .me.uk, and .org.uk</dt>
            <dd>
					          <ul>
                  <li>
                     <p>
                        <code>UK_CONTACT_TYPE</code>
                     </p>
							              <p>Valid values include the following:</p>
							              <ul>
                        <li>
                           <p>
                              <code>CRC</code> (UK Corporation by Royal Charter)</p>
                        </li>
                        <li>
                           <p>
                              <code>FCORP</code> (Non-UK Corporation)</p>
                        </li>
                        <li>
                           <p>
                              <code>FIND</code> (Non-UK Individual, representing self)</p>
                        </li>
                        <li>
                           <p>
                              <code>FOTHER</code> (Non-UK Entity that does not fit into any other category)</p>
                        </li>
                        <li>
                           <p>
                              <code>GOV</code> (UK Government Body)</p>
                        </li>
                        <li>
                           <p>
                              <code>IND</code> (UK Individual (representing self))</p>
                        </li>
                        <li>
                           <p>
                              <code>IP</code> (UK Industrial/Provident Registered Company)</p>
                        </li>
                        <li>
                           <p>
                              <code>LLP</code> (UK Limited Liability Partnership)</p>
                        </li>
                        <li>
                           <p>
                              <code>LTD</code> (UK Limited Company)</p>
                        </li>
                        <li>
                           <p>
                              <code>OTHER</code> (UK Entity that does not fit into any other category)</p>
                        </li>
                        <li>
                           <p>
                              <code>PLC</code> (UK Public Limited Company)</p>
                        </li>
                        <li>
                           <p>
                              <code>PTNR</code> (UK Partnership)</p>
                        </li>
                        <li>
                           <p>
                              <code>RCHAR</code> (UK Registered Charity)</p>
                        </li>
                        <li>
                           <p>
                              <code>SCH</code> (UK School)</p>
                        </li>
                        <li>
                           <p>
                              <code>STAT</code> (UK Statutory Body)</p>
                        </li>
                        <li>
                           <p>
                              <code>STRA</code> (UK Sole Trader)</p>
                        </li>
                     </ul>
						            </li>
                  <li>
                     <p>
                        <code>UK_COMPANY_NUMBER</code>
                     </p>
                  </li>
               </ul>
				        </dd>
         </dl>

		       <p>In addition, many TLDs require a <code>VAT_NUMBER</code>.</p>")
  @as("Name")
  name: extraParamName,
}
@ocaml.doc(
  "<p>A complex type that contains information about whether the specified domain can be transferred to Route 53.</p>"
)
type domainTransferability = {@as("Transferable") transferable: option<transferable>}
@ocaml.doc("<p>Summary information about one domain.</p>")
type domainSummary = {
  @ocaml.doc(
    "<p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>"
  )
  @as("Expiry")
  expiry: option<timestamp_>,
  @ocaml.doc(
    "<p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>"
  )
  @as("TransferLock")
  transferLock: option<boolean_>,
  @ocaml.doc("<p>Indicates whether the domain is automatically renewed upon expiration.</p>")
  @as("AutoRenew")
  autoRenew: option<boolean_>,
  @ocaml.doc("<p>The name of the domain that the summary information applies to.</p>")
  @as("DomainName")
  domainName: domainName,
}
@ocaml.doc("<p>Information about one suggested domain name.</p>")
type domainSuggestion = {
  @ocaml.doc("<p>Whether the domain name is available for registering.</p>
		       <note>
            <p>You can register only the domains that are designated as <code>AVAILABLE</code>.</p>
         </note>
		       <p>Valid values:</p>
		       <dl>
            <dt>AVAILABLE</dt>
            <dd>
               <p>The domain name is available.</p>
            </dd>
            <dt>AVAILABLE_RESERVED</dt>
            <dd>
               <p>The domain name is reserved under specific conditions.</p>
            </dd>
            <dt>AVAILABLE_PREORDER</dt>
            <dd>
               <p>The domain name is available and can be preordered.</p>
            </dd>
            <dt>DONT_KNOW</dt>
            <dd>
               <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. 
					Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. 
					Try again later.</p>
            </dd>
            <dt>PENDING</dt>
            <dd>
               <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, 
					it usually takes just a few extra seconds. You can resubmit the request immediately.</p>
            </dd>
            <dt>RESERVED</dt>
            <dd>
               <p>The domain name has been reserved for another person or organization.</p>
            </dd>
            <dt>UNAVAILABLE</dt>
            <dd>
               <p>The domain name is not available.</p>
            </dd>
            <dt>UNAVAILABLE_PREMIUM</dt>
            <dd>
               <p>The domain name is not available.</p>
            </dd>
            <dt>UNAVAILABLE_RESTRICTED</dt>
            <dd>
               <p>The domain name is forbidden.</p>
            </dd>
         </dl>")
  @as("Availability")
  availability: option<string_>,
  @ocaml.doc("<p>A suggested domain name.</p>") @as("DomainName") domainName: option<domainName>,
}
type domainStatusList = array<domainStatus>
@ocaml.doc("<p>Information for one billing record.</p>")
type billingRecord = {
  @ocaml.doc("<p>The price that you were charged for the operation, in US dollars.</p>
		       <p>Example value: 12.0</p>")
  @as("Price")
  price: option<price>,
  @ocaml.doc("<p>The date that the operation was billed, in Unix format.</p>") @as("BillDate")
  billDate: option<timestamp_>,
  @ocaml.doc("<p>The ID of the invoice that is associated with the billing record.</p>")
  @as("InvoiceId")
  invoiceId: option<invoiceId>,
  @ocaml.doc("<p>The operation that you were charged for.</p>") @as("Operation")
  operation: option<operationType>,
  @ocaml.doc("<p>The name of the domain that the billing record applies to. If the domain name contains characters 
			other than a-z, 0-9, and - (hyphen), such as an internationalized domain name, then this value is in Punycode. 
			For more information, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html\">DNS Domain Name Format</a> 
			in the <i>Amazon Route 53 Developer Guide</i>.</p>")
  @as("DomainName")
  domainName: option<domainName>,
}
type tagList_ = array<tag>
type operationSummaryList = array<operationSummary>
@ocaml.doc("<p>Nameserver includes the following elements.</p>")
type nameserver = {
  @ocaml.doc("<p>Glue IP address of a name server entry. Glue IP addresses are required only when the name of the name server 
			is a subdomain of the domain. For example, if your domain is example.com and the name server for the domain is 
			ns.example.com, you need to specify the IP address for ns.example.com.</p>
		       <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>")
  @as("GlueIps")
  glueIps: option<glueIpList>,
  @ocaml.doc("<p>The fully qualified host name of the name server.</p>
		       <p>Constraint: Maximum 255 characters</p>")
  @as("Name")
  name: hostName,
}
type extraParamList = array<extraParam>
type domainSummaryList = array<domainSummary>
type domainSuggestionsList = array<domainSuggestion>
type billingRecords = array<billingRecord>
type nameserverList = array<nameserver>
@ocaml.doc("<p>ContactDetail includes the following elements.</p>")
type contactDetail = {
  @ocaml.doc(
    "<p>A list of name-value pairs for parameters required by certain top-level domains.</p>"
  )
  @as("ExtraParams")
  extraParams: option<extraParamList>,
  @ocaml.doc("<p>Fax number of the contact.</p>
		       <p>Constraints: Phone number must be specified in the format \"+[country dialing code].[number including any area code]\". 
			For example, a US phone number might appear as <code>\"+1.1234567890\"</code>.</p>")
  @as("Fax")
  fax: option<contactNumber>,
  @ocaml.doc("<p>Email address of the contact.</p>") @as("Email") email: option<email>,
  @ocaml.doc("<p>The phone number of the contact.</p>
		       <p>Constraints: Phone number must be specified in the format \"+[country	dialing code].[number including any area code>]\". 
			For example, a US phone number might appear as <code>\"+1.1234567890\"</code>.</p>")
  @as("PhoneNumber")
  phoneNumber: option<contactNumber>,
  @ocaml.doc("<p>The zip or postal code of the contact's address.</p>") @as("ZipCode")
  zipCode: option<zipCode>,
  @ocaml.doc("<p>Code for the country of the contact's address.</p>") @as("CountryCode")
  countryCode: option<countryCode>,
  @ocaml.doc("<p>The state or province of the contact's city.</p>") @as("State")
  state: option<state>,
  @ocaml.doc("<p>The city of the contact's address.</p>") @as("City") city: option<city>,
  @ocaml.doc("<p>Second line of contact's address, if any.</p>") @as("AddressLine2")
  addressLine2: option<addressLine>,
  @ocaml.doc("<p>First line of the contact's address.</p>") @as("AddressLine1")
  addressLine1: option<addressLine>,
  @ocaml.doc("<p>Name of the organization for contact types other than <code>PERSON</code>.</p>")
  @as("OrganizationName")
  organizationName: option<contactName>,
  @ocaml.doc("<p>Indicates whether the contact is a person, company, association, or public organization. Note the following:</p>
		       <ul>
            <li>
               <p>If you specify a value other than <code>PERSON</code>, you must also specify a value for 
				<code>OrganizationName</code>.</p>
            </li>
            <li>
               <p>For some TLDs, the privacy protection available depends on the value that you specify for 
				<code>Contact Type</code>. For the privacy protection settings for your TLD, see 
				<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can 
					Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>
               </p>
            </li>
            <li>
               <p>For .es domains, if you specify <code>PERSON</code>, you must specify <code>INDIVIDUAL</code> 
				for the value of <code>ES_LEGAL_FORM</code>.</p>
            </li>
         </ul>")
  @as("ContactType")
  contactType: option<contactType>,
  @ocaml.doc("<p>Last name of contact.</p>") @as("LastName") lastName: option<contactName>,
  @ocaml.doc("<p>First name of contact.</p>") @as("FirstName") firstName: option<contactName>,
}
@ocaml.doc(
  "<p>Amazon Route 53 API actions let you register domain names and perform related operations.</p>"
)
module UpdateDomainContactPrivacy = {
  type t
  @ocaml.doc("<p>The UpdateDomainContactPrivacy request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the technical contact.</p>")
    @as("TechPrivacy")
    techPrivacy: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>")
    @as("RegistrantPrivacy")
    registrantPrivacy: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the admin contact.</p>")
    @as("AdminPrivacy")
    adminPrivacy: option<boolean_>,
    @ocaml.doc("<p>The name of the domain that you want to update the privacy setting for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The UpdateDomainContactPrivacy response includes the following element.</p>")
  type response = {
    @ocaml.doc(
      "<p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>"
    )
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "UpdateDomainContactPrivacyCommand"
  let make = (~domainName, ~techPrivacy=?, ~registrantPrivacy=?, ~adminPrivacy=?, ()) =>
    new({
      techPrivacy: techPrivacy,
      registrantPrivacy: registrantPrivacy,
      adminPrivacy: adminPrivacy,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransferDomainToAnotherAwsAccount = {
  type t
  @ocaml.doc(
    "<p>The TransferDomainToAnotherAwsAccount request includes the following elements.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The account ID of the AWS account that you want to transfer the domain to, for example, <code>111122223333</code>.</p>"
    )
    @as("AccountId")
    accountId: accountId,
    @ocaml.doc(
      "<p>The name of the domain that you want to transfer from the current AWS account to another account.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The <code>TransferDomainToAnotherAwsAccount</code> response includes the following elements.</p>"
  )
  type response = {
    @ocaml.doc("<p>To finish transferring a domain to another AWS account, the account that the domain is being transferred to must submit an 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html\">AcceptDomainTransferFromAnotherAwsAccount</a>
			request. The request must include the value of the <code>Password</code> element that was returned in the 
			<code>TransferDomainToAnotherAwsAccount</code> response.</p>")
    @as("Password")
    password: option<string_>,
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: option<operationId>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "TransferDomainToAnotherAwsAccountCommand"
  let make = (~accountId, ~domainName, ()) => new({accountId: accountId, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetrieveDomainAuthCode = {
  type t
  @ocaml.doc("<p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide 
			this value to the new registrar.</p>")
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to get an authorization code for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The RetrieveDomainAuthCode response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>The authorization code for the domain.</p>") @as("AuthCode")
    authCode: domainAuthCode,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "RetrieveDomainAuthCodeCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResendContactReachabilityEmail = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.</p>"
    )
    domainName: option<domainName>,
  }
  type response = {
    @ocaml.doc("<p>
            <code>True</code> if the email address for the registrant contact has already been verified, and <code>false</code> otherwise. 
			If the email address has already been verified, we don't send another confirmation email.</p>")
    isAlreadyVerified: option<boolean_>,
    @ocaml.doc(
      "<p>The email address for the registrant contact at the time that we sent the verification email.</p>"
    )
    emailAddress: option<email>,
    @ocaml.doc("<p>The domain name for which you requested a confirmation email.</p>")
    domainName: option<domainName>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "ResendContactReachabilityEmailCommand"
  let make = (~domainName=?, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RenewDomain = {
  type t
  @ocaml.doc(
    "<p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>"
    )
    @as("CurrentExpiryYear")
    currentExpiryYear: currentExpiryYear,
    @ocaml.doc("<p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. 
			For the range of valid values for your domain, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>Default: 1</p>")
    @as("DurationInYears")
    durationInYears: option<durationInYears>,
    @ocaml.doc("<p>The name of the domain that you want to renew.</p>") @as("DomainName")
    domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new external new: request => t = "RenewDomainCommand"
  let make = (~currentExpiryYear, ~domainName, ~durationInYears=?, ()) =>
    new({
      currentExpiryYear: currentExpiryYear,
      durationInYears: durationInYears,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectDomainTransferFromAnotherAwsAccount = {
  type t
  @ocaml.doc(
    "<p>The RejectDomainTransferFromAnotherAwsAccount request includes the following element.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the domain that was specified when another AWS account submitted a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html\">TransferDomainToAnotherAwsAccount</a>
			request.
		</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The RejectDomainTransferFromAnotherAwsAccount response includes the following element.</p>"
  )
  type response = {
    @ocaml.doc("<p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track the progress of the request. 
			Because the transfer request was rejected, the value is no longer valid, and you can't use <code>GetOperationDetail</code> 
			to query the operation status.</p>")
    @as("OperationId")
    operationId: option<operationId>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "RejectDomainTransferFromAnotherAwsAccountCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOperationDetail = {
  type t
  @ocaml.doc("<p>The 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a> 
			request includes the following element.</p>")
  type request = {
    @ocaml.doc("<p>The identifier for the operation for which you want to get the status. Route 53 returned the identifier 
			in the response to the original request.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @ocaml.doc("<p>The GetOperationDetail response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>The date when the request was submitted.</p>") @as("SubmittedDate")
    submittedDate: option<timestamp_>,
    @ocaml.doc("<p>The type of operation that was requested.</p>") @as("Type")
    type_: option<operationType>,
    @ocaml.doc("<p>The name of a domain.</p>") @as("DomainName") domainName: option<domainName>,
    @ocaml.doc("<p>Detailed information on the status including possible errors.</p>")
    @as("Message")
    message: option<errorMessage>,
    @ocaml.doc("<p>The current status of the requested operation in the system.</p>") @as("Status")
    status: option<operationStatus>,
    @ocaml.doc("<p>The identifier for the operation.</p>") @as("OperationId")
    operationId: option<operationId>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "GetOperationDetailCommand"
  let make = (~operationId, ()) => new({operationId: operationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContactReachabilityStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>"
    )
    domainName: option<domainName>,
  }
  type response = {
    @ocaml.doc("<p>Whether the registrant contact has responded. Values include the following:</p>
		       <dl>
            <dt>PENDING</dt>
            <dd>
               <p>We sent the confirmation email and haven't received a response yet.</p>
            </dd>
            <dt>DONE</dt>
            <dd>
               <p>We sent the email and got confirmation from the registrant contact.</p>
            </dd>
            <dt>EXPIRED</dt>
            <dd>
               <p>The time limit expired before the registrant contact responded.</p>
            </dd>
         </dl>")
    status: option<reachabilityStatus>,
    @ocaml.doc("<p>The domain name for which you requested the reachability status.</p>")
    domainName: option<domainName>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "GetContactReachabilityStatusCommand"
  let make = (~domainName=?, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableDomainTransferLock = {
  type t
  @ocaml.doc("<p>A request to set the transfer lock for the specified domain.</p>")
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to set the transfer lock for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The EnableDomainTransferLock response includes the following elements.</p>")
  type response = {
    @ocaml.doc(
      "<p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>"
    )
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "EnableDomainTransferLockCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableDomainAutoRenew = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to enable automatic renewal for.</p>")
    @as("DomainName")
    domainName: domainName,
  }

  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "EnableDomainAutoRenewCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableDomainTransferLock = {
  type t
  @ocaml.doc("<p>The DisableDomainTransferLock request includes the following element.</p>")
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to remove the transfer lock for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The DisableDomainTransferLock response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "DisableDomainTransferLockCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableDomainAutoRenew = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to disable automatic renewal for.</p>")
    @as("DomainName")
    domainName: domainName,
  }

  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "DisableDomainAutoRenewCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CheckDomainAvailability = {
  type t
  @ocaml.doc("<p>The CheckDomainAvailability request contains the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("IdnLangCode") idnLangCode: option<langCode>,
    @ocaml.doc("<p>The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. 
			For a list of supported TLDs, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>The domain name can contain only the following characters:</p>
		       <ul>
            <li>
               <p>Letters a through z. Domain names are not case sensitive.</p>
            </li>
            <li>
               <p>Numbers 0 through 9.</p>
            </li>
            <li>
               <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
            </li>
            <li>
               <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
            </li>
         </ul>
		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports 
			internationalized domain names, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a>. 
			For more information, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns\">Formatting Internationalized Domain Names</a>.
		</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The CheckDomainAvailability response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>Whether the domain name is available for registering.</p>
		       <note>
            <p>You can register only domains designated as <code>AVAILABLE</code>.</p>
         </note>
		       <p>Valid values:</p>
		       <dl>
            <dt>AVAILABLE</dt>
            <dd>
               <p>The domain name is available.</p>
            </dd>
            <dt>AVAILABLE_RESERVED</dt>
            <dd>
               <p>The domain name is reserved under specific conditions.</p>
            </dd>
            <dt>AVAILABLE_PREORDER</dt>
            <dd>
               <p>The domain name is available and can be preordered.</p>
            </dd>
            <dt>DONT_KNOW</dt>
            <dd>
               <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available. 
					Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. 
					Try again later.</p>
            </dd>
            <dt>PENDING</dt>
            <dd>
               <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed, 
					it usually takes just a few extra seconds. You can resubmit the request immediately.</p>
            </dd>
            <dt>RESERVED</dt>
            <dd>
               <p>The domain name has been reserved for another person or organization.</p>
            </dd>
            <dt>UNAVAILABLE</dt>
            <dd>
               <p>The domain name is not available.</p>
            </dd>
            <dt>UNAVAILABLE_PREMIUM</dt>
            <dd>
               <p>The domain name is not available.</p>
            </dd>
            <dt>UNAVAILABLE_RESTRICTED</dt>
            <dd>
               <p>The domain name is forbidden.</p>
            </dd>
         </dl>")
    @as("Availability")
    availability: domainAvailability,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "CheckDomainAvailabilityCommand"
  let make = (~domainName, ~idnLangCode=?, ()) =>
    new({idnLangCode: idnLangCode, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDomainTransferToAnotherAwsAccount = {
  type t
  @ocaml.doc(
    "<p>The CancelDomainTransferToAnotherAwsAccount request includes the following element.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The name of the domain for which you want to cancel the transfer to another AWS account.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The <code>CancelDomainTransferToAnotherAwsAccount</code> response includes the following element.</p>"
  )
  type response = {
    @ocaml.doc("<p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track the progress of the request. 
			Because the transfer request was canceled, the value is no longer valid, and you can't use <code>GetOperationDetail</code> 
			to query the operation status.</p>")
    @as("OperationId")
    operationId: option<operationId>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "CancelDomainTransferToAnotherAwsAccountCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptDomainTransferFromAnotherAwsAccount = {
  type t
  @ocaml.doc(
    "<p>The AcceptDomainTransferFromAnotherAwsAccount request includes the following elements.</p>"
  )
  type request = {
    @ocaml.doc("<p>The password that was returned by the 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html\">TransferDomainToAnotherAwsAccount</a>
			request.
		</p>")
    @as("Password")
    password: string_,
    @ocaml.doc("<p>The name of the domain that was specified when another AWS account submitted a 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html\">TransferDomainToAnotherAwsAccount</a>
			request.
		</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The AcceptDomainTransferFromAnotherAwsAccount response includes the following element.</p>"
  )
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: option<operationId>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "AcceptDomainTransferFromAnotherAwsAccountCommand"
  let make = (~password, ~domainName, ()) => new({password: password, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTagsForDomain = {
  type t
  @ocaml.doc("<p>The DeleteTagsForDomainRequest includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>A list of tag keys to delete.</p>") @as("TagsToDelete") tagsToDelete: tagKeyList,
    @ocaml.doc("<p>The domain for which you want to delete one or more tags.</p>") @as("DomainName")
    domainName: domainName,
  }

  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "DeleteTagsForDomainCommand"
  let make = (~tagsToDelete, ~domainName, ()) =>
    new({tagsToDelete: tagsToDelete, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CheckDomainTransferability = {
  type t
  @ocaml.doc("<p>The CheckDomainTransferability request contains the following elements.</p>")
  type request = {
    @ocaml.doc("<p>If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain, 
			the code that you got from the current registrar for the domain.</p>")
    @as("AuthCode")
    authCode: option<domainAuthCode>,
    @ocaml.doc("<p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. 
			For a list of supported TLDs, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>The domain name can contain only the following characters:</p>
		       <ul>
            <li>
               <p>Letters a through z. Domain names are not case sensitive.</p>
            </li>
            <li>
               <p>Numbers 0 through 9.</p>
            </li>
            <li>
               <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
            </li>
            <li>
               <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
            </li>
         </ul>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The CheckDomainTransferability response includes the following elements.</p>")
  type response = {
    @ocaml.doc(
      "<p>A complex type that contains information about whether the specified domain can be transferred to Route 53.</p>"
    )
    @as("Transferability")
    transferability: domainTransferability,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "CheckDomainTransferabilityCommand"
  let make = (~domainName, ~authCode=?, ()) => new({authCode: authCode, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ViewBilling = {
  type t
  @ocaml.doc("<p>The ViewBilling request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>The number of billing records to be returned.</p>
		       <p>Default: 20</p>")
    @as("MaxItems")
    maxItems: option<pageMaxItems>,
    @ocaml.doc("<p>For an initial request for a list of billing records, omit this element. If the number of billing records 
			that are associated with the current AWS account during the specified period is greater than the value that 
			you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records. 
			Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes 
			the value of <code>NextPageMarker</code> in the <code>Marker</code> element.
		</p>
		       <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>")
    @as("Marker")
    marker: option<pageMarker>,
    @ocaml.doc("<p>The end date and time for the time period for which you want a list of billing records. Specify the date and time 
			in Unix time format and Coordinated Universal time (UTC).</p>")
    @as("End")
    end: option<timestamp_>,
    @ocaml.doc("<p>The beginning date and time for the time period for which you want a list of billing records. Specify the date and time 
			in Unix time format and Coordinated Universal time (UTC).</p>")
    @as("Start")
    start: option<timestamp_>,
  }
  @ocaml.doc("<p>The ViewBilling response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>A summary of billing records.</p>") @as("BillingRecords")
    billingRecords: option<billingRecords>,
    @ocaml.doc("<p>If there are more billing records than you specified for <code>MaxItems</code> in the request, submit another 
			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>")
    @as("NextPageMarker")
    nextPageMarker: option<pageMarker>,
  }
  @module("@aws-sdk/client-route53domains") @new external new: request => t = "ViewBillingCommand"
  let make = (~maxItems=?, ~marker=?, ~end=?, ~start=?, ()) =>
    new({maxItems: maxItems, marker: marker, end: end, start: start})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTagsForDomain = {
  type t
  @ocaml.doc("<p>The UpdateTagsForDomainRequest includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>A list of the tag keys and values that you want to add or update. If you specify a key 
			that already exists, the corresponding value will be replaced.</p>")
    @as("TagsToUpdate")
    tagsToUpdate: option<tagList_>,
    @ocaml.doc("<p>The domain for which you want to add or update tags.</p>") @as("DomainName")
    domainName: domainName,
  }

  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "UpdateTagsForDomainCommand"
  let make = (~domainName, ~tagsToUpdate=?, ()) =>
    new({tagsToUpdate: tagsToUpdate, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForDomain = {
  type t
  @ocaml.doc("<p>The ListTagsForDomainRequest includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>The domain for which you want to get a list of tags.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The ListTagsForDomain response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>A list of the tags that are associated with the specified domain.</p>")
    @as("TagList")
    tagList_: tagList_,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "ListTagsForDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOperations = {
  type t
  @ocaml.doc("<p>The ListOperations request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Number of domains to be returned.</p>
		       <p>Default: 20</p>")
    @as("MaxItems")
    maxItems: option<pageMaxItems>,
    @ocaml.doc("<p>For an initial request for a list of operations, omit this element. If the number of operations that are
			not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code>
			to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response,
			and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>")
    @as("Marker")
    marker: option<pageMarker>,
    @ocaml.doc("<p>An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. 
			Specify the date and time in Unix time format and Coordinated Universal time (UTC).</p>")
    @as("SubmittedSince")
    submittedSince: option<timestamp_>,
  }
  @ocaml.doc("<p>The ListOperations response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another
			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>")
    @as("NextPageMarker")
    nextPageMarker: option<pageMarker>,
    @ocaml.doc("<p>Lists summaries of the operations.</p>") @as("Operations")
    operations: operationSummaryList,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "ListOperationsCommand"
  let make = (~maxItems=?, ~marker=?, ~submittedSince=?, ()) =>
    new({maxItems: maxItems, marker: marker, submittedSince: submittedSince})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  @ocaml.doc("<p>The ListDomains request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Number of domains to be returned.</p>
		       <p>Default: 20</p>")
    @as("MaxItems")
    maxItems: option<pageMaxItems>,
    @ocaml.doc("<p>For an initial request for a list of domains, omit this element. If the number of domains
			that are associated with the current AWS account is greater than the value that you specified for
			<code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of
			<code>NextPageMarker</code> from the previous response, and submit another request that includes the
			value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
		       <p>Constraints: The marker must match the value specified in the previous request.</p>")
    @as("Marker")
    marker: option<pageMarker>,
  }
  @ocaml.doc("<p>The ListDomains response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>If there are more domains than you specified for <code>MaxItems</code> in the request, submit another
			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>")
    @as("NextPageMarker")
    nextPageMarker: option<pageMarker>,
    @ocaml.doc("<p>A summary of domains.</p>") @as("Domains") domains: domainSummaryList,
  }
  @module("@aws-sdk/client-route53domains") @new external new: request => t = "ListDomainsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainSuggestions = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>OnlyAvailable</code> is <code>true</code>, Route 53 returns only domain names that are available. 
			If <code>OnlyAvailable</code> is <code>false</code>, Route 53 returns domain names without checking whether they're 
			available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code> 
			for each suggestion.</p>")
    @as("OnlyAvailable")
    onlyAvailable: boolean_,
    @ocaml.doc(
      "<p>The number of suggested domain names that you want Route 53 to return. Specify a value between 1 and 50.</p>"
    )
    @as("SuggestionCount")
    suggestionCount: integer_,
    @ocaml.doc("<p>A domain name that you want to use as the basis for a list of possible domain names. The top-level domain (TLD), such as .com, 
			must be a TLD that Route 53 supports. For a list of supported TLDs, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>The domain name can contain only the following characters:</p>
		       <ul>
            <li>
               <p>Letters a through z. Domain names are not case sensitive.</p>
            </li>
            <li>
               <p>Numbers 0 through 9.</p>
            </li>
            <li>
               <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
            </li>
            <li>
               <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
            </li>
         </ul>
		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use 
			supports internationalized domain names, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a>. 
			</p>")
    @as("DomainName")
    domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>A list of possible domain names. If you specified <code>true</code> for <code>OnlyAvailable</code> in the request, 
			the list contains only domains that are available for registration.</p>")
    @as("SuggestionsList")
    suggestionsList: option<domainSuggestionsList>,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "GetDomainSuggestionsCommand"
  let make = (~onlyAvailable, ~suggestionCount, ~domainName, ()) =>
    new({onlyAvailable: onlyAvailable, suggestionCount: suggestionCount, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainNameservers = {
  type t
  @ocaml.doc("<p>Replaces the current set of name servers for the domain with the specified set of name servers. 
			If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p>
		       <p>If successful, this operation returns an operation ID that you can use to track the progress and 
			completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>")
  type request = {
    @ocaml.doc("<p>A list of new name servers for the domain.</p>") @as("Nameservers")
    nameservers: nameserverList,
    @ocaml.doc("<p>The authorization key for .fi domains</p>") @as("FIAuthKey")
    fiauthKey: option<fiauthKey>,
    @ocaml.doc("<p>The name of the domain that you want to change name servers for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The UpdateDomainNameservers response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "UpdateDomainNameserversCommand"
  let make = (~nameservers, ~domainName, ~fiauthKey=?, ()) =>
    new({nameservers: nameservers, fiauthKey: fiauthKey, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainContact = {
  type t
  @ocaml.doc("<p>The UpdateDomainContact request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("TechContact")
    techContact: option<contactDetail>,
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("RegistrantContact")
    registrantContact: option<contactDetail>,
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("AdminContact")
    adminContact: option<contactDetail>,
    @ocaml.doc("<p>The name of the domain that you want to update contact information for.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The UpdateDomainContact response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "UpdateDomainContactCommand"
  let make = (~domainName, ~techContact=?, ~registrantContact=?, ~adminContact=?, ()) =>
    new({
      techContact: techContact,
      registrantContact: registrantContact,
      adminContact: adminContact,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransferDomain = {
  type t
  @ocaml.doc("<p>The TransferDomain request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the technical contact.</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectTechContact")
    privacyProtectTechContact: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectRegistrantContact")
    privacyProtectRegistrantContact: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the admin contact.</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectAdminContact")
    privacyProtectAdminContact: option<boolean_>,
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("TechContact")
    techContact: contactDetail,
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("RegistrantContact")
    registrantContact: contactDetail,
    @ocaml.doc("<p>Provides detailed contact information.</p>") @as("AdminContact")
    adminContact: contactDetail,
    @ocaml.doc("<p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect 
			after the account is charged.</p>
		       <p>Default: true</p>")
    @as("AutoRenew")
    autoRenew: option<boolean_>,
    @ocaml.doc(
      "<p>The authorization code for the domain. You get this value from the current registrar.</p>"
    )
    @as("AuthCode")
    authCode: option<domainAuthCode>,
    @ocaml.doc("<p>Contains details for the host and glue IP addresses.</p>") @as("Nameservers")
    nameservers: option<nameserverList>,
    @ocaml.doc("<p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. 
			The maximum period depends on the top-level domain.</p>
		       <p>Default: 1</p>")
    @as("DurationInYears")
    durationInYears: durationInYears,
    @ocaml.doc("<p>Reserved for future use.</p>") @as("IdnLangCode") idnLangCode: option<langCode>,
    @ocaml.doc("<p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. 
			For a list of supported TLDs, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>The domain name can contain only the following characters:</p>
		       <ul>
            <li>
               <p>Letters a through z. Domain names are not case sensitive.</p>
            </li>
            <li>
               <p>Numbers 0 through 9.</p>
            </li>
            <li>
               <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
            </li>
            <li>
               <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
            </li>
         </ul>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The TransferDomain response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "TransferDomainCommand"
  let make = (
    ~techContact,
    ~registrantContact,
    ~adminContact,
    ~durationInYears,
    ~domainName,
    ~privacyProtectTechContact=?,
    ~privacyProtectRegistrantContact=?,
    ~privacyProtectAdminContact=?,
    ~autoRenew=?,
    ~authCode=?,
    ~nameservers=?,
    ~idnLangCode=?,
    (),
  ) =>
    new({
      privacyProtectTechContact: privacyProtectTechContact,
      privacyProtectRegistrantContact: privacyProtectRegistrantContact,
      privacyProtectAdminContact: privacyProtectAdminContact,
      techContact: techContact,
      registrantContact: registrantContact,
      adminContact: adminContact,
      autoRenew: autoRenew,
      authCode: authCode,
      nameservers: nameservers,
      durationInYears: durationInYears,
      idnLangCode: idnLangCode,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDomain = {
  type t
  @ocaml.doc("<p>The RegisterDomain request includes the following elements.</p>")
  type request = {
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the technical contact.</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectTechContact")
    privacyProtectTechContact: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the registrant contact (the domain owner).</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectRegistrantContact")
    privacyProtectRegistrantContact: option<boolean_>,
    @ocaml.doc("<p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>, 
			WHOIS queries return the information that you entered for the admin contact.</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("PrivacyProtectAdminContact")
    privacyProtectAdminContact: option<boolean_>,
    @ocaml.doc("<p>Provides detailed contact information. For information about the values that you specify for each element, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html\">ContactDetail</a>.</p>")
    @as("TechContact")
    techContact: contactDetail,
    @ocaml.doc("<p>Provides detailed contact information. For information about the values that you specify for each element, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html\">ContactDetail</a>.</p>")
    @as("RegistrantContact")
    registrantContact: contactDetail,
    @ocaml.doc("<p>Provides detailed contact information. For information about the values that you specify for each element, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html\">ContactDetail</a>.</p>")
    @as("AdminContact")
    adminContact: contactDetail,
    @ocaml.doc("<p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>). 
			Autorenewal only takes effect after the account is charged.</p>
		       <p>Default: <code>true</code>
         </p>")
    @as("AutoRenew")
    autoRenew: option<boolean_>,
    @ocaml.doc("<p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year. 
			The maximum period depends on the top-level domain. For the range of valid values for your domain, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>Default: 1</p>")
    @as("DurationInYears")
    durationInYears: durationInYears,
    @ocaml.doc("<p>Reserved for future use.</p>") @as("IdnLangCode") idnLangCode: option<langCode>,
    @ocaml.doc("<p>The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. 
			For a list of supported TLDs, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a> in the 
			<i>Amazon Route 53 Developer Guide</i>.</p>
		       <p>The domain name can contain only the following characters:</p>
		       <ul>
            <li>
               <p>Letters a through z. Domain names are not case sensitive.</p>
            </li>
            <li>
               <p>Numbers 0 through 9.</p>
            </li>
            <li>
               <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
            </li>
            <li>
               <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
            </li>
         </ul>
		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports 
			internationalized domain names, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html\">Domains that You Can Register with Amazon Route 53</a>. 
			For more information, see 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns\">Formatting Internationalized Domain Names</a>.
		</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The RegisterDomain response includes the following element.</p>")
  type response = {
    @ocaml.doc("<p>Identifier for tracking the progress of the request. To query the operation status, use 
			<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html\">GetOperationDetail</a>.</p>")
    @as("OperationId")
    operationId: operationId,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "RegisterDomainCommand"
  let make = (
    ~techContact,
    ~registrantContact,
    ~adminContact,
    ~durationInYears,
    ~domainName,
    ~privacyProtectTechContact=?,
    ~privacyProtectRegistrantContact=?,
    ~privacyProtectAdminContact=?,
    ~autoRenew=?,
    ~idnLangCode=?,
    (),
  ) =>
    new({
      privacyProtectTechContact: privacyProtectTechContact,
      privacyProtectRegistrantContact: privacyProtectRegistrantContact,
      privacyProtectAdminContact: privacyProtectAdminContact,
      techContact: techContact,
      registrantContact: registrantContact,
      adminContact: adminContact,
      autoRenew: autoRenew,
      durationInYears: durationInYears,
      idnLangCode: idnLangCode,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomainDetail = {
  type t
  @ocaml.doc("<p>The GetDomainDetail request includes the following element.</p>")
  type request = {
    @ocaml.doc("<p>The name of the domain that you want to get detailed information about.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The GetDomainDetail response includes the following elements.</p>")
  type response = {
    @ocaml.doc("<p>An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes.</p>
		       <p>ICANN, the organization that maintains a central database of domain names, has developed a set of domain name 
			status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, 
			transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars 
			use this same set of status codes.</p>
		       <p>For a current list of domain name status codes and an explanation of what each code means, go to the
			<a href=\"https://www.icann.org/\">ICANN website</a> and search for <code>epp status codes</code>.
			(Search on the ICANN website; web searches sometimes return an old version of the document.)</p>")
    @as("StatusList")
    statusList: option<domainStatusList>,
    @ocaml.doc("<p>Reserved for future use.</p>") @as("DnsSec") dnsSec: option<dnssec>,
    @ocaml.doc("<p>Reseller of the domain. Domains registered or transferred using Route 53 domains will have <code>\"Amazon\"</code> 
			as the reseller. </p>")
    @as("Reseller")
    reseller: option<reseller>,
    @ocaml.doc("<p>The date when the registration for the domain is set to expire. The date and time is in 
			Unix time format and Coordinated Universal time (UTC).</p>")
    @as("ExpirationDate")
    expirationDate: option<timestamp_>,
    @ocaml.doc("<p>The last updated date of the domain as found in the response to a WHOIS query. The date and time is in 
			Unix time format and Coordinated Universal time (UTC).</p>")
    @as("UpdatedDate")
    updatedDate: option<timestamp_>,
    @ocaml.doc("<p>The date when the domain was created as found in the response to a WHOIS query. The date and time is in 
			Unix time format and Coordinated Universal time (UTC).</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>Reserved for future use.</p>") @as("RegistryDomainId")
    registryDomainId: option<registryDomainId>,
    @ocaml.doc("<p>Phone number for reporting abuse.</p>") @as("AbuseContactPhone")
    abuseContactPhone: option<contactNumber>,
    @ocaml.doc("<p>Email address to contact to report incorrect contact information for a domain, to report that the domain 
			is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.</p>")
    @as("AbuseContactEmail")
    abuseContactEmail: option<email>,
    @ocaml.doc("<p>Web address of the registrar.</p>") @as("RegistrarUrl")
    registrarUrl: option<registrarUrl>,
    @ocaml.doc(
      "<p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.</p>"
    )
    @as("WhoIsServer")
    whoIsServer: option<registrarWhoIsServer>,
    @ocaml.doc("<p>Name of the registrar of the domain as identified in the registry. Domains with a .com, .net, or .org TLD are registered by 
			Amazon Registrar. All other domains are registered by our registrar associate, Gandi. The value for domains that are registered by 
			Gandi is <code>\"GANDI SAS\"</code>. </p>")
    @as("RegistrarName")
    registrarName: option<registrarName>,
    @ocaml.doc("<p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, 
			WHOIS queries return the information that you entered for the technical contact.</p>")
    @as("TechPrivacy")
    techPrivacy: option<boolean_>,
    @ocaml.doc("<p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, 
			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>")
    @as("RegistrantPrivacy")
    registrantPrivacy: option<boolean_>,
    @ocaml.doc("<p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>, 
			WHOIS (\"who is\") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) 
			or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>, 
			WHOIS queries return the information that you entered for the admin contact.</p>")
    @as("AdminPrivacy")
    adminPrivacy: option<boolean_>,
    @ocaml.doc("<p>Provides details about the domain technical contact.</p>") @as("TechContact")
    techContact: contactDetail,
    @ocaml.doc("<p>Provides details about the domain registrant.</p>") @as("RegistrantContact")
    registrantContact: contactDetail,
    @ocaml.doc("<p>Provides details about the domain administrative contact.</p>")
    @as("AdminContact")
    adminContact: contactDetail,
    @ocaml.doc("<p>Specifies whether the domain registration is set to renew automatically.</p>")
    @as("AutoRenew")
    autoRenew: option<boolean_>,
    @ocaml.doc("<p>The name of the domain.</p>") @as("Nameservers") nameservers: nameserverList,
    @ocaml.doc("<p>The name of a domain.</p>") @as("DomainName") domainName: domainName,
  }
  @module("@aws-sdk/client-route53domains") @new
  external new: request => t = "GetDomainDetailCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
