type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-workspaces-web") @new
external createClient: unit => awsServiceClient = "WorkSpacesWebClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type keyArn = string
type vpcId = string
type validationExceptionReason = [
  | @as("other") #Other
  | @as("fieldValidationFailed") #FieldValidationFailed
  | @as("cannotParse") #CannotParse
  | @as("unknownOperation") #UnknownOperation
]
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type tagExceptionMessage = string
type subnetId = string
type stringType = string
type statusReason = string
type serviceCode = string
type securityGroupId = string
type samlMetadata = string
type retryAfterSeconds = int
type resourceType = string
type resourceId = string
type rendererType = [@as("AppStream") #AppStream]
type quotaCode = string
type portalStatus = [
  | @as("Active") #Active
  | @as("Pending") #Pending
  | @as("Incomplete") #Incomplete
]
type portalEndpoint = string
type paginationToken = string
type maxResults = int
type identityProviderType = [
  | @as("OIDC") #OIDC
  | @as("SignInWithApple") #SignInWithApple
  | @as("LoginWithAmazon") #LoginWithAmazon
  | @as("Google") #Google
  | @as("Facebook") #Facebook
  | @as("SAML") #SAML
]
type identityProviderName = string
type fieldName = string
type exceptionMessage = string
type enabledType = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type displayName = string
type clientToken = string
type certificateThumbprint = string
type certificatePrincipal = string
type certificateAuthorityBody = NodeJs.Buffer.t
type browserType = [@as("Chrome") #Chrome]
type browserPolicy = string
type arn = string
@ocaml.doc(
  "<p>Information about a field passed inside a request that resulted in an exception.</p>"
)
type validationExceptionField = {
  @ocaml.doc("<p>The message describing why the field failed validation.</p>")
  message: exceptionMessage,
  @ocaml.doc("<p>The name of the field that failed validation.</p>") name: fieldName,
}
@ocaml.doc("<p>The summary of user settings.</p>")
type userSettingsSummary = {
  @ocaml.doc("<p>Specifies whether the user can print to the local device.</p>")
  printAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can upload files from the local device to the streaming
         session.</p>")
  uploadAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can download files from the streaming session to the local
         device.</p>")
  downloadAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can paste text from the local device to the streaming
         session.</p>")
  pasteAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can copy text from the streaming session to the local
         device.</p>")
  copyAllowed: option<enabledType>,
  @ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: option<arn>,
}
@ocaml.doc("<p>The summary of the trust store.</p>")
type trustStoreSummary = {
  @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: option<arn>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The tag.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: tagKey,
}
type subnetIdList = array<subnetId>
type securityGroupIdList = array<securityGroupId>
@ocaml.doc("<p>The summary of the portal.</p>")
type portalSummary = {
  @ocaml.doc("<p>The ARN of the trust that is associated with this web portal.</p>")
  trustStoreArn: option<arn>,
  @ocaml.doc("<p>The ARN of the network settings that is associated with the web portal.</p>")
  networkSettingsArn: option<arn>,
  @ocaml.doc("<p>The ARN of the user settings that is associated with the web portal.</p>")
  userSettingsArn: option<arn>,
  @ocaml.doc("<p>The ARN of the browser settings that is associated with the web portal.</p>")
  browserSettingsArn: option<arn>,
  @ocaml.doc("<p>The creation date of the web portal.</p>") creationDate: option<timestamp_>,
  @ocaml.doc("<p>The name of the web portal.</p>") displayName: option<displayName>,
  @ocaml.doc("<p>The endpoint URL of the web portal that users access in order to start streaming
         sessions.</p>")
  portalEndpoint: option<portalEndpoint>,
  @ocaml.doc("<p>The status of the web portal.</p>") portalStatus: option<portalStatus>,
  @ocaml.doc("<p>The browser type of the web portal.</p>") browserType: option<browserType>,
  @ocaml.doc("<p>The renderer that is used in streaming sessions.</p>")
  rendererType: option<rendererType>,
  @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: option<arn>,
}
@ocaml.doc("<p>The web portal.</p>")
type portal = {
  @ocaml.doc("<p>A message that explains why the web portal is in its current status.</p>")
  statusReason: option<statusReason>,
  @ocaml.doc("<p>The ARN of the trust store that is associated with the web portal.</p>")
  trustStoreArn: option<arn>,
  @ocaml.doc("<p>The ARN of the network settings that is associated with the web portal.</p>")
  networkSettingsArn: option<arn>,
  @ocaml.doc("<p>The ARN of the trust store that is associated with the web portal.</p>")
  userSettingsArn: option<arn>,
  @ocaml.doc("<p>The ARN of the browser settings that is associated with this web portal.</p>")
  browserSettingsArn: option<arn>,
  @ocaml.doc("<p>The creation date of the web portal.</p>") creationDate: option<timestamp_>,
  @ocaml.doc("<p>The name of the web portal.</p>") displayName: option<displayName>,
  @ocaml.doc("<p>The endpoint URL of the web portal that users access in order to start streaming
         sessions.</p>")
  portalEndpoint: option<portalEndpoint>,
  @ocaml.doc("<p>The status of the web portal.</p>") portalStatus: option<portalStatus>,
  @ocaml.doc("<p>The browser that users see when using a streaming session.</p>")
  browserType: option<browserType>,
  @ocaml.doc("<p>The renderer that is used in streaming sessions.</p>")
  rendererType: option<rendererType>,
  @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: option<arn>,
}
@ocaml.doc("<p>The summary of network settings.</p>")
type networkSettingsSummary = {
  @ocaml.doc("<p>The VPC ID of the network settings.</p>") vpcId: option<vpcId>,
  @ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: option<arn>,
}
@ocaml.doc("<p>The summary of the identity provider.</p>")
type identityProviderSummary = {
  @ocaml.doc("<p>The identity provider type.</p>")
  identityProviderType: option<identityProviderType>,
  @ocaml.doc("<p>The identity provider name.</p>")
  identityProviderName: option<identityProviderName>,
  @ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: option<arn>,
}
type identityProviderDetails = Js.Dict.t<stringType>
type encryptionContextMap = Js.Dict.t<stringType>
type certificateThumbprintList = array<certificateThumbprint>
@ocaml.doc("<p>The summary of the certificate.</p>")
type certificateSummary = {
  @ocaml.doc("<p>The certificate is not valid after this date.</p>")
  notValidAfter: option<timestamp_>,
  @ocaml.doc("<p>The certificate is not valid before this date.</p>")
  notValidBefore: option<timestamp_>,
  @ocaml.doc("<p>The entity that issued the certificate.</p>") issuer: option<certificatePrincipal>,
  @ocaml.doc("<p>The entity the certificate belongs to.</p>") subject: option<certificatePrincipal>,
  @ocaml.doc("<p>A hexadecimal identifier for the certificate.</p>")
  thumbprint: option<certificateThumbprint>,
}
type certificateList = array<certificateAuthorityBody>
@ocaml.doc("<p>The certificate.</p>")
type certificate = {
  @ocaml.doc("<p>The body of the certificate.</p>") body: option<certificateAuthorityBody>,
  @ocaml.doc("<p>The certificate is not valid after this date.</p>")
  notValidAfter: option<timestamp_>,
  @ocaml.doc("<p>The certificate is not valid before this date.</p>")
  notValidBefore: option<timestamp_>,
  @ocaml.doc("<p>The entity that issued the certificate.</p>") issuer: option<certificatePrincipal>,
  @ocaml.doc("<p>The entity the certificate belongs to.</p>") subject: option<certificatePrincipal>,
  @ocaml.doc("<p>A hexadecimal identifier for the certificate.</p>")
  thumbprint: option<certificateThumbprint>,
}
@ocaml.doc("<p>The summary for browser settings.</p>")
type browserSettingsSummary = {
  @ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: option<arn>,
}
type arnList = array<arn>
type validationExceptionFieldList = array<validationExceptionField>
type userSettingsList = array<userSettingsSummary>
@ocaml.doc("<p>A user settings resource that can be associated with a web portal. Once associated with
         a web portal, user settings control how users can transfer data between a streaming session
         and the their local devices. </p>")
type userSettings = {
  @ocaml.doc("<p>Specifies whether the user can print to the local device.</p>")
  printAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can upload files from the local device to the streaming
         session.</p>")
  uploadAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can download files from the streaming session to the local
         device.</p>")
  downloadAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can paste text from the local device to the streaming
         session.</p>")
  pasteAllowed: option<enabledType>,
  @ocaml.doc("<p>Specifies whether the user can copy text from the streaming session to the local
         device.</p>")
  copyAllowed: option<enabledType>,
  @ocaml.doc("<p>A list of web portal ARNs that this user settings is associated with.</p>")
  associatedPortalArns: option<arnList>,
  @ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn,
}
type trustStoreSummaryList = array<trustStoreSummary>
@ocaml.doc("<p>A trust store that can be associated with a web portal. A trust store contains
         certificate authority (CA) certificates. Once associated with a web portal, the browser in
         a streaming session will recognize certificates that have been issued using any of the CAs
         in the trust store. If your organization has internal websites that use certificates issued
         by private CAs, you should add the private CA certificate to the trust store. </p>")
type trustStore = {
  @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: option<arn>,
  @ocaml.doc("<p>A list of web portal ARNs that this trust store is associated with.</p>")
  associatedPortalArns: option<arnList>,
}
type tagList_ = array<tag>
type portalList = array<portalSummary>
type networkSettingsList = array<networkSettingsSummary>
@ocaml.doc("<p>A network settings resource that can be associated with a web portal. Once associated
         with a web portal, network settings define how streaming instances will connect with your
         specified VPC. </p>")
type networkSettings = {
  @ocaml.doc(
    "<p>One or more security groups used to control access from streaming instances to your VPC. </p>"
  )
  securityGroupIds: option<securityGroupIdList>,
  @ocaml.doc(
    "<p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>"
  )
  subnetIds: option<subnetIdList>,
  @ocaml.doc("<p>The VPC that streaming instances will connect to.</p>") vpcId: option<vpcId>,
  @ocaml.doc("<p>A list of web portal ARNs that this network settings is associated with.</p>")
  associatedPortalArns: option<arnList>,
  @ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn,
}
type identityProviderList = array<identityProviderSummary>
@ocaml.doc("<p>The identity provider.</p>")
type identityProvider = {
  @ocaml.doc("<p>The identity provider details. The following list describes the provider detail keys for
         each identity provider type. </p>
         <ul>
            <li>
               <p>For Google and Login with Amazon:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For Facebook:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>api_version</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For Sign in with Apple:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>team_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>key_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>private_key</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For OIDC providers:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>attributes_request_method</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>oidc_issuer</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_url</code>
                        <i>if not available from discovery URL specified by oidc_issuer
                        key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>token_url</code>
                        <i>if not available from discovery URL specified by oidc_issuer
                        key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>attributes_url</code>
                        <i>if not available from discovery URL specified by oidc_issuer
                        key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>jwks_uri</code>
                        <i>if not available from discovery URL specified by oidc_issuer
                        key</i>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For SAML providers:</p>      
               <ul>
                  <li>
                     <p>
                        <code>MetadataFile</code> OR <code>MetadataURL</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>IDPSignout</code>
                        <i>optional</i>
                     </p>
                  </li>
               </ul>
            </li>
         </ul>")
  identityProviderDetails: option<identityProviderDetails>,
  @ocaml.doc("<p>The identity provider type.</p>")
  identityProviderType: option<identityProviderType>,
  @ocaml.doc("<p>The identity provider name.</p>")
  identityProviderName: option<identityProviderName>,
  @ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: arn,
}
type certificateSummaryList = array<certificateSummary>
type browserSettingsList = array<browserSettingsSummary>
@ocaml.doc("<p>The browser settings resource that can be associated with a web portal. Once associated
         with a web portal, browser settings control how the browser will behave once a user starts
         a streaming session for the web portal. </p>")
type browserSettings = {
  @ocaml.doc("<p>A JSON string containing Chrome Enterprise policies that will be applied to all
         streaming sessions.</p>")
  browserPolicy: option<browserPolicy>,
  @ocaml.doc("<p>A list of web portal ARNs that this browser settings is associated with.</p>")
  associatedPortalArns: option<arnList>,
  @ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn,
}
@ocaml.doc("<p>WorkSpaces Web is a low cost, fully managed WorkSpace built specifically to facilitate
         secure, web-based workloads. WorkSpaces Web makes it easy for customers to safely provide
         their employees with access to internal websites and SaaS web applications without the
         administrative burden of appliances or specialized client software. WorkSpaces Web provides
         simple policy tools tailored for user interactions, while offloading common tasks like
         capacity management, scaling, and maintaining browser images.</p>")
module UpdateUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token return the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Specifies whether the user can print to the local device.</p>")
    printAllowed: option<enabledType>,
    @ocaml.doc("<p>Specifies whether the user can upload files from the local device to the streaming
         session.</p>")
    uploadAllowed: option<enabledType>,
    @ocaml.doc("<p>Specifies whether the user can download files from the streaming session to the local
         device.</p>")
    downloadAllowed: option<enabledType>,
    @ocaml.doc("<p>Specifies whether the user can paste text from the local device to the streaming
         session.</p>")
    pasteAllowed: option<enabledType>,
    @ocaml.doc("<p>Specifies whether the user can copy text from the streaming session to the local
         device.</p>")
    copyAllowed: option<enabledType>,
    @ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn,
  }
  type response = {@ocaml.doc("<p>The user settings.</p>") userSettings: userSettings}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "UpdateUserSettingsCommand"
  let make = (
    ~userSettingsArn,
    ~clientToken=?,
    ~printAllowed=?,
    ~uploadAllowed=?,
    ~downloadAllowed=?,
    ~pasteAllowed=?,
    ~copyAllowed=?,
    (),
  ) =>
    new({
      clientToken,
      printAllowed,
      uploadAllowed,
      downloadAllowed,
      pasteAllowed,
      copyAllowed,
      userSettingsArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateTrustStore = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token return the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A list of CA certificates to delete from a trust store.</p>")
    certificatesToDelete: option<certificateThumbprintList>,
    @ocaml.doc("<p>A list of CA certificates to add to the trust store.</p>")
    certificatesToAdd: option<certificateList>,
    @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn,
  }
  type response = {@ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "UpdateTrustStoreCommand"
  let make = (~trustStoreArn, ~clientToken=?, ~certificatesToDelete=?, ~certificatesToAdd=?, ()) =>
    new({clientToken, certificatesToDelete, certificatesToAdd, trustStoreArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdatePortal = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the web portal. This is not visible to users who log into the web portal.</p>"
    )
    displayName: option<displayName>,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {@ocaml.doc("<p>The web portal.</p>") portal: option<portal>}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "UpdatePortalCommand"
  let make = (~portalArn, ~displayName=?, ()) => new({displayName, portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateNetworkSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token return the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>One or more security groups used to control access from streaming instances to your VPC.</p>"
    )
    securityGroupIds: option<securityGroupIdList>,
    @ocaml.doc(
      "<p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>"
    )
    subnetIds: option<subnetIdList>,
    @ocaml.doc("<p>The VPC that streaming instances will connect to.</p>") vpcId: option<vpcId>,
    @ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn,
  }
  type response = {@ocaml.doc("<p>The network settings.</p>") networkSettings: networkSettings}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "UpdateNetworkSettingsCommand"
  let make = (
    ~networkSettingsArn,
    ~clientToken=?,
    ~securityGroupIds=?,
    ~subnetIds=?,
    ~vpcId=?,
    (),
  ) => new({clientToken, securityGroupIds, subnetIds, vpcId, networkSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateIdentityProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token return the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The details of the identity provider.</p>")
    identityProviderDetails: option<identityProviderDetails>,
    @ocaml.doc("<p>The type of the identity provider.</p>")
    identityProviderType: option<identityProviderType>,
    @ocaml.doc("<p>The name of the identity provider.</p>")
    identityProviderName: option<identityProviderName>,
    @ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: arn,
  }
  type response = {@ocaml.doc("<p>The identity provider.</p>") identityProvider: identityProvider}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "UpdateIdentityProviderCommand"
  let make = (
    ~identityProviderArn,
    ~clientToken=?,
    ~identityProviderDetails=?,
    ~identityProviderType=?,
    ~identityProviderName=?,
    (),
  ) =>
    new({
      clientToken,
      identityProviderDetails,
      identityProviderType,
      identityProviderName,
      identityProviderArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBrowserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token return the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A JSON string containing Chrome Enterprise policies that will be applied to all
         streaming sessions. </p>")
    browserPolicy: option<browserPolicy>,
    @ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn,
  }
  type response = {@ocaml.doc("<p>The browser settings.</p>") browserSettings: browserSettings}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "UpdateBrowserSettingsCommand"
  let make = (~browserSettingsArn, ~clientToken=?, ~browserPolicy=?, ()) =>
    new({clientToken, browserPolicy, browserSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags of the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ~clientToken=?, ()) => new({clientToken, tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation. </p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation. </p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The user settings.</p>") userSettings: option<userSettingsList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListUserSettingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTrustStores = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The trust stores.</p>") trustStores: option<trustStoreSummaryList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListTrustStoresCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTrustStoreCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ARN of the trust store</p>") trustStoreArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.&gt;</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: option<arn>,
    @ocaml.doc("<p>The certificate list.</p>") certificateList: option<certificateSummaryList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListTrustStoreCertificatesCommand"
  let make = (~trustStoreArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, trustStoreArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: arn}
  type response = {@ocaml.doc("<p>The tags of the resource.</p>") tags: option<tagList_>}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPortals = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation. </p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation. </p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The portals in the list.</p>") portals: option<portalList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "ListPortalsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListNetworkSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The network settings.</p>") networkSettings: option<networkSettingsList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListNetworkSettingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListIdentityProviders = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>The identity providers.</p>") identityProviders: option<identityProviderList>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListIdentityProvidersCommand"
  let make = (~portalArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({portalArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListBrowserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used to retrieve the next page of results for this operation.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The browser settings.</p>") browserSettings: option<browserSettingsList>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "ListBrowserSettingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn}
  type response = {@ocaml.doc("<p>The user settings.</p>") userSettings: option<userSettings>}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetUserSettingsCommand"
  let make = (~userSettingsArn, ()) => new({userSettingsArn: userSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTrustStoreCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The thumbprint of the trust store certificate.</p>")
    thumbprint: certificateThumbprint,
    @ocaml.doc("<p>The ARN of the trust store certificate.</p>") trustStoreArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The certificate of the trust store certificate.</p>")
    certificate: option<certificate>,
    @ocaml.doc("<p>The ARN of the trust store certificate.</p>") trustStoreArn: option<arn>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetTrustStoreCertificateCommand"
  let make = (~thumbprint, ~trustStoreArn, ()) => new({thumbprint, trustStoreArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTrustStore = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn}
  type response = {@ocaml.doc("<p>The trust store.</p>") trustStore: option<trustStore>}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "GetTrustStoreCommand"
  let make = (~trustStoreArn, ()) => new({trustStoreArn: trustStoreArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPortalServiceProviderMetadata = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {
    @ocaml.doc("<p>The service provider SAML metadata.</p>")
    serviceProviderSamlMetadata: option<samlMetadata>,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetPortalServiceProviderMetadataCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPortal = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {@ocaml.doc("<p>The web portal.</p>") portal: option<portal>}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "GetPortalCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn}
  type response = {
    @ocaml.doc("<p>The network settings.</p>") networkSettings: option<networkSettings>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetNetworkSettingsCommand"
  let make = (~networkSettingsArn, ()) => new({networkSettingsArn: networkSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIdentityProvider = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: arn}
  type response = {
    @ocaml.doc("<p>The identity provider.</p>") identityProvider: option<identityProvider>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetIdentityProviderCommand"
  let make = (~identityProviderArn, ()) => new({identityProviderArn: identityProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBrowserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn}
  type response = {
    @ocaml.doc("<p>The browser settings.</p>") browserSettings: option<browserSettings>,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "GetBrowserSettingsCommand"
  let make = (~browserSettingsArn, ()) => new({browserSettingsArn: browserSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateUserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DisassociateUserSettingsCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateTrustStore = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DisassociateTrustStoreCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateNetworkSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DisassociateNetworkSettingsCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateBrowserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DisassociateBrowserSettingsCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DeleteUserSettingsCommand"
  let make = (~userSettingsArn, ()) => new({userSettingsArn: userSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteTrustStore = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DeleteTrustStoreCommand"
  let make = (~trustStoreArn, ()) => new({trustStoreArn: trustStoreArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePortal = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "DeletePortalCommand"
  let make = (~portalArn, ()) => new({portalArn: portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteNetworkSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DeleteNetworkSettingsCommand"
  let make = (~networkSettingsArn, ()) => new({networkSettingsArn: networkSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteIdentityProvider = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DeleteIdentityProviderCommand"
  let make = (~identityProviderArn, ()) => new({identityProviderArn: identityProviderArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteBrowserSettings = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn}
  type response = {.}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "DeleteBrowserSettingsCommand"
  let make = (~browserSettingsArn, ()) => new({browserSettingsArn: browserSettingsArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags to add to the user settings resource. A tag is a key-value pair.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies whether the user can print to the local device.</p>")
    printAllowed: enabledType,
    @ocaml.doc("<p>Specifies whether the user can upload files from the local device to the streaming
         session.</p>")
    uploadAllowed: enabledType,
    @ocaml.doc("<p>Specifies whether the user can download files from the streaming session to the local
         device.</p>")
    downloadAllowed: enabledType,
    @ocaml.doc("<p>Specifies whether the user can paste text from the local device to the streaming
         session.</p>")
    pasteAllowed: enabledType,
    @ocaml.doc("<p>Specifies whether the user can copy text from the streaming session to the local
         device.</p>")
    copyAllowed: enabledType,
  }
  type response = {@ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "CreateUserSettingsCommand"
  let make = (
    ~printAllowed,
    ~uploadAllowed,
    ~downloadAllowed,
    ~pasteAllowed,
    ~copyAllowed,
    ~clientToken=?,
    ~tags=?,
    (),
  ) =>
    new({
      clientToken,
      tags,
      printAllowed,
      uploadAllowed,
      downloadAllowed,
      pasteAllowed,
      copyAllowed,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTrustStore = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags to add to the trust store. A tag is a key-value pair.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of CA certificates to be added to the trust store.</p>")
    certificateList: certificateList,
  }
  type response = {@ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "CreateTrustStoreCommand"
  let make = (~certificateList, ~clientToken=?, ~tags=?, ()) =>
    new({clientToken, tags, certificateList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePortal = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The additional encryption context of the portal.</p>")
    additionalEncryptionContext: option<encryptionContextMap>,
    @ocaml.doc("<p>The customer managed key of the web portal.</p>")
    customerManagedKey: option<keyArn>,
    @ocaml.doc("<p>The tags to add to the web portal. A tag is a key-value pair.</p>")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The name of the web portal. This is not visible to users who log into the web portal.</p>"
    )
    displayName: option<displayName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The endpoint URL of the web portal that users access in order to start streaming sessions.</p>"
    )
    portalEndpoint: portalEndpoint,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new external new: request => t = "CreatePortalCommand"
  let make = (
    ~clientToken=?,
    ~additionalEncryptionContext=?,
    ~customerManagedKey=?,
    ~tags=?,
    ~displayName=?,
    (),
  ) => new({clientToken, additionalEncryptionContext, customerManagedKey, tags, displayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateNetworkSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request. </p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The tags to add to the network settings resource. A tag is a key-value pair.</p>"
    )
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>One or more security groups used to control access from streaming instances to your VPC.</p>"
    )
    securityGroupIds: securityGroupIdList,
    @ocaml.doc(
      "<p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>"
    )
    subnetIds: subnetIdList,
    @ocaml.doc("<p>The VPC that streaming instances will connect to.</p>") vpcId: vpcId,
  }
  type response = {@ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "CreateNetworkSettingsCommand"
  let make = (~securityGroupIds, ~subnetIds, ~vpcId, ~clientToken=?, ~tags=?, ()) =>
    new({clientToken, tags, securityGroupIds, subnetIds, vpcId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateIdentityProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request.</p>
         <p>If you do not specify a client token, one is automatically generated by the AWS
         SDK.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The identity provider details. The following list describes the provider detail keys for
         each identity provider type. </p>
         <ul>
            <li>
               <p>For Google and Login with Amazon:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For Facebook:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>api_version</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For Sign in with Apple:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>team_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>key_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>private_key</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For OIDC providers:</p>      
               <ul>
                  <li>
                     <p>
                        <code>client_id</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>client_secret</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>attributes_request_method</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>oidc_issuer</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_scopes</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>authorize_url</code>
                        <i>if not available from discovery URL specified by
                           <code>oidc_issuer</code> key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>token_url</code>
                        <i>if not available from discovery URL specified by
                           <code>oidc_issuer</code> key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>attributes_url</code>
                        <i>if not available from discovery URL specified by
                           <code>oidc_issuer</code> key</i>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>jwks_uri</code>
                        <i>if not available from discovery URL specified by
                           <code>oidc_issuer</code> key</i>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For SAML providers:</p>      
               <ul>
                  <li>
                     <p>
                        <code>MetadataFile</code> OR <code>MetadataURL</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>IDPSignout</code>
                        <i>optional</i>
                     </p>
                  </li>
               </ul>
            </li>
         </ul>")
    identityProviderDetails: identityProviderDetails,
    @ocaml.doc("<p>The identity provider type.</p>") identityProviderType: identityProviderType,
    @ocaml.doc("<p>The identity provider name.</p>") identityProviderName: identityProviderName,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {@ocaml.doc("<p>The ARN of the identity provider.</p>") identityProviderArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "CreateIdentityProviderCommand"
  let make = (
    ~identityProviderDetails,
    ~identityProviderType,
    ~identityProviderName,
    ~portalArn,
    ~clientToken=?,
    (),
  ) =>
    new({
      clientToken,
      identityProviderDetails,
      identityProviderType,
      identityProviderName,
      portalArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBrowserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request. Idempotency ensures that an API request completes only once. With an idempotent
         request, if the original request completes successfully, subsequent retries with the same
         client token returns the result from the original successful request.</p>
         <p>If you do not specify a client token, one is automatically generated by the AWS SDK. </p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A JSON string containing Chrome Enterprise policies that will be applied to all
         streaming sessions.</p>")
    browserPolicy: browserPolicy,
    @ocaml.doc("<p>Additional encryption context of the browser settings.</p>")
    additionalEncryptionContext: option<encryptionContextMap>,
    @ocaml.doc("<p>The custom managed key of the browser settings.</p>")
    customerManagedKey: option<keyArn>,
    @ocaml.doc(
      "<p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>"
    )
    tags: option<tagList_>,
  }
  type response = {@ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn}
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "CreateBrowserSettingsCommand"
  let make = (
    ~browserPolicy,
    ~clientToken=?,
    ~additionalEncryptionContext=?,
    ~customerManagedKey=?,
    ~tags=?,
    (),
  ) => new({clientToken, browserPolicy, additionalEncryptionContext, customerManagedKey, tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateUserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the user settings.</p>") userSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "AssociateUserSettingsCommand"
  let make = (~userSettingsArn, ~portalArn, ()) => new({userSettingsArn, portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateTrustStore = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the trust store.</p>") trustStoreArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "AssociateTrustStoreCommand"
  let make = (~trustStoreArn, ~portalArn, ()) => new({trustStoreArn, portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateNetworkSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the network settings.</p>") networkSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "AssociateNetworkSettingsCommand"
  let make = (~networkSettingsArn, ~portalArn, ()) => new({networkSettingsArn, portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateBrowserSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the browser settings.</p>") browserSettingsArn: arn,
    @ocaml.doc("<p>The ARN of the web portal.</p>") portalArn: arn,
  }
  @module("@aws-sdk/client-workspaces-web") @new
  external new: request => t = "AssociateBrowserSettingsCommand"
  let make = (~browserSettingsArn, ~portalArn, ()) => new({browserSettingsArn, portalArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
