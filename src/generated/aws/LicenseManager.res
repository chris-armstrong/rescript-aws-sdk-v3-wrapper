type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tokenType = [@as("REFRESH_TOKEN") #REFRESH_TOKEN]
type tokenString = string
type amazonawsString = string
type signedToken = string
type resourceType = [@as("SYSTEMS_MANAGER_MANAGED_INSTANCE") #SYSTEMS_MANAGER_MANAGED_INSTANCE | @as("RDS") #RDS | @as("EC2_AMI") #EC2_AMI | @as("EC2_HOST") #EC2_HOST | @as("EC2_INSTANCE") #EC2_INSTANCE]
type reportType = [@as("LicenseConfigurationUsageReport") #LicenseConfigurationUsageReport | @as("LicenseConfigurationSummaryReport") #LicenseConfigurationSummaryReport]
type reportGeneratorName = string
type reportFrequencyType = [@as("MONTH") #MONTH | @as("WEEK") #WEEK | @as("DAY") #DAY]
type renewType = [@as("Monthly") #Monthly | @as("Weekly") #Weekly | @as("None") #None]
type receivedStatus = [@as("DISABLED") #DISABLED | @as("DELETED") #DELETED | @as("FAILED_WORKFLOW") #FAILED_WORKFLOW | @as("ACTIVE") #ACTIVE | @as("REJECTED") #REJECTED | @as("PENDING_ACCEPT") #PENDING_ACCEPT | @as("PENDING_WORKFLOW") #PENDING_WORKFLOW]
type message = string
type maxSize100 = int;
type amazonawsLong = float;
type location = string
type licenseStatus = [@as("DELETED") #DELETED | @as("PENDING_DELETE") #PENDING_DELETE | @as("EXPIRED") #EXPIRED | @as("SUSPENDED") #SUSPENDED | @as("DEACTIVATED") #DEACTIVATED | @as("PENDING_AVAILABLE") #PENDING_AVAILABLE | @as("AVAILABLE") #AVAILABLE]
type licenseDeletionStatus = [@as("DELETED") #DELETED | @as("PENDING_DELETE") #PENDING_DELETE]
type licenseCountingType = [@as("Socket") #Socket | @as("Core") #Core | @as("Instance") #Instance | @as("vCPU") #vCPU]
type licenseConfigurationStatus = [@as("DISABLED") #DISABLED | @as("AVAILABLE") #AVAILABLE]
type inventoryFilterCondition = [@as("CONTAINS") #CONTAINS | @as("BEGINS_WITH") #BEGINS_WITH | @as("NOT_EQUALS") #NOT_EQUALS | @as("EQUALS") #EQUALS]
type amazonawsInteger = int;
type idempotencyToken = string
type iSO8601DateTime = string
type grantStatus = [@as("DISABLED") #DISABLED | @as("PENDING_DELETE") #PENDING_DELETE | @as("DELETED") #DELETED | @as("FAILED_WORKFLOW") #FAILED_WORKFLOW | @as("ACTIVE") #ACTIVE | @as("REJECTED") #REJECTED | @as("PENDING_ACCEPT") #PENDING_ACCEPT | @as("PENDING_WORKFLOW") #PENDING_WORKFLOW]
type filterValue = string
type filterName = string
type entitlementUnit = [@as("Count/Second") #Count_Second | @as("Terabits/Second") #Terabits_Second | @as("Gigabits/Second") #Gigabits_Second | @as("Megabits/Second") #Megabits_Second | @as("Kilobits/Second") #Kilobits_Second | @as("Bits/Second") #Bits_Second | @as("Terabytes/Second") #Terabytes_Second | @as("Gigabytes/Second") #Gigabytes_Second | @as("Megabytes/Second") #Megabytes_Second | @as("Kilobytes/Second") #Kilobytes_Second | @as("Bytes/Second") #Bytes_Second | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds | @as("None") #None | @as("Count") #Count]
type entitlementDataUnit = [@as("Count/Second") #Count_Second | @as("Terabits/Second") #Terabits_Second | @as("Gigabits/Second") #Gigabits_Second | @as("Megabits/Second") #Megabits_Second | @as("Kilobits/Second") #Kilobits_Second | @as("Bits/Second") #Bits_Second | @as("Terabytes/Second") #Terabytes_Second | @as("Gigabytes/Second") #Gigabytes_Second | @as("Megabytes/Second") #Megabytes_Second | @as("Kilobytes/Second") #Kilobytes_Second | @as("Bytes/Second") #Bytes_Second | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds | @as("None") #None | @as("Count") #Count]
type digitalSignatureMethod = [@as("JWT_PS384") #JWT_PS384]
type dateTime = Js.Date.t;
type clientToken = string
type clientRequestToken = string
type checkoutType = [@as("PROVISIONAL") #PROVISIONAL]
type boxLong = float;
type boxInteger = int;
type boxBoolean = bool;
type amazonawsBoolean = bool;
type arn = string
type allowedOperation = [@as("CreateToken") #CreateToken | @as("ListPurchasedLicenses") #ListPurchasedLicenses | @as("ExtendConsumptionLicense") #ExtendConsumptionLicense | @as("CheckInLicense") #CheckInLicense | @as("CheckoutBorrowLicense") #CheckoutBorrowLicense | @as("CheckoutLicense") #CheckoutLicense | @as("CreateGrant") #CreateGrant]
type tagKeyList = array<amazonawsString>
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type stringList = array<amazonawsString>
type s3Location = {
@as("keyPrefix") keyPrefix: amazonawsString,
@as("bucket") bucket: amazonawsString
}
type resourceInventory = {
@as("ResourceOwningAccountId") resourceOwningAccountId: amazonawsString,
@as("PlatformVersion") platformVersion: amazonawsString,
@as("Platform") platform: amazonawsString,
@as("ResourceArn") resourceArn: amazonawsString,
@as("ResourceType") resourceType: resourceType,
@as("ResourceId") resourceId: amazonawsString
}
type reportTypeList = array<reportType>
type reportFrequency = {
@as("period") period: reportFrequencyType,
@as("value") value: amazonawsInteger
}
type provisionalConfiguration = {
@as("MaxTimeToLiveInMinutes") maxTimeToLiveInMinutes: option<boxInteger>
}
type principalArnList = array<arn>
type organizationConfiguration = {
@as("EnableIntegration") enableIntegration: option<amazonawsBoolean>
}
type metadata = {
@as("Value") value: amazonawsString,
@as("Name") name: amazonawsString
}
type maxSize3StringList = array<amazonawsString>
type managedResourceSummary = {
@as("AssociationCount") associationCount: boxLong,
@as("ResourceType") resourceType: resourceType
}
type licenseSpecification = {
@as("AmiAssociationScope") amiAssociationScope: amazonawsString,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
type licenseConfigurationUsage = {
@as("ConsumedLicenses") consumedLicenses: boxLong,
@as("AssociationTime") associationTime: dateTime,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("ResourceStatus") resourceStatus: amazonawsString,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: amazonawsString
}
type licenseConfigurationAssociation = {
@as("AmiAssociationScope") amiAssociationScope: amazonawsString,
@as("AssociationTime") associationTime: dateTime,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: amazonawsString
}
type issuerDetails = {
@as("KeyFingerprint") keyFingerprint: amazonawsString,
@as("SignKey") signKey: amazonawsString,
@as("Name") name: amazonawsString
}
type issuer = {
@as("SignKey") signKey: amazonawsString,
@as("Name") name: option<amazonawsString>
}
type inventoryFilter = {
@as("Value") value: amazonawsString,
@as("Condition") condition: option<inventoryFilterCondition>,
@as("Name") name: option<amazonawsString>
}
type filterValues = array<filterValue>
type entitlementUsage = {
@as("Unit") unit: option<entitlementDataUnit>,
@as("MaxCount") maxCount: amazonawsString,
@as("ConsumedValue") consumedValue: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
type entitlementData = {
@as("Unit") unit: option<entitlementDataUnit>,
@as("Value") value: amazonawsString,
@as("Name") name: option<amazonawsString>
}
type entitlement = {
@as("AllowCheckIn") allowCheckIn: boxBoolean,
@as("Unit") unit: option<entitlementUnit>,
@as("Overage") overage: boxBoolean,
@as("MaxCount") maxCount: amazonawsLong,
@as("Value") value: amazonawsString,
@as("Name") name: option<amazonawsString>
}
type datetimeRange = {
@as("End") end: iSO8601DateTime,
@as("Begin") begin: option<iSO8601DateTime>
}
type consumedLicenseSummary = {
@as("ConsumedLicenses") consumedLicenses: boxLong,
@as("ResourceType") resourceType: resourceType
}
type borrowConfiguration = {
@as("MaxTimeToLiveInMinutes") maxTimeToLiveInMinutes: option<boxInteger>,
@as("AllowEarlyCheckIn") allowEarlyCheckIn: option<boxBoolean>
}
type automatedDiscoveryInformation = {
@as("LastRunTime") lastRunTime: dateTime
}
type arnList = array<arn>
type allowedOperationList = array<allowedOperation>
type tokenData = {
@as("Status") status: amazonawsString,
@as("RoleArns") roleArns: arnList,
@as("TokenProperties") tokenProperties: maxSize3StringList,
@as("ExpirationTime") expirationTime: iSO8601DateTime,
@as("LicenseArn") licenseArn: amazonawsString,
@as("TokenType") tokenType: amazonawsString,
@as("TokenId") tokenId: amazonawsString
}
type tagList = array<tag>
type resourceInventoryList = array<resourceInventory>
type reportContext = {
@as("licenseConfigurationArns") licenseConfigurationArns: option<arnList>
}
type receivedMetadata = {
@as("AllowedOperations") allowedOperations: allowedOperationList,
@as("ReceivedStatus") receivedStatus: receivedStatus
}
type productInformationFilter = {
@as("ProductInformationFilterComparator") productInformationFilterComparator: option<amazonawsString>,
@as("ProductInformationFilterValue") productInformationFilterValue: stringList,
@as("ProductInformationFilterName") productInformationFilterName: option<amazonawsString>
}
type metadataList = array<metadata>
type managedResourceSummaryList = array<managedResourceSummary>
type licenseSpecifications = array<licenseSpecification>
type licenseConfigurationUsageList = array<licenseConfigurationUsage>
type licenseConfigurationAssociations = array<licenseConfigurationAssociation>
type inventoryFilterList = array<inventoryFilter>
type grant = {
@as("GrantedOperations") grantedOperations: option<allowedOperationList>,
@as("Version") version: option<amazonawsString>,
@as("StatusReason") statusReason: amazonawsString,
@as("GrantStatus") grantStatus: option<grantStatus>,
@as("HomeRegion") homeRegion: option<amazonawsString>,
@as("GranteePrincipalArn") granteePrincipalArn: option<arn>,
@as("LicenseArn") licenseArn: option<arn>,
@as("ParentArn") parentArn: option<arn>,
@as("GrantName") grantName: option<amazonawsString>,
@as("GrantArn") grantArn: option<arn>
}
type filter = {
@as("Values") values: filterValues,
@as("Name") name: filterName
}
type entitlementUsageList = array<entitlementUsage>
type entitlementList = array<entitlement>
type entitlementDataList = array<entitlementData>
type consumptionConfiguration = {
@as("BorrowConfiguration") borrowConfiguration: borrowConfiguration,
@as("ProvisionalConfiguration") provisionalConfiguration: provisionalConfiguration,
@as("RenewType") renewType: renewType
}
type consumedLicenseSummaryList = array<consumedLicenseSummary>
type tokenList = array<tokenData>
type reportGenerator = {
@as("Tags") tags: tagList,
@as("CreateTime") createTime: amazonawsString,
@as("S3Location") s3Location: s3Location,
@as("Description") description: amazonawsString,
@as("ReportCreatorAccount") reportCreatorAccount: amazonawsString,
@as("LastReportGenerationTime") lastReportGenerationTime: amazonawsString,
@as("LastRunFailureReason") lastRunFailureReason: amazonawsString,
@as("LastRunStatus") lastRunStatus: amazonawsString,
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: amazonawsString,
@as("ReportFrequency") reportFrequency: reportFrequency,
@as("ReportContext") reportContext: reportContext,
@as("ReportType") reportType: reportTypeList,
@as("ReportGeneratorName") reportGeneratorName: amazonawsString
}
type productInformationFilterList = array<productInformationFilter>
type licenseUsage = {
@as("EntitlementUsages") entitlementUsages: entitlementUsageList
}
type licenseOperationFailure = {
@as("MetadataList") metadataList: metadataList,
@as("OperationRequestedBy") operationRequestedBy: amazonawsString,
@as("ResourceOwnerId") resourceOwnerId: amazonawsString,
@as("OperationName") operationName: amazonawsString,
@as("FailureTime") failureTime: dateTime,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: amazonawsString
}
type license = {
@as("Version") version: amazonawsString,
@as("CreateTime") createTime: iSO8601DateTime,
@as("LicenseMetadata") licenseMetadata: metadataList,
@as("ConsumptionConfiguration") consumptionConfiguration: consumptionConfiguration,
@as("Entitlements") entitlements: entitlementList,
@as("Beneficiary") beneficiary: amazonawsString,
@as("Validity") validity: datetimeRange,
@as("Status") status: licenseStatus,
@as("HomeRegion") homeRegion: amazonawsString,
@as("Issuer") issuer: issuerDetails,
@as("ProductSKU") productSKU: amazonawsString,
@as("ProductName") productName: amazonawsString,
@as("LicenseName") licenseName: amazonawsString,
@as("LicenseArn") licenseArn: arn
}
type grantedLicense = {
@as("ReceivedMetadata") receivedMetadata: receivedMetadata,
@as("Version") version: amazonawsString,
@as("CreateTime") createTime: iSO8601DateTime,
@as("LicenseMetadata") licenseMetadata: metadataList,
@as("ConsumptionConfiguration") consumptionConfiguration: consumptionConfiguration,
@as("Entitlements") entitlements: entitlementList,
@as("Beneficiary") beneficiary: amazonawsString,
@as("Validity") validity: datetimeRange,
@as("Status") status: licenseStatus,
@as("HomeRegion") homeRegion: amazonawsString,
@as("Issuer") issuer: issuerDetails,
@as("ProductSKU") productSKU: amazonawsString,
@as("ProductName") productName: amazonawsString,
@as("LicenseName") licenseName: amazonawsString,
@as("LicenseArn") licenseArn: arn
}
type grantList = array<grant>
type filters = array<filter>
type filterList = array<filter>
type reportGeneratorList = array<reportGenerator>
type productInformation = {
@as("ProductInformationFilterList") productInformationFilterList: option<productInformationFilterList>,
@as("ResourceType") resourceType: option<amazonawsString>
}
type licenseOperationFailureList = array<licenseOperationFailure>
type licenseList = array<license>
type grantedLicenseList = array<grantedLicense>
type productInformationList = array<productInformation>
type licenseConfiguration = {
@as("AutomatedDiscoveryInformation") automatedDiscoveryInformation: automatedDiscoveryInformation,
@as("ProductInformationList") productInformationList: productInformationList,
@as("ManagedResourceSummaryList") managedResourceSummaryList: managedResourceSummaryList,
@as("ConsumedLicenseSummaryList") consumedLicenseSummaryList: consumedLicenseSummaryList,
@as("OwnerAccountId") ownerAccountId: amazonawsString,
@as("Status") status: amazonawsString,
@as("ConsumedLicenses") consumedLicenses: boxLong,
@as("DisassociateWhenNotFound") disassociateWhenNotFound: boxBoolean,
@as("LicenseCountHardLimit") licenseCountHardLimit: boxBoolean,
@as("LicenseCount") licenseCount: boxLong,
@as("LicenseRules") licenseRules: stringList,
@as("LicenseCountingType") licenseCountingType: licenseCountingType,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString,
@as("LicenseConfigurationId") licenseConfigurationId: amazonawsString
}
type licenseConfigurations = array<licenseConfiguration>
type clientType;
@module("@aws-sdk/client-license-manager") @new external createClient: unit => clientType = "LicenseManagerClient";
module RejectGrant = {
  type t;
  type request = {
@as("GrantArn") grantArn: option<arn>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: grantStatus,
@as("GrantArn") grantArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "RejectGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExtendLicenseConsumption = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBoolean,
@as("LicenseConsumptionToken") licenseConsumptionToken: option<amazonawsString>
}
  type response = {
@as("Expiration") expiration: iSO8601DateTime,
@as("LicenseConsumptionToken") licenseConsumptionToken: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ExtendLicenseConsumptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteToken = {
  type t;
  type request = {
@as("TokenId") tokenId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseManagerReportGeneratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLicenseConfiguration = {
  type t;
  type request = {
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLicense = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: option<amazonawsString>,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("DeletionDate") deletionDate: iSO8601DateTime,
@as("Status") status: licenseDeletionStatus
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGrant = {
  type t;
  type request = {
@as("Version") version: option<amazonawsString>,
@as("GrantArn") grantArn: option<arn>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: grantStatus,
@as("GrantArn") grantArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "DeleteGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckInLicense = {
  type t;
  type request = {
@as("Beneficiary") beneficiary: amazonawsString,
@as("LicenseConsumptionToken") licenseConsumptionToken: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckInLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptGrant = {
  type t;
  type request = {
@as("GrantArn") grantArn: option<arn>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: grantStatus,
@as("GrantArn") grantArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "AcceptGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceSettings = {
  type t;
  type request = {
@as("EnableCrossAccountsDiscovery") enableCrossAccountsDiscovery: boxBoolean,
@as("OrganizationConfiguration") organizationConfiguration: organizationConfiguration,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("S3BucketArn") s3BucketArn: amazonawsString
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateServiceSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceSettings = {
  type t;
  type request = unit
  type response = {
@as("LicenseManagerResourceShareArn") licenseManagerResourceShareArn: amazonawsString,
@as("EnableCrossAccountsDiscovery") enableCrossAccountsDiscovery: boxBoolean,
@as("OrganizationConfiguration") organizationConfiguration: organizationConfiguration,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("S3BucketArn") s3BucketArn: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetServiceSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccessToken = {
  type t;
  type request = {
@as("TokenProperties") tokenProperties: maxSize3StringList,
@as("Token") token: option<tokenString>
}
  type response = {
@as("AccessToken") accessToken: tokenString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetAccessTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateToken = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<idempotencyToken>,
@as("TokenProperties") tokenProperties: maxSize3StringList,
@as("ExpirationInDays") expirationInDays: amazonawsInteger,
@as("RoleArns") roleArns: arnList,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("Token") token: tokenString,
@as("TokenType") tokenType: tokenType,
@as("TokenId") tokenId: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGrantVersion = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: amazonawsString,
@as("Status") status: grantStatus,
@as("AllowedOperations") allowedOperations: allowedOperationList,
@as("GrantName") grantName: amazonawsString,
@as("GrantArn") grantArn: option<arn>,
@as("ClientToken") clientToken: option<amazonawsString>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: grantStatus,
@as("GrantArn") grantArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateGrantVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGrant = {
  type t;
  type request = {
@as("AllowedOperations") allowedOperations: option<allowedOperationList>,
@as("HomeRegion") homeRegion: option<amazonawsString>,
@as("Principals") principals: option<principalArnList>,
@as("LicenseArn") licenseArn: option<arn>,
@as("GrantName") grantName: option<amazonawsString>,
@as("ClientToken") clientToken: option<amazonawsString>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: grantStatus,
@as("GrantArn") grantArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseSpecificationsForResource = {
  type t;
  type request = {
@as("RemoveLicenseSpecifications") removeLicenseSpecifications: licenseSpecifications,
@as("AddLicenseSpecifications") addLicenseSpecifications: licenseSpecifications,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseSpecificationsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: option<clientRequestToken>,
@as("ReportFrequency") reportFrequency: option<reportFrequency>,
@as("ReportContext") reportContext: option<reportContext>,
@as("Type") type_: option<reportTypeList>,
@as("ReportGeneratorName") reportGeneratorName: option<reportGeneratorName>,
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseManagerReportGeneratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourceInventory = {
  type t;
  type request = {
@as("Filters") filters: inventoryFilterList,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ResourceInventoryList") resourceInventoryList: resourceInventoryList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListResourceInventoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLicenseSpecificationsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LicenseSpecifications") licenseSpecifications: licenseSpecifications
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseSpecificationsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociationsForLicenseConfiguration = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LicenseConfigurationAssociations") licenseConfigurationAssociations: licenseConfigurationAssociations
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListAssociationsForLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetGrant = {
  type t;
  type request = {
@as("Version") version: amazonawsString,
@as("GrantArn") grantArn: option<arn>
}
  type response = {
@as("Grant") grant: grant
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseVersion = {
  type t;
  type request = {
@as("SourceVersion") sourceVersion: amazonawsString,
@as("ClientToken") clientToken: option<amazonawsString>,
@as("Status") status: option<licenseStatus>,
@as("ConsumptionConfiguration") consumptionConfiguration: option<consumptionConfiguration>,
@as("Entitlements") entitlements: option<entitlementList>,
@as("LicenseMetadata") licenseMetadata: metadataList,
@as("Validity") validity: option<datetimeRange>,
@as("HomeRegion") homeRegion: option<amazonawsString>,
@as("Issuer") issuer: option<issuer>,
@as("ProductName") productName: option<amazonawsString>,
@as("LicenseName") licenseName: option<amazonawsString>,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("Status") status: licenseStatus,
@as("Version") version: amazonawsString,
@as("LicenseArn") licenseArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("ClientToken") clientToken: option<clientRequestToken>,
@as("ReportFrequency") reportFrequency: option<reportFrequency>,
@as("ReportContext") reportContext: option<reportContext>,
@as("Type") type_: option<reportTypeList>,
@as("ReportGeneratorName") reportGeneratorName: option<reportGeneratorName>
}
  type response = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseManagerReportGeneratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLicense = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<amazonawsString>,
@as("LicenseMetadata") licenseMetadata: metadataList,
@as("ConsumptionConfiguration") consumptionConfiguration: option<consumptionConfiguration>,
@as("Beneficiary") beneficiary: option<amazonawsString>,
@as("Entitlements") entitlements: option<entitlementList>,
@as("Validity") validity: option<datetimeRange>,
@as("HomeRegion") homeRegion: option<amazonawsString>,
@as("Issuer") issuer: option<issuer>,
@as("ProductSKU") productSKU: option<amazonawsString>,
@as("ProductName") productName: option<amazonawsString>,
@as("LicenseName") licenseName: option<amazonawsString>
}
  type response = {
@as("Version") version: amazonawsString,
@as("Status") status: licenseStatus,
@as("LicenseArn") licenseArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckoutLicense = {
  type t;
  type request = {
@as("NodeId") nodeId: amazonawsString,
@as("Beneficiary") beneficiary: amazonawsString,
@as("ClientToken") clientToken: option<clientToken>,
@as("Entitlements") entitlements: option<entitlementDataList>,
@as("KeyFingerprint") keyFingerprint: option<amazonawsString>,
@as("CheckoutType") checkoutType: option<checkoutType>,
@as("ProductSKU") productSKU: option<amazonawsString>
}
  type response = {
@as("Expiration") expiration: iSO8601DateTime,
@as("IssuedAt") issuedAt: iSO8601DateTime,
@as("NodeId") nodeId: amazonawsString,
@as("SignedToken") signedToken: signedToken,
@as("EntitlementsAllowed") entitlementsAllowed: entitlementDataList,
@as("LicenseConsumptionToken") licenseConsumptionToken: amazonawsString,
@as("CheckoutType") checkoutType: checkoutType
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckoutLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckoutBorrowLicense = {
  type t;
  type request = {
@as("ClientToken") clientToken: option<clientToken>,
@as("CheckoutMetadata") checkoutMetadata: metadataList,
@as("NodeId") nodeId: amazonawsString,
@as("DigitalSignatureMethod") digitalSignatureMethod: option<digitalSignatureMethod>,
@as("Entitlements") entitlements: option<entitlementDataList>,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("CheckoutMetadata") checkoutMetadata: metadataList,
@as("Expiration") expiration: iSO8601DateTime,
@as("IssuedAt") issuedAt: iSO8601DateTime,
@as("SignedToken") signedToken: signedToken,
@as("NodeId") nodeId: amazonawsString,
@as("EntitlementsAllowed") entitlementsAllowed: entitlementDataList,
@as("LicenseConsumptionToken") licenseConsumptionToken: amazonawsString,
@as("LicenseArn") licenseArn: arn
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CheckoutBorrowLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUsageForLicenseConfiguration = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LicenseConfigurationUsageList") licenseConfigurationUsageList: licenseConfigurationUsageList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListUsageForLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTokens = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("TokenIds") tokenIds: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Tokens") tokens: tokenList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListTokensCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReceivedGrants = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("GrantArns") grantArns: arnList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Grants") grants: grantList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListReceivedGrantsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDistributedGrants = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("GrantArns") grantArns: arnList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Grants") grants: grantList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListDistributedGrantsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLicenseUsage = {
  type t;
  type request = {
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("LicenseUsage") licenseUsage: licenseUsage
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLicenseManagerReportGenerator = {
  type t;
  type request = {
@as("LicenseManagerReportGeneratorArn") licenseManagerReportGeneratorArn: option<amazonawsString>
}
  type response = {
@as("ReportGenerator") reportGenerator: reportGenerator
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseManagerReportGeneratorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLicense = {
  type t;
  type request = {
@as("Version") version: amazonawsString,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("License") license: license
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReceivedLicenses = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("LicenseArns") licenseArns: arnList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Licenses") licenses: grantedLicenseList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListReceivedLicensesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLicenses = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList,
@as("LicenseArns") licenseArns: arnList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Licenses") licenses: licenseList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicensesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLicenseVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("LicenseArn") licenseArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Licenses") licenses: licenseList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLicenseManagerReportGenerators = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxSize100,
@as("NextToken") nextToken: amazonawsString,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ReportGenerators") reportGenerators: reportGeneratorList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseManagerReportGeneratorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFailuresForLicenseConfigurationOperations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LicenseOperationFailureList") licenseOperationFailureList: licenseOperationFailureList
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListFailuresForLicenseConfigurationOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLicenseConfiguration = {
  type t;
  type request = {
@as("DisassociateWhenNotFound") disassociateWhenNotFound: boxBoolean,
@as("ProductInformationList") productInformationList: productInformationList,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("LicenseCountHardLimit") licenseCountHardLimit: boxBoolean,
@as("LicenseCount") licenseCount: boxLong,
@as("LicenseRules") licenseRules: stringList,
@as("LicenseConfigurationStatus") licenseConfigurationStatus: licenseConfigurationStatus,
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "UpdateLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLicenseConfiguration = {
  type t;
  type request = {
@as("LicenseConfigurationArn") licenseConfigurationArn: option<amazonawsString>
}
  type response = {
@as("DisassociateWhenNotFound") disassociateWhenNotFound: boxBoolean,
@as("AutomatedDiscoveryInformation") automatedDiscoveryInformation: automatedDiscoveryInformation,
@as("ProductInformationList") productInformationList: productInformationList,
@as("Tags") tags: tagList,
@as("ManagedResourceSummaryList") managedResourceSummaryList: managedResourceSummaryList,
@as("ConsumedLicenseSummaryList") consumedLicenseSummaryList: consumedLicenseSummaryList,
@as("OwnerAccountId") ownerAccountId: amazonawsString,
@as("Status") status: amazonawsString,
@as("ConsumedLicenses") consumedLicenses: boxLong,
@as("LicenseCountHardLimit") licenseCountHardLimit: boxBoolean,
@as("LicenseCount") licenseCount: boxLong,
@as("LicenseRules") licenseRules: stringList,
@as("LicenseCountingType") licenseCountingType: licenseCountingType,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString,
@as("LicenseConfigurationId") licenseConfigurationId: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "GetLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLicenseConfiguration = {
  type t;
  type request = {
@as("ProductInformationList") productInformationList: productInformationList,
@as("DisassociateWhenNotFound") disassociateWhenNotFound: boxBoolean,
@as("Tags") tags: tagList,
@as("LicenseRules") licenseRules: stringList,
@as("LicenseCountHardLimit") licenseCountHardLimit: boxBoolean,
@as("LicenseCount") licenseCount: boxLong,
@as("LicenseCountingType") licenseCountingType: option<licenseCountingType>,
@as("Description") description: amazonawsString,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("LicenseConfigurationArn") licenseConfigurationArn: amazonawsString
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "CreateLicenseConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLicenseConfigurations = {
  type t;
  type request = {
@as("Filters") filters: filters,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: boxInteger,
@as("LicenseConfigurationArns") licenseConfigurationArns: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LicenseConfigurations") licenseConfigurations: licenseConfigurations
}
  @module("@aws-sdk/client-license-manager") @new external new_: (request) => t = "ListLicenseConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
