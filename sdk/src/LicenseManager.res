type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-license-manager") @new
external createClient: unit => awsServiceClient = "LicenseManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usageOperation = string
type tokenType = [@as("REFRESH_TOKEN") #REFRESH_TOKEN]
type tokenString = string
type string_ = string
type statusReasonMessage = string
type signedToken = string
type resourceType = [
  | @as("SYSTEMS_MANAGER_MANAGED_INSTANCE") #SYSTEMS_MANAGER_MANAGED_INSTANCE
  | @as("RDS") #RDS
  | @as("EC2_AMI") #EC2_AMI
  | @as("EC2_HOST") #EC2_HOST
  | @as("EC2_INSTANCE") #EC2_INSTANCE
]
type reportType = [
  | @as("LicenseConfigurationUsageReport") #LicenseConfigurationUsageReport
  | @as("LicenseConfigurationSummaryReport") #LicenseConfigurationSummaryReport
]
type reportGeneratorName = string
type reportFrequencyType = [@as("MONTH") #MONTH | @as("WEEK") #WEEK | @as("DAY") #DAY]
type renewType = [@as("Monthly") #Monthly | @as("Weekly") #Weekly | @as("None") #None]
type receivedStatus = [
  | @as("WORKFLOW_COMPLETED") #WORKFLOW_COMPLETED
  | @as("DISABLED") #DISABLED
  | @as("DELETED") #DELETED
  | @as("FAILED_WORKFLOW") #FAILED_WORKFLOW
  | @as("ACTIVE") #ACTIVE
  | @as("REJECTED") #REJECTED
  | @as("PENDING_ACCEPT") #PENDING_ACCEPT
  | @as("PENDING_WORKFLOW") #PENDING_WORKFLOW
]
type message = string
type maxSize100 = int
type long = float
type location = string
type licenseStatus = [
  | @as("DELETED") #DELETED
  | @as("PENDING_DELETE") #PENDING_DELETE
  | @as("EXPIRED") #EXPIRED
  | @as("SUSPENDED") #SUSPENDED
  | @as("DEACTIVATED") #DEACTIVATED
  | @as("PENDING_AVAILABLE") #PENDING_AVAILABLE
  | @as("AVAILABLE") #AVAILABLE
]
type licenseDeletionStatus = [@as("DELETED") #DELETED | @as("PENDING_DELETE") #PENDING_DELETE]
type licenseCountingType = [
  | @as("Socket") #Socket
  | @as("Core") #Core
  | @as("Instance") #Instance
  | @as("vCPU") #VCPU
]
type licenseConversionTaskStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type licenseConversionTaskId = string
type licenseConfigurationStatus = [@as("DISABLED") #DISABLED | @as("AVAILABLE") #AVAILABLE]
type inventoryFilterCondition = [
  | @as("CONTAINS") #CONTAINS
  | @as("BEGINS_WITH") #BEGINS_WITH
  | @as("NOT_EQUALS") #NOT_EQUALS
  | @as("EQUALS") #EQUALS
]
type integer_ = int
type iso8601DateTime = string
type grantStatus = [
  | @as("WORKFLOW_COMPLETED") #WORKFLOW_COMPLETED
  | @as("DISABLED") #DISABLED
  | @as("PENDING_DELETE") #PENDING_DELETE
  | @as("DELETED") #DELETED
  | @as("FAILED_WORKFLOW") #FAILED_WORKFLOW
  | @as("ACTIVE") #ACTIVE
  | @as("REJECTED") #REJECTED
  | @as("PENDING_ACCEPT") #PENDING_ACCEPT
  | @as("PENDING_WORKFLOW") #PENDING_WORKFLOW
]
type filterValue = string
type filterName = string
type entitlementUnit = [
  | @as("Count/Second") #Count_Second
  | @as("Terabits/Second") #Terabits_Second
  | @as("Gigabits/Second") #Gigabits_Second
  | @as("Megabits/Second") #Megabits_Second
  | @as("Kilobits/Second") #Kilobits_Second
  | @as("Bits/Second") #Bits_Second
  | @as("Terabytes/Second") #Terabytes_Second
  | @as("Gigabytes/Second") #Gigabytes_Second
  | @as("Megabytes/Second") #Megabytes_Second
  | @as("Kilobytes/Second") #Kilobytes_Second
  | @as("Bytes/Second") #Bytes_Second
  | @as("Percent") #Percent
  | @as("Terabits") #Terabits
  | @as("Gigabits") #Gigabits
  | @as("Megabits") #Megabits
  | @as("Kilobits") #Kilobits
  | @as("Bits") #Bits
  | @as("Terabytes") #Terabytes
  | @as("Gigabytes") #Gigabytes
  | @as("Megabytes") #Megabytes
  | @as("Kilobytes") #Kilobytes
  | @as("Bytes") #Bytes
  | @as("Milliseconds") #Milliseconds
  | @as("Microseconds") #Microseconds
  | @as("Seconds") #Seconds
  | @as("None") #None
  | @as("Count") #Count
]
type entitlementDataUnit = [
  | @as("Count/Second") #Count_Second
  | @as("Terabits/Second") #Terabits_Second
  | @as("Gigabits/Second") #Gigabits_Second
  | @as("Megabits/Second") #Megabits_Second
  | @as("Kilobits/Second") #Kilobits_Second
  | @as("Bits/Second") #Bits_Second
  | @as("Terabytes/Second") #Terabytes_Second
  | @as("Gigabytes/Second") #Gigabytes_Second
  | @as("Megabytes/Second") #Megabytes_Second
  | @as("Kilobytes/Second") #Kilobytes_Second
  | @as("Bytes/Second") #Bytes_Second
  | @as("Percent") #Percent
  | @as("Terabits") #Terabits
  | @as("Gigabits") #Gigabits
  | @as("Megabits") #Megabits
  | @as("Kilobits") #Kilobits
  | @as("Bits") #Bits
  | @as("Terabytes") #Terabytes
  | @as("Gigabytes") #Gigabytes
  | @as("Megabytes") #Megabytes
  | @as("Kilobytes") #Kilobytes
  | @as("Bytes") #Bytes
  | @as("Milliseconds") #Milliseconds
  | @as("Microseconds") #Microseconds
  | @as("Seconds") #Seconds
  | @as("None") #None
  | @as("Count") #Count
]
type digitalSignatureMethod = [@as("JWT_PS384") #JWT_PS384]
type dateTime = Js.Date.t
type clientToken = string
type clientRequestToken = string
type checkoutType = [@as("PERPETUAL") #PERPETUAL | @as("PROVISIONAL") #PROVISIONAL]
type boxLong = float
type boxInteger = int
type boxBoolean = bool
type boolean_ = bool
type arn = string
type allowedOperation = [
  | @as("CreateToken") #CreateToken
  | @as("ListPurchasedLicenses") #ListPurchasedLicenses
  | @as("ExtendConsumptionLicense") #ExtendConsumptionLicense
  | @as("CheckInLicense") #CheckInLicense
  | @as("CheckoutBorrowLicense") #CheckoutBorrowLicense
  | @as("CheckoutLicense") #CheckoutLicense
  | @as("CreateGrant") #CreateGrant
]
type tagKeyList = array<string_>
@ocaml.doc("<p>Details about a tag for a license configuration.</p>")
type tag = {
  @ocaml.doc("<p>Tag value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>Tag key.</p>") @as("Key") key: option<string_>,
}
type stringList = array<string_>
@ocaml.doc("<p>Details of the S3 bucket that report generator reports are published to.</p>")
type s3Location = {
  @ocaml.doc("<p>Prefix of the S3 bucket reports are published to.</p>") keyPrefix: option<string_>,
  @ocaml.doc("<p>Name of the S3 bucket reports are published to.</p>") bucket: option<string_>,
}
@ocaml.doc("<p>Details about a resource.</p>")
type resourceInventory = {
  @ocaml.doc("<p>ID of the account that owns the resource.</p>") @as("ResourceOwningAccountId")
  resourceOwningAccountId: option<string_>,
  @ocaml.doc("<p>Platform version of the resource in the inventory.</p>") @as("PlatformVersion")
  platformVersion: option<string_>,
  @ocaml.doc("<p>Platform of the resource.</p>") @as("Platform") platform: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<string_>,
  @ocaml.doc("<p>Type of resource.</p>") @as("ResourceType") resourceType: option<resourceType>,
  @ocaml.doc("<p>ID of the resource.</p>") @as("ResourceId") resourceId: option<string_>,
}
type reportTypeList = array<reportType>
@ocaml.doc("<p>Details about how frequently reports are generated.</p>")
type reportFrequency = {
  @ocaml.doc("<p>Time period between each report. The period can be daily, weekly, or monthly.</p>")
  period: option<reportFrequencyType>,
  @ocaml.doc("<p>Number of times within the frequency period that a report is generated.  
         The only supported value is <code>1</code>.</p>")
  value: option<integer_>,
}
@ocaml.doc("<p>Details about a provisional configuration.</p>")
type provisionalConfiguration = {
  @ocaml.doc("<p>Maximum time for the provisional configuration, in minutes.</p>")
  @as("MaxTimeToLiveInMinutes")
  maxTimeToLiveInMinutes: boxInteger,
}
type principalArnList = array<arn>
@ocaml.doc("<p>Configuration information for Organizations.</p>")
type organizationConfiguration = {
  @ocaml.doc("<p>Enables Organizations integration.</p>") @as("EnableIntegration")
  enableIntegration: boolean_,
}
@ocaml.doc("<p>Describes key/value pairs.</p>")
type metadata = {
  @ocaml.doc("<p>The value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The key name.</p>") @as("Name") name: option<string_>,
}
type maxSize3StringList = array<string_>
@ocaml.doc("<p>Summary information about a managed resource.</p>")
type managedResourceSummary = {
  @ocaml.doc("<p>Number of resources associated with licenses.</p>") @as("AssociationCount")
  associationCount: option<boxLong>,
  @ocaml.doc("<p>Type of resource associated with a license.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>Details for associating a license configuration with a resource.</p>")
type licenseSpecification = {
  @ocaml.doc("<p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>")
  @as("AmiAssociationScope")
  amiAssociationScope: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
  @as("LicenseConfigurationArn")
  licenseConfigurationArn: string_,
}
@ocaml.doc("<p>Information about a license type conversion task.</p>")
type licenseConversionContext = {
  @ocaml.doc("<p>The Usage operation value that corresponds to the license type you are converting your resource from.  For more information about which platforms correspond to which usage operation values see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html#billing-info\">Sample data: usage operation by platform
      </a>
         </p>")
  @as("UsageOperation")
  usageOperation: option<usageOperation>,
}
@ocaml.doc("<p>Details about the usage of a resource associated with a license configuration.</p>")
type licenseConfigurationUsage = {
  @ocaml.doc("<p>Number of licenses consumed by the resource.</p>") @as("ConsumedLicenses")
  consumedLicenses: option<boxLong>,
  @ocaml.doc(
    "<p>Time when the license configuration was initially associated with the resource.</p>"
  )
  @as("AssociationTime")
  associationTime: option<dateTime>,
  @ocaml.doc("<p>ID of the account that owns the resource.</p>") @as("ResourceOwnerId")
  resourceOwnerId: option<string_>,
  @ocaml.doc("<p>Status of the resource.</p>") @as("ResourceStatus")
  resourceStatus: option<string_>,
  @ocaml.doc("<p>Type of resource.</p>") @as("ResourceType") resourceType: option<resourceType>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<string_>,
}
@ocaml.doc("<p>Describes an association with a license configuration.</p>")
type licenseConfigurationAssociation = {
  @ocaml.doc("<p>Scope of AMI associations. The possible value is <code>cross-account</code>.</p>")
  @as("AmiAssociationScope")
  amiAssociationScope: option<string_>,
  @ocaml.doc("<p>Time when the license configuration was associated with the resource.</p>")
  @as("AssociationTime")
  associationTime: option<dateTime>,
  @ocaml.doc(
    "<p>ID of the Amazon Web Services account that owns the resource consuming licenses.</p>"
  )
  @as("ResourceOwnerId")
  resourceOwnerId: option<string_>,
  @ocaml.doc("<p>Type of server resource.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<string_>,
}
@ocaml.doc("<p>Details associated with the issuer of a license.</p>")
type issuerDetails = {
  @ocaml.doc("<p>Issuer key fingerprint.</p>") @as("KeyFingerprint")
  keyFingerprint: option<string_>,
  @ocaml.doc("<p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify, 
         and support the RSASSA-PSS SHA-256 signing algorithm.</p>")
  @as("SignKey")
  signKey: option<string_>,
  @ocaml.doc("<p>Issuer name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Details about the issuer of a license.</p>")
type issuer = {
  @ocaml.doc("<p>Asymmetric KMS key from Key Management Service. The KMS key must have a key usage of sign and verify, 
         and support the RSASSA-PSS SHA-256 signing algorithm.</p>")
  @as("SignKey")
  signKey: option<string_>,
  @ocaml.doc("<p>Issuer name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>An inventory filter.</p>")
type inventoryFilter = {
  @ocaml.doc("<p>Value of the filter.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>Condition of the filter.</p>") @as("Condition")
  condition: inventoryFilterCondition,
  @ocaml.doc("<p>Name of the filter.</p>") @as("Name") name: string_,
}
type filterValues = array<filterValue>
@ocaml.doc("<p>Usage associated with an entitlement resource.</p>")
type entitlementUsage = {
  @ocaml.doc("<p>Entitlement usage unit.</p>") @as("Unit") unit_: entitlementDataUnit,
  @ocaml.doc("<p>Maximum entitlement usage count.</p>") @as("MaxCount") maxCount: option<string_>,
  @ocaml.doc("<p>Resource usage consumed.</p>") @as("ConsumedValue") consumedValue: string_,
  @ocaml.doc("<p>Entitlement usage name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Data associated with an entitlement resource.</p>")
type entitlementData = {
  @ocaml.doc("<p>Entitlement data unit.</p>") @as("Unit") unit_: entitlementDataUnit,
  @ocaml.doc("<p>Entitlement data value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>Entitlement data name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Describes a resource entitled for use with a license.</p>")
type entitlement = {
  @ocaml.doc("<p>Indicates whether check-ins are allowed.</p>") @as("AllowCheckIn")
  allowCheckIn: option<boxBoolean>,
  @ocaml.doc("<p>Entitlement unit.</p>") @as("Unit") unit_: entitlementUnit,
  @ocaml.doc("<p>Indicates whether overages are allowed.</p>") @as("Overage")
  overage: option<boxBoolean>,
  @ocaml.doc("<p>Maximum entitlement count. Use if the unit is not None.</p>") @as("MaxCount")
  maxCount: option<long>,
  @ocaml.doc("<p>Entitlement resource. Use only if the unit is None.</p>") @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>Entitlement name.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Describes a time range, in ISO8601-UTC format.</p>")
type datetimeRange = {
  @ocaml.doc("<p>End of the time range.</p>") @as("End") end: option<iso8601DateTime>,
  @ocaml.doc("<p>Start of the time range.</p>") @as("Begin") begin: iso8601DateTime,
}
@ocaml.doc("<p>Details about license consumption.</p>")
type consumedLicenseSummary = {
  @ocaml.doc("<p>Number of licenses consumed by the resource.</p>") @as("ConsumedLicenses")
  consumedLicenses: option<boxLong>,
  @ocaml.doc("<p>Resource type of the resource consuming a license.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>Details about a borrow configuration.</p>")
type borrowConfiguration = {
  @ocaml.doc("<p>Maximum time for the borrow configuration, in minutes.</p>")
  @as("MaxTimeToLiveInMinutes")
  maxTimeToLiveInMinutes: boxInteger,
  @ocaml.doc("<p>Indicates whether early check-ins are allowed.</p>") @as("AllowEarlyCheckIn")
  allowEarlyCheckIn: boxBoolean,
}
@ocaml.doc("<p>Describes automated discovery.</p>")
type automatedDiscoveryInformation = {
  @ocaml.doc("<p>Time that automated discovery last ran.</p>") @as("LastRunTime")
  lastRunTime: option<dateTime>,
}
type arnList = array<arn>
type allowedOperationList = array<allowedOperation>
@ocaml.doc("<p>Describes a token.</p>")
type tokenData = {
  @ocaml.doc(
    "<p>Token status. The possible values are <code>AVAILABLE</code> and <code>DELETED</code>.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Amazon Resource Names (ARN) of the roles included in the token.</p>")
  @as("RoleArns")
  roleArns: option<arnList>,
  @ocaml.doc("<p>Data specified by the caller.</p>") @as("TokenProperties")
  tokenProperties: option<maxSize3StringList>,
  @ocaml.doc("<p>Token expiration time, in ISO8601-UTC format.</p>") @as("ExpirationTime")
  expirationTime: option<iso8601DateTime>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
  licenseArn: option<string_>,
  @ocaml.doc("<p>Type of token generated. The supported value is <code>REFRESH_TOKEN</code>.</p>")
  @as("TokenType")
  tokenType: option<string_>,
  @ocaml.doc("<p>Token ID.</p>") @as("TokenId") tokenId: option<string_>,
}
type tagList_ = array<tag>
type resourceInventoryList = array<resourceInventory>
@ocaml.doc("<p>Details of the license configuration that this generator reports on.</p>")
type reportContext = {
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the license configuration that this generator reports on.</p>"
  )
  licenseConfigurationArns: arnList,
}
@ocaml.doc("<p>Metadata associated with received licenses and grants.</p>")
type receivedMetadata = {
  @ocaml.doc("<p>Allowed operations.</p>") @as("AllowedOperations")
  allowedOperations: option<allowedOperationList>,
  @ocaml.doc("<p>Received status reason.</p>") @as("ReceivedStatusReason")
  receivedStatusReason: option<statusReasonMessage>,
  @ocaml.doc("<p>Received status.</p>") @as("ReceivedStatus")
  receivedStatus: option<receivedStatus>,
}
@ocaml.doc("<p>Describes product information filters.</p>")
type productInformationFilter = {
  @ocaml.doc("<p>Logical operator.</p>") @as("ProductInformationFilterComparator")
  productInformationFilterComparator: string_,
  @ocaml.doc("<p>Filter value.</p>") @as("ProductInformationFilterValue")
  productInformationFilterValue: option<stringList>,
  @ocaml.doc("<p>Filter name.</p>") @as("ProductInformationFilterName")
  productInformationFilterName: string_,
}
type metadataList = array<metadata>
type managedResourceSummaryList = array<managedResourceSummary>
type licenseSpecifications = array<licenseSpecification>
@ocaml.doc("<p>Information about a license type conversion task.</p>")
type licenseConversionTask = {
  @ocaml.doc("<p>The time the conversion task was completed.</p>") @as("EndTime")
  endTime: option<dateTime>,
  @ocaml.doc("<p>The time the usage operation value of the resource was changed.</p>")
  @as("LicenseConversionTime")
  licenseConversionTime: option<dateTime>,
  @ocaml.doc("<p>The time the conversion task was started at.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>The status message for the conversion task.</p>") @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The status of the conversion task.</p>") @as("Status")
  status: option<licenseConversionTaskStatus>,
  @ocaml.doc("<p>Information about the license type this conversion task converted to.</p>")
  @as("DestinationLicenseContext")
  destinationLicenseContext: option<licenseConversionContext>,
  @ocaml.doc("<p>Information about the license type this conversion task converted from.</p>")
  @as("SourceLicenseContext")
  sourceLicenseContext: option<licenseConversionContext>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource associated with the license type
         conversion task.</p>")
  @as("ResourceArn")
  resourceArn: option<string_>,
  @ocaml.doc("<p>The ID of the license type conversion task.</p>") @as("LicenseConversionTaskId")
  licenseConversionTaskId: option<licenseConversionTaskId>,
}
type licenseConfigurationUsageList = array<licenseConfigurationUsage>
type licenseConfigurationAssociations = array<licenseConfigurationAssociation>
type inventoryFilterList = array<inventoryFilter>
@ocaml.doc("<p>Describes a grant.</p>")
type grant = {
  @ocaml.doc("<p>Granted operations.</p>") @as("GrantedOperations")
  grantedOperations: allowedOperationList,
  @ocaml.doc("<p>Grant version.</p>") @as("Version") version: string_,
  @ocaml.doc("<p>Grant status reason.</p>") @as("StatusReason")
  statusReason: option<statusReasonMessage>,
  @ocaml.doc("<p>Grant status.</p>") @as("GrantStatus") grantStatus: grantStatus,
  @ocaml.doc("<p>Home Region of the grant.</p>") @as("HomeRegion") homeRegion: string_,
  @ocaml.doc("<p>The grantee principal ARN.</p>") @as("GranteePrincipalArn")
  granteePrincipalArn: arn,
  @ocaml.doc("<p>License ARN.</p>") @as("LicenseArn") licenseArn: arn,
  @ocaml.doc("<p>Parent ARN.</p>") @as("ParentArn") parentArn: arn,
  @ocaml.doc("<p>Grant name.</p>") @as("GrantName") grantName: string_,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
}
@ocaml.doc("<p>A filter name and value pair that is used to return more specific results from a
         describe operation. Filters can be used to match a set of resources by specific criteria,
         such as tags, attributes, or IDs.</p>")
type filter = {
  @ocaml.doc("<p>Filter values. Filter values are case-sensitive.</p>") @as("Values")
  values: option<filterValues>,
  @ocaml.doc("<p>Name of the filter. Filter names are case-sensitive.</p>") @as("Name")
  name: option<filterName>,
}
type entitlementUsageList = array<entitlementUsage>
type entitlementList = array<entitlement>
type entitlementDataList = array<entitlementData>
@ocaml.doc("<p>Details about a consumption configuration.</p>")
type consumptionConfiguration = {
  @ocaml.doc("<p>Details about a borrow configuration.</p>") @as("BorrowConfiguration")
  borrowConfiguration: option<borrowConfiguration>,
  @ocaml.doc("<p>Details about a provisional configuration.</p>") @as("ProvisionalConfiguration")
  provisionalConfiguration: option<provisionalConfiguration>,
  @ocaml.doc("<p>Renewal frequency.</p>") @as("RenewType") renewType: option<renewType>,
}
type consumedLicenseSummaryList = array<consumedLicenseSummary>
type tokenList = array<tokenData>
@ocaml.doc("<p>Describe the details of a report generator.</p>")
type reportGenerator = {
  @ocaml.doc("<p>Tags associated with the report generator.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>Time the report was created.</p>") @as("CreateTime") createTime: option<string_>,
  @ocaml.doc("<p>Details of the S3 bucket that report generator reports are published to.</p>")
  @as("S3Location")
  s3Location: option<s3Location>,
  @ocaml.doc("<p>Description of the report generator.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The Amazon Web Services account ID used to create the report generator.</p>")
  @as("ReportCreatorAccount")
  reportCreatorAccount: option<string_>,
  @ocaml.doc("<p>Time the last report was generated at.</p>") @as("LastReportGenerationTime")
  lastReportGenerationTime: option<string_>,
  @ocaml.doc("<p>Failure message for the last report generation attempt.</p>")
  @as("LastRunFailureReason")
  lastRunFailureReason: option<string_>,
  @ocaml.doc("<p>Status of the last report generation attempt.</p>") @as("LastRunStatus")
  lastRunStatus: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the report generator.</p>")
  @as("LicenseManagerReportGeneratorArn")
  licenseManagerReportGeneratorArn: option<string_>,
  @ocaml.doc("<p>Details about how frequently reports are generated.</p>") @as("ReportFrequency")
  reportFrequency: option<reportFrequency>,
  @ocaml.doc("<p>License configuration type for this generator.</p>") @as("ReportContext")
  reportContext: option<reportContext>,
  @ocaml.doc("<p>Type of reports that are generated.</p>") @as("ReportType")
  reportType: option<reportTypeList>,
  @ocaml.doc("<p>Name of the report generator.</p>") @as("ReportGeneratorName")
  reportGeneratorName: option<string_>,
}
type productInformationFilterList = array<productInformationFilter>
@ocaml.doc("<p>Describes the entitlement usage associated with a license.</p>")
type licenseUsage = {
  @ocaml.doc("<p>License entitlement usages.</p>") @as("EntitlementUsages")
  entitlementUsages: option<entitlementUsageList>,
}
@ocaml.doc("<p>Describes the failure of a license operation.</p>")
type licenseOperationFailure = {
  @ocaml.doc("<p>Reserved.</p>") @as("MetadataList") metadataList: option<metadataList>,
  @ocaml.doc("<p>The requester is \"License Manager Automated Discovery\".</p>")
  @as("OperationRequestedBy")
  operationRequestedBy: option<string_>,
  @ocaml.doc("<p>ID of the Amazon Web Services account that owns the resource.</p>")
  @as("ResourceOwnerId")
  resourceOwnerId: option<string_>,
  @ocaml.doc("<p>Name of the operation.</p>") @as("OperationName") operationName: option<string_>,
  @ocaml.doc("<p>Failure time.</p>") @as("FailureTime") failureTime: option<dateTime>,
  @ocaml.doc("<p>Error message.</p>") @as("ErrorMessage") errorMessage: option<string_>,
  @ocaml.doc("<p>Resource type.</p>") @as("ResourceType") resourceType: option<resourceType>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<string_>,
}
type licenseConversionTasks = array<licenseConversionTask>
@ocaml.doc("<p>Software license that is managed in License Manager.</p>")
type license = {
  @ocaml.doc("<p>License version.</p>") @as("Version") version: option<string_>,
  @ocaml.doc("<p>License creation time.</p>") @as("CreateTime") createTime: option<iso8601DateTime>,
  @ocaml.doc("<p>License metadata.</p>") @as("LicenseMetadata")
  licenseMetadata: option<metadataList>,
  @ocaml.doc("<p>Configuration for consumption of the license.</p>") @as("ConsumptionConfiguration")
  consumptionConfiguration: option<consumptionConfiguration>,
  @ocaml.doc("<p>License entitlements.</p>") @as("Entitlements")
  entitlements: option<entitlementList>,
  @ocaml.doc("<p>License beneficiary.</p>") @as("Beneficiary") beneficiary: option<string_>,
  @ocaml.doc("<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>")
  @as("Validity")
  validity: option<datetimeRange>,
  @ocaml.doc("<p>License status.</p>") @as("Status") status: option<licenseStatus>,
  @ocaml.doc("<p>Home Region of the license.</p>") @as("HomeRegion") homeRegion: option<string_>,
  @ocaml.doc("<p>License issuer.</p>") @as("Issuer") issuer: option<issuerDetails>,
  @ocaml.doc("<p>Product SKU.</p>") @as("ProductSKU") productSKU: option<string_>,
  @ocaml.doc("<p>Product name.</p>") @as("ProductName") productName: option<string_>,
  @ocaml.doc("<p>License name.</p>") @as("LicenseName") licenseName: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
  licenseArn: option<arn>,
}
@ocaml.doc("<p>Describes a license that is granted to a grantee.</p>")
type grantedLicense = {
  @ocaml.doc("<p>Granted license received metadata.</p>") @as("ReceivedMetadata")
  receivedMetadata: option<receivedMetadata>,
  @ocaml.doc("<p>Version of the granted license.</p>") @as("Version") version: option<string_>,
  @ocaml.doc("<p>Creation time of the granted license.</p>") @as("CreateTime")
  createTime: option<iso8601DateTime>,
  @ocaml.doc("<p>Granted license metadata.</p>") @as("LicenseMetadata")
  licenseMetadata: option<metadataList>,
  @ocaml.doc("<p>Configuration for consumption of the license.</p>") @as("ConsumptionConfiguration")
  consumptionConfiguration: option<consumptionConfiguration>,
  @ocaml.doc("<p>License entitlements.</p>") @as("Entitlements")
  entitlements: option<entitlementList>,
  @ocaml.doc("<p>Granted license beneficiary.</p>") @as("Beneficiary") beneficiary: option<string_>,
  @ocaml.doc(
    "<p>Date and time range during which the granted license is valid, in ISO8601-UTC format.</p>"
  )
  @as("Validity")
  validity: option<datetimeRange>,
  @ocaml.doc("<p>Granted license status.</p>") @as("Status") status: option<licenseStatus>,
  @ocaml.doc("<p>Home Region of the granted license.</p>") @as("HomeRegion")
  homeRegion: option<string_>,
  @ocaml.doc("<p>Granted license issuer.</p>") @as("Issuer") issuer: option<issuerDetails>,
  @ocaml.doc("<p>Product SKU.</p>") @as("ProductSKU") productSKU: option<string_>,
  @ocaml.doc("<p>Product name.</p>") @as("ProductName") productName: option<string_>,
  @ocaml.doc("<p>License name.</p>") @as("LicenseName") licenseName: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
  licenseArn: option<arn>,
}
type grantList = array<grant>
type filters = array<filter>
type filterList = array<filter>
type reportGeneratorList = array<reportGenerator>
@ocaml.doc("<p>Describes product information for a license configuration.</p>")
type productInformation = {
  @ocaml.doc("<p>A Product information filter consists of a <code>ProductInformationFilterComparator</code> which is a logical operator, a <code>ProductInformationFilterName</code> which specifies the type of filter being declared, and a <code>ProductInformationFilterValue</code> that specifies the value to filter on. </p>
         <p>Accepted values for <code>ProductInformationFilterName</code> are listed here along with descriptions and valid options for <code>ProductInformationFilterComparator</code>. </p> 
         <p>The following filters and are supported when the resource type 
         is <code>SSM_MANAGED</code>:</p>
         <ul>
            <li>
               <p>
                  <code>Application Name</code> - The name of the application.
               Logical operator is <code>EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>Application Publisher</code> - The publisher of the application.
               Logical operator is <code>EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>Application Version</code> - The version of the application.
               Logical operator is <code>EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>Platform Name</code> - The name of the platform.
               Logical operator is <code>EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>Platform Type</code> - The platform type.
               Logical operator is <code>EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>Tag:key</code> - The key of a tag attached to an Amazon Web Services resource you wish to exclude from automated discovery. Logical operator is <code>NOT_EQUALS</code>.  The key for your tag must be appended to <code>Tag:</code> following the example: <code>Tag:name-of-your-key</code>. <code>ProductInformationFilterValue</code> is optional if you are not using values for the key.
               </p>
            </li>
            <li>
               <p>
                  <code>AccountId</code> - The 12-digit ID of an Amazon Web Services account you wish to exclude from automated discovery.
               Logical operator is <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>License Included</code> - The type of license included.
               Logical operators are <code>EQUALS</code> and <code>NOT_EQUALS</code>.
               Possible values are: <code>sql-server-enterprise</code> | 
               <code>sql-server-standard</code> | 
               <code>sql-server-web</code> |  
               <code>windows-server-datacenter</code>.</p>
            </li>
         </ul>
         <p>The following filters and logical operators are supported when the resource type
         is <code>RDS</code>:</p>
         <ul>
            <li>
               <p>
                  <code>Engine Edition</code> - The edition of the database engine.
               Logical operator is <code>EQUALS</code>.
               Possible values are: <code>oracle-ee</code> | <code>oracle-se</code> | <code>oracle-se1</code> | <code>oracle-se2</code>.</p>
            </li>
            <li>
               <p>
                  <code>License Pack</code> - The license pack.
               Logical operator is <code>EQUALS</code>.
               Possible values are: <code>data guard</code> | 
               <code>diagnostic pack sqlt</code> | 
               <code>tuning pack sqlt</code> | 
               <code>ols</code> | 
               <code>olap</code>.</p>
            </li>
         </ul>")
  @as("ProductInformationFilterList")
  productInformationFilterList: productInformationFilterList,
  @ocaml.doc(
    "<p>Resource type. The possible values are <code>SSM_MANAGED</code> | <code>RDS</code>.</p>"
  )
  @as("ResourceType")
  resourceType: string_,
}
type licenseOperationFailureList = array<licenseOperationFailure>
type licenseList = array<license>
type grantedLicenseList = array<grantedLicense>
type productInformationList = array<productInformation>
@ocaml.doc("<p>A license configuration is an abstraction of a customer license agreement that can be
         consumed and enforced by License Manager. Components include specifications for the license
         type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, 
         Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM
         must be associated with a host), and the number of licenses purchased and used.</p>")
type licenseConfiguration = {
  @ocaml.doc("<p>Automated discovery information.</p>") @as("AutomatedDiscoveryInformation")
  automatedDiscoveryInformation: option<automatedDiscoveryInformation>,
  @ocaml.doc("<p>Product information.</p>") @as("ProductInformationList")
  productInformationList: option<productInformationList>,
  @ocaml.doc("<p>Summaries for managed resources.</p>") @as("ManagedResourceSummaryList")
  managedResourceSummaryList: option<managedResourceSummaryList>,
  @ocaml.doc("<p>Summaries for licenses consumed by various resources.</p>")
  @as("ConsumedLicenseSummaryList")
  consumedLicenseSummaryList: option<consumedLicenseSummaryList>,
  @ocaml.doc("<p>Account ID of the license configuration's owner.</p>") @as("OwnerAccountId")
  ownerAccountId: option<string_>,
  @ocaml.doc("<p>Status of the license configuration.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>Number of licenses consumed. </p>") @as("ConsumedLicenses")
  consumedLicenses: option<boxLong>,
  @ocaml.doc("<p>When true, disassociates a resource when software is uninstalled.</p>")
  @as("DisassociateWhenNotFound")
  disassociateWhenNotFound: option<boxBoolean>,
  @ocaml.doc("<p>Number of available licenses as a hard limit.</p>") @as("LicenseCountHardLimit")
  licenseCountHardLimit: option<boxBoolean>,
  @ocaml.doc("<p>Number of licenses managed by the license configuration.</p>") @as("LicenseCount")
  licenseCount: option<boxLong>,
  @ocaml.doc("<p>License rules.</p>") @as("LicenseRules") licenseRules: option<stringList>,
  @ocaml.doc("<p>Dimension to use to track the license inventory.</p>") @as("LicenseCountingType")
  licenseCountingType: option<licenseCountingType>,
  @ocaml.doc("<p>Description of the license configuration.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Name of the license configuration.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
  @as("LicenseConfigurationArn")
  licenseConfigurationArn: option<string_>,
  @ocaml.doc("<p>Unique ID of the license configuration.</p>") @as("LicenseConfigurationId")
  licenseConfigurationId: option<string_>,
}
type licenseConfigurations = array<licenseConfiguration>
@ocaml.doc("<p>License Manager makes it easier to manage licenses from software vendors across multiple 
         Amazon Web Services accounts and on-premises servers.</p>")
module RejectGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Grant version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Grant ARN.</p>") @as("GrantArn") grantArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "RejectGrantCommand"
  let make = (~grantArn, ()) => new({grantArn: grantArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExtendLicenseConsumption = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions.</p>"
    )
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>License consumption token.</p>") @as("LicenseConsumptionToken")
    licenseConsumptionToken: string_,
  }
  type response = {
    @ocaml.doc("<p>Date and time at which the license consumption expires.</p>") @as("Expiration")
    expiration: option<iso8601DateTime>,
    @ocaml.doc("<p>License consumption token.</p>") @as("LicenseConsumptionToken")
    licenseConsumptionToken: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ExtendLicenseConsumptionCommand"
  let make = (~licenseConsumptionToken, ~dryRun=?, ()) =>
    new({dryRun: dryRun, licenseConsumptionToken: licenseConsumptionToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteToken = {
  type t
  type request = {@ocaml.doc("<p>Token ID.</p>") @as("TokenId") tokenId: string_}
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "DeleteTokenCommand"
  let make = (~tokenId, ()) => new({tokenId: tokenId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLicenseManagerReportGenerator = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the report generator to be deleted.</p>")
    @as("LicenseManagerReportGeneratorArn")
    licenseManagerReportGeneratorArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "DeleteLicenseManagerReportGeneratorCommand"
  let make = (~licenseManagerReportGeneratorArn, ()) =>
    new({licenseManagerReportGeneratorArn: licenseManagerReportGeneratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>ID of the license configuration.</p>") @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "DeleteLicenseConfigurationCommand"
  let make = (~licenseConfigurationArn, ()) =>
    new({licenseConfigurationArn: licenseConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLicense = {
  type t
  type request = {
    @ocaml.doc("<p>Current version of the license.</p>") @as("SourceVersion")
    sourceVersion: string_,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Date when the license is deleted.</p>") @as("DeletionDate")
    deletionDate: option<iso8601DateTime>,
    @ocaml.doc("<p>License status.</p>") @as("Status") status: option<licenseDeletionStatus>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "DeleteLicenseCommand"
  let make = (~sourceVersion, ~licenseArn, ()) =>
    new({sourceVersion: sourceVersion, licenseArn: licenseArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Current version of the grant.</p>") @as("Version") version: string_,
    @ocaml.doc("<p>The Status reason for the delete request.</p>") @as("StatusReason")
    statusReason: option<statusReasonMessage>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Grant version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Grant ARN.</p>") @as("GrantArn") grantArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "DeleteGrantCommand"
  let make = (~version, ~grantArn, ~statusReason=?, ()) =>
    new({version: version, statusReason: statusReason, grantArn: grantArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckInLicense = {
  type t
  type request = {
    @ocaml.doc("<p>License beneficiary.</p>") @as("Beneficiary") beneficiary: option<string_>,
    @ocaml.doc("<p>License consumption token.</p>") @as("LicenseConsumptionToken")
    licenseConsumptionToken: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CheckInLicenseCommand"
  let make = (~licenseConsumptionToken, ~beneficiary=?, ()) =>
    new({beneficiary: beneficiary, licenseConsumptionToken: licenseConsumptionToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Grant version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Grant ARN.</p>") @as("GrantArn") grantArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "AcceptGrantCommand"
  let make = (~grantArn, ()) => new({grantArn: grantArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateServiceSettings = {
  type t
  type request = {
    @ocaml.doc("<p>Activates cross-account discovery.</p>") @as("EnableCrossAccountsDiscovery")
    enableCrossAccountsDiscovery: option<boxBoolean>,
    @ocaml.doc("<p>Enables integration with Organizations for cross-account discovery.</p>")
    @as("OrganizationConfiguration")
    organizationConfiguration: option<organizationConfiguration>,
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>"
    )
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>"
    )
    @as("S3BucketArn")
    s3BucketArn: option<string_>,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "UpdateServiceSettingsCommand"
  let make = (
    ~enableCrossAccountsDiscovery=?,
    ~organizationConfiguration=?,
    ~snsTopicArn=?,
    ~s3BucketArn=?,
    (),
  ) =>
    new({
      enableCrossAccountsDiscovery: enableCrossAccountsDiscovery,
      organizationConfiguration: organizationConfiguration,
      snsTopicArn: snsTopicArn,
      s3BucketArn: s3BucketArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Keys identifying the tags to remove.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>") @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetServiceSettings = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the resource share. The License Manager management account 
         provides member accounts with access to this share.</p>")
    @as("LicenseManagerResourceShareArn")
    licenseManagerResourceShareArn: option<string_>,
    @ocaml.doc("<p>Indicates whether cross-account discovery is enabled.</p>")
    @as("EnableCrossAccountsDiscovery")
    enableCrossAccountsDiscovery: option<boxBoolean>,
    @ocaml.doc("<p>Indicates whether Organizations is integrated with License Manager for
         cross-account discovery.</p>")
    @as("OrganizationConfiguration")
    organizationConfiguration: option<organizationConfiguration>,
    @ocaml.doc("<p>SNS topic configured to receive notifications from License Manager.</p>")
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>Regional S3 bucket path for storing reports, license trail event data, discovery data,
         and so on.</p>")
    @as("S3BucketArn")
    s3BucketArn: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetServiceSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLicenseConversionTask = {
  type t
  type request = {
    @ocaml.doc("<p>ID of the license type conversion task to retrieve information on.</p>")
    @as("LicenseConversionTaskId")
    licenseConversionTaskId: licenseConversionTaskId,
  }
  type response = {
    @ocaml.doc("<p>Time at which the license type conversion task was completed.</p>")
    @as("EndTime")
    endTime: option<dateTime>,
    @ocaml.doc("<p>Amount of time to complete the license type conversion.</p>")
    @as("LicenseConversionTime")
    licenseConversionTime: option<dateTime>,
    @ocaml.doc("<p>Time at which the license type conversion task was started .</p>")
    @as("StartTime")
    startTime: option<dateTime>,
    @ocaml.doc("<p>Status of the license type conversion task.</p>") @as("Status")
    status: option<licenseConversionTaskStatus>,
    @ocaml.doc("<p>The status message for the conversion task.</p>") @as("StatusMessage")
    statusMessage: option<string_>,
    @ocaml.doc("<p>Information about the license type converted to.</p>")
    @as("DestinationLicenseContext")
    destinationLicenseContext: option<licenseConversionContext>,
    @ocaml.doc("<p>Information about the license type converted from.</p>")
    @as("SourceLicenseContext")
    sourceLicenseContext: option<licenseConversionContext>,
    @ocaml.doc(
      "<p>Amazon Resource Names (ARN) of the resources the license conversion task is associated with.</p>"
    )
    @as("ResourceArn")
    resourceArn: option<string_>,
    @ocaml.doc("<p>ID of the license type conversion task.</p>") @as("LicenseConversionTaskId")
    licenseConversionTaskId: option<licenseConversionTaskId>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetLicenseConversionTaskCommand"
  let make = (~licenseConversionTaskId, ()) =>
    new({licenseConversionTaskId: licenseConversionTaskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccessToken = {
  type t
  type request = {
    @ocaml.doc("<p>Token properties to validate against those present in the JWT token.</p>")
    @as("TokenProperties")
    tokenProperties: option<maxSize3StringList>,
    @ocaml.doc("<p>Refresh token, encoded as a JWT token.</p>") @as("Token") token: tokenString,
  }
  type response = {
    @ocaml.doc("<p>Temporary access token.</p>") @as("AccessToken")
    accessToken: option<tokenString>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetAccessTokenCommand"
  let make = (~token, ~tokenProperties=?, ()) =>
    new({tokenProperties: tokenProperties, token: token})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateToken = {
  type t
  type request = {
    @ocaml.doc("<p>Idempotency token, valid for 10 minutes.</p>") @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>Data specified by the caller to be included in the JWT token. The data is mapped
          to the amr claim of the JWT token.</p>")
    @as("TokenProperties")
    tokenProperties: option<maxSize3StringList>,
    @ocaml.doc(
      "<p>Token expiration, in days, counted from token creation. The default is 365 days.</p>"
    )
    @as("ExpirationInDays")
    expirationInDays: option<integer_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the IAM roles to embed in the token. 
         License Manager does not check whether the roles are in use.</p>")
    @as("RoleArns")
    roleArns: option<arnList>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the
          JWT token.</p>")
    @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Refresh token, encoded as a JWT token.</p>") @as("Token")
    token: option<tokenString>,
    @ocaml.doc("<p>Token type.</p>") @as("TokenType") tokenType: option<tokenType>,
    @ocaml.doc("<p>Token ID.</p>") @as("TokenId") tokenId: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "CreateTokenCommand"
  let make = (
    ~clientToken,
    ~licenseArn,
    ~tokenProperties=?,
    ~expirationInDays=?,
    ~roleArns=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tokenProperties: tokenProperties,
      expirationInDays: expirationInDays,
      roleArns: roleArns,
      licenseArn: licenseArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLicenseConversionTaskForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Information that identifies the license type you are converting to. For the structure of the destination license, see <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli\">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>"
    )
    @as("DestinationLicenseContext")
    destinationLicenseContext: licenseConversionContext,
    @ocaml.doc("<p>Information that identifies the license type you are converting from. 
         For the structure of the source license, see <a href=\"https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli\">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>")
    @as("SourceLicenseContext")
    sourceLicenseContext: licenseConversionContext,
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the resource you are converting the license type for.</p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ID of the created license type conversion task.</p>")
    @as("LicenseConversionTaskId")
    licenseConversionTaskId: option<licenseConversionTaskId>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateLicenseConversionTaskForResourceCommand"
  let make = (~destinationLicenseContext, ~sourceLicenseContext, ~resourceArn, ()) =>
    new({
      destinationLicenseContext: destinationLicenseContext,
      sourceLicenseContext: sourceLicenseContext,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGrantVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Current version of the grant.</p>") @as("SourceVersion")
    sourceVersion: option<string_>,
    @ocaml.doc("<p>Grant status reason.</p>") @as("StatusReason")
    statusReason: option<statusReasonMessage>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Allowed operations for the grant.</p>") @as("AllowedOperations")
    allowedOperations: option<allowedOperationList>,
    @ocaml.doc("<p>Grant name.</p>") @as("GrantName") grantName: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
  }
  type response = {
    @ocaml.doc("<p>New version of the grant.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Grant ARN.</p>") @as("GrantArn") grantArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateGrantVersionCommand"
  let make = (
    ~grantArn,
    ~clientToken,
    ~sourceVersion=?,
    ~statusReason=?,
    ~status=?,
    ~allowedOperations=?,
    ~grantName=?,
    (),
  ) =>
    new({
      sourceVersion: sourceVersion,
      statusReason: statusReason,
      status: status,
      allowedOperations: allowedOperations,
      grantName: grantName,
      grantArn: grantArn,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Allowed operations for the grant.</p>") @as("AllowedOperations")
    allowedOperations: allowedOperationList,
    @ocaml.doc("<p>Home Region of the grant.</p>") @as("HomeRegion") homeRegion: string_,
    @ocaml.doc("<p>The grant principals.</p>") @as("Principals") principals: principalArnList,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
    @ocaml.doc("<p>Grant name.</p>") @as("GrantName") grantName: string_,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
  }
  type response = {
    @ocaml.doc("<p>Grant version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Grant status.</p>") @as("Status") status: option<grantStatus>,
    @ocaml.doc("<p>Grant ARN.</p>") @as("GrantArn") grantArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "CreateGrantCommand"
  let make = (
    ~allowedOperations,
    ~homeRegion,
    ~principals,
    ~licenseArn,
    ~grantName,
    ~clientToken,
    (),
  ) =>
    new({
      allowedOperations: allowedOperations,
      homeRegion: homeRegion,
      principals: principals,
      licenseArn: licenseArn,
      grantName: grantName,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLicenseSpecificationsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>ARNs of the license configurations to remove.</p>")
    @as("RemoveLicenseSpecifications")
    removeLicenseSpecifications: option<licenseSpecifications>,
    @ocaml.doc("<p>ARNs of the license configurations to add.</p>") @as("AddLicenseSpecifications")
    addLicenseSpecifications: option<licenseSpecifications>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "UpdateLicenseSpecificationsForResourceCommand"
  let make = (~resourceArn, ~removeLicenseSpecifications=?, ~addLicenseSpecifications=?, ()) =>
    new({
      removeLicenseSpecifications: removeLicenseSpecifications,
      addLicenseSpecifications: addLicenseSpecifications,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLicenseManagerReportGenerator = {
  type t
  type request = {
    @ocaml.doc("<p>Description of the report generator.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientRequestToken,
    @ocaml.doc("<p>Frequency by which reports are generated.</p>") @as("ReportFrequency")
    reportFrequency: reportFrequency,
    @ocaml.doc("<p>The report context.</p>") @as("ReportContext") reportContext: reportContext,
    @ocaml.doc("<p>Type of reports to generate. The following report types are supported:</p>
         <ul>
            <li>
               <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
            </li>
            <li>
               <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
            </li>
         </ul>")
    @as("Type")
    type_: reportTypeList,
    @ocaml.doc("<p>Name of the report generator.</p>") @as("ReportGeneratorName")
    reportGeneratorName: reportGeneratorName,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the report generator to update.</p>")
    @as("LicenseManagerReportGeneratorArn")
    licenseManagerReportGeneratorArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "UpdateLicenseManagerReportGeneratorCommand"
  let make = (
    ~clientToken,
    ~reportFrequency,
    ~reportContext,
    ~type_,
    ~reportGeneratorName,
    ~licenseManagerReportGeneratorArn,
    ~description=?,
    (),
  ) =>
    new({
      description: description,
      clientToken: clientToken,
      reportFrequency: reportFrequency,
      reportContext: reportContext,
      type_: type_,
      reportGeneratorName: reportGeneratorName,
      licenseManagerReportGeneratorArn: licenseManagerReportGeneratorArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>") @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>") @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceInventory = {
  type t
  type request = {
    @ocaml.doc("<p>Filters to scope the results. The following filters and logical operators
        are supported:</p>
         <ul>
            <li>
               <p>
                  <code>account_id</code> - The ID of the Amazon Web Services account that owns the resource.
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>application_name</code> - The name of the application. 
               Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
            </li>
            <li>
               <p>
                  <code>license_included</code> - The type of license included. 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.
               Possible values are <code>sql-server-enterprise</code> | 
               <code>sql-server-standard</code> | 
               <code>sql-server-web</code> |  
               <code>windows-server-datacenter</code>.</p>
            </li>
            <li>
               <p>
                  <code>platform</code> - The platform of the resource.
               Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
            </li>
            <li>
               <p>
                  <code>resource_id</code> - The ID of the resource. 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>tag:<key></code> - The key/value combination of a tag assigned 
               to the resource. Logical operators are <code>EQUALS</code> (single account) or
               <code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<inventoryFilterList>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the resources.</p>") @as("ResourceInventoryList")
    resourceInventoryList: option<resourceInventoryList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListResourceInventoryCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({filters: filters, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenseSpecificationsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>"
    )
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>License configurations associated with a resource.</p>")
    @as("LicenseSpecifications")
    licenseSpecifications: option<licenseSpecifications>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListLicenseSpecificationsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociationsForLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of a license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the associations for the license configuration.</p>")
    @as("LicenseConfigurationAssociations")
    licenseConfigurationAssociations: option<licenseConfigurationAssociations>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListAssociationsForLicenseConfigurationCommand"
  let make = (~licenseConfigurationArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      licenseConfigurationArn: licenseConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetGrant = {
  type t
  type request = {
    @ocaml.doc("<p>Grant version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the grant.</p>") @as("GrantArn") grantArn: arn,
  }
  type response = {@ocaml.doc("<p>Grant details.</p>") @as("Grant") grant: option<grant>}
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "GetGrantCommand"
  let make = (~grantArn, ~version=?, ()) => new({version: version, grantArn: grantArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLicenseVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Current version of the license.</p>") @as("SourceVersion")
    sourceVersion: option<string_>,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>License status.</p>") @as("Status") status: licenseStatus,
    @ocaml.doc("<p>Configuration for consumption of the license. Choose a provisional configuration for workloads
         running with continuous connectivity. Choose a borrow configuration for workloads with offline
         usage.</p>")
    @as("ConsumptionConfiguration")
    consumptionConfiguration: consumptionConfiguration,
    @ocaml.doc("<p>License entitlements.</p>") @as("Entitlements") entitlements: entitlementList,
    @ocaml.doc("<p>Information about the license.</p>") @as("LicenseMetadata")
    licenseMetadata: option<metadataList>,
    @ocaml.doc(
      "<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>"
    )
    @as("Validity")
    validity: datetimeRange,
    @ocaml.doc("<p>Home Region of the license.</p>") @as("HomeRegion") homeRegion: string_,
    @ocaml.doc("<p>License issuer.</p>") @as("Issuer") issuer: issuer,
    @ocaml.doc("<p>Product name.</p>") @as("ProductName") productName: string_,
    @ocaml.doc("<p>License name.</p>") @as("LicenseName") licenseName: string_,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>License status.</p>") @as("Status") status: option<licenseStatus>,
    @ocaml.doc("<p>New version of the license.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>License ARN.</p>") @as("LicenseArn") licenseArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateLicenseVersionCommand"
  let make = (
    ~clientToken,
    ~status,
    ~consumptionConfiguration,
    ~entitlements,
    ~validity,
    ~homeRegion,
    ~issuer,
    ~productName,
    ~licenseName,
    ~licenseArn,
    ~sourceVersion=?,
    ~licenseMetadata=?,
    (),
  ) =>
    new({
      sourceVersion: sourceVersion,
      clientToken: clientToken,
      status: status,
      consumptionConfiguration: consumptionConfiguration,
      entitlements: entitlements,
      licenseMetadata: licenseMetadata,
      validity: validity,
      homeRegion: homeRegion,
      issuer: issuer,
      productName: productName,
      licenseName: licenseName,
      licenseArn: licenseArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLicenseManagerReportGenerator = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to add to the report generator.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>Description of the report generator.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientRequestToken,
    @ocaml.doc(
      "<p>Frequency by which reports are generated.  Reports can be generated daily, monthly, or weekly.</p>"
    )
    @as("ReportFrequency")
    reportFrequency: reportFrequency,
    @ocaml.doc("<p>Defines the type of license configuration the report generator tracks.</p>")
    @as("ReportContext")
    reportContext: reportContext,
    @ocaml.doc("<p>Type of reports to generate. The following report types an be generated:</p>
         <ul>
            <li>
               <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
            </li>
            <li>
               <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
            </li>
         </ul>")
    @as("Type")
    type_: reportTypeList,
    @ocaml.doc("<p>Name of the report generator.</p>") @as("ReportGeneratorName")
    reportGeneratorName: reportGeneratorName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new report generator.</p>")
    @as("LicenseManagerReportGeneratorArn")
    licenseManagerReportGeneratorArn: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateLicenseManagerReportGeneratorCommand"
  let make = (
    ~clientToken,
    ~reportFrequency,
    ~reportContext,
    ~type_,
    ~reportGeneratorName,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      description: description,
      clientToken: clientToken,
      reportFrequency: reportFrequency,
      reportContext: reportContext,
      type_: type_,
      reportGeneratorName: reportGeneratorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLicense = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>Information about the license.</p>") @as("LicenseMetadata")
    licenseMetadata: option<metadataList>,
    @ocaml.doc("<p>Configuration for consumption of the license. Choose a provisional configuration for workloads
          running with continuous connectivity. Choose a borrow configuration for workloads with offline
          usage.</p>")
    @as("ConsumptionConfiguration")
    consumptionConfiguration: consumptionConfiguration,
    @ocaml.doc("<p>License beneficiary.</p>") @as("Beneficiary") beneficiary: string_,
    @ocaml.doc("<p>License entitlements.</p>") @as("Entitlements") entitlements: entitlementList,
    @ocaml.doc(
      "<p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>"
    )
    @as("Validity")
    validity: datetimeRange,
    @ocaml.doc("<p>Home Region for the license.</p>") @as("HomeRegion") homeRegion: string_,
    @ocaml.doc("<p>License issuer.</p>") @as("Issuer") issuer: issuer,
    @ocaml.doc("<p>Product SKU.</p>") @as("ProductSKU") productSKU: string_,
    @ocaml.doc("<p>Product name.</p>") @as("ProductName") productName: string_,
    @ocaml.doc("<p>License name.</p>") @as("LicenseName") licenseName: string_,
  }
  type response = {
    @ocaml.doc("<p>License version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>License status.</p>") @as("Status") status: option<licenseStatus>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateLicenseCommand"
  let make = (
    ~clientToken,
    ~consumptionConfiguration,
    ~beneficiary,
    ~entitlements,
    ~validity,
    ~homeRegion,
    ~issuer,
    ~productSKU,
    ~productName,
    ~licenseName,
    ~licenseMetadata=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      licenseMetadata: licenseMetadata,
      consumptionConfiguration: consumptionConfiguration,
      beneficiary: beneficiary,
      entitlements: entitlements,
      validity: validity,
      homeRegion: homeRegion,
      issuer: issuer,
      productSKU: productSKU,
      productName: productName,
      licenseName: licenseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckoutLicense = {
  type t
  type request = {
    @ocaml.doc("<p>Node ID.</p>") @as("NodeId") nodeId: option<string_>,
    @ocaml.doc("<p>License beneficiary.</p>") @as("Beneficiary") beneficiary: option<string_>,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>License entitlements.</p>") @as("Entitlements")
    entitlements: entitlementDataList,
    @ocaml.doc("<p>Key fingerprint identifying the license.</p>") @as("KeyFingerprint")
    keyFingerprint: string_,
    @ocaml.doc("<p>Checkout type.</p>") @as("CheckoutType") checkoutType: checkoutType,
    @ocaml.doc("<p>Product SKU.</p>") @as("ProductSKU") productSKU: string_,
  }
  type response = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the checkout license.</p>") @as("LicenseArn")
    licenseArn: option<string_>,
    @ocaml.doc("<p>Date and time at which the license checkout expires.</p>") @as("Expiration")
    expiration: option<iso8601DateTime>,
    @ocaml.doc("<p>Date and time at which the license checkout is issued.</p>") @as("IssuedAt")
    issuedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>Node ID.</p>") @as("NodeId") nodeId: option<string_>,
    @ocaml.doc("<p>Signed token.</p>") @as("SignedToken") signedToken: option<signedToken>,
    @ocaml.doc("<p>Allowed license entitlements.</p>") @as("EntitlementsAllowed")
    entitlementsAllowed: option<entitlementDataList>,
    @ocaml.doc("<p>License consumption token.</p>") @as("LicenseConsumptionToken")
    licenseConsumptionToken: option<string_>,
    @ocaml.doc("<p>Checkout type.</p>") @as("CheckoutType") checkoutType: option<checkoutType>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CheckoutLicenseCommand"
  let make = (
    ~clientToken,
    ~entitlements,
    ~keyFingerprint,
    ~checkoutType,
    ~productSKU,
    ~nodeId=?,
    ~beneficiary=?,
    (),
  ) =>
    new({
      nodeId: nodeId,
      beneficiary: beneficiary,
      clientToken: clientToken,
      entitlements: entitlements,
      keyFingerprint: keyFingerprint,
      checkoutType: checkoutType,
      productSKU: productSKU,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckoutBorrowLicense = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>Information about constraints.</p>") @as("CheckoutMetadata")
    checkoutMetadata: option<metadataList>,
    @ocaml.doc("<p>Node ID.</p>") @as("NodeId") nodeId: option<string_>,
    @ocaml.doc("<p>Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384.
         For more information, see <a href=\"https://tools.ietf.org/html/rfc7518#section-3.5\">RFC 7518 Digital Signature with RSASSA-PSS</a>.</p>")
    @as("DigitalSignatureMethod")
    digitalSignatureMethod: digitalSignatureMethod,
    @ocaml.doc("<p>License entitlements. Partial checkouts are not supported.</p>")
    @as("Entitlements")
    entitlements: entitlementDataList,
    @ocaml.doc(
      "<p>Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration.</p>"
    )
    @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about constraints.</p>") @as("CheckoutMetadata")
    checkoutMetadata: option<metadataList>,
    @ocaml.doc("<p>Date and time at which the license checkout expires.</p>") @as("Expiration")
    expiration: option<iso8601DateTime>,
    @ocaml.doc("<p>Date and time at which the license checkout is issued.</p>") @as("IssuedAt")
    issuedAt: option<iso8601DateTime>,
    @ocaml.doc("<p>Signed token.</p>") @as("SignedToken") signedToken: option<signedToken>,
    @ocaml.doc("<p>Node ID.</p>") @as("NodeId") nodeId: option<string_>,
    @ocaml.doc("<p>Allowed license entitlements.</p>") @as("EntitlementsAllowed")
    entitlementsAllowed: option<entitlementDataList>,
    @ocaml.doc("<p>License consumption token.</p>") @as("LicenseConsumptionToken")
    licenseConsumptionToken: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: option<arn>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CheckoutBorrowLicenseCommand"
  let make = (
    ~clientToken,
    ~digitalSignatureMethod,
    ~entitlements,
    ~licenseArn,
    ~checkoutMetadata=?,
    ~nodeId=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      checkoutMetadata: checkoutMetadata,
      nodeId: nodeId,
      digitalSignatureMethod: digitalSignatureMethod,
      entitlements: entitlements,
      licenseArn: licenseArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsageForLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Filters to scope the results. The following filters and logical operators
        are supported:</p>
         <ul>
            <li>
               <p>
                  <code>resourceArn</code> - The ARN of the license configuration resource.
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>resourceType</code> - The resource type (<code>EC2_INSTANCE</code> | <code>EC2_HOST</code> | <code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>). 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>resourceAccount</code> - The ID of the account that owns the resource. 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the license configurations.</p>")
    @as("LicenseConfigurationUsageList")
    licenseConfigurationUsageList: option<licenseConfigurationUsageList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListUsageForLicenseConfigurationCommand"
  let make = (~licenseConfigurationArn, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      licenseConfigurationArn: licenseConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTokens = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filter is supported:</p>
         <ul>
            <li>
               <p>
                  <code>LicenseArns</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Token IDs.</p>") @as("TokenIds") tokenIds: option<stringList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Received token details.</p>") @as("Tokens") tokens: option<tokenList>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "ListTokensCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~tokenIds=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, tokenIds: tokenIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReceivedGrants = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filters are supported:</p>
         <ul>
            <li>
               <p>
                  <code>ProductSKU</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LicenseIssuerName</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LicenseArn</code>
               </p>
            </li>
            <li>
               <p>
                  <code>GrantStatus</code>
               </p>
            </li>
            <li>
               <p>
                  <code>GranterAccountId</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Amazon Resource Names (ARNs) of the grants.</p>") @as("GrantArns")
    grantArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Received grant details.</p>") @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListReceivedGrantsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~grantArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, grantArns: grantArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenseConversionTasks = {
  type t
  type request = {
    @ocaml.doc("<p>
         Filters to scope the results. Valid filters are <code>ResourceArns</code> and <code>Status</code>.
      </p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the license configuration tasks for your account.</p>")
    @as("LicenseConversionTasks")
    licenseConversionTasks: option<licenseConversionTasks>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListLicenseConversionTasksCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filters: filters, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDistributedGrants = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filters are supported:</p>
         <ul>
            <li>
               <p>
                  <code>LicenseArn</code>
               </p>
            </li>
            <li>
               <p>
                  <code>GrantStatus</code>
               </p>
            </li>
            <li>
               <p>
                  <code>GranteePrincipalARN</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ProductSKU</code>
               </p>
            </li>
            <li>
               <p>
                  <code>LicenseIssuerName</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Amazon Resource Names (ARNs) of the grants.</p>") @as("GrantArns")
    grantArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Distributed grant details.</p>") @as("Grants") grants: option<grantList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListDistributedGrantsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~grantArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, grantArns: grantArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLicenseUsage = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>License usage details.</p>") @as("LicenseUsage")
    licenseUsage: option<licenseUsage>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetLicenseUsageCommand"
  let make = (~licenseArn, ()) => new({licenseArn: licenseArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLicenseManagerReportGenerator = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the report generator.</p>")
    @as("LicenseManagerReportGeneratorArn")
    licenseManagerReportGeneratorArn: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A report generator that creates periodic reports about your license configurations.</p>"
    )
    @as("ReportGenerator")
    reportGenerator: option<reportGenerator>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetLicenseManagerReportGeneratorCommand"
  let make = (~licenseManagerReportGeneratorArn, ()) =>
    new({licenseManagerReportGeneratorArn: licenseManagerReportGeneratorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLicense = {
  type t
  type request = {
    @ocaml.doc("<p>License version.</p>") @as("Version") version: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {@ocaml.doc("<p>License details.</p>") @as("License") license: option<license>}
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "GetLicenseCommand"
  let make = (~licenseArn, ~version=?, ()) => new({version: version, licenseArn: licenseArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReceivedLicenses = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filters are supported:</p>
         <ul>
            <li>
               <p>
                  <code>ProductSKU</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Status</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Fingerprint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>IssuerName</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Beneficiary</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Amazon Resource Names (ARNs) of the licenses.</p>") @as("LicenseArns")
    licenseArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Received license details.</p>") @as("Licenses")
    licenses: option<grantedLicenseList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListReceivedLicensesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~licenseArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, licenseArns: licenseArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenses = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filters are supported:</p>
         <ul>
            <li>
               <p>
                  <code>Beneficiary</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ProductSKU</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Fingerprint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Status</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Amazon Resource Names (ARNs) of the licenses.</p>") @as("LicenseArns")
    licenseArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>License details.</p>") @as("Licenses") licenses: option<licenseList>,
  }
  @module("@aws-sdk/client-license-manager") @new external new: request => t = "ListLicensesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ~licenseArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, licenseArns: licenseArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenseVersions = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license.</p>") @as("LicenseArn")
    licenseArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>License details.</p>") @as("Licenses") licenses: option<licenseList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListLicenseVersionsCommand"
  let make = (~licenseArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, licenseArn: licenseArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenseManagerReportGenerators = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters to scope the results. The following filters are supported: </p>
         <ul>
            <li>
               <p>
                  <code>LicenseConfigurationArn</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A report generator that creates periodic reports about your license configurations.</p>"
    )
    @as("ReportGenerators")
    reportGenerators: option<reportGeneratorList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListLicenseManagerReportGeneratorsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFailuresForLicenseConfigurationOperations = {
  type t
  type request = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc("<p>Amazon Resource Name of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>License configuration operations that failed.</p>")
    @as("LicenseOperationFailureList")
    licenseOperationFailureList: option<licenseOperationFailureList>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListFailuresForLicenseConfigurationOperationsCommand"
  let make = (~licenseConfigurationArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      licenseConfigurationArn: licenseConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>When true, disassociates a resource when software is uninstalled.</p>")
    @as("DisassociateWhenNotFound")
    disassociateWhenNotFound: option<boxBoolean>,
    @ocaml.doc("<p>New product information.</p>") @as("ProductInformationList")
    productInformationList: option<productInformationList>,
    @ocaml.doc("<p>New description of the license configuration.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>New name of the license configuration.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>New hard limit of the number of available licenses.</p>")
    @as("LicenseCountHardLimit")
    licenseCountHardLimit: option<boxBoolean>,
    @ocaml.doc("<p>New number of licenses managed by the license configuration.</p>")
    @as("LicenseCount")
    licenseCount: option<boxLong>,
    @ocaml.doc("<p>New license rule. The only rule that you can add after you create a license
          configuration is licenseAffinityToHost.</p>")
    @as("LicenseRules")
    licenseRules: option<stringList>,
    @ocaml.doc("<p>New status of the license configuration.</p>") @as("LicenseConfigurationStatus")
    licenseConfigurationStatus: option<licenseConfigurationStatus>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "UpdateLicenseConfigurationCommand"
  let make = (
    ~licenseConfigurationArn,
    ~disassociateWhenNotFound=?,
    ~productInformationList=?,
    ~description=?,
    ~name=?,
    ~licenseCountHardLimit=?,
    ~licenseCount=?,
    ~licenseRules=?,
    ~licenseConfigurationStatus=?,
    (),
  ) =>
    new({
      disassociateWhenNotFound: disassociateWhenNotFound,
      productInformationList: productInformationList,
      description: description,
      name: name,
      licenseCountHardLimit: licenseCountHardLimit,
      licenseCount: licenseCount,
      licenseRules: licenseRules,
      licenseConfigurationStatus: licenseConfigurationStatus,
      licenseConfigurationArn: licenseConfigurationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: string_,
  }
  type response = {
    @ocaml.doc("<p>When true, disassociates a resource when software is uninstalled.</p>")
    @as("DisassociateWhenNotFound")
    disassociateWhenNotFound: option<boxBoolean>,
    @ocaml.doc("<p>Automated discovery information.</p>") @as("AutomatedDiscoveryInformation")
    automatedDiscoveryInformation: option<automatedDiscoveryInformation>,
    @ocaml.doc("<p>Product information.</p>") @as("ProductInformationList")
    productInformationList: option<productInformationList>,
    @ocaml.doc("<p>Tags for the license configuration.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>Summaries of the managed resources.</p>") @as("ManagedResourceSummaryList")
    managedResourceSummaryList: option<managedResourceSummaryList>,
    @ocaml.doc("<p>Summaries of the licenses consumed by resources.</p>")
    @as("ConsumedLicenseSummaryList")
    consumedLicenseSummaryList: option<consumedLicenseSummaryList>,
    @ocaml.doc("<p>Account ID of the owner of the license configuration.</p>") @as("OwnerAccountId")
    ownerAccountId: option<string_>,
    @ocaml.doc("<p>License configuration status.</p>") @as("Status") status: option<string_>,
    @ocaml.doc("<p>Number of licenses assigned to resources.</p>") @as("ConsumedLicenses")
    consumedLicenses: option<boxLong>,
    @ocaml.doc("<p>Sets the number of available licenses as a hard limit.</p>")
    @as("LicenseCountHardLimit")
    licenseCountHardLimit: option<boxBoolean>,
    @ocaml.doc("<p>Number of available licenses.</p>") @as("LicenseCount")
    licenseCount: option<boxLong>,
    @ocaml.doc("<p>License rules.</p>") @as("LicenseRules") licenseRules: option<stringList>,
    @ocaml.doc("<p>Dimension for which the licenses are counted.</p>") @as("LicenseCountingType")
    licenseCountingType: option<licenseCountingType>,
    @ocaml.doc("<p>Description of the license configuration.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>Name of the license configuration.</p>") @as("Name") name: option<string_>,
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: option<string_>,
    @ocaml.doc("<p>Unique ID for the license configuration.</p>") @as("LicenseConfigurationId")
    licenseConfigurationId: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "GetLicenseConfigurationCommand"
  let make = (~licenseConfigurationArn, ()) =>
    new({licenseConfigurationArn: licenseConfigurationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLicenseConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Product information.</p>") @as("ProductInformationList")
    productInformationList: option<productInformationList>,
    @ocaml.doc("<p>When true, disassociates a resource when software is uninstalled.</p>")
    @as("DisassociateWhenNotFound")
    disassociateWhenNotFound: option<boxBoolean>,
    @ocaml.doc("<p>Tags to add to the license configuration.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules 
         vary by dimension, as follows.</p>
         <ul>
            <li>
               <p>
                  <code>Cores</code> dimension: <code>allowedTenancy</code> |
               <code>licenseAffinityToHost</code> |
               <code>maximumCores</code> | <code>minimumCores</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Instances</code> dimension: <code>allowedTenancy</code> | 
               <code>maximumCores</code> | <code>minimumCores</code> |
               <code>maximumSockets</code> | <code>minimumSockets</code> |
               <code>maximumVcpus</code> | <code>minimumVcpus</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Sockets</code> dimension: <code>allowedTenancy</code> | 
               <code>licenseAffinityToHost</code> |
               <code>maximumSockets</code> | <code>minimumSockets</code>
               </p>
            </li>
            <li>
               <p>
                  <code>vCPUs</code> dimension: <code>allowedTenancy</code> | 
               <code>honorVcpuOptimization</code> | 
               <code>maximumVcpus</code> | <code>minimumVcpus</code>
               </p>
            </li>
         </ul>
         <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible 
         values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and 
         <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are 
         <code>True</code> and <code>False</code>.</p>")
    @as("LicenseRules")
    licenseRules: option<stringList>,
    @ocaml.doc("<p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit
         blocks the launch of new instances.</p>")
    @as("LicenseCountHardLimit")
    licenseCountHardLimit: option<boxBoolean>,
    @ocaml.doc("<p>Number of licenses managed by the license configuration.</p>")
    @as("LicenseCount")
    licenseCount: option<boxLong>,
    @ocaml.doc("<p>Dimension used to track the license inventory.</p>") @as("LicenseCountingType")
    licenseCountingType: licenseCountingType,
    @ocaml.doc("<p>Description of the license configuration.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>Name of the license configuration.</p>") @as("Name") name: string_,
  }
  type response = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the license configuration.</p>")
    @as("LicenseConfigurationArn")
    licenseConfigurationArn: option<string_>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "CreateLicenseConfigurationCommand"
  let make = (
    ~licenseCountingType,
    ~name,
    ~productInformationList=?,
    ~disassociateWhenNotFound=?,
    ~tags=?,
    ~licenseRules=?,
    ~licenseCountHardLimit=?,
    ~licenseCount=?,
    ~description=?,
    (),
  ) =>
    new({
      productInformationList: productInformationList,
      disassociateWhenNotFound: disassociateWhenNotFound,
      tags: tags,
      licenseRules: licenseRules,
      licenseCountHardLimit: licenseCountHardLimit,
      licenseCount: licenseCount,
      licenseCountingType: licenseCountingType,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLicenseConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>Filters to scope the results. The following filters and logical operators
        are supported:</p>
         <ul>
            <li>
               <p>
                  <code>licenseCountingType</code> - The dimension for which licenses are counted.
               Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>.
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used. 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
            <li>
               <p>
                  <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded. 
               Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Maximum number of results to return in a single call.</p>") @as("MaxResults")
    maxResults: option<boxInteger>,
    @ocaml.doc("<p>Amazon Resource Names (ARN) of the license configurations.</p>")
    @as("LicenseConfigurationArns")
    licenseConfigurationArns: option<stringList>,
  }
  type response = {
    @ocaml.doc("<p>Token for the next set of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the license configurations.</p>") @as("LicenseConfigurations")
    licenseConfigurations: option<licenseConfigurations>,
  }
  @module("@aws-sdk/client-license-manager") @new
  external new: request => t = "ListLicenseConfigurationsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ~licenseConfigurationArns=?, ()) =>
    new({
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      licenseConfigurationArns: licenseConfigurationArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
