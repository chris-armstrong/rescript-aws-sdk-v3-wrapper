type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-redshift") @new
external createClient: unit => awsServiceClient = "RedshiftClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usageLimitPeriod = [@as("monthly") #Monthly | @as("weekly") #Weekly | @as("daily") #Daily]
type usageLimitLimitType = [@as("data-scanned") #Data_Scanned | @as("time") #Time]
type usageLimitFeatureType = [
  | @as("concurrency-scaling") #Concurrency_Scaling
  | @as("spectrum") #Spectrum
]
type usageLimitBreachAction = [
  | @as("disable") #Disable
  | @as("emit-metric") #Emit_Metric
  | @as("log") #Log
]
type tableRestoreStatusType = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("scheduled-action") #Scheduled_Action
  | @as("cluster-snapshot") #Cluster_Snapshot
  | @as("cluster-security-group") #Cluster_Security_Group
  | @as("cluster-parameter-group") #Cluster_Parameter_Group
  | @as("cluster") #Cluster
]
type sortByOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type snapshotAttributeToSortBy = [
  | @as("CREATE_TIME") #CREATE_TIME
  | @as("TOTAL_SIZE") #TOTAL_SIZE
  | @as("SOURCE_TYPE") #SOURCE_TYPE
]
type sensitiveString = string
type scheduledActionTypeValues = [
  | @as("ResumeCluster") #ResumeCluster
  | @as("PauseCluster") #PauseCluster
  | @as("ResizeCluster") #ResizeCluster
]
type scheduledActionState = [@as("DISABLED") #DISABLED | @as("ACTIVE") #ACTIVE]
type scheduledActionFilterName = [
  | @as("iam-role") #Iam_Role
  | @as("cluster-identifier") #Cluster_Identifier
]
type scheduleState = [@as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("MODIFYING") #MODIFYING]
type reservedNodeOfferingType = [@as("Upgradable") #Upgradable | @as("Regular") #Regular]
type partnerIntegrationStatusMessage = string
type partnerIntegrationStatus = [
  | @as("ConnectionFailure") #ConnectionFailure
  | @as("RuntimeFailure") #RuntimeFailure
  | @as("Inactive") #Inactive
  | @as("Active") #Active
]
type partnerIntegrationPartnerName = string
type partnerIntegrationDatabaseName = string
type partnerIntegrationClusterIdentifier = string
type partnerIntegrationAccountId = string
type parameterApplyType = [@as("dynamic") #Dynamic | @as("static") #Static]
type operatorType = [
  | @as("between") #Between
  | @as("in") #In
  | @as("ge") #Ge
  | @as("le") #Le
  | @as("gt") #Gt
  | @as("lt") #Lt
  | @as("eq") #Eq
]
type nodeConfigurationOptionsFilterName = [
  | @as("Mode") #Mode
  | @as("EstimatedDiskUtilizationPercent") #EstimatedDiskUtilizationPercent
  | @as("NumberOfNodes") #NumberOfNodes
  | @as("NodeType") #NodeType
]
type mode = [@as("high-performance") #High_Performance | @as("standard") #Standard]
type longOptional = float
type long = float
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type doubleOptional = float
type double = float
type booleanOptional = bool
type boolean_ = bool
type authorizationStatus = [@as("Revoking") #Revoking | @as("Authorized") #Authorized]
type aquaStatus = [@as("applying") #Applying | @as("disabled") #Disabled | @as("enabled") #Enabled]
type aquaConfigurationStatus = [
  | @as("auto") #Auto
  | @as("disabled") #Disabled
  | @as("enabled") #Enabled
]
type actionType = [
  | @as("resize-cluster") #Resize_Cluster
  | @as("recommend-node-config") #Recommend_Node_Config
  | @as("restore-cluster") #Restore_Cluster
]
type vpcSecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("VpcSecurityGroupId") vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
type vpcIdentifierList = array<string_>
type valueStringList = array<string_>
type tagValueList = array<string_>
type tagKeyList = array<string_>
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type tableRestoreStatus = {
  @as("NewTableName") newTableName: option<string_>,
  @as("TargetSchemaName") targetSchemaName: option<string_>,
  @as("TargetDatabaseName") targetDatabaseName: option<string_>,
  @as("SourceTableName") sourceTableName: option<string_>,
  @as("SourceSchemaName") sourceSchemaName: option<string_>,
  @as("SourceDatabaseName") sourceDatabaseName: option<string_>,
  @as("SnapshotIdentifier") snapshotIdentifier: option<string_>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  @as("TotalDataInMegaBytes") totalDataInMegaBytes: option<longOptional>,
  @as("ProgressInMegaBytes") progressInMegaBytes: option<longOptional>,
  @as("RequestTime") requestTime: option<tstamp>,
  @as("Message") message: option<string_>,
  @as("Status") status: option<tableRestoreStatusType>,
  @as("TableRestoreRequestId") tableRestoreRequestId: option<string_>,
}
type supportedPlatform = {@as("Name") name: option<string_>}
type supportedOperation = {@as("OperationName") operationName: option<string_>}
type subnetIdentifierList = array<string_>
type sourceIdsList = array<string_>
type snapshotSortingEntity = {
  @as("SortOrder") sortOrder: option<sortByOrder>,
  @as("Attribute") attribute: snapshotAttributeToSortBy,
}
type snapshotIdentifierList = array<string_>
type snapshotErrorMessage = {
  @as("FailureReason") failureReason: option<string_>,
  @as("FailureCode") failureCode: option<string_>,
  @as("SnapshotClusterIdentifier") snapshotClusterIdentifier: option<string_>,
  @as("SnapshotIdentifier") snapshotIdentifier: option<string_>,
}
type scheduledSnapshotTimeList = array<tstamp>
type scheduledActionTimeList = array<tstamp>
type scheduleDefinitionList = array<string_>
type revisionTarget = {
  @as("DatabaseRevisionReleaseDate") databaseRevisionReleaseDate: option<tstamp>,
  @as("Description") description: option<string_>,
  @as("DatabaseRevision") databaseRevision: option<string_>,
}
type resumeClusterMessage = {@as("ClusterIdentifier") clusterIdentifier: string_}
type restoreStatus = {
  @as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: option<long>,
  @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<long>,
  @as("ProgressInMegaBytes") progressInMegaBytes: option<long>,
  @as("SnapshotSizeInMegaBytes") snapshotSizeInMegaBytes: option<long>,
  @as("CurrentRestoreRateInMegaBytesPerSecond")
  currentRestoreRateInMegaBytesPerSecond: option<double>,
  @as("Status") status: option<string_>,
}
type restorableNodeTypeList = array<string_>
type resizeInfo = {
  @as("AllowCancelResize") allowCancelResize: option<boolean_>,
  @as("ResizeType") resizeType: option<string_>,
}
type resizeClusterMessage = {
  @as("Classic") classic: option<booleanOptional>,
  @as("NumberOfNodes") numberOfNodes: option<integerOptional>,
  @as("NodeType") nodeType: option<string_>,
  @as("ClusterType") clusterType: option<string_>,
  @as("ClusterIdentifier") clusterIdentifier: string_,
}
type recurringCharge = {
  @as("RecurringChargeFrequency") recurringChargeFrequency: option<string_>,
  @as("RecurringChargeAmount") recurringChargeAmount: option<double>,
}
type pendingModifiedValues = {
  @as("EncryptionType") encryptionType: option<string_>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
  @as("EnhancedVpcRouting") enhancedVpcRouting: option<booleanOptional>,
  @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  @as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: option<integerOptional>,
  @as("ClusterVersion") clusterVersion: option<string_>,
  @as("ClusterType") clusterType: option<string_>,
  @as("NumberOfNodes") numberOfNodes: option<integerOptional>,
  @as("NodeType") nodeType: option<string_>,
  @as("MasterUserPassword") masterUserPassword: option<string_>,
}
type pendingActionsList = array<string_>
type pauseClusterMessage = {@as("ClusterIdentifier") clusterIdentifier: string_}
type partnerIntegrationInfo = {
  @as("UpdatedAt") updatedAt: option<tstamp>,
  @as("CreatedAt") createdAt: option<tstamp>,
  @as("StatusMessage") statusMessage: option<partnerIntegrationStatusMessage>,
  @as("Status") status: option<partnerIntegrationStatus>,
  @as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
  @as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
}
type parameter = {
  @as("MinimumEngineVersion") minimumEngineVersion: option<string_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("ApplyType") applyType: option<parameterApplyType>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("Source") source: option<string_>,
  @as("Description") description: option<string_>,
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type nodeConfigurationOption = {
  @as("Mode") mode: option<mode>,
  @as("EstimatedDiskUtilizationPercent") estimatedDiskUtilizationPercent: option<doubleOptional>,
  @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @as("NodeType") nodeType: option<string_>,
}
type networkInterface = {
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
}
type importTablesNotStarted = array<string_>
type importTablesInProgress = array<string_>
type importTablesCompleted = array<string_>
type iamRoleArnList = array<string_>
type hsmStatus = {
  @as("Status") status: option<string_>,
  @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
  @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
}
type eventCategoriesList = array<string_>
type elasticIpStatus = {
  @as("Status") status: option<string_>,
  @as("ElasticIp") elasticIp: option<string_>,
}
type deleteClusterSnapshotMessage = {
  @as("SnapshotClusterIdentifier") snapshotClusterIdentifier: option<string_>,
  @as("SnapshotIdentifier") snapshotIdentifier: string_,
}
type deferredMaintenanceWindow = {
  @as("DeferMaintenanceEndTime") deferMaintenanceEndTime: option<tstamp>,
  @as("DeferMaintenanceStartTime") deferMaintenanceStartTime: option<tstamp>,
  @as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: option<string_>,
}
type dbGroupList = array<string_>
type dataTransferProgress = {
  @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<longOptional>,
  @as("EstimatedTimeToCompletionInSeconds")
  estimatedTimeToCompletionInSeconds: option<longOptional>,
  @as("DataTransferredInMegaBytes") dataTransferredInMegaBytes: option<long>,
  @as("TotalDataInMegaBytes") totalDataInMegaBytes: option<long>,
  @as("CurrentRateInMegaBytesPerSecond") currentRateInMegaBytesPerSecond: option<doubleOptional>,
  @as("Status") status: option<string_>,
}
type clusterVersion = {
  @as("Description") description: option<string_>,
  @as("ClusterParameterGroupFamily") clusterParameterGroupFamily: option<string_>,
  @as("ClusterVersion") clusterVersion: option<string_>,
}
type clusterSnapshotCopyStatus = {
  @as("SnapshotCopyGrantName") snapshotCopyGrantName: option<string_>,
  @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integer_>,
  @as("RetentionPeriod") retentionPeriod: option<long>,
  @as("DestinationRegion") destinationRegion: option<string_>,
}
type clusterSecurityGroupNameList = array<string_>
type clusterSecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("ClusterSecurityGroupName") clusterSecurityGroupName: option<string_>,
}
type clusterParameterStatus = {
  @as("ParameterApplyErrorDescription") parameterApplyErrorDescription: option<string_>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type clusterNode = {
  @as("PublicIPAddress") publicIPAddress: option<string_>,
  @as("PrivateIPAddress") privateIPAddress: option<string_>,
  @as("NodeRole") nodeRole: option<string_>,
}
type clusterIamRole = {
  @as("ApplyStatus") applyStatus: option<string_>,
  @as("IamRoleArn") iamRoleArn: option<string_>,
}
type clusterAssociatedToSchedule = {
  @as("ScheduleAssociationState") scheduleAssociationState: option<scheduleState>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
}
type attributeValueTarget = {@as("AttributeValue") attributeValue: option<string_>}
type attributeNameList = array<string_>
type aquaConfiguration = {
  @as("AquaConfigurationStatus") aquaConfigurationStatus: option<aquaConfigurationStatus>,
  @as("AquaStatus") aquaStatus: option<aquaStatus>,
}
type accountWithRestoreAccess = {
  @as("AccountAlias") accountAlias: option<string_>,
  @as("AccountId") accountId: option<string_>,
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type taggedResource = {
  @as("ResourceType") resourceType: option<string_>,
  @as("ResourceName") resourceName: option<string_>,
  @as("Tag") tag: option<tag>,
}
type tagList_ = array<tag>
type tableRestoreStatusList = array<tableRestoreStatus>
type supportedPlatformsList = array<supportedPlatform>
type supportedOperationList = array<supportedOperation>
type snapshotSortingEntityList = array<snapshotSortingEntity>
type scheduledActionType = {
  @as("ResumeCluster") resumeCluster: option<resumeClusterMessage>,
  @as("PauseCluster") pauseCluster: option<pauseClusterMessage>,
  @as("ResizeCluster") resizeCluster: option<resizeClusterMessage>,
}
type scheduledActionFilter = {
  @as("Values") values: valueStringList,
  @as("Name") name: scheduledActionFilterName,
}
type revisionTargetsList = array<revisionTarget>
type recurringChargeList = array<recurringCharge>
type partnerIntegrationInfoList = array<partnerIntegrationInfo>
type parametersList = array<parameter>
type nodeConfigurationOptionsFilter = {
  @as("Values") values: option<valueStringList>,
  @as("Operator") operator: option<operatorType>,
  @as("Name") name: option<nodeConfigurationOptionsFilterName>,
}
type nodeConfigurationOptionList = array<nodeConfigurationOption>
type networkInterfaceList = array<networkInterface>
type eventInfoMap = {
  @as("Severity") severity: option<string_>,
  @as("EventDescription") eventDescription: option<string_>,
  @as("EventCategories") eventCategories: option<eventCategoriesList>,
  @as("EventId") eventId: option<string_>,
}
type event = {
  @as("EventId") eventId: option<string_>,
  @as("Date") date: option<tstamp>,
  @as("Severity") severity: option<string_>,
  @as("EventCategories") eventCategories: option<eventCategoriesList>,
  @as("Message") message: option<string_>,
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceIdentifier") sourceIdentifier: option<string_>,
}
type endpointAuthorization = {
  @as("EndpointCount") endpointCount: option<integer_>,
  @as("AllowedVPCs") allowedVPCs: option<vpcIdentifierList>,
  @as("AllowedAllVPCs") allowedAllVPCs: option<boolean_>,
  @as("Status") status: option<authorizationStatus>,
  @as("ClusterStatus") clusterStatus: option<string_>,
  @as("AuthorizeTime") authorizeTime: option<tstamp>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  @as("Grantee") grantee: option<string_>,
  @as("Grantor") grantor: option<string_>,
}
type deleteClusterSnapshotMessageList = array<deleteClusterSnapshotMessage>
type deferredMaintenanceWindowsList = array<deferredMaintenanceWindow>
type clusterVersionList = array<clusterVersion>
type clusterSecurityGroupMembershipList = array<clusterSecurityGroupMembership>
type clusterParameterStatusList = array<clusterParameterStatus>
type clusterNodesList = array<clusterNode>
type clusterIamRoleList = array<clusterIamRole>
type batchSnapshotOperationErrors = array<snapshotErrorMessage>
type batchSnapshotOperationErrorList = array<snapshotErrorMessage>
type attributeValueList = array<attributeValueTarget>
type associatedClusterList = array<clusterAssociatedToSchedule>
type accountsWithRestoreAccessList = array<accountWithRestoreAccess>
type vpcEndpoint = {
  @as("NetworkInterfaces") networkInterfaces: option<networkInterfaceList>,
  @as("VpcId") vpcId: option<string_>,
  @as("VpcEndpointId") vpcEndpointId: option<string_>,
}
type usageLimit = {
  @as("Tags") tags: option<tagList_>,
  @as("BreachAction") breachAction: option<usageLimitBreachAction>,
  @as("Period") period: option<usageLimitPeriod>,
  @as("Amount") amount: option<long>,
  @as("LimitType") limitType: option<usageLimitLimitType>,
  @as("FeatureType") featureType: option<usageLimitFeatureType>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  @as("UsageLimitId") usageLimitId: option<string_>,
}
type updateTarget = {
  @as("SupportedOperations") supportedOperations: option<supportedOperationList>,
  @as("DatabaseVersion") databaseVersion: option<string_>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
}
type taggedResourceList = array<taggedResource>
type snapshotSchedule = {
  @as("AssociatedClusters") associatedClusters: option<associatedClusterList>,
  @as("AssociatedClusterCount") associatedClusterCount: option<integerOptional>,
  @as("NextInvocations") nextInvocations: option<scheduledSnapshotTimeList>,
  @as("Tags") tags: option<tagList_>,
  @as("ScheduleDescription") scheduleDescription: option<string_>,
  @as("ScheduleIdentifier") scheduleIdentifier: option<string_>,
  @as("ScheduleDefinitions") scheduleDefinitions: option<scheduleDefinitionList>,
}
type snapshotCopyGrant = {
  @as("Tags") tags: option<tagList_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("SnapshotCopyGrantName") snapshotCopyGrantName: option<string_>,
}
type snapshot = {
  @as("SnapshotRetentionStartTime") snapshotRetentionStartTime: option<tstamp>,
  @as("ManualSnapshotRemainingDays") manualSnapshotRemainingDays: option<integerOptional>,
  @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
  @as("EnhancedVpcRouting") enhancedVpcRouting: option<boolean_>,
  @as("RestorableNodeTypes") restorableNodeTypes: option<restorableNodeTypeList>,
  @as("Tags") tags: option<tagList_>,
  @as("SourceRegion") sourceRegion: option<string_>,
  @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<long>,
  @as("EstimatedSecondsToCompletion") estimatedSecondsToCompletion: option<long>,
  @as("CurrentBackupRateInMegaBytesPerSecond")
  currentBackupRateInMegaBytesPerSecond: option<double>,
  @as("BackupProgressInMegaBytes") backupProgressInMegaBytes: option<double>,
  @as("ActualIncrementalBackupSizeInMegaBytes")
  actualIncrementalBackupSizeInMegaBytes: option<double>,
  @as("TotalBackupSizeInMegaBytes") totalBackupSizeInMegaBytes: option<double>,
  @as("OwnerAccount") ownerAccount: option<string_>,
  @as("AccountsWithRestoreAccess") accountsWithRestoreAccess: option<accountsWithRestoreAccessList>,
  @as("EncryptedWithHSM") encryptedWithHSM: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("VpcId") vpcId: option<string_>,
  @as("DBName") dbname: option<string_>,
  @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @as("NodeType") nodeType: option<string_>,
  @as("SnapshotType") snapshotType: option<string_>,
  @as("EngineFullVersion") engineFullVersion: option<string_>,
  @as("ClusterVersion") clusterVersion: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<string_>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  @as("SnapshotIdentifier") snapshotIdentifier: option<string_>,
}
type scheduledActionFilterList = array<scheduledActionFilter>
type scheduledAction = {
  @as("EndTime") endTime: option<tstamp>,
  @as("StartTime") startTime: option<tstamp>,
  @as("NextInvocations") nextInvocations: option<scheduledActionTimeList>,
  @as("State") state: option<scheduledActionState>,
  @as("ScheduledActionDescription") scheduledActionDescription: option<string_>,
  @as("IamRole") iamRole: option<string_>,
  @as("Schedule") schedule: option<string_>,
  @as("TargetAction") targetAction: option<scheduledActionType>,
  @as("ScheduledActionName") scheduledActionName: option<string_>,
}
type reservedNodeOffering = {
  @as("ReservedNodeOfferingType") reservedNodeOfferingType: option<reservedNodeOfferingType>,
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("OfferingType") offeringType: option<string_>,
  @as("CurrencyCode") currencyCode: option<string_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("NodeType") nodeType: option<string_>,
  @as("ReservedNodeOfferingId") reservedNodeOfferingId: option<string_>,
}
type reservedNode = {
  @as("ReservedNodeOfferingType") reservedNodeOfferingType: option<reservedNodeOfferingType>,
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("OfferingType") offeringType: option<string_>,
  @as("State") state: option<string_>,
  @as("NodeCount") nodeCount: option<integer_>,
  @as("CurrencyCode") currencyCode: option<string_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("StartTime") startTime: option<tstamp>,
  @as("NodeType") nodeType: option<string_>,
  @as("ReservedNodeOfferingId") reservedNodeOfferingId: option<string_>,
  @as("ReservedNodeId") reservedNodeId: option<string_>,
}
type nodeConfigurationOptionsFilterList = array<nodeConfigurationOptionsFilter>
type iprange = {
  @as("Tags") tags: option<tagList_>,
  @as("CIDRIP") cidrip: option<string_>,
  @as("Status") status: option<string_>,
}
type hsmConfiguration = {
  @as("Tags") tags: option<tagList_>,
  @as("HsmPartitionName") hsmPartitionName: option<string_>,
  @as("HsmIpAddress") hsmIpAddress: option<string_>,
  @as("Description") description: option<string_>,
  @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
}
type hsmClientCertificate = {
  @as("Tags") tags: option<tagList_>,
  @as("HsmClientCertificatePublicKey") hsmClientCertificatePublicKey: option<string_>,
  @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
}
type eventSubscription = {
  @as("Tags") tags: option<tagList_>,
  @as("Enabled") enabled: option<boolean_>,
  @as("Severity") severity: option<string_>,
  @as("EventCategoriesList") eventCategoriesList: option<eventCategoriesList>,
  @as("SourceIdsList") sourceIdsList: option<sourceIdsList>,
  @as("SourceType") sourceType: option<string_>,
  @as("SubscriptionCreationTime") subscriptionCreationTime: option<tstamp>,
  @as("Status") status: option<string_>,
  @as("SnsTopicArn") snsTopicArn: option<string_>,
  @as("CustSubscriptionId") custSubscriptionId: option<string_>,
  @as("CustomerAwsId") customerAwsId: option<string_>,
}
type eventList = array<event>
type eventInfoMapList = array<eventInfoMap>
type endpointAuthorizations = array<endpointAuthorization>
type ec2SecurityGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
  @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
  @as("Status") status: option<string_>,
}
type defaultClusterParameters = {
  @as("Parameters") parameters: option<parametersList>,
  @as("Marker") marker: option<string_>,
  @as("ParameterGroupFamily") parameterGroupFamily: option<string_>,
}
type clusterParameterGroupStatus = {
  @as("ClusterParameterStatusList") clusterParameterStatusList: option<clusterParameterStatusList>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<string_>,
  @as("ParameterGroupName") parameterGroupName: option<string_>,
}
type clusterParameterGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("Description") description: option<string_>,
  @as("ParameterGroupFamily") parameterGroupFamily: option<string_>,
  @as("ParameterGroupName") parameterGroupName: option<string_>,
}
type clusterDbRevision = {
  @as("RevisionTargets") revisionTargets: option<revisionTargetsList>,
  @as("DatabaseRevisionReleaseDate") databaseRevisionReleaseDate: option<tstamp>,
  @as("CurrentDatabaseRevision") currentDatabaseRevision: option<string_>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
}
type availabilityZone = {
  @as("SupportedPlatforms") supportedPlatforms: option<supportedPlatformsList>,
  @as("Name") name: option<string_>,
}
type accountAttribute = {
  @as("AttributeValues") attributeValues: option<attributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type vpcEndpointsList = array<vpcEndpoint>
type usageLimits = array<usageLimit>
type subnet = {
  @as("SubnetStatus") subnetStatus: option<string_>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type snapshotScheduleList = array<snapshotSchedule>
type snapshotList = array<snapshot>
type snapshotCopyGrantList = array<snapshotCopyGrant>
type scheduledActionList = array<scheduledAction>
type reservedNodeOfferingList = array<reservedNodeOffering>
type reservedNodeList = array<reservedNode>
type parameterGroupList = array<clusterParameterGroup>
type iprangeList = array<iprange>
type hsmConfigurationList = array<hsmConfiguration>
type hsmClientCertificateList = array<hsmClientCertificate>
type eventSubscriptionsList = array<eventSubscription>
type eventCategoriesMap = {
  @as("Events") events: option<eventInfoMapList>,
  @as("SourceType") sourceType: option<string_>,
}
type endpointAccess = {
  @as("VpcEndpoint") vpcEndpoint: option<vpcEndpoint>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("Address") address: option<string_>,
  @as("Port") port: option<integer_>,
  @as("EndpointCreateTime") endpointCreateTime: option<tstamp>,
  @as("EndpointName") endpointName: option<string_>,
  @as("EndpointStatus") endpointStatus: option<string_>,
  @as("SubnetGroupName") subnetGroupName: option<string_>,
  @as("ResourceOwner") resourceOwner: option<string_>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
}
type eligibleTracksToUpdateList = array<updateTarget>
type ec2SecurityGroupList = array<ec2SecurityGroup>
type clusterParameterGroupStatusList = array<clusterParameterGroupStatus>
type clusterDbRevisionsList = array<clusterDbRevision>
type availabilityZoneList = array<availabilityZone>
type attributeList = array<accountAttribute>
type subnetList = array<subnet>
type orderableClusterOption = {
  @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
  @as("NodeType") nodeType: option<string_>,
  @as("ClusterType") clusterType: option<string_>,
  @as("ClusterVersion") clusterVersion: option<string_>,
}
type maintenanceTrack = {
  @as("UpdateTargets") updateTargets: option<eligibleTracksToUpdateList>,
  @as("DatabaseVersion") databaseVersion: option<string_>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
}
type eventCategoriesMapList = array<eventCategoriesMap>
type endpointAccesses = array<endpointAccess>
type endpoint = {
  @as("VpcEndpoints") vpcEndpoints: option<vpcEndpointsList>,
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
}
type clusterSecurityGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("IPRanges") ipranges: option<iprangeList>,
  @as("EC2SecurityGroups") ec2SecurityGroups: option<ec2SecurityGroupList>,
  @as("Description") description: option<string_>,
  @as("ClusterSecurityGroupName") clusterSecurityGroupName: option<string_>,
}
type trackList = array<maintenanceTrack>
type orderableClusterOptionsList = array<orderableClusterOption>
type clusterSubnetGroup = {
  @as("Tags") tags: option<tagList_>,
  @as("Subnets") subnets: option<subnetList>,
  @as("SubnetGroupStatus") subnetGroupStatus: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("Description") description: option<string_>,
  @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<string_>,
}
type clusterSecurityGroups = array<clusterSecurityGroup>
type cluster = {
  @as("AquaConfiguration") aquaConfiguration: option<aquaConfiguration>,
  @as("TotalStorageCapacityInMegaBytes") totalStorageCapacityInMegaBytes: option<longOptional>,
  @as("ClusterNamespaceArn") clusterNamespaceArn: option<string_>,
  @as("AvailabilityZoneRelocationStatus") availabilityZoneRelocationStatus: option<string_>,
  @as("ResizeInfo") resizeInfo: option<resizeInfo>,
  @as("NextMaintenanceWindowStartTime") nextMaintenanceWindowStartTime: option<tstamp>,
  @as("ExpectedNextSnapshotScheduleTimeStatus")
  expectedNextSnapshotScheduleTimeStatus: option<string_>,
  @as("ExpectedNextSnapshotScheduleTime") expectedNextSnapshotScheduleTime: option<tstamp>,
  @as("SnapshotScheduleState") snapshotScheduleState: option<scheduleState>,
  @as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: option<string_>,
  @as("DeferredMaintenanceWindows")
  deferredMaintenanceWindows: option<deferredMaintenanceWindowsList>,
  @as("ElasticResizeNumberOfNodeOptions") elasticResizeNumberOfNodeOptions: option<string_>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
  @as("PendingActions") pendingActions: option<pendingActionsList>,
  @as("IamRoles") iamRoles: option<clusterIamRoleList>,
  @as("EnhancedVpcRouting") enhancedVpcRouting: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Tags") tags: option<tagList_>,
  @as("ClusterRevisionNumber") clusterRevisionNumber: option<string_>,
  @as("ElasticIpStatus") elasticIpStatus: option<elasticIpStatus>,
  @as("ClusterNodes") clusterNodes: option<clusterNodesList>,
  @as("ClusterPublicKey") clusterPublicKey: option<string_>,
  @as("ClusterSnapshotCopyStatus") clusterSnapshotCopyStatus: option<clusterSnapshotCopyStatus>,
  @as("HsmStatus") hsmStatus: option<hsmStatus>,
  @as("DataTransferProgress") dataTransferProgress: option<dataTransferProgress>,
  @as("RestoreStatus") restoreStatus: option<restoreStatus>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @as("AllowVersionUpgrade") allowVersionUpgrade: option<boolean_>,
  @as("ClusterVersion") clusterVersion: option<string_>,
  @as("PendingModifiedValues") pendingModifiedValues: option<pendingModifiedValues>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<string_>,
  @as("ClusterParameterGroups") clusterParameterGroups: option<clusterParameterGroupStatusList>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("ClusterSecurityGroups") clusterSecurityGroups: option<clusterSecurityGroupMembershipList>,
  @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integer_>,
  @as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: option<integer_>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("DBName") dbname: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("ModifyStatus") modifyStatus: option<string_>,
  @as("ClusterAvailabilityStatus") clusterAvailabilityStatus: option<string_>,
  @as("ClusterStatus") clusterStatus: option<string_>,
  @as("NodeType") nodeType: option<string_>,
  @as("ClusterIdentifier") clusterIdentifier: option<string_>,
}
type clusterSubnetGroups = array<clusterSubnetGroup>
type clusterList = array<cluster>

module UpdatePartnerStatus = {
  type t
  type request = {
    @as("StatusMessage") statusMessage: option<partnerIntegrationStatusMessage>,
    @as("Status") status: partnerIntegrationStatus,
    @as("PartnerName") partnerName: partnerIntegrationPartnerName,
    @as("DatabaseName") databaseName: partnerIntegrationDatabaseName,
    @as("ClusterIdentifier") clusterIdentifier: partnerIntegrationClusterIdentifier,
    @as("AccountId") accountId: partnerIntegrationAccountId,
  }
  type response = {
    @as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
    @as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "UpdatePartnerStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSnapshotSchedule = {
  type t
  type request = {
    @as("DisassociateSchedule") disassociateSchedule: option<booleanOptional>,
    @as("ScheduleIdentifier") scheduleIdentifier: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSnapshotScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableLogging = {
  type t
  type request = {
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("BucketName") bucketName: string_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {
    @as("LastFailureMessage") lastFailureMessage: option<string_>,
    @as("LastFailureTime") lastFailureTime: option<tstamp>,
    @as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: option<tstamp>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("BucketName") bucketName: option<string_>,
    @as("LoggingEnabled") loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "EnableLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableLogging = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {
    @as("LastFailureMessage") lastFailureMessage: option<string_>,
    @as("LastFailureTime") lastFailureTime: option<tstamp>,
    @as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: option<tstamp>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("BucketName") bucketName: option<string_>,
    @as("LoggingEnabled") loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DisableLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStorage = {
  type t

  type response = {
    @as("TotalProvisionedStorageInMegaBytes") totalProvisionedStorageInMegaBytes: option<double>,
    @as("TotalBackupSizeInMegaBytes") totalBackupSizeInMegaBytes: option<double>,
  }
  @module("@aws-sdk/client-redshift") @new external new: unit => t = "DescribeStorageCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingStatus = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {
    @as("LastFailureMessage") lastFailureMessage: option<string_>,
    @as("LastFailureTime") lastFailureTime: option<tstamp>,
    @as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: option<tstamp>,
    @as("S3KeyPrefix") s3KeyPrefix: option<string_>,
    @as("BucketName") bucketName: option<string_>,
    @as("LoggingEnabled") loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeLoggingStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUsageLimit = {
  type t
  type request = {@as("UsageLimitId") usageLimitId: string_}

  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteUsageLimitCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSnapshotSchedule = {
  type t
  type request = {@as("ScheduleIdentifier") scheduleIdentifier: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteSnapshotScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSnapshotCopyGrant = {
  type t
  type request = {@as("SnapshotCopyGrantName") snapshotCopyGrantName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteSnapshotCopyGrantCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledAction = {
  type t
  type request = {@as("ScheduledActionName") scheduledActionName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteScheduledActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePartner = {
  type t
  type request = {
    @as("PartnerName") partnerName: partnerIntegrationPartnerName,
    @as("DatabaseName") databaseName: partnerIntegrationDatabaseName,
    @as("ClusterIdentifier") clusterIdentifier: partnerIntegrationClusterIdentifier,
    @as("AccountId") accountId: partnerIntegrationAccountId,
  }
  type response = {
    @as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
    @as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeletePartnerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHsmConfiguration = {
  type t
  type request = {@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteHsmConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteHsmClientCertificate = {
  type t
  type request = {@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteHsmClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventSubscription = {
  type t
  type request = {@as("SubscriptionName") subscriptionName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteEventSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterSubnetGroup = {
  type t
  type request = {@as("ClusterSubnetGroupName") clusterSubnetGroupName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSubnetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterSecurityGroup = {
  type t
  type request = {@as("ClusterSecurityGroupName") clusterSecurityGroupName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterParameterGroup = {
  type t
  type request = {@as("ParameterGroupName") parameterGroupName: string_}

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterParameterGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddPartner = {
  type t
  type request = {
    @as("PartnerName") partnerName: partnerIntegrationPartnerName,
    @as("DatabaseName") databaseName: partnerIntegrationDatabaseName,
    @as("ClusterIdentifier") clusterIdentifier: partnerIntegrationClusterIdentifier,
    @as("AccountId") accountId: partnerIntegrationAccountId,
  }
  type response = {
    @as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
    @as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "AddPartnerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeEndpointAccess = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("VpcIds") vpcIds: option<vpcIdentifierList>,
    @as("Account") account: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = endpointAuthorization
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableFromClusterSnapshot = {
  type t
  type request = {
    @as("EnableCaseSensitiveIdentifier") enableCaseSensitiveIdentifier: option<booleanOptional>,
    @as("NewTableName") newTableName: string_,
    @as("TargetSchemaName") targetSchemaName: option<string_>,
    @as("TargetDatabaseName") targetDatabaseName: option<string_>,
    @as("SourceTableName") sourceTableName: string_,
    @as("SourceSchemaName") sourceSchemaName: option<string_>,
    @as("SourceDatabaseName") sourceDatabaseName: string_,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("TableRestoreStatus") tableRestoreStatus: option<tableRestoreStatus>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RestoreTableFromClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyAquaConfiguration = {
  type t
  type request = {
    @as("AquaConfigurationStatus") aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("AquaConfiguration") aquaConfiguration: option<aquaConfiguration>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyAquaConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClusterCredentials = {
  type t
  type request = {
    @as("DbGroups") dbGroups: option<dbGroupList>,
    @as("AutoCreate") autoCreate: option<booleanOptional>,
    @as("DurationSeconds") durationSeconds: option<integerOptional>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
    @as("DbName") dbName: option<string_>,
    @as("DbUser") dbUser: string_,
  }
  type response = {
    @as("Expiration") expiration: option<tstamp>,
    @as("DbPassword") dbPassword: option<sensitiveString>,
    @as("DbUser") dbUser: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "GetClusterCredentialsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResize = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {
    @as("DataTransferProgressPercent") dataTransferProgressPercent: option<doubleOptional>,
    @as("TargetEncryptionType") targetEncryptionType: option<string_>,
    @as("Message") message: option<string_>,
    @as("ResizeType") resizeType: option<string_>,
    @as("EstimatedTimeToCompletionInSeconds")
    estimatedTimeToCompletionInSeconds: option<longOptional>,
    @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<longOptional>,
    @as("ProgressInMegaBytes") progressInMegaBytes: option<longOptional>,
    @as("TotalResizeDataInMegaBytes") totalResizeDataInMegaBytes: option<longOptional>,
    @as("AvgResizeRateInMegaBytesPerSecond")
    avgResizeRateInMegaBytesPerSecond: option<doubleOptional>,
    @as("ImportTablesNotStarted") importTablesNotStarted: option<importTablesNotStarted>,
    @as("ImportTablesInProgress") importTablesInProgress: option<importTablesInProgress>,
    @as("ImportTablesCompleted") importTablesCompleted: option<importTablesCompleted>,
    @as("Status") status: option<string_>,
    @as("TargetClusterType") targetClusterType: option<string_>,
    @as("TargetNumberOfNodes") targetNumberOfNodes: option<integerOptional>,
    @as("TargetNodeType") targetNodeType: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeResizeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceName") resourceName: string_,
  }

  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelResize = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {
    @as("DataTransferProgressPercent") dataTransferProgressPercent: option<doubleOptional>,
    @as("TargetEncryptionType") targetEncryptionType: option<string_>,
    @as("Message") message: option<string_>,
    @as("ResizeType") resizeType: option<string_>,
    @as("EstimatedTimeToCompletionInSeconds")
    estimatedTimeToCompletionInSeconds: option<longOptional>,
    @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<longOptional>,
    @as("ProgressInMegaBytes") progressInMegaBytes: option<longOptional>,
    @as("TotalResizeDataInMegaBytes") totalResizeDataInMegaBytes: option<longOptional>,
    @as("AvgResizeRateInMegaBytesPerSecond")
    avgResizeRateInMegaBytesPerSecond: option<doubleOptional>,
    @as("ImportTablesNotStarted") importTablesNotStarted: option<importTablesNotStarted>,
    @as("ImportTablesInProgress") importTablesInProgress: option<importTablesInProgress>,
    @as("ImportTablesCompleted") importTablesCompleted: option<importTablesCompleted>,
    @as("Status") status: option<string_>,
    @as("TargetClusterType") targetClusterType: option<string_>,
    @as("TargetNumberOfNodes") targetNumberOfNodes: option<integerOptional>,
    @as("TargetNodeType") targetNodeType: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CancelResizeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeEndpointAccess = {
  type t
  type request = {
    @as("VpcIds") vpcIds: option<vpcIdentifierList>,
    @as("Account") account: string_,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = endpointAuthorization
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetClusterParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: option<parametersList>,
    @as("ResetAllParameters") resetAllParameters: option<boolean_>,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {
    @as("ParameterGroupStatus") parameterGroupStatus: option<string_>,
    @as("ParameterGroupName") parameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ResetClusterParameterGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyUsageLimit = {
  type t
  type request = {
    @as("BreachAction") breachAction: option<usageLimitBreachAction>,
    @as("Amount") amount: option<longOptional>,
    @as("UsageLimitId") usageLimitId: string_,
  }
  type response = usageLimit
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ModifyUsageLimitCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySnapshotSchedule = {
  type t
  type request = {
    @as("ScheduleDefinitions") scheduleDefinitions: scheduleDefinitionList,
    @as("ScheduleIdentifier") scheduleIdentifier: string_,
  }
  type response = snapshotSchedule
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifySnapshotScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyScheduledAction = {
  type t
  type request = {
    @as("Enable") enable: option<booleanOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("ScheduledActionDescription") scheduledActionDescription: option<string_>,
    @as("IamRole") iamRole: option<string_>,
    @as("Schedule") schedule: option<string_>,
    @as("TargetAction") targetAction: option<scheduledActionType>,
    @as("ScheduledActionName") scheduledActionName: string_,
  }
  type response = scheduledAction
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyScheduledActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: parametersList,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {
    @as("ParameterGroupStatus") parameterGroupStatus: option<string_>,
    @as("ParameterGroupName") parameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterParameterGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableRestoreStatus = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("TableRestoreRequestId") tableRestoreRequestId: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("TableRestoreStatusDetails") tableRestoreStatusDetails: option<tableRestoreStatusList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeTableRestoreStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePartners = {
  type t
  type request = {
    @as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
    @as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
    @as("ClusterIdentifier") clusterIdentifier: partnerIntegrationClusterIdentifier,
    @as("AccountId") accountId: partnerIntegrationAccountId,
  }
  type response = {
    @as("PartnerIntegrationInfoList")
    partnerIntegrationInfoList: option<partnerIntegrationInfoList>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribePartnersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterVersions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ClusterParameterGroupFamily") clusterParameterGroupFamily: option<string_>,
    @as("ClusterVersion") clusterVersion: option<string_>,
  }
  type response = {
    @as("ClusterVersions") clusterVersions: option<clusterVersionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Source") source: option<string_>,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Parameters") parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterParametersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUsageLimit = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("BreachAction") breachAction: option<usageLimitBreachAction>,
    @as("Period") period: option<usageLimitPeriod>,
    @as("Amount") amount: long,
    @as("LimitType") limitType: usageLimitLimitType,
    @as("FeatureType") featureType: usageLimitFeatureType,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = usageLimit
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateUsageLimitCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceName") resourceName: string_,
  }

  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSnapshotSchedule = {
  type t
  type request = {
    @as("NextInvocations") nextInvocations: option<integerOptional>,
    @as("DryRun") dryRun: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @as("ScheduleDescription") scheduleDescription: option<string_>,
    @as("ScheduleIdentifier") scheduleIdentifier: option<string_>,
    @as("ScheduleDefinitions") scheduleDefinitions: option<scheduleDefinitionList>,
  }
  type response = snapshotSchedule
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateSnapshotScheduleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScheduledAction = {
  type t
  type request = {
    @as("Enable") enable: option<booleanOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("ScheduledActionDescription") scheduledActionDescription: option<string_>,
    @as("IamRole") iamRole: string_,
    @as("Schedule") schedule: string_,
    @as("TargetAction") targetAction: scheduledActionType,
    @as("ScheduledActionName") scheduledActionName: string_,
  }
  type response = scheduledAction
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateScheduledActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchModifyClusterSnapshots = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("SnapshotIdentifierList") snapshotIdentifierList: snapshotIdentifierList,
  }
  type response = {
    @as("Errors") errors: option<batchSnapshotOperationErrors>,
    @as("Resources") resources: option<snapshotIdentifierList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "BatchModifyClusterSnapshotsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteClusterSnapshots = {
  type t
  type request = {@as("Identifiers") identifiers: deleteClusterSnapshotMessageList}
  type response = {
    @as("Errors") errors: option<batchSnapshotOperationErrorList>,
    @as("Resources") resources: option<snapshotIdentifierList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "BatchDeleteClusterSnapshotsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeSnapshotAccess = {
  type t
  type request = {
    @as("AccountWithRestoreAccess") accountWithRestoreAccess: string_,
    @as("SnapshotClusterIdentifier") snapshotClusterIdentifier: option<string_>,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeSnapshotAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseReservedNodeOffering = {
  type t
  type request = {
    @as("NodeCount") nodeCount: option<integerOptional>,
    @as("ReservedNodeOfferingId") reservedNodeOfferingId: string_,
  }
  type response = {@as("ReservedNode") reservedNode: option<reservedNode>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "PurchaseReservedNodeOfferingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEventSubscription = {
  type t
  type request = {
    @as("Enabled") enabled: option<booleanOptional>,
    @as("Severity") severity: option<string_>,
    @as("EventCategories") eventCategories: option<eventCategoriesList>,
    @as("SourceIds") sourceIds: option<sourceIdsList>,
    @as("SourceType") sourceType: option<string_>,
    @as("SnsTopicArn") snsTopicArn: option<string_>,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyEventSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEndpointAccess = {
  type t
  type request = {
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("EndpointName") endpointName: string_,
  }
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSnapshot = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ResourceType") resourceType: option<string_>,
    @as("ResourceName") resourceName: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("TaggedResources") taggedResources: option<taggedResourceList>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNodeConfigurationOptions = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<nodeConfigurationOptionsFilterList>,
    @as("OwnerAccount") ownerAccount: option<string_>,
    @as("SnapshotIdentifier") snapshotIdentifier: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
    @as("ActionType") actionType: actionType,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("NodeConfigurationOptionList")
    nodeConfigurationOptionList: option<nodeConfigurationOptionList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeNodeConfigurationOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Duration") duration: option<integerOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("SourceType") sourceType: option<sourceType>,
    @as("SourceIdentifier") sourceIdentifier: option<string_>,
  }
  type response = {
    @as("Events") events: option<eventList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointAuthorization = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Grantee") grantee: option<booleanOptional>,
    @as("Account") account: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("EndpointAuthorizationList") endpointAuthorizationList: option<endpointAuthorizations>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEndpointAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultClusterParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ParameterGroupFamily") parameterGroupFamily: string_,
  }
  type response = {
    @as("DefaultClusterParameters") defaultClusterParameters: option<defaultClusterParameters>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeDefaultClusterParametersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEndpointAccess = {
  type t
  type request = {@as("EndpointName") endpointName: string_}
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteClusterSnapshot = {
  type t
  type request = deleteClusterSnapshotMessage
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshotCopyGrant = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("SnapshotCopyGrantName") snapshotCopyGrantName: string_,
  }
  type response = {@as("SnapshotCopyGrant") snapshotCopyGrant: option<snapshotCopyGrant>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateSnapshotCopyGrantCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHsmConfiguration = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("HsmServerPublicCertificate") hsmServerPublicCertificate: string_,
    @as("HsmPartitionPassword") hsmPartitionPassword: string_,
    @as("HsmPartitionName") hsmPartitionName: string_,
    @as("HsmIpAddress") hsmIpAddress: string_,
    @as("Description") description: string_,
    @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: string_,
  }
  type response = {@as("HsmConfiguration") hsmConfiguration: option<hsmConfiguration>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateHsmConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHsmClientCertificate = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: string_,
  }
  type response = {@as("HsmClientCertificate") hsmClientCertificate: option<hsmClientCertificate>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateHsmClientCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Enabled") enabled: option<booleanOptional>,
    @as("Severity") severity: option<string_>,
    @as("EventCategories") eventCategories: option<eventCategoriesList>,
    @as("SourceIds") sourceIds: option<sourceIdsList>,
    @as("SourceType") sourceType: option<string_>,
    @as("SnsTopicArn") snsTopicArn: string_,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateEventSubscriptionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpointAccess = {
  type t
  type request = {
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("SubnetGroupName") subnetGroupName: string_,
    @as("EndpointName") endpointName: string_,
    @as("ResourceOwner") resourceOwner: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("ParameterGroupFamily") parameterGroupFamily: string_,
    @as("ParameterGroupName") parameterGroupName: string_,
  }
  type response = {
    @as("ClusterParameterGroup") clusterParameterGroup: option<clusterParameterGroup>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterParameterGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyClusterSnapshot = {
  type t
  type request = {
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("TargetSnapshotIdentifier") targetSnapshotIdentifier: string_,
    @as("SourceSnapshotClusterIdentifier") sourceSnapshotClusterIdentifier: option<string_>,
    @as("SourceSnapshotIdentifier") sourceSnapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CopyClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeSnapshotAccess = {
  type t
  type request = {
    @as("AccountWithRestoreAccess") accountWithRestoreAccess: string_,
    @as("SnapshotClusterIdentifier") snapshotClusterIdentifier: option<string_>,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeSnapshotAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptReservedNodeExchange = {
  type t
  type request = {
    @as("TargetReservedNodeOfferingId") targetReservedNodeOfferingId: string_,
    @as("ReservedNodeId") reservedNodeId: string_,
  }
  type response = {@as("ExchangedReservedNode") exchangedReservedNode: option<reservedNode>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AcceptReservedNodeExchangeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservedNodeExchangeOfferings = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ReservedNodeId") reservedNodeId: string_,
  }
  type response = {
    @as("ReservedNodeOfferings") reservedNodeOfferings: option<reservedNodeOfferingList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "GetReservedNodeExchangeOfferingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUsageLimits = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("FeatureType") featureType: option<usageLimitFeatureType>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
    @as("UsageLimitId") usageLimitId: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("UsageLimits") usageLimits: option<usageLimits>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeUsageLimitsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotSchedules = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("ScheduleIdentifier") scheduleIdentifier: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("SnapshotSchedules") snapshotSchedules: option<snapshotScheduleList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeSnapshotSchedulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotCopyGrants = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("SnapshotCopyGrantName") snapshotCopyGrantName: option<string_>,
  }
  type response = {
    @as("SnapshotCopyGrants") snapshotCopyGrants: option<snapshotCopyGrantList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeSnapshotCopyGrantsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledActions = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<scheduledActionFilterList>,
    @as("Active") active: option<booleanOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("TargetActionType") targetActionType: option<scheduledActionTypeValues>,
    @as("ScheduledActionName") scheduledActionName: option<string_>,
  }
  type response = {
    @as("ScheduledActions") scheduledActions: option<scheduledActionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeScheduledActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedNodes = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ReservedNodeId") reservedNodeId: option<string_>,
  }
  type response = {
    @as("ReservedNodes") reservedNodes: option<reservedNodeList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeReservedNodesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedNodeOfferings = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ReservedNodeOfferingId") reservedNodeOfferingId: option<string_>,
  }
  type response = {
    @as("ReservedNodeOfferings") reservedNodeOfferings: option<reservedNodeOfferingList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeReservedNodeOfferingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHsmConfigurations = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
  }
  type response = {
    @as("HsmConfigurations") hsmConfigurations: option<hsmConfigurationList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeHsmConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHsmClientCertificates = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
  }
  type response = {
    @as("HsmClientCertificates") hsmClientCertificates: option<hsmClientCertificateList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeHsmClientCertificatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSubscriptions = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("SubscriptionName") subscriptionName: option<string_>,
  }
  type response = {
    @as("EventSubscriptionsList") eventSubscriptionsList: option<eventSubscriptionsList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEventSubscriptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSnapshots = {
  type t
  type request = {
    @as("SortingEntities") sortingEntities: option<snapshotSortingEntityList>,
    @as("ClusterExists") clusterExists: option<booleanOptional>,
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("OwnerAccount") ownerAccount: option<string_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("SnapshotType") snapshotType: option<string_>,
    @as("SnapshotIdentifier") snapshotIdentifier: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Snapshots") snapshots: option<snapshotList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSnapshotsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterParameterGroups = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ParameterGroupName") parameterGroupName: option<string_>,
  }
  type response = {
    @as("ParameterGroups") parameterGroups: option<parameterGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterParameterGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterDbRevisions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("ClusterDbRevisions") clusterDbRevisions: option<clusterDbRevisionsList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterDbRevisionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t
  type request = {@as("AttributeNames") attributeNames: option<attributeNameList>}
  type response = {@as("AccountAttributes") accountAttributes: option<attributeList>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeAccountAttributesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeClusterSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
    @as("CIDRIP") cidrip: option<string_>,
    @as("ClusterSecurityGroupName") clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeClusterSecurityGroupIngressCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  type request = {@as("SourceType") sourceType: option<string_>}
  type response = {
    @as("EventCategoriesMapList") eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEventCategoriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointAccess = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("VpcId") vpcId: option<string_>,
    @as("EndpointName") endpointName: option<string_>,
    @as("ResourceOwner") resourceOwner: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("EndpointAccessList") endpointAccessList: option<endpointAccesses>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEndpointAccessCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSecurityGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("ClusterSecurityGroupName") clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSecurityGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeClusterSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
    @as("CIDRIP") cidrip: option<string_>,
    @as("ClusterSecurityGroupName") clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeClusterSecurityGroupIngressCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RotateEncryptionKey = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "RotateEncryptionKeyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeCluster = {
  type t
  type request = resumeClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ResumeClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreFromClusterSnapshot = {
  type t
  type request = {
    @as("AquaConfigurationStatus") aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @as("AvailabilityZoneRelocation") availabilityZoneRelocation: option<booleanOptional>,
    @as("NumberOfNodes") numberOfNodes: option<integerOptional>,
    @as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: option<string_>,
    @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
    @as("IamRoles") iamRoles: option<iamRoleArnList>,
    @as("AdditionalInfo") additionalInfo: option<string_>,
    @as("EnhancedVpcRouting") enhancedVpcRouting: option<booleanOptional>,
    @as("NodeType") nodeType: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("ClusterSecurityGroups") clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @as("ClusterParameterGroupName") clusterParameterGroupName: option<string_>,
    @as("ElasticIp") elasticIp: option<string_>,
    @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
    @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
    @as("OwnerAccount") ownerAccount: option<string_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<string_>,
    @as("AllowVersionUpgrade") allowVersionUpgrade: option<booleanOptional>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("SnapshotClusterIdentifier") snapshotClusterIdentifier: option<string_>,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RestoreFromClusterSnapshotCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResizeCluster = {
  type t
  type request = resizeClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ResizeClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootCluster = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "RebootClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PauseCluster = {
  type t
  type request = pauseClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "PauseClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySnapshotCopyRetentionPeriod = {
  type t
  type request = {
    @as("Manual") manual: option<boolean_>,
    @as("RetentionPeriod") retentionPeriod: integer_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifySnapshotCopyRetentionPeriodCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSubnetGroup = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("Description") description: option<string_>,
    @as("ClusterSubnetGroupName") clusterSubnetGroupName: string_,
  }
  type response = {@as("ClusterSubnetGroup") clusterSubnetGroup: option<clusterSubnetGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSubnetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterMaintenance = {
  type t
  type request = {
    @as("DeferMaintenanceDuration") deferMaintenanceDuration: option<integerOptional>,
    @as("DeferMaintenanceEndTime") deferMaintenanceEndTime: option<tstamp>,
    @as("DeferMaintenanceStartTime") deferMaintenanceStartTime: option<tstamp>,
    @as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: option<string_>,
    @as("DeferMaintenance") deferMaintenance: option<booleanOptional>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterMaintenanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterIamRoles = {
  type t
  type request = {
    @as("RemoveIamRoles") removeIamRoles: option<iamRoleArnList>,
    @as("AddIamRoles") addIamRoles: option<iamRoleArnList>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterIamRolesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterDbRevision = {
  type t
  type request = {
    @as("RevisionTarget") revisionTarget: string_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterDbRevisionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCluster = {
  type t
  type request = {
    @as("Port") port: option<integerOptional>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("AvailabilityZoneRelocation") availabilityZoneRelocation: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Encrypted") encrypted: option<booleanOptional>,
    @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
    @as("EnhancedVpcRouting") enhancedVpcRouting: option<booleanOptional>,
    @as("ElasticIp") elasticIp: option<string_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("NewClusterIdentifier") newClusterIdentifier: option<string_>,
    @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
    @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
    @as("AllowVersionUpgrade") allowVersionUpgrade: option<booleanOptional>,
    @as("ClusterVersion") clusterVersion: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @as("ClusterParameterGroupName") clusterParameterGroupName: option<string_>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("ClusterSecurityGroups") clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @as("NumberOfNodes") numberOfNodes: option<integerOptional>,
    @as("NodeType") nodeType: option<string_>,
    @as("ClusterType") clusterType: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ModifyClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSnapshotCopy = {
  type t
  type request = {
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("SnapshotCopyGrantName") snapshotCopyGrantName: option<string_>,
    @as("RetentionPeriod") retentionPeriod: option<integerOptional>,
    @as("DestinationRegion") destinationRegion: string_,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "EnableSnapshotCopyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableSnapshotCopy = {
  type t
  type request = {@as("ClusterIdentifier") clusterIdentifier: string_}
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DisableSnapshotCopyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableClusterOptions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("NodeType") nodeType: option<string_>,
    @as("ClusterVersion") clusterVersion: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("OrderableClusterOptions") orderableClusterOptions: option<orderableClusterOptionsList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeOrderableClusterOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterTracks = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("MaintenanceTracks") maintenanceTracks: option<trackList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterTracksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSecurityGroups = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ClusterSecurityGroupName") clusterSecurityGroupName: option<string_>,
  }
  type response = {
    @as("ClusterSecurityGroups") clusterSecurityGroups: option<clusterSecurityGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSecurityGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  type request = {
    @as("FinalClusterSnapshotRetentionPeriod")
    finalClusterSnapshotRetentionPeriod: option<integerOptional>,
    @as("FinalClusterSnapshotIdentifier") finalClusterSnapshotIdentifier: option<string_>,
    @as("SkipFinalClusterSnapshot") skipFinalClusterSnapshot: option<boolean_>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSubnetGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("Description") description: string_,
    @as("ClusterSubnetGroupName") clusterSubnetGroupName: string_,
  }
  type response = {@as("ClusterSubnetGroup") clusterSubnetGroup: option<clusterSubnetGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSubnetGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  type request = {
    @as("AquaConfigurationStatus") aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @as("AvailabilityZoneRelocation") availabilityZoneRelocation: option<booleanOptional>,
    @as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: option<string_>,
    @as("MaintenanceTrackName") maintenanceTrackName: option<string_>,
    @as("IamRoles") iamRoles: option<iamRoleArnList>,
    @as("AdditionalInfo") additionalInfo: option<string_>,
    @as("EnhancedVpcRouting") enhancedVpcRouting: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("ElasticIp") elasticIp: option<string_>,
    @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<string_>,
    @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<string_>,
    @as("Encrypted") encrypted: option<booleanOptional>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("NumberOfNodes") numberOfNodes: option<integerOptional>,
    @as("AllowVersionUpgrade") allowVersionUpgrade: option<booleanOptional>,
    @as("ClusterVersion") clusterVersion: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integerOptional>,
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @as("ClusterParameterGroupName") clusterParameterGroupName: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("ClusterSecurityGroups") clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @as("MasterUserPassword") masterUserPassword: string_,
    @as("MasterUsername") masterUsername: string_,
    @as("NodeType") nodeType: string_,
    @as("ClusterType") clusterType: option<string_>,
    @as("ClusterIdentifier") clusterIdentifier: string_,
    @as("DBName") dbname: option<string_>,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateClusterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusters = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ClusterIdentifier") clusterIdentifier: option<string_>,
  }
  type response = {
    @as("Clusters") clusters: option<clusterList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeClustersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSubnetGroups = {
  type t
  type request = {
    @as("TagValues") tagValues: option<tagValueList>,
    @as("TagKeys") tagKeys: option<tagKeyList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<string_>,
  }
  type response = {
    @as("ClusterSubnetGroups") clusterSubnetGroups: option<clusterSubnetGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSubnetGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
