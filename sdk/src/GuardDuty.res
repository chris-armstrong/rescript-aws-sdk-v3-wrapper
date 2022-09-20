type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-guardduty") @new
external createClient: unit => awsServiceClient = "GuardDutyClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usageStatisticType = [
  | @as("TOP_RESOURCES") #TOP_RESOURCES
  | @as("SUM_BY_RESOURCE") #SUM_BY_RESOURCE
  | @as("SUM_BY_DATA_SOURCE") #SUM_BY_DATA_SOURCE
  | @as("SUM_BY_ACCOUNT") #SUM_BY_ACCOUNT
]
type timestamp_ = Js.Date.t
type threatIntelSetStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_PENDING") #DELETE_PENDING
  | @as("ERROR") #ERROR
  | @as("DEACTIVATING") #DEACTIVATING
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("INACTIVE") #INACTIVE
]
type threatIntelSetFormat = [
  | @as("FIRE_EYE") #FIRE_EYE
  | @as("PROOF_POINT") #PROOF_POINT
  | @as("ALIEN_VAULT") #ALIEN_VAULT
  | @as("OTX_CSV") #OTX_CSV
  | @as("STIX") #STIX
  | @as("TXT") #TXT
]
type tagValue = string
type tagKey = string
type string_ = string
type publishingStatus = [
  | @as("STOPPED") #STOPPED
  | @as("UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY") #UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY
  | @as("PUBLISHING") #PUBLISHING
  | @as("PENDING_VERIFICATION") #PENDING_VERIFICATION
]
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type maxResults = int
type long = float
type location = string
type ipSetStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_PENDING") #DELETE_PENDING
  | @as("ERROR") #ERROR
  | @as("DEACTIVATING") #DEACTIVATING
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("INACTIVE") #INACTIVE
]
type ipSetFormat = [
  | @as("FIRE_EYE") #FIRE_EYE
  | @as("PROOF_POINT") #PROOF_POINT
  | @as("ALIEN_VAULT") #ALIEN_VAULT
  | @as("OTX_CSV") #OTX_CSV
  | @as("STIX") #STIX
  | @as("TXT") #TXT
]
type integer_ = int
type guardDutyArn = string
type findingType = string
type findingStatisticType = [@as("COUNT_BY_SEVERITY") #COUNT_BY_SEVERITY]
type findingPublishingFrequency = [
  | @as("SIX_HOURS") #SIX_HOURS
  | @as("ONE_HOUR") #ONE_HOUR
  | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES
]
type findingId = string
type filterRank = int
type filterName = string
type filterDescription = string
type filterAction = [@as("ARCHIVE") #ARCHIVE | @as("NOOP") #NOOP]
type feedback = [@as("NOT_USEFUL") #NOT_USEFUL | @as("USEFUL") #USEFUL]
type email = string
type double = float
type detectorStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type detectorId = string
type destinationType = [@as("S3") #S3]
type dataSourceStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type dataSource = [
  | @as("KUBERNETES_AUDIT_LOGS") #KUBERNETES_AUDIT_LOGS
  | @as("S3_LOGS") #S3_LOGS
  | @as("DNS_LOGS") #DNS_LOGS
  | @as("CLOUD_TRAIL") #CLOUD_TRAIL
  | @as("FLOW_LOGS") #FLOW_LOGS
]
type clientToken = string
type boolean_ = bool
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
@ocaml.doc("<p>Container volume mount.</p>")
type volumeMount = {
  @ocaml.doc("<p>Volume mount path.</p>") @as("MountPath") mountPath: option<string_>,
  @ocaml.doc("<p>Volume mount name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Contains information about the accounts that weren't processed.</p>")
type unprocessedAccount = {
  @ocaml.doc("<p>A reason why the account hasn't been processed.</p>") @as("Result")
  result: string_,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId") accountId: accountId,
}
@ocaml.doc("<p>Contains the total usage with the corresponding currency unit for that value.</p>")
type total = {
  @ocaml.doc("<p>The currency unit that the amount is given in.</p>") @as("Unit")
  unit_: option<string_>,
  @ocaml.doc("<p>The total usage.</p>") @as("Amount") amount: option<string_>,
}
type threatNames = array<string_>
type threatIntelSetIds = array<string_>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Contains information about a tag associated with the EC2 instance.</p>")
type tag = {
  @ocaml.doc("<p>The EC2 instance tag value.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The EC2 instance tag key.</p>") @as("Key") key: option<string_>,
}
type sourceIps = array<string_>
@ocaml.doc("<p>Contains information about the criteria used for sorting findings.</p>")
type sortCriteria = {
  @ocaml.doc("<p>The order by which the sorted findings are to be displayed.</p>") @as("OrderBy")
  orderBy: option<orderBy>,
  @ocaml.doc(
    "<p>Represents the finding attribute (for example, accountId) to sort findings by.</p>"
  )
  @as("AttributeName")
  attributeName: option<string_>,
}
@ocaml.doc(
  "<p>Contains information about the security groups associated with the EC2 instance.</p>"
)
type securityGroup = {
  @ocaml.doc("<p>The security group name of the EC2 instance.</p>") @as("GroupName")
  groupName: option<string_>,
  @ocaml.doc("<p>The security group ID of the EC2 instance.</p>") @as("GroupId")
  groupId: option<string_>,
}
@ocaml.doc("<p>Container security context.</p>")
type securityContext = {
  @ocaml.doc("<p>Whether the container is privileged.</p>") @as("Privileged")
  privileged: option<boolean_>,
}
@ocaml.doc("<p>Describes whether S3 data event logs will be enabled as a data source.</p>")
type s3LogsConfigurationResult = {
  @ocaml.doc("<p>A value that describes whether S3 data event logs are automatically enabled for new
      members of the organization.</p>")
  @as("Status")
  status: dataSourceStatus,
}
@ocaml.doc("<p>Describes whether S3 data event logs will be enabled as a data source.</p>")
type s3LogsConfiguration = {
  @ocaml.doc("<p> The status of S3 data event logs as a data source.</p>") @as("Enable")
  enable: boolean_,
}
type resourceList = array<string_>
@ocaml.doc("<p>Contains information about the remote port.</p>")
type remotePortDetails = {
  @ocaml.doc("<p>The port name of the remote connection.</p>") @as("PortName")
  portName: option<string_>,
  @ocaml.doc("<p>The port number of the remote connection.</p>") @as("Port") port: option<integer_>,
}
@ocaml.doc(
  "<p>Contains details about the remote Amazon Web Services account that made the API call.</p>"
)
type remoteAccountDetails = {
  @ocaml.doc(
    "<p>Details on whether the Amazon Web Services account of the remote API caller is related to your GuardDuty environment.  If this value is <code>True</code> the API caller is affiliated to your account in some way. If it is <code>False</code> the API caller is from outside your environment.</p>"
  )
  @as("Affiliated")
  affiliated: option<boolean_>,
  @ocaml.doc("<p>The Amazon Web Services account ID of the remote API caller.</p>") @as("AccountId")
  accountId: option<string_>,
}
@ocaml.doc("<p>Contains information about the product code for the EC2 instance.</p>")
type productCode = {
  @ocaml.doc("<p>The product code type.</p>") @as("ProductType") productType: option<string_>,
  @ocaml.doc("<p>The product code information.</p>") @as("Code") code: option<string_>,
}
@ocaml.doc("<p>Contains other private IP address information of the EC2 instance.</p>")
type privateIpAddressDetails = {
  @ocaml.doc("<p>The private IP address of the EC2 instance.</p>") @as("PrivateIpAddress")
  privateIpAddress: option<string_>,
  @ocaml.doc("<p>The private DNS name of the EC2 instance.</p>") @as("PrivateDnsName")
  privateDnsName: option<string_>,
}
@ocaml.doc("<p>Contains information on the owner of the bucket.</p>")
type owner = {
  @ocaml.doc("<p>The canonical user ID of the bucket owner. For information about locating your canonical
      user ID see <a href=\"https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId\">Finding Your Account
        Canonical User ID.</a>
         </p>")
  @as("Id")
  id: option<string_>,
}
@ocaml.doc("<p>The current configuration of S3 data event logs as a data source for the
      organization.</p>")
type organizationS3LogsConfigurationResult = {
  @ocaml.doc("<p>A value that describes whether S3 data event logs are automatically enabled for new
      members of the organization.</p>")
  @as("AutoEnable")
  autoEnable: boolean_,
}
@ocaml.doc("<p>Describes whether S3 data event logs will be automatically enabled for new members of the
      organization.</p>")
type organizationS3LogsConfiguration = {
  @ocaml.doc("<p>A value that contains information on whether S3 data event logs will be enabled
      automatically as a data source for the organization.</p>")
  @as("AutoEnable")
  autoEnable: boolean_,
}
@ocaml.doc(
  "<p>The current configuration of Kubernetes audit logs as a data source for the organization.</p>"
)
type organizationKubernetesAuditLogsConfigurationResult = {
  @ocaml.doc(
    "<p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining the organization.</p>"
  )
  @as("AutoEnable")
  autoEnable: boolean_,
}
@ocaml.doc("<p>Organization-wide Kubernetes audit logs configuration.</p>")
type organizationKubernetesAuditLogsConfiguration = {
  @ocaml.doc("<p>A value that contains information on whether Kubernetes audit logs should be enabled
      automatically as a data source for the organization.</p>")
  @as("AutoEnable")
  autoEnable: boolean_,
}
@ocaml.doc("<p>Contains information about the ISP organization of the remote IP address.</p>")
type organization = {
  @ocaml.doc("<p>The name of the internet provider.</p>") @as("Org") org: option<string_>,
  @ocaml.doc("<p>The ISP information for the internet provider.</p>") @as("Isp")
  isp: option<string_>,
  @ocaml.doc("<p>The organization that registered this ASN.</p>") @as("AsnOrg")
  asnOrg: option<string_>,
  @ocaml.doc("<p>The Autonomous System Number (ASN) of the internet provider of the remote IP
      address.</p>")
  @as("Asn")
  asn: option<string_>,
}
type notEquals = array<string_>
type neq = array<string_>
@ocaml.doc("<p>Contains information about the member account. </p>")
type member = {
  @ocaml.doc("<p>The last-updated timestamp of the member.</p>") @as("UpdatedAt")
  updatedAt: string_,
  @ocaml.doc("<p>The timestamp when the invitation was sent.</p>") @as("InvitedAt")
  invitedAt: option<string_>,
  @ocaml.doc("<p>The status of the relationship between the member and the administrator.</p>")
  @as("RelationshipStatus")
  relationshipStatus: string_,
  @ocaml.doc("<p>The email address of the member account.</p>") @as("Email") email: email,
  @ocaml.doc("<p>The administrator account ID.</p>") @as("MasterId") masterId: string_,
  @ocaml.doc("<p>The detector ID of the member account.</p>") @as("DetectorId")
  detectorId: option<detectorId>,
  @ocaml.doc("<p>The ID of the member account.</p>") @as("AccountId") accountId: accountId,
}
@ocaml.doc("<p>Contains information about the administrator account and invitation.</p>")
type master = {
  @ocaml.doc("<p>The timestamp when the invitation was sent.</p>") @as("InvitedAt")
  invitedAt: option<string_>,
  @ocaml.doc("<p>The status of the relationship between the administrator and member accounts.</p>")
  @as("RelationshipStatus")
  relationshipStatus: option<string_>,
  @ocaml.doc("<p>The value used to validate the administrator account to the member account.</p>")
  @as("InvitationId")
  invitationId: option<string_>,
  @ocaml.doc("<p>The ID of the account used as the administrator account.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Contains information about the port for the local connection.</p>")
type localPortDetails = {
  @ocaml.doc("<p>The port name of the local connection.</p>") @as("PortName")
  portName: option<string_>,
  @ocaml.doc("<p>The port number of the local connection.</p>") @as("Port") port: option<integer_>,
}
@ocaml.doc("<p>Contains information about the local IP address of the connection.</p>")
type localIpDetails = {
  @ocaml.doc("<p>The IPv4 local address of the connection.</p>") @as("IpAddressV4")
  ipAddressV4: option<string_>,
}
@ocaml.doc("<p>Describes whether Kubernetes audit logs are enabled as a data source.</p>")
type kubernetesAuditLogsConfigurationResult = {
  @ocaml.doc(
    "<p>A value that describes whether Kubernetes audit logs are enabled as a data source.</p>"
  )
  @as("Status")
  status: dataSourceStatus,
}
@ocaml.doc("<p>Describes whether Kubernetes audit logs are enabled as a data source.</p>")
type kubernetesAuditLogsConfiguration = {
  @ocaml.doc("<p>The status of Kubernetes audit logs as a data source.</p>") @as("Enable")
  enable: boolean_,
}
type ipv6Addresses = array<string_>
type ipSetIds = array<string_>
@ocaml.doc("<p>Contains information about the invitation to become a member account.</p>")
type invitation = {
  @ocaml.doc("<p>The timestamp when the invitation was sent.</p>") @as("InvitedAt")
  invitedAt: option<string_>,
  @ocaml.doc("<p>The status of the relationship between the inviter and invitee accounts.</p>")
  @as("RelationshipStatus")
  relationshipStatus: option<string_>,
  @ocaml.doc("<p>The ID of the invitation. This value is used to validate the inviter account to the member
      account.</p>")
  @as("InvitationId")
  invitationId: option<string_>,
  @ocaml.doc("<p>The ID of the account that the invitation was sent from.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Contains information about the EC2 instance profile.</p>")
type iamInstanceProfile = {
  @ocaml.doc("<p>The profile ID of the EC2 instance.</p>") @as("Id") id: option<string_>,
  @ocaml.doc("<p>The profile ARN of the EC2 instance.</p>") @as("Arn") arn: option<string_>,
}
@ocaml.doc(
  "<p>Represents a pre-existing file or directory on the host machine that the volume maps to.</p>"
)
type hostPath = {
  @ocaml.doc("<p>Path of the file or directory on the host that the volume maps to.</p>")
  @as("Path")
  path: option<string_>,
}
type groups = array<string_>
@ocaml.doc("<p>Contains information about the location of the remote IP address.</p>")
type geoLocation = {
  @ocaml.doc("<p>The longitude information of the remote IP address.</p>") @as("Lon")
  lon: option<double>,
  @ocaml.doc("<p>The latitude information of the remote IP address.</p>") @as("Lat")
  lat: option<double>,
}
@ocaml.doc("<p>Contains information on the status of VPC flow logs as a data source.</p>")
type flowLogsConfigurationResult = {
  @ocaml.doc("<p>Denotes whether VPC flow logs is enabled as a data source.</p>") @as("Status")
  status: dataSourceStatus,
}
type findingTypes = array<findingType>
type findingStatisticTypes = array<findingStatisticType>
type findingIds = array<findingId>
type filterNames = array<filterName>
type equals = array<string_>
type eq = array<string_>
@ocaml.doc("<p>Contains information about the domain.</p>")
type domainDetails = {
  @ocaml.doc("<p>The domain information for the Amazon Web Services API call.</p>") @as("Domain")
  domain: option<string_>,
}
@ocaml.doc("<p>Contains information about the DNS_REQUEST action described in this finding.</p>")
type dnsRequestAction = {
  @ocaml.doc("<p>The domain information for the API request.</p>") @as("Domain")
  domain: option<string_>,
}
type detectorIds = array<detectorId>
@ocaml.doc("<p>Contains the Amazon Resource Name (ARN) of the resource to publish to, such as an S3
      bucket, and the ARN of the KMS key to use to encrypt published findings.</p>")
type destinationProperties = {
  @ocaml.doc("<p>The ARN of the KMS key to use for encryption.</p>") @as("KmsKeyArn")
  kmsKeyArn: option<string_>,
  @ocaml.doc("<p>The ARN of the resource to publish to.</p>
         <p>To specify an S3 bucket folder use the following format:
        <code>arn:aws:s3:::DOC-EXAMPLE-BUCKET/myFolder/</code>
         </p>")
  @as("DestinationArn")
  destinationArn: option<string_>,
}
@ocaml.doc("<p>Contains information about the publishing destination, including the ID, type, and
      status.</p>")
type destination = {
  @ocaml.doc("<p>The status of the publishing destination.</p>") @as("Status")
  status: publishingStatus,
  @ocaml.doc("<p>The type of resource used for the publishing destination. Currently, only Amazon S3
      buckets are supported.</p>")
  @as("DestinationType")
  destinationType: destinationType,
  @ocaml.doc("<p>The unique ID of the publishing destination.</p>") @as("DestinationId")
  destinationId: string_,
}
@ocaml.doc("<p>Contains information on the server side encryption method used in the S3 bucket. See
      <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html\">S3
        Server-Side Encryption</a> for more information.</p>")
type defaultServerSideEncryption = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS encryption key. Only available if the bucket
        <code>EncryptionType</code> is <code>aws:kms</code>.</p>")
  @as("KmsMasterKeyArn")
  kmsMasterKeyArn: option<string_>,
  @ocaml.doc("<p>The type of encryption used for objects within the S3 bucket.</p>")
  @as("EncryptionType")
  encryptionType: option<string_>,
}
type dataSourceList = array<dataSource>
@ocaml.doc("<p>Contains information on the status of DNS logs as a data source.</p>")
type dnslogsConfigurationResult = {
  @ocaml.doc("<p>Denotes whether DNS logs is enabled as a data source.</p>") @as("Status")
  status: dataSourceStatus,
}
@ocaml.doc("<p>Contains information about the country where the remote IP address is located.</p>")
type country = {
  @ocaml.doc("<p>The country name of the remote IP address.</p>") @as("CountryName")
  countryName: option<string_>,
  @ocaml.doc("<p>The country code of the remote IP address.</p>") @as("CountryCode")
  countryCode: option<string_>,
}
type countBySeverity = Js.Dict.t<integer_>
@ocaml.doc(
  "<p>Contains information on the status of CloudTrail as a data source for the detector.</p>"
)
type cloudTrailConfigurationResult = {
  @ocaml.doc("<p>Describes whether CloudTrail is enabled as a data source for the detector.</p>")
  @as("Status")
  status: dataSourceStatus,
}
@ocaml.doc("<p>Contains information about the city associated with the IP address.</p>")
type city = {
  @ocaml.doc("<p>The city name of the remote IP address.</p>") @as("CityName")
  cityName: option<string_>,
}
@ocaml.doc("<p>Contains information on the current bucket policies for the S3 bucket.</p>")
type bucketPolicy = {
  @ocaml.doc("<p>A value that indicates whether public write access for the bucket is enabled through a
      bucket policy.</p>")
  @as("AllowsPublicWriteAccess")
  allowsPublicWriteAccess: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether public read access for the bucket is enabled through a
      bucket policy.</p>")
  @as("AllowsPublicReadAccess")
  allowsPublicReadAccess: option<boolean_>,
}
@ocaml.doc("<p>Contains information on how the bucker owner's S3 Block Public Access settings are being
      applied to the S3 bucket. See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html\">S3 Block Public
        Access</a> for more information. </p>")
type blockPublicAccess = {
  @ocaml.doc("<p>Indicates if S3 Block Public Access is set to <code>BlockPublicPolicy</code>.</p>")
  @as("BlockPublicPolicy")
  blockPublicPolicy: option<boolean_>,
  @ocaml.doc("<p>Indicates if S3 Block Public Access is set to <code>BlockPublicAcls</code>.</p>")
  @as("BlockPublicAcls")
  blockPublicAcls: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates if S3 Block Public Access is set to <code>RestrictPublicBuckets</code>.</p>"
  )
  @as("RestrictPublicBuckets")
  restrictPublicBuckets: option<boolean_>,
  @ocaml.doc("<p>Indicates if S3 Block Public Access is set to <code>IgnorePublicAcls</code>.</p>")
  @as("IgnorePublicAcls")
  ignorePublicAcls: option<boolean_>,
}
@ocaml.doc("<p>The account within the organization specified as the GuardDuty delegated
      administrator.</p>")
type adminAccount = {
  @ocaml.doc("<p>Indicates whether the account is enabled as the delegated administrator.</p>")
  @as("AdminStatus")
  adminStatus: option<adminStatus>,
  @ocaml.doc("<p>The Amazon Web Services account ID for the account.</p>") @as("AdminAccountId")
  adminAccountId: option<string_>,
}
type accountIds = array<accountId>
@ocaml.doc("<p>Contains information about the account.</p>")
type accountDetail = {
  @ocaml.doc("<p>The email address of the member account.</p>") @as("Email") email: email,
  @ocaml.doc("<p>The member account ID.</p>") @as("AccountId") accountId: accountId,
}
@ocaml.doc("<p>Contains information about the access keys.</p>")
type accessKeyDetails = {
  @ocaml.doc("<p>The type of the user.</p>") @as("UserType") userType: option<string_>,
  @ocaml.doc("<p>The name of the user.</p>") @as("UserName") userName: option<string_>,
  @ocaml.doc("<p>The principal ID of the user.</p>") @as("PrincipalId")
  principalId: option<string_>,
  @ocaml.doc("<p>The access key ID of the user.</p>") @as("AccessKeyId")
  accessKeyId: option<string_>,
}
@ocaml.doc("<p>Contains information on the current access control policies for the bucket.</p>")
type accessControlList = {
  @ocaml.doc("<p>A value that indicates whether public write access for the bucket is enabled through an
      Access Control List (ACL).</p>")
  @as("AllowsPublicWriteAccess")
  allowsPublicWriteAccess: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether public read access for the bucket is enabled through an
      Access Control List (ACL).</p>")
  @as("AllowsPublicReadAccess")
  allowsPublicReadAccess: option<boolean_>,
}
type volumeMounts = array<volumeMount>
@ocaml.doc("<p>Volume used by the Kubernetes workload.</p>")
type volume = {
  @ocaml.doc(
    "<p>Represents a pre-existing file or directory on the host machine that the volume maps to.</p>"
  )
  @as("HostPath")
  hostPath: option<hostPath>,
  @ocaml.doc("<p>Volume name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc(
  "<p>Contains information on the sum of usage based on an Amazon Web Services resource.</p>"
)
type usageResourceResult = {
  @ocaml.doc("<p>Represents the sum total of usage for the specified resource type.</p>")
  @as("Total")
  total: option<total>,
  @ocaml.doc("<p>The Amazon Web Services resource that generated usage.</p>") @as("Resource")
  resource: option<string_>,
}
@ocaml.doc("<p>Contains information on the result of usage based on data source type.</p>")
type usageDataSourceResult = {
  @ocaml.doc("<p>Represents the total of usage for the specified data source.</p>") @as("Total")
  total: option<total>,
  @ocaml.doc("<p>The data source type that generated usage.</p>") @as("DataSource")
  dataSource: option<dataSource>,
}
@ocaml.doc("<p>Contains information about the criteria used to query usage statistics.</p>")
type usageCriteria = {
  @ocaml.doc("<p>The resources to aggregate usage statistics from. Only accepts exact resource
      names.</p>")
  @as("Resources")
  resources: option<resourceList>,
  @ocaml.doc("<p>The data sources to aggregate usage statistics from.</p>") @as("DataSources")
  dataSources: dataSourceList,
  @ocaml.doc("<p>The account IDs to aggregate usage statistics from.</p>") @as("AccountIds")
  accountIds: option<accountIds>,
}
@ocaml.doc("<p>Contains information on the total of usage based on account IDs.</p>")
type usageAccountResult = {
  @ocaml.doc("<p>Represents the total of usage for the Account ID.</p>") @as("Total")
  total: option<total>,
  @ocaml.doc("<p>The Account ID that generated usage.</p>") @as("AccountId")
  accountId: option<accountId>,
}
type unprocessedAccounts = array<unprocessedAccount>
@ocaml.doc("<p>An instance of a threat intelligence detail that constitutes evidence for the
      finding.</p>")
type threatIntelligenceDetail = {
  @ocaml.doc("<p>A list of names of the threats in the threat intelligence list that triggered the
      finding.</p>")
  @as("ThreatNames")
  threatNames: option<threatNames>,
  @ocaml.doc("<p>The name of the threat intelligence list that triggered the finding.</p>")
  @as("ThreatListName")
  threatListName: option<string_>,
}
type tags = array<tag>
type securityGroups = array<securityGroup>
@ocaml.doc("<p>Contains information about the remote IP address of the connection.</p>")
type remoteIpDetails = {
  @ocaml.doc("<p>The ISP organization information of the remote IP address.</p>")
  @as("Organization")
  organization: option<organization>,
  @ocaml.doc("<p>The IPv4 remote address of the connection.</p>") @as("IpAddressV4")
  ipAddressV4: option<string_>,
  @ocaml.doc("<p>The location information of the remote IP address.</p>") @as("GeoLocation")
  geoLocation: option<geoLocation>,
  @ocaml.doc("<p>The country code of the remote IP address.</p>") @as("Country")
  country: option<country>,
  @ocaml.doc("<p>The city information of the remote IP address.</p>") @as("City")
  city: option<city>,
}
type productCodes = array<productCode>
type privateIpAddresses = array<privateIpAddressDetails>
@ocaml.doc("<p>The current configuration of all Kubernetes data sources for the organization.</p>")
type organizationKubernetesConfigurationResult = {
  @ocaml.doc(
    "<p>The current configuration of Kubernetes audit logs as a data source for the organization.</p>"
  )
  @as("AuditLogs")
  auditLogs: organizationKubernetesAuditLogsConfigurationResult,
}
@ocaml.doc("<p>Organization-wide Kubernetes data sources configurations.</p>")
type organizationKubernetesConfiguration = {
  @ocaml.doc(
    "<p>Whether Kubernetes audit logs data source should be auto-enabled for new members joining the organization.</p>"
  )
  @as("AuditLogs")
  auditLogs: organizationKubernetesAuditLogsConfiguration,
}
type members = array<member>
@ocaml.doc("<p>Details about the Kubernetes user involved in a Kubernetes finding.</p>")
type kubernetesUserDetails = {
  @ocaml.doc("<p>The groups that include the user who called the Kubernetes API.</p>") @as("Groups")
  groups: option<groups>,
  @ocaml.doc("<p>The user ID of the user who called the Kubernetes API.</p>") @as("Uid")
  uid: option<string_>,
  @ocaml.doc("<p>The username of the user who called the Kubernetes API.</p>") @as("Username")
  username: option<string_>,
}
@ocaml.doc("<p>Describes whether any Kubernetes logs will be enabled as a data source.</p>")
type kubernetesConfigurationResult = {
  @ocaml.doc("<p>Describes whether Kubernetes audit logs are enabled as a data source.</p>")
  @as("AuditLogs")
  auditLogs: kubernetesAuditLogsConfigurationResult,
}
@ocaml.doc("<p>Describes whether any Kubernetes data sources are enabled.</p>")
type kubernetesConfiguration = {
  @ocaml.doc("<p>The status of Kubernetes audit logs as a data source.</p>") @as("AuditLogs")
  auditLogs: kubernetesAuditLogsConfiguration,
}
type invitations = array<invitation>
@ocaml.doc("<p>Contains information about finding statistics.</p>")
type findingStatistics = {
  @ocaml.doc("<p>Represents a map of severity to count statistics for a set of findings.</p>")
  @as("CountBySeverity")
  countBySeverity: option<countBySeverity>,
}
type destinations = array<destination>
@ocaml.doc("<p>Contains information about the condition.</p>")
type condition = {
  @ocaml.doc("<p>Represents a <i>less than or equal</i> condition to be applied to a single
      field when querying for findings.</p>")
  @as("LessThanOrEqual")
  lessThanOrEqual: option<long>,
  @ocaml.doc("<p>Represents a <i>less than</i> condition to be applied to a single field when
      querying for findings.</p>")
  @as("LessThan")
  lessThan: option<long>,
  @ocaml.doc("<p>Represents a <i>greater than or equal</i> condition to be applied to a
      single field when querying for findings.</p>")
  @as("GreaterThanOrEqual")
  greaterThanOrEqual: option<long>,
  @ocaml.doc("<p>Represents a <i>greater than</i> condition to be applied to a single field
      when querying for findings.</p>")
  @as("GreaterThan")
  greaterThan: option<long>,
  @ocaml.doc("<p>Represents a <i>not equal</i>
            <b></b> condition to be applied
      to a single field when querying for findings.</p>")
  @as("NotEquals")
  notEquals: option<notEquals>,
  @ocaml.doc("<p>Represents an <i>equal</i>
            <b></b> condition to be applied to
      a single field when querying for findings.</p>")
  @as("Equals")
  equals: option<equals>,
  @ocaml.doc("<p>Represents a <i>less than or equal</i> condition to be applied to a single
      field when querying for findings.</p>")
  @as("Lte")
  lte: option<integer_>,
  @ocaml.doc("<p>Represents a <i>less than</i> condition to be applied to a single field when
      querying for findings.</p>")
  @as("Lt")
  lt: option<integer_>,
  @ocaml.doc("<p>Represents a <i>greater than or equal</i> condition to be applied to a
      single field when querying for findings.</p>")
  @as("Gte")
  gte: option<integer_>,
  @ocaml.doc("<p>Represents a <i>greater than</i> condition to be applied to a single field
      when querying for findings.</p>")
  @as("Gt")
  gt: option<integer_>,
  @ocaml.doc("<p>Represents the <i>not equal</i> condition to be applied to a single field
      when querying for findings.</p>")
  @as("Neq")
  neq: option<neq>,
  @ocaml.doc("<p>Represents the <i>equal</i> condition to be applied to a single field when
      querying for findings.</p>")
  @as("Eq")
  eq: option<eq>,
}
@ocaml.doc("<p>Contains information about the bucket level permissions for the S3 bucket.</p>")
type bucketLevelPermissions = {
  @ocaml.doc("<p>Contains information on which account level S3 Block Public Access settings are applied to
      the S3 bucket.</p>")
  @as("BlockPublicAccess")
  blockPublicAccess: option<blockPublicAccess>,
  @ocaml.doc("<p>Contains information on the bucket policies for the S3 bucket.</p>")
  @as("BucketPolicy")
  bucketPolicy: option<bucketPolicy>,
  @ocaml.doc(
    "<p>Contains information on how Access Control Policies are applied to the bucket.</p>"
  )
  @as("AccessControlList")
  accessControlList: option<accessControlList>,
}
type adminAccounts = array<adminAccount>
@ocaml.doc("<p>Contains information about the account level permissions on the S3 bucket.</p>")
type accountLevelPermissions = {
  @ocaml.doc("<p>Describes the S3 Block Public Access settings of the bucket's parent account.</p>")
  @as("BlockPublicAccess")
  blockPublicAccess: option<blockPublicAccess>,
}
type accountDetails = array<accountDetail>
type volumes = array<volume>
type usageResourceResultList = array<usageResourceResult>
type usageDataSourceResultList = array<usageDataSourceResult>
type usageAccountResultList = array<usageAccountResult>
type threatIntelligenceDetails = array<threatIntelligenceDetail>
@ocaml.doc("<p>Contains information about the port probe details.</p>")
type portProbeDetail = {
  @ocaml.doc("<p>The remote IP information of the connection.</p>") @as("RemoteIpDetails")
  remoteIpDetails: option<remoteIpDetails>,
  @ocaml.doc("<p>The local IP information of the connection.</p>") @as("LocalIpDetails")
  localIpDetails: option<localIpDetails>,
  @ocaml.doc("<p>The local port information of the connection.</p>") @as("LocalPortDetails")
  localPortDetails: option<localPortDetails>,
}
@ocaml.doc("<p>Contains information about how permissions are configured for the S3 bucket.</p>")
type permissionConfiguration = {
  @ocaml.doc("<p>Contains information about the account level permissions on the S3 bucket.</p>")
  @as("AccountLevelPermissions")
  accountLevelPermissions: option<accountLevelPermissions>,
  @ocaml.doc("<p>Contains information about the bucket level permissions for the S3 bucket.</p>")
  @as("BucketLevelPermissions")
  bucketLevelPermissions: option<bucketLevelPermissions>,
}
@ocaml.doc("<p>An object that contains information on which data sources are automatically enabled for
      new members within the organization.</p>")
type organizationDataSourceConfigurationsResult = {
  @ocaml.doc("<p>Describes the configuration of Kubernetes data sources.</p>") @as("Kubernetes")
  kubernetes: option<organizationKubernetesConfigurationResult>,
  @ocaml.doc("<p>Describes whether S3 data event logs are enabled as a data source.</p>")
  @as("S3Logs")
  s3Logs: organizationS3LogsConfigurationResult,
}
@ocaml.doc("<p>An object that contains information on which data sources will be configured to be
      automatically enabled for new members within the organization.</p>")
type organizationDataSourceConfigurations = {
  @ocaml.doc(
    "<p>Describes the configuration of Kubernetes data sources for new members of the organization.</p>"
  )
  @as("Kubernetes")
  kubernetes: option<organizationKubernetesConfiguration>,
  @ocaml.doc("<p>Describes whether S3 data event logs are enabled for new members of the
      organization.</p>")
  @as("S3Logs")
  s3Logs: option<organizationS3LogsConfiguration>,
}
@ocaml.doc("<p>Contains information about the elastic network interface of the EC2 instance.</p>")
type networkInterface = {
  @ocaml.doc("<p>The VPC ID of the EC2 instance.</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>The subnet ID of the EC2 instance.</p>") @as("SubnetId") subnetId: option<string_>,
  @ocaml.doc("<p>The security groups associated with the EC2 instance.</p>") @as("SecurityGroups")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The public IP address of the EC2 instance.</p>") @as("PublicIp")
  publicIp: option<string_>,
  @ocaml.doc("<p>The public DNS name of the EC2 instance.</p>") @as("PublicDnsName")
  publicDnsName: option<string_>,
  @ocaml.doc("<p>Other private IP address information of the EC2 instance.</p>")
  @as("PrivateIpAddresses")
  privateIpAddresses: option<privateIpAddresses>,
  @ocaml.doc("<p>The private IP address of the EC2 instance.</p>") @as("PrivateIpAddress")
  privateIpAddress: option<string_>,
  @ocaml.doc("<p>The private DNS name of the EC2 instance.</p>") @as("PrivateDnsName")
  privateDnsName: option<string_>,
  @ocaml.doc("<p>The ID of the network interface.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<string_>,
  @ocaml.doc("<p>A list of IPv6 addresses for the EC2 instance.</p>") @as("Ipv6Addresses")
  ipv6Addresses: option<ipv6Addresses>,
}
@ocaml.doc(
  "<p>Contains information about the NETWORK_CONNECTION action described in the finding.</p>"
)
type networkConnectionAction = {
  @ocaml.doc("<p>The remote port information of the connection.</p>") @as("RemotePortDetails")
  remotePortDetails: option<remotePortDetails>,
  @ocaml.doc("<p>The remote IP information of the connection.</p>") @as("RemoteIpDetails")
  remoteIpDetails: option<remoteIpDetails>,
  @ocaml.doc("<p>The local IP information of the connection.</p>") @as("LocalIpDetails")
  localIpDetails: option<localIpDetails>,
  @ocaml.doc("<p>The network connection protocol.</p>") @as("Protocol") protocol: option<string_>,
  @ocaml.doc("<p>The local port information of the connection.</p>") @as("LocalPortDetails")
  localPortDetails: option<localPortDetails>,
  @ocaml.doc("<p>The network connection direction.</p>") @as("ConnectionDirection")
  connectionDirection: option<string_>,
  @ocaml.doc("<p>Indicates whether EC2 blocked the network connection to your instance.</p>")
  @as("Blocked")
  blocked: option<boolean_>,
}
@ocaml.doc("<p>Information about the Kubernetes API call action described in this finding.</p>")
type kubernetesApiCallAction = {
  @ocaml.doc("<p>Parameters related to the Kubernetes API call action.</p>") @as("Parameters")
  parameters: option<string_>,
  @ocaml.doc("<p>The resulting HTTP response code of the Kubernetes API call action.</p>")
  @as("StatusCode")
  statusCode: option<integer_>,
  @as("RemoteIpDetails") remoteIpDetails: option<remoteIpDetails>,
  @ocaml.doc("<p>The user agent of the caller of the Kubernetes API.</p>") @as("UserAgent")
  userAgent: option<string_>,
  @ocaml.doc(
    "<p>The IP of the  Kubernetes API caller and the IPs of any proxies or load balancers between the caller and the API endpoint.</p>"
  )
  @as("SourceIps")
  sourceIps: option<sourceIps>,
  @ocaml.doc("<p>The Kubernetes API request HTTP verb.</p>") @as("Verb") verb: option<string_>,
  @ocaml.doc("<p>The Kubernetes API request URI.</p>") @as("RequestUri")
  requestUri: option<string_>,
}
@ocaml.doc("<p>Details about the EKS cluster involved in a Kubernetes finding.</p>")
type eksClusterDetails = {
  @ocaml.doc("<p>The timestamp when the EKS cluster was created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The EKS cluster tags.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The EKS cluster status.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The VPC ID to which the EKS cluster is attached.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>EKS cluster ARN.</p>") @as("Arn") arn: option<string_>,
  @ocaml.doc("<p>EKS cluster name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Contains information on the status of data sources for the detector.</p>")
type dataSourceConfigurationsResult = {
  @ocaml.doc(
    "<p>An object that contains information on the status of all Kubernetes data sources.</p>"
  )
  @as("Kubernetes")
  kubernetes: option<kubernetesConfigurationResult>,
  @ocaml.doc("<p>An object that contains information on the status of S3 Data event logs as a data
      source.</p>")
  @as("S3Logs")
  s3Logs: s3LogsConfigurationResult,
  @ocaml.doc("<p>An object that contains information on the status of VPC flow logs as a data
      source.</p>")
  @as("FlowLogs")
  flowLogs: flowLogsConfigurationResult,
  @ocaml.doc(
    "<p>An object that contains information on the status of DNS logs as a data source.</p>"
  )
  @as("DNSLogs")
  dnslogs: dnslogsConfigurationResult,
  @ocaml.doc(
    "<p>An object that contains information on the status of CloudTrail as a data source.</p>"
  )
  @as("CloudTrail")
  cloudTrail: cloudTrailConfigurationResult,
}
@ocaml.doc("<p>Contains information about which data sources are enabled.</p>")
type dataSourceConfigurations = {
  @ocaml.doc("<p>Describes whether any Kubernetes logs are enabled as data sources.</p>")
  @as("Kubernetes")
  kubernetes: option<kubernetesConfiguration>,
  @ocaml.doc("<p>Describes whether S3 data event logs are enabled as a data source.</p>")
  @as("S3Logs")
  s3Logs: option<s3LogsConfiguration>,
}
type criterion = Js.Dict.t<condition>
@ocaml.doc("<p>Details of a container.</p>")
type container = {
  @ocaml.doc("<p>Container security context.</p>") @as("SecurityContext")
  securityContext: option<securityContext>,
  @ocaml.doc("<p>Container volume mounts.</p>") @as("VolumeMounts")
  volumeMounts: option<volumeMounts>,
  @ocaml.doc(
    "<p>Part of the image name before the last slash. For example, imagePrefix for public.ecr.aws/amazonlinux/amazonlinux:latest would be public.ecr.aws/amazonlinux. If the image name is relative and does not have a slash, this field is empty.</p>"
  )
  @as("ImagePrefix")
  imagePrefix: option<string_>,
  @ocaml.doc("<p>Container image.</p>") @as("Image") image: option<string_>,
  @ocaml.doc("<p>Container name.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>Container ID.</p>") @as("Id") id: option<string_>,
  @ocaml.doc(
    "<p>The container runtime (such as, Docker or containerd) used to run the container.</p>"
  )
  @as("ContainerRuntime")
  containerRuntime: option<string_>,
}
@ocaml.doc("<p>Contains information about the API action.</p>")
type awsApiCallAction = {
  @ocaml.doc(
    "<p>The details of the Amazon Web Services account that made the API call. This field appears if the call was made from outside your account.</p>"
  )
  @as("RemoteAccountDetails")
  remoteAccountDetails: option<remoteAccountDetails>,
  @ocaml.doc("<p>The Amazon Web Services service name whose API was invoked.</p>")
  @as("ServiceName")
  serviceName: option<string_>,
  @ocaml.doc(
    "<p>The remote IP information of the connection that initiated the Amazon Web Services API call.</p>"
  )
  @as("RemoteIpDetails")
  remoteIpDetails: option<remoteIpDetails>,
  @as("UserAgent") userAgent: option<string_>,
  @ocaml.doc("<p>The error code of the failed Amazon Web Services API action.</p>") @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>The domain information for the Amazon Web Services API call.</p>")
  @as("DomainDetails")
  domainDetails: option<domainDetails>,
  @ocaml.doc("<p>The Amazon Web Services API caller type.</p>") @as("CallerType")
  callerType: option<string_>,
  @ocaml.doc("<p>The Amazon Web Services API name.</p>") @as("Api") api: option<string_>,
}
@ocaml.doc("<p>Contains the result of GuardDuty usage. If a UsageStatisticType is provided the result for
      other types will be null. </p>")
type usageStatistics = {
  @ocaml.doc("<p>Lists the top 50 resources that have generated the most GuardDuty usage, in order from
      most to least expensive.</p>")
  @as("TopResources")
  topResources: option<usageResourceResultList>,
  @ocaml.doc("<p>The usage statistic sum organized by resource.</p>") @as("SumByResource")
  sumByResource: option<usageResourceResultList>,
  @ocaml.doc("<p>The usage statistic sum organized by on data source.</p>") @as("SumByDataSource")
  sumByDataSource: option<usageDataSourceResultList>,
  @ocaml.doc("<p>The usage statistic sum organized by account ID.</p>") @as("SumByAccount")
  sumByAccount: option<usageAccountResultList>,
}
@ocaml.doc("<p>Describes the public access policies that apply to the S3 bucket.</p>")
type publicAccess = {
  @ocaml.doc("<p>Describes the effective permission on this bucket after factoring all attached
      policies.</p>")
  @as("EffectivePermission")
  effectivePermission: option<string_>,
  @ocaml.doc("<p>Contains information about how permissions are configured for the S3 bucket.</p>")
  @as("PermissionConfiguration")
  permissionConfiguration: option<permissionConfiguration>,
}
type portProbeDetails = array<portProbeDetail>
type networkInterfaces = array<networkInterface>
@ocaml.doc("<p>Contains information on which data sources are enabled for a member account.</p>")
type memberDataSourceConfiguration = {
  @ocaml.doc("<p>Contains information on the status of data sources for the account.</p>")
  @as("DataSources")
  dataSources: dataSourceConfigurationsResult,
  @ocaml.doc("<p>The account ID for the member account.</p>") @as("AccountId") accountId: accountId,
}
@ocaml.doc("<p>Contains information about the criteria used for querying findings.</p>")
type findingCriteria = {
  @ocaml.doc("<p>Represents a map of finding properties that match specified conditions and values when
      querying findings.</p>")
  @as("Criterion")
  criterion: option<criterion>,
}
@ocaml.doc("<p>Contains information about the reason that the finding was generated.</p>")
type evidence = {
  @ocaml.doc("<p>A list of threat intelligence details related to the evidence.</p>")
  @as("ThreatIntelligenceDetails")
  threatIntelligenceDetails: option<threatIntelligenceDetails>,
}
type containers = array<container>
@ocaml.doc("<p>Contains information on the S3 bucket.</p>")
type s3BucketDetail = {
  @ocaml.doc("<p>Describes the public access policies that apply to the S3 bucket.</p>")
  @as("PublicAccess")
  publicAccess: option<publicAccess>,
  @ocaml.doc("<p>Describes the server side encryption method used in the S3 bucket.</p>")
  @as("DefaultServerSideEncryption")
  defaultServerSideEncryption: option<defaultServerSideEncryption>,
  @ocaml.doc("<p>All tags attached to the S3 bucket</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The owner of the S3 bucket.</p>") @as("Owner") owner: option<owner>,
  @ocaml.doc("<p>The date and time the bucket was created at.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>Describes whether the bucket is a source or destination bucket.</p>") @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>") @as("Arn")
  arn: option<string_>,
}
@ocaml.doc("<p>Contains information about the PORT_PROBE action described in the finding.</p>")
type portProbeAction = {
  @ocaml.doc("<p>A list of objects related to port probe details.</p>") @as("PortProbeDetails")
  portProbeDetails: option<portProbeDetails>,
  @ocaml.doc(
    "<p>Indicates whether EC2 blocked the port probe to the instance, such as with an ACL.</p>"
  )
  @as("Blocked")
  blocked: option<boolean_>,
}
type memberDataSourceConfigurations = array<memberDataSourceConfiguration>
@ocaml.doc("<p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>")
type kubernetesWorkloadDetails = {
  @ocaml.doc("<p>Volumes used by the Kubernetes workload.</p>") @as("Volumes")
  volumes: option<volumes>,
  @ocaml.doc("<p>Containers running as part of the Kubernetes workload.</p>") @as("Containers")
  containers: option<containers>,
  @ocaml.doc(
    "<p>Whether the hostNetwork flag is enabled for the pods included in the workload.</p>"
  )
  @as("HostNetwork")
  hostNetwork: option<boolean_>,
  @ocaml.doc("<p>Kubernetes namespace that the workload is part of.</p>") @as("Namespace")
  namespace: option<string_>,
  @ocaml.doc("<p>Kubernetes workload ID.</p>") @as("Uid") uid: option<string_>,
  @ocaml.doc("<p>Kubernetes workload type (e.g. Pod, Deployment, etc.).</p>") @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>Kubernetes workload name.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>Contains information about the details of an instance.</p>")
type instanceDetails = {
  @ocaml.doc("<p>The tags of the EC2 instance.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The product code of the EC2 instance.</p>") @as("ProductCodes")
  productCodes: option<productCodes>,
  @ocaml.doc("<p>The platform of the EC2 instance.</p>") @as("Platform") platform: option<string_>,
  @ocaml.doc("<p>The elastic network interface information of the EC2 instance.</p>")
  @as("NetworkInterfaces")
  networkInterfaces: option<networkInterfaces>,
  @ocaml.doc("<p>The launch time of the EC2 instance.</p>") @as("LaunchTime")
  launchTime: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services Outpost. Only applicable to Amazon Web Services Outposts
      instances.</p>")
  @as("OutpostArn")
  outpostArn: option<string_>,
  @ocaml.doc("<p>The type of the EC2 instance.</p>") @as("InstanceType")
  instanceType: option<string_>,
  @ocaml.doc("<p>The state of the EC2 instance.</p>") @as("InstanceState")
  instanceState: option<string_>,
  @ocaml.doc("<p>The ID of the EC2 instance.</p>") @as("InstanceId") instanceId: option<string_>,
  @ocaml.doc("<p>The image ID of the EC2 instance.</p>") @as("ImageId") imageId: option<string_>,
  @ocaml.doc("<p>The image description of the EC2 instance.</p>") @as("ImageDescription")
  imageDescription: option<string_>,
  @ocaml.doc("<p>The profile information of the EC2 instance.</p>") @as("IamInstanceProfile")
  iamInstanceProfile: option<iamInstanceProfile>,
  @ocaml.doc("<p>The Availability Zone of the EC2 instance.</p>") @as("AvailabilityZone")
  availabilityZone: option<string_>,
}
type s3BucketDetails = array<s3BucketDetail>
@ocaml.doc(
  "<p>Details about Kubernetes resources such as a Kubernetes user or workload resource involved in a Kubernetes finding.</p>"
)
type kubernetesDetails = {
  @ocaml.doc("<p>Details about the Kubernetes workload involved in a Kubernetes finding.</p>")
  @as("KubernetesWorkloadDetails")
  kubernetesWorkloadDetails: option<kubernetesWorkloadDetails>,
  @ocaml.doc("<p>Details about the Kubernetes user involved in a Kubernetes finding.</p>")
  @as("KubernetesUserDetails")
  kubernetesUserDetails: option<kubernetesUserDetails>,
}
@ocaml.doc("<p>Contains information about actions.</p>")
type action = {
  @ocaml.doc("<p>Information about the Kubernetes API call action described in this finding.</p>")
  @as("KubernetesApiCallAction")
  kubernetesApiCallAction: option<kubernetesApiCallAction>,
  @ocaml.doc("<p>Information about the PORT_PROBE action described in this finding.</p>")
  @as("PortProbeAction")
  portProbeAction: option<portProbeAction>,
  @ocaml.doc("<p>Information about the NETWORK_CONNECTION action described in this finding.</p>")
  @as("NetworkConnectionAction")
  networkConnectionAction: option<networkConnectionAction>,
  @ocaml.doc("<p>Information about the DNS_REQUEST action described in this finding.</p>")
  @as("DnsRequestAction")
  dnsRequestAction: option<dnsRequestAction>,
  @ocaml.doc("<p>Information about the AWS_API_CALL action described in this finding.</p>")
  @as("AwsApiCallAction")
  awsApiCallAction: option<awsApiCallAction>,
  @ocaml.doc("<p>The GuardDuty finding activity type.</p>") @as("ActionType")
  actionType: option<string_>,
}
@ocaml.doc("<p>Contains additional information about the generated finding.</p>")
type service = {
  @ocaml.doc("<p>Feedback that was submitted about the finding.</p>") @as("UserFeedback")
  userFeedback: option<string_>,
  @ocaml.doc(
    "<p>The name of the Amazon Web Services service (GuardDuty) that generated a finding.</p>"
  )
  @as("ServiceName")
  serviceName: option<string_>,
  @ocaml.doc("<p>The resource role information for this finding.</p>") @as("ResourceRole")
  resourceRole: option<string_>,
  @ocaml.doc("<p>The last-seen timestamp of the activity that prompted GuardDuty to generate this
      finding.</p>")
  @as("EventLastSeen")
  eventLastSeen: option<string_>,
  @ocaml.doc("<p>The first-seen timestamp of the activity that prompted GuardDuty to generate this
      finding.</p>")
  @as("EventFirstSeen")
  eventFirstSeen: option<string_>,
  @ocaml.doc("<p>The detector ID for the GuardDuty service.</p>") @as("DetectorId")
  detectorId: option<detectorId>,
  @ocaml.doc("<p>The total count of the occurrences of this finding type.</p>") @as("Count")
  count: option<integer_>,
  @ocaml.doc("<p>Indicates whether this finding is archived.</p>") @as("Archived")
  archived: option<boolean_>,
  @ocaml.doc("<p>An evidence object associated with the service.</p>") @as("Evidence")
  evidence: option<evidence>,
  @ocaml.doc("<p>Information about the activity that is described in a finding.</p>") @as("Action")
  action: option<action>,
}
@ocaml.doc("<p>Contains information about the Amazon Web Services resource associated with the activity that prompted
      GuardDuty to generate a finding.</p>")
type resource = {
  @ocaml.doc("<p>The type of Amazon Web Services resource.</p>") @as("ResourceType")
  resourceType: option<string_>,
  @ocaml.doc(
    "<p>Details about the Kubernetes user and workload involved in a Kubernetes finding.</p>"
  )
  @as("KubernetesDetails")
  kubernetesDetails: option<kubernetesDetails>,
  @ocaml.doc("<p>Details about the EKS cluster involved in a Kubernetes finding.</p>")
  @as("EksClusterDetails")
  eksClusterDetails: option<eksClusterDetails>,
  @ocaml.doc("<p>The information about the EC2 instance associated with the activity that prompted
      GuardDuty to generate a finding.</p>")
  @as("InstanceDetails")
  instanceDetails: option<instanceDetails>,
  @ocaml.doc("<p>Contains information on the S3 bucket.</p>") @as("S3BucketDetails")
  s3BucketDetails: option<s3BucketDetails>,
  @ocaml.doc("<p>The IAM access key details (IAM user information) of a user that engaged in the activity
      that prompted GuardDuty to generate a finding.</p>")
  @as("AccessKeyDetails")
  accessKeyDetails: option<accessKeyDetails>,
}
@ocaml.doc("<p>Contains information about the finding, which is generated when abnormal or suspicious
      activity is detected.</p>")
type finding = {
  @ocaml.doc("<p>The time and date when the finding was last updated.</p>") @as("UpdatedAt")
  updatedAt: string_,
  @ocaml.doc("<p>The type of finding.</p>") @as("Type") type_: findingType,
  @ocaml.doc("<p>The title of the finding.</p>") @as("Title") title: option<string_>,
  @ocaml.doc("<p>The severity of the finding.</p>") @as("Severity") severity: double,
  @as("Service") service: option<service>,
  @ocaml.doc("<p>The version of the schema used for the finding.</p>") @as("SchemaVersion")
  schemaVersion: string_,
  @as("Resource") resource: resource,
  @ocaml.doc("<p>The Region where the finding was generated.</p>") @as("Region") region: string_,
  @ocaml.doc("<p>The partition associated with the finding.</p>") @as("Partition")
  partition: option<string_>,
  @ocaml.doc("<p>The ID of the finding.</p>") @as("Id") id: string_,
  @ocaml.doc("<p>The description of the finding.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The time and date when the finding was created.</p>") @as("CreatedAt")
  createdAt: string_,
  @ocaml.doc("<p>The confidence score for the finding.</p>") @as("Confidence")
  confidence: option<double>,
  @ocaml.doc("<p>The ARN of the finding.</p>") @as("Arn") arn: string_,
  @ocaml.doc("<p>The ID of the account in which the finding was generated.</p>") @as("AccountId")
  accountId: string_,
}
type findings = array<finding>
@ocaml.doc("<p>Amazon GuardDuty is a continuous security monitoring service that analyzes and processes
      the following data sources: VPC Flow Logs, Amazon Web Services CloudTrail event logs, and DNS logs. It uses
      threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to
      identify unexpected, potentially unauthorized, and malicious activity within your Amazon Web Services
      environment. This can include issues like escalations of privileges, uses of exposed
      credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can
      detect compromised EC2 instances that serve malware or mine bitcoin. </p>
         <p>GuardDuty also monitors Amazon Web Services account access behavior for signs of compromise. Some examples
      of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region
      that has never been used, or unusual API calls like a password policy change to reduce
      password strength. </p>
         <p>GuardDuty informs you of the status of your Amazon Web Services environment by producing security findings
      that you can view in the GuardDuty console or through Amazon CloudWatch events. For more
      information, see the <i>
               <a href=\"https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html\">Amazon
          GuardDuty User Guide</a>
            </i>. </p>")
module UpdateThreatIntelSet = {
  type t
  type request = {
    @ocaml.doc("<p>The updated Boolean value that specifies whether the ThreateIntelSet is active or
      not.</p>")
    @as("Activate")
    activate: option<boolean_>,
    @ocaml.doc("<p>The updated URI of the file that contains the ThreateIntelSet.</p>")
    @as("Location")
    location: option<location>,
    @ocaml.doc("<p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>")
    @as("Name")
    name: option<name>,
    @ocaml.doc("<p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>")
    @as("ThreatIntelSetId")
    threatIntelSetId: string_,
    @ocaml.doc("<p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to
      update.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateThreatIntelSetCommand"
  let make = (~threatIntelSetId, ~detectorId, ~activate=?, ~location=?, ~name=?, ()) =>
    new({activate, location, name, threatIntelSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateIPSet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The updated Boolean value that specifies whether the IPSet is active or not.</p>"
    )
    @as("Activate")
    activate: option<boolean_>,
    @ocaml.doc("<p>The updated URI of the file that contains the IPSet. </p>") @as("Location")
    location: option<location>,
    @ocaml.doc("<p>The unique ID that specifies the IPSet that you want to update.</p>") @as("Name")
    name: option<name>,
    @ocaml.doc("<p>The unique ID that specifies the IPSet that you want to update.</p>")
    @as("IpSetId")
    ipSetId: string_,
    @ocaml.doc(
      "<p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p>"
    )
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateIPSetCommand"
  let make = (~ipSetId, ~detectorId, ~activate=?, ~location=?, ~name=?, ()) =>
    new({activate, location, name, ipSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetInvitationsCount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The number of received invitations.</p>") @as("InvitationsCount")
    invitationsCount: option<integer_>,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "GetInvitationsCountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module EnableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services Account ID for the organization account to be enabled as a GuardDuty delegated
      administrator.</p>")
    @as("AdminAccountId")
    adminAccountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "EnableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateFromMasterAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty member account.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisassociateFromMasterAccountCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Web Services Account ID for the organizations account to be disabled as a GuardDuty delegated
      administrator.</p>")
    @as("AdminAccountId")
    adminAccountId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteThreatIntelSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the threatIntelSet that you want to delete.</p>")
    @as("ThreatIntelSetId")
    threatIntelSetId: string_,
    @ocaml.doc("<p>The unique ID of the detector that the threatIntelSet is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DeleteThreatIntelSetCommand"
  let make = (~threatIntelSetId, ~detectorId, ()) => new({threatIntelSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeletePublishingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the publishing destination to delete.</p>") @as("DestinationId")
    destinationId: string_,
    @ocaml.doc(
      "<p>The unique ID of the detector associated with the publishing destination to delete.</p>"
    )
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DeletePublishingDestinationCommand"
  let make = (~destinationId, ~detectorId, ()) => new({destinationId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the IPSet to delete.</p>") @as("IpSetId") ipSetId: string_,
    @ocaml.doc("<p>The unique ID of the detector associated with the IPSet.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteIPSetCommand"
  let make = (~ipSetId, ~detectorId, ()) => new({ipSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the filter that you want to delete.</p>") @as("FilterName")
    filterName: string_,
    @ocaml.doc("<p>The unique ID of the detector that the filter is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteFilterCommand"
  let make = (~filterName, ~detectorId, ()) => new({filterName, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the detector that you want to delete.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteDetectorCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AcceptInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The value that is used to validate the administrator account to the member account.</p>"
    )
    @as("InvitationId")
    invitationId: string_,
    @ocaml.doc(
      "<p>The account ID of the GuardDuty administrator account whose invitation you're accepting.</p>"
    )
    @as("MasterId")
    masterId: string_,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty member account.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "AcceptInvitationCommand"
  let make = (~invitationId, ~masterId, ~detectorId, ()) =>
    new({invitationId, masterId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdatePublishingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
      and <code>KmsKeyArn</code> of the publishing destination.</p>")
    @as("DestinationProperties")
    destinationProperties: option<destinationProperties>,
    @ocaml.doc("<p>The ID of the publishing destination to update.</p>") @as("DestinationId")
    destinationId: string_,
    @ocaml.doc(
      "<p>The ID of the detector associated with the publishing destinations to update.</p>"
    )
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdatePublishingDestinationCommand"
  let make = (~destinationId, ~detectorId, ~destinationProperties=?, ()) =>
    new({destinationProperties, destinationId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateFindingsFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>Additional feedback about the GuardDuty findings.</p>") @as("Comments")
    comments: option<string_>,
    @ocaml.doc("<p>The feedback for the finding.</p>") @as("Feedback") feedback: feedback,
    @ocaml.doc("<p>The IDs of the findings that you want to mark as useful or not useful.</p>")
    @as("FindingIds")
    findingIds: findingIds,
    @ocaml.doc("<p>The ID of the detector associated with the findings to update feedback for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateFindingsFeedbackCommand"
  let make = (~feedback, ~findingIds, ~detectorId, ~comments=?, ()) =>
    new({comments, feedback, findingIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>")
    @as("ResourceArn")
    resourceArn: guardDutyArn,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UnarchiveFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the findings to unarchive.</p>") @as("FindingIds")
    findingIds: findingIds,
    @ocaml.doc("<p>The ID of the detector associated with the findings to unarchive.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UnarchiveFindingsCommand"
  let make = (~findingIds, ~detectorId, ()) => new({findingIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to a resource.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>"
    )
    @as("ResourceArn")
    resourceArn: guardDutyArn,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListThreatIntelSets = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter to paginate results in the response. Set the value of this
      parameter to null on your first call to the list action. For subsequent calls to the action,
      fill nextToken in the request with the value of NextToken from the previous response to
      continue listing data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID of the detector that the threatIntelSet is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The IDs of the ThreatIntelSet resources.</p>") @as("ThreatIntelSetIds")
    threatIntelSetIds: threatIntelSetIds,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListThreatIntelSetsCommand"
  let make = (~detectorId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>")
    @as("ResourceArn")
    resourceArn: guardDutyArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the resource.</p>") @as("Tags") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListIPSets = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID of the detector that the IPSet is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The IDs of the IPSet resources.</p>") @as("IpSetIds") ipSetIds: ipSetIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListIPSetsCommand"
  let make = (~detectorId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFilters = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID of the detector that the filter is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of filter names.</p>") @as("FilterNames") filterNames: filterNames,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListFiltersCommand"
  let make = (~detectorId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of detector IDs.</p>") @as("DetectorIds") detectorIds: detectorIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListDetectorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetThreatIntelSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the threatIntelSet that you want to get.</p>")
    @as("ThreatIntelSetId")
    threatIntelSetId: string_,
    @ocaml.doc("<p>The unique ID of the detector that the threatIntelSet is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The tags of the threat list resource.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The status of threatIntelSet file uploaded.</p>") @as("Status")
    status: threatIntelSetStatus,
    @ocaml.doc("<p>The URI of the file that contains the ThreatIntelSet. </p>") @as("Location")
    location: location,
    @ocaml.doc("<p>The format of the threatIntelSet.</p>") @as("Format")
    format: threatIntelSetFormat,
    @ocaml.doc("<p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
      activity that involves IP addresses included in this ThreatIntelSet.</p>")
    @as("Name")
    name: name,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetThreatIntelSetCommand"
  let make = (~threatIntelSetId, ~detectorId, ()) => new({threatIntelSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMasterAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty member account.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The administrator account details.</p>") @as("Master") master: master,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMasterAccountCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the IPSet to retrieve.</p>") @as("IpSetId") ipSetId: string_,
    @ocaml.doc("<p>The unique ID of the detector that the IPSet is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The tags of the IPSet resource.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The status of IPSet file that was uploaded.</p>") @as("Status")
    status: ipSetStatus,
    @ocaml.doc("<p>The URI of the file that contains the IPSet.</p>") @as("Location")
    location: location,
    @ocaml.doc("<p>The format of the file that contains the IPSet.</p>") @as("Format")
    format: ipSetFormat,
    @ocaml.doc("<p>The user-friendly name for the IPSet.</p>") @as("Name") name: name,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetIPSetCommand"
  let make = (~ipSetId, ~detectorId, ()) => new({ipSetId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePublishingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the publishing destination to retrieve.</p>") @as("DestinationId")
    destinationId: string_,
    @ocaml.doc("<p>The unique ID of the detector associated with the publishing destination to
      retrieve.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code>
      and <code>KmsKeyArn</code> of the publishing destination.</p>")
    @as("DestinationProperties")
    destinationProperties: destinationProperties,
    @ocaml.doc("<p>The time, in epoch millisecond format, at which GuardDuty was first unable to publish
      findings to the destination.</p>")
    @as("PublishingFailureStartTimestamp")
    publishingFailureStartTimestamp: long,
    @ocaml.doc("<p>The status of the publishing destination.</p>") @as("Status")
    status: publishingStatus,
    @ocaml.doc("<p>The type of publishing destination. Currently, only Amazon S3 buckets are
      supported.</p>")
    @as("DestinationType")
    destinationType: destinationType,
    @ocaml.doc("<p>The ID of the publishing destination.</p>") @as("DestinationId")
    destinationId: string_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DescribePublishingDestinationCommand"
  let make = (~destinationId, ~detectorId, ()) => new({destinationId, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateThreatIntelSet = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to a new threat list resource.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The idempotency token for the create request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
      ThreatIntelSet.</p>")
    @as("Activate")
    activate: boolean_,
    @ocaml.doc("<p>The URI of the file that contains the ThreatIntelSet. </p>") @as("Location")
    location: location,
    @ocaml.doc("<p>The format of the file that contains the ThreatIntelSet.</p>") @as("Format")
    format: threatIntelSetFormat,
    @ocaml.doc("<p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by
      activity that involves IP addresses included in this ThreatIntelSet.</p>")
    @as("Name")
    name: name,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account that you want to create a
      threatIntelSet for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the ThreatIntelSet resource.</p>") @as("ThreatIntelSetId")
    threatIntelSetId: string_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreateThreatIntelSetCommand"
  let make = (~activate, ~location, ~format, ~name, ~detectorId, ~tags=?, ~clientToken=?, ()) =>
    new({tags, clientToken, activate, location, format, name, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSampleFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The types of sample findings to generate.</p>") @as("FindingTypes")
    findingTypes: option<findingTypes>,
    @ocaml.doc("<p>The ID of the detector to create sample findings for.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreateSampleFindingsCommand"
  let make = (~detectorId, ~findingTypes=?, ()) => new({findingTypes, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreatePublishingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The idempotency token for the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The properties of the publishing destination, including the ARNs for the destination and
      the KMS key used for encryption.</p>")
    @as("DestinationProperties")
    destinationProperties: destinationProperties,
    @ocaml.doc("<p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are
      supported.</p>")
    @as("DestinationType")
    destinationType: destinationType,
    @ocaml.doc(
      "<p>The ID of the GuardDuty detector associated with the publishing destination.</p>"
    )
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the publishing destination that is created.</p>") @as("DestinationId")
    destinationId: string_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreatePublishingDestinationCommand"
  let make = (~destinationProperties, ~destinationType, ~detectorId, ~clientToken=?, ()) =>
    new({clientToken, destinationProperties, destinationType, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateIPSet = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to a new IP set resource.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The idempotency token for the create request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A Boolean value that indicates whether GuardDuty is to start using the uploaded
      IPSet.</p>")
    @as("Activate")
    activate: boolean_,
    @ocaml.doc("<p>The URI of the file that contains the IPSet. </p>") @as("Location")
    location: location,
    @ocaml.doc("<p>The format of the file that contains the IPSet.</p>") @as("Format")
    format: ipSetFormat,
    @ocaml.doc("<p>The user-friendly name to identify the IPSet.</p>
         <p> Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).</p>")
    @as("Name")
    name: name,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account that you want to create an IPSet
      for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the IPSet resource.</p>") @as("IpSetId") ipSetId: string_,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateIPSetCommand"
  let make = (~activate, ~location, ~format, ~name, ~detectorId, ~tags=?, ~clientToken=?, ()) =>
    new({tags, clientToken, activate, location, format, name, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ArchiveFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the findings that you want to archive.</p>") @as("FindingIds")
    findingIds: findingIds,
    @ocaml.doc("<p>The ID of the detector that specifies the GuardDuty service whose findings you want to
      archive.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ArchiveFindingsCommand"
  let make = (~findingIds, ~detectorId, ()) => new({findingIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopMonitoringMembers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account IDs for the member accounts to stop monitoring.</p>")
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector associated with the GuardDuty administrator account that is
      monitoring member accounts.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain an accountId for each account that could not be processed,
      and a result string that indicates why the account was not processed. </p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "StopMonitoringMembersCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartMonitoringMembers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>")
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty administrator account associated with the member
      accounts to monitor.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "StartMonitoringMembersCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPublishingDestinations = {
  type t
  type request = {
    @ocaml.doc("<p>A token to use for paginating results that are returned in the response. Set the value of
      this parameter to null for the first request to a list action. For subsequent calls, use the
        <code>NextToken</code> value returned from the previous request to continue listing results
      after the first page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the detector to retrieve publishing destinations for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A token to use for paginating results that are returned in the response. Set the value of
      this parameter to null for the first request to a list action. For subsequent calls, use the
        <code>NextToken</code> value returned from the previous request to continue listing results
      after the first page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A <code>Destinations</code> object that includes information about each publishing
      destination returned.</p>")
    @as("Destinations")
    destinations: destinations,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListPublishingDestinationsCommand"
  let make = (~detectorId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOrganizationAdminAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>A token to use for paginating results that are returned in the response. Set the value of
      this parameter to null for the first request to a list action. For subsequent calls, use the
        <code>NextToken</code> value returned from the previous request to continue listing results
      after the first page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of accounts configured as GuardDuty delegated
      administrators.</p>")
    @as("AdminAccounts")
    adminAccounts: option<adminAccounts>,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListOrganizationAdminAccountsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMembers = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to only return associated members or to return all members (including
      members who haven't been invited yet or have been disassociated).</p>")
    @as("OnlyAssociated")
    onlyAssociated: option<string_>,
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The unique ID of the detector the member is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of members.</p>") @as("Members") members: option<members>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListMembersCommand"
  let make = (~detectorId, ~onlyAssociated=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({onlyAssociated, nextToken, maxResults, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of invitation descriptions.</p>") @as("Invitations")
    invitations: option<invitations>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListInvitationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InviteMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The invitation message that you want to send to the accounts that you're inviting to
      GuardDuty as members.</p>")
    @as("Message")
    message: option<string_>,
    @ocaml.doc(
      "<p>A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.</p>"
    )
    @as("DisableEmailNotification")
    disableEmailNotification: option<boolean_>,
    @ocaml.doc("<p>A list of account IDs of the accounts that you want to invite to GuardDuty as
      members.</p>")
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account that you want to invite members
      with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "InviteMembersCommand"
  let make = (~accountIds, ~detectorId, ~message=?, ~disableEmailNotification=?, ()) =>
    new({message, disableEmailNotification, accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>"
    )
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account whose members you want to
      retrieve.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
    @ocaml.doc("<p>A list of members.</p>") @as("Members") members: members,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMembersCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateMembers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from
      the administrator account.</p>")
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account whose members you want to
      disassociate from the administrator account.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisassociateMembersCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>"
    )
    @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account whose members you want to
      delete.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The accounts that could not be processed.</p>") @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteMembersCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
      account that you want to delete invitations from.</p>")
    @as("AccountIds")
    accountIds: accountIds,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeclineInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member
      account that you want to decline invitations from.</p>")
    @as("AccountIds")
    accountIds: accountIds,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that contain the unprocessed account and a result string that explains
      why it was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeclineInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMembers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of account ID and email address pairs of the accounts that you want to associate
      with the GuardDuty administrator account.</p>")
    @as("AccountDetails")
    accountDetails: accountDetails,
    @ocaml.doc("<p>The unique ID of the detector of the GuardDuty account that you want to associate member
      accounts with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of objects that include the <code>accountIds</code> of the unprocessed accounts and
      a result string that explains why each was unprocessed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateMembersCommand"
  let make = (~accountDetails, ~detectorId, ()) => new({accountDetails, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateOrganizationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Describes which data sources will be updated.</p>") @as("DataSources")
    dataSources: option<organizationDataSourceConfigurations>,
    @ocaml.doc(
      "<p>Indicates whether to automatically enable member accounts in the organization.</p>"
    )
    @as("AutoEnable")
    autoEnable: boolean_,
    @ocaml.doc("<p>The ID of the detector to update the delegated administrator for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateOrganizationConfigurationCommand"
  let make = (~autoEnable, ~detectorId, ~dataSources=?, ()) =>
    new({dataSources, autoEnable, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateMemberDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>Describes which data sources will be updated.</p>") @as("DataSources")
    dataSources: option<dataSourceConfigurations>,
    @ocaml.doc("<p>A list of member account IDs to be updated.</p>") @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The detector ID of the administrator account.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of member account IDs that were unable to be processed along with an explanation
      for why they were not processed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateMemberDetectorsCommand"
  let make = (~accountIds, ~detectorId, ~dataSources=?, ()) =>
    new({dataSources, accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDetector = {
  type t
  type request = {
    @ocaml.doc("<p>Describes which data sources will be updated.</p>") @as("DataSources")
    dataSources: option<dataSourceConfigurations>,
    @ocaml.doc("<p>An enum value that specifies how frequently findings are exported, such as to CloudWatch
      Events.</p>")
    @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @ocaml.doc("<p>Specifies whether the detector is enabled or not enabled.</p>") @as("Enable")
    enable: option<boolean_>,
    @ocaml.doc("<p>The unique ID of the detector to update.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {.}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateDetectorCommand"
  let make = (~detectorId, ~dataSources=?, ~findingPublishingFrequency=?, ~enable=?, ()) =>
    new({dataSources, findingPublishingFrequency, enable, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of the detector that you want to get.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The tags of the detector resource.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>Describes which data sources are enabled for the detector.</p>")
    @as("DataSources")
    dataSources: option<dataSourceConfigurationsResult>,
    @ocaml.doc("<p>The last-updated timestamp for the detector.</p>") @as("UpdatedAt")
    updatedAt: option<string_>,
    @ocaml.doc("<p>The detector status.</p>") @as("Status") status: detectorStatus,
    @ocaml.doc("<p>The GuardDuty service role.</p>") @as("ServiceRole") serviceRole: string_,
    @ocaml.doc("<p>The publishing frequency of the finding.</p>") @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @ocaml.doc("<p>The timestamp of when the detector was created.</p>") @as("CreatedAt")
    createdAt: option<string_>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetDetectorCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOrganizationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the detector to retrieve information about the delegated administrator
      from.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>Describes which data sources are enabled automatically for member
      accounts.</p>")
    @as("DataSources")
    dataSources: option<organizationDataSourceConfigurationsResult>,
    @ocaml.doc("<p>Indicates whether the maximum number of allowed member accounts are already associated
      with the delegated administrator account for your organization.</p>")
    @as("MemberAccountLimitReached")
    memberAccountLimitReached: boolean_,
    @ocaml.doc("<p>Indicates whether GuardDuty is automatically enabled for accounts added to the
      organization.</p>")
    @as("AutoEnable")
    autoEnable: boolean_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DescribeOrganizationConfigurationCommand"
  let make = (~detectorId, ()) => new({detectorId: detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDetector = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to a new detector resource.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Describes which data sources will be enabled for the detector.</p>")
    @as("DataSources")
    dataSources: option<dataSourceConfigurations>,
    @ocaml.doc("<p>A value that specifies how frequently updated findings are exported.</p>")
    @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @ocaml.doc("<p>The idempotency token for the create request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A Boolean value that specifies whether the detector is to be enabled.</p>")
    @as("Enable")
    enable: boolean_,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of the created detector.</p>") @as("DetectorId")
    detectorId: option<detectorId>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateDetectorCommand"
  let make = (
    ~enable,
    ~tags=?,
    ~dataSources=?,
    ~findingPublishingFrequency=?,
    ~clientToken=?,
    (),
  ) => new({tags, dataSources, findingPublishingFrequency, clientToken, enable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFilter = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the criteria to be used in the filter for querying findings.</p>")
    @as("FindingCriteria")
    findingCriteria: option<findingCriteria>,
    @ocaml.doc("<p>Specifies the position of the filter in the list of current filters. Also specifies the
      order in which this filter is applied to the findings.</p>")
    @as("Rank")
    rank: option<filterRank>,
    @ocaml.doc(
      "<p>Specifies the action that is to be applied to the findings that match the filter.</p>"
    )
    @as("Action")
    action: option<filterAction>,
    @ocaml.doc("<p>The description of the filter.</p>") @as("Description")
    description: option<filterDescription>,
    @ocaml.doc("<p>The name of the filter.</p>") @as("FilterName") filterName: string_,
    @ocaml.doc("<p>The unique ID of the detector that specifies the GuardDuty service where you want to
      update a filter.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {@ocaml.doc("<p>The name of the filter.</p>") @as("Name") name: filterName}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateFilterCommand"
  let make = (
    ~filterName,
    ~detectorId,
    ~findingCriteria=?,
    ~rank=?,
    ~action=?,
    ~description=?,
    (),
  ) => new({findingCriteria, rank, action, description, filterName, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFindings = {
  type t
  type request = {
    @ocaml.doc("<p>You can use this parameter when paginating results. Set the value of this parameter to
      null on your first call to the list action. For subsequent calls to the action, fill nextToken
      in the request with the value of NextToken from the previous response to continue listing
      data.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>You can use this parameter to indicate the maximum number of items you want in the
      response. The default value is 50. The maximum value is 50.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Represents the criteria used for sorting findings.</p>") @as("SortCriteria")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc("<p>Represents the criteria used for querying findings. Valid values include:</p>
         <ul>
            <li>
               <p>JSON field name</p>
            </li>
            <li>
               <p>accountId</p>
            </li>
            <li>
               <p>region</p>
            </li>
            <li>
               <p>confidence</p>
            </li>
            <li>
               <p>id</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.accessKeyId</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.principalId</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.userName</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.userType</p>
            </li>
            <li>
               <p>resource.instanceDetails.iamInstanceProfile.id</p>
            </li>
            <li>
               <p>resource.instanceDetails.imageId</p>
            </li>
            <li>
               <p>resource.instanceDetails.instanceId</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.publicIp</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.subnetId</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.vpcId</p>
            </li>
            <li>
               <p>resource.instanceDetails.tags.key</p>
            </li>
            <li>
               <p>resource.instanceDetails.tags.value</p>
            </li>
            <li>
               <p>resource.resourceType</p>
            </li>
            <li>
               <p>service.action.actionType</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.api</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.callerType</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.serviceName</p>
            </li>
            <li>
               <p>service.action.dnsRequestAction.domain</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.blocked</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.connectionDirection</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.localPortDetails.port</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.protocol</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remotePortDetails.port</p>
            </li>
            <li>
               <p>service.additionalInfo.threatListName</p>
            </li>
            <li>
               <p>service.archived</p>
               <p>When this attribute is set to 'true', only archived findings are listed. When it's set
          to 'false', only unarchived findings are listed. When this attribute is not set, all
          existing findings are listed.</p>
            </li>
            <li>
               <p>service.resourceRole</p>
            </li>
            <li>
               <p>severity</p>
            </li>
            <li>
               <p>type</p>
            </li>
            <li>
               <p>updatedAt</p>
               <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p>
            </li>
         </ul>")
    @as("FindingCriteria")
    findingCriteria: option<findingCriteria>,
    @ocaml.doc("<p>The ID of the detector that specifies the GuardDuty service whose findings you want to
      list.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The IDs of the findings that you're listing.</p>") @as("FindingIds")
    findingIds: findingIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListFindingsCommand"
  let make = (~detectorId, ~nextToken=?, ~maxResults=?, ~sortCriteria=?, ~findingCriteria=?, ()) =>
    new({nextToken, maxResults, sortCriteria, findingCriteria, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUsageStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>A token to use for paginating results that are returned in the response. Set the value of
      this parameter to null for the first request to a list action. For subsequent calls, use the
      NextToken value returned from the previous request to continue listing results after the first
      page.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The currency unit you would like to view your usage statistics in. Current valid values
      are USD.</p>")
    @as("Unit")
    unit_: option<string_>,
    @ocaml.doc("<p>Represents the criteria used for querying usage.</p>") @as("UsageCriteria")
    usageCriteria: usageCriteria,
    @ocaml.doc("<p>The type of usage statistics to retrieve.</p>") @as("UsageStatisticType")
    usageStatisticType: usageStatisticType,
    @ocaml.doc("<p>The ID of the detector that specifies the GuardDuty service whose usage statistics you
      want to retrieve.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The pagination parameter to be used on the next list operation to retrieve more
      items.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The usage statistics object. If a UsageStatisticType was provided, the objects
      representing other types will be null.</p>")
    @as("UsageStatistics")
    usageStatistics: option<usageStatistics>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetUsageStatisticsCommand"
  let make = (
    ~usageCriteria,
    ~usageStatisticType,
    ~detectorId,
    ~nextToken=?,
    ~maxResults=?,
    ~unit_=?,
    (),
  ) => new({nextToken, maxResults, unit_, usageCriteria, usageStatisticType, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFindingsStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the criteria that is used for querying findings.</p>")
    @as("FindingCriteria")
    findingCriteria: option<findingCriteria>,
    @ocaml.doc("<p>The types of finding statistics to retrieve.</p>") @as("FindingStatisticTypes")
    findingStatisticTypes: findingStatisticTypes,
    @ocaml.doc("<p>The ID of the detector that specifies the GuardDuty service whose findings' statistics you
      want to retrieve.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The finding statistics object.</p>") @as("FindingStatistics")
    findingStatistics: findingStatistics,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "GetFindingsStatisticsCommand"
  let make = (~findingStatisticTypes, ~detectorId, ~findingCriteria=?, ()) =>
    new({findingCriteria, findingStatisticTypes, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the filter you want to get.</p>") @as("FilterName")
    filterName: string_,
    @ocaml.doc("<p>The unique ID of the detector that the filter is associated with.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The tags of the filter resource.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>Represents the criteria to be used in the filter for querying findings.</p>")
    @as("FindingCriteria")
    findingCriteria: findingCriteria,
    @ocaml.doc("<p>Specifies the position of the filter in the list of current filters. Also specifies the
      order in which this filter is applied to the findings.</p>")
    @as("Rank")
    rank: option<filterRank>,
    @ocaml.doc(
      "<p>Specifies the action that is to be applied to the findings that match the filter.</p>"
    )
    @as("Action")
    action: filterAction,
    @ocaml.doc("<p>The description of the filter.</p>") @as("Description")
    description: option<filterDescription>,
    @ocaml.doc("<p>The name of the filter.</p>") @as("Name") name: filterName,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetFilterCommand"
  let make = (~filterName, ~detectorId, ()) => new({filterName, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be added to a new filter resource.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The idempotency token for the create request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Represents the criteria to be used in the filter for querying findings.</p>
         <p>You can only use the following attributes to query findings:</p>
         <ul>
            <li>
               <p>accountId</p>
            </li>
            <li>
               <p>region</p>
            </li>
            <li>
               <p>confidence</p>
            </li>
            <li>
               <p>id</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.accessKeyId</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.principalId</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.userName</p>
            </li>
            <li>
               <p>resource.accessKeyDetails.userType</p>
            </li>
            <li>
               <p>resource.instanceDetails.iamInstanceProfile.id</p>
            </li>
            <li>
               <p>resource.instanceDetails.imageId</p>
            </li>
            <li>
               <p>resource.instanceDetails.instanceId</p>
            </li>
            <li>
               <p>resource.instanceDetails.outpostArn</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.publicDnsName</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.publicIp</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.subnetId</p>
            </li>
            <li>
               <p>resource.instanceDetails.networkInterfaces.vpcId</p>
            </li>
            <li>
               <p>resource.instanceDetails.tags.key</p>
            </li>
            <li>
               <p>resource.instanceDetails.tags.value</p>
            </li>
            <li>
               <p>resource.resourceType</p>
            </li>
            <li>
               <p>service.action.actionType</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.api</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.callerType</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.errorCode</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p>
            </li>
            <li>
               <p>service.action.awsApiCallAction.serviceName</p>
            </li>
            <li>
               <p>service.action.dnsRequestAction.domain</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.blocked</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.connectionDirection</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.localPortDetails.port</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.protocol</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p>
            </li>
            <li>
               <p>service.action.networkConnectionAction.remotePortDetails.port</p>
            </li>
            <li>
               <p>service.additionalInfo.threatListName</p>
            </li>
            <li>
               <p>resource.s3BucketDetails.publicAccess.effectivePermissions</p>
            </li>
            <li>
               <p>resource.s3BucketDetails.name</p>
            </li>
            <li>
               <p>resource.s3BucketDetails.tags.key</p>
            </li>
            <li>
               <p>resource.s3BucketDetails.tags.value</p>
            </li>
            <li>
               <p>resource.s3BucketDetails.type</p>
            </li>
            <li>
               <p>service.archived</p>
               <p>When this attribute is set to TRUE, only archived findings are listed. When it's set
          to FALSE, only unarchived findings are listed. When this attribute is not set, all
          existing findings are listed.</p>
            </li>
            <li>
               <p>service.resourceRole</p>
            </li>
            <li>
               <p>severity</p>
            </li>
            <li>
               <p>type</p>
            </li>
            <li>
               <p>updatedAt</p>
               <p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ
          depending on whether the value contains milliseconds.</p>
            </li>
         </ul>")
    @as("FindingCriteria")
    findingCriteria: findingCriteria,
    @ocaml.doc("<p>Specifies the position of the filter in the list of current filters. Also specifies the
      order in which this filter is applied to the findings.</p>")
    @as("Rank")
    rank: option<filterRank>,
    @ocaml.doc(
      "<p>Specifies the action that is to be applied to the findings that match the filter.</p>"
    )
    @as("Action")
    action: option<filterAction>,
    @ocaml.doc("<p>The description of the filter.</p>") @as("Description")
    description: option<filterDescription>,
    @ocaml.doc(
      "<p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not allowed.</p>"
    )
    @as("Name")
    name: filterName,
    @ocaml.doc("<p>The ID of the detector belonging to the GuardDuty account that you want to create a filter
      for.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>The name of the successfully created filter.</p>") @as("Name") name: filterName,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateFilterCommand"
  let make = (
    ~findingCriteria,
    ~name,
    ~detectorId,
    ~tags=?,
    ~clientToken=?,
    ~rank=?,
    ~action=?,
    ~description=?,
    (),
  ) => new({tags, clientToken, findingCriteria, rank, action, description, name, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMemberDetectors = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID of the member account.</p>") @as("AccountIds")
    accountIds: accountIds,
    @ocaml.doc("<p>The detector ID for the administrator account.</p>") @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {
    @ocaml.doc("<p>A list of member account IDs that were unable to be processed along with an explanation
      for why they were not processed.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: unprocessedAccounts,
    @ocaml.doc(
      "<p>An object that describes which data sources are enabled for a member account.</p>"
    )
    @as("MemberDataSourceConfigurations")
    memberDataSourceConfigurations: memberDataSourceConfigurations,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMemberDetectorsCommand"
  let make = (~accountIds, ~detectorId, ()) => new({accountIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFindings = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the criteria used for sorting findings.</p>") @as("SortCriteria")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc("<p>The IDs of the findings that you want to retrieve.</p>") @as("FindingIds")
    findingIds: findingIds,
    @ocaml.doc("<p>The ID of the detector that specifies the GuardDuty service whose findings you want to
      retrieve.</p>")
    @as("DetectorId")
    detectorId: detectorId,
  }
  type response = {@ocaml.doc("<p>A list of findings.</p>") @as("Findings") findings: findings}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetFindingsCommand"
  let make = (~findingIds, ~detectorId, ~sortCriteria=?, ()) =>
    new({sortCriteria, findingIds, detectorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
