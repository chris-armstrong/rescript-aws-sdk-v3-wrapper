type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type tokenType = [@as("REFRESH_TOKEN") #REFRESHTOKEN]
type tokenString = string
type string_ = string
type signedToken = string
type resourceType = [@as("SYSTEMS_MANAGER_MANAGED_INSTANCE") #SYSTEMSMANAGERMANAGEDINSTANCE | @as("RDS") #RDS | @as("EC2_AMI") #EC2AMI | @as("EC2_HOST") #EC2HOST | @as("EC2_INSTANCE") #EC2INSTANCE]
type reportType = [@as("LicenseConfigurationUsageReport") #LicenseConfigurationUsageReport | @as("LicenseConfigurationSummaryReport") #LicenseConfigurationSummaryReport]
type reportGeneratorName = string
type reportFrequencyType = [@as("MONTH") #MONTH | @as("WEEK") #WEEK | @as("DAY") #DAY]
type renewType = [@as("Monthly") #Monthly | @as("Weekly") #Weekly | @as("None") #None]
type receivedStatus = [@as("DISABLED") #DISABLED | @as("DELETED") #DELETED | @as("FAILED_WORKFLOW") #FAILEDWORKFLOW | @as("ACTIVE") #ACTIVE | @as("REJECTED") #REJECTED | @as("PENDING_ACCEPT") #PENDINGACCEPT | @as("PENDING_WORKFLOW") #PENDINGWORKFLOW]
type message = string
type maxSize100 = int
type long = float
type location = string
type licenseStatus = [@as("DELETED") #DELETED | @as("PENDING_DELETE") #PENDINGDELETE | @as("EXPIRED") #EXPIRED | @as("SUSPENDED") #SUSPENDED | @as("DEACTIVATED") #DEACTIVATED | @as("PENDING_AVAILABLE") #PENDINGAVAILABLE | @as("AVAILABLE") #AVAILABLE]
type licenseDeletionStatus = [@as("DELETED") #DELETED | @as("PENDING_DELETE") #PENDINGDELETE]
type licenseCountingType = [@as("Socket") #Socket | @as("Core") #Core | @as("Instance") #Instance | @as("vCPU") #VCPU]
type licenseConfigurationStatus = [@as("DISABLED") #DISABLED | @as("AVAILABLE") #AVAILABLE]
type inventoryFilterCondition = [@as("CONTAINS") #CONTAINS | @as("BEGINS_WITH") #BEGINSWITH | @as("NOT_EQUALS") #NOTEQUALS | @as("EQUALS") #EQUALS]
type integer_ = int
type idempotencyToken = string
type iso8601DateTime = string
type grantStatus = [@as("DISABLED") #DISABLED | @as("PENDING_DELETE") #PENDINGDELETE | @as("DELETED") #DELETED | @as("FAILED_WORKFLOW") #FAILEDWORKFLOW | @as("ACTIVE") #ACTIVE | @as("REJECTED") #REJECTED | @as("PENDING_ACCEPT") #PENDINGACCEPT | @as("PENDING_WORKFLOW") #PENDINGWORKFLOW]
type filterValue = string
type filterName = string
type entitlementUnit = [@as("Count/Second") #CountSecond | @as("Terabits/Second") #TerabitsSecond | @as("Gigabits/Second") #GigabitsSecond | @as("Megabits/Second") #MegabitsSecond | @as("Kilobits/Second") #KilobitsSecond | @as("Bits/Second") #BitsSecond | @as("Terabytes/Second") #TerabytesSecond | @as("Gigabytes/Second") #GigabytesSecond | @as("Megabytes/Second") #MegabytesSecond | @as("Kilobytes/Second") #KilobytesSecond | @as("Bytes/Second") #BytesSecond | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds | @as("None") #None | @as("Count") #Count]
type entitlementDataUnit = [@as("Count/Second") #CountSecond | @as("Terabits/Second") #TerabitsSecond | @as("Gigabits/Second") #GigabitsSecond | @as("Megabits/Second") #MegabitsSecond | @as("Kilobits/Second") #KilobitsSecond | @as("Bits/Second") #BitsSecond | @as("Terabytes/Second") #TerabytesSecond | @as("Gigabytes/Second") #GigabytesSecond | @as("Megabytes/Second") #MegabytesSecond | @as("Kilobytes/Second") #KilobytesSecond | @as("Bytes/Second") #BytesSecond | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds | @as("None") #None | @as("Count") #Count]
type digitalSignatureMethod = [@as("JWT_PS384") #JWTPS384]
type dateTime = Js.Date.t;
type clientToken = string
type clientRequestToken = string
type checkoutType = [@as("PROVISIONAL") #PROVISIONAL]
type boxLong = float
type boxInteger = int
type boxBoolean = bool
type boolean_ = bool
type arn = string
type allowedOperation = [@as("CreateToken") #CreateToken | @as("ListPurchasedLicenses") #ListPurchasedLicenses | @as("ExtendConsumptionLicense") #ExtendConsumptionLicense | @as("CheckInLicense") #CheckInLicense | @as("CheckoutBorrowLicense") #CheckoutBorrowLicense | @as("CheckoutLicense") #CheckoutLicense | @as("CreateGrant") #CreateGrant]
type tagKeyList = array<string_>
type tag = {
@as("Value") value: option<string_>,
@as("Key") key: option<string_>
}
type stringList = array<string_>
type s3Location = {
keyPrefix: option<string_>,
bucket: option<string_>
}
type resourceInventory = {
@as("ResourceOwningAccountId") resourceOwningAccountId: option<string_>,
@as("PlatformVersion") platformVersion: option<string_>,
@as("Platform") platform: option<string_>,
@as("ResourceArn") resourceArn: option<string_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceId") resourceId: option<string_>
}
type reportTypeList = array<reportType>
type reportFrequency = {
period: option<reportFrequencyType>,
value: option<integer_>
}
type provisionalConfiguration = {
@as("MaxTimeToLiveInMinutes") maxTimeToLiveInMinutes: boxInteger
}
type principalArnList = array<arn>
type organizationConfiguration = {
@as("EnableIntegration") enableIntegration: boolean_
}
type metadata = {
@as("Value") value: option<string_>,
@as("Name") name: option<string_>
}
type maxSize3StringList = array<string_>
type managedResourceSummary = {
@as("AssociationCount") associationCount: option<boxLong>,
@as("ResourceType") resourceType: option<resourceType>
}
type licenseSpecification = {
@as("AmiAssociationScope") amiAssociationScope: option<string_>,
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
type licenseConfigurationUsage = {
@as("ConsumedLicenses") consumedLicenses: option<boxLong>,
@as("AssociationTime") associationTime: option<dateTime>,
@as("ResourceOwnerId") resourceOwnerId: option<string_>,
@as("ResourceStatus") resourceStatus: option<string_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<string_>
}
type licenseConfigurationAssociation = {
@as("AmiAssociationScope") amiAssociationScope: option<string_>,
@as("AssociationTime") associationTime: option<dateTime>,
@as("ResourceOwnerId") resourceOwnerId: option<string_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<string_>
}
type issuerDetails = {
@as("KeyFingerprint") keyFingerprint: option<string_>,
@as("SignKey") signKey: option<string_>,
@as("Name") name: option<string_>
}
type issuer = {
@as("SignKey") signKey: option<string_>,
@as("Name") name: string_
}
type inventoryFilter = {
@as("Value") value: option<string_>,
@as("Condition") condition: inventoryFilterCondition,
@as("Name") name: string_
}
type filterValues = array<filterValue>
type entitlementUsage = {
@as("Unit") unit_: entitlementDataUnit,
@as("MaxCount") maxCount: option<string_>,
@as("ConsumedValue") consumedValue: string_,
@as("Name") name: string_
}
type entitlementData = {
@as("Unit") unit_: entitlementDataUnit,
@as("Value") value: option<string_>,
@as("Name") name: string_
}
type entitlement = {
@as("AllowCheckIn") allowCheckIn: option<boxBoolean>,
@as("Unit") unit_: entitlementUnit,
@as("Overage") overage: option<boxBoolean>,
@as("MaxCount") maxCount: option<long>,
@as("Value") value: option<string_>,
@as("Name") name: string_
}
type datetimeRange = {
@as("End") end: option<iso8601DateTime>,
@as("Begin") begin: iso8601DateTime
}
type consumedLicenseSummary = {
@as("ConsumedLicenses") consumedLicenses: option<boxLong>,
@as("ResourceType") resourceType: option<resourceType>
}
type borrowConfiguration = {
@as("MaxTimeToLiveInMinutes") maxTimeToLiveInMinutes: boxInteger,
@as("AllowEarlyCheckIn") allowEarlyCheckIn: boxBoolean
}
type automatedDiscoveryInformation = {
@as("LastRunTime") lastRunTime: option<dateTime>
}
type arnList = array<arn>
type allowedOperationList = array<allowedOperation>
type tokenData = {
@as("Status") status: option<string_>,
@as("RoleArns") roleArns: option<arnList>,
@as("TokenProperties") tokenProperties: option<maxSize3StringList>,
@as("ExpirationTime") expirationTime: option<iso8601DateTime>,
@as("LicenseArn") licenseArn: option<string_>,
@as("TokenType") tokenType: option<string_>,
@as("TokenId") tokenId: option<string_>
}
type tagList_ = array<tag>
type resourceInventoryList = array<resourceInventory>
type reportContext = {
licenseConfigurationArns: arnList
}
type receivedMetadata = {
@as("AllowedOperations") allowedOperations: option<allowedOperationList>,
@as("ReceivedStatus") receivedStatus: option<receivedStatus>
}
type productInformationFilter = {
@as("ProductInformationFilterComparator") productInformationFilterComparator: string_,
@as("ProductInformationFilterValue") productInformationFilterValue: option<stringList>,
@as("ProductInformationFilterName") productInformationFilterName: string_
}
type metadataList = array<metadata>
type managedResourceSummaryList = array<managedResourceSummary>
type licenseSpecifications = array<licenseSpecification>
type licenseConfigurationUsageList = array<licenseConfigurationUsage>
type licenseConfigurationAssociations = array<licenseConfigurationAssociation>
type inventoryFilterList = array<inventoryFilter>
type grant = {
@as("GrantedOperations") grantedOperations: allowedOperationList,
@as("Version") version: string_,
@as("StatusReason") statusReason: option<string_>,
@as("GrantStatus") grantStatus: grantStatus,
@as("HomeRegion") homeRegion: string_,
@as("GranteePrincipalArn") granteePrincipalArn: arn,
@as("LicenseArn") licenseArn: arn,
@as("ParentArn") parentArn: arn,
@as("GrantName") grantName: string_,
@as("GrantArn") grantArn: arn
}
type filter = {
@as("Values") values: option<filterValues>,
@as("Name") name: option<filterName>
}
type entitlementUsageList = array<entitlementUsage>
type entitlementList = array<entitlement>
type entitlementDataList = array<entitlementData>
type consumptionConfiguration = {
@as("BorrowConfiguration") borrowConfiguration: option<borrowConfiguration>,
@as("ProvisionalConfiguration") provisionalConfiguration: option<provisionalConfiguration>,
@as("RenewType") renewType: option<renewType>
}
type consumedLicenseSummaryList = array<consumedLicenseSummary>
type tokenList = array<tokenData>
type reportGenerator = {
@as("Tags") tags: option<tagList_>,
@as("CreateTime") createTime: option<string_>,
@as("S3Location") s3Location: option<s3Location>,
@as("Description") description: option<string_>,
@as("ReportCreatorAccount") reportCreatorAccount: option<string_>,
@as("LastReportGenerationTime") lastReportGenerationTime: option<string_>,
@as("LastRunFailureReason") lastRunFailureReason: option<string_>,
@as("LastRunStatus") lastRunStatus: option<string_>,
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: option<string_>,
@as("ReportFrequency") reportFrequency: option<reportFrequency>,
@as("ReportContext") reportContext: option<reportContext>,
@as("ReportType") reportType: option<reportTypeList>,
@as("ReportGeneratorName") reportGeneratorName: option<string_>
}
type productInformationFilterList = array<productInformationFilter>
type licenseUsage = {
@as("EntitlementUsages") entitlementUsages: option<entitlementUsageList>
}
type licenseOperationFailure = {
@as("MetadataList") metadataList: option<metadataList>,
@as("OperationRequestedBy") operationRequestedBy: option<string_>,
@as("ResourceOwnerId") resourceOwnerId: option<string_>,
@as("OperationName") operationName: option<string_>,
@as("FailureTime") failureTime: option<dateTime>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<string_>
}
type license = {
@as("Version") version: option<string_>,
@as("CreateTime") createTime: option<iso8601DateTime>,
@as("LicenseMetadata") licenseMetadata: option<metadataList>,
@as("ConsumptionConfiguration") consumptionConfiguration: option<consumptionConfiguration>,
@as("Entitlements") entitlements: option<entitlementList>,
@as("Beneficiary") beneficiary: option<string_>,
@as("Validity") validity: option<datetimeRange>,
@as("Status") status: option<licenseStatus>,
@as("HomeRegion") homeRegion: option<string_>,
@as("Issuer") issuer: option<issuerDetails>,
@as("ProductSKU") productSKU: option<string_>,
@as("ProductName") productName: option<string_>,
@as("LicenseName") licenseName: option<string_>,
@as("LicenseArn") licenseArn: option<arn>
}
type grantedLicense = {
@as("ReceivedMetadata") receivedMetadata: option<receivedMetadata>,
@as("Version") version: option<string_>,
@as("CreateTime") createTime: option<iso8601DateTime>,
@as("LicenseMetadata") licenseMetadata: option<metadataList>,
@as("ConsumptionConfiguration") consumptionConfiguration: option<consumptionConfiguration>,
@as("Entitlements") entitlements: option<entitlementList>,
@as("Beneficiary") beneficiary: option<string_>,
@as("Validity") validity: option<datetimeRange>,
@as("Status") status: option<licenseStatus>,
@as("HomeRegion") homeRegion: option<string_>,
@as("Issuer") issuer: option<issuerDetails>,
@as("ProductSKU") productSKU: option<string_>,
@as("ProductName") productName: option<string_>,
@as("LicenseName") licenseName: option<string_>,
@as("LicenseArn") licenseArn: option<arn>
}
type grantList = array<grant>
type filters = array<filter>
type filterList = array<filter>
type reportGeneratorList = array<reportGenerator>
type productInformation = {
@as("ProductInformationFilterList") productInformationFilterList: productInformationFilterList,
@as("ResourceType") resourceType: string_
}
type licenseOperationFailureList = array<licenseOperationFailure>
type licenseList = array<license>
type grantedLicenseList = array<grantedLicense>
type productInformationList = array<productInformation>
type licenseConfiguration = {
@as("AutomatedDiscoveryInformation") automatedDiscoveryInformation: option<automatedDiscoveryInformation>,
@as("ProductInformationList") productInformationList: option<productInformationList>,
@as("ManagedResourceSummaryList") managedResourceSummaryList: option<managedResourceSummaryList>,
@as("ConsumedLicenseSummaryList") consumedLicenseSummaryList: option<consumedLicenseSummaryList>,
@as("OwnerAccountId") ownerAccountId: option<string_>,
@as("Status") status: option<string_>,
@as("ConsumedLicenses") consumedLicenses: option<boxLong>,
@as("DisassociateWhenNotFound") disassociateWhenNotFound: option<boxBoolean>,
@as("LicenseCountHardLimit") licenseCountHardLimit: option<boxBoolean>,
@as("LicenseCount") licenseCount: option<boxLong>,
@as("LicenseRules") licenseRules: option<stringList>,
@as("LicenseCountingType") licenseCountingType: option<licenseCountingType>,
@as("Description") description: option<string_>,
@as("Name") name: option<string_>,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
@as("LicenseConfigurationId") licenseConfigurationId: option<string_>
}
type licenseConfigurations = array<licenseConfiguration>
type awsServiceClient;
@module("@aws-sdk/client-license-manager") @new external createClient: unit => awsServiceClient = "LicenseManagerClient";
module RejectGrant = {
  type t;
  type request = {
@as("GrantArn") grantArn: arn
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<grantStatus>,
@as("GrantArn") grantArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "RejectGrantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExtendLicenseConsumption = {
  type t;
  type request = {
@as("DryRun") dryRun: option<boolean_>,
@as("LicenseConsumptionToken") licenseConsumptionToken: string_
}
  type response = {
@as("Expiration") expiration: option<iso8601DateTime>,
@as("LicenseConsumptionToken") licenseConsumptionToken: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ExtendLicenseConsumptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteToken = {
  type t;
  type request = {
@as("TokenId") tokenId: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseManagerReportGeneratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLicenseConfiguration = {
  type t;
  type request = {
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLicense = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: string_,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("DeletionDate") deletionDate: option<iso8601DateTime>,
@as("Status") status: option<licenseDeletionStatus>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGrant = {
  type t;
  type request = {
@as("Version") version: string_,
@as("GrantArn") grantArn: arn
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<grantStatus>,
@as("GrantArn") grantArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteGrantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckInLicense = {
  type t;
  type request = {
@as("Beneficiary") beneficiary: option<string_>,
@as("LicenseConsumptionToken") licenseConsumptionToken: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckInLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptGrant = {
  type t;
  type request = {
@as("GrantArn") grantArn: arn
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<grantStatus>,
@as("GrantArn") grantArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "AcceptGrantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceSettings = {
  type t;
  type request = {
@as("EnableCrossAccountsDiscovery") enableCrossAccountsDiscovery: option<boxBoolean>,
@as("OrganizationConfiguration") organizationConfiguration: option<organizationConfiguration>,
@as("SnsTopicArn") snsTopicArn: option<string_>,
@as("S3BucketArn") s3BucketArn: option<string_>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateServiceSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServiceSettings = {
  type t;
  type request = unit
  type response = {
@as("LicenseManagerResourceShareArn") licenseManagerResourceShareArn: option<string_>,
@as("EnableCrossAccountsDiscovery") enableCrossAccountsDiscovery: option<boxBoolean>,
@as("OrganizationConfiguration") organizationConfiguration: option<organizationConfiguration>,
@as("SnsTopicArn") snsTopicArn: option<string_>,
@as("S3BucketArn") s3BucketArn: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetServiceSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccessToken = {
  type t;
  type request = {
@as("TokenProperties") tokenProperties: option<maxSize3StringList>,
@as("Token") token: tokenString
}
  type response = {
@as("AccessToken") accessToken: option<tokenString>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetAccessTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
@as("ClientToken") clientToken: idempotencyToken,
@as("TokenProperties") tokenProperties: option<maxSize3StringList>,
@as("ExpirationInDays") expirationInDays: option<integer_>,
@as("RoleArns") roleArns: option<arnList>,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("Token") token: option<tokenString>,
@as("TokenType") tokenType: option<tokenType>,
@as("TokenId") tokenId: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateTokenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGrantVersion = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: option<string_>,
@as("Status") status: option<grantStatus>,
@as("AllowedOperations") allowedOperations: option<allowedOperationList>,
@as("GrantName") grantName: option<string_>,
@as("GrantArn") grantArn: arn,
@as("ClientToken") clientToken: string_
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<grantStatus>,
@as("GrantArn") grantArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateGrantVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGrant = {
  type t;
  type request = {
@as("AllowedOperations") allowedOperations: allowedOperationList,
@as("HomeRegion") homeRegion: string_,
@as("Principals") principals: principalArnList,
@as("LicenseArn") licenseArn: arn,
@as("GrantName") grantName: string_,
@as("ClientToken") clientToken: string_
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<grantStatus>,
@as("GrantArn") grantArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateGrantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseSpecificationsForResource = {
  type t;
  type request = {
@as("RemoveLicenseSpecifications") removeLicenseSpecifications: option<licenseSpecifications>,
@as("AddLicenseSpecifications") addLicenseSpecifications: option<licenseSpecifications>,
@as("ResourceArn") resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseSpecificationsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("Description") description: option<string_>,
@as("ClientToken") clientToken: clientRequestToken,
@as("ReportFrequency") reportFrequency: reportFrequency,
@as("ReportContext") reportContext: reportContext,
@as("Type") type_: reportTypeList,
@as("ReportGeneratorName") reportGeneratorName: reportGeneratorName,
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseManagerReportGeneratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResourceInventory = {
  type t;
  type request = {
@as("Filters") filters: option<inventoryFilterList>,
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ResourceInventoryList") resourceInventoryList: option<resourceInventoryList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListResourceInventoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLicenseSpecificationsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>,
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("LicenseSpecifications") licenseSpecifications: option<licenseSpecifications>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseSpecificationsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssociationsForLicenseConfiguration = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>,
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("LicenseConfigurationAssociations") licenseConfigurationAssociations: option<licenseConfigurationAssociations>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListAssociationsForLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetGrant = {
  type t;
  type request = {
@as("Version") version: option<string_>,
@as("GrantArn") grantArn: arn
}
  type response = {
@as("Grant") grant: option<grant>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetGrantCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseVersion = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: option<string_>,
@as("ClientToken") clientToken: string_,
@as("Status") status: licenseStatus,
@as("ConsumptionConfiguration") consumptionConfiguration: consumptionConfiguration,
@as("Entitlements") entitlements: entitlementList,
@as("LicenseMetadata") licenseMetadata: option<metadataList>,
@as("Validity") validity: datetimeRange,
@as("HomeRegion") homeRegion: string_,
@as("Issuer") issuer: issuer,
@as("ProductName") productName: string_,
@as("LicenseName") licenseName: string_,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("Status") status: option<licenseStatus>,
@as("Version") version: option<string_>,
@as("LicenseArn") licenseArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Description") description: option<string_>,
@as("ClientToken") clientToken: clientRequestToken,
@as("ReportFrequency") reportFrequency: reportFrequency,
@as("ReportContext") reportContext: reportContext,
@as("Type") type_: reportTypeList,
@as("ReportGeneratorName") reportGeneratorName: reportGeneratorName
}
  type response = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseManagerReportGeneratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLicense = {
  type t;
  type request = {
@as("ClientToken") clientToken: string_,
@as("LicenseMetadata") licenseMetadata: option<metadataList>,
@as("ConsumptionConfiguration") consumptionConfiguration: consumptionConfiguration,
@as("Beneficiary") beneficiary: string_,
@as("Entitlements") entitlements: entitlementList,
@as("Validity") validity: datetimeRange,
@as("HomeRegion") homeRegion: string_,
@as("Issuer") issuer: issuer,
@as("ProductSKU") productSKU: string_,
@as("ProductName") productName: string_,
@as("LicenseName") licenseName: string_
}
  type response = {
@as("Version") version: option<string_>,
@as("Status") status: option<licenseStatus>,
@as("LicenseArn") licenseArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckoutLicense = {
  type t;
  type request = {
@as("NodeId") nodeId: option<string_>,
@as("Beneficiary") beneficiary: option<string_>,
@as("ClientToken") clientToken: clientToken,
@as("Entitlements") entitlements: entitlementDataList,
@as("KeyFingerprint") keyFingerprint: string_,
@as("CheckoutType") checkoutType: checkoutType,
@as("ProductSKU") productSKU: string_
}
  type response = {
@as("Expiration") expiration: option<iso8601DateTime>,
@as("IssuedAt") issuedAt: option<iso8601DateTime>,
@as("NodeId") nodeId: option<string_>,
@as("SignedToken") signedToken: option<signedToken>,
@as("EntitlementsAllowed") entitlementsAllowed: option<entitlementDataList>,
@as("LicenseConsumptionToken") licenseConsumptionToken: option<string_>,
@as("CheckoutType") checkoutType: option<checkoutType>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckoutLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CheckoutBorrowLicense = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("CheckoutMetadata") checkoutMetadata: option<metadataList>,
@as("NodeId") nodeId: option<string_>,
@as("DigitalSignatureMethod") digitalSignatureMethod: digitalSignatureMethod,
@as("Entitlements") entitlements: entitlementDataList,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("CheckoutMetadata") checkoutMetadata: option<metadataList>,
@as("Expiration") expiration: option<iso8601DateTime>,
@as("IssuedAt") issuedAt: option<iso8601DateTime>,
@as("SignedToken") signedToken: option<signedToken>,
@as("NodeId") nodeId: option<string_>,
@as("EntitlementsAllowed") entitlementsAllowed: option<entitlementDataList>,
@as("LicenseConsumptionToken") licenseConsumptionToken: option<string_>,
@as("LicenseArn") licenseArn: option<arn>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckoutBorrowLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUsageForLicenseConfiguration = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>,
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("LicenseConfigurationUsageList") licenseConfigurationUsageList: option<licenseConfigurationUsageList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListUsageForLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTokens = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>,
@as("TokenIds") tokenIds: option<stringList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Tokens") tokens: option<tokenList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListTokensCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReceivedGrants = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>,
@as("GrantArns") grantArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Grants") grants: option<grantList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListReceivedGrantsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDistributedGrants = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>,
@as("GrantArns") grantArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Grants") grants: option<grantList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListDistributedGrantsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLicenseUsage = {
  type t;
  type request = {
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("LicenseUsage") licenseUsage: option<licenseUsage>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseUsageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: string_
}
  type response = {
@as("ReportGenerator") reportGenerator: option<reportGenerator>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseManagerReportGeneratorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLicense = {
  type t;
  type request = {
@as("Version") version: option<string_>,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("License") license: option<license>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListReceivedLicenses = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>,
@as("LicenseArns") licenseArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Licenses") licenses: option<grantedLicenseList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListReceivedLicensesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLicenses = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>,
@as("LicenseArns") licenseArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Licenses") licenses: option<licenseList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicensesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLicenseVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("LicenseArn") licenseArn: arn
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Licenses") licenses: option<licenseList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLicenseManagerReportGenerators = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxSize100>,
@as("NextToken") nextToken: option<string_>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ReportGenerators") reportGenerators: option<reportGeneratorList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseManagerReportGeneratorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFailuresForLicenseConfigurationOperations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>,
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("LicenseOperationFailureList") licenseOperationFailureList: option<licenseOperationFailureList>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListFailuresForLicenseConfigurationOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseConfiguration = {
  type t;
  type request = {
@as("DisassociateWhenNotFound") disassociateWhenNotFound: option<boxBoolean>,
@as("ProductInformationList") productInformationList: option<productInformationList>,
@as("Description") description: option<string_>,
@as("Name") name: option<string_>,
@as("LicenseCountHardLimit") licenseCountHardLimit: option<boxBoolean>,
@as("LicenseCount") licenseCount: option<boxLong>,
@as("LicenseRules") licenseRules: option<stringList>,
@as("LicenseConfigurationStatus") licenseConfigurationStatus: option<licenseConfigurationStatus>,
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLicenseConfiguration = {
  type t;
  type request = {
@as("LicenseConfigurationArn") licenseConfigurationArn: string_
}
  type response = {
@as("DisassociateWhenNotFound") disassociateWhenNotFound: option<boxBoolean>,
@as("AutomatedDiscoveryInformation") automatedDiscoveryInformation: option<automatedDiscoveryInformation>,
@as("ProductInformationList") productInformationList: option<productInformationList>,
@as("Tags") tags: option<tagList_>,
@as("ManagedResourceSummaryList") managedResourceSummaryList: option<managedResourceSummaryList>,
@as("ConsumedLicenseSummaryList") consumedLicenseSummaryList: option<consumedLicenseSummaryList>,
@as("OwnerAccountId") ownerAccountId: option<string_>,
@as("Status") status: option<string_>,
@as("ConsumedLicenses") consumedLicenses: option<boxLong>,
@as("LicenseCountHardLimit") licenseCountHardLimit: option<boxBoolean>,
@as("LicenseCount") licenseCount: option<boxLong>,
@as("LicenseRules") licenseRules: option<stringList>,
@as("LicenseCountingType") licenseCountingType: option<licenseCountingType>,
@as("Description") description: option<string_>,
@as("Name") name: option<string_>,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>,
@as("LicenseConfigurationId") licenseConfigurationId: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseConfiguration = {
  type t;
  type request = {
@as("ProductInformationList") productInformationList: option<productInformationList>,
@as("DisassociateWhenNotFound") disassociateWhenNotFound: option<boxBoolean>,
@as("Tags") tags: option<tagList_>,
@as("LicenseRules") licenseRules: option<stringList>,
@as("LicenseCountHardLimit") licenseCountHardLimit: option<boxBoolean>,
@as("LicenseCount") licenseCount: option<boxLong>,
@as("LicenseCountingType") licenseCountingType: licenseCountingType,
@as("Description") description: option<string_>,
@as("Name") name: string_
}
  type response = {
@as("LicenseConfigurationArn") licenseConfigurationArn: option<string_>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLicenseConfigurations = {
  type t;
  type request = {
@as("Filters") filters: option<filters>,
@as("NextToken") nextToken: option<string_>,
@as("MaxResults") maxResults: option<boxInteger>,
@as("LicenseConfigurationArns") licenseConfigurationArns: option<stringList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("LicenseConfigurations") licenseConfigurations: option<licenseConfigurations>
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
