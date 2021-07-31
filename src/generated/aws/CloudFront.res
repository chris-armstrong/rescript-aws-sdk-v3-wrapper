type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudfront") @new
external createClient: unit => awsServiceClient = "CloudFrontClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type long = float
type integer_ = int
type boolean_ = bool
type viewerProtocolPolicy = [
  | @as("redirect-to-https") #Redirect_To_Https
  | @as("https-only") #Https_Only
  | @as("allow-all") #Allow_All
]
type tagValue = string
type tagKey = string
type sslProtocol = [
  | @as("TLSv1.2") #TLSv1_2
  | @as("TLSv1.1") #TLSv1_1
  | @as("TLSv1") #TLSv1
  | @as("SSLv3") #SSLv3
]
type sslsupportMethod = [@as("static-ip") #Static_Ip | @as("vip") #Vip | @as("sni-only") #Sni_Only]
type resourceARN = string
type realtimeMetricsSubscriptionStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type priceClass = [
  | @as("PriceClass_All") #PriceClass_All
  | @as("PriceClass_200") #PriceClass_200
  | @as("PriceClass_100") #PriceClass_100
]
type originShieldRegion = string
type originRequestPolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type originRequestPolicyQueryStringBehavior = [
  | @as("all") #All
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originRequestPolicyHeaderBehavior = [
  | @as("allViewerAndWhitelistCloudFront") #AllViewerAndWhitelistCloudFront
  | @as("allViewer") #AllViewer
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originRequestPolicyCookieBehavior = [
  | @as("all") #All
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type originProtocolPolicy = [
  | @as("https-only") #Https_Only
  | @as("match-viewer") #Match_Viewer
  | @as("http-only") #Http_Only
]
type minimumProtocolVersion = [
  | @as("TLSv1.2_2019") #TLSv1_2_2019
  | @as("TLSv1.2_2018") #TLSv1_2_2018
  | @as("TLSv1.1_2016") #TLSv1_1_2016
  | @as("TLSv1_2016") #TLSv1_2016
  | @as("TLSv1") #TLSv1
  | @as("SSLv3") #SSLv3
]
type method = [
  | @as("DELETE") #DELETE
  | @as("OPTIONS") #OPTIONS
  | @as("PATCH") #PATCH
  | @as("PUT") #PUT
  | @as("POST") #POST
  | @as("HEAD") #HEAD
  | @as("GET") #GET
]
type lambdaFunctionARN = string
type itemSelection = [@as("all") #All | @as("whitelist") #Whitelist | @as("none") #None]
type icprecordalStatus = [
  | @as("PENDING") #PENDING
  | @as("SUSPENDED") #SUSPENDED
  | @as("APPROVED") #APPROVED
]
type httpVersion = [@as("http2") #Http2 | @as("http1.1") #Http1_1]
type geoRestrictionType = [
  | @as("none") #None
  | @as("whitelist") #Whitelist
  | @as("blacklist") #Blacklist
]
type functionStage = [@as("LIVE") #LIVE | @as("DEVELOPMENT") #DEVELOPMENT]
type functionRuntime = [@as("cloudfront-js-1.0") #Cloudfront_Js_1_0]
type functionName = string
type functionEventObject = NodeJs.Buffer.t
type functionBlob = NodeJs.Buffer.t
type functionARN = string
type format = [@as("URLEncoded") #URLEncoded]
type eventType = [
  | @as("origin-response") #Origin_Response
  | @as("origin-request") #Origin_Request
  | @as("viewer-response") #Viewer_Response
  | @as("viewer-request") #Viewer_Request
]
type commentType = string
type certificateSource = [@as("acm") #Acm | @as("iam") #Iam | @as("cloudfront") #Cloudfront]
type cachePolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type cachePolicyQueryStringBehavior = [
  | @as("all") #All
  | @as("allExcept") #AllExcept
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type cachePolicyHeaderBehavior = [@as("whitelist") #Whitelist | @as("none") #None]
type cachePolicyCookieBehavior = [
  | @as("all") #All
  | @as("allExcept") #AllExcept
  | @as("whitelist") #Whitelist
  | @as("none") #None
]
type viewerCertificate = {
  @as("CertificateSource") certificateSource: option<certificateSource>,
  @as("Certificate") certificate: option<string_>,
  @as("MinimumProtocolVersion") minimumProtocolVersion: option<minimumProtocolVersion>,
  @as("SSLSupportMethod") sslsupportMethod: option<sslsupportMethod>,
  @as("ACMCertificateArn") acmcertificateArn: option<string_>,
  @as("IAMCertificateId") iamcertificateId: option<string_>,
  @as("CloudFrontDefaultCertificate") cloudFrontDefaultCertificate: option<boolean_>,
}
type trustedKeyGroupIdList = array<string_>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type streamingLoggingConfig = {
  @as("Prefix") prefix: string_,
  @as("Bucket") bucket: string_,
  @as("Enabled") enabled: boolean_,
}
type statusCodeList = array<integer_>
type sslProtocolsList = array<sslProtocol>
type s3OriginConfig = {@as("OriginAccessIdentity") originAccessIdentity: string_}
type s3Origin = {
  @as("OriginAccessIdentity") originAccessIdentity: string_,
  @as("DomainName") domainName: string_,
}
type realtimeMetricsSubscriptionConfig = {
  @as("RealtimeMetricsSubscriptionStatus")
  realtimeMetricsSubscriptionStatus: realtimeMetricsSubscriptionStatus,
}
type queryStringNamesList = array<string_>
type queryStringCacheKeysList = array<string_>
type queryArgProfile = {
  @as("ProfileId") profileId: string_,
  @as("QueryArg") queryArg: string_,
}
type publicKeySummary = {
  @as("Comment") comment: option<string_>,
  @as("EncodedKey") encodedKey: string_,
  @as("CreatedTime") createdTime: timestamp_,
  @as("Name") name: string_,
  @as("Id") id: string_,
}
type publicKeyIdList = array<string_>
type publicKeyConfig = {
  @as("Comment") comment: option<string_>,
  @as("EncodedKey") encodedKey: string_,
  @as("Name") name: string_,
  @as("CallerReference") callerReference: string_,
}
type pathList = array<string_>
type originShield = {
  @as("OriginShieldRegion") originShieldRegion: option<originShieldRegion>,
  @as("Enabled") enabled: boolean_,
}
type originGroupMember = {@as("OriginId") originId: string_}
type originCustomHeader = {
  @as("HeaderValue") headerValue: string_,
  @as("HeaderName") headerName: string_,
}
type methodsList = array<method>
type loggingConfig = {
  @as("Prefix") prefix: string_,
  @as("Bucket") bucket: string_,
  @as("IncludeCookies") includeCookies: boolean_,
  @as("Enabled") enabled: boolean_,
}
type locationList = array<string_>
type lambdaFunctionAssociation = {
  @as("IncludeBody") includeBody: option<boolean_>,
  @as("EventType") eventType: eventType,
  @as("LambdaFunctionARN") lambdaFunctionARN: lambdaFunctionARN,
}
type kinesisStreamConfig = {
  @as("StreamARN") streamARN: string_,
  @as("RoleARN") roleARN: string_,
}
type keyPairIdList = array<string_>
type invalidationSummary = {
  @as("Status") status: string_,
  @as("CreateTime") createTime: timestamp_,
  @as("Id") id: string_,
}
type headerList = array<string_>
type functionMetadata = {
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("CreatedTime") createdTime: option<timestamp_>,
  @as("Stage") stage: option<functionStage>,
  @as("FunctionARN") functionARN: string_,
}
type functionExecutionLogList = array<string_>
type functionConfig = {
  @as("Runtime") runtime: functionRuntime,
  @as("Comment") comment: string_,
}
type functionAssociation = {
  @as("EventType") eventType: eventType,
  @as("FunctionARN") functionARN: functionARN,
}
type fieldPatternList = array<string_>
type fieldList = array<string_>
type distributionIdListSummary = array<string_>
type customErrorResponse = {
  @as("ErrorCachingMinTTL") errorCachingMinTTL: option<long>,
  @as("ResponseCode") responseCode: option<string_>,
  @as("ResponsePagePath") responsePagePath: option<string_>,
  @as("ErrorCode") errorCode: integer_,
}
type cookieNameList = array<string_>
type contentTypeProfile = {
  @as("ContentType") contentType: string_,
  @as("ProfileId") profileId: option<string_>,
  @as("Format") format: format,
}
type cloudFrontOriginAccessIdentitySummary = {
  @as("Comment") comment: string_,
  @as("S3CanonicalUserId") s3CanonicalUserId: string_,
  @as("Id") id: string_,
}
type cloudFrontOriginAccessIdentityConfig = {
  @as("Comment") comment: string_,
  @as("CallerReference") callerReference: string_,
}
type awsAccountNumberList = array<string_>
type aliasList = array<string_>
type aliasICPRecordal = {
  @as("ICPRecordalStatus") icprecordalStatus: option<icprecordalStatus>,
  @as("CNAME") cname: option<string_>,
}
type trustedSigners = {
  @as("Items") items: option<awsAccountNumberList>,
  @as("Quantity") quantity: integer_,
  @as("Enabled") enabled: boolean_,
}
type trustedKeyGroups = {
  @as("Items") items: option<trustedKeyGroupIdList>,
  @as("Quantity") quantity: integer_,
  @as("Enabled") enabled: boolean_,
}
type tagList_ = array<tag>
type tagKeys = {@as("Items") items: option<tagKeyList>}
type statusCodes = {
  @as("Items") items: statusCodeList,
  @as("Quantity") quantity: integer_,
}
type queryStringNames = {
  @as("Items") items: option<queryStringNamesList>,
  @as("Quantity") quantity: integer_,
}
type queryStringCacheKeys = {
  @as("Items") items: option<queryStringCacheKeysList>,
  @as("Quantity") quantity: integer_,
}
type queryArgProfileList = array<queryArgProfile>
type publicKeySummaryList = array<publicKeySummary>
type publicKey = {
  @as("PublicKeyConfig") publicKeyConfig: publicKeyConfig,
  @as("CreatedTime") createdTime: timestamp_,
  @as("Id") id: string_,
}
type paths = {
  @as("Items") items: option<pathList>,
  @as("Quantity") quantity: integer_,
}
type originSslProtocols = {
  @as("Items") items: sslProtocolsList,
  @as("Quantity") quantity: integer_,
}
type originGroupMemberList = array<originGroupMember>
type originCustomHeadersList = array<originCustomHeader>
type monitoringSubscription = {
  @as("RealtimeMetricsSubscriptionConfig")
  realtimeMetricsSubscriptionConfig: option<realtimeMetricsSubscriptionConfig>,
}
type lambdaFunctionAssociationList = array<lambdaFunctionAssociation>
type keyPairIds = {
  @as("Items") items: option<keyPairIdList>,
  @as("Quantity") quantity: integer_,
}
type keyGroupConfig = {
  @as("Comment") comment: option<string_>,
  @as("Items") items: publicKeyIdList,
  @as("Name") name: string_,
}
type invalidationSummaryList = array<invalidationSummary>
type headers = {
  @as("Items") items: option<headerList>,
  @as("Quantity") quantity: integer_,
}
type geoRestriction = {
  @as("Items") items: option<locationList>,
  @as("Quantity") quantity: integer_,
  @as("RestrictionType") restrictionType: geoRestrictionType,
}
type functionSummary = {
  @as("FunctionMetadata") functionMetadata: functionMetadata,
  @as("FunctionConfig") functionConfig: functionConfig,
  @as("Status") status: option<string_>,
  @as("Name") name: functionName,
}
type functionAssociationList = array<functionAssociation>
type fieldPatterns = {
  @as("Items") items: option<fieldPatternList>,
  @as("Quantity") quantity: integer_,
}
type endPoint = {
  @as("KinesisStreamConfig") kinesisStreamConfig: option<kinesisStreamConfig>,
  @as("StreamType") streamType: string_,
}
type distributionIdList = {
  @as("Items") items: option<distributionIdListSummary>,
  @as("Quantity") quantity: integer_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
}
type customErrorResponseList = array<customErrorResponse>
type cookieNames = {
  @as("Items") items: option<cookieNameList>,
  @as("Quantity") quantity: integer_,
}
type contentTypeProfileList = array<contentTypeProfile>
type cloudFrontOriginAccessIdentitySummaryList = array<cloudFrontOriginAccessIdentitySummary>
type cloudFrontOriginAccessIdentity = {
  @as("CloudFrontOriginAccessIdentityConfig")
  cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
  @as("S3CanonicalUserId") s3CanonicalUserId: string_,
  @as("Id") id: string_,
}
type cachedMethods = {
  @as("Items") items: methodsList,
  @as("Quantity") quantity: integer_,
}
type aliases = {
  @as("Items") items: option<aliasList>,
  @as("Quantity") quantity: integer_,
}
type aliasICPRecordals = array<aliasICPRecordal>
type testResult = {
  @as("FunctionOutput") functionOutput: option<string_>,
  @as("FunctionErrorMessage") functionErrorMessage: option<string_>,
  @as("FunctionExecutionLogs") functionExecutionLogs: option<functionExecutionLogList>,
  @as("ComputeUtilization") computeUtilization: option<string_>,
  @as("FunctionSummary") functionSummary: option<functionSummary>,
}
type tags = {@as("Items") items: option<tagList_>}
type streamingDistributionSummary = {
  @as("Enabled") enabled: boolean_,
  @as("PriceClass") priceClass: priceClass,
  @as("Comment") comment: string_,
  @as("TrustedSigners") trustedSigners: trustedSigners,
  @as("Aliases") aliases: aliases,
  @as("S3Origin") s3Origin: s3Origin,
  @as("DomainName") domainName: string_,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Status") status: string_,
  @as("ARN") arn: string_,
  @as("Id") id: string_,
}
type streamingDistributionConfig = {
  @as("Enabled") enabled: boolean_,
  @as("PriceClass") priceClass: option<priceClass>,
  @as("TrustedSigners") trustedSigners: trustedSigners,
  @as("Logging") logging: option<streamingLoggingConfig>,
  @as("Comment") comment: string_,
  @as("Aliases") aliases: option<aliases>,
  @as("S3Origin") s3Origin: s3Origin,
  @as("CallerReference") callerReference: string_,
}
type signer = {
  @as("KeyPairIds") keyPairIds: option<keyPairIds>,
  @as("AwsAccountNumber") awsAccountNumber: option<string_>,
}
type restrictions = {@as("GeoRestriction") geoRestriction: geoRestriction}
type queryArgProfiles = {
  @as("Items") items: option<queryArgProfileList>,
  @as("Quantity") quantity: integer_,
}
type publicKeyList = {
  @as("Items") items: option<publicKeySummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type originRequestPolicyQueryStringsConfig = {
  @as("QueryStrings") queryStrings: option<queryStringNames>,
  @as("QueryStringBehavior") queryStringBehavior: originRequestPolicyQueryStringBehavior,
}
type originRequestPolicyHeadersConfig = {
  @as("Headers") headers: option<headers>,
  @as("HeaderBehavior") headerBehavior: originRequestPolicyHeaderBehavior,
}
type originRequestPolicyCookiesConfig = {
  @as("Cookies") cookies: option<cookieNames>,
  @as("CookieBehavior") cookieBehavior: originRequestPolicyCookieBehavior,
}
type originGroupMembers = {
  @as("Items") items: originGroupMemberList,
  @as("Quantity") quantity: integer_,
}
type originGroupFailoverCriteria = {@as("StatusCodes") statusCodes: statusCodes}
type lambdaFunctionAssociations = {
  @as("Items") items: option<lambdaFunctionAssociationList>,
  @as("Quantity") quantity: integer_,
}
type keyGroup = {
  @as("KeyGroupConfig") keyGroupConfig: keyGroupConfig,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type kgkeyPairIds = {
  @as("KeyPairIds") keyPairIds: option<keyPairIds>,
  @as("KeyGroupId") keyGroupId: option<string_>,
}
type invalidationList = {
  @as("Items") items: option<invalidationSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
}
type invalidationBatch = {
  @as("CallerReference") callerReference: string_,
  @as("Paths") paths: paths,
}
type functionSummaryList = array<functionSummary>
type functionAssociations = {
  @as("Items") items: option<functionAssociationList>,
  @as("Quantity") quantity: integer_,
}
type endPointList = array<endPoint>
type encryptionEntity = {
  @as("FieldPatterns") fieldPatterns: fieldPatterns,
  @as("ProviderId") providerId: string_,
  @as("PublicKeyId") publicKeyId: string_,
}
type customOriginConfig = {
  @as("OriginKeepaliveTimeout") originKeepaliveTimeout: option<integer_>,
  @as("OriginReadTimeout") originReadTimeout: option<integer_>,
  @as("OriginSslProtocols") originSslProtocols: option<originSslProtocols>,
  @as("OriginProtocolPolicy") originProtocolPolicy: originProtocolPolicy,
  @as("HTTPSPort") httpsport: integer_,
  @as("HTTPPort") httpport: integer_,
}
type customHeaders = {
  @as("Items") items: option<originCustomHeadersList>,
  @as("Quantity") quantity: integer_,
}
type customErrorResponses = {
  @as("Items") items: option<customErrorResponseList>,
  @as("Quantity") quantity: integer_,
}
type cookiePreference = {
  @as("WhitelistedNames") whitelistedNames: option<cookieNames>,
  @as("Forward") forward: itemSelection,
}
type contentTypeProfiles = {
  @as("Items") items: option<contentTypeProfileList>,
  @as("Quantity") quantity: integer_,
}
type cloudFrontOriginAccessIdentityList = {
  @as("Items") items: option<cloudFrontOriginAccessIdentitySummaryList>,
  @as("Quantity") quantity: integer_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
}
type cachePolicyQueryStringsConfig = {
  @as("QueryStrings") queryStrings: option<queryStringNames>,
  @as("QueryStringBehavior") queryStringBehavior: cachePolicyQueryStringBehavior,
}
type cachePolicyHeadersConfig = {
  @as("Headers") headers: option<headers>,
  @as("HeaderBehavior") headerBehavior: cachePolicyHeaderBehavior,
}
type cachePolicyCookiesConfig = {
  @as("Cookies") cookies: option<cookieNames>,
  @as("CookieBehavior") cookieBehavior: cachePolicyCookieBehavior,
}
type allowedMethods = {
  @as("CachedMethods") cachedMethods: option<cachedMethods>,
  @as("Items") items: methodsList,
  @as("Quantity") quantity: integer_,
}
type streamingDistributionSummaryList = array<streamingDistributionSummary>
type streamingDistributionConfigWithTags = {
  @as("Tags") tags: tags,
  @as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig,
}
type signerList = array<signer>
type realtimeLogConfig = {
  @as("Fields") fields: fieldList,
  @as("EndPoints") endPoints: endPointList,
  @as("SamplingRate") samplingRate: long,
  @as("Name") name: string_,
  @as("ARN") arn: string_,
}
type queryArgProfileConfig = {
  @as("QueryArgProfiles") queryArgProfiles: option<queryArgProfiles>,
  @as("ForwardWhenQueryArgProfileIsUnknown") forwardWhenQueryArgProfileIsUnknown: boolean_,
}
type parametersInCacheKeyAndForwardedToOrigin = {
  @as("QueryStringsConfig") queryStringsConfig: cachePolicyQueryStringsConfig,
  @as("CookiesConfig") cookiesConfig: cachePolicyCookiesConfig,
  @as("HeadersConfig") headersConfig: cachePolicyHeadersConfig,
  @as("EnableAcceptEncodingBrotli") enableAcceptEncodingBrotli: option<boolean_>,
  @as("EnableAcceptEncodingGzip") enableAcceptEncodingGzip: boolean_,
}
type originRequestPolicyConfig = {
  @as("QueryStringsConfig") queryStringsConfig: originRequestPolicyQueryStringsConfig,
  @as("CookiesConfig") cookiesConfig: originRequestPolicyCookiesConfig,
  @as("HeadersConfig") headersConfig: originRequestPolicyHeadersConfig,
  @as("Name") name: string_,
  @as("Comment") comment: option<string_>,
}
type originGroup = {
  @as("Members") members: originGroupMembers,
  @as("FailoverCriteria") failoverCriteria: originGroupFailoverCriteria,
  @as("Id") id: string_,
}
type origin = {
  @as("OriginShield") originShield: option<originShield>,
  @as("ConnectionTimeout") connectionTimeout: option<integer_>,
  @as("ConnectionAttempts") connectionAttempts: option<integer_>,
  @as("CustomOriginConfig") customOriginConfig: option<customOriginConfig>,
  @as("S3OriginConfig") s3OriginConfig: option<s3OriginConfig>,
  @as("CustomHeaders") customHeaders: option<customHeaders>,
  @as("OriginPath") originPath: option<string_>,
  @as("DomainName") domainName: string_,
  @as("Id") id: string_,
}
type keyGroupSummary = {@as("KeyGroup") keyGroup: keyGroup}
type kgkeyPairIdsList = array<kgkeyPairIds>
type invalidation = {
  @as("InvalidationBatch") invalidationBatch: invalidationBatch,
  @as("CreateTime") createTime: timestamp_,
  @as("Status") status: string_,
  @as("Id") id: string_,
}
type functionList = {
  @as("Items") items: option<functionSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type forwardedValues = {
  @as("QueryStringCacheKeys") queryStringCacheKeys: option<queryStringCacheKeys>,
  @as("Headers") headers: option<headers>,
  @as("Cookies") cookies: cookiePreference,
  @as("QueryString") queryString: boolean_,
}
type encryptionEntityList = array<encryptionEntity>
type contentTypeProfileConfig = {
  @as("ContentTypeProfiles") contentTypeProfiles: option<contentTypeProfiles>,
  @as("ForwardWhenContentTypeIsUnknown") forwardWhenContentTypeIsUnknown: boolean_,
}
type streamingDistributionList = {
  @as("Items") items: option<streamingDistributionSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
}
type realtimeLogConfigList = array<realtimeLogConfig>
type originRequestPolicy = {
  @as("OriginRequestPolicyConfig") originRequestPolicyConfig: originRequestPolicyConfig,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type originList = array<origin>
type originGroupList = array<originGroup>
type keyGroupSummaryList = array<keyGroupSummary>
type fieldLevelEncryptionSummary = {
  @as("ContentTypeProfileConfig") contentTypeProfileConfig: option<contentTypeProfileConfig>,
  @as("QueryArgProfileConfig") queryArgProfileConfig: option<queryArgProfileConfig>,
  @as("Comment") comment: option<string_>,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type fieldLevelEncryptionConfig = {
  @as("ContentTypeProfileConfig") contentTypeProfileConfig: option<contentTypeProfileConfig>,
  @as("QueryArgProfileConfig") queryArgProfileConfig: option<queryArgProfileConfig>,
  @as("Comment") comment: option<string_>,
  @as("CallerReference") callerReference: string_,
}
type encryptionEntities = {
  @as("Items") items: option<encryptionEntityList>,
  @as("Quantity") quantity: integer_,
}
type defaultCacheBehavior = {
  @as("MaxTTL") maxTTL: option<long>,
  @as("DefaultTTL") defaultTTL: option<long>,
  @as("MinTTL") minTTL: option<long>,
  @as("ForwardedValues") forwardedValues: option<forwardedValues>,
  @as("OriginRequestPolicyId") originRequestPolicyId: option<string_>,
  @as("CachePolicyId") cachePolicyId: option<string_>,
  @as("RealtimeLogConfigArn") realtimeLogConfigArn: option<string_>,
  @as("FieldLevelEncryptionId") fieldLevelEncryptionId: option<string_>,
  @as("FunctionAssociations") functionAssociations: option<functionAssociations>,
  @as("LambdaFunctionAssociations") lambdaFunctionAssociations: option<lambdaFunctionAssociations>,
  @as("Compress") compress: option<boolean_>,
  @as("SmoothStreaming") smoothStreaming: option<boolean_>,
  @as("AllowedMethods") allowedMethods: option<allowedMethods>,
  @as("ViewerProtocolPolicy") viewerProtocolPolicy: viewerProtocolPolicy,
  @as("TrustedKeyGroups") trustedKeyGroups: option<trustedKeyGroups>,
  @as("TrustedSigners") trustedSigners: option<trustedSigners>,
  @as("TargetOriginId") targetOriginId: string_,
}
type cachePolicyConfig = {
  @as("ParametersInCacheKeyAndForwardedToOrigin")
  parametersInCacheKeyAndForwardedToOrigin: option<parametersInCacheKeyAndForwardedToOrigin>,
  @as("MinTTL") minTTL: long,
  @as("MaxTTL") maxTTL: option<long>,
  @as("DefaultTTL") defaultTTL: option<long>,
  @as("Name") name: string_,
  @as("Comment") comment: option<string_>,
}
type cacheBehavior = {
  @as("MaxTTL") maxTTL: option<long>,
  @as("DefaultTTL") defaultTTL: option<long>,
  @as("MinTTL") minTTL: option<long>,
  @as("ForwardedValues") forwardedValues: option<forwardedValues>,
  @as("OriginRequestPolicyId") originRequestPolicyId: option<string_>,
  @as("CachePolicyId") cachePolicyId: option<string_>,
  @as("RealtimeLogConfigArn") realtimeLogConfigArn: option<string_>,
  @as("FieldLevelEncryptionId") fieldLevelEncryptionId: option<string_>,
  @as("FunctionAssociations") functionAssociations: option<functionAssociations>,
  @as("LambdaFunctionAssociations") lambdaFunctionAssociations: option<lambdaFunctionAssociations>,
  @as("Compress") compress: option<boolean_>,
  @as("SmoothStreaming") smoothStreaming: option<boolean_>,
  @as("AllowedMethods") allowedMethods: option<allowedMethods>,
  @as("ViewerProtocolPolicy") viewerProtocolPolicy: viewerProtocolPolicy,
  @as("TrustedKeyGroups") trustedKeyGroups: option<trustedKeyGroups>,
  @as("TrustedSigners") trustedSigners: option<trustedSigners>,
  @as("TargetOriginId") targetOriginId: string_,
  @as("PathPattern") pathPattern: string_,
}
type activeTrustedSigners = {
  @as("Items") items: option<signerList>,
  @as("Quantity") quantity: integer_,
  @as("Enabled") enabled: boolean_,
}
type activeTrustedKeyGroups = {
  @as("Items") items: option<kgkeyPairIdsList>,
  @as("Quantity") quantity: integer_,
  @as("Enabled") enabled: boolean_,
}
type streamingDistribution = {
  @as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig,
  @as("ActiveTrustedSigners") activeTrustedSigners: activeTrustedSigners,
  @as("DomainName") domainName: string_,
  @as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
  @as("Status") status: string_,
  @as("ARN") arn: string_,
  @as("Id") id: string_,
}
type realtimeLogConfigs = {
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("Items") items: option<realtimeLogConfigList>,
  @as("MaxItems") maxItems: integer_,
}
type origins = {
  @as("Items") items: originList,
  @as("Quantity") quantity: integer_,
}
type originRequestPolicySummary = {
  @as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy,
  @as("Type") type_: originRequestPolicyType,
}
type originGroups = {
  @as("Items") items: option<originGroupList>,
  @as("Quantity") quantity: integer_,
}
type keyGroupList = {
  @as("Items") items: option<keyGroupSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type fieldLevelEncryptionSummaryList = array<fieldLevelEncryptionSummary>
type fieldLevelEncryptionProfileSummary = {
  @as("Comment") comment: option<string_>,
  @as("EncryptionEntities") encryptionEntities: encryptionEntities,
  @as("Name") name: string_,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type fieldLevelEncryptionProfileConfig = {
  @as("EncryptionEntities") encryptionEntities: encryptionEntities,
  @as("Comment") comment: option<string_>,
  @as("CallerReference") callerReference: string_,
  @as("Name") name: string_,
}
type fieldLevelEncryption = {
  @as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type cachePolicy = {
  @as("CachePolicyConfig") cachePolicyConfig: cachePolicyConfig,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type cacheBehaviorList = array<cacheBehavior>
type originRequestPolicySummaryList = array<originRequestPolicySummary>
type fieldLevelEncryptionProfileSummaryList = array<fieldLevelEncryptionProfileSummary>
type fieldLevelEncryptionProfile = {
  @as("FieldLevelEncryptionProfileConfig")
  fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Id") id: string_,
}
type fieldLevelEncryptionList = {
  @as("Items") items: option<fieldLevelEncryptionSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type cachePolicySummary = {
  @as("CachePolicy") cachePolicy: cachePolicy,
  @as("Type") type_: cachePolicyType,
}
type cacheBehaviors = {
  @as("Items") items: option<cacheBehaviorList>,
  @as("Quantity") quantity: integer_,
}
type originRequestPolicyList = {
  @as("Items") items: option<originRequestPolicySummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type fieldLevelEncryptionProfileList = {
  @as("Items") items: option<fieldLevelEncryptionProfileSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type distributionSummary = {
  @as("AliasICPRecordals") aliasICPRecordals: option<aliasICPRecordals>,
  @as("IsIPV6Enabled") isIPV6Enabled: boolean_,
  @as("HttpVersion") httpVersion: httpVersion,
  @as("WebACLId") webACLId: string_,
  @as("Restrictions") restrictions: restrictions,
  @as("ViewerCertificate") viewerCertificate: viewerCertificate,
  @as("Enabled") enabled: boolean_,
  @as("PriceClass") priceClass: priceClass,
  @as("Comment") comment: string_,
  @as("CustomErrorResponses") customErrorResponses: customErrorResponses,
  @as("CacheBehaviors") cacheBehaviors: cacheBehaviors,
  @as("DefaultCacheBehavior") defaultCacheBehavior: defaultCacheBehavior,
  @as("OriginGroups") originGroups: option<originGroups>,
  @as("Origins") origins: origins,
  @as("Aliases") aliases: aliases,
  @as("DomainName") domainName: string_,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Status") status: string_,
  @as("ARN") arn: string_,
  @as("Id") id: string_,
}
type distributionConfig = {
  @as("IsIPV6Enabled") isIPV6Enabled: option<boolean_>,
  @as("HttpVersion") httpVersion: option<httpVersion>,
  @as("WebACLId") webACLId: option<string_>,
  @as("Restrictions") restrictions: option<restrictions>,
  @as("ViewerCertificate") viewerCertificate: option<viewerCertificate>,
  @as("Enabled") enabled: boolean_,
  @as("PriceClass") priceClass: option<priceClass>,
  @as("Logging") logging: option<loggingConfig>,
  @as("Comment") comment: commentType,
  @as("CustomErrorResponses") customErrorResponses: option<customErrorResponses>,
  @as("CacheBehaviors") cacheBehaviors: option<cacheBehaviors>,
  @as("DefaultCacheBehavior") defaultCacheBehavior: defaultCacheBehavior,
  @as("OriginGroups") originGroups: option<originGroups>,
  @as("Origins") origins: origins,
  @as("DefaultRootObject") defaultRootObject: option<string_>,
  @as("Aliases") aliases: option<aliases>,
  @as("CallerReference") callerReference: string_,
}
type cachePolicySummaryList = array<cachePolicySummary>
type distributionSummaryList = array<distributionSummary>
type distributionConfigWithTags = {
  @as("Tags") tags: tags,
  @as("DistributionConfig") distributionConfig: distributionConfig,
}
type distribution = {
  @as("AliasICPRecordals") aliasICPRecordals: option<aliasICPRecordals>,
  @as("DistributionConfig") distributionConfig: distributionConfig,
  @as("ActiveTrustedKeyGroups") activeTrustedKeyGroups: option<activeTrustedKeyGroups>,
  @as("ActiveTrustedSigners") activeTrustedSigners: option<activeTrustedSigners>,
  @as("DomainName") domainName: string_,
  @as("InProgressInvalidationBatches") inProgressInvalidationBatches: integer_,
  @as("LastModifiedTime") lastModifiedTime: timestamp_,
  @as("Status") status: string_,
  @as("ARN") arn: string_,
  @as("Id") id: string_,
}
type cachePolicyList = {
  @as("Items") items: option<cachePolicySummaryList>,
  @as("Quantity") quantity: integer_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
}
type distributionList = {
  @as("Items") items: option<distributionSummaryList>,
  @as("Quantity") quantity: integer_,
  @as("IsTruncated") isTruncated: boolean_,
  @as("MaxItems") maxItems: integer_,
  @as("NextMarker") nextMarker: option<string_>,
  @as("Marker") marker: string_,
}

module GetFunction = {
  type t
  type request = {
    @as("Stage") stage: option<functionStage>,
    @as("Name") name: string_,
  }
  type response = {
    @as("ContentType") contentType: option<string_>,
    @as("ETag") etag: option<string_>,
    @as("FunctionCode") functionCode: option<functionBlob>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStreamingDistribution = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteStreamingDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRealtimeLogConfig = {
  type t
  type request = {
    @as("ARN") arn: option<string_>,
    @as("Name") name: option<string_>,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteRealtimeLogConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePublicKey = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeletePublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOriginRequestPolicy = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteOriginRequestPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMonitoringSubscription = {
  type t
  type request = {@as("DistributionId") distributionId: string_}
  type response = unit
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteMonitoringSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteKeyGroup = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteKeyGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunction = {
  type t
  type request = {
    @as("IfMatch") ifMatch: string_,
    @as("Name") name: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFieldLevelEncryptionProfile = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteFieldLevelEncryptionProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFieldLevelEncryptionConfig = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteFieldLevelEncryptionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDistribution = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCloudFrontOriginAccessIdentity = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "DeleteCloudFrontOriginAccessIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCachePolicy = {
  type t
  type request = {
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DeleteCachePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetPublicKeyConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetPublicKeyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCloudFrontOriginAccessIdentityConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCloudFrontOriginAccessIdentityConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePublicKey = {
  type t
  type request = {
    @as("PublicKeyConfig") publicKeyConfig: publicKeyConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdatePublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunction = {
  type t
  type request = {
    @as("FunctionCode") functionCode: functionBlob,
    @as("FunctionConfig") functionConfig: functionConfig,
    @as("IfMatch") ifMatch: string_,
    @as("Name") name: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FunctionSummary") functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCloudFrontOriginAccessIdentity = {
  type t
  type request = {
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateCloudFrontOriginAccessIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("Resource") resource: resourceARN,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PublishFunction = {
  type t
  type request = {
    @as("IfMatch") ifMatch: string_,
    @as("Name") name: string_,
  }
  type response = {@as("FunctionSummary") functionSummary: option<functionSummary>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "PublishFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByOriginRequestPolicyId = {
  type t
  type request = {
    @as("OriginRequestPolicyId") originRequestPolicyId: string_,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionIdList") distributionIdList: option<distributionIdList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByOriginRequestPolicyIdCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByKeyGroup = {
  type t
  type request = {
    @as("KeyGroupId") keyGroupId: string_,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionIdList") distributionIdList: option<distributionIdList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByKeyGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByCachePolicyId = {
  type t
  type request = {
    @as("CachePolicyId") cachePolicyId: string_,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionIdList") distributionIdList: option<distributionIdList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByCachePolicyIdCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPublicKey = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetPublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMonitoringSubscription = {
  type t
  type request = {@as("DistributionId") distributionId: string_}
  type response = {
    @as("MonitoringSubscription") monitoringSubscription: option<monitoringSubscription>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetMonitoringSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyGroupConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetKeyGroupConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCloudFrontOriginAccessIdentity = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCloudFrontOriginAccessIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFunction = {
  type t
  type request = {
    @as("Stage") stage: option<functionStage>,
    @as("Name") name: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FunctionSummary") functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "DescribeFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePublicKey = {
  type t
  type request = {@as("PublicKeyConfig") publicKeyConfig: publicKeyConfig}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("PublicKey") publicKey: option<publicKey>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreatePublicKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMonitoringSubscription = {
  type t
  type request = {
    @as("MonitoringSubscription") monitoringSubscription: monitoringSubscription,
    @as("DistributionId") distributionId: string_,
  }
  type response = {
    @as("MonitoringSubscription") monitoringSubscription: option<monitoringSubscription>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateMonitoringSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunction = {
  type t
  type request = {
    @as("FunctionCode") functionCode: functionBlob,
    @as("FunctionConfig") functionConfig: functionConfig,
    @as("Name") name: functionName,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("FunctionSummary") functionSummary: option<functionSummary>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCloudFrontOriginAccessIdentity = {
  type t
  type request = {
    @as("CloudFrontOriginAccessIdentityConfig")
    cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("CloudFrontOriginAccessIdentity")
    cloudFrontOriginAccessIdentity: option<cloudFrontOriginAccessIdentity>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateCloudFrontOriginAccessIdentityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateKeyGroup = {
  type t
  type request = {
    @as("KeyGroupConfig") keyGroupConfig: keyGroupConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("KeyGroup") keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateKeyGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestFunction = {
  type t
  type request = {
    @as("EventObject") eventObject: functionEventObject,
    @as("Stage") stage: option<functionStage>,
    @as("IfMatch") ifMatch: string_,
    @as("Name") name: string_,
  }
  type response = {@as("TestResult") testResult: option<testResult>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "TestFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("Resource") resource: resourceARN,
  }

  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("Resource") resource: resourceARN}
  type response = {@as("Tags") tags: tags}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublicKeys = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("PublicKeyList") publicKeyList: option<publicKeyList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListPublicKeysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvalidations = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
    @as("DistributionId") distributionId: string_,
  }
  type response = {@as("InvalidationList") invalidationList: option<invalidationList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListInvalidationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCloudFrontOriginAccessIdentities = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {
    @as("CloudFrontOriginAccessIdentityList")
    cloudFrontOriginAccessIdentityList: option<cloudFrontOriginAccessIdentityList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListCloudFrontOriginAccessIdentitiesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingDistributionConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("StreamingDistributionConfig")
    streamingDistributionConfig: option<streamingDistributionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetStreamingDistributionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyGroup = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("KeyGroup") keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetKeyGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeyGroup = {
  type t
  type request = {@as("KeyGroupConfig") keyGroupConfig: keyGroupConfig}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("KeyGroup") keyGroup: option<keyGroup>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateKeyGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRealtimeLogConfig = {
  type t
  type request = {
    @as("SamplingRate") samplingRate: option<long>,
    @as("ARN") arn: option<string_>,
    @as("Name") name: option<string_>,
    @as("Fields") fields: option<fieldList>,
    @as("EndPoints") endPoints: option<endPointList>,
  }
  type response = {@as("RealtimeLogConfig") realtimeLogConfig: option<realtimeLogConfig>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateRealtimeLogConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctions = {
  type t
  type request = {
    @as("Stage") stage: option<functionStage>,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("FunctionList") functionList: option<functionList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListFunctionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRealtimeLogConfig = {
  type t
  type request = {
    @as("ARN") arn: option<string_>,
    @as("Name") name: option<string_>,
  }
  type response = {@as("RealtimeLogConfig") realtimeLogConfig: option<realtimeLogConfig>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetRealtimeLogConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOriginRequestPolicyConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetOriginRequestPolicyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvalidation = {
  type t
  type request = {
    @as("Id") id: string_,
    @as("DistributionId") distributionId: string_,
  }
  type response = {@as("Invalidation") invalidation: option<invalidation>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetInvalidationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRealtimeLogConfig = {
  type t
  type request = {
    @as("SamplingRate") samplingRate: long,
    @as("Name") name: string_,
    @as("Fields") fields: fieldList,
    @as("EndPoints") endPoints: endPointList,
  }
  type response = {@as("RealtimeLogConfig") realtimeLogConfig: option<realtimeLogConfig>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateRealtimeLogConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInvalidation = {
  type t
  type request = {
    @as("InvalidationBatch") invalidationBatch: invalidationBatch,
    @as("DistributionId") distributionId: string_,
  }
  type response = {
    @as("Invalidation") invalidation: option<invalidation>,
    @as("Location") location: option<string_>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateInvalidationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOriginRequestPolicy = {
  type t
  type request = {
    @as("OriginRequestPolicyConfig") originRequestPolicyConfig: originRequestPolicyConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("OriginRequestPolicy") originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateOriginRequestPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreamingDistributions = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {
    @as("StreamingDistributionList") streamingDistributionList: option<streamingDistributionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListStreamingDistributionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOriginRequestPolicy = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("OriginRequestPolicy") originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetOriginRequestPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryptionConfig")
    fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCachePolicyConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetCachePolicyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOriginRequestPolicy = {
  type t
  type request = {
    @as("OriginRequestPolicyConfig") originRequestPolicyConfig: originRequestPolicyConfig,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("OriginRequestPolicy") originRequestPolicy: option<originRequestPolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateOriginRequestPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStreamingDistribution = {
  type t
  type request = {
    @as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("StreamingDistribution") streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateStreamingDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFieldLevelEncryptionConfig = {
  type t
  type request = {
    @as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryption") fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateFieldLevelEncryptionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCachePolicy = {
  type t
  type request = {
    @as("CachePolicyConfig") cachePolicyConfig: cachePolicyConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "UpdateCachePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRealtimeLogConfigs = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxItems") maxItems: option<baseInteger>,
  }
  type response = {@as("RealtimeLogConfigs") realtimeLogConfigs: option<realtimeLogConfigs>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListRealtimeLogConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeyGroups = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("KeyGroupList") keyGroupList: option<keyGroupList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListKeyGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStreamingDistribution = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("StreamingDistribution") streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetStreamingDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionProfileConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionProfileConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryption = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryption") fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCachePolicy = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetCachePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingDistributionWithTags = {
  type t
  type request = {
    @as("StreamingDistributionConfigWithTags")
    streamingDistributionConfigWithTags: streamingDistributionConfigWithTags,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("StreamingDistribution") streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateStreamingDistributionWithTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStreamingDistribution = {
  type t
  type request = {
    @as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("StreamingDistribution") streamingDistribution: option<streamingDistribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateStreamingDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFieldLevelEncryptionConfig = {
  type t
  type request = {
    @as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: fieldLevelEncryptionConfig,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("FieldLevelEncryption") fieldLevelEncryption: option<fieldLevelEncryption>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateFieldLevelEncryptionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCachePolicy = {
  type t
  type request = {@as("CachePolicyConfig") cachePolicyConfig: cachePolicyConfig}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("CachePolicy") cachePolicy: option<cachePolicy>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "CreateCachePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFieldLevelEncryptionProfile = {
  type t
  type request = {
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateFieldLevelEncryptionProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFieldLevelEncryptionConfigs = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {
    @as("FieldLevelEncryptionList") fieldLevelEncryptionList: option<fieldLevelEncryptionList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListFieldLevelEncryptionConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFieldLevelEncryptionProfile = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetFieldLevelEncryptionProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFieldLevelEncryptionProfile = {
  type t
  type request = {
    @as("FieldLevelEncryptionProfileConfig")
    fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("FieldLevelEncryptionProfile")
    fieldLevelEncryptionProfile: option<fieldLevelEncryptionProfile>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateFieldLevelEncryptionProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOriginRequestPolicies = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
    @as("Type") type_: option<originRequestPolicyType>,
  }
  type response = {
    @as("OriginRequestPolicyList") originRequestPolicyList: option<originRequestPolicyList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListOriginRequestPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFieldLevelEncryptionProfiles = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {
    @as("FieldLevelEncryptionProfileList")
    fieldLevelEncryptionProfileList: option<fieldLevelEncryptionProfileList>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListFieldLevelEncryptionProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionConfig = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("DistributionConfig") distributionConfig: option<distributionConfig>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "GetDistributionConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistribution = {
  type t
  type request = {
    @as("DistributionConfig") distributionConfig: distributionConfig,
    @as("IfMatch") ifMatch: option<string_>,
    @as("Id") id: string_,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Distribution") distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "UpdateDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCachePolicies = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
    @as("Type") type_: option<cachePolicyType>,
  }
  type response = {@as("CachePolicyList") cachePolicyList: option<cachePolicyList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListCachePoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistribution = {
  type t
  type request = {@as("Id") id: string_}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Distribution") distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "GetDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistributionWithTags = {
  type t
  type request = {
    @as("DistributionConfigWithTags") distributionConfigWithTags: distributionConfigWithTags,
  }
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("Distribution") distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateDistributionWithTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistribution = {
  type t
  type request = {@as("DistributionConfig") distributionConfig: distributionConfig}
  type response = {
    @as("ETag") etag: option<string_>,
    @as("Location") location: option<string_>,
    @as("Distribution") distribution: option<distribution>,
  }
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "CreateDistributionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByWebACLId = {
  type t
  type request = {
    @as("WebACLId") webACLId: string_,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionList") distributionList: option<distributionList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByWebACLIdCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributionsByRealtimeLogConfig = {
  type t
  type request = {
    @as("RealtimeLogConfigArn") realtimeLogConfigArn: option<string_>,
    @as("RealtimeLogConfigName") realtimeLogConfigName: option<string_>,
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionList") distributionList: option<distributionList>}
  @module("@aws-sdk/client-cloudfront") @new
  external new: request => t = "ListDistributionsByRealtimeLogConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributions = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<baseInteger>,
    @as("Marker") marker: option<string_>,
  }
  type response = {@as("DistributionList") distributionList: option<distributionList>}
  @module("@aws-sdk/client-cloudfront") @new external new: request => t = "ListDistributionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
