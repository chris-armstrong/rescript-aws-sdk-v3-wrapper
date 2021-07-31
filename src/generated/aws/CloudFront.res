type string_ = string
type boolean_ = bool;
type integer_ = int;
type timestamp_ = Js.Date.t;
type long = float;
type integer_ = int;
type boolean_ = bool;
type viewerProtocolPolicy = [@as("redirect-to-https") #RedirectToHttps | @as("https-only") #HttpsOnly | @as("allow-all") #AllowAll]
type tagValue = string
type tagKey = string
type sslProtocol = [@as("TLSv1.2") #TLSv12 | @as("TLSv1.1") #TLSv11 | @as("TLSv1") #TLSv1 | @as("SSLv3") #SSLv3]
type sslsupportMethod = [@as("static-ip") #StaticIp | @as("vip") #Vip | @as("sni-only") #SniOnly]
type resourceARN = string
type realtimeMetricsSubscriptionStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type priceClass = [@as("PriceClass_All") #PriceClassAll | @as("PriceClass_200") #PriceClass200 | @as("PriceClass_100") #PriceClass100]
type originShieldRegion = string
type originRequestPolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type originRequestPolicyQueryStringBehavior = [@as("all") #All | @as("whitelist") #Whitelist | @as("none") #None]
type originRequestPolicyHeaderBehavior = [@as("allViewerAndWhitelistCloudFront") #AllViewerAndWhitelistCloudFront | @as("allViewer") #AllViewer | @as("whitelist") #Whitelist | @as("none") #None]
type originRequestPolicyCookieBehavior = [@as("all") #All | @as("whitelist") #Whitelist | @as("none") #None]
type originProtocolPolicy = [@as("https-only") #HttpsOnly | @as("match-viewer") #MatchViewer | @as("http-only") #HttpOnly]
type minimumProtocolVersion = [@as("TLSv1.2_2019") #TLSv122019 | @as("TLSv1.2_2018") #TLSv122018 | @as("TLSv1.1_2016") #TLSv112016 | @as("TLSv1_2016") #TLSv12016 | @as("TLSv1") #TLSv1 | @as("SSLv3") #SSLv3]
type method = [@as("DELETE") #DELETE | @as("OPTIONS") #OPTIONS | @as("PATCH") #PATCH | @as("PUT") #PUT | @as("POST") #POST | @as("HEAD") #HEAD | @as("GET") #GET]
type lambdaFunctionARN = string
type itemSelection = [@as("all") #All | @as("whitelist") #Whitelist | @as("none") #None]
type icprecordalStatus = [@as("PENDING") #PENDING | @as("SUSPENDED") #SUSPENDED | @as("APPROVED") #APPROVED]
type httpVersion = [@as("http2") #Http2 | @as("http1.1") #Http11]
type geoRestrictionType = [@as("none") #None | @as("whitelist") #Whitelist | @as("blacklist") #Blacklist]
type functionStage = [@as("LIVE") #LIVE | @as("DEVELOPMENT") #DEVELOPMENT]
type functionRuntime = [@as("cloudfront-js-1.0") #CloudfrontJs10]
type functionName = string
type functionEventObject = NodeJs.Buffer.t;
type functionBlob = NodeJs.Buffer.t;
type functionARN = string
type format = [@as("URLEncoded") #URLEncoded]
type eventType = [@as("origin-response") #OriginResponse | @as("origin-request") #OriginRequest | @as("viewer-response") #ViewerResponse | @as("viewer-request") #ViewerRequest]
type commentType = string
type certificateSource = [@as("acm") #Acm | @as("iam") #Iam | @as("cloudfront") #Cloudfront]
type cachePolicyType = [@as("custom") #Custom | @as("managed") #Managed]
type cachePolicyQueryStringBehavior = [@as("all") #All | @as("allExcept") #AllExcept | @as("whitelist") #Whitelist | @as("none") #None]
type cachePolicyHeaderBehavior = [@as("whitelist") #Whitelist | @as("none") #None]
type cachePolicyCookieBehavior = [@as("all") #All | @as("allExcept") #AllExcept | @as("whitelist") #Whitelist | @as("none") #None]
type viewerCertificate = {
@as("CertificateSource") certificateSource: certificateSource,
@as("Certificate") certificate: string_,
@as("MinimumProtocolVersion") minimumProtocolVersion: minimumProtocolVersion,
@as("SSLSupportMethod") sslsupportMethod: sslsupportMethod,
@as("ACMCertificateArn") acmcertificateArn: string_,
@as("IAMCertificateId") iamcertificateId: string_,
@as("CloudFrontDefaultCertificate") cloudFrontDefaultCertificate: boolean_
}
type trustedKeyGroupIdList = array<string_>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type streamingLoggingConfig = {
@as("Prefix") prefix: option<string_>,
@as("Bucket") bucket: option<string_>,
@as("Enabled") enabled: option<boolean_>
}
type statusCodeList = array<integer_>
type sslProtocolsList = array<sslProtocol>
type s3OriginConfig = {
@as("OriginAccessIdentity") originAccessIdentity: option<string_>
}
type s3Origin = {
@as("OriginAccessIdentity") originAccessIdentity: option<string_>,
@as("DomainName") domainName: option<string_>
}
type realtimeMetricsSubscriptionConfig = {
@as("RealtimeMetricsSubscriptionStatus") realtimeMetricsSubscriptionStatus: option<realtimeMetricsSubscriptionStatus>
}
type queryStringNamesList = array<string_>
type queryStringCacheKeysList = array<string_>
type queryArgProfile = {
@as("ProfileId") profileId: option<string_>,
@as("QueryArg") queryArg: option<string_>
}
type publicKeySummary = {
@as("Comment") comment: string_,
@as("EncodedKey") encodedKey: option<string_>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Name") name: option<string_>,
@as("Id") id: option<string_>
}
type publicKeyIdList = array<string_>
type publicKeyConfig = {
@as("Comment") comment: string_,
@as("EncodedKey") encodedKey: option<string_>,
@as("Name") name: option<string_>,
@as("CallerReference") callerReference: option<string_>
}
type pathList = array<string_>
type originShield = {
@as("OriginShieldRegion") originShieldRegion: originShieldRegion,
@as("Enabled") enabled: option<boolean_>
}
type originGroupMember = {
@as("OriginId") originId: option<string_>
}
type originCustomHeader = {
@as("HeaderValue") headerValue: option<string_>,
@as("HeaderName") headerName: option<string_>
}
type methodsList = array<method>
type loggingConfig = {
@as("Prefix") prefix: option<string_>,
@as("Bucket") bucket: option<string_>,
@as("IncludeCookies") includeCookies: option<boolean_>,
@as("Enabled") enabled: option<boolean_>
}
type locationList = array<string_>
type lambdaFunctionAssociation = {
@as("IncludeBody") includeBody: boolean_,
@as("EventType") eventType: option<eventType>,
@as("LambdaFunctionARN") lambdaFunctionARN: option<lambdaFunctionARN>
}
type kinesisStreamConfig = {
@as("StreamARN") streamARN: option<string_>,
@as("RoleARN") roleARN: option<string_>
}
type keyPairIdList = array<string_>
type invalidationSummary = {
@as("Status") status: option<string_>,
@as("CreateTime") createTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type headerList = array<string_>
type functionMetadata = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("CreatedTime") createdTime: timestamp_,
@as("Stage") stage: functionStage,
@as("FunctionARN") functionARN: option<string_>
}
type functionExecutionLogList = array<string_>
type functionConfig = {
@as("Runtime") runtime: option<functionRuntime>,
@as("Comment") comment: option<string_>
}
type functionAssociation = {
@as("EventType") eventType: option<eventType>,
@as("FunctionARN") functionARN: option<functionARN>
}
type fieldPatternList = array<string_>
type fieldList = array<string_>
type distributionIdListSummary = array<string_>
type customErrorResponse = {
@as("ErrorCachingMinTTL") errorCachingMinTTL: long,
@as("ResponseCode") responseCode: string_,
@as("ResponsePagePath") responsePagePath: string_,
@as("ErrorCode") errorCode: option<integer_>
}
type cookieNameList = array<string_>
type contentTypeProfile = {
@as("ContentType") contentType: option<string_>,
@as("ProfileId") profileId: string_,
@as("Format") format: option<format>
}
type cloudFrontOriginAccessIdentitySummary = {
@as("Comment") comment: option<string_>,
@as("S3CanonicalUserId") s3CanonicalUserId: option<string_>,
@as("Id") id: option<string_>
}
type cloudFrontOriginAccessIdentityConfig = {
@as("Comment") comment: option<string_>,
@as("CallerReference") callerReference: option<string_>
}
type awsAccountNumberList = array<string_>
type aliasList = array<string_>
type aliasICPRecordal = {
@as("ICPRecordalStatus") icprecordalStatus: icprecordalStatus,
@as("CNAME") cname: string_
}
type trustedSigners = {
@as("Items") items: awsAccountNumberList,
@as("Quantity") quantity: option<integer_>,
@as("Enabled") enabled: option<boolean_>
}
type trustedKeyGroups = {
@as("Items") items: trustedKeyGroupIdList,
@as("Quantity") quantity: option<integer_>,
@as("Enabled") enabled: option<boolean_>
}
type tagList = array<tag>
type tagKeys = {
@as("Items") items: tagKeyList
}
type statusCodes = {
@as("Items") items: option<statusCodeList>,
@as("Quantity") quantity: option<integer_>
}
type queryStringNames = {
@as("Items") items: queryStringNamesList,
@as("Quantity") quantity: option<integer_>
}
type queryStringCacheKeys = {
@as("Items") items: queryStringCacheKeysList,
@as("Quantity") quantity: option<integer_>
}
type queryArgProfileList = array<queryArgProfile>
type publicKeySummaryList = array<publicKeySummary>
type publicKey = {
@as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>,
@as("CreatedTime") createdTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type paths = {
@as("Items") items: pathList,
@as("Quantity") quantity: option<integer_>
}
type originSslProtocols = {
@as("Items") items: option<sslProtocolsList>,
@as("Quantity") quantity: option<integer_>
}
type originGroupMemberList = array<originGroupMember>
type originCustomHeadersList = array<originCustomHeader>
type monitoringSubscription = {
@as("RealtimeMetricsSubscriptionConfig") realtimeMetricsSubscriptionConfig: realtimeMetricsSubscriptionConfig
}
type lambdaFunctionAssociationList = array<lambdaFunctionAssociation>
type keyPairIds = {
@as("Items") items: keyPairIdList,
@as("Quantity") quantity: option<integer_>
}
type keyGroupConfig = {
@as("Comment") comment: string_,
@as("Items") items: option<publicKeyIdList>,
@as("Name") name: option<string_>
}
type invalidationSummaryList = array<invalidationSummary>
type headers = {
@as("Items") items: headerList,
@as("Quantity") quantity: option<integer_>
}
type geoRestriction = {
@as("Items") items: locationList,
@as("Quantity") quantity: option<integer_>,
@as("RestrictionType") restrictionType: option<geoRestrictionType>
}
type functionSummary = {
@as("FunctionMetadata") functionMetadata: option<functionMetadata>,
@as("FunctionConfig") functionConfig: option<functionConfig>,
@as("Status") status: string_,
@as("Name") name: option<functionName>
}
type functionAssociationList = array<functionAssociation>
type fieldPatterns = {
@as("Items") items: fieldPatternList,
@as("Quantity") quantity: option<integer_>
}
type endPoint = {
@as("KinesisStreamConfig") kinesisStreamConfig: kinesisStreamConfig,
@as("StreamType") streamType: option<string_>
}
type distributionIdList = {
@as("Items") items: distributionIdListSummary,
@as("Quantity") quantity: option<integer_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>
}
type customErrorResponseList = array<customErrorResponse>
type cookieNames = {
@as("Items") items: cookieNameList,
@as("Quantity") quantity: option<integer_>
}
type contentTypeProfileList = array<contentTypeProfile>
type cloudFrontOriginAccessIdentitySummaryList = array<cloudFrontOriginAccessIdentitySummary>
type cloudFrontOriginAccessIdentity = {
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
@as("S3CanonicalUserId") s3CanonicalUserId: option<string_>,
@as("Id") id: option<string_>
}
type cachedMethods = {
@as("Items") items: option<methodsList>,
@as("Quantity") quantity: option<integer_>
}
type aliases = {
@as("Items") items: aliasList,
@as("Quantity") quantity: option<integer_>
}
type aliasICPRecordals = array<aliasICPRecordal>
type testResult = {
@as("FunctionOutput") functionOutput: string_,
@as("FunctionErrorMessage") functionErrorMessage: string_,
@as("FunctionExecutionLogs") functionExecutionLogs: functionExecutionLogList,
@as("ComputeUtilization") computeUtilization: string_,
@as("FunctionSummary") functionSummary: functionSummary
}
type tags = {
@as("Items") items: tagList
}
type streamingDistributionSummary = {
@as("Enabled") enabled: option<boolean_>,
@as("PriceClass") priceClass: option<priceClass>,
@as("Comment") comment: option<string_>,
@as("TrustedSigners") trustedSigners: option<trustedSigners>,
@as("Aliases") aliases: option<aliases>,
@as("S3Origin") s3Origin: option<s3Origin>,
@as("DomainName") domainName: option<string_>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Status") status: option<string_>,
@as("ARN") arn: option<string_>,
@as("Id") id: option<string_>
}
type streamingDistributionConfig = {
@as("Enabled") enabled: option<boolean_>,
@as("PriceClass") priceClass: priceClass,
@as("TrustedSigners") trustedSigners: option<trustedSigners>,
@as("Logging") logging: streamingLoggingConfig,
@as("Comment") comment: option<string_>,
@as("Aliases") aliases: aliases,
@as("S3Origin") s3Origin: option<s3Origin>,
@as("CallerReference") callerReference: option<string_>
}
type signer = {
@as("KeyPairIds") keyPairIds: keyPairIds,
@as("AwsAccountNumber") awsAccountNumber: string_
}
type restrictions = {
@as("GeoRestriction") geoRestriction: option<geoRestriction>
}
type queryArgProfiles = {
@as("Items") items: queryArgProfileList,
@as("Quantity") quantity: option<integer_>
}
type publicKeyList = {
@as("Items") items: publicKeySummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type originRequestPolicyQueryStringsConfig = {
@as("QueryStrings") queryStrings: queryStringNames,
@as("QueryStringBehavior") queryStringBehavior: option<originRequestPolicyQueryStringBehavior>
}
type originRequestPolicyHeadersConfig = {
@as("Headers") headers: headers,
@as("HeaderBehavior") headerBehavior: option<originRequestPolicyHeaderBehavior>
}
type originRequestPolicyCookiesConfig = {
@as("Cookies") cookies: cookieNames,
@as("CookieBehavior") cookieBehavior: option<originRequestPolicyCookieBehavior>
}
type originGroupMembers = {
@as("Items") items: option<originGroupMemberList>,
@as("Quantity") quantity: option<integer_>
}
type originGroupFailoverCriteria = {
@as("StatusCodes") statusCodes: option<statusCodes>
}
type lambdaFunctionAssociations = {
@as("Items") items: lambdaFunctionAssociationList,
@as("Quantity") quantity: option<integer_>
}
type keyGroup = {
@as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type kgkeyPairIds = {
@as("KeyPairIds") keyPairIds: keyPairIds,
@as("KeyGroupId") keyGroupId: string_
}
type invalidationList = {
@as("Items") items: invalidationSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>
}
type invalidationBatch = {
@as("CallerReference") callerReference: option<string_>,
@as("Paths") paths: option<paths>
}
type functionSummaryList = array<functionSummary>
type functionAssociations = {
@as("Items") items: functionAssociationList,
@as("Quantity") quantity: option<integer_>
}
type endPointList = array<endPoint>
type encryptionEntity = {
@as("FieldPatterns") fieldPatterns: option<fieldPatterns>,
@as("ProviderId") providerId: option<string_>,
@as("PublicKeyId") publicKeyId: option<string_>
}
type customOriginConfig = {
@as("OriginKeepaliveTimeout") originKeepaliveTimeout: integer_,
@as("OriginReadTimeout") originReadTimeout: integer_,
@as("OriginSslProtocols") originSslProtocols: originSslProtocols,
@as("OriginProtocolPolicy") originProtocolPolicy: option<originProtocolPolicy>,
@as("HTTPSPort") httpsport: option<integer_>,
@as("HTTPPort") httpport: option<integer_>
}
type customHeaders = {
@as("Items") items: originCustomHeadersList,
@as("Quantity") quantity: option<integer_>
}
type customErrorResponses = {
@as("Items") items: customErrorResponseList,
@as("Quantity") quantity: option<integer_>
}
type cookiePreference = {
@as("WhitelistedNames") whitelistedNames: cookieNames,
@as("Forward") forward: option<itemSelection>
}
type contentTypeProfiles = {
@as("Items") items: contentTypeProfileList,
@as("Quantity") quantity: option<integer_>
}
type cloudFrontOriginAccessIdentityList = {
@as("Items") items: cloudFrontOriginAccessIdentitySummaryList,
@as("Quantity") quantity: option<integer_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>
}
type cachePolicyQueryStringsConfig = {
@as("QueryStrings") queryStrings: queryStringNames,
@as("QueryStringBehavior") queryStringBehavior: option<cachePolicyQueryStringBehavior>
}
type cachePolicyHeadersConfig = {
@as("Headers") headers: headers,
@as("HeaderBehavior") headerBehavior: option<cachePolicyHeaderBehavior>
}
type cachePolicyCookiesConfig = {
@as("Cookies") cookies: cookieNames,
@as("CookieBehavior") cookieBehavior: option<cachePolicyCookieBehavior>
}
type allowedMethods = {
@as("CachedMethods") cachedMethods: cachedMethods,
@as("Items") items: option<methodsList>,
@as("Quantity") quantity: option<integer_>
}
type streamingDistributionSummaryList = array<streamingDistributionSummary>
type streamingDistributionConfigWithTags = {
@as("Tags") tags: option<tags>,
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>
}
type signerList = array<signer>
type realtimeLogConfig = {
@as("Fields") fields: option<fieldList>,
@as("EndPoints") endPoints: option<endPointList>,
@as("SamplingRate") samplingRate: option<long>,
@as("Name") name: option<string_>,
@as("ARN") arn: option<string_>
}
type queryArgProfileConfig = {
@as("QueryArgProfiles") queryArgProfiles: queryArgProfiles,
@as("ForwardWhenQueryArgProfileIsUnknown") forwardWhenQueryArgProfileIsUnknown: option<boolean_>
}
type parametersInCacheKeyAndForwardedToOrigin = {
@as("QueryStringsConfig") queryStringsConfig: option<cachePolicyQueryStringsConfig>,
@as("CookiesConfig") cookiesConfig: option<cachePolicyCookiesConfig>,
@as("HeadersConfig") headersConfig: option<cachePolicyHeadersConfig>,
@as("EnableAcceptEncodingBrotli") enableAcceptEncodingBrotli: boolean_,
@as("EnableAcceptEncodingGzip") enableAcceptEncodingGzip: option<boolean_>
}
type originRequestPolicyConfig = {
@as("QueryStringsConfig") queryStringsConfig: option<originRequestPolicyQueryStringsConfig>,
@as("CookiesConfig") cookiesConfig: option<originRequestPolicyCookiesConfig>,
@as("HeadersConfig") headersConfig: option<originRequestPolicyHeadersConfig>,
@as("Name") name: option<string_>,
@as("Comment") comment: string_
}
type originGroup = {
@as("Members") members: option<originGroupMembers>,
@as("FailoverCriteria") failoverCriteria: option<originGroupFailoverCriteria>,
@as("Id") id: option<string_>
}
type origin = {
@as("OriginShield") originShield: originShield,
@as("ConnectionTimeout") connectionTimeout: integer_,
@as("ConnectionAttempts") connectionAttempts: integer_,
@as("CustomOriginConfig") customOriginConfig: customOriginConfig,
@as("S3OriginConfig") s3OriginConfig: s3OriginConfig,
@as("CustomHeaders") customHeaders: customHeaders,
@as("OriginPath") originPath: string_,
@as("DomainName") domainName: option<string_>,
@as("Id") id: option<string_>
}
type keyGroupSummary = {
@as("KeyGroup") keyGroup: option<keyGroup>
}
type kgkeyPairIdsList = array<kgkeyPairIds>
type invalidation = {
@as("InvalidationBatch") invalidationBatch: option<invalidationBatch>,
@as("CreateTime") createTime: option<timestamp_>,
@as("Status") status: option<string_>,
@as("Id") id: option<string_>
}
type functionList = {
@as("Items") items: functionSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type forwardedValues = {
@as("QueryStringCacheKeys") queryStringCacheKeys: queryStringCacheKeys,
@as("Headers") headers: headers,
@as("Cookies") cookies: option<cookiePreference>,
@as("QueryString") queryString: option<boolean_>
}
type encryptionEntityList = array<encryptionEntity>
type contentTypeProfileConfig = {
@as("ContentTypeProfiles") contentTypeProfiles: contentTypeProfiles,
@as("ForwardWhenContentTypeIsUnknown") forwardWhenContentTypeIsUnknown: option<boolean_>
}
type streamingDistributionList = {
@as("Items") items: streamingDistributionSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>
}
type realtimeLogConfigList = array<realtimeLogConfig>
type originRequestPolicy = {
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type originList = array<origin>
type originGroupList = array<originGroup>
type keyGroupSummaryList = array<keyGroupSummary>
type fieldLevelEncryptionSummary = {
@as("ContentTypeProfileConfig") contentTypeProfileConfig: contentTypeProfileConfig,
@as("QueryArgProfileConfig") queryArgProfileConfig: queryArgProfileConfig,
@as("Comment") comment: string_,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type fieldLevelEncryptionConfig = {
@as("ContentTypeProfileConfig") contentTypeProfileConfig: contentTypeProfileConfig,
@as("QueryArgProfileConfig") queryArgProfileConfig: queryArgProfileConfig,
@as("Comment") comment: string_,
@as("CallerReference") callerReference: option<string_>
}
type encryptionEntities = {
@as("Items") items: encryptionEntityList,
@as("Quantity") quantity: option<integer_>
}
type defaultCacheBehavior = {
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("MinTTL") minTTL: long,
@as("ForwardedValues") forwardedValues: forwardedValues,
@as("OriginRequestPolicyId") originRequestPolicyId: string_,
@as("CachePolicyId") cachePolicyId: string_,
@as("RealtimeLogConfigArn") realtimeLogConfigArn: string_,
@as("FieldLevelEncryptionId") fieldLevelEncryptionId: string_,
@as("FunctionAssociations") functionAssociations: functionAssociations,
@as("LambdaFunctionAssociations") lambdaFunctionAssociations: lambdaFunctionAssociations,
@as("Compress") compress: boolean_,
@as("SmoothStreaming") smoothStreaming: boolean_,
@as("AllowedMethods") allowedMethods: allowedMethods,
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<viewerProtocolPolicy>,
@as("TrustedKeyGroups") trustedKeyGroups: trustedKeyGroups,
@as("TrustedSigners") trustedSigners: trustedSigners,
@as("TargetOriginId") targetOriginId: option<string_>
}
type cachePolicyConfig = {
@as("ParametersInCacheKeyAndForwardedToOrigin") parametersInCacheKeyAndForwardedToOrigin: parametersInCacheKeyAndForwardedToOrigin,
@as("MinTTL") minTTL: option<long>,
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("Name") name: option<string_>,
@as("Comment") comment: string_
}
type cacheBehavior = {
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("MinTTL") minTTL: long,
@as("ForwardedValues") forwardedValues: forwardedValues,
@as("OriginRequestPolicyId") originRequestPolicyId: string_,
@as("CachePolicyId") cachePolicyId: string_,
@as("RealtimeLogConfigArn") realtimeLogConfigArn: string_,
@as("FieldLevelEncryptionId") fieldLevelEncryptionId: string_,
@as("FunctionAssociations") functionAssociations: functionAssociations,
@as("LambdaFunctionAssociations") lambdaFunctionAssociations: lambdaFunctionAssociations,
@as("Compress") compress: boolean_,
@as("SmoothStreaming") smoothStreaming: boolean_,
@as("AllowedMethods") allowedMethods: allowedMethods,
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<viewerProtocolPolicy>,
@as("TrustedKeyGroups") trustedKeyGroups: trustedKeyGroups,
@as("TrustedSigners") trustedSigners: trustedSigners,
@as("TargetOriginId") targetOriginId: option<string_>,
@as("PathPattern") pathPattern: option<string_>
}
type activeTrustedSigners = {
@as("Items") items: signerList,
@as("Quantity") quantity: option<integer_>,
@as("Enabled") enabled: option<boolean_>
}
type activeTrustedKeyGroups = {
@as("Items") items: kgkeyPairIdsList,
@as("Quantity") quantity: option<integer_>,
@as("Enabled") enabled: option<boolean_>
}
type streamingDistribution = {
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>,
@as("ActiveTrustedSigners") activeTrustedSigners: option<activeTrustedSigners>,
@as("DomainName") domainName: option<string_>,
@as("LastModifiedTime") lastModifiedTime: timestamp_,
@as("Status") status: option<string_>,
@as("ARN") arn: option<string_>,
@as("Id") id: option<string_>
}
type realtimeLogConfigs = {
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("Items") items: realtimeLogConfigList,
@as("MaxItems") maxItems: option<integer_>
}
type origins = {
@as("Items") items: option<originList>,
@as("Quantity") quantity: option<integer_>
}
type originRequestPolicySummary = {
@as("OriginRequestPolicy") originRequestPolicy: option<originRequestPolicy>,
@as("Type") type_: option<originRequestPolicyType>
}
type originGroups = {
@as("Items") items: originGroupList,
@as("Quantity") quantity: option<integer_>
}
type keyGroupList = {
@as("Items") items: keyGroupSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type fieldLevelEncryptionSummaryList = array<fieldLevelEncryptionSummary>
type fieldLevelEncryptionProfileSummary = {
@as("Comment") comment: string_,
@as("EncryptionEntities") encryptionEntities: option<encryptionEntities>,
@as("Name") name: option<string_>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type fieldLevelEncryptionProfileConfig = {
@as("EncryptionEntities") encryptionEntities: option<encryptionEntities>,
@as("Comment") comment: string_,
@as("CallerReference") callerReference: option<string_>,
@as("Name") name: option<string_>
}
type fieldLevelEncryption = {
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type cachePolicy = {
@as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type cacheBehaviorList = array<cacheBehavior>
type originRequestPolicySummaryList = array<originRequestPolicySummary>
type fieldLevelEncryptionProfileSummaryList = array<fieldLevelEncryptionProfileSummary>
type fieldLevelEncryptionProfile = {
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Id") id: option<string_>
}
type fieldLevelEncryptionList = {
@as("Items") items: fieldLevelEncryptionSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type cachePolicySummary = {
@as("CachePolicy") cachePolicy: option<cachePolicy>,
@as("Type") type_: option<cachePolicyType>
}
type cacheBehaviors = {
@as("Items") items: cacheBehaviorList,
@as("Quantity") quantity: option<integer_>
}
type originRequestPolicyList = {
@as("Items") items: originRequestPolicySummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type fieldLevelEncryptionProfileList = {
@as("Items") items: fieldLevelEncryptionProfileSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type distributionSummary = {
@as("AliasICPRecordals") aliasICPRecordals: aliasICPRecordals,
@as("IsIPV6Enabled") isIPV6Enabled: option<boolean_>,
@as("HttpVersion") httpVersion: option<httpVersion>,
@as("WebACLId") webACLId: option<string_>,
@as("Restrictions") restrictions: option<restrictions>,
@as("ViewerCertificate") viewerCertificate: option<viewerCertificate>,
@as("Enabled") enabled: option<boolean_>,
@as("PriceClass") priceClass: option<priceClass>,
@as("Comment") comment: option<string_>,
@as("CustomErrorResponses") customErrorResponses: option<customErrorResponses>,
@as("CacheBehaviors") cacheBehaviors: option<cacheBehaviors>,
@as("DefaultCacheBehavior") defaultCacheBehavior: option<defaultCacheBehavior>,
@as("OriginGroups") originGroups: originGroups,
@as("Origins") origins: option<origins>,
@as("Aliases") aliases: option<aliases>,
@as("DomainName") domainName: option<string_>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Status") status: option<string_>,
@as("ARN") arn: option<string_>,
@as("Id") id: option<string_>
}
type distributionConfig = {
@as("IsIPV6Enabled") isIPV6Enabled: boolean_,
@as("HttpVersion") httpVersion: httpVersion,
@as("WebACLId") webACLId: string_,
@as("Restrictions") restrictions: restrictions,
@as("ViewerCertificate") viewerCertificate: viewerCertificate,
@as("Enabled") enabled: option<boolean_>,
@as("PriceClass") priceClass: priceClass,
@as("Logging") logging: loggingConfig,
@as("Comment") comment: option<commentType>,
@as("CustomErrorResponses") customErrorResponses: customErrorResponses,
@as("CacheBehaviors") cacheBehaviors: cacheBehaviors,
@as("DefaultCacheBehavior") defaultCacheBehavior: option<defaultCacheBehavior>,
@as("OriginGroups") originGroups: originGroups,
@as("Origins") origins: option<origins>,
@as("DefaultRootObject") defaultRootObject: string_,
@as("Aliases") aliases: aliases,
@as("CallerReference") callerReference: option<string_>
}
type cachePolicySummaryList = array<cachePolicySummary>
type distributionSummaryList = array<distributionSummary>
type distributionConfigWithTags = {
@as("Tags") tags: option<tags>,
@as("DistributionConfig") distributionConfig: option<distributionConfig>
}
type distribution = {
@as("AliasICPRecordals") aliasICPRecordals: aliasICPRecordals,
@as("DistributionConfig") distributionConfig: option<distributionConfig>,
@as("ActiveTrustedKeyGroups") activeTrustedKeyGroups: activeTrustedKeyGroups,
@as("ActiveTrustedSigners") activeTrustedSigners: activeTrustedSigners,
@as("DomainName") domainName: option<string_>,
@as("InProgressInvalidationBatches") inProgressInvalidationBatches: option<integer_>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp_>,
@as("Status") status: option<string_>,
@as("ARN") arn: option<string_>,
@as("Id") id: option<string_>
}
type cachePolicyList = {
@as("Items") items: cachePolicySummaryList,
@as("Quantity") quantity: option<integer_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_
}
type distributionList = {
@as("Items") items: distributionSummaryList,
@as("Quantity") quantity: option<integer_>,
@as("IsTruncated") isTruncated: option<boolean_>,
@as("MaxItems") maxItems: option<integer_>,
@as("NextMarker") nextMarker: string_,
@as("Marker") marker: option<string_>
}
type clientType;
@module("@aws-sdk/client-cloudfront") @new external createClient: unit => clientType = "CloudFrontClient";
module GetFunction = {
  type t;
  type request = {
@as("Stage") stage: functionStage,
@as("Name") name: option<string_>
}
  type response = {
@as("ContentType") contentType: string_,
@as("ETag") etag: string_,
@as("FunctionCode") functionCode: functionBlob
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingDistribution = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRealtimeLogConfig = {
  type t;
  type request = {
@as("ARN") arn: string_,
@as("Name") name: string_
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePublicKey = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeletePublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOriginRequestPolicy = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMonitoringSubscription = {
  type t;
  type request = {
@as("DistributionId") distributionId: option<string_>
}
  type response = unit
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteMonitoringSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKeyGroup = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunction = {
  type t;
  type request = {
@as("IfMatch") ifMatch: option<string_>,
@as("Name") name: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDistribution = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCachePolicy = {
  type t;
  type request = {
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetPublicKeyConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("PublicKeyConfig") publicKeyConfig: publicKeyConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetPublicKeyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCloudFrontOriginAccessIdentityConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCloudFrontOriginAccessIdentityConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePublicKey = {
  type t;
  type request = {
@as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("PublicKey") publicKey: publicKey
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdatePublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunction = {
  type t;
  type request = {
@as("FunctionCode") functionCode: option<functionBlob>,
@as("FunctionConfig") functionConfig: option<functionConfig>,
@as("IfMatch") ifMatch: option<string_>,
@as("Name") name: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FunctionSummary") functionSummary: functionSummary
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CloudFrontOriginAccessIdentity") cloudFrontOriginAccessIdentity: cloudFrontOriginAccessIdentity
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("Resource") resource: option<resourceARN>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PublishFunction = {
  type t;
  type request = {
@as("IfMatch") ifMatch: option<string_>,
@as("Name") name: option<string_>
}
  type response = {
@as("FunctionSummary") functionSummary: functionSummary
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "PublishFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByOriginRequestPolicyId = {
  type t;
  type request = {
@as("OriginRequestPolicyId") originRequestPolicyId: option<string_>,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionIdList") distributionIdList: distributionIdList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsByOriginRequestPolicyIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByKeyGroup = {
  type t;
  type request = {
@as("KeyGroupId") keyGroupId: option<string_>,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionIdList") distributionIdList: distributionIdList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsByKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByCachePolicyId = {
  type t;
  type request = {
@as("CachePolicyId") cachePolicyId: option<string_>,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionIdList") distributionIdList: distributionIdList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsByCachePolicyIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPublicKey = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("PublicKey") publicKey: publicKey
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMonitoringSubscription = {
  type t;
  type request = {
@as("DistributionId") distributionId: option<string_>
}
  type response = {
@as("MonitoringSubscription") monitoringSubscription: monitoringSubscription
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetMonitoringSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyGroupConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("KeyGroupConfig") keyGroupConfig: keyGroupConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetKeyGroupConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CloudFrontOriginAccessIdentity") cloudFrontOriginAccessIdentity: cloudFrontOriginAccessIdentity
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFunction = {
  type t;
  type request = {
@as("Stage") stage: functionStage,
@as("Name") name: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FunctionSummary") functionSummary: functionSummary
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DescribeFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePublicKey = {
  type t;
  type request = {
@as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("PublicKey") publicKey: publicKey
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreatePublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMonitoringSubscription = {
  type t;
  type request = {
@as("MonitoringSubscription") monitoringSubscription: option<monitoringSubscription>,
@as("DistributionId") distributionId: option<string_>
}
  type response = {
@as("MonitoringSubscription") monitoringSubscription: monitoringSubscription
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateMonitoringSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFunction = {
  type t;
  type request = {
@as("FunctionCode") functionCode: option<functionBlob>,
@as("FunctionConfig") functionConfig: option<functionConfig>,
@as("Name") name: option<functionName>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("FunctionSummary") functionSummary: functionSummary
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("CloudFrontOriginAccessIdentity") cloudFrontOriginAccessIdentity: cloudFrontOriginAccessIdentity
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateKeyGroup = {
  type t;
  type request = {
@as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("KeyGroup") keyGroup: keyGroup
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestFunction = {
  type t;
  type request = {
@as("EventObject") eventObject: option<functionEventObject>,
@as("Stage") stage: functionStage,
@as("IfMatch") ifMatch: option<string_>,
@as("Name") name: option<string_>
}
  type response = {
@as("TestResult") testResult: testResult
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "TestFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Resource") resource: option<resourceARN>
}

  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Resource") resource: option<resourceARN>
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPublicKeys = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("PublicKeyList") publicKeyList: publicKeyList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListPublicKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvalidations = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_,
@as("DistributionId") distributionId: option<string_>
}
  type response = {
@as("InvalidationList") invalidationList: invalidationList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListInvalidationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCloudFrontOriginAccessIdentities = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("CloudFrontOriginAccessIdentityList") cloudFrontOriginAccessIdentityList: cloudFrontOriginAccessIdentityList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListCloudFrontOriginAccessIdentitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamingDistributionConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetStreamingDistributionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyGroup = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("KeyGroup") keyGroup: keyGroup
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKeyGroup = {
  type t;
  type request = {
@as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("KeyGroup") keyGroup: keyGroup
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRealtimeLogConfig = {
  type t;
  type request = {
@as("SamplingRate") samplingRate: long,
@as("ARN") arn: string_,
@as("Name") name: string_,
@as("Fields") fields: fieldList,
@as("EndPoints") endPoints: endPointList
}
  type response = {
@as("RealtimeLogConfig") realtimeLogConfig: realtimeLogConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctions = {
  type t;
  type request = {
@as("Stage") stage: functionStage,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("FunctionList") functionList: functionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListFunctionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRealtimeLogConfig = {
  type t;
  type request = {
@as("ARN") arn: string_,
@as("Name") name: string_
}
  type response = {
@as("RealtimeLogConfig") realtimeLogConfig: realtimeLogConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOriginRequestPolicyConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: originRequestPolicyConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetOriginRequestPolicyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvalidation = {
  type t;
  type request = {
@as("Id") id: option<string_>,
@as("DistributionId") distributionId: option<string_>
}
  type response = {
@as("Invalidation") invalidation: invalidation
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetInvalidationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRealtimeLogConfig = {
  type t;
  type request = {
@as("SamplingRate") samplingRate: option<long>,
@as("Name") name: option<string_>,
@as("Fields") fields: option<fieldList>,
@as("EndPoints") endPoints: option<endPointList>
}
  type response = {
@as("RealtimeLogConfig") realtimeLogConfig: realtimeLogConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInvalidation = {
  type t;
  type request = {
@as("InvalidationBatch") invalidationBatch: option<invalidationBatch>,
@as("DistributionId") distributionId: option<string_>
}
  type response = {
@as("Invalidation") invalidation: invalidation,
@as("Location") location: string_
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateInvalidationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOriginRequestPolicy = {
  type t;
  type request = {
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamingDistributions = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("StreamingDistributionList") streamingDistributionList: streamingDistributionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListStreamingDistributionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOriginRequestPolicy = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: fieldLevelEncryptionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCachePolicyConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CachePolicyConfig") cachePolicyConfig: cachePolicyConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCachePolicyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOriginRequestPolicy = {
  type t;
  type request = {
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStreamingDistribution = {
  type t;
  type request = {
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryption") fieldLevelEncryption: fieldLevelEncryption
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCachePolicy = {
  type t;
  type request = {
@as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CachePolicy") cachePolicy: cachePolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRealtimeLogConfigs = {
  type t;
  type request = {
@as("Marker") marker: string_,
@as("MaxItems") maxItems: integer_
}
  type response = {
@as("RealtimeLogConfigs") realtimeLogConfigs: realtimeLogConfigs
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListRealtimeLogConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKeyGroups = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("KeyGroupList") keyGroupList: keyGroupList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListKeyGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStreamingDistribution = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryptionProfileConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionProfileConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryption = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryption") fieldLevelEncryption: fieldLevelEncryption
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCachePolicy = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("CachePolicy") cachePolicy: cachePolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingDistributionWithTags = {
  type t;
  type request = {
@as("StreamingDistributionConfigWithTags") streamingDistributionConfigWithTags: option<streamingDistributionConfigWithTags>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateStreamingDistributionWithTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStreamingDistribution = {
  type t;
  type request = {
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("FieldLevelEncryption") fieldLevelEncryption: fieldLevelEncryption
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCachePolicy = {
  type t;
  type request = {
@as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("CachePolicy") cachePolicy: cachePolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryptionProfile") fieldLevelEncryptionProfile: fieldLevelEncryptionProfile
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFieldLevelEncryptionConfigs = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("FieldLevelEncryptionList") fieldLevelEncryptionList: fieldLevelEncryptionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListFieldLevelEncryptionConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("FieldLevelEncryptionProfile") fieldLevelEncryptionProfile: fieldLevelEncryptionProfile
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("FieldLevelEncryptionProfile") fieldLevelEncryptionProfile: fieldLevelEncryptionProfile
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOriginRequestPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_,
@as("Type") type_: originRequestPolicyType
}
  type response = {
@as("OriginRequestPolicyList") originRequestPolicyList: originRequestPolicyList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListOriginRequestPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFieldLevelEncryptionProfiles = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("FieldLevelEncryptionProfileList") fieldLevelEncryptionProfileList: fieldLevelEncryptionProfileList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListFieldLevelEncryptionProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributionConfig = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("DistributionConfig") distributionConfig: distributionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetDistributionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDistribution = {
  type t;
  type request = {
@as("DistributionConfig") distributionConfig: option<distributionConfig>,
@as("IfMatch") ifMatch: string_,
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCachePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_,
@as("Type") type_: cachePolicyType
}
  type response = {
@as("CachePolicyList") cachePolicyList: cachePolicyList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListCachePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistribution = {
  type t;
  type request = {
@as("Id") id: option<string_>
}
  type response = {
@as("ETag") etag: string_,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDistributionWithTags = {
  type t;
  type request = {
@as("DistributionConfigWithTags") distributionConfigWithTags: option<distributionConfigWithTags>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateDistributionWithTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDistribution = {
  type t;
  type request = {
@as("DistributionConfig") distributionConfig: option<distributionConfig>
}
  type response = {
@as("ETag") etag: string_,
@as("Location") location: string_,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByWebACLId = {
  type t;
  type request = {
@as("WebACLId") webACLId: option<string_>,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionList") distributionList: distributionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsByWebACLIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByRealtimeLogConfig = {
  type t;
  type request = {
@as("RealtimeLogConfigArn") realtimeLogConfigArn: string_,
@as("RealtimeLogConfigName") realtimeLogConfigName: string_,
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionList") distributionList: distributionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsByRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributions = {
  type t;
  type request = {
@as("MaxItems") maxItems: integer_,
@as("Marker") marker: string_
}
  type response = {
@as("DistributionList") distributionList: distributionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
