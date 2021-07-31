type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timestamp = Js.Date.t;
type amazonawsString = string
type long = float;
type integer = int;
type boolean = bool;
type viewerProtocolPolicy = [@as("redirect-to-https") #redirect_to_https | @as("https-only") #https_only | @as("allow-all") #allow_all]
type tagValue = string
type tagKey = string
type sslProtocol = [@as("TLSv1.2") #TLSv1_2 | @as("TLSv1.1") #TLSv1_1 | @as("TLSv1") #TLSv1 | @as("SSLv3") #SSLv3]
type sSLSupportMethod = [@as("static-ip") #static_ip | @as("vip") #vip | @as("sni-only") #sni_only]
type resourceARN = string
type realtimeMetricsSubscriptionStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type priceClass = [@as("PriceClass_All") #PriceClass_All | @as("PriceClass_200") #PriceClass_200 | @as("PriceClass_100") #PriceClass_100]
type originShieldRegion = string
type originRequestPolicyType = [@as("custom") #custom | @as("managed") #managed]
type originRequestPolicyQueryStringBehavior = [@as("all") #all | @as("whitelist") #whitelist | @as("none") #none]
type originRequestPolicyHeaderBehavior = [@as("allViewerAndWhitelistCloudFront") #allViewerAndWhitelistCloudFront | @as("allViewer") #allViewer | @as("whitelist") #whitelist | @as("none") #none]
type originRequestPolicyCookieBehavior = [@as("all") #all | @as("whitelist") #whitelist | @as("none") #none]
type originProtocolPolicy = [@as("https-only") #https_only | @as("match-viewer") #match_viewer | @as("http-only") #http_only]
type minimumProtocolVersion = [@as("TLSv1.2_2019") #TLSv1_2_2019 | @as("TLSv1.2_2018") #TLSv1_2_2018 | @as("TLSv1.1_2016") #TLSv1_1_2016 | @as("TLSv1_2016") #TLSv1_2016 | @as("TLSv1") #TLSv1 | @as("SSLv3") #SSLv3]
type method = [@as("DELETE") #DELETE | @as("OPTIONS") #OPTIONS | @as("PATCH") #PATCH | @as("PUT") #PUT | @as("POST") #POST | @as("HEAD") #HEAD | @as("GET") #GET]
type lambdaFunctionARN = string
type itemSelection = [@as("all") #all | @as("whitelist") #whitelist | @as("none") #none]
type iCPRecordalStatus = [@as("PENDING") #PENDING | @as("SUSPENDED") #SUSPENDED | @as("APPROVED") #APPROVED]
type httpVersion = [@as("http2") #http2 | @as("http1.1") #http1_1]
type geoRestrictionType = [@as("none") #none | @as("whitelist") #whitelist | @as("blacklist") #blacklist]
type functionStage = [@as("LIVE") #LIVE | @as("DEVELOPMENT") #DEVELOPMENT]
type functionRuntime = [@as("cloudfront-js-1.0") #cloudfront_js_1_0]
type functionName = string
type functionEventObject = NodeJs.Buffer.t;
type functionBlob = NodeJs.Buffer.t;
type functionARN = string
type format = [@as("URLEncoded") #URLEncoded]
type eventType = [@as("origin-response") #origin_response | @as("origin-request") #origin_request | @as("viewer-response") #viewer_response | @as("viewer-request") #viewer_request]
type commentType = string
type certificateSource = [@as("acm") #acm | @as("iam") #iam | @as("cloudfront") #cloudfront]
type cachePolicyType = [@as("custom") #custom | @as("managed") #managed]
type cachePolicyQueryStringBehavior = [@as("all") #all | @as("allExcept") #allExcept | @as("whitelist") #whitelist | @as("none") #none]
type cachePolicyHeaderBehavior = [@as("whitelist") #whitelist | @as("none") #none]
type cachePolicyCookieBehavior = [@as("all") #all | @as("allExcept") #allExcept | @as("whitelist") #whitelist | @as("none") #none]
type viewerCertificate = {
@as("CertificateSource") certificateSource: certificateSource,
@as("Certificate") certificate: amazonawsString,
@as("MinimumProtocolVersion") minimumProtocolVersion: minimumProtocolVersion,
@as("SSLSupportMethod") sSLSupportMethod: sSLSupportMethod,
@as("ACMCertificateArn") aCMCertificateArn: amazonawsString,
@as("IAMCertificateId") iAMCertificateId: amazonawsString,
@as("CloudFrontDefaultCertificate") cloudFrontDefaultCertificate: boolean
}
type trustedKeyGroupIdList = array<amazonawsString>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type streamingLoggingConfig = {
@as("Prefix") prefix: option<amazonawsString>,
@as("Bucket") bucket: option<amazonawsString>,
@as("Enabled") enabled: option<boolean>
}
type statusCodeList = array<integer>
type sslProtocolsList = array<sslProtocol>
type s3OriginConfig = {
@as("OriginAccessIdentity") originAccessIdentity: option<amazonawsString>
}
type s3Origin = {
@as("OriginAccessIdentity") originAccessIdentity: option<amazonawsString>,
@as("DomainName") domainName: option<amazonawsString>
}
type realtimeMetricsSubscriptionConfig = {
@as("RealtimeMetricsSubscriptionStatus") realtimeMetricsSubscriptionStatus: option<realtimeMetricsSubscriptionStatus>
}
type queryStringNamesList = array<amazonawsString>
type queryStringCacheKeysList = array<amazonawsString>
type queryArgProfile = {
@as("ProfileId") profileId: option<amazonawsString>,
@as("QueryArg") queryArg: option<amazonawsString>
}
type publicKeySummary = {
@as("Comment") comment: amazonawsString,
@as("EncodedKey") encodedKey: option<amazonawsString>,
@as("CreatedTime") createdTime: option<timestamp>,
@as("Name") name: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type publicKeyIdList = array<amazonawsString>
type publicKeyConfig = {
@as("Comment") comment: amazonawsString,
@as("EncodedKey") encodedKey: option<amazonawsString>,
@as("Name") name: option<amazonawsString>,
@as("CallerReference") callerReference: option<amazonawsString>
}
type pathList = array<amazonawsString>
type originShield = {
@as("OriginShieldRegion") originShieldRegion: originShieldRegion,
@as("Enabled") enabled: option<boolean>
}
type originGroupMember = {
@as("OriginId") originId: option<amazonawsString>
}
type originCustomHeader = {
@as("HeaderValue") headerValue: option<amazonawsString>,
@as("HeaderName") headerName: option<amazonawsString>
}
type methodsList = array<method>
type loggingConfig = {
@as("Prefix") prefix: option<amazonawsString>,
@as("Bucket") bucket: option<amazonawsString>,
@as("IncludeCookies") includeCookies: option<boolean>,
@as("Enabled") enabled: option<boolean>
}
type locationList = array<amazonawsString>
type lambdaFunctionAssociation = {
@as("IncludeBody") includeBody: boolean,
@as("EventType") eventType: option<eventType>,
@as("LambdaFunctionARN") lambdaFunctionARN: option<lambdaFunctionARN>
}
type kinesisStreamConfig = {
@as("StreamARN") streamARN: option<amazonawsString>,
@as("RoleARN") roleARN: option<amazonawsString>
}
type keyPairIdList = array<amazonawsString>
type invalidationSummary = {
@as("Status") status: option<amazonawsString>,
@as("CreateTime") createTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type headerList = array<amazonawsString>
type functionMetadata = {
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("CreatedTime") createdTime: timestamp,
@as("Stage") stage: functionStage,
@as("FunctionARN") functionARN: option<amazonawsString>
}
type functionExecutionLogList = array<amazonawsString>
type functionConfig = {
@as("Runtime") runtime: option<functionRuntime>,
@as("Comment") comment: option<amazonawsString>
}
type functionAssociation = {
@as("EventType") eventType: option<eventType>,
@as("FunctionARN") functionARN: option<functionARN>
}
type fieldPatternList = array<amazonawsString>
type fieldList = array<amazonawsString>
type distributionIdListSummary = array<amazonawsString>
type customErrorResponse = {
@as("ErrorCachingMinTTL") errorCachingMinTTL: long,
@as("ResponseCode") responseCode: amazonawsString,
@as("ResponsePagePath") responsePagePath: amazonawsString,
@as("ErrorCode") errorCode: option<integer>
}
type cookieNameList = array<amazonawsString>
type contentTypeProfile = {
@as("ContentType") contentType: option<amazonawsString>,
@as("ProfileId") profileId: amazonawsString,
@as("Format") format: option<format>
}
type cloudFrontOriginAccessIdentitySummary = {
@as("Comment") comment: option<amazonawsString>,
@as("S3CanonicalUserId") s3CanonicalUserId: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type cloudFrontOriginAccessIdentityConfig = {
@as("Comment") comment: option<amazonawsString>,
@as("CallerReference") callerReference: option<amazonawsString>
}
type awsAccountNumberList = array<amazonawsString>
type aliasList = array<amazonawsString>
type aliasICPRecordal = {
@as("ICPRecordalStatus") iCPRecordalStatus: iCPRecordalStatus,
@as("CNAME") cNAME: amazonawsString
}
type trustedSigners = {
@as("Items") items: awsAccountNumberList,
@as("Quantity") quantity: option<integer>,
@as("Enabled") enabled: option<boolean>
}
type trustedKeyGroups = {
@as("Items") items: trustedKeyGroupIdList,
@as("Quantity") quantity: option<integer>,
@as("Enabled") enabled: option<boolean>
}
type tagList = array<tag>
type tagKeys = {
@as("Items") items: tagKeyList
}
type statusCodes = {
@as("Items") items: option<statusCodeList>,
@as("Quantity") quantity: option<integer>
}
type queryStringNames = {
@as("Items") items: queryStringNamesList,
@as("Quantity") quantity: option<integer>
}
type queryStringCacheKeys = {
@as("Items") items: queryStringCacheKeysList,
@as("Quantity") quantity: option<integer>
}
type queryArgProfileList = array<queryArgProfile>
type publicKeySummaryList = array<publicKeySummary>
type publicKey = {
@as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>,
@as("CreatedTime") createdTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type paths = {
@as("Items") items: pathList,
@as("Quantity") quantity: option<integer>
}
type originSslProtocols = {
@as("Items") items: option<sslProtocolsList>,
@as("Quantity") quantity: option<integer>
}
type originGroupMemberList = array<originGroupMember>
type originCustomHeadersList = array<originCustomHeader>
type monitoringSubscription = {
@as("RealtimeMetricsSubscriptionConfig") realtimeMetricsSubscriptionConfig: realtimeMetricsSubscriptionConfig
}
type lambdaFunctionAssociationList = array<lambdaFunctionAssociation>
type keyPairIds = {
@as("Items") items: keyPairIdList,
@as("Quantity") quantity: option<integer>
}
type keyGroupConfig = {
@as("Comment") comment: amazonawsString,
@as("Items") items: option<publicKeyIdList>,
@as("Name") name: option<amazonawsString>
}
type invalidationSummaryList = array<invalidationSummary>
type headers = {
@as("Items") items: headerList,
@as("Quantity") quantity: option<integer>
}
type geoRestriction = {
@as("Items") items: locationList,
@as("Quantity") quantity: option<integer>,
@as("RestrictionType") restrictionType: option<geoRestrictionType>
}
type functionSummary = {
@as("FunctionMetadata") functionMetadata: option<functionMetadata>,
@as("FunctionConfig") functionConfig: option<functionConfig>,
@as("Status") status: amazonawsString,
@as("Name") name: option<functionName>
}
type functionAssociationList = array<functionAssociation>
type fieldPatterns = {
@as("Items") items: fieldPatternList,
@as("Quantity") quantity: option<integer>
}
type endPoint = {
@as("KinesisStreamConfig") kinesisStreamConfig: kinesisStreamConfig,
@as("StreamType") streamType: option<amazonawsString>
}
type distributionIdList = {
@as("Items") items: distributionIdListSummary,
@as("Quantity") quantity: option<integer>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>
}
type customErrorResponseList = array<customErrorResponse>
type cookieNames = {
@as("Items") items: cookieNameList,
@as("Quantity") quantity: option<integer>
}
type contentTypeProfileList = array<contentTypeProfile>
type cloudFrontOriginAccessIdentitySummaryList = array<cloudFrontOriginAccessIdentitySummary>
type cloudFrontOriginAccessIdentity = {
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig,
@as("S3CanonicalUserId") s3CanonicalUserId: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type cachedMethods = {
@as("Items") items: option<methodsList>,
@as("Quantity") quantity: option<integer>
}
type aliases = {
@as("Items") items: aliasList,
@as("Quantity") quantity: option<integer>
}
type aliasICPRecordals = array<aliasICPRecordal>
type testResult = {
@as("FunctionOutput") functionOutput: amazonawsString,
@as("FunctionErrorMessage") functionErrorMessage: amazonawsString,
@as("FunctionExecutionLogs") functionExecutionLogs: functionExecutionLogList,
@as("ComputeUtilization") computeUtilization: amazonawsString,
@as("FunctionSummary") functionSummary: functionSummary
}
type tags = {
@as("Items") items: tagList
}
type streamingDistributionSummary = {
@as("Enabled") enabled: option<boolean>,
@as("PriceClass") priceClass: option<priceClass>,
@as("Comment") comment: option<amazonawsString>,
@as("TrustedSigners") trustedSigners: option<trustedSigners>,
@as("Aliases") aliases: option<aliases>,
@as("S3Origin") s3Origin: option<s3Origin>,
@as("DomainName") domainName: option<amazonawsString>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Status") status: option<amazonawsString>,
@as("ARN") aRN: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type streamingDistributionConfig = {
@as("Enabled") enabled: option<boolean>,
@as("PriceClass") priceClass: priceClass,
@as("TrustedSigners") trustedSigners: option<trustedSigners>,
@as("Logging") logging: streamingLoggingConfig,
@as("Comment") comment: option<amazonawsString>,
@as("Aliases") aliases: aliases,
@as("S3Origin") s3Origin: option<s3Origin>,
@as("CallerReference") callerReference: option<amazonawsString>
}
type signer = {
@as("KeyPairIds") keyPairIds: keyPairIds,
@as("AwsAccountNumber") awsAccountNumber: amazonawsString
}
type restrictions = {
@as("GeoRestriction") geoRestriction: option<geoRestriction>
}
type queryArgProfiles = {
@as("Items") items: queryArgProfileList,
@as("Quantity") quantity: option<integer>
}
type publicKeyList = {
@as("Items") items: publicKeySummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
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
@as("Quantity") quantity: option<integer>
}
type originGroupFailoverCriteria = {
@as("StatusCodes") statusCodes: option<statusCodes>
}
type lambdaFunctionAssociations = {
@as("Items") items: lambdaFunctionAssociationList,
@as("Quantity") quantity: option<integer>
}
type keyGroup = {
@as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type kGKeyPairIds = {
@as("KeyPairIds") keyPairIds: keyPairIds,
@as("KeyGroupId") keyGroupId: amazonawsString
}
type invalidationList = {
@as("Items") items: invalidationSummaryList,
@as("Quantity") quantity: option<integer>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>
}
type invalidationBatch = {
@as("CallerReference") callerReference: option<amazonawsString>,
@as("Paths") paths: option<paths>
}
type functionSummaryList = array<functionSummary>
type functionAssociations = {
@as("Items") items: functionAssociationList,
@as("Quantity") quantity: option<integer>
}
type endPointList = array<endPoint>
type encryptionEntity = {
@as("FieldPatterns") fieldPatterns: option<fieldPatterns>,
@as("ProviderId") providerId: option<amazonawsString>,
@as("PublicKeyId") publicKeyId: option<amazonawsString>
}
type customOriginConfig = {
@as("OriginKeepaliveTimeout") originKeepaliveTimeout: integer,
@as("OriginReadTimeout") originReadTimeout: integer,
@as("OriginSslProtocols") originSslProtocols: originSslProtocols,
@as("OriginProtocolPolicy") originProtocolPolicy: option<originProtocolPolicy>,
@as("HTTPSPort") hTTPSPort: option<integer>,
@as("HTTPPort") hTTPPort: option<integer>
}
type customHeaders = {
@as("Items") items: originCustomHeadersList,
@as("Quantity") quantity: option<integer>
}
type customErrorResponses = {
@as("Items") items: customErrorResponseList,
@as("Quantity") quantity: option<integer>
}
type cookiePreference = {
@as("WhitelistedNames") whitelistedNames: cookieNames,
@as("Forward") forward: option<itemSelection>
}
type contentTypeProfiles = {
@as("Items") items: contentTypeProfileList,
@as("Quantity") quantity: option<integer>
}
type cloudFrontOriginAccessIdentityList = {
@as("Items") items: cloudFrontOriginAccessIdentitySummaryList,
@as("Quantity") quantity: option<integer>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>
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
@as("Quantity") quantity: option<integer>
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
@as("Name") name: option<amazonawsString>,
@as("ARN") aRN: option<amazonawsString>
}
type queryArgProfileConfig = {
@as("QueryArgProfiles") queryArgProfiles: queryArgProfiles,
@as("ForwardWhenQueryArgProfileIsUnknown") forwardWhenQueryArgProfileIsUnknown: option<boolean>
}
type parametersInCacheKeyAndForwardedToOrigin = {
@as("QueryStringsConfig") queryStringsConfig: option<cachePolicyQueryStringsConfig>,
@as("CookiesConfig") cookiesConfig: option<cachePolicyCookiesConfig>,
@as("HeadersConfig") headersConfig: option<cachePolicyHeadersConfig>,
@as("EnableAcceptEncodingBrotli") enableAcceptEncodingBrotli: boolean,
@as("EnableAcceptEncodingGzip") enableAcceptEncodingGzip: option<boolean>
}
type originRequestPolicyConfig = {
@as("QueryStringsConfig") queryStringsConfig: option<originRequestPolicyQueryStringsConfig>,
@as("CookiesConfig") cookiesConfig: option<originRequestPolicyCookiesConfig>,
@as("HeadersConfig") headersConfig: option<originRequestPolicyHeadersConfig>,
@as("Name") name: option<amazonawsString>,
@as("Comment") comment: amazonawsString
}
type originGroup = {
@as("Members") members: option<originGroupMembers>,
@as("FailoverCriteria") failoverCriteria: option<originGroupFailoverCriteria>,
@as("Id") id: option<amazonawsString>
}
type origin = {
@as("OriginShield") originShield: originShield,
@as("ConnectionTimeout") connectionTimeout: integer,
@as("ConnectionAttempts") connectionAttempts: integer,
@as("CustomOriginConfig") customOriginConfig: customOriginConfig,
@as("S3OriginConfig") s3OriginConfig: s3OriginConfig,
@as("CustomHeaders") customHeaders: customHeaders,
@as("OriginPath") originPath: amazonawsString,
@as("DomainName") domainName: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type keyGroupSummary = {
@as("KeyGroup") keyGroup: option<keyGroup>
}
type kGKeyPairIdsList = array<kGKeyPairIds>
type invalidation = {
@as("InvalidationBatch") invalidationBatch: option<invalidationBatch>,
@as("CreateTime") createTime: option<timestamp>,
@as("Status") status: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type functionList = {
@as("Items") items: functionSummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type forwardedValues = {
@as("QueryStringCacheKeys") queryStringCacheKeys: queryStringCacheKeys,
@as("Headers") headers: headers,
@as("Cookies") cookies: option<cookiePreference>,
@as("QueryString") queryString: option<boolean>
}
type encryptionEntityList = array<encryptionEntity>
type contentTypeProfileConfig = {
@as("ContentTypeProfiles") contentTypeProfiles: contentTypeProfiles,
@as("ForwardWhenContentTypeIsUnknown") forwardWhenContentTypeIsUnknown: option<boolean>
}
type streamingDistributionList = {
@as("Items") items: streamingDistributionSummaryList,
@as("Quantity") quantity: option<integer>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>
}
type realtimeLogConfigList = array<realtimeLogConfig>
type originRequestPolicy = {
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type originList = array<origin>
type originGroupList = array<originGroup>
type keyGroupSummaryList = array<keyGroupSummary>
type fieldLevelEncryptionSummary = {
@as("ContentTypeProfileConfig") contentTypeProfileConfig: contentTypeProfileConfig,
@as("QueryArgProfileConfig") queryArgProfileConfig: queryArgProfileConfig,
@as("Comment") comment: amazonawsString,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type fieldLevelEncryptionConfig = {
@as("ContentTypeProfileConfig") contentTypeProfileConfig: contentTypeProfileConfig,
@as("QueryArgProfileConfig") queryArgProfileConfig: queryArgProfileConfig,
@as("Comment") comment: amazonawsString,
@as("CallerReference") callerReference: option<amazonawsString>
}
type encryptionEntities = {
@as("Items") items: encryptionEntityList,
@as("Quantity") quantity: option<integer>
}
type defaultCacheBehavior = {
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("MinTTL") minTTL: long,
@as("ForwardedValues") forwardedValues: forwardedValues,
@as("OriginRequestPolicyId") originRequestPolicyId: amazonawsString,
@as("CachePolicyId") cachePolicyId: amazonawsString,
@as("RealtimeLogConfigArn") realtimeLogConfigArn: amazonawsString,
@as("FieldLevelEncryptionId") fieldLevelEncryptionId: amazonawsString,
@as("FunctionAssociations") functionAssociations: functionAssociations,
@as("LambdaFunctionAssociations") lambdaFunctionAssociations: lambdaFunctionAssociations,
@as("Compress") compress: boolean,
@as("SmoothStreaming") smoothStreaming: boolean,
@as("AllowedMethods") allowedMethods: allowedMethods,
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<viewerProtocolPolicy>,
@as("TrustedKeyGroups") trustedKeyGroups: trustedKeyGroups,
@as("TrustedSigners") trustedSigners: trustedSigners,
@as("TargetOriginId") targetOriginId: option<amazonawsString>
}
type cachePolicyConfig = {
@as("ParametersInCacheKeyAndForwardedToOrigin") parametersInCacheKeyAndForwardedToOrigin: parametersInCacheKeyAndForwardedToOrigin,
@as("MinTTL") minTTL: option<long>,
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("Name") name: option<amazonawsString>,
@as("Comment") comment: amazonawsString
}
type cacheBehavior = {
@as("MaxTTL") maxTTL: long,
@as("DefaultTTL") defaultTTL: long,
@as("MinTTL") minTTL: long,
@as("ForwardedValues") forwardedValues: forwardedValues,
@as("OriginRequestPolicyId") originRequestPolicyId: amazonawsString,
@as("CachePolicyId") cachePolicyId: amazonawsString,
@as("RealtimeLogConfigArn") realtimeLogConfigArn: amazonawsString,
@as("FieldLevelEncryptionId") fieldLevelEncryptionId: amazonawsString,
@as("FunctionAssociations") functionAssociations: functionAssociations,
@as("LambdaFunctionAssociations") lambdaFunctionAssociations: lambdaFunctionAssociations,
@as("Compress") compress: boolean,
@as("SmoothStreaming") smoothStreaming: boolean,
@as("AllowedMethods") allowedMethods: allowedMethods,
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<viewerProtocolPolicy>,
@as("TrustedKeyGroups") trustedKeyGroups: trustedKeyGroups,
@as("TrustedSigners") trustedSigners: trustedSigners,
@as("TargetOriginId") targetOriginId: option<amazonawsString>,
@as("PathPattern") pathPattern: option<amazonawsString>
}
type activeTrustedSigners = {
@as("Items") items: signerList,
@as("Quantity") quantity: option<integer>,
@as("Enabled") enabled: option<boolean>
}
type activeTrustedKeyGroups = {
@as("Items") items: kGKeyPairIdsList,
@as("Quantity") quantity: option<integer>,
@as("Enabled") enabled: option<boolean>
}
type streamingDistribution = {
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>,
@as("ActiveTrustedSigners") activeTrustedSigners: option<activeTrustedSigners>,
@as("DomainName") domainName: option<amazonawsString>,
@as("LastModifiedTime") lastModifiedTime: timestamp,
@as("Status") status: option<amazonawsString>,
@as("ARN") aRN: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type realtimeLogConfigs = {
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("Items") items: realtimeLogConfigList,
@as("MaxItems") maxItems: option<integer>
}
type origins = {
@as("Items") items: option<originList>,
@as("Quantity") quantity: option<integer>
}
type originRequestPolicySummary = {
@as("OriginRequestPolicy") originRequestPolicy: option<originRequestPolicy>,
@as("Type") type_: option<originRequestPolicyType>
}
type originGroups = {
@as("Items") items: originGroupList,
@as("Quantity") quantity: option<integer>
}
type keyGroupList = {
@as("Items") items: keyGroupSummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type fieldLevelEncryptionSummaryList = array<fieldLevelEncryptionSummary>
type fieldLevelEncryptionProfileSummary = {
@as("Comment") comment: amazonawsString,
@as("EncryptionEntities") encryptionEntities: option<encryptionEntities>,
@as("Name") name: option<amazonawsString>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type fieldLevelEncryptionProfileConfig = {
@as("EncryptionEntities") encryptionEntities: option<encryptionEntities>,
@as("Comment") comment: amazonawsString,
@as("CallerReference") callerReference: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
type fieldLevelEncryption = {
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type cachePolicy = {
@as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type cacheBehaviorList = array<cacheBehavior>
type originRequestPolicySummaryList = array<originRequestPolicySummary>
type fieldLevelEncryptionProfileSummaryList = array<fieldLevelEncryptionProfileSummary>
type fieldLevelEncryptionProfile = {
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Id") id: option<amazonawsString>
}
type fieldLevelEncryptionList = {
@as("Items") items: fieldLevelEncryptionSummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type cachePolicySummary = {
@as("CachePolicy") cachePolicy: option<cachePolicy>,
@as("Type") type_: option<cachePolicyType>
}
type cacheBehaviors = {
@as("Items") items: cacheBehaviorList,
@as("Quantity") quantity: option<integer>
}
type originRequestPolicyList = {
@as("Items") items: originRequestPolicySummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type fieldLevelEncryptionProfileList = {
@as("Items") items: fieldLevelEncryptionProfileSummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type distributionSummary = {
@as("AliasICPRecordals") aliasICPRecordals: aliasICPRecordals,
@as("IsIPV6Enabled") isIPV6Enabled: option<boolean>,
@as("HttpVersion") httpVersion: option<httpVersion>,
@as("WebACLId") webACLId: option<amazonawsString>,
@as("Restrictions") restrictions: option<restrictions>,
@as("ViewerCertificate") viewerCertificate: option<viewerCertificate>,
@as("Enabled") enabled: option<boolean>,
@as("PriceClass") priceClass: option<priceClass>,
@as("Comment") comment: option<amazonawsString>,
@as("CustomErrorResponses") customErrorResponses: option<customErrorResponses>,
@as("CacheBehaviors") cacheBehaviors: option<cacheBehaviors>,
@as("DefaultCacheBehavior") defaultCacheBehavior: option<defaultCacheBehavior>,
@as("OriginGroups") originGroups: originGroups,
@as("Origins") origins: option<origins>,
@as("Aliases") aliases: option<aliases>,
@as("DomainName") domainName: option<amazonawsString>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Status") status: option<amazonawsString>,
@as("ARN") aRN: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type distributionConfig = {
@as("IsIPV6Enabled") isIPV6Enabled: boolean,
@as("HttpVersion") httpVersion: httpVersion,
@as("WebACLId") webACLId: amazonawsString,
@as("Restrictions") restrictions: restrictions,
@as("ViewerCertificate") viewerCertificate: viewerCertificate,
@as("Enabled") enabled: option<boolean>,
@as("PriceClass") priceClass: priceClass,
@as("Logging") logging: loggingConfig,
@as("Comment") comment: option<commentType>,
@as("CustomErrorResponses") customErrorResponses: customErrorResponses,
@as("CacheBehaviors") cacheBehaviors: cacheBehaviors,
@as("DefaultCacheBehavior") defaultCacheBehavior: option<defaultCacheBehavior>,
@as("OriginGroups") originGroups: originGroups,
@as("Origins") origins: option<origins>,
@as("DefaultRootObject") defaultRootObject: amazonawsString,
@as("Aliases") aliases: aliases,
@as("CallerReference") callerReference: option<amazonawsString>
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
@as("DomainName") domainName: option<amazonawsString>,
@as("InProgressInvalidationBatches") inProgressInvalidationBatches: option<integer>,
@as("LastModifiedTime") lastModifiedTime: option<timestamp>,
@as("Status") status: option<amazonawsString>,
@as("ARN") aRN: option<amazonawsString>,
@as("Id") id: option<amazonawsString>
}
type cachePolicyList = {
@as("Items") items: cachePolicySummaryList,
@as("Quantity") quantity: option<integer>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString
}
type distributionList = {
@as("Items") items: distributionSummaryList,
@as("Quantity") quantity: option<integer>,
@as("IsTruncated") isTruncated: option<boolean>,
@as("MaxItems") maxItems: option<integer>,
@as("NextMarker") nextMarker: amazonawsString,
@as("Marker") marker: option<amazonawsString>
}
type clientType;
@module("@aws-sdk/client-cloudfront") @new external createClient: unit => clientType = "CloudFrontClient";
module GetFunction = {
  type t;
  type request = {
@as("Stage") stage: functionStage,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("ContentType") contentType: amazonawsString,
@as("ETag") eTag: amazonawsString,
@as("FunctionCode") functionCode: functionBlob
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStreamingDistribution = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRealtimeLogConfig = {
  type t;
  type request = {
@as("ARN") aRN: amazonawsString,
@as("Name") name: amazonawsString
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteRealtimeLogConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePublicKey = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeletePublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOriginRequestPolicy = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteMonitoringSubscription = {
  type t;
  type request = {
@as("DistributionId") distributionId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteMonitoringSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKeyGroup = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunction = {
  type t;
  type request = {
@as("IfMatch") ifMatch: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDistribution = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCachePolicy = {
  type t;
  type request = {
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "DeleteCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetPublicKeyConfig = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("PublicKeyConfig") publicKeyConfig: publicKeyConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetPublicKeyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCloudFrontOriginAccessIdentityConfig = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: cloudFrontOriginAccessIdentityConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCloudFrontOriginAccessIdentityConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePublicKey = {
  type t;
  type request = {
@as("PublicKeyConfig") publicKeyConfig: option<publicKeyConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("IfMatch") ifMatch: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FunctionSummary") functionSummary: functionSummary
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("CloudFrontOriginAccessIdentityConfig") cloudFrontOriginAccessIdentityConfig: option<cloudFrontOriginAccessIdentityConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("IfMatch") ifMatch: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
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
@as("OriginRequestPolicyId") originRequestPolicyId: option<amazonawsString>,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("KeyGroupId") keyGroupId: option<amazonawsString>,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("CachePolicyId") cachePolicyId: option<amazonawsString>,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("PublicKey") publicKey: publicKey
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMonitoringSubscription = {
  type t;
  type request = {
@as("DistributionId") distributionId: option<amazonawsString>
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("KeyGroupConfig") keyGroupConfig: keyGroupConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetKeyGroupConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCloudFrontOriginAccessIdentity = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("CloudFrontOriginAccessIdentity") cloudFrontOriginAccessIdentity: cloudFrontOriginAccessIdentity
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFunction = {
  type t;
  type request = {
@as("Stage") stage: functionStage,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("PublicKey") publicKey: publicKey
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreatePublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMonitoringSubscription = {
  type t;
  type request = {
@as("MonitoringSubscription") monitoringSubscription: option<monitoringSubscription>,
@as("DistributionId") distributionId: option<amazonawsString>
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("CloudFrontOriginAccessIdentity") cloudFrontOriginAccessIdentity: cloudFrontOriginAccessIdentity
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateCloudFrontOriginAccessIdentityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateKeyGroup = {
  type t;
  type request = {
@as("KeyGroupConfig") keyGroupConfig: option<keyGroupConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("IfMatch") ifMatch: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString,
@as("DistributionId") distributionId: option<amazonawsString>
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("StreamingDistributionConfig") streamingDistributionConfig: streamingDistributionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetStreamingDistributionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyGroup = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("KeyGroup") keyGroup: keyGroup
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateKeyGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRealtimeLogConfig = {
  type t;
  type request = {
@as("SamplingRate") samplingRate: long,
@as("ARN") aRN: amazonawsString,
@as("Name") name: amazonawsString,
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("ARN") aRN: amazonawsString,
@as("Name") name: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: originRequestPolicyConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetOriginRequestPolicyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvalidation = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>,
@as("DistributionId") distributionId: option<amazonawsString>
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
@as("Name") name: option<amazonawsString>,
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
@as("DistributionId") distributionId: option<amazonawsString>
}
  type response = {
@as("Invalidation") invalidation: invalidation,
@as("Location") location: amazonawsString
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateInvalidationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOriginRequestPolicy = {
  type t;
  type request = {
@as("OriginRequestPolicyConfig") originRequestPolicyConfig: option<originRequestPolicyConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreamingDistributions = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: fieldLevelEncryptionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCachePolicyConfig = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("OriginRequestPolicy") originRequestPolicy: originRequestPolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateOriginRequestPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStreamingDistribution = {
  type t;
  type request = {
@as("StreamingDistributionConfig") streamingDistributionConfig: option<streamingDistributionConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFieldLevelEncryptionConfig = {
  type t;
  type request = {
@as("FieldLevelEncryptionConfig") fieldLevelEncryptionConfig: option<fieldLevelEncryptionConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FieldLevelEncryption") fieldLevelEncryption: fieldLevelEncryption
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFieldLevelEncryptionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCachePolicy = {
  type t;
  type request = {
@as("CachePolicyConfig") cachePolicyConfig: option<cachePolicyConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("CachePolicy") cachePolicy: cachePolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRealtimeLogConfigs = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxItems") maxItems: apiInteger
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("StreamingDistribution") streamingDistribution: streamingDistribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetStreamingDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryptionProfileConfig = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: fieldLevelEncryptionProfileConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionProfileConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFieldLevelEncryption = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FieldLevelEncryption") fieldLevelEncryption: fieldLevelEncryption
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetFieldLevelEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCachePolicy = {
  type t;
  type request = {
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("CachePolicy") cachePolicy: cachePolicy
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateCachePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFieldLevelEncryptionProfile = {
  type t;
  type request = {
@as("FieldLevelEncryptionProfileConfig") fieldLevelEncryptionProfileConfig: option<fieldLevelEncryptionProfileConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("FieldLevelEncryptionProfile") fieldLevelEncryptionProfile: fieldLevelEncryptionProfile
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFieldLevelEncryptionConfigs = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("FieldLevelEncryptionProfile") fieldLevelEncryptionProfile: fieldLevelEncryptionProfile
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateFieldLevelEncryptionProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOriginRequestPolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString,
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("DistributionConfig") distributionConfig: distributionConfig
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "GetDistributionConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDistribution = {
  type t;
  type request = {
@as("DistributionConfig") distributionConfig: option<distributionConfig>,
@as("IfMatch") ifMatch: amazonawsString,
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "UpdateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCachePolicies = {
  type t;
  type request = {
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString,
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
@as("Id") id: option<amazonawsString>
}
  type response = {
@as("ETag") eTag: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
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
@as("ETag") eTag: amazonawsString,
@as("Location") location: amazonawsString,
@as("Distribution") distribution: distribution
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "CreateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributionsByWebACLId = {
  type t;
  type request = {
@as("WebACLId") webACLId: option<amazonawsString>,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("RealtimeLogConfigArn") realtimeLogConfigArn: amazonawsString,
@as("RealtimeLogConfigName") realtimeLogConfigName: amazonawsString,
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
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
@as("MaxItems") maxItems: apiInteger,
@as("Marker") marker: amazonawsString
}
  type response = {
@as("DistributionList") distributionList: distributionList
}
  @module("@aws-sdk/client-cloudfront") @new external new_: (request) => t = "ListDistributionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
